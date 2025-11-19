void sub_1E08338C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::GatherOp,mlir::Value &,mlir::Value &,mlir::Value &,unsigned long &,BOOL &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int *a6, unsigned __int8 *a7)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    v24 = 1283;
    v23[2] = "mps.gather";
    v23[3] = 10;
    v22 = 259;
    llvm::operator+(v23, &v21, v25);
    llvm::report_fatal_error(v25, 1);
  }

  mlir::OperationState::OperationState(v26, a2, v15);
  mlir::mps::GatherOp::build(a1, v26, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v18;
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::DequantizeOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
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
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v25 = 14;
    qmemcpy(__dst, "mps.dequantize", sizeof(__dst));
    v16 = v24;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, __dst, v11, &__p);
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
    operator delete(*__dst);
    goto LABEL_16;
  }

  if (v25 < 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E08351C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr &,mlir::IntegerAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "mps.dequantize";
    v25[3] = 14;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  mlir::mps::DequantizeOp::build(a1, v28, *a3, *a4, *a5, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v20;
}

void sub_1E0835A14()
{
  if (v0)
  {
  }

  JUMPOUT(0x1E08359D4);
}

void sub_1E0835A24()
{
  if (v0)
  {
  }

  JUMPOUT(0x1E08359D8);
}

void sub_1E0835A34()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E08359DCLL);
}

void sub_1E0835A44()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E08359E0);
}

void sub_1E0835A54()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E08359E4);
}

void sub_1E0835A64()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E08359ECLL);
}

void sub_1E0835A74()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E08359F0);
}

void sub_1E0835A98()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E08359F8);
}

void sub_1E0835CF8(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1E0835F7C(_Unwind_Exception *a1)
{
  if (v4)
  {

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E0835F64);
}

EmitterObjC::ResizeOpHandler *EmitterObjC::ResizeOpHandler::ResizeOpHandler(EmitterObjC::ResizeOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B51908;
  v87 = a3;
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v87, 0);
  v6 = *(*(v87 + 9) + 32 * ODSOperandIndexAndLength + 24);
  v7 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v87, 1u);
  v8 = *(*(v87 + 9) + 32 * v7 + 24);
  if (*(v87 + 9))
  {
    v9 = v87 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v87);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v87);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v87);
  v14 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v87, 2u);
  if ((*(v87 + 46) & 0x80) != 0)
  {
    v15 = *(v87 + 9);
    v71 = NextResultAtOffset;
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
LABEL_6:
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
    v71 = NextResultAtOffset;
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
      goto LABEL_6;
    }
  }

  v17 = *(v15 + 32 * v16 + 24);
LABEL_9:
  v18 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v87, 3u);
  if ((*(v87 + 46) & 0x80) != 0)
  {
    v19 = *(v87 + 9);
    v20 = v18;
    if (HIDWORD(v18) + v18 == v18)
    {
LABEL_11:
      v21 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    v20 = v18;
    if (HIDWORD(v18) + v18 == v18)
    {
      goto LABEL_11;
    }
  }

  v21 = *(v19 + 32 * v20 + 24);
LABEL_14:
  NearestRoundingMode = mlir::mps::ResizeGradientOp::getNearestRoundingMode(&v87);
  if ((NearestRoundingMode & 0x100000000) != 0)
  {
    v23 = NearestRoundingMode;
  }

  else
  {
    v23 = 0;
  }

  v24 = v17 == 0;
  if (!v17 && GateLayout == 1)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = v85;
    (*(*a2 + 32))(v85, a2, v71);
    if (v86 < 0)
    {
      v26 = v85[0];
    }

    v84 = v6;
    v82.__r_.__value_.__r.__words[0] = &v84;
    v27 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v84);
    v28 = v27 + 3;
    if (*(v27 + 47) < 0)
    {
      v28 = *v28;
    }

    v83 = v8;
    v82.__r_.__value_.__r.__words[0] = &v83;
    v29 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v83);
    v30 = v29 + 3;
    if (*(v29 + 47) < 0)
    {
      v30 = *v30;
    }

    v81 = 0;
    LOBYTE(__p) = 0;
    EmitObjC::emitTensorName(a2, v71, &__p, &v82);
    v31 = "NO";
    if (InferredResultTypes)
    {
      v32 = "YES";
    }

    else
    {
      v32 = "NO";
    }

    if (IsSize)
    {
      v31 = "YES";
    }

    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v82;
    }

    else
    {
      v33 = v82.__r_.__value_.__r.__words[0];
    }

    v34 = [v25 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph resizeBilinearWithTensor:%s\n                         sizeTensor:%s\n                       centerResult:%s\n                       alignCorners:%s\n                               name:%s]\n    ", v26, v28, v30, v31, v32, v33];;
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
      if ((v81 & 0x80000000) == 0)
      {
LABEL_35:
        if ((v86 & 0x80000000) == 0)
        {
LABEL_36:
          v35 = [*(a2 + 27) stringByAppendingString:v34];
LABEL_99:
          v68 = *(a2 + 27);
          *(a2 + 27) = v35;

          return this;
        }

LABEL_68:
        operator delete(v85[0]);
        goto LABEL_36;
      }
    }

    else if ((v81 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    operator delete(__p);
    if ((v86 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

  if (GateLayout)
  {
    v24 = 0;
  }

  if (v24)
  {
    v36 = MEMORY[0x1E696AEC0];
    v37 = v85;
    (*(*a2 + 32))(v85, a2, v71);
    if (v86 < 0)
    {
      v37 = v85[0];
    }

    v84 = v6;
    v82.__r_.__value_.__r.__words[0] = &v84;
    v38 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v84);
    v39 = v38 + 3;
    if (*(v38 + 47) < 0)
    {
      v39 = *v39;
    }

    v83 = v8;
    v82.__r_.__value_.__r.__words[0] = &v83;
    v40 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v83);
    v41 = v40 + 3;
    if (*(v40 + 47) < 0)
    {
      v41 = *v41;
      if (v23 < 6)
      {
        goto LABEL_46;
      }
    }

    else if (v23 < 6)
    {
LABEL_46:
      v42 = off_1E86D4CB0[v23 & 7];
      goto LABEL_87;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v42 = 0;
LABEL_87:
    v79 = 0;
    LOBYTE(v78) = 0;
    EmitObjC::emitTensorName(a2, v71, &v78, &v82);
    v65 = "NO";
    if (InferredResultTypes)
    {
      v66 = "YES";
    }

    else
    {
      v66 = "NO";
    }

    if (IsSize)
    {
      v65 = "YES";
    }

    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v82;
    }

    else
    {
      v67 = v82.__r_.__value_.__r.__words[0];
    }

    v34 = [v36 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph resizeNearestWithTensor:%s\n                        sizeTensor:%s\n               nearestRoundingMode:%s\n                      centerResult:%s\n                      alignCorners:%s\n                              name:%s]\n    ", v37, v39, v41, v42, v65, v66, v67];;
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
      if ((v79 & 0x80000000) == 0)
      {
LABEL_97:
        if ((v86 & 0x80000000) == 0)
        {
LABEL_98:
          v35 = [*(a2 + 27) stringByAppendingString:v34];
          goto LABEL_99;
        }

LABEL_103:
        operator delete(v85[0]);
        goto LABEL_98;
      }
    }

    else if ((v79 & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

    operator delete(v78);
    if ((v86 & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_103;
  }

  if (v17 && GateLayout == 1)
  {
    v43 = MEMORY[0x1E696AEC0];
    v44 = v85;
    (*(*a2 + 32))(v85, a2, v71);
    if (v86 < 0)
    {
      v44 = v85[0];
    }

    v84 = v6;
    v82.__r_.__value_.__r.__words[0] = &v84;
    v45 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v84);
    v46 = v45 + 3;
    if (*(v45 + 47) < 0)
    {
      v46 = *v46;
    }

    v83 = v8;
    v82.__r_.__value_.__r.__words[0] = &v83;
    v47 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v83);
    v48 = v47 + 3;
    if (*(v47 + 47) < 0)
    {
      v48 = *v48;
    }

    v77 = v17;
    v82.__r_.__value_.__r.__words[0] = &v77;
    v49 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v77);
    v50 = v49 + 3;
    if (*(v49 + 47) < 0)
    {
      v50 = *v50;
    }

    v76 = v21;
    v82.__r_.__value_.__r.__words[0] = &v76;
    v51 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v76);
    v52 = v51 + 3;
    if (*(v51 + 47) < 0)
    {
      v52 = *v52;
    }

    v75 = 0;
    LOBYTE(v74) = 0;
    EmitObjC::emitTensorName(a2, v71, &v74, &v82);
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &v82;
    }

    else
    {
      v53 = v82.__r_.__value_.__r.__words[0];
    }

    v34 = [v43 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph resizeBilinearWithTensor:%s\n                         sizeTensor:%s\n                        scaleTensor:%s\n                       offsetTensor:%s\n                               name:%s]\n    ", v44, v46, v48, v50, v52, v53];;
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
      if ((v75 & 0x80000000) == 0)
      {
LABEL_64:
        if ((v86 & 0x80000000) == 0)
        {
LABEL_65:
          v35 = [*(a2 + 27) stringByAppendingString:v34];
          goto LABEL_99;
        }

LABEL_106:
        operator delete(v85[0]);
        goto LABEL_65;
      }
    }

    else if ((v75 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    operator delete(v74);
    if ((v86 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_106;
  }

  if (v17 && !GateLayout)
  {
    v54 = MEMORY[0x1E696AEC0];
    v55 = v85;
    (*(*a2 + 32))(v85, a2, v71);
    if (v86 < 0)
    {
      v55 = v85[0];
    }

    v84 = v6;
    v82.__r_.__value_.__r.__words[0] = &v84;
    v56 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v84);
    v57 = v56 + 3;
    if (*(v56 + 47) < 0)
    {
      v57 = *v57;
    }

    v83 = v8;
    v82.__r_.__value_.__r.__words[0] = &v83;
    v58 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v83);
    v59 = v58 + 3;
    if (*(v58 + 47) < 0)
    {
      v59 = *v59;
    }

    v77 = v17;
    v82.__r_.__value_.__r.__words[0] = &v77;
    v60 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v77);
    v61 = v60 + 3;
    if (*(v60 + 47) < 0)
    {
      v61 = *v61;
    }

    v76 = v21;
    v82.__r_.__value_.__r.__words[0] = &v76;
    v62 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v76);
    v63 = v62 + 3;
    if (*(v62 + 47) < 0)
    {
      v63 = *v63;
    }

    if (v23 >= 6)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v64 = 0;
    }

    else
    {
      v64 = off_1E86D4CB0[v23 & 7];
    }

    v73 = 0;
    LOBYTE(v72) = 0;
    EmitObjC::emitTensorName(a2, v71, &v72, &v82);
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = &v82;
    }

    else
    {
      v70 = v82.__r_.__value_.__r.__words[0];
    }

    v34 = [v54 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph resizeNearestWithTensor:%s\n                        sizeTensor:%s\n                       scaleTensor:%s\n                      offsetTensor:%s\n               nearestRoundingMode:%s\n                              name:%s]\n    ", v55, v57, v59, v61, v63, v64, v70];;
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
      if ((v73 & 0x80000000) == 0)
      {
LABEL_115:
        if ((v86 & 0x80000000) == 0)
        {
LABEL_116:
          v35 = [*(a2 + 27) stringByAppendingString:v34];
          goto LABEL_99;
        }

LABEL_119:
        operator delete(v85[0]);
        goto LABEL_116;
      }
    }

    else if ((v73 & 0x80000000) == 0)
    {
      goto LABEL_115;
    }

    operator delete(v72);
    if ((v86 & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_119;
  }

  return this;
}

void sub_1E08369E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v34 - 145) < 0)
  {
    operator delete(*(v34 - 168));
  }

  if (a34 < 0)
  {
    JUMPOUT(0x1E0836A08);
  }

  JUMPOUT(0x1E0836A18);
}

void sub_1E0836A10(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1E0836E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  Autodiff::~Autodiff(&a13);

  _Unwind_Resume(a1);
}

void *Autodiff::getGradientOf(Autodiff *this, MPSGraphBlock *a2, MPSGraphTensor *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  v13 = &v12;
  v7 = std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(this + 4, &v12);
  v13 = v6;
  v8 = std::__hash_table<std::__hash_value_type<void *,Autodiff::TensorFrame>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,Autodiff::TensorFrame>>>::find<void *>(v7 + 3, &v13);
  if (!v8 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v9 = v8[3];
  v10 = v9;

  return v9;
}

void sub_1E083718C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t Autodiff::recurseForUses(Autodiff *this, MPSGraphBlock *a2, MPSGraphTensor *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [(MPSGraphTensor *)v6 operation];
  WeakRetained = objc_loadWeakRetained(&v6->_parentBlock);

  if (WeakRetained == v5)
  {
    v35 = v5;
    v36 = &v35;
    v12 = std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(this + 4, &v35);
    v36 = v6;
    v13 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v12 + 3, &v36);
    if (v13)
    {
      ++v13[4];
      v11 = *(v13 + 48);
      goto LABEL_41;
    }

    v34 = v12 + 3;
    v14 = 0;
    v11 = 0;
    while (v14 < [*(this + 1) count])
    {
      v15 = [*(this + 1) objectAtIndexedSubscript:v14];
      v16 = v15 == v6;

      v11 |= v16;
      ++v14;
    }

    if (([v7 stopGradient] & 1) == 0)
    {
      if ((~*(v6->_value.impl + 2) & 7) != 0)
      {
        if (v7[5])
        {
          v11 |= [v7 recurseOnBlocksFromOutput:v6 withAutodiff:this];
          goto LABEL_15;
        }

        v18 = [v7 inputTensors];
        for (i = 0; i < [v18 count]; ++i)
        {
          v31 = [v18 objectAtIndexedSubscript:i];
          v32 = Autodiff::recurseForUses(this, v5, v31);

          v11 |= v32;
        }
      }

      else
      {
        v17 = objc_loadWeakRetained(&v6->_parentBlock);
        v18 = [v17 parentOp];

        v11 |= [v18 recurseOutFromBlockInput:v6 withAutodiff:this];
      }
    }

LABEL_15:
    v36 = v6;
    std::__hash_table<std::__hash_value_type<void *,Autodiff::TensorFrame>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,Autodiff::TensorFrame>>>::find<void *>(v34, &v36);
    v36 = v6;
    if (std::__hash_table<std::__hash_value_type<void *,Autodiff::TensorFrame>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,Autodiff::TensorFrame>>>::find<void *>(v34, &v36) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v19 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ (v6 >> 32));
    v20 = 0x9DDFEA08EB382D69 * ((v6 >> 32) ^ (v19 >> 47) ^ v19);
    v21 = v20 ^ (v20 >> 47);
    v22 = 0x9DDFEA08EB382D69 * v21;
    v23 = v12[4];
    if (v23)
    {
      v24 = vcnt_s8(v23);
      v24.i16[0] = vaddlv_u8(v24);
      if (v24.u32[0] > 1uLL)
      {
        v25 = 0x9DDFEA08EB382D69 * v21;
        if (v22 >= *&v23)
        {
          v25 = v22 % *&v23;
        }
      }

      else
      {
        v25 = (*&v23 - 1) & v22;
      }

      v26 = *(*v34 + 8 * v25);
      if (v26)
      {
        v27 = *v26;
        if (v27)
        {
          if (v24.u32[0] < 2uLL)
          {
            while (1)
            {
              v29 = v27[1];
              if (v29 == v22)
              {
                if (v27[2] == v6)
                {
                  goto LABEL_41;
                }
              }

              else if ((v29 & (*&v23 - 1)) != v25)
              {
                goto LABEL_37;
              }

              v27 = *v27;
              if (!v27)
              {
                goto LABEL_37;
              }
            }
          }

          do
          {
            v28 = v27[1];
            if (v28 == v22)
            {
              if (v27[2] == v6)
              {
                goto LABEL_41;
              }
            }

            else
            {
              if (v28 >= *&v23)
              {
                v28 %= *&v23;
              }

              if (v28 != v25)
              {
                break;
              }
            }

            v27 = *v27;
          }

          while (v27);
        }
      }
    }

LABEL_37:
    operator new();
  }

  [(MPSGraphBlock *)v5 parentOp];

  v9 = [(MPSGraphBlock *)v5 parentOp];

  if (!v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = [(MPSGraphBlock *)v5 parentOp];
  v11 = [v10 recurseFromBlock:v5 onEscaped:v6 withAutodiff:this];

LABEL_41:
  return v11 & 1;
}

id Autodiff::getFilledLike(Autodiff *this, MPSGraphTensor *a2, double a3, NSString *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(this + 2) constantWithScalar:&unk_1F5B77A98 shape:-[MPSGraphTensor dataType](v7 dataType:{"dataType"), a3}];
  v10 = *(this + 2);
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Shape", v8];
  v12 = [v10 shapeOfTensor:v7 name:v11];

  v13 = *(this + 2);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Brosdcast", v8];
  v15 = [v13 broadcastTensor:v9 toShapeTensor:v12 name:v14];

  return v15;
}

void Autodiff::computeGradsForBlock(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [v8 count];
  [v9 count];
  v10 = [v8 count];
  if (v10 != [v9 count] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  for (i = 0; i < [v8 count]; ++i)
  {
    v12 = [v8 objectAtIndexedSubscript:i];
    v13 = [v9 objectAtIndexedSubscript:i];
    Autodiff::accumulatePartialGradientOf(a1, v7, v12, v13, 1);
  }

  v18 = v7;
  v19 = &v18;
  v14 = std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a1 + 32), &v18);
  for (j = 0; j < [v8 count]; ++j)
  {
    v16 = [v8 objectAtIndexedSubscript:j];
    v19 = v16;
    v17 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v14 + 3, &v19);
    if (!v17)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if ((*(v17 + 49) & 1) == 0)
    {
      Autodiff::recursePartialGrad(a1, v7, v16, 0, 0);
    }
  }
}

