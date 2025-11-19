void GPU::ColToImOpHandler::encodeNDArrayOp(GPU::ColToImOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v57 = *(this + 3);
  v6 = *(*(v57 + 72) + 24);
  v44 = v5;
  v46 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v7 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v8 = [v46 mpsndarray];
  v45 = [v7 mpsndarray];
  v9 = objc_alloc_init(MEMORY[0x1E6974748]);
  KernelSizes = mlir::mps::ColToImOp::getKernelSizes(&v57);
  Strides = mlir::mps::ColToImOp::getStrides(&v57);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v57);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v57);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Strides, 0);
  v10 = Strides;
  NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v10, NumElements);
  if (v52 != v50)
  {
    v22 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v23 = v48;
      if (v48 >= 0x41)
      {
        if (v23 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v24 = *v47;
          if (!v22)
          {
LABEL_37:
            [v9 setStrideInPixelsY:v24];
            goto LABEL_38;
          }
        }

        else
        {
          v24 = -1;
          if (!v22)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v24 = v47;
        if (!v22)
        {
          goto LABEL_37;
        }
      }

      if (v22 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_39;
      }

LABEL_38:
      [v9 setStrideInPixelsX:v24];
LABEL_39:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v22;
    }

    while (v52 != v50);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, InputAttributeNames, 0);
  v12 = InputAttributeNames;
  v13 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v12, v13);
  if (v52 != v50)
  {
    v25 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v26 = v48;
      if (v48 >= 0x41)
      {
        if (v26 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v27 = *v47;
          if (!v25)
          {
LABEL_53:
            [v9 setDilationRateInY:v27];
            goto LABEL_54;
          }
        }

        else
        {
          v27 = -1;
          if (!v25)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v27 = v47;
        if (!v25)
        {
          goto LABEL_53;
        }
      }

      if (v25 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_55;
      }

LABEL_54:
      [v9 setDilationRateInX:v27];
LABEL_55:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v25;
    }

    while (v52 != v50);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, KernelSizes, 0);
  v14 = KernelSizes;
  v15 = mlir::DenseElementsAttr::getNumElements(&KernelSizes);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v14, v15);
  if (v52 != v50)
  {
    v28 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v29 = v48;
      if (v48 >= 0x41)
      {
        if (v29 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v30 = *v47;
          if (!v28)
          {
LABEL_69:
            [v9 setKernelHeight:v30];
            goto LABEL_70;
          }
        }

        else
        {
          v30 = -1;
          if (!v28)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        v30 = v47;
        if (!v28)
        {
          goto LABEL_69;
        }
      }

      if (v28 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_71;
      }

LABEL_70:
      [v9 setKernelWidth:v30];
LABEL_71:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v28;
    }

    while (v52 != v50);
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v57);
  if (!StorageType)
  {
    [v9 setDataLayout:0];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Rewriter, 0);
    v31 = Rewriter;
    v32 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v31, v32);
    if (v52 == v50)
    {
      goto LABEL_75;
    }

    v41 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v42 = v48;
      if (v48 >= 0x41)
      {
        if (v42 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v43 = *v47;
          if (v41 > 5)
          {
LABEL_93:
            if (v41 == 6)
            {
              [v9 setPaddingLeft:v43];
            }

            else if (v41 == 7)
            {
              [v9 setPaddingRight:v43];
            }

            goto LABEL_98;
          }
        }

        else
        {
          v43 = -1;
          if (v41 > 5)
          {
            goto LABEL_93;
          }
        }
      }

      else
      {
        v43 = v47;
        if (v41 > 5)
        {
          goto LABEL_93;
        }
      }

      if (v41 == 4)
      {
        [v9 setPaddingTop:v43];
      }

      else if (v41 == 5)
      {
        [v9 setPaddingBottom:v43];
      }

LABEL_98:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v41;
      if (v52 == v50)
      {
        goto LABEL_75;
      }
    }
  }

  if (StorageType == 1)
  {
    [v9 setDataLayout:1];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Rewriter, 0);
    v17 = Rewriter;
    v18 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v17, v18);
    if (v52 != v50)
    {
      v19 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        v20 = v48;
        if (v48 >= 0x41)
        {
          if (v20 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
          {
            v21 = *v47;
            if (v19 > 3)
            {
LABEL_18:
              if (v19 == 4)
              {
                [v9 setPaddingLeft:v21];
              }

              else if (v19 == 5)
              {
                [v9 setPaddingRight:v21];
              }

              goto LABEL_23;
            }
          }

          else
          {
            v21 = -1;
            if (v19 > 3)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          v21 = v47;
          if (v19 > 3)
          {
            goto LABEL_18;
          }
        }

        if (v19 == 2)
        {
          [v9 setPaddingTop:v21];
        }

        else if (v19 == 3)
        {
          [v9 setPaddingBottom:v21];
        }

LABEL_23:
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
        }

        ++v52;
        ++v19;
      }

      while (v52 != v50);
    }
  }

LABEL_75:
  v33 = objc_alloc(MEMORY[0x1E69746A0]);
  v34 = [*(*(this + 2) + 48) metalDevice];
  v35 = [v33 initWithDevice:v34 ndArrayIm2colDescriptor:v9];

  objc_storeStrong(this + 1, v35);
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v36 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v37 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v38 = *(a2 + 1);
    v39 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v35 encodeToMPSCommandEncoder:v37 commandBuffer:v38 sourceArrays:v36 resultState:0 destinationArray:v8 kernelDAGObject:v39];
  }

  else
  {
    if ((!v8 || !v45) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v36 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v40 = *(a2 + 1);
    v58[0] = v45;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
    [v35 encodeToMPSCommandEncoder:v36 commandBuffer:v40 sourceArrays:v37 destinationArray:v8];
  }
}

void GPU::ImToColOpHandler::~ImToColOpHandler(GPU::ImToColOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ColToImOpHandler::~ColToImOpHandler(GPU::ColToImOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ReluOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
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

    v25 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = (&__dst + v15);
  }

  else
  {
    v25 = 8;
    __dst = 0x756C65722E73706DLL;
    v16 = &v24;
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
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(__dst);
    goto LABEL_16;
  }

  if (v25 < 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E07B69AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E07B741C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E07B7454);
}

void sub_1E07B7430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a13) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);

  if ((SHIBYTE(a13) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E07B74A0);
}

void sub_1E07B748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1E07B74A0);
  }

  JUMPOUT(0x1E07B7454);
}

void sub_1E07B85A0()
{
  if (v0)
  {
  }

  JUMPOUT(0x1E07B8584);
}

void sub_1E07B85B0()
{
  if (v0)
  {
  }

  JUMPOUT(0x1E07B8588);
}

void sub_1E07B8894(_Unwind_Exception *a1)
{
  if (v2)
  {

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E07B887CLL);
}

void sub_1E07B8A88(_Unwind_Exception *a1)
{
  if (v2)
  {

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E07B8A74);
}

id *GPU::GenericDAGOpHandler::GenericDAGOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B4D918;
  *(v5 + 15) = 0;
  if (!*(v5 + 4))
  {
    v6 = objc_alloc(MEMORY[0x1E6974740]);
    v7 = [*(this[2] + 6) metalDevice];
    v8 = [v6 initWithDevice:v7];
    v9 = this[1];
    this[1] = v8;

    [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  }

  return this;
}

void sub_1E07B8B6C(_Unwind_Exception *a1)
{
  v3 = v2;

  v5 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

GPU::GenericDAGOpHandler *GPU::GenericDAGOpHandler::postInitializeHook(GPU::GenericDAGOpHandler *this)
{
  if (*(this + 40) == 1 && !*(this + 4))
  {
    return GPU::GenericDAGOpHandler::_getKernelDAGObject(this);
  }

  return this;
}

id GPU::GenericDAGOpHandler::_getKernelDAGObject(GPU::GenericDAGOpHandler *this)
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

void sub_1E07B8E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void GPU::GenericDAGOpHandler::encodeNDArrayOp(GPU::GenericDAGOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v11 = a3;
  v5 = *(this + 1);
  v6 = GPU::GenericDAGOpHandler::_getKernelDAGObject(this);
  v7 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 15), *(this + 2));
  v8 = [(NSArray *)v11 objectAtIndexedSubscript:0];
  v9 = [v8 mpsndarray];

  if (!v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v5 encodeToMPSCommandEncoder:v10 commandBuffer:*(a2 + 1) sourceArrays:v7 resultState:0 destinationArray:v9 kernelDAGObject:v6];
}

void GPU::GenericDAGOpHandler::~GenericDAGOpHandler(GPU::GenericDAGOpHandler *this)
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

EmitterObjC::SelectOpHandler *EmitterObjC::SelectOpHandler::SelectOpHandler(EmitterObjC::SelectOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D980;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = v6[3];
  v8 = v6[7];
  v9 = v6[11];
  LODWORD(v6) = *(v5 + 9);
  v10 = v5 - 16;
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  v13 = MEMORY[0x1E696AEC0];
  v14 = v32;
  (*(*a2 + 32))(v32, a2, NextResultAtOffset);
  if (v33 < 0)
  {
    v14 = v32[0];
  }

  v31 = v7;
  __p.__r_.__value_.__r.__words[0] = &v31;
  v15 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v31);
  v16 = v15 + 3;
  if (*(v15 + 47) < 0)
  {
    v16 = *v16;
  }

  v30 = v8;
  __p.__r_.__value_.__r.__words[0] = &v30;
  v17 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v30);
  v18 = v17 + 3;
  if (*(v17 + 47) < 0)
  {
    v18 = *v18;
  }

  v29 = v9;
  __p.__r_.__value_.__r.__words[0] = &v29;
  v19 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v29);
  v20 = v19 + 3;
  if (*(v19 + 47) < 0)
  {
    v20 = *v20;
  }

  v27 = 0;
  LOBYTE(v26) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v26, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v22 = [v13 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph selectWithPredicateTensor:%s\n                 truePredicateTensor:%s\n                falsePredicateTensor:%s\n                                name:%s]\n    ", v14, v16, v18, v20, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    operator delete(v26);
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v32[0]);
    goto LABEL_21;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v27 < 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v33 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v23 = [*(a2 + 27) stringByAppendingString:v22];
  v24 = *(a2 + 27);
  *(a2 + 27) = v23;

  return this;
}

void sub_1E07B9360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(a20);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if (a34 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if (a34 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::ClampOpHandler *EmitterObjC::ClampOpHandler::ClampOpHandler(EmitterObjC::ClampOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D998;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ClampOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = v6[3];
  v8 = v6[7];
  v9 = v6[11];
  LODWORD(v6) = *(v5 + 9);
  v10 = v5 - 16;
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  v13 = MEMORY[0x1E696AEC0];
  v14 = v32;
  (*(*a2 + 32))(v32, a2, NextResultAtOffset);
  if (v33 < 0)
  {
    v14 = v32[0];
  }

  v31 = v7;
  __p.__r_.__value_.__r.__words[0] = &v31;
  v15 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v31);
  v16 = v15 + 3;
  if (*(v15 + 47) < 0)
  {
    v16 = *v16;
  }

  v30 = v8;
  __p.__r_.__value_.__r.__words[0] = &v30;
  v17 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v30);
  v18 = v17 + 3;
  if (*(v17 + 47) < 0)
  {
    v18 = *v18;
  }

  v29 = v9;
  __p.__r_.__value_.__r.__words[0] = &v29;
  v19 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v29);
  v20 = v19 + 3;
  if (*(v19 + 47) < 0)
  {
    v20 = *v20;
  }

  v27 = 0;
  LOBYTE(v26) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v26, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v22 = [v13 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph clampWithTensor:%s\n            minValueTensor:%s\n            maxValueTensor:%s\n                      name:%s]\n    ", v14, v16, v18, v20, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    operator delete(v26);
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v32[0]);
    goto LABEL_21;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v27 < 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v33 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v23 = [*(a2 + 27) stringByAppendingString:v22];
  v24 = *(a2 + 27);
  *(a2 + 27) = v23;

  return this;
}