void Autodiff::accumulatePartialGradientOf(Autodiff *this, MPSGraphBlock *a2, MPSGraphTensor *a3, MPSGraphTensor *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v35 = v9;
  v36 = &v35;
  v34 = this;
  v12 = std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(this + 4, &v35);
  v36 = v10;
  v13 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v12 + 3, &v36);
  if (!v13 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((v13[6] & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v13[5] >= v13[4] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v11)
  {
    v14 = [(MPSGraphTensor *)v10 shape];
    v15 = [(MPSGraphTensor *)v11 shape];
    v16 = v14;
    v17 = v15;
    v18 = v17;
    if (v16 && v17)
    {
      v32 = a5;
      v33 = v9;
      v19 = [v16 count];
      if (v19 == [v18 count])
      {
        v20 = 0;
        while ([v16 count] > v20)
        {
          v21 = [v16 objectAtIndexedSubscript:v20];
          v22 = [v21 longLongValue];

          v23 = [v18 objectAtIndexedSubscript:v20];
          v24 = [v23 longLongValue];

          ++v20;
          if ((v22 & 0x8000000000000000) == 0 && (v24 & 0x8000000000000000) == 0 && v22 != v24)
          {
            goto LABEL_13;
          }
        }

        v26 = v18;
        v25 = v16;
        v9 = v33;
        a5 = v32;
      }

      else
      {
LABEL_13:

        v9 = v33;
        a5 = v32;
        if (!MTLReportFailureTypeEnabled())
        {
LABEL_18:
          v27 = v13[3];
          if (v27)
          {
            v28 = [*(v34 + 2) additionWithPrimaryTensor:v27 secondaryTensor:v11 name:0];
          }

          else
          {
            v28 = v11;
          }

          v29 = v13[3];
          v13[3] = v28;

          goto LABEL_22;
        }

        v25 = [(MPSGraphTensor *)v11 shape];
        v26 = [(MPSGraphTensor *)v10 shape];
        v16 = [(MPSGraphTensor *)v10 operation];
        v18 = [v16 name];
        MTLReportFailure();
      }
    }

    else
    {
      v26 = v17;
      v25 = v16;
    }

    goto LABEL_18;
  }

LABEL_22:
  if (a5)
  {
    v30 = v13[4];
    v31 = v13[5] + 1;
    v13[5] = v31;
    if (v31 > v30)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }
}

void sub_1E08380D4(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t Autodiff::isGradNeededFor(Autodiff *this, MPSGraphBlock *a2, MPSGraphTensor *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = v5;
  v12 = &v11;
  v7 = std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(this + 4, &v11);
  v12 = v6;
  v8 = std::__hash_table<std::__hash_value_type<void *,Autodiff::TensorFrame>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,Autodiff::TensorFrame>>>::find<void *>(v7 + 3, &v12);
  if (v8)
  {
    v9 = *(v8 + 48);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void Autodiff::recursePartialGrad(Autodiff *this, MPSGraphBlock *a2, MPSGraphTensor *a3, uint64_t a4, int a5)
{
  v63[16] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v58 = v9;
  *&v59 = v9;
  v63[0] = &v59;
  v11 = std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(this + 4, &v59);
  v63[0] = v10;
  v12 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v11 + 3, v63);
  v13 = v12;
  if ((!v12 || (v12[6] & 1) == 0) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v14 = v13[4];
  v15 = v13[5] + a4;
  v13[5] = v15;
  if (v15 > v14 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v13[5] == v13[4])
  {
    if (*(v13 + 49) == 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (a5 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    *(v13 + 49) = 1;
    v16 = (~*(v10->_value.impl + 2) & 7) == 0;
    v55 = v10;
    WeakRetained = objc_loadWeakRetained(&v10->_parentBlock);
    v18 = WeakRetained != v9;

    if (!v18 && !v16 && v13[3])
    {
      v54 = v10;
      v19 = [(MPSGraphTensor *)v54 operation];
      v20 = objc_loadWeakRetained((v19 + 48));
      [v19 stopGradient];
      if ([v19 stopGradient] && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*(v19 + 40))
      {
        *(this + 72) = 1;
        [v19 partialDerivateForCFOpWithAutodiff:this];
      }

      else
      {
        v21 = [v19 outputTensors];
        *&v59 = v20;
        v63[0] = &v59;
        v56 = v21;
        v22 = std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(this + 4, &v59);
        v23 = 0;
        v24 = 0;
        while (v23 < [v21 count])
        {
          v25 = [v21 objectAtIndexedSubscript:v23];
          v63[0] = v25;
          v26 = std::__hash_table<std::__hash_value_type<void *,Autodiff::TensorFrame>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,Autodiff::TensorFrame>>>::find<void *>(v22 + 3, v63);

          if (v26 && *(v26 + 48) == 1)
          {
            v24 |= v26[5] != v26[4];
          }

          v21 = v56;
          ++v23;
        }

        v27 = objc_alloc(MEMORY[0x1E695DF70]);
        v28 = [v19 outputTensors];
        v57 = [v27 initWithCapacity:{objc_msgSend(v28, "count")}];

        for (i = 0; ; ++i)
        {
          v30 = [v19 outputTensors];
          v31 = i < [v30 count];

          if (!v31)
          {
            break;
          }

          v32 = [v19 outputTensors];
          v33 = [v32 objectAtIndexedSubscript:i];

          if ((v24 & 1) != 0 || !Autodiff::isGradNeededFor(this, v20, v33))
          {
            v34 = [MEMORY[0x1E695DFB0] null];
            [v57 addObject:v34];
          }

          else
          {
            v34 = Autodiff::getGradientOf(this, v20, v33);
            [v57 addObject:v34];
          }
        }

        v35 = objc_alloc(MEMORY[0x1E695DF70]);
        v36 = [v19 inputTensors];
        v37 = [v35 initWithCapacity:{objc_msgSend(v36, "count")}];

        for (j = 0; ; ++j)
        {
          v39 = [v19 inputTensors];
          v40 = j < [v39 count];

          if (!v40)
          {
            break;
          }

          v41 = [v19 inputTensors];
          v42 = [v41 objectAtIndexedSubscript:j];

          if (Autodiff::isGradNeededFor(this, v20, v42))
          {
            [v37 addObject:v42];
          }

          else
          {
            v43 = [MEMORY[0x1E695DFB0] null];
            [v37 addObject:v43];
          }
        }

        if (v24)
        {
          [v37 count];
          v44 = 0;
        }

        else
        {
          v44 = [v19 partialDerivativesForInputTensors:v37 incomingGradients:v57 name:*(this + 3)];
          for (k = 0; k < [v37 count]; ++k)
          {
            v51 = [v37 objectAtIndexedSubscript:k];
            v52 = [v44 objectAtIndexedSubscript:k];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              Autodiff::accumulatePartialGradientOf(this, v20, v51, v52, 0);
            }
          }
        }

        v53 = v44;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v45 = v37;
        v46 = [v45 countByEnumeratingWithState:&v59 objects:v63 count:16];
        if (v46)
        {
          v47 = *v60;
          do
          {
            for (m = 0; m != v46; ++m)
            {
              if (*v60 != v47)
              {
                objc_enumerationMutation(v45);
              }

              v49 = *(*(&v59 + 1) + 8 * m);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                Autodiff::recursePartialGrad(this, v20, v49, 1uLL, v24 & 1);
              }
            }

            v46 = [v45 countByEnumeratingWithState:&v59 objects:v63 count:16];
          }

          while (v46);
        }
      }

      v10 = v55;
    }
  }
}

void Autodiff::~Autodiff(Autodiff *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[5];
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

      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        operator delete(v7);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

void sub_1E0839238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  mlir::OperationState::~OperationState(&a41);
  _Block_object_dispose(&a17, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

GPU::DequantizeOpHandler *GPU::DequantizeOpHandler::DequantizeOpHandler(GPU::DequantizeOpHandler *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v7 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v7 = &unk_1F5B51938;
  *(v7 + 16) = 0;
  v69 = a3;
  v8 = *(*(a3 + 9) + 24);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v8);
  v9 = *(a3 + 9);
  v10 = v9[7];
  v11 = v9[11];
  v12 = v9[15];
  FunctionType = mlir::func::FuncOp::getFunctionType(&v69);
  v14 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8))
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
    __p = v14;
    v65 = v15;
    if (v14)
    {
      if (!mlir::CallOpInterface::getArgOperands(&__p))
      {
        goto LABEL_39;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__p);
      if (v17)
      {
        v18 = 8 * v17;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v18 -= 8;
          if (!v18)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }
    }
  }

  else
  {
    __p = 0;
    v65 = 0;
  }

LABEL_10:
  v19 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8))
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
    __p = v19;
    v65 = v20;
    if (v19)
    {
      if (!mlir::CallOpInterface::getArgOperands(&__p))
      {
        goto LABEL_39;
      }

      v21 = mlir::CallableOpInterface::getArgAttrsAttr(&__p);
      if (v22)
      {
        v23 = 8 * v22;
        while (*v21 != 0x8000000000000000)
        {
          ++v21;
          v23 -= 8;
          if (!v23)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_39;
      }
    }
  }

  else
  {
    __p = 0;
    v65 = 0;
  }

LABEL_19:
  v24 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8))
  {
    __p = 0;
    v65 = 0;
    goto LABEL_28;
  }

  v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  __p = v24;
  v65 = v25;
  if (!v24)
  {
    goto LABEL_28;
  }

  if (!mlir::CallOpInterface::getArgOperands(&__p))
  {
LABEL_39:
    v37 = 0;
    goto LABEL_45;
  }

  v26 = mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  if (v27)
  {
    v28 = 8 * v27;
    while (*v26 != 0x8000000000000000)
    {
      ++v26;
      v28 -= 8;
      if (!v28)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_39;
  }

LABEL_28:
  v29 = (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8))
  {
    v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
    __p = v29;
    v65 = v31;
    if (v29)
    {
      if (mlir::CallOpInterface::getArgOperands(&__p))
      {
        v32 = mlir::CallableOpInterface::getArgAttrsAttr(&__p);
        if (v33)
        {
          v34 = 8 * v33 - 8;
          do
          {
            v35 = *v32++;
            v30 = v35 != 0x8000000000000000;
            v36 = v35 == 0x8000000000000000 || v34 == 0;
            v34 -= 8;
          }

          while (!v36);
        }

        else
        {
          v30 = 1;
        }
      }

      else
      {
        v30 = 0;
      }
    }
  }

  else
  {
    v29 = 0;
    __p = 0;
    v65 = 0;
  }

  v37 = v29 == 0 || v30;
LABEL_45:
  if (*(*ElementTypeOrSelf + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    *(this + 120) = 1;
    return this;
  }

  v38 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) == 4;
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v39 = v37 & (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) == 8);
    *(this + 120) = ((v38 | v39) & 1) == 0;
    if (((v38 | v39) & 1) == 0)
    {
      return this;
    }
  }

  else
  {
    v39 = 0;
    *(this + 120) = !v38;
    if (!v38)
    {
      return this;
    }
  }

  if (v39)
  {
    v40 = *(v69 + 2 * ((*(v69 + 11) >> 23) & 1) + 8);
    v41 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v41)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
      v66 = v41;
      v67 = v42;
      if (!v40)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v66 = 0;
      v67 = 0;
      if (!v40)
      {
        goto LABEL_69;
      }
    }

    if (!mlir::CallOpInterface::getArgOperands(&v66))
    {
      return this;
    }

    v55 = mlir::CallableOpInterface::getArgAttrsAttr(&v66);
    if (!v56)
    {
LABEL_68:
      v58 = mlir::CallableOpInterface::getArgAttrsAttr(&v66);
      if (mlir::ShapedType::getNumElements(v58, v59) != 1)
      {
        return this;
      }

LABEL_69:
      v60 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v60)
      {
        mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
      }

      v61 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v61)
      {
        mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v61 + 8);
      }

      v62 = (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v62)
      {
        mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v62 + 8);
      }

      getMPSDataType(FunctionType);
      operator new();
    }

    v57 = 8 * v56;
    while (*v55 != 0x8000000000000000)
    {
      ++v55;
      v57 -= 8;
      if (!v57)
      {
        goto LABEL_68;
      }
    }
  }

  else if (v38)
  {
    v43 = *(v69 + 9);
    v44 = *(v43 + 120);
    isConstantIntZero = mlir::isConstantIntZero(*(v43 + 88));
    isConstantFPZero = mlir::isConstantFPZero(v44);
    if (isConstantIntZero)
    {
      v47 = 2;
    }

    else
    {
      v47 = 3;
    }

    v48 = objc_alloc(MEMORY[0x1E6974690]);
    v49 = !isConstantFPZero;
    v50 = [v48 initWithDataType:getMPSDataType(ElementTypeOrSelf) hasZeroPoint:isConstantIntZero ^ 1u hasMinValue:v49 hasDoubleQuantScale:0 hasDoubleQuantMinVal:0];
    v51 = objc_alloc(MEMORY[0x1E6974688]);
    v52 = [a2[6] metalDevice];
    v53 = [v51 initWithDevice:v52 quantizationDescriptor:v50 sourceCount:v47 + v49];
    v54 = *(this + 1);
    *(this + 1) = v53;
  }

  else if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return this;
}

void GPU::DequantizeOpHandler::encodeOp(GPU::DequantizeOpHandler *this, GPU::EncodeDescriptor *a2)
{
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  if (*(this + 120))
  {
    return;
  }

  v4 = *(this + 3);
  v5 = *(*(v4 + 72) + 24);
  if (*(v4 + 36))
  {
    v6 = v4 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v5);
  v77 = ElementTypeOrSelf;
  v9 = *(v4 + 72);
  v10 = v9[7];
  v11 = v9[11];
  v12 = v9[15];
  v13 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
    v78 = v13;
    v79 = v14;
    if (v13)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v78))
      {
        goto LABEL_43;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v78);
      if (v16)
      {
        v17 = 8 * v16;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v17 -= 8;
          if (!v17)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_43;
      }
    }
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

LABEL_14:
  v18 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v78 = v18;
    v79 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v78))
      {
        goto LABEL_43;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v78);
      if (v21)
      {
        v22 = 8 * v21;
        while (*v20 != 0x8000000000000000)
        {
          ++v20;
          v22 -= 8;
          if (!v22)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_43;
      }
    }
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

LABEL_23:
  v23 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8))
  {
    v78 = 0;
    v79 = 0;
    goto LABEL_32;
  }

  v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
  v78 = v23;
  v79 = v24;
  if (v23)
  {
    if (mlir::CallOpInterface::getArgOperands(&v78))
    {
      v25 = mlir::CallableOpInterface::getArgAttrsAttr(&v78);
      if (!v26)
      {
        goto LABEL_32;
      }

      v27 = 8 * v26;
      while (*v25 != 0x8000000000000000)
      {
        ++v25;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_43:
    v36 = 1;
    if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      goto LABEL_50;
    }

LABEL_62:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return;
  }

LABEL_32:
  v28 = (v12[1] & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8))
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
    v78 = v28;
    v79 = v30;
    if (v28)
    {
      if (mlir::CallOpInterface::getArgOperands(&v78))
      {
        v31 = mlir::CallableOpInterface::getArgAttrsAttr(&v78);
        if (v32)
        {
          v33 = 8 * v32 - 8;
          do
          {
            v34 = *v31++;
            v29 = v34 == 0x8000000000000000;
            v35 = v34 == 0x8000000000000000 || v33 == 0;
            v33 -= 8;
          }

          while (!v35);
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 1;
      }
    }
  }

  else
  {
    v28 = 0;
    v78 = 0;
    v79 = 0;
  }

  v36 = v28 != 0 && v29;
  if (*(*ElementTypeOrSelf + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    goto LABEL_62;
  }

LABEL_50:
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v77);
  if (*(*v77 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || ((v38 = IntOrFloatBitWidth, v39 = mlir::Type::getIntOrFloatBitWidth(&v77), IntOrFloatBitWidth = v38, v39 != 8) ? (v40 = 1) : (v40 = v36), (v40 & 1) != 0))
  {
    if (IntOrFloatBitWidth == 4)
    {
      isConstantIntZero = mlir::isConstantIntZero(v11);
      isConstantFPZero = mlir::isConstantFPZero(v12);
      v76 = [MEMORY[0x1E695DF70] array];
      v43 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
      v44 = [v43 mpsndarray];
      [v76 addObject:v44];

      v45 = (*(**(this + 2) + 48))(*(this + 2), v10, 0);
      v46 = [v45 mpsndarray];
      [v76 addObject:v46];

      if ((isConstantIntZero & 1) == 0)
      {
        v47 = (*(**(this + 2) + 48))(*(this + 2), v11, 0);
        v48 = [v47 mpsndarray];
        [v76 addObject:v48];
      }

      if (!isConstantFPZero)
      {
        v49 = (*(**(this + 2) + 48))(*(this + 2), v12, 0);
        v50 = [v49 mpsndarray];
        [v76 addObject:v50];
      }

      v51 = (*(**(this + 2) + 80))(*(this + 2), NextResultAtOffset, *(a2 + 1), 0, 0, 1);
      v52 = [v51 mpsndarray];
      if (!v52)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      v53 = *(this + 1);
      v54 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      [v53 encodeToMPSCommandEncoder:v54 commandBuffer:*(a2 + 1) sourceArrays:v76 destinationArray:v52];

      return;
    }

    goto LABEL_62;
  }

  v55 = *(this + 3);
  v56 = *(*(v55 + 72) + 24);
  if (*(v55 + 36))
  {
    v57 = v55 - 16;
  }

  else
  {
    v57 = 0;
  }

  v58 = mlir::detail::OpResultImpl::getNextResultAtOffset(v57, 0);
  v59 = *(v55 + 72);
  v60 = v59[7];
  v61 = v59[11];
  v62 = v59[15];
  v63 = [MEMORY[0x1E695DF70] array];
  v64 = (*(**(this + 2) + 48))(*(this + 2), v56, 0);
  v65 = [v64 mpsndarray];
  [v63 addObject:v65];

  v66 = (*(**(this + 2) + 48))(*(this + 2), v60, 0);
  v67 = [v66 mpsndarray];
  [v63 addObject:v67];

  v68 = (*(**(this + 2) + 48))(*(this + 2), v61, 0);
  v69 = [v68 mpsndarray];
  [v63 addObject:v69];

  v70 = (*(**(this + 2) + 48))(*(this + 2), v62, 0);
  v71 = [v70 mpsndarray];
  [v63 addObject:v71];

  v72 = (*(**(this + 2) + 80))(*(this + 2), v58, *(a2 + 1), 0, 0, 1);
  v73 = [v72 mpsndarray];
  if (!v73 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v74 = *(this + 1);
  v75 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v74 encodeToMPSCommandEncoder:v75 commandBuffer:*(a2 + 1) sourceArrays:v63 resultState:0 destinationArray:v73 kernelDAGObject:*(this + 16)];
}

id *GPU::DequantizeLutOpHandler::DequantizeLutOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v7 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v7 = &unk_1F5B51988;
  *(v7 + 15) = 0;
  mlir::getElementTypeOrSelf(*(*(a3 + 9) + 24));
  v8 = objc_alloc(MEMORY[0x1E6974758]);
  v9 = [a2[6] metalDevice];
  v10 = [v8 initWithDevice:v9];

  objc_storeStrong(this + 1, v10);
  v11 = objc_alloc(MEMORY[0x1E69748C0]);
  v12 = [a2[6] metalDevice];
  v13 = [v11 initWithDevice:v12 axis:0];
  v14 = this[15];
  this[15] = v13;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  [this[15] setOptions:{objc_msgSend(this[15], "options") | 1}];

  return this;
}

void sub_1E083B460(_Unwind_Exception *a1)
{
  v4 = v3;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::DequantizeLutOpHandler::encodeOp(GPU::DequantizeLutOpHandler *this, void **a2)
{
  v75[2] = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v59 = *(*(this + 2) + 416);
  v73 = *(this + 3);
  v4 = *(*(v73 + 72) + 24);
  Axis = mlir::mps::DequantizeLUTOp::getAxis(&v73);
  if (*(v73 + 36))
  {
    v5 = v73 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v7 = *(*(v73 + 72) + 56);
  v8 = (*(**(this + 2) + 48))(*(this + 2), v4, 0);
  v58 = [v8 mpsndarray];

  v9 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v64 = [v9 mpsndarray];

  v10 = HIDWORD(Axis) & 1;
  if (v64)
  {
    v11 = BYTE4(Axis) & 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == 1)
  {
    if (*&v64[4 * (*&v64[*MEMORY[0x1E69744D8]] & 0xF) + *MEMORY[0x1E6974508]] == 1)
    {
      v12 = GPU::aliasSqueeze(v59, v64, 0, 1, a2[1]);

      LODWORD(v10) = 0;
      v64 = v12;
    }

    else
    {
      LODWORD(v10) = 1;
    }
  }

  v56 = (*(**(this + 2) + 80))(*(this + 2), NextResultAtOffset, a2[1], 0, 0, 1);
  v13 = [v56 mpsndarray];
  if (!v13 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v14 = v58;
  v15 = v64;
  v16 = v13;
  v60 = a2[1];
  v63 = v59;
  v17 = v16;
  v18 = v14;
  v19 = v15;
  v20 = v19;
  if (v10)
  {
    goto LABEL_30;
  }

  v21 = *&v18[*MEMORY[0x1E69744F0]];
  v22 = 15;
  if (v21 < 0xF)
  {
    v22 = *&v18[*MEMORY[0x1E69744F0]];
  }

  v23 = 0;
  if (v21)
  {
    v24 = *MEMORY[0x1E6974508];
    v26 = *&v17[v24 + 32];
    v25 = *&v17[v24 + 48];
    v28 = *&v17[v24];
    v27 = *&v17[v24 + 16];
    v29 = *MEMORY[0x1E69744D8];
    v30 = *&v17[v29];
    while (1)
    {
      v71 = v30;
      v72[0] = v28;
      v72[1] = v27;
      v72[2] = v26;
      v72[3] = v25;
      if (*(v72 + (*(&v71 | v23 & 0xF) & 0xF)) == 1)
      {
        v70 = *&v18[v29];
        if (*&v18[4 * (*(&v70 | v23 & 0xF) & 0xF) + v24] == 1)
        {
          v69 = *&v19[v29];
          if (*&v19[4 * (*(&v69 | (v23 + 1) & 0xF) & 0xF) + v24] == 1)
          {
            break;
          }
        }
      }

      if (v22 == ++v23)
      {
        goto LABEL_30;
      }
    }
  }

  v31 = v23 >= v22;
  v32 = v23 - v22;
  if (v31)
  {
    goto LABEL_30;
  }

  v33 = 0;
  v34 = *MEMORY[0x1E6974508];
  v36 = *&v17[v34 + 32];
  v35 = *&v17[v34 + 48];
  v38 = *&v17[v34];
  v37 = *&v17[v34 + 16];
  v39 = *MEMORY[0x1E69744D8];
  v40 = *&v17[v39];
  while (1)
  {
    v67 = v40;
    v68[0] = v38;
    v68[1] = v37;
    v68[2] = v36;
    v68[3] = v35;
    if (*(v68 + (*(&v67 | (v23 + v33) & 0xF) & 0xF)) != 1)
    {
      break;
    }

    v66 = *&v18[v39];
    if (*&v18[4 * (*(&v66 | (v23 + v33) & 0xF) & 0xF) + v34] != 1)
    {
      break;
    }

    v65 = *&v19[v39];
    if (*&v19[4 * (*(&v65 | (v23 + v33 + 1) & 0xF) & 0xF) + v34] != 1)
    {
      break;
    }

    ++v33;
    if (!(v32 + v33))
    {
      goto LABEL_30;
    }
  }

  if (!v33)
  {
LABEL_30:
    v57 = 0;
    v41 = v18;
    v43 = v19;
    v45 = v17;
  }

  else
  {
    v41 = GPU::aliasSqueeze(v63, v18, v23, v33, v60);
    v42 = v41;
    v43 = GPU::aliasSqueeze(v63, v20, v23 + 1, v33, v60);
    v44 = v43;
    v45 = GPU::aliasSqueeze(v63, v17, v23, v33, v60);
    v46 = v45;
    v57 = v17[*MEMORY[0x1E69744E8]];
  }

  v61 = v41;
  v47 = v43;

  v48 = v45;
  if (v10)
  {
    v49 = *(this + 15);
    if ((Axis & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v50 = [v18 numberOfDimensions];
    if ((Axis & 0x80000000) == 0)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    if ((v51 + ~Axis) <= 3)
    {
      [v49 setVectorAxis:?];
    }

    v52 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v53 = a2[1];
    v75[0] = v61;
    v75[1] = v47;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
    [v49 encodeToCommandEncoder:v52 commandBuffer:v53 sourceArrays:v54 destinationArray:v48];
  }

  else
  {
    v49 = *(this + 1);
    v52 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v55 = a2[1];
    v74[0] = v61;
    v74[1] = v47;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
    [v49 encodeToCommandEncoder:v52 commandBuffer:v55 sourceArrays:v54 destinationArray:v48];
  }

  if ((v57 & 1) != 0 && *(v48 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v48 setReadCount:{objc_msgSend(v48, "readCount") - 1}];
  }
}

id GPU::aliasSqueeze(void *a1, void *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = v11;
  v22[0] = xmmword_1E09AAD68;
  v22[1] = unk_1E09AAD78;
  v22[2] = xmmword_1E09AAD88;
  v22[3] = unk_1E09AAD98;
  v22[6] = xmmword_1E09AADC8;
  v22[7] = unk_1E09AADD8;
  v22[4] = xmmword_1E09AADA8;
  v22[5] = unk_1E09AADB8;
  v13 = *&v10[*MEMORY[0x1E69744F0]];
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = MEMORY[0x1E6974508];
    v17 = MEMORY[0x1E69744D8];
    do
    {
      if (v15 < a3 || v15 >= a4 + a3)
      {
        v18 = &v10[*v16];
        v21 = *&v10[*v17];
        *(v22 + v14++) = *&v18[4 * (*(&v21 | v15 & 0xF) & 0xF)];
      }

      ++v15;
    }

    while (v13 != v15);
  }

  else
  {
    v14 = 0;
  }

  if (v11 && v10[*MEMORY[0x1E69744E8]] == 1)
  {
    [v10 setReadCount:{objc_msgSend(v10, "readCount") + 1}];
  }

  v19 = [v9 reshapeWithCommandBuffer:v12 sourceArray:v10 dimensionCount:v14 dimensionSizes:v22 destinationArray:{0, v21}];

  return v19;
}

void GPU::DequantizeOpHandler::~DequantizeOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::DequantizeLutOpHandler::~DequantizeLutOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::DimensionSizeOpHandler::encodeOp(GPU::DimensionSizeOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v4 = *(this + 3);
  v5 = *(v4 + 72);
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  LODWORD(v5) = *(v4 + 36);
  v8 = v4 - 16;
  if (v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v22 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v11 = [v22 mpsndarray];
  if (!v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = [v11 descriptor];
  v13 = [v12 getShape];

  v14 = 0;
  v28[0] = xmmword_1E09AADE8;
  v28[1] = unk_1E09AADF8;
  v28[2] = xmmword_1E09AAE08;
  v28[3] = unk_1E09AAE18;
  while ([v13 count] > v14)
  {
    v15 = [v13 objectAtIndexedSubscript:v14];
    *(v28 + v14) = [v15 intValue];

    ++v14;
  }

  GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, v7, &__p);
  v25 = v27;
  v26 = 0x1000000000;
  v16 = [v11 numberOfDimensions];
  v17 = __p;
  v18 = v24;
  v19 = v26;
  if (__p != v24)
  {
    do
    {
      v20 = *(v28 + (*v17 + v16) % v16);
      if (v19 >= HIDWORD(v26))
      {
        v21 = v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v19 + 1, 8);
        v19 = v26;
        v16 = v21;
      }

      *(v25 + v19) = v20;
      v19 = v26 + 1;
      LODWORD(v26) = v26 + 1;
      ++v17;
    }

    while (v17 != v18);
  }

  GPURegionRuntime::writeIntTensorData(*(this + 2), a2, NextResultAtOffset, v25, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }
}

void GPU::RankOpHandler::encodeOp(GPU::RankOpHandler *this, GPU::EncodeDescriptor *a2)
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
  v10 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  v11 = [v10 mpsndarray];
  if (!v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = [v11 numberOfDimensions];
  GPURegionRuntime::writeIntTensorData(*(this + 2), a2, NextResultAtOffset, &v12, 1uLL);
}

void GPU::ShapeOpHandler::encodeOp(GPU::ShapeOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v20[16] = *MEMORY[0x1E69E9840];
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
  v10 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  v11 = [v10 mpsndarray];
  if (!v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = [v11 descriptor];
  v13 = [v12 getShape];

  v14 = 0;
  v18 = v20;
  v19 = 0x1000000000;
  while ([v13 count] > v14)
  {
    v15 = [v13 objectAtIndexedSubscript:v14];
    v16 = [v15 intValue];
    v17 = v19;
    if (v19 >= HIDWORD(v19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v19 + 1, 8);
      v17 = v19;
    }

    *(v18 + v17) = v16;
    LODWORD(v19) = v19 + 1;

    ++v14;
  }

  GPURegionRuntime::writeIntTensorData(*(this + 2), a2, NextResultAtOffset, v18, v19);
  if (v18 != v20)
  {
    free(v18);
  }
}

void GPU::SizeOpHandler::encodeOp(GPU::SizeOpHandler *this, GPU::EncodeDescriptor *a2)
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
  v10 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  v11 = [v10 mpsndarray];
  if (!v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = [v11 descriptor];
  v13 = [v12 getShape];

  v14 = 0;
  v15 = 1;
  while ([v13 count] > v14)
  {
    v16 = [v13 objectAtIndexedSubscript:v14];
    v15 *= [v16 intValue];

    ++v14;
  }

  v17 = v15;
  GPURegionRuntime::writeIntTensorData(*(this + 2), a2, NextResultAtOffset, &v17, 1uLL);
}

void GPU::DimensionSizeOpHandler::~DimensionSizeOpHandler(GPU::DimensionSizeOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::RankOpHandler::~RankOpHandler(GPU::RankOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ShapeOpHandler::~ShapeOpHandler(GPU::ShapeOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::SizeOpHandler::~SizeOpHandler(GPU::SizeOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

GPU::AllocOpHandler *GPU::AllocOpHandler::AllocOpHandler(GPU::AllocOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B51BA8;
  v6 = *(v5 + 3);
  v7 = *(*(v5 + 2) + 648);
  if (((*(v6 + 46) & 0x80) != 0 && *(v6 + 68) || *(v6 + 36) != 1) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *(this + 3);
  v9 = *(v8 + 36);
  if (v9)
  {
    v10 = v8 - 16;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, v11);
      v13 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
      if (v14)
      {
        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
      }

      else
      {
        v13 = 0;
      }

      v21 = v13;
      v22 = v14;
      if (mlir::CallOpInterface::getArgOperands(&v21))
      {
        mlir::CallableOpInterface::getArgAttrsAttr(&v21);
      }

      v15 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
      if (v16)
      {
        v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
      }

      else
      {
        v15 = 0;
      }

      v21 = v15;
      v22 = v16;
      if (!mlir::CallOpInterface::getArgOperands(&v21))
      {
        goto LABEL_24;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v21);
      if (v18)
      {
        break;
      }

LABEL_9:
      if (++v11 == v9)
      {
        v8 = *(this + 3);
        goto LABEL_27;
      }
    }

    v19 = 8 * v18;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v19 -= 8;
      if (!v19)
      {
        goto LABEL_9;
      }
    }

LABEL_24:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_9;
  }

LABEL_27:
  GPU::MemrefBufferizer::allocateHeapForFusedAlloc(v7, v8 - 16);
  return this;
}

void GPU::DeallocOpHandler::encodeOp(GPU::DeallocOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v3 = *(this + 3);
  v4 = *(*(this + 2) + 648);
  if (((*(v3 + 46) & 0x80) == 0 || *(v3 + 68) != 1 || *(v3 + 36)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = *(*(*(this + 3) + 72) + 24);
  v5 = mlir::Value::getDefiningOp(&v15) - 16;
  if ((GPU::MemrefBufferizer::freeBufferForValue(v4, v5) & 1) == 0)
  {
    v6 = v4[20].u32[0];
    if (v6)
    {
      v7 = v4[18];
      v8 = 0x9DDFEA08EB382D69 * ((8 * v5 - 0xAE502812AA7333) ^ HIDWORD(v5));
      v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v8 >> 47) ^ v8);
      v10 = (v6 - 1) & (-348639895 * ((v9 >> 47) ^ v9));
      v11 = *(*&v7 + 16 * v10);
      if (v11 == v5)
      {
LABEL_7:
        if (v10 != v6)
        {
          v12 = *&v7 + 16 * v10;

          *v12 = -8192;
          v4[19] = vadd_s32(v4[19], 0x1FFFFFFFFLL);
        }
      }

      else
      {
        v13 = 1;
        while (v11 != -4096)
        {
          v14 = v10 + v13++;
          v10 = v14 & (v6 - 1);
          v11 = *(*&v7 + 16 * v10);
          if (v11 == v5)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  BaseRuntime::unsetTensorDataFromDataMap(*(this + 2), v5);
}

GPU::MemrefBackedOpHandler *GPU::MemrefBackedOpHandler::MemrefBackedOpHandler(GPU::MemrefBackedOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v20 = a2;
  v18 = a4;
  v19 = a3;
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B51BF8;
  *(v6 + 15) = 0;
  *(v6 + 16) = v6 + 144;
  *(v6 + 17) = 0x600000000;
  if (((*(a3 + 46) & 0x80) == 0 || !*(a3 + 17)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((*(a3 + 11) & 0x7FFFFF) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = (((a3 + 16 * ((*(a3 + 11) >> 23) & 1) + ((*(a3 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a3 + 10));
  if ((*v8 == v8 || *(v8[1] + 8) != v8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v9 = *(((*(this + 3) + 16 * ((*(*(this + 3) + 44) >> 23) & 1) + ((*(*(this + 3) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 3) + 40) + 8);
  if (v9)
  {
    v10 = (v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  Terminator = mlir::Block::getTerminator(v10, v7);
  if (*(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::UseMemrefOp,void>::id)
  {
    v12 = Terminator;
  }

  else
  {
    v12 = 0;
  }

  *(this + 15) = v12;
  if (!v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = *(this + 15);
  if ((*(v13 + 46) & 0x80) != 0)
  {
    v14 = *(v13 + 68);
    v15 = *(this + 3);
    if ((*(v15 + 46) & 0x80) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    v15 = *(this + 3);
    if ((*(v15 + 46) & 0x80) != 0)
    {
LABEL_15:
      if (v14 == *(v15 + 68))
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }
  }

  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_30:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_16:
  v17[0] = &v19;
  v17[1] = &v20;
  v17[2] = &v18;
  v17[3] = this;
  mlir::detail::walk<mlir::ForwardIterator>(a3, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::MemrefBackedOpHandler::MemrefBackedOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>, v17, 1);
  if (*(this + 34) <= 1u)
  {
    mlir::Operation::dump(v19);
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  return this;
}

void sub_1E083D0F8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  if (v4 != v2)
  {
    free(v4);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::MemrefBackedOpHandler::encodeOp(GPU::MemrefBackedOpHandler *this, id *a2)
{
  v4 = *(this + 15);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 72);
    v6 = *(v4 + 68);
    v7 = *(this + 3);
    if ((*(v7 + 46) & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = *(this + 3);
    if ((*(v7 + 46) & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  if (v6)
  {
    v8 = *(v7 + 68);
    if (v8)
    {
      v9 = 0;
      v10 = *(*(this + 2) + 648);
      v11 = *(v7 + 72);
      while (1)
      {
        v12 = *(v5 + 32 * v9 + 24);
        v13 = *(v10 + 160);
        if (!v13)
        {
          goto LABEL_9;
        }

        v14 = *(v11 + 32 * v9 + 24);
        v15 = *(v10 + 144);
        v16 = 0x9DDFEA08EB382D69 * ((8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14));
        v17 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v16 >> 47) ^ v16);
        v18 = (-348639895 * ((v17 >> 47) ^ v17)) & (v13 - 1);
        v19 = *(v15 + 16 * v18);
        if (v19 != v14)
        {
          break;
        }

LABEL_8:
        if (v18 == v13)
        {
          goto LABEL_9;
        }

        v21 = *(v5 + 32 * v9 + 24);
        v22 = *(v15 + 16 * v18 + 8);
        v12 = v21;
        v20 = v22;
LABEL_11:
        GPU::MemrefBufferizer::setTensorDataForMemrefBackedResult(v10, v12, v20);

        if (++v9 == v6 || v9 == v8)
        {
          goto LABEL_19;
        }
      }

      v23 = 1;
      while (v19 != -4096)
      {
        v24 = v18 + v23++;
        v18 = v24 & (v13 - 1);
        v19 = *(v15 + 16 * v18);
        if (v19 == v14)
        {
          goto LABEL_8;
        }
      }

LABEL_9:
      v20 = 0;
      goto LABEL_11;
    }
  }

LABEL_19:
  v25 = *(this + 34);
  if (v25)
  {
    v26 = *(this + 16);
    v27 = 8 * v25;
    do
    {
      v28 = *v26++;
      GPURegionRuntime::encodeOp(*(this + 2), v28, a2);
      v27 -= 8;
    }

    while (v27);
  }
}

void GPU::UseMemrefOpHandler::encodeOp(GPU::UseMemrefOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v2 = *(*(this + 2) + 648);
  if (!*(v2 + 200))
  {
    return;
  }

  v3 = *(v2 + 208);
  if (v3 <= 4 * *(v2 + 200) || v3 < 0x41)
  {
    if (!v3)
    {
LABEL_14:
      *(v2 + 200) = 0;
      return;
    }

    v4 = *(v2 + 192);
    v5 = 16 * v3;
    while (1)
    {
      if (*v4 != -8192)
      {
        if (*v4 == -4096)
        {
          goto LABEL_10;
        }
      }

      *v4 = -4096;
LABEL_10:
      v4 += 16;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_14;
      }
    }
  }

  llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::shrink_and_clear((v2 + 192));
}

GPU::StridedArrayViewOpHandler *GPU::StridedArrayViewOpHandler::StridedArrayViewOpHandler(GPU::StridedArrayViewOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B51C48;
  *(v6 + 15) = a3;
  *(v6 + 128) = 0;
  *(v6 + 17) = 0;
  if (*(a3 + 9))
  {
    v7 = a3 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = v8[2];
      if (v9 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v10)
      {
        v11 = *(*(v10 + 48) + 16);
        if (v11 == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
        {
          v9 = v10;
        }

        else
        {
          v9 = 0;
        }

        if (v11 == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
        {
          if (*(v10 + 36))
          {
            v12 = v10 - 16;
          }

          else
          {
            v12 = 0;
          }

          *(this + 17) = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
        }

        if (mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v10) || *(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::TransposeOp,void>::id)
        {
          *(this + 128) = 1;
        }
      }

      else
      {
        v9 = 0;
      }

      v8 = *v8;
    }

    while (v8);
  }

  return this;
}

void GPU::StridedArrayViewOpHandler::encodeOp(GPU::StridedArrayViewOpHandler *this, GPU::EncodeDescriptor *a2)
{
  if (*(this + 17) || (*(this + 128) & 1) == 0)
  {
    v4 = *(*(this + 2) + 648);
    v5 = *(this + 15);
    v6 = *(v5 + 36);
    v7 = v5 - 16;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    v40 = *(*(*(this + 15) + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v40);
    v11 = v4[20].u32[0];
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = v4[18];
    v13 = 0x9DDFEA08EB382D69 * ((8 * NextResultAtOffset - 0xAE502812AA7333) ^ HIDWORD(NextResultAtOffset));
    v14 = 0x9DDFEA08EB382D69 * (HIDWORD(NextResultAtOffset) ^ (v13 >> 47) ^ v13);
    v15 = -348639895 * ((v14 >> 47) ^ v14);
    v16 = v15 & (v11 - 1);
    v17 = *(*&v12 + 16 * v16);
    if (v17 != NextResultAtOffset)
    {
      v36 = 1;
      while (v17 != -4096)
      {
        v37 = v16 + v36++;
        v16 = v37 & (v11 - 1);
        v17 = *(*&v12 + 16 * v16);
        if (v17 == NextResultAtOffset)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_9;
    }

LABEL_8:
    if (v16 == v11)
    {
LABEL_9:
      v18 = 0;
      goto LABEL_10;
    }

    v18 = *(*&v12 + 16 * v16 + 8);
    if (!v18)
    {
      goto LABEL_10;
    }

    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
    {
      v31 = v4[20].u32[0];
      if (v31)
      {
        v32 = v4[18];
        v33 = (v31 - 1) & v15;
        v34 = *(*&v32 + 16 * v33);
        if (v34 == NextResultAtOffset)
        {
LABEL_43:
          if (v33 != v31)
          {
            v35 = *&v32 + 16 * v33;

            *v35 = -8192;
            v4[19] = vadd_s32(v4[19], 0x1FFFFFFFFLL);
          }
        }

        else
        {
          v38 = 1;
          while (v34 != -4096)
          {
            v39 = v33 + v38++;
            v33 = v39 & (v31 - 1);
            v34 = *(*&v32 + 16 * v33);
            if (v34 == NextResultAtOffset)
            {
              goto LABEL_43;
            }
          }
        }
      }

LABEL_10:

      v18 = 0;
      while (1)
      {
        if (v18)
        {
          v19 = 0;
          if ((*(DefiningOp + 46) & 0x80) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v20 = (*(**(this + 2) + 48))(*(this + 2), v40, 0);
          v19 = v20;
          if (v20)
          {
            v18 = [v20 mpsndarray];
            if ((*(DefiningOp + 46) & 0x80) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v18 = 0;
            if ((*(DefiningOp + 46) & 0x80) == 0)
            {
              goto LABEL_24;
            }
          }
        }

        if (!*(DefiningOp + 68))
        {
LABEL_24:
          v22 = 1;

          if (v18)
          {
            goto LABEL_33;
          }

          goto LABEL_45;
        }

        v40 = *(*(DefiningOp + 72) + 24);
        v21 = mlir::Value::getDefiningOp(&v40);
        if (v21)
        {
          if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
          {
            break;
          }
        }

        DefiningOp = mlir::Value::getDefiningOp(&v40);
        if (!DefiningOp)
        {
          v22 = 1;
          if (v18)
          {
            goto LABEL_33;
          }

          goto LABEL_45;
        }
      }

      v24 = *(a2 + 9);
      if (v24)
      {
        [v24 endEncoding];
        v25 = *(a2 + 9);
        *(a2 + 9) = 0;
      }

      v22 = 0;

      if (v18)
      {
LABEL_33:
        v26 = GPU::MemrefBufferizer::createViewTensorDataForStridedValue(v4, NextResultAtOffset, v18, a2, v22);
        if (!v26 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        BaseRuntime::setTensorDataToDataMap(*(this + 2), NextResultAtOffset, v26);
        v27 = *(this + 17);
        if (v27)
        {
          BaseRuntime::setTensorDataToDataMap(*(this + 2), v27, v26);
        }

        WeakRetained = objc_loadWeakRetained((*(this + 2) + 72));
        v29 = [WeakRetained options];

        if ((v29 & 2) != 0)
        {
          v30 = getOpName(*(this + 15));
          [v26 setLabel:v30];
        }

        goto LABEL_39;
      }

LABEL_45:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_33;
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), NextResultAtOffset, v18);
    v23 = *(this + 17);
    if (v23)
    {
      BaseRuntime::setTensorDataToDataMap(*(this + 2), v23, v18);
    }

LABEL_39:
  }
}

GPU::ViewMemrefOpHandler *GPU::ViewMemrefOpHandler::ViewMemrefOpHandler(GPU::ViewMemrefOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B51C98;
  *(v6 + 15) = a3;
  v7 = (v6 + 120);
  *(v6 + 16) = 0;
  *(v6 + 168) = 0;
  *(v6 + 22) = 0;
  v8 = (v6 + 176);
  *(v6 + 17) = 0;
  *(v6 + 23) = 0;
  v9 = *(*(v6 + 2) + 648);
  *(v6 + 17) = a3 - 16;
  *(v6 + 16) = mlir::memref::SubViewOp::getViewSource((v6 + 120));
  v35 = *(*(*(this + 15) + 72) + 32 * mlir::memref::StoreOp::getODSOperandIndexAndLength(v7, 1u) + 24);
  *(this + 19) = -1;
  DefiningOp = mlir::Value::getDefiningOp(&v35);
  v12 = DefiningOp;
  if (DefiningOp && (!(v13 = mlir::arith::ConstantIndexOp::classof(DefiningOp, v11)) ? (v14 = 0) : (v14 = v12), v34 = v14, v13))
  {
    Value = mlir::arith::ConstantOp::getValue(&v34);
    Int = mlir::IntegerAttr::getInt(&Value);
    *(this + 19) = Int;
  }

  else
  {
    Int = *(this + 19);
  }

  if (Int < 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = *(this + 17);
  v17 = *v16;
  v32 = v9;
  v33 = v16[1];
  if (*v16)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = v17[2];
      if (v18 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v20)
      {
        v21 = *(*(v20 + 48) + 16);
        if (v21 == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
        {
          v18 = v20;
        }

        else
        {
          v18 = 0;
        }

        if (v21 == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
        {
          if (*(v20 + 36))
          {
            v22 = v20 - 16;
          }

          else
          {
            v22 = 0;
          }

          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
          *v8 = NextResultAtOffset;
          v24 = *NextResultAtOffset;
          if (*NextResultAtOffset)
          {
            do
            {
              if (*(*(v24[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
              {
                v19 = 16;
              }

              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            v18 = v20;
          }
        }

        else
        {
          v18 = 0;
          if (mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v20))
          {
            *(this + 168) = 1;
          }
        }
      }

      else
      {
        v18 = 0;
      }

      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    v19 = 1;
  }

  MemrefSizeInBytes = mlir::getMemrefSizeInBytes((v33 & 0xFFFFFFFFFFFFFFF8), v19);
  v26 = [*(v32 + 16) metalDevice];
  v27 = [v26 heapBufferSizeAndAlignWithLength:MemrefSizeInBytes options:0];
  v29 = v28;
  if (v27)
  {
    v30 = (v27 - (v27 != 0)) / v28 + 1;
  }

  else
  {
    v30 = 0 / v28;
  }

  *(this + 18) = v30 * v29;
  *(this + 20) = getMemRefRowBytes((v33 & 0xFFFFFFFFFFFFFFF8));
  return this;
}

void GPU::ViewMemrefOpHandler::encodeOp(GPU::ViewMemrefOpHandler *this, id *a2)
{
  v3 = *(*(this + 2) + 648);
  v4 = [a2[1] rootCommandBuffer];
  v5 = *(this + 23);
  if (v4 != v5)
  {
    objc_storeStrong(this + 23, v4);
  }

  v6 = *(this + 17);
  v7 = *(v3 + 160);
  if (v7)
  {
    v8 = *(v3 + 144);
    v9 = 0x9DDFEA08EB382D69 * ((8 * *(this + 17) - 0xAE502812AA7333) ^ HIDWORD(*(this + 17)));
    v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v9 >> 47) ^ v9);
    v11 = (-348639895 * ((v10 >> 47) ^ v10)) & (v7 - 1);
    v12 = *(v8 + 16 * v11);
    if (v12 == v6)
    {
LABEL_5:
      if (v11 != v7)
      {
        v13 = *(v8 + 16 * v11 + 8);
        if (v13)
        {
LABEL_9:
          BaseRuntime::setTensorDataToDataMap(*(this + 2), *(this + 17), v13);
          v14 = *(this + 22);
          if (v14)
          {
            BaseRuntime::setTensorDataToDataMap(*(this + 2), v14, v13);
          }

          if (v4 != v5)
          {
            [v4 useResidencySet:*(v3 + 104)];
          }

          goto LABEL_32;
        }

        v6 = *(this + 17);
      }
    }

    else
    {
      v36 = 1;
      while (v12 != -4096)
      {
        v37 = v11 + v36++;
        v11 = v37 & (v7 - 1);
        v12 = *(v8 + 16 * v11);
        if (v12 == v6)
        {
          goto LABEL_5;
        }
      }
    }
  }

  v13 = GPU::MemrefBufferizer::getTensorDataForMemrefAtOffset(v3, v6, *(this + 16), *(this + 19));
  if (v13)
  {
    goto LABEL_9;
  }

  v15 = GPU::MemrefBufferizer::allocateBufferFromFusedAlloc(v3, *(this + 17), *(this + 16), *(this + 18), *(this + 19));
  v39 = v15;
  if (v4 != v5)
  {
    [v4 useResidencySet:*(v3 + 104)];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = ___ZN3GPU19ViewMemrefOpHandler8encodeOpEPNS_16EncodeDescriptorE_block_invoke;
    v40[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v40[4] = v3;
    [v4 addCompletedHandler:v40];
  }

  if (!v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = *(*(this + 15) - 8);
  MPSDataType = getMPSDataType((v16 & 0xFFFFFFFFFFFFFFF8));
  v17 = *(this + 22);
  if (v17 && ((*(**(this + 2) + 48))(*(this + 2), v17, 0), v18 = objc_claimAutoreleasedReturnValue(), (v19 = v18) != 0))
  {
    v20 = [(MPSGraphTensorData *)v18 mpsndarray];
    if (atomic_load_explicit(&v20[*MEMORY[0x1E69744C0]], memory_order_acquire) || *(this + 20) <= 0)
    {
    }

    else
    {
      v34 = *(this + 168);

      if ((v34 & 1) == 0)
      {
        v35 = [(MPSGraphTensorData *)v19 mpsndarray];
        v26 = [v35 descriptor];

        [(MPSGraphTensorData *)v19 mpsndarray];
        v13 = v19;
        v21 = 0;
        v28 = v13;
        goto LABEL_25;
      }
    }

    v21 = 0;
    v22 = v19;
  }

  else
  {
    v22 = 0;
    v21 = 1;
  }

  v23 = MEMORY[0x1E6974490];
  v24 = getMPSShapeFromMLIR(v16 & 0xFFFFFFFFFFFFFFF8);
  v25 = adaptForMPS(v24);
  v26 = [v23 descriptorWithDataType:MPSDataType shape:v25];

  [v26 setPreferPackedRows:1];
  v27 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:v39 offset:0 descriptor:v26];
  if (!v27 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = [[MPSGraphTensorData alloc] initWithMPSNDArray:v27 device:*(*(this + 2) + 48)];

  if (!v13)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v13 = 0;
      MTLReportFailure();
      v28 = v22;
      goto LABEL_25;
    }

    v13 = 0;
  }

  v28 = v22;
LABEL_25:
  BaseRuntime::setTensorDataToDataMap(*(this + 2), *(this + 17), v13);
  v29 = *(this + 22);
  v30 = v21 ^ 1;
  if (!v29)
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    BaseRuntime::setTensorDataToDataMap(*(this + 2), v29, v13);
  }

  WeakRetained = objc_loadWeakRetained((*(this + 2) + 72));
  v32 = [WeakRetained options];

  if ((v32 & 2) != 0)
  {
    v33 = getOpName(*(this + 15));
    [(MPSGraphTensorData *)v13 setLabel:v33];
  }

  GPU::MemrefBufferizer::setTensorDataForMemref(v3, *(this + 17), v13);

LABEL_32:
}

void GPU::DeallocOpHandler::~DeallocOpHandler(GPU::DeallocOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MemrefBackedOpHandler::~MemrefBackedOpHandler(GPU::MemrefBackedOpHandler *this)
{
  *this = &unk_1F5B51BF8;
  v2 = *(this + 16);
  if (v2 != this + 144)
  {
    v3 = this;
    free(v2);
    this = v3;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B51BF8;
  v2 = *(this + 16);
  if (v2 != this + 144)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::UseMemrefOpHandler::~UseMemrefOpHandler(GPU::UseMemrefOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::StridedArrayViewOpHandler::~StridedArrayViewOpHandler(GPU::StridedArrayViewOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ViewMemrefOpHandler::~ViewMemrefOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::AllocOpHandler::~AllocOpHandler(GPU::AllocOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::MemrefBackedOpHandler::MemrefBackedOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ParentOp = *(a2 + 16);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == **a1)
  {
    (*(***(a1 + 8) + 72))(**(a1 + 8), a2, **(a1 + 16));
    v6 = *(v4 + 136);
    if (v6 >= *(v4 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4 + 128, v4 + 144, v6 + 1, 8);
      LODWORD(v6) = *(v4 + 136);
    }

    *(*(v4 + 128) + 8 * v6) = a2;
    ++*(v4 + 136);
  }
}

GPU::CreateTextureTensorOpHandler *GPU::CreateTextureTensorOpHandler::CreateTextureTensorOpHandler(GPU::CreateTextureTensorOpHandler *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B51E48;
  v6 = objc_alloc(MEMORY[0x1E6974740]);
  v7 = [a2[6] metalDevice];
  v8 = [v6 initWithDevice:v7];
  v9 = *(this + 1);
  *(this + 1) = v8;

  return this;
}

void GPU::CreateTextureTensorOpHandler::encodeOp(GPU::CreateTextureTensorOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v34 = *(this + 3);
  v4 = *(*(v34 + 72) + 24);
  if (*(v34 + 36))
  {
    v5 = v34 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  Layout = mlir::mps::SampleGridOp::getLayout(&v34);
  MTLPixelFormat = getMTLPixelFormat(Layout);
  v9 = (*(**(this + 2) + 48))(*(this + 2), v4, 0);
  v10 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v11 = [v9 tensorDataType];
  v12 = v9;
  v13 = v12;
  if (v11 == 1)
  {
    v14 = [v12[14] objectAtIndexedSubscript:0];
    v15 = [v14 texture];
    v16 = [v15 pixelFormat];

    if (v16 != MTLPixelFormat && MTLReportFailureTypeEnabled())
    {
      Name = MTLPixelFormatGetName();
      v33 = MTLPixelFormatGetName();
      MTLReportFailure();
    }

    v17 = *NextResultAtOffset;
    if (!*NextResultAtOffset)
    {
      goto LABEL_15;
    }

    v18 = 0;
    v19 = *NextResultAtOffset;
    do
    {
      v19 = *v19;
      --v18;
    }

    while (v19);
    if (!v18)
    {
      goto LABEL_15;
    }

    v20 = 0;
    do
    {
      if (*(*(v17[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
      {
        ++v20;
      }

      v17 = *v17;
    }

    while (v17);
    v21 = v13;
    if (!v20)
    {
LABEL_15:
      v22 = *(a2 + 9);
      if (v22)
      {
        [v22 endEncoding];
        v23 = *(a2 + 9);
        *(a2 + 9) = 0;
      }

      v24 = [(MPSGraphTensorData *)v13 mpsndarrayWithCommandBuffer:*(a2 + 1), Name, v33];
      v21 = [[MPSGraphTensorData alloc] initWithMPSNDArray:v24];
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), NextResultAtOffset, v21);
  }

  else
  {
    v25 = [v12 mpsndarray];
    v26 = v25;
    if (v10)
    {
      if (!v25 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v27 = *(this + 2);
      v28 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      GPURegionRuntime::copyNDArrayToTarget(v27, v28, *(a2 + 1), this + 1, v26, v10, NextResultAtOffset, 0);
    }

    else
    {
      v29 = *NextResultAtOffset;
      if (*NextResultAtOffset)
      {
        v30 = 0;
        do
        {
          ++v30;
          v29 = *v29;
        }

        while (v29);
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v26 setReadCount:{objc_msgSend(v26, "readCount") + v31}];
      }

      BaseRuntime::setTensorDataToDataMap(*(this + 2), NextResultAtOffset, v13);
    }

    v21 = v13;
  }
}

void GPU::CreateTextureTensorOpHandler::~CreateTextureTensorOpHandler(GPU::CreateTextureTensorOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

EmitterObjC::StridedSliceOpHandler *EmitterObjC::StridedSliceOpHandler::StridedSliceOpHandler(EmitterObjC::StridedSliceOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B51EB0;
  v59 = a3;
  v5 = *(a3 + 9);
  v6 = v5[3];
  v7 = v5[7];
  v8 = v5[11];
  v9 = v5[15];
  if (*(a3 + 9))
  {
    v10 = a3 - 16;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  Index = mlir::pdl::ResultOp::getIndex(&v59);
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v59);
  Groups = mlir::mps::Conv3DOp::getGroups(&v59);
  mlir::mps::StridedSliceOp::getEndIsSize(&v59);
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  __p.__r_.__value_.__r.__words[0] = &v57;
  v49[0] = v7;
  DefiningOp = mlir::Value::getDefiningOp(v49);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__p, DefiningOp) || (v52 = &v55, v49[0] = v8, (v15 = mlir::Value::getDefiningOp(v49)) == 0) || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v52, v15) || (v51 = &v53, v49[0] = v9, (v16 = mlir::Value::getDefiningOp(v49)) == 0) || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v51, v16) & 1) == 0)
  {
    v40 = MEMORY[0x1E696AEC0];
    v25 = v49;
    (*(*a2 + 32))(v49, a2, NextResultAtOffset);
    if (v50 < 0)
    {
      v25 = v49[0];
    }

    v52 = v6;
    __p.__r_.__value_.__r.__words[0] = &v52;
    v26 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v52);
    v27 = v26 + 3;
    if (*(v26 + 47) < 0)
    {
      v27 = *v27;
    }

    v51 = v7;
    __p.__r_.__value_.__r.__words[0] = &v51;
    v28 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v51);
    v29 = v28 + 3;
    if (*(v28 + 47) < 0)
    {
      v29 = *v29;
    }

    v48 = v8;
    __p.__r_.__value_.__r.__words[0] = &v48;
    v30 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v48);
    v31 = v30 + 3;
    if (*(v30 + 47) < 0)
    {
      v31 = *v31;
    }

    v47 = v9;
    __p.__r_.__value_.__r.__words[0] = &v47;
    v32 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v47);
    v33 = v32 + 3;
    if (*(v32 + 47) < 0)
    {
      v33 = *v33;
    }

    v45 = 0;
    LOBYTE(v44) = 0;
    EmitObjC::emitTensorName(a2, NextResultAtOffset, &v44, &__p);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v24 = [v40 stringWithFormat:@"\n\t\tMPSGraphTensor *%s = \n\t\t[graph sliceTensor:%s\n\t\t\t   startTensor:%s\n\t\t\t\t endTensor:%s\n\t\t\t  strideTensor:%s\n\t\t\t\t startMask:%u\n\t\t\t\t   endMask:%u\n\t\t\t   squeezeMask:%u\n\t\t\t\t      name:%s]\n\t\t", v25, v27, v29, v31, v33, Index, Offset, Groups, p_p];;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v45 & 0x80000000) == 0)
      {
LABEL_38:
        if ((v50 & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

LABEL_42:
        operator delete(v49[0]);
        goto LABEL_39;
      }
    }

    else if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    operator delete(v44);
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_42;
  }

  v38 = Groups;
  v17 = MEMORY[0x1E696AEC0];
  (*(*a2 + 32))(v49, a2, NextResultAtOffset);
  if (v50 >= 0)
  {
    v18 = v49;
  }

  else
  {
    v18 = v49[0];
  }

  v52 = v6;
  __p.__r_.__value_.__r.__words[0] = &v52;
  v19 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v52);
  v20 = v19 + 3;
  if (*(v19 + 47) < 0)
  {
    v20 = *v20;
  }

  v39 = EmitterObjC::elementsAttrToObjcArray(v57, v58);
  v21 = EmitterObjC::elementsAttrToObjcArray(v55, v56);
  v22 = EmitterObjC::elementsAttrToObjcArray(v53, v54);
  v43 = 0;
  LOBYTE(v42) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v42, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &__p;
  }

  else
  {
    v23 = __p.__r_.__value_.__r.__words[0];
  }

  v24 = [v17 stringWithFormat:@"\n\t\tMPSGraphTensor *%s = \n\t\t[graph sliceTensor:%s\n\t\t\t\t\tstarts:%@\n\t\t\t\t\t  ends:%@\n\t\t\t\t   strides:%@\n\t\t\t\t startMask:%u\n\t\t\t\t   endMask:%u\n\t\t\t   squeezeMask:%u\n\t\t\t\t\t  name:%s]\n\t\t", v18, v20, v39, v21, v22, Index, Offset, v38, v23];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v50 < 0)
  {
    goto LABEL_42;
  }

LABEL_39:
  v35 = [*(a2 + 27) stringByAppendingString:v24];
  v36 = *(a2 + 27);
  *(a2 + 27) = v35;

  return this;
}

void sub_1E083F034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

void sub_1E083F140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if ((a38 & 0x80000000) == 0)
  {
    JUMPOUT(0x1E083F12CLL);
  }

  JUMPOUT(0x1E083F124);
}

void sub_1E083F150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if ((a38 & 0x80000000) == 0)
  {
    JUMPOUT(0x1E083F12CLL);
  }

  JUMPOUT(0x1E083F124);
}

void sub_1E083F160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if ((a38 & 0x80000000) == 0)
  {
    JUMPOUT(0x1E083F12CLL);
  }

  JUMPOUT(0x1E083F124);
}

void sub_1E083F170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if ((a38 & 0x80000000) == 0)
  {
    JUMPOUT(0x1E083F12CLL);
  }

  JUMPOUT(0x1E083F124);
}

void sub_1E083F340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterObjC::StridedSliceUpdateOpHandler *EmitterObjC::StridedSliceUpdateOpHandler::StridedSliceUpdateOpHandler(EmitterObjC::StridedSliceUpdateOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B51EC8;
  v66 = a3;
  v5 = *(a3 + 9);
  v6 = v5[3];
  v7 = v5[7];
  v8 = v5[11];
  v9 = v5[15];
  v10 = v5[19];
  if (*(a3 + 9))
  {
    v11 = a3 - 16;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  Index = mlir::pdl::ResultOp::getIndex(&v66);
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v66);
  Groups = mlir::mps::Conv3DOp::getGroups(&v66);
  mlir::mps::StridedSliceOp::getEndIsSize(&v66);
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  __p.__r_.__value_.__r.__words[0] = &v64;
  v56[0] = v8;
  DefiningOp = mlir::Value::getDefiningOp(v56);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__p, DefiningOp) || (v59 = &v62, v56[0] = v9, (v16 = mlir::Value::getDefiningOp(v56)) == 0) || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v59, v16) || (v58 = &v60, v56[0] = v10, (v17 = mlir::Value::getDefiningOp(v56)) == 0) || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v58, v17) & 1) == 0)
  {
    v28 = MEMORY[0x1E696AEC0];
    (*(*a2 + 32))(v56, a2, NextResultAtOffset);
    if (v57 >= 0)
    {
      v29 = v56;
    }

    else
    {
      v29 = v56[0];
    }

    v59 = v6;
    __p.__r_.__value_.__r.__words[0] = &v59;
    v30 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v59);
    v31 = v30 + 3;
    if (*(v30 + 47) < 0)
    {
      v31 = *v31;
    }

    v58 = v7;
    __p.__r_.__value_.__r.__words[0] = &v58;
    v32 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v58);
    v33 = v32 + 3;
    if (*(v32 + 47) < 0)
    {
      v33 = *v33;
    }

    v55 = v8;
    __p.__r_.__value_.__r.__words[0] = &v55;
    v34 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v55);
    v35 = v34 + 3;
    if (*(v34 + 47) < 0)
    {
      v35 = *v35;
    }

    v54 = v9;
    __p.__r_.__value_.__r.__words[0] = &v54;
    v36 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v54);
    v37 = v36 + 3;
    if (*(v36 + 47) < 0)
    {
      v37 = *v37;
    }

    v53 = v10;
    __p.__r_.__value_.__r.__words[0] = &v53;
    v38 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v53);
    v39 = v38 + 3;
    if (*(v38 + 47) < 0)
    {
      v39 = *v39;
    }

    v51 = 0;
    LOBYTE(v50) = 0;
    EmitObjC::emitTensorName(a2, NextResultAtOffset, &v50, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v27 = [v28 stringWithFormat:@"\n        MPSGraphTensor *%s = \n        [graph sliceUpdateDataTensor:%s\n                        updateTensor:%s\n                        startsTensor:%s\n                          endsTensor:%s\n                       stridesTensor:%s\n                        \t\tname:%s]\n        ", v29, v31, v33, v35, v37, v39, p_p];;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v51 & 0x80000000) == 0)
      {
LABEL_43:
        if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

LABEL_47:
        operator delete(v56[0]);
        goto LABEL_44;
      }
    }

    else if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    operator delete(v50);
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

  v18 = Index;
  v19 = MEMORY[0x1E696AEC0];
  v20 = v56;
  (*(*a2 + 32))(v56, a2, NextResultAtOffset);
  if (v57 < 0)
  {
    v20 = v56[0];
  }

  v59 = v6;
  __p.__r_.__value_.__r.__words[0] = &v59;
  v21 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v59);
  v22 = v21 + 3;
  if (*(v21 + 47) < 0)
  {
    v22 = *v22;
  }

  v58 = v7;
  __p.__r_.__value_.__r.__words[0] = &v58;
  v23 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v58);
  v24 = v23 + 3;
  if (*(v23 + 47) < 0)
  {
    v24 = *v24;
  }

  EmitterObjC::elementsAttrToObjcArray(v64, v65);
  v46 = v44 = v19;
  v45 = EmitterObjC::elementsAttrToObjcArray(v62, v63);
  v25 = EmitterObjC::elementsAttrToObjcArray(v60, v61);
  v49 = 0;
  LOBYTE(v48) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v48, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &__p;
  }

  else
  {
    v26 = __p.__r_.__value_.__r.__words[0];
  }

  v27 = [v44 stringWithFormat:@"\n        MPSGraphTensor *%s = \n        [graph sliceUpdateDataTensor:%s\n            \t        updateTensor:%s\n                \t\t      starts:%@\n                \t\t\t\tends:%@\n                \t\t\t strides:%@\n                \t\t   startMask:%u\n                  \t\t\t endMask:%u\n              \t\t\t squeezeMask:%u\n                      \t\t    name:%s]\n        ", v20, v22, v24, v46, v45, v25, v18, Offset, Groups, v26];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (v57 < 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  v41 = [*(a2 + 27) stringByAppendingString:v27];
  v42 = *(a2 + 27);
  *(a2 + 27) = v41;

  return this;
}

void sub_1E083F898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v41 - 169) < 0)
  {
    operator delete(*(v41 - 192));
  }

  _Unwind_Resume(a1);
}

void sub_1E083F9AC()
{
  if ((*(v0 - 169) & 0x80000000) == 0)
  {
    JUMPOUT(0x1E083F998);
  }

  JUMPOUT(0x1E083F990);
}

void sub_1E083F9BC()
{
  if ((*(v0 - 169) & 0x80000000) == 0)
  {
    JUMPOUT(0x1E083F998);
  }

  JUMPOUT(0x1E083F990);
}

void sub_1E083F9CC()
{
  if ((*(v0 - 169) & 0x80000000) == 0)
  {
    JUMPOUT(0x1E083F998);
  }

  JUMPOUT(0x1E083F990);
}

void sub_1E083F9DC()
{
  if ((*(v0 - 169) & 0x80000000) == 0)
  {
    JUMPOUT(0x1E083F998);
  }

  JUMPOUT(0x1E083F990);
}

void sub_1E083F9EC()
{
  if ((*(v0 - 169) & 0x80000000) == 0)
  {
    JUMPOUT(0x1E083F998);
  }

  JUMPOUT(0x1E083F990);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolMaxOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
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
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v25 = 15;
    qmemcpy(__dst, "mps.pooling_max", sizeof(__dst));
    v16 = &v24;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, __dst, v11, &__p);
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
    operator delete(*__dst);
    goto LABEL_16;
  }

  if (v25 < 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E0841888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E0841A50(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1E0841BE0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolAvgOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v26 = 260;
  v25[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v25);
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

    v24[4] = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v24[4] = 19;
    qmemcpy(__dst, "mps.pooling_average", sizeof(__dst));
    v16 = v24;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, __dst, v11, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v26) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v25[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v26) = v18;
  v19 = mlir::Builder::getStringAttr(a2, v25);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v24[4] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(*__dst);
    goto LABEL_16;
  }

  if ((v24[4] & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E08424B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolMaxGradientOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v25 = 260;
  v24[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v24);
  v11 = mlir::FileLineColLoc::get(StringAttr, a4, 0);
  if (!v9)
  {
    operator new();
  }

  v12 = [v9 UTF8String];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v23) = v13;
  if (v13)
  {
    memmove(&__dst, v12, v13);
  }

  *(&__dst + v15) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, v14, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v25) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v24[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v25) = v17;
  v18 = mlir::Builder::getStringAttr(a2, v24);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    operator delete(__dst);
    goto LABEL_15;
  }

  if (SHIBYTE(v23) < 0)
  {
    goto LABEL_17;
  }

LABEL_15:

  return v19;
}

void sub_1E0842CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolAvgGradientOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v25 = 260;
  v24[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v24);
  v11 = mlir::FileLineColLoc::get(StringAttr, a4, 0);
  if (!v9)
  {
    operator new();
  }

  v12 = [v9 UTF8String];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v23) = v13;
  if (v13)
  {
    memmove(&__dst, v12, v13);
  }

  *(&__dst + v15) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, v14, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v25) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v24[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v25) = v17;
  v18 = mlir::Builder::getStringAttr(a2, v24);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    operator delete(__dst);
    goto LABEL_15;
  }

  if (SHIBYTE(v23) < 0)
  {
    goto LABEL_17;
  }

LABEL_15:

  return v19;
}

void sub_1E08432DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E0843E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

void sub_1E08446B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  mlir::OperationState::~OperationState(&a42);

  _Unwind_Resume(a1);
}

uint64_t isValidIndicesInput4D(MPSGraphTensorNamedDataLayout a1, MPSGraphPoolingReturnIndicesMode a2, MPSGraphPooling4DOpDescriptor *a3)
{
  v5 = a3;
  v6 = [(MPSGraphPooling4DOpDescriptor *)v5 dilationRates];
  v7 = [v6 objectAtIndexedSubscript:0];
  if ([v7 intValue] == 1)
  {
    v8 = [(MPSGraphPooling4DOpDescriptor *)v5 dilationRates];
    v9 = [v8 objectAtIndexedSubscript:1];
    if ([v9 intValue] == 1)
    {
      v17 = [(MPSGraphPooling4DOpDescriptor *)v5 dilationRates];
      v10 = [v17 objectAtIndexedSubscript:2];
      if ([v10 intValue] == 1)
      {
        v16 = [(MPSGraphPooling4DOpDescriptor *)v5 dilationRates];
        v11 = [v16 objectAtIndexedSubscript:3];
        v12 = [v11 intValue] == 1;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = 2;
  if (a1)
  {
    v13 = 3;
  }

  v14 = v13 == a2;

  return v14 & v12;
}

void sub_1E0845F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0848B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E0848F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E084944C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E0849DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

id *GPU::MatrixSolverLUOpHandler::MatrixSolverLUOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B51F10;
  v6 = objc_alloc(MEMORY[0x1E6974878]);
  v7 = [a2[6] metalDevice];
  v8 = [v6 initWithDevice:v7 sourceCount:3];

  objc_storeStrong(this + 1, v8);
  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];

  return this;
}

void GPU::MatrixSolverLUOpHandler::encodeNDArrayOp(GPU::MatrixSolverLUOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(this + 3) + 72);
  v7 = v6[3];
  v8 = v6[7];
  v9 = v6[11];
  v20 = v5;
  v21 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v22 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v10 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  v11 = (*(**(this + 2) + 48))(*(this + 2), v9, 0);
  v12 = [v22 mpsndarray];
  v13 = [v10 mpsndarray];
  v14 = [v11 mpsndarray];
  v15 = [v21 mpsndarray];
  v16 = *(this + 1);
  if (!v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!v13 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!v14 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v18 = *(a2 + 1);
  v23[0] = v12;
  v23[1] = v13;
  v23[2] = v14;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  [v16 encodeToMPSCommandEncoder:v17 commandBuffer:v18 sourceArrays:v19 destinationArray:v15];
}

void GPU::MatrixSolverLUOpHandler::~MatrixSolverLUOpHandler(GPU::MatrixSolverLUOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::ConcatOpHandler::ConcatOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B51F78;
  *(v5 + 15) = 0;
  v6 = (v5 + 120);
  *(v5 + 16) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [*(this[2] + 6) metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  v11 = objc_alloc(MEMORY[0x1E69747C8]);
  v12 = [*(this[2] + 6) metalDevice];
  v13 = [v11 initWithDevice:v12];
  v14 = this[15];
  this[15] = v13;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  [*v6 setOptions:{objc_msgSend(*v6, "options") | 1}];
  v23[0] = 16;
  v15 = objc_autoreleasePoolPush();
  v16 = [MEMORY[0x1E6974490] descriptorWithDataType:536870944 dimensionCount:1 dimensionSizes:v23];
  [v16 setPreferPackedRows:1];
  v17 = objc_alloc(MEMORY[0x1E6974488]);
  v18 = [*(this[2] + 6) metalDevice];
  v19 = [v17 initWithDevice:v18 descriptor:v16];
  v20 = this[16];
  this[16] = v19;

  memset(v22, 0, sizeof(v22));
  [this[16] writeBytes:v22 strideBytes:0];

  objc_autoreleasePoolPop(v15);
  return this;
}

uint64_t GPU::ConcatOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  v4 = *(this + 3);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    if (*(v4 + 68) - 1 == a4)
    {
      return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
    }
  }

  else if (a4 == -1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
}

void GPU::ConcatOpHandler::encodeNDArrayOp(GPU::ConcatOpHandler *this, void **a2, NSArray *a3)
{
  v63[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v54 = this;
  v63[0] = *(this + 3);
  if (*(v63[0] + 36))
  {
    v6 = v63[0] - 16;
  }

  else
  {
    v6 = 0;
  }

  v46 = v5;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v48 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v47 = [v48 mpsndarray];
  if (!v47 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  ODSOperandIndexAndLength = mlir::mps::ConcatOp::getODSOperandIndexAndLength(v63, 0);
  if ((*(v63[0] + 46) & 0x80) != 0)
  {
    v9 = *(v63[0] + 72);
  }

  else
  {
    v9 = 0;
  }

  StaticType = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  v11 = StaticType;
  if (StaticType)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v12 = 0;
  }

  v60 = v11;
  v61 = v12;
  mlir::CallableOpInterface::getArgAttrsAttr(&v60);
  v49 = v13;
  v14 = *(v54 + 2);
  v15 = mlir::mps::ConcatOp::getODSOperandIndexAndLength(v63, 1u);
  Axis = RuntimeUtils::getAxis(v14, a2, *(*(v63[0] + 72) + 32 * v15 + 24), v49);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(v63);
  v45 = NextResultAtOffset;
  v18 = v49 + ~Axis;
  v19 = v18 - 1;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = InferredResultTypes;
  }

  v52 = v20;
  if (InferredResultTypes)
  {
    v18 = v19;
  }

  v56 = v18;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength != ODSOperandIndexAndLength)
  {
    v30 = (*(**(v54 + 2) + 48))(*(v54 + 2), *(v9 + 32 * ODSOperandIndexAndLength + 24), 0);
    v31 = [v30 mpsndarray];

    if (!v31 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v52)
    {
      v32 = [v31 descriptor];
      v33 = [v32 getShape];
      v34 = RuntimeUtils::expandShape(v33, v49, 1);

      v35 = *(v54 + 1);
      v36 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v37 = [v35 reshapeWithCommandEncoder:v36 commandBuffer:a2[1] sourceArray:v31 shape:v34 destinationArray:0];

      v31 = v37;
    }

    [v31 descriptor];
    [objc_claimAutoreleasedReturnValue() sliceRangeForDimension:v56];
    operator new();
  }

  v21 = 0;
  v53 = *(v54 + 1);
  v59 = v53;
  v51 = v47;
  v22 = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(v63);
  __p = v60;
  if (v22)
  {
    v23 = [*v60 descriptor];
    v24 = [v23 getShape];
    v25 = [v24 mutableCopy];

    v26 = [*__p descriptor];
    v27 = [v26 numberOfDimensions];

    v28 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    [v25 setObject:v28 atIndexedSubscript:v27 + ~v56];

    if (*(v51 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v51 setReadCount:{objc_msgSend(v51, "readCount") + 1}];
    }

    v58 = 0;
    v29 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v57 = GPU::doReshapeWithFallBack(v51, v25, v53, v29, a2[1], &v58, 1);

    LOBYTE(v29) = v58;
    v50 = v29 ^ 1;
  }

  else
  {
    v50 = 1;
    v57 = v51;
  }

  if ((v50 & 1) == 0)
  {
    v58 = 0;
    v38 = [v51 descriptor];
    v39 = [v38 getShape];
    v40 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v41 = GPU::doReshapeWithFallBack(v57, v39, v53, v40, a2[1], &v58, 1);

    v42 = *(v54 + 2);
    v43 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    GPURegionRuntime::copyNDArrayToTarget(v42, v43, a2[1], &v59, v41, v48, v45, 0);
  }

  if (__p)
  {
    do
    {
      v44 = *--v21;
    }

    while (v21 != __p);
    operator delete(__p);
  }
}

void GPU::ConcatOpHandler::~ConcatOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

unint64_t GPU::GatherOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

unint64_t GPU::GatherAlongAxisOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

GPU::QuantizedGatherOpHandler *GPU::QuantizedGatherOpHandler::QuantizedGatherOpHandler(GPU::QuantizedGatherOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B520D0;
  *(v6 + 60) = 0;
  v24 = a3;
  ODSOperandIndexAndLength = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v24, 0);
  v8 = *(*(v24 + 9) + 32 * ODSOperandIndexAndLength + 24);
  v9 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v24, 4);
  if ((*(v24 + 46) & 0x80) != 0)
  {
    v10 = *(v24 + 9);
    v11 = v9;
    if (HIDWORD(v9) + v9 == v9)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v11 = v9;
    if (HIDWORD(v9) + v9 == v9)
    {
      goto LABEL_3;
    }
  }

  v12 = *(v10 + 32 * v11 + 24);
LABEL_6:
  v13 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v24, 5);
  if ((*(v24 + 46) & 0x80) != 0)
  {
    v14 = *(v24 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_8:
      v16 = 0;
      if (v12)
      {
        goto LABEL_9;
      }

LABEL_13:
      *(this + 120) = 0;
      if (v16)
      {
        goto LABEL_10;
      }

LABEL_14:
      v17 = 0;
      goto LABEL_15;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(this + 120) = mlir::isConstantIntZero(v12) ^ 1;
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_10:
  v17 = !mlir::isConstantFPZero(v16);
LABEL_15:
  *(this + 121) = v17;
  v18 = [objc_alloc(MEMORY[0x1E6974690]) initWithDataType:getMPSDataType((*(v8 + 8) & 0xFFFFFFFFFFFFFFF8)) hasZeroPoint:*(this + 120) hasMinValue:*(this + 121)];
  v19 = objc_alloc(MEMORY[0x1E6974808]);
  v20 = [*(*(this + 2) + 48) metalDevice];
  v21 = [v19 initWithDevice:v20 quantizationDescriptor:v18];

  v22 = *(this + 1);
  *(this + 1) = v21;

  return this;
}

void sub_1E084BA54(_Unwind_Exception *a1)
{
  v4 = v3;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::QuantizedGatherOpHandler::encodeNDArrayOp(GPU::QuantizedGatherOpHandler *this, void **a2, NSArray *a3)
{
  v5 = a3;
  v73 = *(this + 3);
  v63 = v5;
  ODSOperandIndexAndLength = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v73, 0);
  v7 = *(*(v73 + 9) + 32 * ODSOperandIndexAndLength + 24);
  v8 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v73, 1);
  v9 = *(*(v73 + 9) + 32 * v8 + 24);
  v10 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v73, 3);
  v11 = *(*(v73 + 9) + 32 * v10 + 24);
  v12 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v13 = [v12 mpsndarray];

  v68 = v13;
  v14 = (*(**(this + 2) + 48))(*(this + 2), v9, 0);
  v15 = [v14 mpsndarray];

  v69 = v15;
  v16 = (*(**(this + 2) + 48))(*(this + 2), v11, 0);
  v17 = [v16 mpsndarray];

  if (v13)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18 || v17 == 0;
  v67 = v17;
  if (v19 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(this + 120) != 1)
  {
    goto LABEL_21;
  }

  v20 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v73, 4);
  if ((*(v73 + 46) & 0x80) == 0)
  {
    v21 = 0;
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
      goto LABEL_11;
    }

LABEL_15:
    v23 = *(v21 + 32 * v22 + 24);
    goto LABEL_16;
  }

  v21 = *(v73 + 9);
  v22 = v20;
  if (HIDWORD(v20) + v20 != v20)
  {
    goto LABEL_15;
  }

LABEL_11:
  v23 = 0;
LABEL_16:
  v24 = (*(**(this + 2) + 48))(*(this + 2), v23, 0);
  v25 = [v24 mpsndarray];

  if (v25)
  {
    if (*(this + 121) != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_21:
  v25 = 0;
  if (*(this + 121) != 1)
  {
    goto LABEL_30;
  }

LABEL_22:
  v26 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v73, 5);
  if ((*(v73 + 46) & 0x80) == 0)
  {
    v27 = 0;
    v28 = v26;
    if (HIDWORD(v26) + v26 == v26)
    {
      goto LABEL_24;
    }

LABEL_26:
    v29 = *(v27 + 32 * v28 + 24);
    goto LABEL_27;
  }

  v27 = *(v73 + 9);
  v28 = v26;
  if (HIDWORD(v26) + v26 != v26)
  {
    goto LABEL_26;
  }

LABEL_24:
  v29 = 0;
LABEL_27:
  v30 = (*(**(this + 2) + 48))(*(this + 2), v29, 0);
  v31 = [v30 mpsndarray];

  v65 = v31;
  if (v31)
  {
    goto LABEL_31;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_30:
  v65 = 0;
LABEL_31:
  v66 = [v15 descriptor];
  v64 = v25;
  v62 = [v13 descriptor];
  v32 = [v62 numberOfDimensions];
  v33 = *(this + 2);
  v34 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v73, 2);
  Axis = RuntimeUtils::getAxis(v33, a2, *(*(v73 + 9) + 32 * v34 + 24), v32);
  BatchDims = mlir::mpsx::QuantizedGatherOp::getBatchDims(&v73);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v9);
  v38 = StaticType;
  if (StaticType)
  {
    v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v39 = 0;
  }

  v72[0] = v38;
  v72[1] = v39;
  mlir::CallableOpInterface::getArgAttrsAttr(v72);
  if (v40)
  {
    v41 = [v66 getShape];
  }

  else
  {
    v41 = MEMORY[0x1E695E0F0];
  }

  v42 = *(this + 2);
  if (*(v73 + 9))
  {
    v43 = v73 - 16;
  }

  else
  {
    v43 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 0);
  v45 = GPURegionRuntime::getStaticType(v42, NextResultAtOffset);
  v46 = v45;
  if (v45)
  {
    v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8);
  }

  else
  {
    v47 = 0;
  }

  v71[0] = v46;
  v71[1] = v47;
  v48 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v49 = [v48 mpsndarray];
  v50 = *&v49[*MEMORY[0x1E69744F0]];
  mlir::CallableOpInterface::getArgAttrsAttr(v71);
  if (v50 != v51)
  {
    v52 = RuntimeUtils::expandShape(v41, [v41 count], 1);

    v41 = v52;
  }

  v53 = RuntimeUtils::expandShape(v41, [v41 count], 1);
  v54 = mlir::mpsx::QuantizedGatherOp::getBatchDims(&v73);
  v55 = RuntimeUtils::expandShape(v53, v54, Axis - BatchDims);

  v56 = *(*(this + 2) + 416);
  if (*(v69 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v69 setReadCount:{objc_msgSend(v69, "readCount") + 1}];
  }

  v70 = 0;
  v57 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v58 = GPU::doReshapeWithFallBack(v69, v55, v56, v57, a2[1], &v70, 1);

  v59 = *(this + 1);
  [v59 setBatchDimensions:Axis];
  [v59 setAllowNegativeIndices:mlir::mpsx::QuantizedGatherOp::getAllowNegativeIndices(&v73)];
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v60 addObject:v68];
  [v60 addObject:v58];
  [v60 addObject:v67];
  if (*(this + 120) == 1)
  {
    [v60 addObject:v64];
  }

  if (*(this + 121) == 1)
  {
    [v60 addObject:v65];
  }

  v61 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v59 encodeToMPSCommandEncoder:v61 commandBuffer:a2[1] sourceArrays:v60 destinationArray:v49];
}