void sub_1E07B9668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(a20);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if (a34 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if (a34 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::CastOpHandler *EmitterObjC::CastOpHandler::CastOpHandler(EmitterObjC::CastOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D9B0;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  MPSDataType = getMPSDataType((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v12 = MEMORY[0x1E696AEC0];
  v13 = v30;
  (*(*a2 + 32))(v30, a2, NextResultAtOffset);
  if (v31 < 0)
  {
    v13 = v30[0];
  }

  v29 = v6;
  v27[0] = &v29;
  v14 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v29);
  v15 = v14 + 3;
  if (*(v14 + 47) < 0)
  {
    v15 = *v15;
  }

  EmitterObjC::emitMPSDataType(MPSDataType, v27);
  v16 = v28;
  v17 = v27[0];
  v25 = 0;
  LOBYTE(v24) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v24, &__p);
  v18 = v27;
  if (v16 < 0)
  {
    v18 = v17;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v20 = [v12 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph castTensor:%s\n               toType:%s\n                 name:%s]\n    ", v13, v15, v18, p_p];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_18:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(v27[0]);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      operator delete(v30[0]);
      goto LABEL_20;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v24);
  if (v28 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v31 < 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v21 = [*(a2 + 27) stringByAppendingString:v20];
  v22 = *(a2 + 27);
  *(a2 + 27) = v21;

  return this;
}

void sub_1E07B993C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if ((a31 & 0x80000000) == 0)
  {
LABEL_4:
    if (*(v31 - 81) < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a26);
  if (*(v31 - 81) < 0)
  {
LABEL_5:
    operator delete(*(v31 - 104));
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  _Unwind_Resume(exception_object);
}

EmitterObjC::BiasAddOpHandler *EmitterObjC::BiasAddOpHandler::BiasAddOpHandler(EmitterObjC::BiasAddOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D9C8;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BiasAddOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v62 = v5;
  v6 = *(v5 + 9);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v9 = getMPSShapeFromMLIR(v8);
  [v9 count];
  if ([v9 count] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v61 = 0;
  LOBYTE(v60[0]) = 0;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v62);
  if (StorageType)
  {
    if (StorageType == 1)
    {
      MEMORY[0x1E12E55D0](v60, "@[@1, @1, @1, @-1]");
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v11 = 0;
  }

  else
  {
    MEMORY[0x1E12E55D0](v60, "@[@1, @-1, @1, @1]");
    v11 = 1;
  }

  if (*(v62 + 9))
  {
    v12 = v62 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = MEMORY[0x1E696AEC0];
  if (v11)
  {
    v48 = v9;
    (*(*a2 + 32))(v58, a2, NextResultAtOffset);
    if (v59 >= 0)
    {
      v15 = v58;
    }

    else
    {
      v15 = v58[0];
    }

    v57 = v8;
    __p.__r_.__value_.__r.__words[0] = &v57;
    v16 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v57);
    v17 = v16 + 3;
    v47 = this;
    if (*(v16 + 47) < 0)
    {
      v17 = *v17;
    }

    v18 = v61;
    v19 = v60[0];
    v55 = 12;
    strcpy(v54, "_biasReshape");
    EmitObjC::emitTensorName(a2, NextResultAtOffset, v54, &__p);
    v20 = v60;
    if (v18 < 0)
    {
      v20 = v19;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = [v14 stringWithFormat:@"\n    MPSGraphTensor *%s_biasReshape = \n    [graph reshapeTensor:%s\n               withShape:%s\n                    name:%s]\n    ", v15, v17, v20, p_p];;
    v9 = v48;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v55 & 0x80000000) == 0)
      {
LABEL_28:
        if ((v59 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

LABEL_62:
        operator delete(v58[0]);
LABEL_29:
        v23 = [*(a2 + 27) stringByAppendingString:v22];
        v24 = *(a2 + 27);
        *(a2 + 27) = v23;

        v25 = MEMORY[0x1E696AEC0];
        (*(*a2 + 32))(v58, a2, NextResultAtOffset);
        if (v59 >= 0)
        {
          v26 = v58;
        }

        else
        {
          v26 = v58[0];
        }

        v57 = v7;
        __p.__r_.__value_.__r.__words[0] = &v57;
        v27 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v57);
        v28 = v27 + 3;
        if (*(v27 + 47) < 0)
        {
          v28 = *v28;
        }

        v53 = NextResultAtOffset;
        __p.__r_.__value_.__r.__words[0] = &v53;
        v29 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v53);
        v30 = v29 + 3;
        if (*(v29 + 47) < 0)
        {
          v30 = *v30;
        }

        v52 = 0;
        LOBYTE(v51) = 0;
        EmitObjC::emitTensorName(a2, NextResultAtOffset, &v51, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &__p;
        }

        else
        {
          v31 = __p.__r_.__value_.__r.__words[0];
        }

        v32 = [v25 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph additionWithPrimaryTensor:%s\n                     secondaryTensor:%s_biasReshape\n                                name:%s]\n        ", v26, v28, v30, v31];;
        v33 = v47;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((v52 & 0x80000000) == 0)
          {
LABEL_41:
            if ((v59 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

LABEL_68:
            operator delete(v58[0]);
LABEL_42:
            v34 = [*(a2 + 27) stringByAppendingString:v32];
            v35 = *(a2 + 27);
            *(a2 + 27) = v34;

            if (v61 < 0)
            {
              goto LABEL_58;
            }

            goto LABEL_59;
          }
        }

        else if ((v52 & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        operator delete(v51);
        if ((v59 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_68;
      }
    }

    else if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(v54[0]);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

  v36 = this;
  (*(*a2 + 32))(v58, a2, NextResultAtOffset);
  if (v59 >= 0)
  {
    v37 = v58;
  }

  else
  {
    v37 = v58[0];
  }

  v57 = v7;
  __p.__r_.__value_.__r.__words[0] = &v57;
  v38 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v57);
  v39 = v38 + 3;
  if (*(v38 + 47) < 0)
  {
    v39 = *v39;
  }

  v53 = v8;
  __p.__r_.__value_.__r.__words[0] = &v53;
  v40 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v53);
  v41 = v40 + 3;
  if (*(v40 + 47) < 0)
  {
    v41 = *v41;
  }

  v50 = 0;
  LOBYTE(v49) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v49, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &__p;
  }

  else
  {
    v42 = __p.__r_.__value_.__r.__words[0];
  }

  v43 = [v14 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph additionWithPrimaryTensor:%s\n                     secondaryTensor:%s\n                                name:%s]\n        ", v37, v39, v41, v42];;
  v33 = v36;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_64:
    operator delete(v49);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_65;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v50 < 0)
  {
    goto LABEL_64;
  }

LABEL_56:
  if ((v59 & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_65:
  operator delete(v58[0]);
LABEL_57:
  v44 = [*(a2 + 27) stringByAppendingString:v43];
  v45 = *(a2 + 27);
  *(a2 + 27) = v44;

  if (v61 < 0)
  {
LABEL_58:
    operator delete(v60[0]);
  }

LABEL_59:

  return v33;
}

void sub_1E07B9FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if ((*(v42 - 105) & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(*(v42 - 128));

  _Unwind_Resume(a1);
}

void sub_1E07BA138()
{
  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0x1E07BA120);
  }

  JUMPOUT(0x1E07BA094);
}

EmitterObjC::NormalizationOpHandler *EmitterObjC::NormalizationOpHandler::NormalizationOpHandler(EmitterObjC::NormalizationOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  v44[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D9E0;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v42 = v5;
  v6 = *(v5 + 9);
  v7 = v6[3];
  v8 = v6[7];
  v9 = v6[11];
  v10 = v6[19];
  v11 = v6[15];
  mlir::mps::InstanceNormOp::getEpsilon(&v42, &v43);
  if (*(v42 + 9))
  {
    v12 = v42 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v31 = MEMORY[0x1E696AEC0];
  (*(*a2 + 32))(v40, a2, NextResultAtOffset);
  if (v41 >= 0)
  {
    v14 = v40;
  }

  else
  {
    v14 = v40[0];
  }

  v39 = v7;
  __p.__r_.__value_.__r.__words[0] = &v39;
  v15 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v39);
  v16 = v15 + 3;
  if (*(v15 + 47) < 0)
  {
    v16 = *v16;
  }

  v38 = v8;
  __p.__r_.__value_.__r.__words[0] = &v38;
  v17 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v38);
  v18 = v17 + 3;
  if (*(v17 + 47) < 0)
  {
    v18 = *v18;
  }

  v37 = v9;
  __p.__r_.__value_.__r.__words[0] = &v37;
  v19 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v37);
  v20 = v19 + 3;
  if (*(v19 + 47) < 0)
  {
    v20 = *v20;
  }

  v36 = v11;
  __p.__r_.__value_.__r.__words[0] = &v36;
  v21 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v36);
  v22 = v21 + 3;
  if (*(v21 + 47) < 0)
  {
    v22 = *v22;
  }

  v35 = v10;
  __p.__r_.__value_.__r.__words[0] = &v35;
  v23 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v35);
  v24 = v23 + 3;
  if (*(v23 + 47) < 0)
  {
    v24 = *v24;
  }

  v25 = llvm::APFloat::convertToDouble(&v43);
  v33 = 0;
  LOBYTE(v32) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v32, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v27 = [v31 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph normalizationWithTensor:%s\n                        meanTensor:%s\n                    varianceTensor:%s\n                       gammaTensor:%s\n                        betaTensor:%s\n                           epsilon:%.9e\n                              name:%s]\n    ", v14, v16, v18, v20, v22, v24, *&v25, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    operator delete(v32);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    operator delete(v40[0]);
    goto LABEL_26;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v33 < 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v41 < 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v28 = [*(a2 + 27) stringByAppendingString:v27];
  v29 = *(a2 + 27);
  *(a2 + 27) = v28;

  llvm::APFloat::Storage::~Storage(v44);
  return this;
}

EmitterObjC::SigmoidOpHandler *EmitterObjC::SigmoidOpHandler::SigmoidOpHandler(EmitterObjC::SigmoidOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D9F8;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v11 = MEMORY[0x1E696AEC0];
  v12 = v24;
  (*(*a2 + 32))(v24, a2, NextResultAtOffset);
  if (v25 < 0)
  {
    v12 = v24[0];
  }

  v23 = v6;
  __p.__r_.__value_.__r.__words[0] = &v23;
  v13 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v23);
  v14 = v13 + 3;
  if (*(v13 + 47) < 0)
  {
    v14 = *v14;
  }

  v21 = 0;
  LOBYTE(v20) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v20, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v16 = [v11 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph sigmoidWithTensor:%s\n                        name:%s]\n    ", v12, v14, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    operator delete(v20);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(v24[0]);
    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v21 < 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v25 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v17 = [*(a2 + 27) stringByAppendingString:v16];
  v18 = *(a2 + 27);
  *(a2 + 27) = v17;

  return this;
}

void sub_1E07BA7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(a18);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      if (a30 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  if (a30 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::ReluOpHandler *EmitterObjC::ReluOpHandler::ReluOpHandler(EmitterObjC::ReluOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4DA10;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v11 = MEMORY[0x1E696AEC0];
  v12 = v24;
  (*(*a2 + 32))(v24, a2, NextResultAtOffset);
  if (v25 < 0)
  {
    v12 = v24[0];
  }

  v23 = v6;
  __p.__r_.__value_.__r.__words[0] = &v23;
  v13 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v23);
  v14 = v13 + 3;
  if (*(v13 + 47) < 0)
  {
    v14 = *v14;
  }

  v21 = 0;
  LOBYTE(v20) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v20, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v16 = [v11 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph reLUWithTensor:%s\n                     name:%s]\n    ", v12, v14, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    operator delete(v20);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(v24[0]);
    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v21 < 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v25 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v17 = [*(a2 + 27) stringByAppendingString:v16];
  v18 = *(a2 + 27);
  *(a2 + 27) = v17;

  return this;
}

void sub_1E07BAA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(a18);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      if (a30 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  if (a30 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::Relu6OpHandler *EmitterObjC::Relu6OpHandler::Relu6OpHandler(EmitterObjC::Relu6OpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4DA28;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Relu6Op,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v11 = MEMORY[0x1E696AEC0];
  (*(*a2 + 32))(v48, a2, NextResultAtOffset);
  if (v49 >= 0)
  {
    v12 = v48;
  }

  else
  {
    v12 = v48[0];
  }

  MPSDataType = getMPSDataType((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8));
  v14 = dataTypeToString(MPSDataType);
  (*(*a2 + 32))(v46, a2, NextResultAtOffset);
  if (v47 >= 0)
  {
    v15 = v46;
  }

  else
  {
    v15 = v46[0];
  }

  v45 = v6;
  v44.__r_.__value_.__r.__words[0] = &v45;
  v16 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v45);
  v17 = v16 + 3;
  if (*(v16 + 47) < 0)
  {
    v17 = *v17;
  }

  v43 = 5;
  strcpy(v42, "_relu");
  EmitObjC::emitTensorName(a2, NextResultAtOffset, v42, &v44);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v44;
  }

  else
  {
    v18 = v44.__r_.__value_.__r.__words[0];
  }

  (*(*a2 + 32))(v40, a2, NextResultAtOffset);
  if (v41 >= 0)
  {
    v19 = v40;
  }

  else
  {
    v19 = v40[0];
  }

  v31 = v19;
  v32 = v18;
  v20 = v38;
  (*(*a2 + 32))(v38, a2, NextResultAtOffset);
  v21 = v12;
  v30 = this;
  if (v39 < 0)
  {
    v20 = v38[0];
  }

  (*(*a2 + 32))(v36, a2, NextResultAtOffset);
  v22 = v37;
  v23 = v36[0];
  v34 = 0;
  LOBYTE(v33) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v33, &__p);
  v24 = v36;
  if (v22 < 0)
  {
    v24 = v23;
  }

  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v26 = [v11 stringWithFormat:@"\n    MPSGraphTensor *%s_const = [graph constantWithScalar:6.0 dataType:%s]\n    MPSGraphTensor *%s_relu = [graph reLUWithTensor:%s name:%s];\n    MPSGraphTensor *%s = [graph minimumWithPrimaryTensor:%s_relu secondaryTensor:%s_const name:%s];\n    ", v21, v14, v15, v17, v32, v31, v20, v24, p_p];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_29:
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(v33);
  if ((v37 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v36[0]);
  if ((v39 & 0x80000000) == 0)
  {
LABEL_31:
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v38[0]);
  if ((v41 & 0x80000000) == 0)
  {
LABEL_32:
    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v40[0]);
  if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_33:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(v44.__r_.__value_.__l.__data_);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_34:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_44:
    operator delete(v46[0]);
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_45:
    operator delete(v48[0]);
    goto LABEL_36;
  }

LABEL_43:
  operator delete(v42[0]);
  if (v47 < 0)
  {
    goto LABEL_44;
  }

LABEL_35:
  if (v49 < 0)
  {
    goto LABEL_45;
  }

LABEL_36:
  v27 = [*(a2 + 27) stringByAppendingString:v26];
  v28 = *(a2 + 27);
  *(a2 + 27) = v27;

  return v30;
}

void sub_1E07BAEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a39 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a34);
  if ((a45 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a40);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v51 - 145) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a46);
  if ((*(v51 - 145) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v51 - 169) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v51 - 168));
  if ((*(v51 - 169) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v51 - 113) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v51 - 192));
  if ((*(v51 - 113) & 0x80000000) == 0)
  {
LABEL_9:
    if (*(v51 - 89) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v51 - 136));
  if (*(v51 - 89) < 0)
  {
LABEL_10:
    operator delete(*(v51 - 112));
    _Unwind_Resume(exception_object);
  }

LABEL_19:
  _Unwind_Resume(exception_object);
}

void sub_1E07BAFE4()
{
  if ((*(v0 - 89) & 0x80000000) == 0)
  {
    JUMPOUT(0x1E07BAFDCLL);
  }

  JUMPOUT(0x1E07BAEECLL);
}

void sub_1E07BAFF8()
{
  if ((*(v0 - 89) & 0x80000000) == 0)
  {
    JUMPOUT(0x1E07BAFDCLL);
  }

  JUMPOUT(0x1E07BAEECLL);
}

void llvm::APFloat::Storage::~Storage(llvm::APFloat::Storage *this)
{
  v2 = *this;
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v2)
  {
    v3 = *(this + 1);
    *(this + 1) = 0;
    if (v3)
    {
      v4 = v3 - 16;
      v5 = *(v3 - 8);
      if (v5)
      {
        v6 = 32 * v5;
        v7 = (v6 + v3 - 24);
        v8 = -v6;
        do
        {
          llvm::APFloat::Storage::~Storage(v7);
          v7 = (v9 - 32);
          v8 += 32;
        }

        while (v8);
      }

      MEMORY[0x1E12E5B60](v4, 0x1072C801E5F02E8);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(this);
  }
}

void arrayToU64Attr(uint64_t **a1, int *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  mlir::Builder::getIntegerType(a1, 64, 0);
  operator new();
}

void sub_1E07BB924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v11)
  {
    free(a10);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

void sub_1E07BCC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E07BD17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E07BD6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id axesToAxesTensor(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  MPSShapeToVector<int>(a2, &v10);
  v4 = v10;
  v5 = v11 - v10;
  if (v11 != v10)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 >> 2];
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v5 = [v3 constantWithData:v6 shape:v8 dataType:536870944];

    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }

  return v5;
}

void sub_1E07BDAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

GPU::MatrixInverseOpHandler *GPU::MatrixInverseOpHandler::MatrixInverseOpHandler(GPU::MatrixInverseOpHandler *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B4DB00;
  *(v6 + 15) = 0;
  v7 = (v6 + 120);
  *(v6 + 16) = 0;
  *(v6 + 17) = 0;
  v8 = objc_alloc(MEMORY[0x1E69746F0]);
  v9 = [a2[6] metalDevice];
  v10 = [v8 initWithDevice:v9];
  v11 = *v7;
  *v7 = v10;

  v12 = objc_alloc(MEMORY[0x1E6974878]);
  v13 = [a2[6] metalDevice];
  v14 = [v12 initWithDevice:v13 sourceCount:3];
  v15 = *(this + 16);
  *(this + 16) = v14;

  v16 = objc_alloc(MEMORY[0x1E6974740]);
  v17 = [a2[6] metalDevice];
  v18 = [v16 initWithDevice:v17];
  v19 = *(this + 17);
  *(this + 17) = v18;

  return this;
}