void GPU::MultiaryKernelOpHandler<GPU::GatherOpHandler,mlir::mps::GatherOp,MPSNDArrayGatherND,2ul>::encodeNDArrayOp(uint64_t a1, void **a2, void *a3)
{
  v49[2] = *MEMORY[0x1E69E9840];
  v43 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::MultiaryKernelOpHandler<GPU::GatherOpHandler,mlir::mps::GatherOp,MPSNDArrayGatherND,2ul>::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v43 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v44 = v6;
  v7 = *(a1 + 16);
  v48 = *(a1 + 24);
  v8 = *(v48 + 72);
  v9 = *(v8 + 56);
  v10 = (*(*v7 + 48))(v7, *(v8 + 24), 0);
  v11 = [v10 mpsndarray];

  v12 = (*(**(a1 + 16) + 48))(*(a1 + 16), v9, 0);
  v13 = [v12 mpsndarray];

  if (v11)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v42 = [v13 descriptor];
  v41 = [v11 descriptor];
  Axis = RuntimeUtils::getAxis(*(a1 + 16), a2, *(*(v48 + 72) + 88), [v41 numberOfDimensions]);
  Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&v48);
  StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), v9);
  v18 = StaticType;
  if (StaticType)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v19 = 0;
  }

  v47[0] = v18;
  v47[1] = v19;
  mlir::CallableOpInterface::getArgAttrsAttr(v47);
  if (v20)
  {
    v21 = [v42 getShape];
  }

  else
  {
    v21 = MEMORY[0x1E695E0F0];
  }

  v22 = *(a1 + 16);
  if (*(v48 + 36))
  {
    v23 = v48 - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  v25 = GPURegionRuntime::getStaticType(v22, NextResultAtOffset);
  v26 = v25;
  if (v25)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  else
  {
    v27 = 0;
  }

  v46[0] = v26;
  v46[1] = v27;
  v28 = *&v44[*MEMORY[0x1E69744F0]];
  mlir::CallableOpInterface::getArgAttrsAttr(v46);
  if (v28 != v29)
  {
    v30 = RuntimeUtils::expandShape(v21, [v21 count], 1);

    v21 = v30;
  }

  v31 = RuntimeUtils::expandShape(v21, [v21 count], 1);
  v32 = mlir::pdl_interp::CheckOperandCountOp::getCount(&v48);
  v33 = RuntimeUtils::expandShape(v31, v32, Axis - Count);

  v34 = *(*(a1 + 16) + 416);
  if (*(v13 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v13 setReadCount:{objc_msgSend(v13, "readCount") + 1}];
  }

  v45 = 0;
  v35 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v36 = GPU::doReshapeWithFallBack(v13, v33, v34, v35, a2[1], &v45, 1);

  v37 = *(a1 + 8);
  [v37 setBatchDimensions:Axis];
  [v37 setAllowNegativeIndices:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v48)];
  v38 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v39 = a2[1];
  v49[0] = v11;
  v49[1] = v36;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  [v37 encodeToMPSCommandEncoder:v38 commandBuffer:v39 sourceArrays:v40 destinationArray:v44];
}