void GPU::MatrixInverseOpHandler::encodeNDArrayOp(GPU::MatrixInverseOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v24[10] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = *(*(*(this + 3) + 72) + 24);
  [(NSArray *)v5 objectAtIndexedSubscript:0];
  objc_claimAutoreleasedReturnValue();
  v6 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  v19 = [v6 shape];
  v7 = [v19 objectAtIndexedSubscript:{objc_msgSend(v19, "count") - 1}];
  LODWORD(v8) = [v7 intValue];

  v9 = [v19 objectAtIndexedSubscript:{objc_msgSend(v19, "count") - 2}];
  v10 = [v9 intValue];

  if (v8 >= v10)
  {
    v8 = v10;
  }

  else
  {
    v8 = v8;
  }

  v11 = objc_alloc(MEMORY[0x1E695DF70]);
  v12 = [v6 shape];
  v21 = [v11 initWithArray:v12];

  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v8];
  [v21 setObject:v13 atIndexedSubscript:{objc_msgSend(v21, "count") - 1}];

  [v21 setObject:&unk_1F5B75938 atIndexedSubscript:{objc_msgSend(v21, "count") - 2}];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v19];
  [v14 setObject:&unk_1F5B75938 atIndexedSubscript:{objc_msgSend(v14, "count") - 1}];
  [v14 setObject:&unk_1F5B75938 atIndexedSubscript:{objc_msgSend(v14, "count") - 2}];
  memset(v24, 0, 24);
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  GPU::getVector(v19, v24);
  GPU::getVector(v21, v23);
  GPU::getVector(v14, v22);
  v15 = MEMORY[0x1E6974490];
  v16 = [v6 dataType];
  v17 = [v6 shape];
  v18 = [v15 descriptorWithDataType:v16 shape:v17];

  [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a2 + 1) descriptor:v18];
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E6974490] descriptorWithDataType:32 shape:v21];
  objc_claimAutoreleasedReturnValue();
  v20 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a2 + 1) descriptor:?];
  [MEMORY[0x1E6974490] descriptorWithDataType:536870944 shape:v14];
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a2 + 1) descriptor:?];
  objc_claimAutoreleasedReturnValue();
  GPU::initializeToZero(*(this + 17), v20);
}

void sub_1E07BE9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a23);

  if (__p)
  {
    a26 = __p;
    operator delete(__p);
    v40 = a28;
    if (!a28)
    {
LABEL_3:
      v41 = a31;
      if (!a31)
      {
LABEL_8:

        _Unwind_Resume(a1);
      }

LABEL_7:
      a32 = v41;
      operator delete(v41);
      goto LABEL_8;
    }
  }

  else
  {
    v40 = a28;
    if (!a28)
    {
      goto LABEL_3;
    }
  }

  a29 = v40;
  operator delete(v40);
  v41 = a31;
  if (!a31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void GPU::getVector(void *a1, uint64_t a2)
{
  v42 = a1;
  v3 = 0;
  for (i = [v42 count]; i > v3; i = objc_msgSend(v42, "count"))
  {
    v6 = [v42 objectAtIndexedSubscript:v3];
    v7 = [v6 integerValue];
    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    if (v9 < v8)
    {
      *v9 = v7;
      v5 = (v9 + 1);
    }

    else
    {
      v10 = *a2;
      v11 = v9 - *a2;
      v12 = v11 >> 3;
      v13 = (v11 >> 3) + 1;
      if (v13 >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v14 = v8 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v12) = v7;
      v5 = 8 * v12 + 8;
      memcpy(0, v10, v11);
      *a2 = 0;
      *(a2 + 8) = v5;
      *(a2 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    *(a2 + 8) = v5;

    ++v3;
  }

  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = (v17 - 8);
  if (*a2 != v17 && v18 > v16)
  {
    v20 = (v17 - 16);
    v21 = &v16->u64[1];
    if (v17 - 16 <= &v16->u64[1])
    {
      v22 = &v16->i8[8];
    }

    else
    {
      v22 = (v17 - 16);
    }

    v23 = (v22 - 8);
    if (v23 == v16)
    {
      v24 = *a2;
    }

    else
    {
      v24 = &v16->i8[1];
    }

    v25 = v23 == v16;
    v26 = (v23 - v24) >> 4;
    if (!v25)
    {
      ++v26;
    }

    if (v26 < 0x13)
    {
      goto LABEL_44;
    }

    if (v20 <= v21)
    {
      v27 = &v16->i8[8];
    }

    else
    {
      v27 = (v17 - 16);
    }

    v28 = (v27 - 8);
    if (v28 == v16)
    {
      v29 = *a2;
    }

    else
    {
      v29 = &v16->i8[1];
    }

    v25 = v28 == v16;
    v30 = (v28 - v29) >> 4;
    if (!v25)
    {
      ++v30;
    }

    if (v16 < v17 && v17 - 8 * v30 - 8 < v21 + 8 * v30)
    {
      goto LABEL_44;
    }

    v31 = v26 + 1;
    v32 = (v26 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v18 = (v18 - 8 * v32);
    v33 = (v16 + 8 * v32);
    v34 = v16 + 1;
    v35 = v32;
    do
    {
      v36 = v34[-1];
      v37 = *v34;
      v38 = vextq_s8(v20[-1], v20[-1], 8uLL);
      v34[-1] = vextq_s8(*v20, *v20, 8uLL);
      *v34 = v38;
      v20[-1] = vextq_s8(v37, v37, 8uLL);
      *v20 = vextq_s8(v36, v36, 8uLL);
      v34 += 2;
      v20 -= 2;
      v35 -= 4;
    }

    while (v35);
    v16 = v33;
    if (v31 != v32)
    {
LABEL_44:
      v39 = &v16->u64[1];
      do
      {
        v40 = *(v39 - 8);
        *(v39 - 8) = v18->i64[0];
        v18->i64[0] = v40;
        v18 = (v18 - 8);
        v41 = v39 >= v18;
        v39 += 8;
      }

      while (!v41);
    }
  }
}

void GPU::initializeToZero(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  operator new();
}

void sub_1E07BF0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E07BF0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void GPU::MatrixInverseOpHandler::~MatrixInverseOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void sub_1E07BF2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MPSGraphTensorData;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E07C0A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *__p, void *a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E07C10B8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1E07C15E0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1E07C18F4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1E07C1B74(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id MPSShapeFromTensorExtents(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 rank];
  v3 = 8 * v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v12 - ((8 * v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  if (v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:{*(objc_msgSend(v1, "extents") + 8 * v2 + 8 * ~v5)}];
      v8 = *&v4[8 * v5];
      *&v4[8 * v5] = v7;

      v5 = v6++;
    }

    while (v2 > v5);
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) count:v2];
  if (v2)
  {
    v10 = v4 - 8;
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  return v9;
}

void sub_1E07C29F4(_Unwind_Exception *a1)
{
  if (v4)
  {
    v6 = v3 - 8;
    do
    {

      v2 -= 8;
    }

    while (v2);
  }

  _Unwind_Resume(a1);
}

void sub_1E07C495C(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1E07C6004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v27 = v21;

  _Unwind_Resume(a1);
}

void sub_1E07C64A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22)
{
  v27 = v22;

  _Unwind_Resume(a1);
}

id *GPU::ScaledDotProductAttentionOpHandler::ScaledDotProductAttentionOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B4DB68;
  *(v6 + 15) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 21) = 0;
  v18 = *(*(*(v6 + 3) + 72) + 152);
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    GPU::ScaledDotProductAttentionOpHandler::_createKernel(this, 0);
  }

  v8 = this[15];
  this[15] = 0;

  v9 = this[17];
  this[17] = 0;

  v10 = this[18];
  this[18] = 0;

  v11 = this[19];
  this[19] = 0;

  v12 = this[20];
  this[20] = 0;

  v13 = objc_alloc(MEMORY[0x1E6974740]);
  v14 = [a2[6] metalDevice];
  v15 = [v13 initWithDevice:v14];
  v16 = this[21];
  this[21] = v15;

  [this[21] setOptions:{objc_msgSend(this[21], "options") | 1}];
  return this;
}

void sub_1E07C68CC(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::ScaledDotProductAttentionOpHandler::_createKernel(GPU::ScaledDotProductAttentionOpHandler *this, GPU::EncodeDescriptor *a2)
{
  GPURegionRuntime::waitAndReadFPTensorData(*(this + 2), a2, *(*(*(this + 3) + 72) + 152), &__p);
  if (v8 - __p != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v3 = objc_alloc(MEMORY[0x1E6974860]);
  v4 = [*(*(this + 2) + 48) metalDevice];
  v5 = [v3 initWithDevice:v4 kernelType:0 sourceCount:5];

  LODWORD(v6) = *__p;
  [v5 setAlpha:v6];
  objc_storeStrong(this + 1, v5);
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_1E07C6A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::ScaledDotProductAttentionOpHandler::encodeNDArrayOp(GPU::ScaledDotProductAttentionOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v37[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(this + 3);
  v30 = v5;
  v29 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v7 = [v29 mpsndarray];
  v8 = *(v6 + 72);
  v9 = v8[7];
  v10 = v8[11];
  v11 = v8[15];
  v12 = v8[19];
  v35 = (*(**(this + 2) + 48))(*(this + 2), v8[3], 0);
  v34 = (*(**(this + 2) + 48))(*(this + 2), v9, 0);
  v33 = (*(**(this + 2) + 48))(*(this + 2), v10, 0);
  v32 = (*(**(this + 2) + 48))(*(this + 2), v11, 0);
  v31 = (*(**(this + 2) + 48))(*(this + 2), v12, 0);
  v13 = [v35 mpsndarray];
  v14 = [v34 mpsndarray];
  v15 = [v33 mpsndarray];
  v16 = [v32 mpsndarray];
  v17 = [v31 mpsndarray];
  v18 = v17;
  if (!v7 || (v13 ? (v19 = v14 == 0) : (v19 = 1), !v19 ? (v20 = v15 == 0) : (v20 = 1), !v20 ? (v21 = v16 == 0) : (v21 = 1), !v21 ? (v22 = v17 == 0) : (v22 = 1), v22))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v23 = [v35 shape];
  [v23 count];

  v36 = *(*(v6 + 72) + 152);
  DefiningOp = mlir::Value::getDefiningOp(&v36);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    GPU::ScaledDotProductAttentionOpHandler::_createKernel(this, a2);
  }

  v25 = *(this + 1);
  v26 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v27 = *(a2 + 1);
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v37[3] = v16;
  v37[4] = v18;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
  [v25 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v28 destinationArray:v7];
}

void GPU::ScaledDotProductAttentionOpHandler::~ScaledDotProductAttentionOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::IdentityOpHandler::IdentityOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4DC20;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::IdentityOpHandler::encodeNDArrayOp(GPU::IdentityOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(*(this + 3) + 72) + 24);
  v7 = *(this + 1);
  v8 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v10 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v11 = *(a2 + 1);
    v12 = [v8 mpsndarray];
    v13 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v7 encodeToMPSCommandEncoder:v10 commandBuffer:v11 sourceArrays:v9 resultState:0 destinationArray:v12 kernelDAGObject:v13];
  }

  else
  {
    v14 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
    v15 = [v8 mpsndarray];
    v16 = [v14 mpsndarray];
    v17 = v16;
    if ((!v15 || !v16) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(this + 4) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v18 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v19 = *(a2 + 1);
    v22[0] = v17;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v21 = [v8 mpsndarray];
    [v7 encodeToMPSCommandEncoder:v18 commandBuffer:v19 sourceArrays:v20 resultState:0 destinationArray:v21 kernelDAGObject:0];
  }
}

void GPU::ConstantOpHandler::encodeOp(GPU::ConstantOpHandler *this, id *a2)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v3 = *(this + 3);
    mlir::mps::ConstantOp::getAsAttribute(&v3);
    operator new();
  }

  GPU::BaseOpHandler::encodeConstantOp(this, a2, v2, 1);
}