void GPU::GatherOpHandler::~GatherOpHandler(GPU::GatherOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::GatherAlongAxisOpHandler,mlir::mps::GatherAlongAxisOp,MPSNDArrayGatherND,2ul>::encodeNDArrayOp(uint64_t a1, void **a2, void *a3)
{
  v47[2] = *MEMORY[0x1E69E9840];
  v39 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::MultiaryKernelOpHandler<GPU::GatherAlongAxisOpHandler,mlir::mps::GatherAlongAxisOp,MPSNDArrayGatherND,2ul>::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v39 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v44 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v46 = v8;
  v9 = *(v8 + 72);
  v10 = *(v9 + 56);
  v11 = (*(*v7 + 48))(v7, *(v9 + 24), 0);
  v12 = [v11 mpsndarray];

  v13 = (*(**(a1 + 16) + 48))(*(a1 + 16), v10, 0);
  v14 = [v13 mpsndarray];

  if (v12)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v36 = v14;
  if (v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v43 = [v12 descriptor];
  v42 = [v14 descriptor];
  v40 = [v44 descriptor];
  v35 = [v40 numberOfDimensions];
  v16 = [v43 numberOfDimensions];
  v17 = ~RuntimeUtils::getAxis(*(a1 + 16), a2, *(*(v8 + 72) + 88), v16);
  v18 = MEMORY[0x1E69744E8];
  v19 = v16 + v17;
  if (v16 + v17)
  {
    [v43 transposeDimension:0 withDimension:v19];
    [v42 transposeDimension:0 withDimension:v19];
    [v40 transposeDimension:0 withDimension:v19];
    v20 = a2[1];
    v21 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v22 = [v12 safeArrayViewWithCommandBuffer:v20 computeEncoder:v21 descriptor:v43 aliasing:1];

    if (*(v44 + *v18) == 1)
    {
      [v44 setReadCount:{objc_msgSend(v44, "readCount") + 1}];
    }

    v23 = a2[1];
    v24 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v41 = [v44 safeArrayViewWithCommandBuffer:v23 computeEncoder:v24 descriptor:v40 aliasing:1];
  }

  else
  {
    v22 = v12;
    v41 = v44;
  }

  v25 = [v42 getShape];
  v37 = RuntimeUtils::expandShape(v25, [v25 count], 1);
  v38 = *(*(a1 + 16) + 416);
  if (*(v36 + *v18) == 1)
  {
    [v36 setReadCount:{objc_msgSend(v36, "readCount") + 1}];
  }

  v45 = 0;
  v26 = v36;
  v27 = v26;
  v28 = v26;
  if (v19)
  {
    v28 = [v26 arrayViewWithDescriptor:v42];
  }

  v29 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v30 = GPU::doReshapeWithFallBack(v28, v37, v38, v29, a2[1], &v45, 1);

  v31 = *(a1 + 8);
  [v31 setBatchDimensions:v35 - 1];
  [v31 setAllowNegativeIndices:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v46)];
  v32 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v33 = a2[1];
  v47[0] = v22;
  v47[1] = v30;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  [v31 encodeToMPSCommandEncoder:v32 commandBuffer:v33 sourceArrays:v34 destinationArray:v41];

  if (v19 && *(v41 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v41 setReadCount:{objc_msgSend(v41, "readCount") - 1}];
  }
}

void GPU::GatherAlongAxisOpHandler::~GatherAlongAxisOpHandler(GPU::GatherAlongAxisOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::QuantizedGatherOpHandler::~QuantizedGatherOpHandler(GPU::QuantizedGatherOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::GatherNDOpHandler,mlir::mps::GatherNDOp,MPSNDArrayGatherND,2ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v20 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::MultiaryKernelOpHandler<GPU::GatherNDOpHandler,mlir::mps::GatherNDOp,MPSNDArrayGatherND,2ul>::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v20 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 16);
  v21 = *(a1 + 24);
  v9 = *(v21 + 72);
  v10 = *(v9 + 56);
  v11 = (*(*v8 + 48))(v8, *(v9 + 24), 0);
  v12 = [v11 mpsndarray];

  v13 = (*(**(a1 + 16) + 48))(*(a1 + 16), v10, 0);
  v14 = [v13 mpsndarray];

  if (v12)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = *(a1 + 8);
  [v16 setBatchDimensions:mlir::pdl_interp::CheckOperandCountOp::getCount(&v21)];
  [v16 setAllowNegativeIndices:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v21)];
  v17 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v18 = *(a2 + 1);
  v22[0] = v12;
  v22[1] = v14;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  [v16 encodeToMPSCommandEncoder:v17 commandBuffer:v18 sourceArrays:v19 destinationArray:v7];
}