id *GPU::ExtractOpHandler::ExtractOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4DCC0;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::ExtractOpHandler::encodeOp(GPU::ExtractOpHandler *this, void **a2)
{
  if ((*(this + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = *(this + 3);
  if (*(v13 + 36))
  {
    v4 = v13 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  ODSOperandIndexAndLength = mlir::tensor::ExtractOp::getODSOperandIndexAndLength(&v13, 0);
  v7 = *(*(v13 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v8 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v9 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v10 = [v9 mpsndarray];
  if (!v10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = *(this + 2);
  v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v11, v12, a2[1], this + 1, v10, v8, NextResultAtOffset, 0);
}

id *GPU::FromElementsOpHandler::FromElementsOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4DD10;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::FromElementsOpHandler::encodeOp(GPU::FromElementsOpHandler *this, void **a2)
{
  if ((*(this + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = *(this + 3);
  if (*(v15 + 36))
  {
    v4 = v15 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v15, 0);
  if ((*(v15 + 46) & 0x80) != 0)
  {
    v7 = *(v15 + 72);
    v8 = ODSOperandIndexAndLength;
    if ((HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength == 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    v8 = ODSOperandIndexAndLength;
    if ((HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength == 1)
    {
      goto LABEL_9;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_9:
  v9 = *(v7 + 32 * v8 + 24);
  v10 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v11 = (*(**(this + 2) + 48))(*(this + 2), v9, 0);
  v12 = [v11 mpsndarray];
  if (!v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = *(this + 2);
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v13, v14, a2[1], this + 1, v12, v10, NextResultAtOffset, 0);
}

id *GPU::TypeConstraintOpHandler::TypeConstraintOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4DD60;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::TypeConstraintOpHandler::encodeOp(GPU::TypeConstraintOpHandler *this, void **a2)
{
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v4 = *(this + 3);
  v5 = *(*(v4 + 72) + 24);
  v6 = *(v4 + 36);
  v7 = v4 - 16;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v14 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v10 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  v11 = [v10 mpsndarray];
  if (!v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = *(this + 2);
  v13 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v12, v13, a2[1], this + 1, v11, v14, NextResultAtOffset, 0);
}

id *GPU::DynamicShapeCastOpHandler::DynamicShapeCastOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4DDB0;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::DynamicShapeCastOpHandler::encodeOp(GPU::DynamicShapeCastOpHandler *this, void **a2)
{
  v22 = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v22, 0);
  v5 = *(*(v22 + 72) + 32 * ODSOperandIndexAndLength + 24);
  if (*(v22 + 36))
  {
    v6 = v22 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v8 = *(*(*(this + 2) + 592) + 32);
  if (((*(*v8 + 24))(v8, NextResultAtOffset) & 1) == 0)
  {
    v9 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8))
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v25 = v9;
      v26 = v10;
      if (!v9)
      {
        goto LABEL_16;
      }

      if (!mlir::CallOpInterface::getArgOperands(&v25))
      {
        goto LABEL_15;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v25);
      if (v12)
      {
        v13 = 8 * v12;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v13 -= 8;
          if (!v13)
          {
            goto LABEL_16;
          }
        }

LABEL_15:
        StaticType = GPURegionRuntime::getStaticType(*(this + 2), v5);
        v15 = *(this + 2);
        v23[1] = StaticType;
        v24 = NextResultAtOffset;
        v23[0] = *(mlir::Value::getParentRegion(&v24) + 2);
        v25 = v23;
        v16 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v15 + 288), v23);
        v25 = v24;
        std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v16 + 3, &v25);
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }
  }

LABEL_16:
  v17 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v18 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  v19 = [v18 mpsndarray];
  if (!v19 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v20 = *(this + 2);
  v21 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v20, v21, a2[1], this + 1, v19, v17, NextResultAtOffset, 0);
}

GPU::ReadDataFromFileOpHandler *GPU::ReadDataFromFileOpHandler::ReadDataFromFileOpHandler(GPU::ReadDataFromFileOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B4DE00;
  *(v5 + 15) = 0;
  v6 = (v5 + 120);
  *(v5 + 23) = 0;
  *(v5 + 24) = 0;
  *(v5 + 26) = 0;
  *(v5 + 27) = 0;
  *(v5 + 28) = 0;
  *(v5 + 30) = 0;
  *(v5 + 31) = 0;
  *(v5 + 16) = 0;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  WeakRetained = objc_loadWeakRetained((*(v5 + 2) + 72));
  v8 = WeakRetained + 320;

  v9 = *v8;
  v10 = *(v8 + 2);
  if (!v10)
  {
    v11 = *v8;
    v16 = &v9[v10];
    if (v9 == v16)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v11 = *v8;
  if (*v9)
  {
    v12 = *v9 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v11[1];
      ++v11;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  v16 = &v9[v10];
  if (v11 != v16)
  {
LABEL_14:
    v17 = *v11;
    do
    {
      v18.var0.var0 = *(*(this + 3) + 24);
      LazyCopyFile::load(*(v17 + 8), v18);
      do
      {
        v19 = v11[1];
        ++v11;
        v17 = v19;
        if (v19)
        {
          v20 = v17 == -8;
        }

        else
        {
          v20 = 1;
        }
      }

      while (v20);
    }

    while (v11 != v16);
  }

LABEL_21:
  v43 = *(this + 3);
  v21 = MEMORY[0x1E696AEC0];
  Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v43);
  if (Name)
  {
    v24 = v22;
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v42) = v22;
    if (v22)
    {
      memmove(&__dst, Name, v22);
    }

    *(&__dst + v24) = 0;
    if (v42 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }
  }

  else
  {
    __dst = 0;
    v41 = 0;
    p_dst = &__dst;
    v42 = 0;
  }

  v26 = [v21 stringWithCString:p_dst encoding:4];
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__dst);
  }

  v27 = objc_loadWeakRetained((*(this + 2) + 72));
  v28 = [v27[115] stringByAppendingPathComponent:v26];
  v29 = *v6;
  *v6 = v28;

  *(this + 17) = mlir::mps::ReadDataFromFileOp::getOffset(&v43);
  if (*(v43 + 36))
  {
    v30 = v43 - 16;
  }

  else
  {
    v30 = 0;
  }

  *(this + 18) = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(this + 16);
  *(this + 16) = 0;

  mlir::pdl::OperationOp::getOpName(&v43, &__dst);
  if (v42 == 1)
  {
    v32 = MEMORY[0x1E696AEC0];
    mlir::pdl::OperationOp::getOpName(&v43, &__src);
    if (__src)
    {
      v33 = __len;
      if (__len > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v42) = __len;
      if (__len)
      {
        memmove(&__dst, __src, __len);
      }

      *(&__dst + v33) = 0;
      if (v42 >= 0)
      {
        v34 = &__dst;
      }

      else
      {
        v34 = __dst;
      }
    }

    else
    {
      __dst = 0;
      v41 = 0;
      v34 = &__dst;
      v42 = 0;
    }

    v35 = [v32 stringWithCString:v34 encoding:4];
    v36 = *(this + 16);
    *(this + 16) = v35;

    if (SHIBYTE(v42) < 0)
    {
      operator delete(__dst);
    }
  }

  return this;
}

void sub_1E07C84F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  GPU::detail::ReadDataFromFileCache::Value::~Value(v19);
  GPU::detail::ReadDataFromFileCache::Value::~Value((v18 + 19));

  GPU::BaseOpHandler::~BaseOpHandler(v18);
  _Unwind_Resume(a1);
}

void GPU::ReadDataFromFileOpHandler::encodeOp(GPU::ReadDataFromFileOpHandler *this, id *a2)
{
  memset(&__str, 0, sizeof(__str));
  *(&v38 + 1) = 0;
  v39 = 0;
  if (!*(this + 16))
  {
    goto LABEL_11;
  }

  v4 = (*(**(this + 2) + 96))(*(this + 2));
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 40);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = (*(**(this + 2) + 104))(*(this + 2));
  GPU::detail::SpecializationGPUDataLoader::getValue(v5, v6, *(this + 3), &__p);
  if (v39)
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(v40, &__str);
  }

  std::string::operator=(&__str, &__p);
  v38 = v33;
  v7 = v34;
  v39 = v34;
  v40 = v35;
  if (v34)
  {
    GPU::detail::ReadDataFromFileCache::incrementRefCount(v35, &__str);
    v7 = v34;
  }

  if (v7)
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(v35, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v39)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_11:
    if (v39)
    {
      goto LABEL_41;
    }
  }

  if (!*(this + 24))
  {
    WeakRetained = objc_loadWeakRetained((*(this + 2) + 72));
    v9 = [WeakRetained getReadDataFromFileCache];
    v10 = [*(this + 15) UTF8String];
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v11;
    if (v11)
    {
      memmove(&__dst, v10, v11);
    }

    __dst.__r_.__value_.__s.__data_[v12] = 0;
    v13 = *(this + 17);
    v14 = *(this + 18);
    v15 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v41 = __dst;
    }

    v42 = v13;
    v43 = v14;
    GPU::detail::ReadDataFromFileCache::get(v9, &v41, &__p);
    if (*(this + 24))
    {
      GPU::detail::ReadDataFromFileCache::decrementRefCount(*(this + 25), this + 152);
    }

    std::string::operator=((this + 152), &__p);
    *(this + 11) = v33;
    v17 = v34;
    v16 = v35;
    *(this + 24) = v34;
    *(this + 25) = v16;
    if (v17)
    {
      GPU::detail::ReadDataFromFileCache::incrementRefCount(v16, this + 152);
      v17 = v34;
    }

    if (v17)
    {
      GPU::detail::ReadDataFromFileCache::decrementRefCount(v35, &__p);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }
    }

    else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    operator delete(v41.__r_.__value_.__l.__data_);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_33:

      if (!v39)
      {
        goto LABEL_39;
      }

LABEL_38:
      GPU::detail::ReadDataFromFileCache::decrementRefCount(v40, &__str);
      goto LABEL_39;
    }

LABEL_37:
    operator delete(__dst.__r_.__value_.__l.__data_);

    if (!v39)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_39:
  std::string::operator=(&__str, (this + 152));
  v38 = *(this + 11);
  v18 = *(this + 25);
  v39 = *(this + 24);
  v40 = v18;
  if (v39)
  {
    GPU::detail::ReadDataFromFileCache::incrementRefCount(v18, &__str);
  }

LABEL_41:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __str;
  }

  v33 = v38;
  if (*(this + 231) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *(this + 26), *(this + 27));
  }

  else
  {
    v41 = *(this + 208);
  }

  v20 = *(this + 29);
  v19 = *(this + 30);
  v42 = v20;
  v43 = v19;
  v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v23 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  v24 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v41.__r_.__value_.__l.__size_;
  }

  if (size == v23)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v41;
    }

    else
    {
      v26 = v41.__r_.__value_.__r.__words[0];
    }

    v27 = 0;
    if (!memcmp(p_p, v26, size) && v33 == v20)
    {
      v27 = *(&v33 + 1) == v19;
    }

    if ((v24 & 0x80000000) == 0)
    {
LABEL_63:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v27 = 0;
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }
  }

  operator delete(v41.__r_.__value_.__l.__data_);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
  {
LABEL_64:
    if (!v27)
    {
      goto LABEL_70;
    }

LABEL_69:
    v28 = v39;
    if (v39 == *(this + 31))
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

LABEL_68:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v27)
  {
    goto LABEL_69;
  }

LABEL_70:
  v29 = *(this + 6);
  *(this + 6) = 0;

  if (*(this + 31))
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(*(this + 32), this + 208);
  }

  std::string::operator=((this + 208), &__str);
  *(this + 232) = v38;
  v28 = v39;
  v30 = v40;
  *(this + 31) = v39;
  *(this + 32) = v30;
  if (v28)
  {
    GPU::detail::ReadDataFromFileCache::incrementRefCount(v30, this + 208);
    v28 = v39;
  }

LABEL_74:
  if (v28)
  {
    v31 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
  }

  else
  {
    v31 = 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(&__p, v28, v31);
  GPU::BaseOpHandler::encodeConstantOp(this, a2, &__p, 1);
  mlir::mps::CPUNDArray::~CPUNDArray(&__p);
  if (v39)
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(v40, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E07C8ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  operator delete(v25);

  GPU::detail::ReadDataFromFileCache::Value::~Value(&a24);
  _Unwind_Resume(a1);
}

void sub_1E07C8B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  GPU::detail::ReadDataFromFileCache::Value::~Value(va);
  _Unwind_Resume(a1);
}

void sub_1E07C8B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
    GPU::detail::ReadDataFromFileCache::Value::~Value(&a27);
    _Unwind_Resume(a1);
  }

  GPU::detail::ReadDataFromFileCache::Value::~Value(&a27);
  _Unwind_Resume(a1);
}

uint64_t GPU::IdentityOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::IdentityOpHandler::~IdentityOpHandler(GPU::IdentityOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ConstantOpHandler::kernelDAGOp(uint64_t a1)
{
  v136[6] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (*(v1 + 36))
  {
    v2 = v1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v135[0] = v3;
  v135[1] = v4;
  if (*(*mlir::ElementsAttr::isSplat(v135) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    if (*(v1 + 36))
    {
      v5 = v1 - 16;
    }

    else
    {
      v5 = 0;
    }

    v6 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    }

    else
    {
      v7 = 0;
    }

    v135[0] = v6;
    v135[1] = v7;
    if (*(*mlir::ElementsAttr::isSplat(v135) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (*(v1 + 36))
      {
        v18 = v1 - 16;
      }

      else
      {
        v18 = 0;
      }

      v133 = 0uLL;
      *&v134 = &v133;
      v135[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
      DefiningOp = mlir::Value::getDefiningOp(v135);
      if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v134, DefiningOp) || (*v135 = v133, !mlir::ElementsAttr::isSplat(v135)) || (*&v134 = mlir::CallOpInterface::getArgOperands(v135), *(&v134 + 1) = v20, *(*mlir::ElementsAttr::isSplat(&v134) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
LABEL_99:
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_102;
      }
    }

    else
    {
      if (*(v1 + 36))
      {
        v15 = v1 - 16;
      }

      else
      {
        v15 = 0;
      }

      v16 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v16)
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      }

      else
      {
        v17 = 0;
      }

      v135[0] = v16;
      v135[1] = v17;
      v21 = *(*mlir::ElementsAttr::isSplat(v135) + 136);
      if (v21 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        goto LABEL_99;
      }

      v22 = *(v1 + 36) ? v1 - 16 : 0;
      v133 = 0uLL;
      *&v134 = &v133;
      v135[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
      v23 = mlir::Value::getDefiningOp(v135);
      if (!v23)
      {
        goto LABEL_99;
      }

      if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v134, v23) & 1) == 0)
      {
        goto LABEL_99;
      }

      *v135 = v133;
      if (!mlir::ElementsAttr::isSplat(v135))
      {
        goto LABEL_99;
      }

      *&v134 = mlir::CallOpInterface::getArgOperands(v135);
      *(&v134 + 1) = v24;
      v25 = *(*mlir::ElementsAttr::isSplat(&v134) + 136);
      if (v25 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        goto LABEL_99;
      }
    }

    *&v134 = 0;
    mlir::copyElementsAttrData<double>(v135[0], v135[1], &v134);
LABEL_102:
    Op = MPSKernelDAG::constantOp();
    goto LABEL_103;
  }

  if (*(v1 + 36))
  {
    v8 = v1 - 16;
  }

  else
  {
    v8 = 0;
  }

  v126 = 0uLL;
  *&v134 = &v126;
  v135[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v9 = mlir::Value::getDefiningOp(v135);
  if (!v9 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v134, v9) || (v130 = v126, (mlir::ElementsAttr::isSplat(&v130) & 1) == 0) || ((v135[0] = mlir::CallOpInterface::getArgOperands(&v130), v135[1] = v10, isSplat = mlir::ElementsAttr::isSplat(v135), *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) ? (v12 = 0) : (v12 = isSplat), (v129 = v12) == 0 || (v13 = *(*mlir::AffineMapAttr::getValue(&v129) + 136), v13 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) && v13 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_42;
  }

  v127 = 0uLL;
  v134 = v130;
  Type = mlir::ElementsAttr::getType(&v134);
  v29 = Type;
  if (Type)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  else
  {
    v30 = 0;
  }

  *&v133 = v29;
  *(&v133 + 1) = v30;
  v132 = mlir::ElementsAttr::isSplat(&v133);
  v31 = mlir::ElementsAttr::isSplat(&v134);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v134);
  v34 = v33;
  if (v31)
  {
    if (mlir::Type::isUnsignedInteger(&v132, 8))
    {
      LOBYTE(v35) = *ElementsAttrRawData;
LABEL_138:
      v127.f64[0] = v35;
      goto LABEL_42;
    }

    if (mlir::Type::isInteger(&v132, 8))
    {
      v127.f64[0] = *ElementsAttrRawData;
      goto LABEL_42;
    }

    if (mlir::Type::isUnsignedInteger(&v132, 16))
    {
      NumElements = 1;
LABEL_135:
      v47 = NumElements - 1;
      if (v31)
      {
        v47 = 0;
      }

      LOWORD(v35) = *&ElementsAttrRawData[2 * v47];
      goto LABEL_138;
    }

    if (mlir::Type::isInteger(&v132, 16))
    {
      NumElements = 1;
LABEL_143:
      v49 = NumElements - 1;
      if (v31)
      {
        v49 = 0;
      }

      v48.i16[0] = *&ElementsAttrRawData[2 * v49];
      v50 = vmovl_s16(v48).i32[0];
LABEL_146:
      v127.f64[0] = v50;
      goto LABEL_42;
    }

    if (mlir::Type::isUnsignedInteger(&v132, 32))
    {
      NumElements = 1;
LABEL_153:
      v51 = NumElements - 1;
      if (v31)
      {
        v51 = 0;
      }

      LODWORD(v35) = *&ElementsAttrRawData[4 * v51];
      goto LABEL_138;
    }

    if (mlir::Type::isInteger(&v132, 32))
    {
      NumElements = 1;
LABEL_170:
      v67 = NumElements - 1;
      if (v31)
      {
        v67 = 0;
      }

      v50 = *&ElementsAttrRawData[4 * v67];
      goto LABEL_146;
    }

    if (mlir::Type::isUnsignedInteger(&v132, 64))
    {
      NumElements = 1;
LABEL_187:
      v81 = NumElements - 1;
      if (v31)
      {
        v81 = 0;
      }

      v35 = *&ElementsAttrRawData[8 * v81];
      goto LABEL_138;
    }

    if (mlir::Type::isInteger(&v132, 64))
    {
      NumElements = 1;
      goto LABEL_194;
    }

    if (mlir::Type::isF16(&v132))
    {
      NumElements = 1;
      goto LABEL_201;
    }

    if (mlir::Type::isF32(&v132))
    {
      NumElements = 1;
LABEL_208:
      v90 = NumElements - 1;
      if (v31)
      {
        v90 = 0;
      }

      v91 = *&ElementsAttrRawData[4 * v90];
LABEL_211:
      v127.f64[0] = v91;
      goto LABEL_42;
    }

    if (mlir::Type::isF64(&v132))
    {
      v127.f64[0] = *ElementsAttrRawData;
      goto LABEL_42;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&v132))
    {
      goto LABEL_230;
    }

LABEL_227:
    v96 = NumElements - 1;
    if (v31)
    {
      v96 = 0;
    }

    LODWORD(v91) = *&ElementsAttrRawData[2 * v96] << 16;
    goto LABEL_211;
  }

  NumElements = mlir::ElementsAttr::getNumElements(v134, *(&v134 + 1));
  if (mlir::Type::isUnsignedInteger(&v132, 8))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    if (NumElements < 4 || &v127 < &ElementsAttrRawData[NumElements] && &v128 > ElementsAttrRawData)
    {
      v38 = 0;
LABEL_117:
      v39 = NumElements - v38;
      v40 = &ElementsAttrRawData[v38];
      do
      {
        v41 = *v40++;
        v127.f64[0] = v41;
        v127.f64[1] = 0.0;
        --v39;
      }

      while (v39);
      goto LABEL_42;
    }

    if (NumElements >= 0x10)
    {
      v38 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v52 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v53 = ElementsAttrRawData;
      do
      {
        v54 = *v53++;
        v55 = v54;
        v52 -= 16;
      }

      while (v52);
      v37 = vextq_s8(v55, v55, 8uLL);
      v56.i32[0] = v37.u8[6];
      v56.i32[1] = v37.u8[7];
      v57 = vand_s8(v56, 0xFF000000FFLL);
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      v59 = vcvtq_f64_u64(v58);
      v37.i32[1] = HIDWORD(v59.f64[1]);
      v127 = *&v59.f64[1];
      if (NumElements == v38)
      {
        goto LABEL_42;
      }

      if ((NumElements & 0xC) == 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v38 = 0;
    }

    v60 = v38;
    v38 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v61 = &ElementsAttrRawData[v60];
    v62 = v60 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v63 = *v61;
      v61 += 4;
      v37.i32[0] = v63;
      v62 += 4;
    }

    while (v62);
    v64 = vmovl_u16(*&vmovl_u8(*v37.i8));
    v65 = vand_s8(*&vextq_s8(v64, v64, 8uLL), 0xFF000000FFLL);
    v66.i64[0] = v65.u32[0];
    v66.i64[1] = v65.u32[1];
    v127 = *&vcvtq_f64_u64(v66).f64[1];
    if (NumElements == v38)
    {
      goto LABEL_42;
    }

    goto LABEL_117;
  }

  if (mlir::Type::isInteger(&v132, 8))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    if (NumElements < 4 || &v127 < &ElementsAttrRawData[NumElements] && &v128 > ElementsAttrRawData)
    {
      v43 = 0;
LABEL_128:
      v44 = NumElements - v43;
      v45 = &ElementsAttrRawData[v43];
      do
      {
        v46 = *v45++;
        v127.f64[0] = v46;
        v127.f64[1] = 0.0;
        --v44;
      }

      while (v44);
      goto LABEL_42;
    }

    if (NumElements >= 0x10)
    {
      v43 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v68 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v69 = ElementsAttrRawData;
      do
      {
        v70 = *v69++;
        v71 = v70;
        v68 -= 16;
      }

      while (v68);
      v72 = vextq_s8(v71, v71, 8uLL);
      v73.i32[0] = v72.u8[6];
      v73.i32[1] = v72.u8[7];
      *v72.i8 = vshr_n_s32(vshl_n_s32(v73, 0x18uLL), 0x18uLL);
      v74.i64[0] = v72.i32[0];
      v74.i64[1] = v72.i32[1];
      v42 = vcvtq_f64_s64(v74);
      v127 = *&v42.f64[1];
      if (NumElements == v43)
      {
        goto LABEL_42;
      }

      if ((NumElements & 0xC) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v43 = 0;
    }

    v75 = v43;
    v43 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v76 = &ElementsAttrRawData[v75];
    v77 = v75 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v78 = *v76;
      v76 += 4;
      LODWORD(v42.f64[0]) = v78;
      v77 += 4;
    }

    while (v77);
    v79 = vmovl_u16(*&vmovl_u8(*&v42.f64[0]));
    *v79.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v79, v79, 8uLL), 0x18uLL), 0x18uLL);
    v80.i64[0] = v79.i32[0];
    v80.i64[1] = v79.i32[1];
    v127 = *&vcvtq_f64_s64(v80).f64[1];
    if (NumElements == v43)
    {
      goto LABEL_42;
    }

    goto LABEL_128;
  }

  if (mlir::Type::isUnsignedInteger(&v132, 16))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_135;
  }

  if (mlir::Type::isInteger(&v132, 16))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_143;
  }

  if (mlir::Type::isUnsignedInteger(&v132, 32))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_153;
  }

  if (mlir::Type::isInteger(&v132, 32))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_170;
  }

  if (mlir::Type::isUnsignedInteger(&v132, 64))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_187;
  }

  if (mlir::Type::isInteger(&v132, 64))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

LABEL_194:
    v82 = NumElements - 1;
    if (v31)
    {
      v82 = 0;
    }

    v127.f64[0] = *&ElementsAttrRawData[8 * v82];
    goto LABEL_42;
  }

  if (mlir::Type::isF16(&v132))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

LABEL_201:
    v83 = NumElements - 1;
    if (v31)
    {
      v83 = 0;
    }

    _H0 = *&ElementsAttrRawData[2 * v83];
    __asm { FCVT            D0, H0 }

    v127.f64[0] = _D0;
    goto LABEL_42;
  }

  if (mlir::Type::isF32(&v132))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_208;
  }

  if (mlir::Type::isF64(&v132))
  {
    if (NumElements >= 1)
    {
      if (NumElements >= 6 && (&v127 >= &ElementsAttrRawData[8 * NumElements] || &v128 <= ElementsAttrRawData))
      {
        v92 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        v103 = (ElementsAttrRawData + 16);
        v104 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v105 = *v103;
          v103 += 2;
          v106 = *(&v105 + 1);
          v104 -= 4;
        }

        while (v104);
        v127 = v106;
        if (NumElements == v92)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v92 = 0;
      }

      v93 = NumElements - v92;
      v94 = &ElementsAttrRawData[8 * v92];
      do
      {
        v95 = *v94;
        v94 += 8;
        v127 = v95;
        --v93;
      }

      while (v93);
    }

    goto LABEL_42;
  }

  if (mlir::Type::isBF16(&v132))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_227;
  }

LABEL_230:
  if (mlir::Type::isInteger(&v132, 1))
  {
    llvm::SmallVector<char,40u>::SmallVector(v135, NumElements);
    mlir::detail::unpackBooleanData(ElementsAttrRawData, v34, v135[0], v135[1]);
    if (NumElements < 1)
    {
      goto LABEL_254;
    }

    if (v31)
    {
      v127.f64[0] = *v135[0];
      v127.f64[1] = 0.0;
      goto LABEL_254;
    }

    if (NumElements < 4 || &v127 < (v135[0] + NumElements) && v135[0] < &v128)
    {
      v107 = 0;
      goto LABEL_252;
    }

    if (NumElements >= 0x10)
    {
      v107 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v113 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v114 = v135[0];
      do
      {
        v115 = *v114++;
        v116 = v115;
        v113 -= 16;
      }

      while (v113);
      v117 = vextq_s8(v116, v116, 8uLL);
      v118.i32[0] = v117.u8[6];
      v118.i32[1] = v117.u8[7];
      *v117.i8 = vshr_n_s32(vshl_n_s32(v118, 0x18uLL), 0x18uLL);
      v119.i64[0] = v117.i32[0];
      v119.i64[1] = v117.i32[1];
      v97 = *&vcvtq_f64_s64(v119).f64[1];
      v127 = v97;
      if (NumElements == v107)
      {
        goto LABEL_254;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_252:
        v108 = NumElements - v107;
        v109 = v135[0] + v107;
        do
        {
          v110 = *v109++;
          v127.f64[0] = v110;
          v127.f64[1] = 0.0;
          --v108;
        }

        while (v108);
        goto LABEL_254;
      }
    }

    else
    {
      v107 = 0;
    }

    v120 = v107;
    v107 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v121 = (v135[0] + v120);
    v122 = v120 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v123 = *v121++;
      v97.i32[0] = v123;
      v122 += 4;
    }

    while (v122);
    v124 = vmovl_u16(*&vmovl_u8(v97));
    *v124.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v124, v124, 8uLL), 0x18uLL), 0x18uLL);
    v125.i64[0] = v124.i32[0];
    v125.i64[1] = v124.i32[1];
    v127 = *&vcvtq_f64_s64(v125).f64[1];
    if (NumElements != v107)
    {
      goto LABEL_252;
    }

LABEL_254:
    if (v135[0] != v136)
    {
      free(v135[0]);
    }

    goto LABEL_42;
  }

  v98 = v132;
  v99 = *(*v132 + 136);
  if (v99 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v98 = 0;
  }

  v135[0] = v98;
  if (v99 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    Value = mlir::AffineMapAttr::getValue(v135);
    if (mlir::Type::isF32(&Value))
    {
      v101 = NumElements - 1;
      if (NumElements < 1)
      {
        goto LABEL_42;
      }

      if (v31)
      {
        v101 = 0;
      }

      v102 = vcvtq_f64_f32(*&ElementsAttrRawData[8 * v101]);
    }

    else
    {
      Value = mlir::AffineMapAttr::getValue(v135);
      mlir::Type::isF16(&Value);
      v112 = NumElements - 1;
      if (NumElements < 1)
      {
        goto LABEL_42;
      }

      if (v31)
      {
        v112 = 0;
      }

      v111.i32[0] = *&ElementsAttrRawData[4 * v112];
      v102 = vcvtq_f64_f32(*&vcvtq_f32_f16(v111));
    }

    v127 = v102;
  }

  else
  {
    mlir::Type::getIntOrFloatBitWidth(&v132);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v132);
    mlir::detail::unpackQuantizedData<std::complex<double>>(ElementsAttrRawData, v34, &v127, NumElements, IntOrFloatBitWidth);
  }

LABEL_42:
  MPSKernelDAG::constantOp();
  MPSKernelDAG::constantOp();
  Op = MPSKernelDAG::complexCreateOp();
LABEL_103:
  v26 = Op;
  if (!Op && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v26;
}