void GPU::GatherNDOpHandler::~GatherNDOpHandler(GPU::GatherNDOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::GatherOpHandler,mlir::mps::GatherOp,MPSNDArrayGatherND,2ul>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6974718]);
  v3 = [*(*(a1 + 16) + 48) metalDevice];
  obj = [v2 initWithDevice:v3];

  objc_storeStrong((a1 + 8), obj);
  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
}

void GPU::MultiaryKernelOpHandler<GPU::GatherOpHandler,mlir::mps::GatherOp,MPSNDArrayGatherND,2ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::GatherAlongAxisOpHandler,mlir::mps::GatherAlongAxisOp,MPSNDArrayGatherND,2ul>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6974718]);
  v3 = [*(*(a1 + 16) + 48) metalDevice];
  obj = [v2 initWithDevice:v3];

  objc_storeStrong((a1 + 8), obj);
  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
}

void GPU::MultiaryKernelOpHandler<GPU::GatherAlongAxisOpHandler,mlir::mps::GatherAlongAxisOp,MPSNDArrayGatherND,2ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::GatherNDOpHandler,mlir::mps::GatherNDOp,MPSNDArrayGatherND,2ul>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6974718]);
  v3 = [*(*(a1 + 16) + 48) metalDevice];
  obj = [v2 initWithDevice:v3];

  objc_storeStrong((a1 + 8), obj);
  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
}

void GPU::MultiaryKernelOpHandler<GPU::GatherNDOpHandler,mlir::mps::GatherNDOp,MPSNDArrayGatherND,2ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