void sub_1E07C9CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a25 != &a28)
  {
    free(a25);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void GPU::ConstantOpHandler::~ConstantOpHandler(GPU::ConstantOpHandler *this)
{
  *this = &unk_1F5B4DC70;
  v1 = *(this + 15);
  *(this + 15) = 0;
  if (v1)
  {
    v2 = this;
    mlir::mps::CPUNDArray::~CPUNDArray(v1);
    MEMORY[0x1E12E5B90]();
    this = v2;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4DC70;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    mlir::mps::CPUNDArray::~CPUNDArray(v2);
    MEMORY[0x1E12E5B90]();
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ExtractOpHandler::~ExtractOpHandler(GPU::ExtractOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::FromElementsOpHandler::~FromElementsOpHandler(GPU::FromElementsOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::TypeConstraintOpHandler::~TypeConstraintOpHandler(GPU::TypeConstraintOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::DynamicShapeCastOpHandler::~DynamicShapeCastOpHandler(GPU::DynamicShapeCastOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ReadDataFromFileOpHandler::~ReadDataFromFileOpHandler(GPU::ReadDataFromFileOpHandler *this)
{
  GPU::ReadDataFromFileOpHandler::~ReadDataFromFileOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

{
  *this = &unk_1F5B4DE00;
  if (*(this + 31))
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(*(this + 32), this + 208);
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
    if (!*(this + 24))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(this + 24))
  {
LABEL_7:
    GPU::detail::ReadDataFromFileCache::decrementRefCount(*(this + 25), this + 152);
  }

LABEL_8:
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

void GPU::ReturnOpHandler::~ReturnOpHandler(GPU::ReturnOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

unsigned __int8 *mlir::detail::unpackQuantizedData<std::complex<double>>(unsigned __int8 *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      v7 = (a3 + 8);
      do
      {
        v8 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v9 = (v5 >> 3) + 1;
          if (v9 < a2)
          {
            v8 |= result[v9] << (8 - (v5 & 7));
          }
        }

        *(v7 - 1) = (v8 & ~(-1 << a5));
        *v7 = 0.0;
        v7 += 2;
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v10 = 0;
    v11 = ~(-1 << a5);
    v12 = 8 / a5;
    do
    {
      v13 = a4 - v10 * v12;
      if (v13 >= v12)
      {
        v13 = 8 / a5;
      }

      if (v13)
      {
        v14 = *result;
        v15 = a3 + 16 * v10 * v12;
        *v15 = (v11 & v14);
        *(v15 + 8) = 0;
        if (v13 != 1)
        {
          *(v15 + 16) = ((v14 >> a5) & v11);
          *(v15 + 24) = 0;
          if (v13 >= 3)
          {
            *(v15 + 32) = ((v14 >> (2 * a5)) & v11);
            *(v15 + 40) = 0;
            if (v13 != 3)
            {
              *(v15 + 48) = ((v14 >> (3 * a5)) & v11);
              *(v15 + 56) = 0;
              if (v13 >= 5)
              {
                *(v15 + 64) = ((v14 >> (4 * a5)) & v11);
                *(v15 + 72) = 0;
                if (v13 != 5)
                {
                  *(v15 + 80) = ((v14 >> (5 * a5)) & v11);
                  *(v15 + 88) = 0;
                  if (v13 >= 7)
                  {
                    *(v15 + 96) = ((v14 >> (6 * a5)) & v11);
                    *(v15 + 104) = 0;
                    if (v13 != 7)
                    {
                      *(v15 + 112) = ((v14 >> (7 * a5)) & v11);
                      *(v15 + 120) = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v10;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CPURuntime::initializeOps(CPURuntime *this, uint64_t a2)
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
      mlir::detail::walk<mlir::ForwardIterator>(v7, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN10CPURuntime13initializeOpsEvE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v9, 1);
      result = v6;
    }

    while (v6 != v5);
  }

  return result;
}

void CPURuntime::initOp(CPURuntime *this, mlir::Operation *a2)
{
  v10 = *(*(a2 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  v4 = strlen(AttrData);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (v4)
  {
    memmove(&__dst, AttrData, v4);
  }

  *(&__dst + v5) = 0;
  v6 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(this + 1, &__dst);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = *(v6 + 10);
  if (v7 == 5)
  {
    operator new();
  }

  if (v7 == 171)
  {
    operator new();
  }

  if (!v7 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v9 < 0)
  {
    operator delete(__dst);
  }
}

void CPURuntime::evaluateOp(CPURuntime *this, mlir::Operation *a2)
{
  v12 = *(*(a2 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v12);
  v5 = strlen(AttrData);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v11 = v5;
  if (v5)
  {
    memmove(&__dst, AttrData, v5);
  }

  *(&__dst + v6) = 0;
  v7 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(this + 1, &__dst);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = *(v7 + 10);
  if (v8 == 5 || v8 == 171)
  {
    v9 = std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(this + 28, a2);
    if (!v9)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    (**v9[3])(v9[3]);
  }

  else if (!v8 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v11 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1E07CB328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MPSGraphTensorData *CPURuntime::allocateTensorDataForValue(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v4 = (*(*a1 + 48))(a1);
  if (!v4)
  {
    v5 = MEMORY[0x1E6974490];
    MPSDataType = getMPSDataType((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8));
    v7 = getMPSShapeFromMLIR(a2);
    v8 = adaptForMPS(v7);
    v9 = [v5 descriptorWithDataType:MPSDataType shape:v8];

    v4 = [MPSGraphTensorData alloc];
    BaseRuntime::setTensorDataToDataMap(a1, a2, v4);
    DefiningOp = mlir::Value::getDefiningOp(&v13);
    v11 = getOpName(DefiningOp);
    [(MPSGraphTensorData *)v4 setLabel:v11];
  }

  return v4;
}

id CPURuntime::allocateTensorDataForTargets(CPURuntime *this, mlir::Operation *a2)
{
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v17 = *(a2 + 17);
    if (v17)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(*(a2 + 9) + 32 * v5 + 24);
        v7 = (*(*this + 48))(this, v6, 0);
        if (v7)
        {
          [v4 addObject:v7];
        }

        v18 = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (mlir::TensorType::hasRank(&v18))
        {
          mlir::ArrayAttr::getValue(&v18);
        }

        v18 = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (!mlir::TensorType::hasRank(&v18))
        {
          goto LABEL_15;
        }

        Value = mlir::ArrayAttr::getValue(&v18);
        if (v9)
        {
          break;
        }

LABEL_13:
        MPSDataType = getMPSDataType((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8));
        v12 = [MPSGraphTensorData alloc];
        v13 = *(this + 6);
        v14 = getMPSShapeFromMLIR(v6);
        v15 = [(MPSGraphTensorData *)v12 initWithDevice:v13 rowBytesAlignment:MPSDataType >> 3 shape:v14 dataType:MPSDataType];

        BaseRuntime::setTensorDataToDataMap(this, v6, v15);
        [v4 addObject:v15];

        if (++v5 == v17)
        {
          goto LABEL_17;
        }
      }

      v10 = 8 * v9;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

LABEL_15:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_13;
    }
  }

LABEL_17:

  return v4;
}

void *BaseRuntime::getTensorDataFromDataMap(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v6 = *(mlir::Value::getParentRegion(&v7) + 2);
  v3 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((a1 + 88), &v6);
  if (v3)
  {
    v5 = v7;
    v3 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v3 + 3, &v5);
    if (v3)
    {
      v3 = v3[3];
    }
  }

  return v3;
}

void CPURuntime::~CPURuntime(BaseRuntime *this)
{
  *this = &off_1F5B4DF10;
  v2 = *(this + 30);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        MEMORY[0x1E12E5B90](v4, 0x81C40B8603338);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(this + 28);
  *(this + 28) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  BaseRuntime::~BaseRuntime(this);
}

{
  *this = &off_1F5B4DF10;
  v2 = *(this + 30);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        MEMORY[0x1E12E5B90](v4, 0x81C40B8603338);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(this + 28);
  *(this + 28) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  BaseRuntime::~BaseRuntime(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN10CPURuntime13initializeOpsEvE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t result, uint64_t a2)
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
            mlir::detail::walk<mlir::ForwardIterator>(v9, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<CPURuntime::initializeOps(void)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>, v10, 1);
            result = v8;
          }

          while (v8 != v7);
        }
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>>>::__emplace_unique_key_args<mlir::Operation *,std::pair<mlir::Operation * const,std::unique_ptr<CPU::BaseOpHandler>>>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = 0x9DDFEA08EB382D69 * v4;
  v6 = result[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        if (v10[2] == a2)
        {
          return result;
        }
      }

      else if ((v11 & (*&v6 - 1)) != v8)
      {
        goto LABEL_22;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v12 >= *&v6)
    {
      v12 %= *&v6;
    }

    if (v12 != v8)
    {
      goto LABEL_22;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1E07CBF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v5 = v2;
        MEMORY[0x1E12E5B90](v4, 0x81C40B8603338);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

GPU::PadOpHandler *GPU::PadOpHandler::PadOpHandler(GPU::PadOpHandler *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v7 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v7 = &unk_1F5B4DF80;
  *(v7 + 15) = 0;
  *(v7 + 16) = 0;
  v8 = objc_alloc(MEMORY[0x1E6974740]);
  v9 = [a2[6] metalDevice];
  v10 = [v8 initWithDevice:v9];
  v11 = *(this + 16);
  *(this + 16) = v10;

  if (*(this + 40) == 1)
  {
    v19 = a3;
    if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v19))
    {
      goto LABEL_3;
    }

    v20 = *(*(v19 + 9) + 88);
    DefiningOp = mlir::Value::getDefiningOp(&v20);
    if (DefiningOp)
    {
      {
        v17 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
        mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v17, v18);
      }

      if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
LABEL_3:
        v20 = *(*(a3 + 9) + 56);
        v12 = mlir::Value::getDefiningOp(&v20);
        if (v12)
        {
          {
            v15 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
            mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v15, v16);
          }

          if ((*(**(v12 + 48) + 32))(*(v12 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
          {
            GPU::PadOpHandler::_createKernel(this, 0);
          }
        }
      }
    }
  }

  return this;
}

void sub_1E07CC19C(_Unwind_Exception *a1)
{

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::PadOpHandler::_createKernel(GPU::PadOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v76 = *(this + 3);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v76);
  if (StorageType > 1)
  {
    if (StorageType == 2)
    {
      v5 = 0;
      v6 = 1;
      v7 = 3;
      goto LABEL_13;
    }

    if (StorageType == 3)
    {
      v5 = 0;
      v6 = 1;
      v7 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    if (!StorageType)
    {
      v6 = 0;
      v5 = 1;
      v7 = 4;
      goto LABEL_13;
    }

    if (StorageType == 1)
    {
      v5 = 0;
      v6 = 1;
      v7 = 2;
      goto LABEL_13;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v5 = 0;
  v7 = 0;
  v6 = 1;
LABEL_13:
  v8 = *(this + 2);
  v9 = v76;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  StaticType = GPURegionRuntime::getStaticType(v8, *(*(v76 + 72) + 56));
  v11 = StaticType;
  if (StaticType)
  {
    StaticType = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  v77[0] = v11;
  v77[1] = StaticType;
  v12 = *mlir::CallableOpInterface::getArgAttrsAttr(v77);
  GPURegionRuntime::waitAndReadIntTensorData(v8, a2, *(*(v9 + 72) + 56), __p);
  v13 = __p[0];
  if (v12 >= 1)
  {
    if (v12 == 1)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v14 = 0;
      if (v12)
      {
        v25 = (v12 - 1) >> 32;
        if (!v25)
        {
          v26 = 0;
          v14 = v12 & 0x1FFFFFFFELL;
          v15 = v12 & 0xFFFFFFFE;
          v27 = &v60 + v12 - 1;
          do
          {
            v28 = &v13[8 * (v25 & 0xFFFFFFFC)];
            v29 = *v28;
            v30 = *(v28 + 2);
            *v27 = v29;
            v27 -= 2;
            *(&v60 + 2 * v12 + 2 * (v26 ^ 0xFFFFFFFFFFFFFFELL)) = v30;
            v26 += 2;
            v25 += 4;
          }

          while (v14 != v26);
          if (v12 == v14)
          {
LABEL_20:
            if (v12 == 1)
            {
              v18 = 0;
              v19 = 0;
            }

            else
            {
              v19 = 0;
              v18 = 0;
              if (v12)
              {
                v31 = (v12 - 1) >> 32;
                if (!v31)
                {
                  v32 = 0;
                  v18 = v12 & 0x7FFFFFFFFFFFFFFELL;
                  v19 = v12 & 0xFFFFFFFE;
                  v33 = &v60 + 2 * v12 - 1;
                  do
                  {
                    v34 = &v13[8 * (v31 & 0xFFFFFFFC)];
                    v35 = *(v34 + 1);
                    v36 = *(v34 + 3);
                    *v33 = v35;
                    v33 -= 4;
                    *(&v60 + 2 * v12 + 2 * (v32 ^ 0xFFFFFFFFFFFFFFELL) + 1) = v36;
                    v32 += 2;
                    v31 += 4;
                  }

                  while (v18 != v32);
                  if (v12 == v18)
                  {
LABEL_41:
                    __p[1] = v13;
                    operator delete(v13);
                    v22 = 0.0;
                    if (!v5)
                    {
                      goto LABEL_42;
                    }

                    goto LABEL_27;
                  }
                }
              }
            }

            v20 = v19 + 1;
            v21 = (2 * v19) | 1;
            do
            {
              *(&v60 + 2 * v12 + 2 * ~v18 + 1) = *&v13[8 * v21];
              v18 = v20++;
              v21 += 2;
            }

            while (v12 > v18);
            goto LABEL_41;
          }
        }
      }
    }

    v16 = v15 + 1;
    v17 = 2 * v15;
    do
    {
      *(&v60 + 2 * v12 + 2 * ~v14) = *&v13[8 * v17];
      v14 = v16++;
      v17 += 2;
    }

    while (v12 > v14);
    goto LABEL_20;
  }

  if (__p[0])
  {
    goto LABEL_41;
  }

  v22 = 0.0;
  if (!v5)
  {
LABEL_42:
    v23 = 0;
    goto LABEL_47;
  }

LABEL_27:
  __p[0] = mlir::getElementTypeOrSelf((*(*(*(v76 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!mlir::Type::isIntOrIndex(__p))
  {
    GPURegionRuntime::waitAndReadFPTensorData(*(this + 2), a2, *(*(v76 + 72) + 88), __p);
    LODWORD(v37) = *__p[0];
    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
    v24 = __p[0];
    if ((__p[1] - __p[0]) == 8)
    {
      v22 = *(__p[0] + 1);
    }

    else if (!__p[0])
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, *(*(v76 + 72) + 88), __p);
  v23 = [MEMORY[0x1E696AD98] numberWithLongLong:*__p[0]];
  v24 = __p[0];
  if (__p[0])
  {
LABEL_46:
    __p[1] = v24;
    operator delete(v24);
  }

LABEL_47:
  if (v23)
  {
    v38 = 1;
  }

  else
  {
    v38 = v6;
  }

  if (v38)
  {
    v39 = v7;
  }

  else
  {
    v39 = 0;
  }

  v40 = objc_alloc(MEMORY[0x1E69747D8]);
  v41 = [*(*(this + 2) + 48) metalDevice];
  v56 = v72;
  v57 = v73;
  v58 = v74;
  v59 = v75;
  v52 = v68;
  v53 = v69;
  v54 = v70;
  v55 = v71;
  v48 = v64;
  v49 = v65;
  v50 = v66;
  v51 = v67;
  *__p = v60;
  v45 = v61;
  v46 = v62;
  v47 = v63;
  v42 = [v40 initWithDevice:v41 edgeMode:v39 constantValue:v23 paddingSize:__p];
  v43 = *(this + 1);
  *(this + 1) = v42;

  [*(this + 1) setConstantValueImagPart:v22];
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
}

void sub_1E07CC690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void GPU::PadOpHandler::encodeNDArrayOp(GPU::PadOpHandler *this, void **a2, NSArray *a3)
{
  v193[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v125 = *(this + 3);
  v126 = v5;
  v136 = this;
  v6 = *(this + 40);
  v140 = a2;
  if (v6 != 1)
  {
    goto LABEL_8;
  }

  v159.i64[0] = *(*(v125 + 72) + 88);
  DefiningOp = mlir::Value::getDefiningOp(&v159);
  if (!DefiningOp)
  {
    goto LABEL_8;
  }

  {
    v113 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v113, v114);
    a2 = v140;
  }

  if (!(*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    goto LABEL_8;
  }

  v159.i64[0] = *(*(v125 + 72) + 56);
  v8 = mlir::Value::getDefiningOp(&v159);
  if (!v8)
  {
    goto LABEL_8;
  }

  {
    v115 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v115, v116);
    a2 = v140;
  }

  if (((*(**(v8 + 48) + 32))(*(v8 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
  {
LABEL_8:
    GPU::PadOpHandler::_createKernel(v136, a2);
  }

  v9 = *(*(v125 + 72) + 24);
  v124 = [(NSArray *)v126 objectAtIndexedSubscript:0];
  v127 = [v124 mpsndarray];
  v10 = (*(*v136[2] + 48))(v136[2], v9, 0);
  v128 = [v10 mpsndarray];

  if (v128)
  {
    v11 = v127 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v130 = v136[1];
  v138 = [v128 descriptor];
  v12 = [v138 numberOfDimensions];
  v193[0] = 0;
  v193[1] = 0;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v13 = v130;
  if (v130)
  {
    v13 = [v130 paddingSize];
  }

  v122 = &v117;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v117 - v17;
  if (!v12)
  {
    goto LABEL_124;
  }

  v141 = 0;
  v19 = 0;
  v123 = &v190 + 8;
  v120 = &v191 + 8;
  v121 = &v191;
  v20 = &v159.i64[1];
  do
  {
    [v138 sliceRangeForDimension:v19];
    v16[v19] = v21;
    *&v18[8 * v19] = v21;
    v22 = *(v20 - 1);
    v23 = *v20;
    if (*(v20 - 1) != 0)
    {
      *(v193 + v19) = 1;
      ++v141;
      *&v18[8 * v19] = v22 + v21 + v23;
    }

    ++v19;
    v20 += 2;
  }

  while (v12 != v19);
  if (v12 < 5)
  {
LABEL_124:
    if ([v130 edgeMode] != 4 || (objc_msgSend(v130, "constantValue"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "doubleValue"), v26 = v25 == 0.0, v24, v27 = v140, v26))
    {
      v28 = [v130 edgeMode];
      v29 = v136[15];
      v30 = v128;
      v31 = v29;
      v32 = [v30 descriptor];
      v33 = v32;
      if (v32)
      {
        [v32 getShapeVector];
      }

      else
      {
        v175 = 0;
      }

      v143 = 0uLL;
      v144.i64[0] = 0;
      v84 = v175[1];
      if (v84 != *v175)
      {
        if (((v84 - *v175) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      LODWORD(v141) = 1;
      v85 = [v30 descriptor];
      v86 = [v85 dataType];
      if (v86 == -2147483640)
      {
        v87 = 536870920;
      }

      else
      {
        v87 = v86;
      }

      v88.i64[0] = __PAIR64__(v160, v159.u32[0]);
      v88.i64[1] = __PAIR64__(v162, v161);
      v142 = v88;
      if (v31)
      {
        v89.i64[0] = __PAIR64__(DWORD2(v160), v159.u32[2]);
        v89.i64[1] = __PAIR64__(DWORD2(v162), DWORD2(v161));
        v139 = v89;
        v90 = [v31 finalOp];
        v91 = **(v90 + 24);
        if (*(*(v90 + 24) + 8) == v91)
        {
          std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
        }

        v92 = *v91;
        v94 = *(*(*v91 + 32) + 8);
        v93 = *v94;
        if (v94[1] == *v94)
        {
          std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
        }

        v95 = *v93;
        v96 = *(*v93 + 32);
        v97 = **(v96 + 8);
        if (*(*(v96 + 8) + 8) == v97)
        {
          std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
        }

        v98 = *(v96 + 96);
        if (v98[9].i64[0] == v28 && (vminvq_u32(vceqq_s32(v98[8], v139)) & 0x80000000) != 0 && (vminvq_u32(vceqq_s32(v98[7], v142)) & 0x80000000) != 0 && v87 == *(v92 + 8))
        {
          v142.i64[0] = *v97;
          v99 = *(v142.i64[0] + 16);
          if (v99)
          {
            v100 = *v99;
            if (*v99)
            {
              *(v99 + 8) = v100;
              operator delete(v100);
            }

            MEMORY[0x1E12E5B90](v99, 0x10C402FEFCB83);
          }

          v101 = *(v95 + 16);
          if (v101)
          {
            v102 = *v101;
            if (*v101)
            {
              *(v101 + 8) = v102;
              operator delete(v102);
            }

            MEMORY[0x1E12E5B90](v101, 0x10C402FEFCB83);
          }

          v103 = *(v92 + 16);
          if (v103)
          {
            v104 = *v103;
            if (*v103)
            {
              *(v103 + 8) = v104;
              operator delete(v104);
            }

            MEMORY[0x1E12E5B90](v103, 0x10C402FEFCB83);
          }

          *(v92 + 8) = v87;
          *(v95 + 8) = v87;
          *(v142.i64[0] + 8) = v87;
          operator new();
        }
      }

      operator new();
    }

    v105 = GPU::EncodeDescriptor::getcomputeEncoder(v140);
    v106 = v27[1];
    v192 = v128;
    v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v192 count:1];
    [v130 encodeToMPSCommandEncoder:v105 commandBuffer:v106 sourceArrays:v107 destinationArray:v127];

    v129 = 0;
    goto LABEL_111;
  }

  v34 = v128;
  if (v141)
  {
    v135 = v34;
    v129 = 0;
    v118 = v16 + 2;
    v119 = v12 - 1;
    v142.i64[0] = (v18 - 8);
    while (1)
    {
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v35 = *v16;
      if (v193[0])
      {
        *&v190 = *v16;
        v133 = v159;
        *v16 = vaddvq_s64(v159) + v35;
        LOBYTE(v193[0]) = 0;
        --v141;
        v36 = 1;
      }

      else
      {
        v36 = 1;
        while ((*(v193 + v36) & 1) == 0)
        {
          v35 *= v16[v36++];
          if (v12 == v36)
          {
            v36 = v12;
            break;
          }
        }

        *&v190 = v35;
        v133 = 0u;
        if (v36 >= v12)
        {
          v134 = 0u;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = &v190;
          v131 = 0u;
          v132 = 0u;
          v41 = 1;
          goto LABEL_65;
        }
      }

      if (*(v193 + v36))
      {
        v134 = 0u;
        *(&v190 + 1) = v16[v36];
        v132 = *(&v159 + v36);
        v16[v36] = vaddvq_s64(v132) + *(&v190 + 1);
        *(v193 + v36) = 0;
        v42 = v36 + 1;
        --v141;
        if (v36 + 1 >= v12)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v44 = v16[v36];
        v42 = v36 + 1;
        if (v36 + 1 < v12)
        {
          while ((*(v193 + v42) & 1) == 0)
          {
            v44 *= v16[v42++];
            if (v12 == v42)
            {
              v134 = 0u;
              *(&v190 + 1) = v44;
              v132 = 0u;
              goto LABEL_45;
            }
          }
        }

        v134 = 0u;
        *(&v190 + 1) = v44;
        v132 = 0u;
        if (v42 >= v12)
        {
LABEL_45:
          v38 = 0;
          v37 = 1;
          v131 = 0u;
          v41 = 2;
          v40 = v123;
          v39 = 1;
          goto LABEL_65;
        }
      }

      if (*(v193 + v42))
      {
        *&v191 = v16[v42];
        v131 = *(&v159 + v42);
        v16[v42] = vaddvq_s64(v131) + v191;
        *(v193 + v42) = 0;
        v43 = v42 + 1;
        --v141;
        if (v42 + 1 < v12)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v45 = v16[v42];
        v43 = v42 + 1;
        if (v42 + 1 < v12)
        {
          while ((*(v193 + v43) & 1) == 0)
          {
            v45 *= v16[v43++];
            if (v12 == v43)
            {
              v43 = v12;
              break;
            }
          }
        }

        *&v191 = v45;
        v131 = 0u;
        if (v43 < v12)
        {
LABEL_51:
          if (*(v193 + v43) == 1 && v43 == v119)
          {
            v37 = 0;
            v38 = 0;
            v56 = v16[v43];
            v134 = *(&v159 + v43);
            v16[v43] = vaddvq_s64(v134) + v56;
            *(v193 + v43) = 0;
            *(&v191 + 1) = v56;
            --v141;
          }

          else
          {
            v47 = v16[v43];
            v48 = v43 + 1;
            if (v43 + 1 < v12)
            {
              v49 = v12 + ~v43;
              if (v49 < 2)
              {
                goto LABEL_60;
              }

              v48 += v49 & 0xFFFFFFFFFFFFFFFELL;
              v50 = &v118[v43];
              v51 = v49 & 0xFFFFFFFFFFFFFFFELL;
              v52 = 1;
              do
              {
                v47 *= *(v50 - 1);
                v52 *= *v50;
                v50 += 2;
                v51 -= 2;
              }

              while (v51);
              v47 *= v52;
              if (v49 != (v49 & 0xFFFFFFFFFFFFFFFELL))
              {
LABEL_60:
                v53 = v12 - v48;
                v54 = &v16[v48];
                do
                {
                  v55 = *v54++;
                  v47 *= v55;
                  --v53;
                }

                while (v53);
              }
            }

            v37 = 0;
            v38 = 0;
            *(&v191 + 1) = v47;
          }

          v41 = 4;
          v40 = v120;
          v39 = 3;
          goto LABEL_65;
        }
      }

      v37 = 0;
      v38 = 1;
      v41 = 3;
      v40 = v121;
      v39 = 2;
LABEL_65:
      v137 = *(v136[2] + 52);
      LOBYTE(v175) = 0;
      v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v41];
      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*v40];
      [v57 addObject:v58];

      if (v36 < v12)
      {
        v59 = &v190 + 8 * v39;
        v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 1)];
        [v57 addObject:v60];

        if ((v37 & 1) == 0)
        {
          v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 2)];
          [v57 addObject:v61];

          if ((v38 & 1) == 0)
          {
            v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 3)];
            [v57 addObject:v62];
          }
        }
      }

      v63 = v140;
      v64 = GPU::EncodeDescriptor::getcomputeEncoder(v140);
      v139.i64[0] = GPU::doReshapeWithFallBack(v135, v57, v137, v64, v63[1], &v175, 1);

      v65 = objc_alloc(MEMORY[0x1E69747D8]);
      v66 = [*(v136[2] + 6) metalDevice];
      v67 = v130;
      v68 = [v130 edgeMode];
      v69 = [v67 constantValue];
      v143 = v133;
      v144 = v132;
      v145 = v131;
      v146 = v134;
      v155 = v186;
      v156 = v187;
      v157 = v188;
      v158 = v189;
      v151 = v182;
      v152 = v183;
      v153 = v184;
      v154 = v185;
      v147 = v178;
      v148 = v179;
      v149 = v180;
      v150 = v181;
      v70 = [v65 initWithDevice:v66 edgeMode:v68 constantValue:v69 paddingSize:&v143];

      v177 = v139.i64[0];
      v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1];
      v72 = [v70 destinationArrayDescriptorForSourceArrays:v71 sourceState:0];

      v73 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v140[1] descriptor:v72];
      [v73 setReadCount:2];
      v74 = GPU::EncodeDescriptor::getcomputeEncoder(v140);
      v75 = v140[1];
      v176 = v139.i64[0];
      v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v176 count:1];
      [v70 encodeToMPSCommandEncoder:v74 commandBuffer:v75 sourceArrays:v76 destinationArray:v73];

      if (v141)
      {
        v77 = v73;
        v78 = v135;
        v135 = v77;
      }

      else
      {
        v79 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];

        v57 = v79;
        v80 = v12;
        do
        {
          v81 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v142.i64[0] + 8 * v80)];
          [v57 addObject:v81];

          --v80;
        }

        while (v80);
        v78 = GPU::EncodeDescriptor::getcomputeEncoder(v140);
        v82 = GPU::doReshapeWithFallBack(v73, v57, v137, v78, v140[1], &v175, 1);

        v129 = v82;
      }

      v83 = v141 == 0;

      if (v83)
      {

        goto LABEL_107;
      }
    }
  }

  v129 = v34;
LABEL_107:
  v108 = v136[2];
  v109 = v140;
  v105 = GPU::EncodeDescriptor::getcomputeEncoder(v140);
  v110 = v109[1];
  if (*(v125 + 36))
  {
    v111 = v125 - 16;
  }

  else
  {
    v111 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v111, 0);
  GPURegionRuntime::copyNDArrayToTarget(v108, v105, v110, v136 + 16, v129, v124, NextResultAtOffset, 0);
LABEL_111:
}

void sub_1E07CD948(uint64_t a1)
{
  *(v1 + 240) = a1;

  _Unwind_Resume(*(v1 + 240));
}

unint64_t GPU::PadOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

uint64_t GPU::PadGradientOpHandler::_createKernel(GPU::PadGradientOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v69 = *(this + 3);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v69);
  if (StorageType >= 4)
  {
    v5 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v5 = 0;
    }
  }

  else
  {
    v5 = qword_1E09A95E8[StorageType];
  }

  v6 = *(this + 2);
  v7 = v69;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  StaticType = GPURegionRuntime::getStaticType(v6, *(*(v69 + 72) + 88));
  v9 = StaticType;
  if (StaticType)
  {
    StaticType = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  v70[0] = v9;
  v70[1] = StaticType;
  v10 = *mlir::CallableOpInterface::getArgAttrsAttr(v70);
  GPURegionRuntime::waitAndReadIntTensorData(v6, a2, *(*(v7 + 72) + 88), __p);
  v11 = __p[0];
  if (v10 < 1)
  {
    if (!__p[0])
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v10 == 1)
  {
    v12 = 0;
    v13 = 0;
LABEL_10:
    v14 = v13 + 1;
    v15 = 2 * v13;
    do
    {
      *(&v53 + 2 * v10 + 2 * ~v12) = v11[v15];
      v12 = v14++;
      v15 += 2;
    }

    while (v10 > v12);
    goto LABEL_12;
  }

  v13 = 0;
  v12 = 0;
  if (!v10)
  {
    goto LABEL_10;
  }

  v20 = (v10 - 1) >> 32;
  if (v20)
  {
    goto LABEL_10;
  }

  v21 = 0;
  v12 = v10 & 0x1FFFFFFFELL;
  v13 = v10 & 0xFFFFFFFE;
  v22 = &v53 + v10 - 1;
  do
  {
    v23 = &v11[v20 & 0xFFFFFFFC];
    v24 = *v23;
    v25 = v23[2];
    *v22 = v24;
    v22 -= 2;
    *(&v53 + 2 * v10 + 2 * (v21 ^ 0xFFFFFFFFFFFFFFELL)) = v25;
    v21 += 2;
    v20 += 4;
  }

  while (v12 != v21);
  if (v10 != v12)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v10 == 1)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    if (v10)
    {
      v26 = (v10 - 1) >> 32;
      if (!v26)
      {
        v27 = 0;
        v16 = v10 & 0x7FFFFFFFFFFFFFFELL;
        v17 = v10 & 0xFFFFFFFE;
        v28 = &v53 + 2 * v10 - 1;
        do
        {
          v29 = &v11[v26 & 0xFFFFFFFC];
          v30 = *(v29 + 1);
          v31 = *(v29 + 3);
          *v28 = v30;
          v28 -= 4;
          *(&v53 + 2 * v10 + 2 * (v27 ^ 0xFFFFFFFFFFFFFFELL) + 1) = v31;
          v27 += 2;
          v26 += 4;
        }

        while (v16 != v27);
        if (v10 == v16)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v18 = v17 + 1;
  v19 = (2 * v17) | 1;
  do
  {
    *(&v53 + 2 * v10 + 2 * ~v16 + 1) = v11[v19];
    v16 = v18++;
    v19 += 2;
  }

  while (v10 > v16);
LABEL_30:
  __p[1] = v11;
  operator delete(v11);
LABEL_31:
  v32 = objc_alloc(MEMORY[0x1E69747D0]);
  v33 = [*(*(this + 2) + 48) metalDevice];
  v49 = v65;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  v45 = v61;
  v46 = v62;
  v47 = v63;
  v48 = v64;
  v41 = v57;
  v42 = v58;
  v43 = v59;
  v44 = v60;
  *__p = v53;
  v38 = v54;
  v39 = v55;
  v40 = v56;
  v34 = [v32 initWithDevice:v33 edgeMode:v5 paddingSize:__p];
  v35 = *(this + 1);
  *(this + 1) = v34;

  return [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
}

void GPU::PadGradientOpHandler::encodeNDArrayOp(GPU::PadGradientOpHandler *this, void **a2, NSArray *a3)
{
  v134[2] = *MEMORY[0x1E69E9840];
  v96 = a3;
  if ((*(this + 40) & 1) == 0)
  {
    GPU::PadGradientOpHandler::_createKernel(this, a2);
  }

  v108 = this;
  v5 = *(this + 3);
  v6 = *(v5 + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  LODWORD(v6) = *(v5 + 36);
  v9 = v5 - 16;
  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  v94 = [(NSArray *)v96 objectAtIndexedSubscript:0];
  v97 = [v94 mpsndarray];
  v12 = (*(**(v108 + 2) + 48))(*(v108 + 2), v7, 0);
  v98 = [v12 mpsndarray];

  v13 = (*(**(v108 + 2) + 48))(*(v108 + 2), v8, 0);
  v14 = [v13 mpsndarray];

  v95 = v14;
  if (v98)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || v97 == 0;
  if (v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v101 = *(v108 + 1);
  v17 = [v98 descriptor];
  v100 = v17;
  v18 = [v17 numberOfDimensions];
  v89 = NextResultAtOffset;
  v134[0] = 0;
  v134[1] = 0;
  memset(v115, 0, sizeof(v115));
  v19 = v101;
  if (v101)
  {
    v19 = [v101 paddingSize];
  }

  v92 = &v86;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v86 - v23;
  if (!v18)
  {
    goto LABEL_21;
  }

  v111 = 0;
  v25 = 0;
  v93 = &v131 + 8;
  v90 = &v132 + 8;
  v91 = &v132;
  v26 = &v115[0].i64[1];
  do
  {
    [v17 sliceRangeForDimension:v25];
    v22[v25] = v27;
    *&v24[8 * v25] = v27;
    v28 = *(v26 - 1);
    v29 = *v26;
    if (*(v26 - 1) != 0)
    {
      *(v134 + v25) = 1;
      ++v111;
      *&v24[8 * v25] = v27 - (v28 + v29);
    }

    ++v25;
    v26 += 2;
  }

  while (v18 != v25);
  if (v18 < 5)
  {
LABEL_21:
    v30 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v31 = a2[1];
    v133 = v95;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v133 count:1];
    [v101 encodeToMPSCommandEncoder:v30 commandBuffer:v31 sourceArrays:v32 sourceGradient:v98 gradientState:0 destinationArray:v97 kernelDAGObject:0];

    v99 = 0;
    goto LABEL_75;
  }

  v33 = v98;
  if (v111)
  {
    v106 = v33;
    v107 = a2;
    v99 = 0;
    v87 = v22 + 2;
    v88 = v18 - 1;
    v112 = v24 - 8;
    while (1)
    {
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v34 = *v22;
      if (v134[0])
      {
        *&v131 = *v22;
        v104 = v115[0];
        *&v129 = v34 - vaddvq_s64(v115[0]);
        *v22 = v129;
        LOBYTE(v134[0]) = 0;
        --v111;
        v35 = 1;
      }

      else
      {
        v35 = 1;
        while ((*(v134 + v35) & 1) == 0)
        {
          v34 *= v22[v35++];
          if (v18 == v35)
          {
            v35 = v18;
            break;
          }
        }

        *&v131 = v34;
        *&v129 = v34;
        v104 = 0u;
        if (v35 >= v18)
        {
          v105 = 0u;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = &v131;
          v102 = 0u;
          v103 = 0u;
          v40 = 1;
          goto LABEL_62;
        }
      }

      if (*(v134 + v35))
      {
        v105 = 0u;
        *(&v131 + 1) = v22[v35];
        v103 = v115[v35];
        *(&v129 + 1) = *(&v131 + 1) - vaddvq_s64(v103);
        v22[v35] = *(&v129 + 1);
        *(v134 + v35) = 0;
        v41 = v35 + 1;
        --v111;
        if (v35 + 1 >= v18)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v42 = v22[v35];
        v41 = v35 + 1;
        if (v35 + 1 < v18)
        {
          while ((*(v134 + v41) & 1) == 0)
          {
            v42 *= v22[v41++];
            if (v18 == v41)
            {
              v105 = 0u;
              *(&v131 + 1) = v42;
              *(&v129 + 1) = v42;
              v103 = 0u;
              goto LABEL_34;
            }
          }
        }

        v105 = 0u;
        *(&v131 + 1) = v42;
        *(&v129 + 1) = v42;
        v103 = 0u;
        if (v41 >= v18)
        {
LABEL_34:
          v37 = 0;
          v36 = 1;
          v102 = 0u;
          v40 = 2;
          v39 = v93;
          v38 = 1;
          goto LABEL_62;
        }
      }

      if (*(v134 + v41))
      {
        *&v132 = v22[v41];
        v102 = v115[v41];
        *&v130 = v132 - vaddvq_s64(v102);
        v22[v41] = v130;
        *(v134 + v41) = 0;
        v43 = v41 + 1;
        --v111;
        if (v41 + 1 < v18)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v44 = v22[v41];
        v43 = v41 + 1;
        if (v41 + 1 < v18)
        {
          while ((*(v134 + v43) & 1) == 0)
          {
            v44 *= v22[v43++];
            if (v18 == v43)
            {
              v43 = v18;
              break;
            }
          }
        }

        *&v132 = v44;
        *&v130 = v44;
        v102 = 0u;
        if (v43 < v18)
        {
LABEL_48:
          if (*(v134 + v43) == 1 && v43 == v88)
          {
            v36 = 0;
            v37 = 0;
            v55 = v22[v43];
            v105 = v115[v43];
            v56 = v55 - vaddvq_s64(v105);
            v22[v43] = v56;
            *(v134 + v43) = 0;
            *(&v132 + 1) = v55;
            *(&v130 + 1) = v56;
            --v111;
          }

          else
          {
            v46 = v22[v43];
            v47 = v43 + 1;
            if (v43 + 1 < v18)
            {
              v48 = v18 + ~v43;
              if (v48 < 2)
              {
                goto LABEL_57;
              }

              v47 += v48 & 0xFFFFFFFFFFFFFFFELL;
              v49 = &v87[v43];
              v50 = v48 & 0xFFFFFFFFFFFFFFFELL;
              v51 = 1;
              do
              {
                v46 *= *(v49 - 1);
                v51 *= *v49;
                v49 += 2;
                v50 -= 2;
              }

              while (v50);
              v46 *= v51;
              if (v48 != (v48 & 0xFFFFFFFFFFFFFFFELL))
              {
LABEL_57:
                v52 = v18 - v47;
                v53 = &v22[v47];
                do
                {
                  v54 = *v53++;
                  v46 *= v54;
                  --v52;
                }

                while (v52);
              }
            }

            v36 = 0;
            v37 = 0;
            *(&v132 + 1) = v46;
            *(&v130 + 1) = v46;
          }

          v40 = 4;
          v39 = v90;
          v38 = 3;
          goto LABEL_62;
        }
      }

      v36 = 0;
      v37 = 1;
      v40 = 3;
      v39 = v91;
      v38 = 2;
LABEL_62:
      v110 = *(*(v108 + 2) + 416);
      v114 = 0;
      v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v40];
      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*v39];
      [v57 addObject:v58];

      if (v35 < v18)
      {
        v59 = &v131 + 8 * v38;
        v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 1)];
        [v57 addObject:v60];

        if ((v36 & 1) == 0)
        {
          v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 2)];
          [v57 addObject:v61];

          if ((v37 & 1) == 0)
          {
            v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 3)];
            [v57 addObject:v62];
          }
        }
      }

      v63 = v107;
      v64 = GPU::EncodeDescriptor::getcomputeEncoder(v107);
      v109 = GPU::doReshapeWithFallBack(v106, v57, v110, v64, *(v63 + 1), &v114, 1);

      v65 = objc_alloc(MEMORY[0x1E69747D0]);
      v66 = [*(*(v108 + 2) + 48) metalDevice];
      v67 = [v101 edgeMode];
      v113[0] = v104;
      v113[1] = v103;
      v113[2] = v102;
      v113[3] = v105;
      v113[12] = v125;
      v113[13] = v126;
      v113[14] = v127;
      v113[15] = v128;
      v113[8] = v121;
      v113[9] = v122;
      v113[10] = v123;
      v113[11] = v124;
      v113[4] = v117;
      v113[5] = v118;
      v113[6] = v119;
      v113[7] = v120;
      v68 = [v65 initWithDevice:v66 edgeMode:v67 paddingSize:v113];

      v69 = [MEMORY[0x1E6974490] descriptorWithDataType:objc_msgSend(v100 dimensionCount:"dataType") dimensionSizes:{v40, &v129}];
      v70 = v107;
      v71 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v107[1] descriptor:v69];
      [v71 setReadCount:2];
      v72 = GPU::EncodeDescriptor::getcomputeEncoder(v70);
      v73 = *(v70 + 1);
      v116 = v71;
      v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
      [v68 encodeToMPSCommandEncoder:v72 commandBuffer:v73 sourceArrays:v74 sourceGradient:v109 gradientState:0 destinationArray:v71 kernelDAGObject:0];

      if (v111)
      {
        v75 = v71;
        v76 = v106;
        v106 = v75;
      }

      else
      {
        v77 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18];

        v57 = v77;
        v78 = v18;
        do
        {
          v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*&v112[8 * v78]];
          [v57 addObject:v79];

          --v78;
        }

        while (v78);
        v80 = v107;
        v76 = GPU::EncodeDescriptor::getcomputeEncoder(v107);
        v81 = GPU::doReshapeWithFallBack(v71, v57, v110, v76, *(v80 + 1), &v114, 1);

        v99 = v81;
      }

      v82 = v111 == 0;

      if (v82)
      {

        a2 = v107;
        goto LABEL_74;
      }
    }
  }

  v99 = v33;
LABEL_74:
  v83 = v108;
  v84 = *(v108 + 2);
  v85 = v99;
  v30 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v84, v30, a2[1], v83 + 15, v85, v94, v89, 0);
LABEL_75:
}

unint64_t GPU::PadGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

void GPU::PadOpHandler::~PadOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::PadGradientOpHandler::~PadGradientOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void *std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1E12E5B90](v1, 0x10C402FEFCB83);
    return v2;
  }

  return result;
}

uint64_t GPU::AddOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 56), 0);

  return MPSKernelDAG::additionOp();
}