uint64_t EmitBase::initializeOps(EmitBase *this, uint64_t a2)
{
  v2 = *(((*(this + 7) + 16 * ((*(*(this + 7) + 44) >> 23) & 1) + ((*(*(this + 7) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 7) + 40) + 8);
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
      mlir::detail::walk<mlir::ForwardIterator>(v7, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN8EmitBase13initializeOpsEvE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v9, 1);
      result = v6;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN8EmitBase13initializeOpsEvE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t result, uint64_t a2)
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
            mlir::detail::walk<mlir::ForwardIterator>(v9, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<EmitBase::initializeOps(void)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>, v10, 1);
            result = v8;
          }

          while (v8 != v7);
        }
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<EmitBase::initializeOps(void)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
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

id *GPU::OneHotOpHandler::OneHotOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B522F8;
  *(v6 + 15) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  v11 = this[15];
  this[15] = 0;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::OneHotOpHandler::encodeNDArrayOp(GPU::OneHotOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v45 = a3;
  v5 = *(this + 2);
  v54 = *(this + 3);
  v6 = (*(*v5 + 48))(v5, *(*(v54 + 72) + 24), 0);
  v48 = [v6 mpsndarray];

  v42 = [(NSArray *)v45 objectAtIndexedSubscript:0];
  v7 = [v42 mpsndarray];
  v43 = v7;
  if (v48)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  Type = mlir::pdl_interp::CheckTypeOp::getType(&v54);
  MPSDataType = getMPSDataType(Type);
  v11 = [v48 descriptor];
  v12 = [v11 getShape];
  v50 = a2;
  v51 = [v12 mutableCopy];

  v13 = [v51 count];
  GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, *(*(v54 + 72) + 56), &v52);
  v14 = v52;
  if (v52 != v53)
  {
    while (*v52 == *v14)
    {
      if (++v14 == v53)
      {
        goto LABEL_8;
      }
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

LABEL_8:
  v15 = [MEMORY[0x1E696AD98] numberWithInt:*v52];
  v16 = v13 - 1;
  [v51 setObject:v15 atIndexedSubscript:v13 - 1];

  Axis = RuntimeUtils::getAxis(*(this + 2), a2, *(*(v54 + 72) + 88), v13);
  v40 = v13 & (Axis >> 63);
  v41 = Axis;
  v18 = v40 + Axis;
  v47 = v43;
  v49 = v47;
  v44 = v18;
  if (v13 - 1 != v18)
  {
    v19 = [MEMORY[0x1E6974490] descriptorWithDataType:MPSDataType shape:v51];
    v20 = [v47 descriptor];
    [v19 setPreferPackedRows:{objc_msgSend(v20, "preferPackedRows")}];
    v21 = objc_alloc(MEMORY[0x1E6974488]);
    v22 = [*(*(this + 2) + 48) metalDevice];
    v49 = [v21 initWithDevice:v22 descriptor:v19];
  }

  v46 = *(this + 1);
  v23 = v48;
  v24 = v23;
  v25 = *(this + 15);
  if (!v25 || *(this + 40) != 1)
  {
    v56 = *(this + 3);
    v27 = [v23 descriptor];
    v28 = v27;
    if (v27)
    {
      [v27 getShapeVector];
    }

    else
    {
      v55 = 0;
    }

    if ((v55[1] - *v55) >= 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v26 = v25;

  v29 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v30 = *(a2 + 1);
  v58[0] = v24;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
  [v46 encodeToMPSCommandEncoder:v29 commandBuffer:v30 sourceArrays:v31 resultState:0 destinationArray:v49 kernelDAGObject:v26];

  if (v16 != v44)
  {
    v32 = [v49 descriptor];
    v33 = v16 - v44;
    v34 = v40 + v41 - v13 + 1;
    do
    {
      [v32 transposeDimension:0 withDimension:{v33--, v40, v41}];
    }

    while (!__CFADD__(v34++, 1));
    v36 = [v49 arrayViewWithDescriptor:{v32, v40, v41}];
    v37 = GPU::EncodeDescriptor::getcomputeEncoder(v50);
    v38 = *(v50 + 1);
    v57 = v36;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    [v46 encodeToMPSCommandEncoder:v37 commandBuffer:v38 sourceArrays:v39 destinationArray:v47];
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }
}

unint64_t GPU::OneHotOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 - 1 > 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }
}

void GPU::OneHotOpHandler::~OneHotOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void MPSEncoderContext::addBindingsIfNeeded(MPSEncoderContext *this, unint64_t a2)
{
  v4 = *this;
  v5 = *(this + 1);
  v6 = (v5 - *this) >> 5;
  if (a2 >= v6)
  {
    v7 = a2 + 1;
    v8 = a2 + 1 - v6;
    if (a2 + 1 <= v6)
    {
      if (a2 + 1 < v6)
      {
        v13 = v4 + 32 * v7;
        while (v5 != v13)
        {

          v14 = *(v5 - 32);
          v5 -= 32;
        }

        *(this + 1) = v13;
      }

      v15 = a2 - v6;
      if (a2 > v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = *(this + 2);
      if (v8 > (v9 - v5) >> 5)
      {
        if (!(v7 >> 59))
        {
          v10 = v9 - v4;
          if (v10 >> 4 > v7)
          {
            v7 = v10 >> 4;
          }

          v11 = v10 >= 0x7FFFFFFFFFFFFFE0;
          v12 = 0x7FFFFFFFFFFFFFFLL;
          if (!v11)
          {
            v12 = v7;
          }

          if (!(v12 >> 59))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
      }

      bzero(*(this + 1), 32 * v8);
      *(this + 1) = v5 + 32 * v8;
      v15 = a2 - v6;
      if (a2 > v6)
      {
LABEL_18:
        v16 = 32 * v6;
        do
        {
          v17 = *this + v16;
          v18 = *v17;
          *v17 = 0;

          *(v17 + 8) = 0;
          *(v17 + 16) = 0;
          v19 = *(v17 + 24);
          *(v17 + 24) = 0;

          v16 += 32;
          --v15;
        }

        while (v15);
      }
    }
  }

  v20 = *this + 32 * a2;
  v21 = *v20;
  *v20 = 0;

  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v22 = *(v20 + 24);
  *(v20 + 24) = 0;
}

id MTLSizeToNSArray(MTLSize *a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1->width];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a1->height, v2}];
  v7[1] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1->depth];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

id getGraphPorts(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37[3] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v31 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = 0;
  v29 = a4 + 2;
LABEL_2:
  if ([v6 count] > v8)
  {
    v9 = [v6 objectAtIndexedSubscript:v8];
    if ([v31 count] <= v8)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%u", a1, (v8 + 1), v29];
    }

    else
    {
      [v31 objectAtIndexedSubscript:v8];
    }
    v32 = ;
    v36[0] = @"Name";
    v36[1] = @"Type";
    v37[0] = v32;
    v37[1] = @"Buffer";
    v36[2] = @"Buffer";
    v34 = @"Size";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
    v35 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v37[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];

    v13 = v6;
    v14 = v7;
    [v7 addObject:v12];
    v15 = 0x9DDFEA08EB382D69 * ((8 * (v9 & 0x1FFFFFFF) + 8) ^ HIDWORD(v9));
    v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v15 >> 47) ^ v15);
    v17 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
    v18 = a4[1];
    if (!*&v18)
    {
      goto LABEL_19;
    }

    v19 = vcnt_s8(v18);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.u32[0] > 1uLL)
    {
      v20 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
      if (v17 >= *&v18)
      {
        v20 = v17 % *&v18;
      }
    }

    else
    {
      v20 = (*&v18 - 1) & v17;
    }

    v21 = *(*a4 + 8 * v20);
    if (!v21 || (v22 = *v21) == 0)
    {
LABEL_19:
      operator new();
    }

    if (v19.u32[0] < 2uLL)
    {
      while (1)
      {
        v23 = v22[1];
        if (v23 == v17)
        {
          if (v22[2] == v9)
          {
            goto LABEL_27;
          }
        }

        else if ((v23 & (*&v18 - 1)) != v20)
        {
          goto LABEL_19;
        }

        v22 = *v22;
        if (!v22)
        {
          goto LABEL_19;
        }
      }
    }

    while (1)
    {
      v24 = v22[1];
      if (v24 == v17)
      {
        if (v22[2] == v9)
        {
LABEL_27:
          v6 = v13;
          v7 = v14;
          v22[3] = v12;

          ++v8;
          goto LABEL_2;
        }
      }

      else
      {
        if (v24 >= *&v18)
        {
          v24 %= *&v18;
        }

        if (v24 != v20)
        {
          goto LABEL_19;
        }
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_19;
      }
    }
  }

  if ([v31 count])
  {
    v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"Name" ascending:1];
    v33 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    v27 = [v7 sortedArrayUsingDescriptors:v26];
  }

  else
  {
    v27 = v7;
  }

  return v27;
}

id getBuffersFromTensorDatas(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  for (i = 0; [v1 count] > i; ++i)
  {
    v4 = [v1 objectAtIndexedSubscript:i];
    v5 = [v4 mpsndarray];
    v6 = [v5 buffer];
    [v2 addObject:v6];
  }

  return v2;
}

void sub_1E0850204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0850800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E085230C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<void *,void *>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void *>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void *>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void *>>>::find<void *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v11 = result[1];
        if (v5 == v11)
        {
          if (result[2] == a2)
          {
            return result;
          }
        }

        else if ((v11 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v12 = result[1];
      if (v5 == v12)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }

        if (v12 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_1E0852E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0852E7CLL);
}

void sub_1E0852E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0852E7CLL);
  }

  JUMPOUT(0x1E0852E38);
}

void sub_1E08533BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0853420);
}

void sub_1E0853410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0853420);
  }

  JUMPOUT(0x1E08533DCLL);
}

void sub_1E0854F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08554A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if ((a18 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::StridedSliceUpdateOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,unsigned int &,unsigned int &,unsigned int &,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, char *a11)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    v29 = 1283;
    v28[2] = "mps.strided_slice_update";
    v28[3] = 24;
    v27 = 259;
    llvm::operator+(v28, &v26, v30);
    llvm::report_fatal_error(v30, 1);
  }

  mlir::OperationState::OperationState(v31, a2, v20);
  mlir::mps::StridedSliceUpdateOp::build(a1, v31, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
  v22 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v23;
}

void sub_1E0855DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E0855DDCLL);
}

void sub_1E0855DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
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
  JUMPOUT(0x1E0855E24);
}

void sub_1E0855E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1E0855E24);
  }

  JUMPOUT(0x1E0855DDCLL);
}

void sub_1E0856448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_1E08568E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
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
  JUMPOUT(0x1E085694CLL);
}

void sub_1E085693C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1E085694CLL);
  }

  JUMPOUT(0x1E0856904);
}

void sub_1E0857504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E0857538);
}

void sub_1E0857518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
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
  JUMPOUT(0x1E0857580);
}

void sub_1E0857570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1E0857580);
  }

  JUMPOUT(0x1E0857538);
}

void sub_1E0858F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0858FBCLL);
}

void sub_1E0858FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0858FBCLL);
  }

  JUMPOUT(0x1E0858F78);
}

void sub_1E0859B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0859B7CLL);
}

void sub_1E0859B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0859B7CLL);
  }

  JUMPOUT(0x1E0859B38);
}

void sub_1E0859E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0859E84);
}

void sub_1E0859E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0859E84);
  }

  JUMPOUT(0x1E0859E40);
}

void sub_1E085A4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E085A54CLL);
}

void sub_1E085A53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E085A54CLL);
  }

  JUMPOUT(0x1E085A508);
}

void sub_1E085A7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E085A860);
}

void sub_1E085A850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E085A860);
  }

  JUMPOUT(0x1E085A81CLL);
}

void sub_1E085ABC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E085B0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  mlir::OperationState::~OperationState(&a38);

  _Unwind_Resume(a1);
}

void sub_1E085B694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  mlir::OperationState::~OperationState(&a38);

  _Unwind_Resume(a1);
}

void sub_1E085BA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  mlir::OperationState::~OperationState(&a40);

  _Unwind_Resume(a1);
}

void sub_1E085BD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E085BDFCLL);
}

void sub_1E085BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E085BDFCLL);
  }

  JUMPOUT(0x1E085BDB8);
}

void sub_1E085C294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E085C7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E085CF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void *a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
    v27 = a22;
    if (!a22)
    {
LABEL_3:
      v28 = a25;
      if (!a25)
      {
LABEL_8:

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v28);
      goto LABEL_8;
    }
  }

  else
  {
    v27 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v27);
  v28 = a25;
  if (!a25)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1E085D7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (a19)
  {
    operator delete(a19);
    v27 = a22;
    if (!a22)
    {
LABEL_3:
      v28 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v27 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v27);
  v28 = __p;
  if (!__p)
  {
LABEL_5:

    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(v28);
  goto LABEL_5;
}

void sub_1E085E0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
    v27 = a22;
    if (!a22)
    {
LABEL_3:
      v28 = a25;
      if (!a25)
      {
LABEL_8:

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v28);
      goto LABEL_8;
    }
  }

  else
  {
    v27 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v27);
  v28 = a25;
  if (!a25)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1E085EB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v12)
  {
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E085F2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v19 = a12;
    if (!a12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = a12;
    if (!a12)
    {
LABEL_6:

      _Unwind_Resume(a1);
    }
  }

  operator delete(v19);
  goto LABEL_6;
}

void sub_1E08601D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1E08606F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1E0861640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (v12)
  {
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0861D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v14)
  {
    operator delete(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08628A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v14)
  {
    operator delete(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0862FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v14)
  {
    operator delete(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0863550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08647BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E08647F0);
}

void sub_1E08647D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0864834);
}

void sub_1E0864824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0864834);
  }

  JUMPOUT(0x1E08647F0);
}

void sub_1E0864C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0864CA4);
}

void sub_1E0864C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0864CA4);
  }

  JUMPOUT(0x1E0864C60);
}

void sub_1E0865508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E086556CLL);
}

void sub_1E086555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E086556CLL);
  }

  JUMPOUT(0x1E0865528);
}

GPU::RegionCallOpHandler *GPU::RegionCallOpHandler::RegionCallOpHandler(GPU::RegionCallOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B52360;
  *(v5 + 15) = 0;
  v8 = *(v5 + 3);
  RegionType = mlir::placement::RegionCall::getRegionType(&v8);
  switch(RegionType)
  {
    case 0:
      operator new();
    case 1:
      operator new();
    case 2:
      operator new();
  }

  if (!*(this + 15) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return this;
}

void sub_1E08656D0(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x1E12E5B90](v3, 0xA1C40E1112DF6);
  v5 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::RegionCallOpHandler::~RegionCallOpHandler(GPU::RegionCallOpHandler *this)
{
  *this = &unk_1F5B52360;
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
  *this = &unk_1F5B52360;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::RegionReturnOpHandler::~RegionReturnOpHandler(GPU::RegionReturnOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

EmitterViewerSPI::ReturnOpHandler *EmitterViewerSPI::ReturnOpHandler::ReturnOpHandler(EmitterViewerSPI::ReturnOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B52430;
  v23 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v23);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v22 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v22 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0;
  for (i = 24; (*(a3 + 46) & 0x80) != 0; i += 32)
  {
    if (v11 >= *(a3 + 17))
    {
      break;
    }

    v13 = *(*(a3 + 9) + i);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ret%d", v11];
    v15 = EmitViewerSPI::emitNodeInputPort(a2, v14, v13);
    [v10 addObject:v15];

    ++v11;
  }

  v16 = *(a2 + 22);
  v17 = [MPSGraphViewerNodeSPI alloc];
  v18 = [(MPSGraphViewerNodeSPI *)v17 initWithType:v20 inputs:v10 outputs:MEMORY[0x1E695E0F0] properties:MEMORY[0x1E695E0F0] regions:MEMORY[0x1E695E0F0]];
  [v16 addObject:v18];

  if (v22 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0865B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

mlir::Operation **GPU::VarHandleOpHandler::VarHandleOpHandler(mlir::Operation **this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B52460;
  *(v5 + 15) = 0;
  v6 = objc_alloc(MEMORY[0x1E6974740]);
  v7 = [*(this[2] + 6) metalDevice];
  v8 = [v6 initWithDevice:v7];
  v9 = this[1];
  this[1] = v8;

  v10 = getVariableHandleName(this[3]);
  v11 = this[15];
  this[15] = v10;

  return this;
}

id getVariableHandleName(mlir::Operation *a1)
{
  v12 = a1;
  v1 = MEMORY[0x1E696AEC0];
  Identifier = mlir::mpsx::VarHandleOp::getIdentifier(&v12);
  if (Identifier)
  {
    v4 = v3;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v11) = v3;
    if (v3)
    {
      memmove(&__p, Identifier, v3);
    }

    *(&__p + v4) = 0;
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }
  }

  else
  {
    __p = 0;
    v10 = 0;
    p_p = &__p;
    v11 = 0;
  }

  v6 = [v1 stringWithUTF8String:{p_p, __p, v10, v11}];
  if (SHIBYTE(v11) < 0)
  {
    v7 = v6;
    operator delete(__p);
    v6 = v7;
  }

  return v6;
}

void sub_1E0865DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::VarHandleOpHandler::encodeOp(GPU::VarHandleOpHandler *this, void **a2)
{
  v4 = *(this + 3);
  v5 = *(v4 + 36);
  v6 = v4 - 16;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  WeakRetained = objc_loadWeakRetained((*(this + 2) + 56));
  v10 = [WeakRetained[3] objectForKeyedSubscript:*(this + 15)];
  v16 = [v10 variable];

  v11 = [*(*(this + 2) + 48) metalDevice];
  v12 = [v16 mpsNDArrayWithDevice:v11];

  if (!v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v14 = *(this + 2);
  v15 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v14, v15, a2[1], this + 1, v12, v13, NextResultAtOffset, 0);
}

GPU::VariableFromTensorOpHandler *GPU::VariableFromTensorOpHandler::VariableFromTensorOpHandler(GPU::VariableFromTensorOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B524B0;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(*(this + 2) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = *(this + 1);
  *(this + 1) = v7;

  return this;
}

void GPU::VariableFromTensorOpHandler::encodeOp(GPU::VariableFromTensorOpHandler *this, void **a2)
{
  v4 = *(this + 3);
  if (*(v4 + 36))
  {
    v5 = v4 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v11 = (*(**(this + 2) + 48))(*(this + 2), *(*(v4 + 72) + 24), 0);
  v7 = [v11 mpsndarray];
  v8 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v9 = *(this + 2);
  v10 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v9, v10, a2[1], this + 1, v7, v8, NextResultAtOffset, 0);
}

id *GPU::ReadVariableOpHandler::ReadVariableOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B52500;
  *(v5 + 15) = 0;
  v6 = objc_alloc(MEMORY[0x1E6974740]);
  v7 = [*(this[2] + 6) metalDevice];
  v8 = [v6 initWithDevice:v7];
  v9 = this[1];
  this[1] = v8;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  v14 = *(*(this[3] + 9) + 24);
  if (*(*(mlir::Value::getDefiningOp(&v14) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v14);
    v10 = getVariableHandleName(DefiningOp);
  }

  else
  {
    v10 = 0;
  }

  v12 = this[15];
  this[15] = v10;

  return this;
}

void GPU::ReadVariableOpHandler::encodeOp(GPU::ReadVariableOpHandler *this, void **a2)
{
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
  if (*(this + 15))
  {
    WeakRetained = objc_loadWeakRetained((*(this + 2) + 56));
    v11 = [WeakRetained[3] objectForKeyedSubscript:*(this + 15)];

    v12 = [*(*(this + 2) + 128) objectForKeyedSubscript:v11];
    v20 = [v12 mpsndarray];
  }

  else
  {
    v20 = 0;
  }

  v13 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    v14 = v20;
    v15 = [v14 readCount];
    v16 = *NextResultAtOffset;
    if (*NextResultAtOffset)
    {
      v17 = 0;
      do
      {
        ++v17;
        v16 = *v16;
      }

      while (v16);
      v16 = v17;
    }

    [v14 setReadCount:v16 + v15];
    v20 = v14;
  }

  else
  {
    v14 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
    v20 = [v14 mpsndarray];
  }

LABEL_16:
  v18 = *(this + 2);
  v19 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v18, v19, a2[1], this + 1, v20, v13, NextResultAtOffset, 0);
}

GPU::AssignVariableOpHandler *GPU::AssignVariableOpHandler::AssignVariableOpHandler(GPU::AssignVariableOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B52550;
  *(v5 + 15) = 0;
  v6 = objc_alloc(MEMORY[0x1E6974740]);
  v7 = [*(*(this + 2) + 48) metalDevice];
  v8 = [v6 initWithDevice:v7];
  v9 = *(this + 1);
  *(this + 1) = v8;

  v18 = *(*(*(this + 3) + 72) + 24);
  if (*(*(mlir::Value::getDefiningOp(&v18) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v18);
    v16 = getVariableHandleName(DefiningOp);
    v12 = *(this + 15);
    *(this + 15) = v16;
  }

  else
  {
    v10 = *(this + 15);
    *(this + 15) = 0;

    v11 = objc_alloc(MEMORY[0x1E6974740]);
    v12 = [*(*(this + 2) + 48) metalDevice];
    v13 = [v11 initWithDevice:v12];
    v14 = *(this + 1);
    *(this + 1) = v13;
  }

  return this;
}

void GPU::AssignVariableOpHandler::encodeNDArrayOp(GPU::AssignVariableOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v28 = a3;
  v5 = *(this + 3);
  v6 = (*(**(this + 2) + 48))(*(this + 2), *(*(v5 + 72) + 56), 0);
  v7 = [v6 mpsndarray];
  if (*(this + 15))
  {
    WeakRetained = objc_loadWeakRetained((*(this + 2) + 56));
    v9 = [WeakRetained[3] objectForKeyedSubscript:*(this + 15)];

    v10 = [*(*(this + 2) + 128) objectForKeyedSubscript:v9];
    v11 = [v10 mpsndarray];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        MPSDecrementReadCount(v11);
      }
    }

    v12 = [v7 numberOfDimensions];
    v13 = [v9 shape];
    v14 = [v13 count];

    if (v12 == v14)
    {
      v15 = v7;
    }

    else
    {
      v23 = [v7 descriptor];
      v24 = [v9 shape];
      [v23 reshapeWithShape:v24];

      if (*(v7 + *MEMORY[0x1E69744E8]) == 1)
      {
        v25 = v7;
        [v25 setReadCount:{objc_msgSend(v25, "readCount") + 1}];
      }

      v26 = *(a2 + 1);
      v27 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v15 = [v7 safeArrayViewWithCommandBuffer:v26 computeEncoder:v27 descriptor:v23 aliasing:0];

      if (!v15 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    [*(*(this + 2) + 128) setObject:v6 forKey:v9];
  }

  else
  {
    v16 = (*(**(this + 2) + 48))(*(this + 2), *(*(v5 + 72) + 24), 0);
    v17 = [v16 mpsndarray];

    if (v7 != v17)
    {
      v18 = *(this + 1);
      v19 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v20 = *(a2 + 1);
      v29[0] = v7;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v22 = [v16 mpsndarray];
      [v18 encodeToMPSCommandEncoder:v19 commandBuffer:v20 sourceArrays:v21 resultState:0 destinationArray:v22 kernelDAGObject:0];
    }

    v15 = v7;
  }
}

void GPU::VarHandleOpHandler::~VarHandleOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::VariableFromTensorOpHandler::~VariableFromTensorOpHandler(GPU::VariableFromTensorOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ReadVariableOpHandler::~ReadVariableOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::AssignVariableOpHandler::~AssignVariableOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::CallOpHandler::CallOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B52600;
  *(v6 + 120) = 0;
  *(v6 + 16) = 0;
  v7 = (v6 + 128);
  *(v6 + 17) = 0;
  *(v6 + 18) = 0;
  v8 = *(a3 + 9);
  if (v8)
  {
    v9 = a3 - 16;
  }

  else
  {
    v9 = 0;
  }

  if (!v8)
  {
LABEL_18:
    v16 = 1;
    goto LABEL_19;
  }

  v10 = 0;
  while (1)
  {
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, v10) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8))
    {
      __dst = 0;
      v30 = 0;
      goto LABEL_6;
    }

    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    __dst = v11;
    v30 = v12;
    if (v11)
    {
      if (!mlir::CallOpInterface::getArgOperands(&__dst))
      {
        goto LABEL_17;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__dst);
      if (v14)
      {
        break;
      }
    }

LABEL_6:
    if (++v10 == v8)
    {
      goto LABEL_18;
    }
  }

  v15 = 8 * v14;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_6;
    }
  }