void GPU::AddOpHandler::~AddOpHandler(GPU::AddOpHandler *this)
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

uint64_t GPU::SubtractOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 56), 0);

  return MPSKernelDAG::subtractionOp();
}

void GPU::SubtractOpHandler::~SubtractOpHandler(GPU::SubtractOpHandler *this)
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

uint64_t GPU::MultiplyOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 56), 0);

  return MPSKernelDAG::multiplicationOp();
}

void GPU::MultiplyOpHandler::~MultiplyOpHandler(GPU::MultiplyOpHandler *this)
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

uint64_t GPU::DivideOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDD80](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::DivideOpHandler::~DivideOpHandler(GPU::DivideOpHandler *this)
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

uint64_t GPU::ModuloOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCE010](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::ModuloOpHandler::~ModuloOpHandler(GPU::ModuloOpHandler *this)
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

uint64_t GPU::PowerOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDFF8](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::PowerOpHandler::~PowerOpHandler(GPU::PowerOpHandler *this)
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

uint64_t GPU::MinimumOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCE040](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::MinimumOpHandler::~MinimumOpHandler(GPU::MinimumOpHandler *this)
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

uint64_t GPU::MaximumOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 56), 0);

  return MPSKernelDAG::maximumOp();
}

void GPU::MaximumOpHandler::~MaximumOpHandler(GPU::MaximumOpHandler *this)
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

uint64_t GPU::EqualToOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 56), 0);

  return MPSKernelDAG::isEqualOp();
}

void GPU::EqualToOpHandler::~EqualToOpHandler(GPU::EqualToOpHandler *this)
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

uint64_t GPU::NotEqualToOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 56), 0);

  return MPSKernelDAG::isNotEqualOp();
}

void GPU::NotEqualToOpHandler::~NotEqualToOpHandler(GPU::NotEqualToOpHandler *this)
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

uint64_t GPU::LessThanOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 56), 0);

  return MPSKernelDAG::lessThanOp();
}

void GPU::LessThanOpHandler::~LessThanOpHandler(GPU::LessThanOpHandler *this)
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

uint64_t GPU::LessThanOrEqualToOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDED0](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::LessThanOrEqualToOpHandler::~LessThanOrEqualToOpHandler(GPU::LessThanOrEqualToOpHandler *this)
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

uint64_t GPU::GreaterThanOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 56), 0);

  return MPSKernelDAG::greaterThanOp();
}

void GPU::GreaterThanOpHandler::~GreaterThanOpHandler(GPU::GreaterThanOpHandler *this)
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

uint64_t GPU::GreaterThanOrEqualToOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDEF8](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::GreaterThanOrEqualToOpHandler::~GreaterThanOrEqualToOpHandler(GPU::GreaterThanOrEqualToOpHandler *this)
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

uint64_t GPU::AndOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDF08](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::AndOpHandler::~AndOpHandler(GPU::AndOpHandler *this)
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

uint64_t GPU::OrOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDF00](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::OrOpHandler::~OrOpHandler(GPU::OrOpHandler *this)
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

uint64_t GPU::NandOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDF88](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::NandOpHandler::~NandOpHandler(GPU::NandOpHandler *this)
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

uint64_t GPU::NorOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDF20](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::NorOpHandler::~NorOpHandler(GPU::NorOpHandler *this)
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

uint64_t GPU::XorOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDF50](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::XorOpHandler::~XorOpHandler(GPU::XorOpHandler *this)
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

uint64_t GPU::XnorOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDFB8](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::XnorOpHandler::~XnorOpHandler(GPU::XnorOpHandler *this)
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

uint64_t GPU::ATan2OpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDFD0](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::ATan2OpHandler::~ATan2OpHandler(GPU::ATan2OpHandler *this)
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

uint64_t GPU::BitwiseAndOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDDF8](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::BitwiseAndOpHandler::~BitwiseAndOpHandler(GPU::BitwiseAndOpHandler *this)
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

uint64_t GPU::BitwiseOrOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDDC0](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::BitwiseOrOpHandler::~BitwiseOrOpHandler(GPU::BitwiseOrOpHandler *this)
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

uint64_t GPU::BitwiseXorOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDE08](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::BitwiseXorOpHandler::~BitwiseXorOpHandler(GPU::BitwiseXorOpHandler *this)
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

uint64_t GPU::BitwiseLeftShiftOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDEE0](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::BitwiseLeftShiftOpHandler::~BitwiseLeftShiftOpHandler(GPU::BitwiseLeftShiftOpHandler *this)
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

uint64_t GPU::BitwiseRightShiftOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDEE8](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::BitwiseRightShiftOpHandler::~BitwiseRightShiftOpHandler(GPU::BitwiseRightShiftOpHandler *this)
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

uint64_t GPU::AbsoluteOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::absoluteOp();
}

void GPU::AbsoluteOpHandler::~AbsoluteOpHandler(GPU::AbsoluteOpHandler *this)
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

uint64_t GPU::AbsoluteSquareOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDDB8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::AbsoluteSquareOpHandler::~AbsoluteSquareOpHandler(GPU::AbsoluteSquareOpHandler *this)
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

uint64_t GPU::ACosOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF58](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ACosOpHandler::~ACosOpHandler(GPU::ACosOpHandler *this)
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

uint64_t GPU::ACoshOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFC0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ACoshOpHandler::~ACoshOpHandler(GPU::ACoshOpHandler *this)
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

uint64_t GPU::ASinOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF60](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ASinOpHandler::~ASinOpHandler(GPU::ASinOpHandler *this)
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

uint64_t GPU::ASinhOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFC8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ASinhOpHandler::~ASinhOpHandler(GPU::ASinhOpHandler *this)
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

uint64_t GPU::ATanOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF68](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ATanOpHandler::~ATanOpHandler(GPU::ATanOpHandler *this)
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

uint64_t GPU::ATanhOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFD8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ATanhOpHandler::~ATanhOpHandler(GPU::ATanhOpHandler *this)
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

uint64_t GPU::BitwiseNotOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDE00](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::BitwiseNotOpHandler::~BitwiseNotOpHandler(GPU::BitwiseNotOpHandler *this)
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

uint64_t GPU::BitwisePopcountOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDEC8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::BitwisePopcountOpHandler::~BitwisePopcountOpHandler(GPU::BitwisePopcountOpHandler *this)
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

uint64_t GPU::ConjugateOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::conjugateOp();
}

void GPU::ConjugateOpHandler::~ConjugateOpHandler(GPU::ConjugateOpHandler *this)
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

uint64_t GPU::CosOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF10](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::CosOpHandler::~CosOpHandler(GPU::CosOpHandler *this)
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

uint64_t GPU::CoshOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF80](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::CoshOpHandler::~CoshOpHandler(GPU::CoshOpHandler *this)
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

uint64_t GPU::CeilOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF78](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::CeilOpHandler::~CeilOpHandler(GPU::CeilOpHandler *this)
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

uint64_t GPU::ErfOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF18](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ErfOpHandler::~ErfOpHandler(GPU::ErfOpHandler *this)
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

uint64_t GPU::ExponentOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::exponentOp();
}

void GPU::ExponentOpHandler::~ExponentOpHandler(GPU::ExponentOpHandler *this)
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

uint64_t GPU::ExponentBase2OpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDE90](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ExponentBase2OpHandler::~ExponentBase2OpHandler(GPU::ExponentBase2OpHandler *this)
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

uint64_t GPU::ExponentBase10OpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDEA0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ExponentBase10OpHandler::~ExponentBase10OpHandler(GPU::ExponentBase10OpHandler *this)
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

uint64_t GPU::FloorOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFE8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::FloorOpHandler::~FloorOpHandler(GPU::FloorOpHandler *this)
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

uint64_t GPU::ImaginaryPartOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDD90](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ImaginaryPartOpHandler::~ImaginaryPartOpHandler(GPU::ImaginaryPartOpHandler *this)
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

uint64_t GPU::IsFiniteOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDD98](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::IsFiniteOpHandler::~IsFiniteOpHandler(GPU::IsFiniteOpHandler *this)
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

uint64_t GPU::IsInfiniteOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDE20](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::IsInfiniteOpHandler::~IsInfiniteOpHandler(GPU::IsInfiniteOpHandler *this)
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

uint64_t GPU::IsNaNOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFF0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::IsNaNOpHandler::~IsNaNOpHandler(GPU::IsNaNOpHandler *this)
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

uint64_t GPU::LogarithmOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDDE0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::LogarithmOpHandler::~LogarithmOpHandler(GPU::LogarithmOpHandler *this)
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

uint64_t GPU::LogarithmBase2OpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDEA8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::LogarithmBase2OpHandler::~LogarithmBase2OpHandler(GPU::LogarithmBase2OpHandler *this)
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

uint64_t GPU::LogarithmBase10OpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDED8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::LogarithmBase10OpHandler::~LogarithmBase10OpHandler(GPU::LogarithmBase10OpHandler *this)
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

uint64_t GPU::NegativeOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::negativeOp();
}

void GPU::NegativeOpHandler::~NegativeOpHandler(GPU::NegativeOpHandler *this)
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

uint64_t GPU::NotOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF28](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::NotOpHandler::~NotOpHandler(GPU::NotOpHandler *this)
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

uint64_t GPU::RealPartOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::realPartOp();
}

void GPU::RealPartOpHandler::~RealPartOpHandler(GPU::RealPartOpHandler *this)
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

uint64_t GPU::ReciprocalOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::reciprocalOp();
}

void GPU::ReciprocalOpHandler::~ReciprocalOpHandler(GPU::ReciprocalOpHandler *this)
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

uint64_t GPU::ReciprocalSquareRootOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDEF0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ReciprocalSquareRootOpHandler::~ReciprocalSquareRootOpHandler(GPU::ReciprocalSquareRootOpHandler *this)
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

uint64_t GPU::RintOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF90](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::RintOpHandler::~RintOpHandler(GPU::RintOpHandler *this)
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

uint64_t GPU::RoundOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCE000](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::RoundOpHandler::~RoundOpHandler(GPU::RoundOpHandler *this)
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

uint64_t GPU::SignOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF98](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::SignOpHandler::~SignOpHandler(GPU::SignOpHandler *this)
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

uint64_t GPU::SignbitOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCE048](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::SignbitOpHandler::~SignbitOpHandler(GPU::SignbitOpHandler *this)
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