LABEL_17:
  v16 = 0;
LABEL_19:
  *(this + 120) = v16;
  objc_storeStrong(v7, this[1]);
  v17 = objc_opt_new();
  v18 = this[17];
  this[17] = v17;

  [this[17] setDisableSynchronizeResults:1];
  v32 = this[3];
  v19 = MEMORY[0x1E696AEC0];
  SymbolName = mlir::mps::CallOp::getSymbolName(&v32);
  if (SymbolName)
  {
    v22 = v20;
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v31) = v20;
    if (v20)
    {
      memmove(&__dst, SymbolName, v20);
    }

    *(&__dst + v22) = 0;
    if (v31 >= 0)
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
    v30 = 0;
    p_dst = &__dst;
    v31 = 0;
  }

  v24 = [v19 stringWithUTF8String:p_dst];
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__dst);
  }

  v25 = [*(this[2] + 10) objectForKeyedSubscript:v24];
  v26 = this[18];
  this[18] = v25;

  if (!this[18] && MTLReportFailureTypeEnabled())
  {
    v28 = v24;
    MTLReportFailure();
  }

  [this[18] initializeFuncNamesInOriginalModule];
  if (*(this[18] + 904) == 1 && *(this[18] + 111) >= 2uLL)
  {
    [this[17] setEntryFunctionName:v24];
  }

  return this;
}

void sub_1E0867114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v16);
  _Unwind_Resume(a1);
}

void GPU::CallOpHandler::encodeOp(GPU::CallOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v4 = *(this + 3);
  v57 = v4;
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v4 + 68)];
    if ((*(v4 + 46) & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    if ((*(v4 + 46) & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  v6 = *(v4 + 68);
  if (v6)
  {
    v7 = 0;
    v8 = 24;
    do
    {
      v9 = (*(**(this + 2) + 48))(*(this + 2), *(*(v57 + 72) + v8), 0);
      [v5 setObject:v9 atIndexedSubscript:v7];

      ++v7;
      v8 += 32;
    }

    while (v6 != v7);
  }

LABEL_6:
  (**a2)(a2);
  v53 = v5;
  if (*(this + 120) == 1)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(*(this + 3) + 36)];
    v11 = *(this + 3);
    v12 = *(v11 + 36);
    v13 = v11 - 16;
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, i);
        v17 = (*(**(this + 2) + 80))(*(this + 2), NextResultAtOffset, *(a2 + 1), 0, 0, 1);
        [v10 addObject:v17];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = [*(this + 18) encodeToCommandBuffer:*(a2 + 1) inputsArray:v5 resultsArray:v10 executionDescriptor:*(this + 17)];

  (**a2)(a2);
  if ((*(this + 120) & 1) == 0)
  {
    v19 = MEMORY[0x1E696AEC0];
    v52 = v18;
    SymbolName = mlir::mps::CallOp::getSymbolName(&v57);
    if (SymbolName)
    {
      v22 = v20;
      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v20 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v59) = v20;
      if (v20)
      {
        memmove(&__dst, SymbolName, v20);
      }

      *(&__dst + v22) = 0;
      if (v59 >= 0)
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
      __dst = 0uLL;
      p_dst = &__dst;
      v59 = 0;
    }

    v24 = [v19 stringWithUTF8String:p_dst];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__dst);
    }

    v51 = v24;
    [v18 count];
    v25 = [v18 count];
    if (v25 != *(v57 + 36) && MTLReportFailureTypeEnabled())
    {
      v50 = v24;
      MTLReportFailure();
    }

    v26 = v57;
    if (*(v57 + 36))
    {
      v27 = 0;
      do
      {
        v28 = v26 - 24 * (v27 - 5) - 96;
        v29 = (v26 - 16 * (v27 + 1));
        if (v27 <= 5)
        {
          v30 = v29;
        }

        else
        {
          v30 = v28;
        }

        v31 = [v18 objectAtIndexedSubscript:{v27, v50}];
        v32 = *(*(*(this + 2) + 592) + 32);
        if ((*(*v32 + 24))(v32, v30))
        {
          goto LABEL_53;
        }

        v33 = (v30[1] & 0xFFFFFFFFFFFFFFF8);
        if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8))
        {
          v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
          *&__dst = v33;
          *(&__dst + 1) = v34;
          if (v33)
          {
            if (!mlir::CallOpInterface::getArgOperands(&__dst))
            {
              goto LABEL_46;
            }

            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__dst);
            if (v36)
            {
              v37 = 8 * v36;
              while (*ArgAttrsAttr != 0x8000000000000000)
              {
                ++ArgAttrsAttr;
                v37 -= 8;
                if (!v37)
                {
                  goto LABEL_53;
                }
              }

LABEL_46:
              v38 = (v30[1] & 0xFFFFFFFFFFFFFFF8);
              if (v38)
              {
                v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
                if (v39)
                {
                  v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
                }

                else
                {
                  v38 = 0;
                }
              }

              else
              {
                v39 = 0;
              }

              v56[0] = v38;
              v56[1] = v39;
              v40 = [v31 shape];
              MPSShapeToVector<unsigned long long>(v40, &__p);

              *&__dst = __p;
              *(&__dst + 1) = (v55 - __p) >> 3;
              LOBYTE(v59) = 1;
              isSplat = mlir::ElementsAttr::isSplat(v56);
              v42 = mlir::ShapedType::cloneWith(v56, &__dst, isSplat);
              v43 = *(this + 2);
              v60[1] = v42;
              v61 = v30;
              v60[0] = *(mlir::Value::getParentRegion(&v61) + 2);
              *&__dst = v60;
              v44 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v43 + 288), v60);
              *&__dst = v61;
              std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v44 + 3, &__dst);
              if (__p)
              {
                v55 = __p;
                operator delete(__p);
              }
            }
          }
        }

        else
        {
          __dst = 0uLL;
        }

LABEL_53:
        v45 = (*(**(this + 2) + 48))(*(this + 2), v30, 0);
        v46 = *(this + 2);
        v47 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
        v48 = *(a2 + 1);
        v49 = [v31 mpsndarray];
        GPURegionRuntime::copyNDArrayToTarget(v46, v47, v48, this + 16, v49, v45, v30, 0);

        ++v27;
        v26 = v57;
        v18 = v52;
        v5 = v53;
      }

      while (v27 != *(v57 + 36));
    }
  }
}

void sub_1E0867780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void GPU::CallOpHandler::~CallOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void sub_1E08685EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlir::OperationState::~OperationState(&a38);

  _Unwind_Resume(a1);
}

void sub_1E0868770(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::LocalConvolutionOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v26 = 260;
  v25[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v25);
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

    v24[2] = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v24[2] = 21;
    qmemcpy(__dst, "mps.local_convolution", sizeof(__dst));
    v16 = v24;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, __dst, v11, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v26) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v25[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v26) = v18;
  v19 = mlir::Builder::getStringAttr(a2, v25);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v24[2] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(*__dst);
    goto LABEL_16;
  }

  if ((v24[2] & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E086944C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t getKernelSizeFromShape(void *a1, uint64_t **a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12[0] = 2;
  IntegerType = mlir::Builder::getIntegerType(a2, 64, 0);
  v5 = mlir::RankedTensorType::get(v12, 1, IntegerType, 0);
  v6 = v5;
  if (v5)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 objectAtIndexedSubscript:1];
  v12[0] = [v8 unsignedLongValue];
  v9 = [v3 objectAtIndexedSubscript:0];
  v12[1] = [v9 unsignedLongValue];
  v10 = mlir::DenseElementsAttr::getFromRawBuffer(v6, v7, v12, 16, 8, 1, 0);

  return v10;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionMaxOp,(MPSNDArrayReductionOperation)1>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52668;
  v12 = a3;
  v6 = objc_alloc(MEMORY[0x1E6974840]);
  v7 = [*(*(a1 + 16) + 48) metalDevice];
  if (mlir::mps::StridedSliceOp::getEndIsSize(&v12))
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v6 initWithDevice:v7 axis:0 operation:v8];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionMinOp,(MPSNDArrayReductionOperation)0>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B526B8;
  v12 = a3;
  v6 = objc_alloc(MEMORY[0x1E6974840]);
  v7 = [*(*(a1 + 16) + 48) metalDevice];
  if (mlir::mps::StridedSliceOp::getEndIsSize(&v12))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 initWithDevice:v7 axis:0 operation:v8];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionSumOp,(MPSNDArrayReductionOperation)4>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52CC8;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:4];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionProdOp,(MPSNDArrayReductionOperation)5>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52D18;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:5];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionAndOp,(MPSNDArrayReductionOperation)8>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52D68;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:8];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionOrOp,(MPSNDArrayReductionOperation)9>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52DB8;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:9];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionArgMinOp,(MPSNDArrayReductionOperation)6>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52E08;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:6];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionArgMaxOp,(MPSNDArrayReductionOperation)7>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52E58;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:7];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

id *GPU::RMSNormOpHandler::RMSNormOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B52988;
  *(v6 + 15) = 0;
  *(v6 + 128) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974890]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8 axis:0 epsilon:0.0];

  objc_storeStrong(this + 1, v9);
  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  v10 = this[3];
  this[15] = v10;
  v14 = *(v10[9] + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v14);
  if (!DefiningOp)
  {
    *(this + 128) = 0;
    if (*(this + 40) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    GPU::RMSNormOpHandler::setAxes(this, 0);
    goto LABEL_9;
  }

  v12 = *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id;
  *(this + 128) = v12;
  if (v12)
  {
    GPU::RMSNormOpHandler::setEpsilon(this, 0);
  }

  if (*(this + 40) == 1)
  {
    goto LABEL_8;
  }

LABEL_9:

  return this;
}

void sub_1E086A978(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::RMSNormOpHandler::setEpsilon(GPU::RMSNormOpHandler *this, GPU::EncodeDescriptor *a2)
{
  GPURegionRuntime::waitAndReadFPTensorData(*(this + 2), a2, *(*(*(this + 15) + 72) + 56), &__p);
  if (v5 - __p != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  LODWORD(v3) = *__p;
  [*(this + 1) setEpsilon:v3];
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1E086AA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::RMSNormOpHandler::setAxes(GPU::RMSNormOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v18 = *(this + 1);
  v4 = *(*(this + 15) + 72);
  v5 = *(v4 + 24);
  v6 = *(v4 + 88);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v5);
  v9 = StaticType;
  if (StaticType)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v10 = 0;
  }

  __p = v9;
  v21 = v10;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v12 = v11;
  if (v6)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, v6, &__p);
    v13 = v21;
    v14 = v18;
  }

  else
  {
    __p = 0;
    v21 = 0;
    v22 = 0;
    v14 = v18;
    if (v11)
    {
      operator new();
    }

    v13 = 0;
  }

  v15 = __p;
  if (__p != v13)
  {
    do
    {
      if (*v15 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = 0;
      }

      v17 = [MEMORY[0x1E696AD98] numberWithInteger:{v16 + ~*v15, v18}];
      [v7 addObject:v17];

      ++v15;
    }

    while (v15 != v13);
    v14 = v18;
    v15 = __p;
  }

  if (v15)
  {
    v21 = v15;
    operator delete(v15);
    v14 = v18;
  }

  [v14 setAxes:{v7, v18}];
}

void sub_1E086AD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    JUMPOUT(0x1E086AD40);
  }

  JUMPOUT(0x1E086AD44);
}

void GPU::RMSNormOpHandler::encodeNDArrayOp(GPU::RMSNormOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((*(this + 128) & 1) == 0)
  {
    GPU::RMSNormOpHandler::setEpsilon(this, a2);
  }

  if ((*(this + 40) & 1) == 0)
  {
    GPU::RMSNormOpHandler::setAxes(this, a2);
  }

  v6 = *(*(*(this + 15) + 72) + 24);
  v7 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v8 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v9 = [v7 mpsndarray];
  v10 = [v8 mpsndarray];
  v11 = *(this + 1);
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v12 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v13 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v14 = *(a2 + 1);
    v15 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v11 encodeToMPSCommandEncoder:v13 commandBuffer:v14 sourceArrays:v12 resultState:0 destinationArray:v9 kernelDAGObject:v15];
  }

  else
  {
    if ((!v9 || !v10) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v16 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v17 = *(a2 + 1);
    v19[0] = v10;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v11 encodeToMPSCommandEncoder:v16 commandBuffer:v17 sourceArrays:v18 resultState:0 destinationArray:v9 kernelDAGObject:0];
  }
}

unint64_t GPU::RMSNormOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

id *GPU::SoftmaxOpHandler::SoftmaxOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B529D8;
  v5 = objc_alloc(MEMORY[0x1E6974898]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::SoftmaxOpHandler::encodeNDArrayOp(GPU::SoftmaxOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(this + 3);
  v7 = *(*(v6 + 72) + 24);
  v29 = v5;
  v31 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v30 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v33 = [v31 mpsndarray];
  v32 = [v30 mpsndarray];
  v34 = *(this + 1);
  v8 = *(*(v6 + 72) + 56);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v7);
  v11 = StaticType;
  if (StaticType)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v12 = 0;
  }

  __p = v11;
  v36 = v12;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v14 = v13;
  if (v8)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, v8, &__p);
    v15 = v36;
  }

  else
  {
    __p = 0;
    v36 = 0;
    v37 = 0;
    if (v13)
    {
      operator new();
    }

    v15 = 0;
  }

  v16 = __p;
  if (__p == v15)
  {
    v20 = a2;
    v17 = v31;
    if (!__p)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v17 = v31;
  do
  {
    if (*v16 >= 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    v19 = [MEMORY[0x1E696AD98] numberWithInteger:v18 + ~*v16];
    [v9 addObject:v19];

    ++v16;
  }

  while (v16 != v15);
  v16 = __p;
  v20 = a2;
  if (__p)
  {
LABEL_13:
    v36 = v16;
    operator delete(v16);
  }

LABEL_14:
  [v9 count];
  if ([v9 count] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v21 = [v9 objectAtIndexedSubscript:0];
  [v34 setAxis:{objc_msgSend(v21, "unsignedIntegerValue")}];

  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v22 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v23 = GPU::EncodeDescriptor::getcomputeEncoder(v20);
    v24 = *(v20 + 1);
    v25 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v34 encodeToMPSCommandEncoder:v23 commandBuffer:v24 sourceArrays:v22 resultState:0 destinationArray:v33 kernelDAGObject:v25];
  }

  else
  {
    if ((!v33 || !v32) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v26 = GPU::EncodeDescriptor::getcomputeEncoder(v20);
    v27 = *(v20 + 1);
    v38[0] = v32;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    [v34 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v28 resultState:0 destinationArray:v33 kernelDAGObject:0];
  }
}