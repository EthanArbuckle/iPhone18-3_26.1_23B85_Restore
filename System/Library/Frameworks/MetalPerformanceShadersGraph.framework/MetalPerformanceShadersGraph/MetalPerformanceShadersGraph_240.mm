void sub_1E072F9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E072FA54);
}

void sub_1E072FA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072FA54);
  }

  JUMPOUT(0x1E072FA10);
}

uint64_t createUnaryArithmeticOp<mlir::mps::TanhOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v23);
  v8 = v7;
  v30 = 260;
  v29[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = (&__dst + v14);
  }

  else
  {
    v28 = 8;
    __dst = 0x686E61742E73706DLL;
    v15 = &v27;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v30) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v29);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v24 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v29[0] = mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::Value &>(a1, v19, v20) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E072FCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E072FD54);
}

void sub_1E072FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072FD54);
  }

  JUMPOUT(0x1E072FD10);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ASinOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v23);
  v8 = v7;
  v30 = 260;
  v29[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = (&__dst + v14);
  }

  else
  {
    v28 = 8;
    __dst = 0x6E6973612E73706DLL;
    v15 = &v27;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v30) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v29);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v24 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v29[0] = mlir::OpBuilder::create<mlir::mps::ASinOp,mlir::Value &>(a1, v19, v20) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E072FFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0730054);
}

void sub_1E0730044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730054);
  }

  JUMPOUT(0x1E0730010);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ACosOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v23);
  v8 = v7;
  v30 = 260;
  v29[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = (&__dst + v14);
  }

  else
  {
    v28 = 8;
    __dst = 0x736F63612E73706DLL;
    v15 = &v27;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v30) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v29);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v24 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v29[0] = mlir::OpBuilder::create<mlir::mps::ACosOp,mlir::Value &>(a1, v19, v20) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E07302F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0730354);
}

void sub_1E0730344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730354);
  }

  JUMPOUT(0x1E0730310);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ATanOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v23);
  v8 = v7;
  v30 = 260;
  v29[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = (&__dst + v14);
  }

  else
  {
    v28 = 8;
    __dst = 0x6E6174612E73706DLL;
    v15 = &v27;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v30) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v29);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v24 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v29[0] = mlir::OpBuilder::create<mlir::mps::ATanOp,mlir::Value &>(a1, v19, v20) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E07305F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0730654);
}

void sub_1E0730644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730654);
  }

  JUMPOUT(0x1E0730610);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ASinhOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v23);
  v8 = v7;
  v31 = 260;
  v30[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v30);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v29 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v29 = 9;
    v27 = 104;
    __dst = *"mps.asinh";
    v15 = v28;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v31) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v30);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v24 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v30[0] = mlir::OpBuilder::create<mlir::mps::ASinhOp,mlir::Value &>(a1, v19, v20) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

void sub_1E07308F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0730958);
}

void sub_1E0730948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730958);
  }

  JUMPOUT(0x1E0730914);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ACoshOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v23);
  v8 = v7;
  v31 = 260;
  v30[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v30);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v29 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v29 = 9;
    v27 = 104;
    __dst = *"mps.acosh";
    v15 = v28;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v31) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v30);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v24 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v30[0] = mlir::OpBuilder::create<mlir::mps::ACoshOp,mlir::Value &>(a1, v19, v20) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

void sub_1E0730BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0730C5CLL);
}

void sub_1E0730C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730C5CLL);
  }

  JUMPOUT(0x1E0730C18);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ATanhOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v23);
  v8 = v7;
  v31 = 260;
  v30[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v30);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v29 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v29 = 9;
    v27 = 104;
    __dst = *"mps.atanh";
    v15 = v28;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v31) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v30);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v24 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v30[0] = mlir::OpBuilder::create<mlir::mps::ATanhOp,mlir::Value &>(a1, v19, v20) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

void sub_1E0730EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0730F60);
}

void sub_1E0730F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730F60);
  }

  JUMPOUT(0x1E0730F1CLL);
}

uint64_t createUnaryArithmeticOp<mlir::mps::NotOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v23);
  v8 = v7;
  v29 = 260;
  v28[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v27 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v27 = 7;
    qmemcpy(&__dst, "mps.not", 7);
    v15 = &__dst + 7;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v29) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v28);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v27 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v24 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = mlir::OpBuilder::create<mlir::mps::NotOp,mlir::Value &>(a1, v19, v20) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E0731200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0731264);
}

void sub_1E0731254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0731264);
  }

  JUMPOUT(0x1E0731220);
}

uint64_t createUnaryArithmeticOp<mlir::mps::IsInfiniteOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v42);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v41 = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v41 = 15;
    qmemcpy(__dst, "mps.is_infinite", sizeof(__dst));
    v16 = &v40;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v43) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v17;
    v18 = 3;
  }

  LOBYTE(v43) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v42);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IsInfiniteOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.is_infinite";
    v37 = 15;
    v35 = 259;
    llvm::operator+(&v36, &v34, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v20, v23);
  mlir::mps::IsFiniteOp::build(a1, v42, *v21);
  v25 = mlir::OpBuilder::create(a1, v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::IsInfiniteOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::IsFiniteOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v42);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v41 = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v41 = 13;
    qmemcpy(__dst, "mps.is_finite", sizeof(__dst));
    v16 = v40;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v43) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v17;
    v18 = 3;
  }

  LOBYTE(v43) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v42);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IsFiniteOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.is_finite";
    v37 = 13;
    v35 = 259;
    llvm::operator+(&v36, &v34, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v20, v23);
  mlir::mps::IsFiniteOp::build(a1, v42, *v21);
  v25 = mlir::OpBuilder::create(a1, v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::IsFiniteOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::IsNaNOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v44 = 260;
  v43[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v43);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v42 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    v42 = 10;
    v40 = 28257;
    __dst = *"mps.is_nan";
    v16 = v41;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v44) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v43[0] = v17;
    v18 = 3;
  }

  LOBYTE(v44) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v43);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IsNaNOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.is_nan";
    v37 = 10;
    v35 = 259;
    llvm::operator+(&v36, &v34, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v43, v20, v23);
  mlir::mps::IsFiniteOp::build(a1, v43, *v21);
  v25 = mlir::OpBuilder::create(a1, v43);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v43);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::IsNaNOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::ErfOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v23);
  v8 = v7;
  v29 = 260;
  v28[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v27 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v27 = 7;
    qmemcpy(&__dst, "mps.erf", 7);
    v15 = &__dst + 7;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v29) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v28);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v27 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v24 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = mlir::OpBuilder::create<mlir::mps::ErfOp,mlir::Value &>(a1, v19, v20) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E0731FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0732060);
}

void sub_1E0732050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0732060);
  }

  JUMPOUT(0x1E073201CLL);
}

uint64_t createUnaryArithmeticOp<mlir::mps::TruncateOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v44 = 260;
  v43[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v43);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v42 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = (&__dst + v15);
  }

  else
  {
    v42 = 12;
    v40 = 1702125923;
    __dst = *"mps.truncate";
    v16 = &v41;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v44) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v43[0] = v17;
    v18 = 3;
  }

  LOBYTE(v44) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v43);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TruncateOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.truncate";
    v37 = 12;
    v35 = 259;
    llvm::operator+(&v36, &v34, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v43, v20, v23);
  mlir::mps::ACosOp::build(a1, v43, *v21);
  v25 = mlir::OpBuilder::create(a1, v43);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v43);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::TruncateOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::BitwiseNotOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v42);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v41 = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v41 = 15;
    qmemcpy(__dst, "mps.bitwise_not", sizeof(__dst));
    v16 = &v40;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v43) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v17;
    v18 = 3;
  }

  LOBYTE(v43) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v42);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseNotOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.bitwise_not";
    v37 = 15;
    v35 = 259;
    llvm::operator+(&v36, &v34, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v20, v23);
  mlir::mps::ACosOp::build(a1, v42, *v21);
  v25 = mlir::OpBuilder::create(a1, v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseNotOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::BitwisePopcountOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v42);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    HIBYTE(v41) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = (&__dst + v15);
  }

  else
  {
    HIBYTE(v41) = 20;
    v40 = 1953396079;
    __dst = *"mps.bitwise_popcount";
    v16 = &v41;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v43) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v17;
    v18 = 3;
  }

  LOBYTE(v43) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v42);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwisePopcountOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.bitwise_popcount";
    v37 = 20;
    v35 = 259;
    llvm::operator+(&v36, &v34, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v20, v23);
  mlir::mps::ACosOp::build(a1, v42, *v21);
  v25 = mlir::OpBuilder::create(a1, v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::BitwisePopcountOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::ConjugateOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v42);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v41 = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v41 = 13;
    qmemcpy(__dst, "mps.conjugate", sizeof(__dst));
    v16 = v40;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v43) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v17;
    v18 = 3;
  }

  LOBYTE(v43) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v42);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConjugateOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.conjugate";
    v37 = 13;
    v35 = 259;
    llvm::operator+(&v36, &v34, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v20, v23);
  mlir::mps::ACosOp::build(a1, v42, *v21);
  v25 = mlir::OpBuilder::create(a1, v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::ConjugateOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::RealPartOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v23);
  v8 = v7;
  v30 = 260;
  v29[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(__dst, v12, v13);
    }

    v15 = &__dst[v14];
  }

  else
  {
    v28 = 13;
    qmemcpy(__dst, "mps.real_part", sizeof(__dst));
    v15 = v27;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v30) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v29);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);

  if (v24 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v29[0] = mlir::OpBuilder::create<mlir::mps::RealPartOp,mlir::Value &>(a1, v19, v20) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E07331A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E073320CLL);
}

void sub_1E07331FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E073320CLL);
  }

  JUMPOUT(0x1E07331C8);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ImaginaryPartOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v23);
  v8 = v7;
  v30 = 260;
  v29[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v28[5] = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v28[5] = 18;
    v27 = 29810;
    __dst = *"mps.imaginary_part";
    v15 = v28;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v30) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v29);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v28[5] & 0x80000000) == 0)
    {
LABEL_16:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v28[5] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v24 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v29[0] = mlir::OpBuilder::create<mlir::mps::ImaginaryPartOp,mlir::Value &>(a1, v19, v20) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E07334AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0733510);
}

void sub_1E0733500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0733510);
  }

  JUMPOUT(0x1E07334CCLL);
}

uint64_t createBinaryArithmeticOp<mlir::mps::AddOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v30 = 260;
  v29[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v28 = 7;
    qmemcpy(&__dst, "mps.add", 7);
    v15 = &__dst + 7;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v30) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v29);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E07337C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0733824);
}

void sub_1E0733814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0733824);
  }

  JUMPOUT(0x1E07337E0);
}

uint64_t createBinaryArithmeticOp<mlir::mps::SubtractOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v32 = 260;
  v31[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v31);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v30 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = (&__dst + v14);
  }

  else
  {
    v30 = 12;
    v28 = 1952670066;
    __dst = *"mps.subtract";
    v15 = &v29;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v32) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v31[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v32) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v31);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v31[0] = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v31);

  return DefiningOp;
}

void sub_1E0733AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0733B3CLL);
}

void sub_1E0733B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0733B3CLL);
  }

  JUMPOUT(0x1E0733AF8);
}

uint64_t createBinaryArithmeticOp<mlir::mps::MultiplyOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v32 = 260;
  v31[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v31);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v30 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = (&__dst + v14);
  }

  else
  {
    v30 = 12;
    v28 = 2037149801;
    __dst = *"mps.multiply";
    v15 = &v29;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v32) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v31[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v32) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v31);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v31[0] = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v31);

  return DefiningOp;
}

void sub_1E0733DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0733E54);
}

void sub_1E0733E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0733E54);
  }

  JUMPOUT(0x1E0733E10);
}

uint64_t createBinaryArithmeticOp<mlir::mps::DivideOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v32 = 260;
  v31[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v31);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v30 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v30 = 10;
    v28 = 25956;
    __dst = *"mps.divide";
    v15 = v29;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v32) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v31[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v32) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v31);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v31[0] = mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v31);

  return DefiningOp;
}

void sub_1E0734104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0734168);
}

void sub_1E0734158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0734168);
  }

  JUMPOUT(0x1E0734124);
}

uint64_t createBinaryArithmeticOp<mlir::mps::ModuloOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v32 = 260;
  v31[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v31);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v30 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v30 = 10;
    v28 = 28524;
    __dst = *"mps.modulo";
    v15 = v29;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v32) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v31[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v32) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v31);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v31[0] = mlir::OpBuilder::create<mlir::mps::ModuloOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v31);

  return DefiningOp;
}

void sub_1E0734418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E073447CLL);
}

void sub_1E073446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E073447CLL);
  }

  JUMPOUT(0x1E0734438);
}

uint64_t createBinaryArithmeticOp<mlir::mps::PowerOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v32 = 260;
  v31[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v31);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v30 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v30 = 9;
    v28 = 114;
    __dst = *"mps.power";
    v15 = v29;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v32) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v31[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v32) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v31);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v31[0] = mlir::OpBuilder::create<mlir::mps::PowerOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v31);

  return DefiningOp;
}

void sub_1E073472C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0734790);
}

void sub_1E0734780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0734790);
  }

  JUMPOUT(0x1E073474CLL);
}

uint64_t createBinaryArithmeticOp<mlir::mps::MinimumOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v31 = 260;
  v30[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v30);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v29 = v13;
    if (v13)
    {
      memmove(__dst, v12, v13);
    }

    v15 = &__dst[v14];
  }

  else
  {
    v29 = 11;
    qmemcpy(__dst, "mps.minimum", sizeof(__dst));
    v15 = v28;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v31) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v30);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v30[0] = mlir::OpBuilder::create<mlir::mps::MinimumOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

void sub_1E0734A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0734AA8);
}

void sub_1E0734A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0734AA8);
  }

  JUMPOUT(0x1E0734A64);
}

uint64_t createBinaryArithmeticOp<mlir::mps::MaximumOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v31 = 260;
  v30[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v30);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v29 = v13;
    if (v13)
    {
      memmove(__dst, v12, v13);
    }

    v15 = &__dst[v14];
  }

  else
  {
    v29 = 11;
    qmemcpy(__dst, "mps.maximum", sizeof(__dst));
    v15 = v28;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v31) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v30);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v30[0] = mlir::OpBuilder::create<mlir::mps::MaximumOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

void sub_1E0734D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0734DC0);
}

void sub_1E0734DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0734DC0);
  }

  JUMPOUT(0x1E0734D7CLL);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::EqualToOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v32 = 260;
  v31[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v31);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v30 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v30 = 9;
    v28 = 108;
    __dst = *"mps.equal";
    v15 = v29;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v32) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v31[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v32) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v31);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v31[0] = mlir::OpBuilder::create<mlir::mps::EqualToOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v31);

  return DefiningOp;
}

void sub_1E0735070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E07350D4);
}

void sub_1E07350C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E07350D4);
  }

  JUMPOUT(0x1E0735090);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::NotEqualToOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v31 = 260;
  v30[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v30);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v29 = v13;
    if (v13)
    {
      memmove(__dst, v12, v13);
    }

    v15 = &__dst[v14];
  }

  else
  {
    v29 = 13;
    qmemcpy(__dst, "mps.not_equal", sizeof(__dst));
    v15 = v28;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v31) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v30);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v30[0] = mlir::OpBuilder::create<mlir::mps::NotEqualToOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

void sub_1E0735384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E07353E8);
}

void sub_1E07353D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E07353E8);
  }

  JUMPOUT(0x1E07353A4);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::LessThanOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v31 = 260;
  v30[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v30);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v29 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = (&__dst + v14);
  }

  else
  {
    v29 = 8;
    __dst = 0x7373656C2E73706DLL;
    v15 = &v28;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v31) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v30);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v30[0] = mlir::OpBuilder::create<mlir::mps::LessThanOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

void sub_1E0735694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E07356F8);
}

void sub_1E07356E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E07356F8);
  }

  JUMPOUT(0x1E07356B4);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::LessThanOrEqualToOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v31 = 260;
  v30[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v30);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v29 = v13;
    if (v13)
    {
      memmove(__dst, v12, v13);
    }

    v15 = &__dst[v14];
  }

  else
  {
    v29 = 14;
    qmemcpy(__dst, "mps.less_equal", sizeof(__dst));
    v15 = v28;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v31) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v30);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v30[0] = mlir::OpBuilder::create<mlir::mps::LessThanOrEqualToOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

void sub_1E07359A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0735A0CLL);
}

void sub_1E07359FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0735A0CLL);
  }

  JUMPOUT(0x1E07359C8);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::GreaterThanOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v31 = 260;
  v30[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v30);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v29 = v13;
    if (v13)
    {
      memmove(__dst, v12, v13);
    }

    v15 = &__dst[v14];
  }

  else
  {
    v29 = 11;
    qmemcpy(__dst, "mps.greater", sizeof(__dst));
    v15 = v28;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v31) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v30);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v30[0] = mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

void sub_1E0735CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0735D24);
}

void sub_1E0735D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0735D24);
  }

  JUMPOUT(0x1E0735CE0);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::GreaterThanOrEqualToOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v31 = 260;
  v30[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v30);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v29[6] = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v29[6] = 17;
    v28 = 108;
    __dst = *"mps.greater_equal";
    v15 = v29;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v31) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v30);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v29[6] & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v29[6] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v30[0] = mlir::OpBuilder::create<mlir::mps::GreaterThanOrEqualToOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

void sub_1E0735FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0736038);
}

void sub_1E0736028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0736038);
  }

  JUMPOUT(0x1E0735FF4);
}

uint64_t createBinaryArithmeticOp<mlir::mps::AndOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v30 = 260;
  v29[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v28 = 7;
    qmemcpy(&__dst, "mps.and", 7);
    v15 = &__dst + 7;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v30) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v29);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = mlir::OpBuilder::create<mlir::mps::AndOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E07362E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E073634CLL);
}

void sub_1E073633C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E073634CLL);
  }

  JUMPOUT(0x1E0736308);
}

uint64_t createBinaryArithmeticOp<mlir::mps::OrOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v30 = 260;
  v29[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v28 = 6;
    qmemcpy(&__dst, "mps.or", 6);
    v15 = &__dst + 6;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v30) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v29);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = mlir::OpBuilder::create<mlir::mps::OrOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E07365F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E073665CLL);
}

void sub_1E073664C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E073665CLL);
  }

  JUMPOUT(0x1E0736618);
}

uint64_t createBinaryArithmeticOp<mlir::mps::NandOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v42);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v41 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = (&__dst + v15);
  }

  else
  {
    v41 = 8;
    __dst = 0x646E616E2E73706DLL;
    v16 = &v40;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v43) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v17;
    v18 = 3;
  }

  LOBYTE(v43) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v42);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NandOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.nand";
    v37 = 8;
    v35 = 259;
    llvm::operator+(&v36, &v34, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v20, v23);
  mlir::mps::ATan2Op::build(a1, v42, *v21, v21[1]);
  v25 = mlir::OpBuilder::create(a1, v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::NandOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::NorOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v40 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    v40 = 7;
    qmemcpy(&__dst, "mps.nor", 7);
    v16 = &__dst + 7;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v42) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v17;
    v18 = 3;
  }

  LOBYTE(v42) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v41);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v40 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NorOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.nor";
    v37 = 7;
    v35 = 259;
    llvm::operator+(&v36, &v34, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v20, v23);
  mlir::mps::ATan2Op::build(a1, v41, *v21, v21[1]);
  v25 = mlir::OpBuilder::create(a1, v41);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::NorOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::XorOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v24);
  v8 = v7;
  v30 = 260;
  v29[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v28 = 7;
    qmemcpy(&__dst, "mps.xor", 7);
    v15 = &__dst + 7;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v30) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v29);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = *(a3 + 8) - *a3;
  if (!v21)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v21 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = mlir::OpBuilder::create<mlir::mps::XorOp,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0737068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E07370CCLL);
}

void sub_1E07370BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E07370CCLL);
  }

  JUMPOUT(0x1E0737088);
}

uint64_t createBinaryArithmeticOp<mlir::mps::XnorOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v42);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v41 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = (&__dst + v15);
  }

  else
  {
    v41 = 8;
    __dst = 0x726F6E782E73706DLL;
    v16 = &v40;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v43) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v17;
    v18 = 3;
  }

  LOBYTE(v43) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v42);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::XnorOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.xnor";
    v37 = 8;
    v35 = 259;
    llvm::operator+(&v36, &v34, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v20, v23);
  mlir::mps::ATan2Op::build(a1, v42, *v21, v21[1]);
  v25 = mlir::OpBuilder::create(a1, v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::XnorOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::ATan2Op>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v44 = 260;
  v43[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v43);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v42 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    v42 = 9;
    v40 = 50;
    __dst = *"mps.atan2";
    v16 = v41;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v44) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v43[0] = v17;
    v18 = 3;
  }

  LOBYTE(v44) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v43);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ATan2Op,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.atan2";
    v37 = 9;
    v35 = 259;
    llvm::operator+(&v36, &v34, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v43, v20, v23);
  mlir::mps::ATan2Op::build(a1, v43, *v21, v21[1]);
  v25 = mlir::OpBuilder::create(a1, v43);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v43);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::ATan2Op,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::BitwiseAndOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v42);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v41 = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v41 = 15;
    qmemcpy(__dst, "mps.bitwise_and", sizeof(__dst));
    v16 = &v40;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v43) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v17;
    v18 = 3;
  }

  LOBYTE(v43) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v42);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseAndOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.bitwise_and";
    v37 = 15;
    v35 = 259;
    llvm::operator+(&v36, &v34, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v20, v23);
  mlir::mps::ATan2Op::build(a1, v42, *v21, v21[1]);
  v25 = mlir::OpBuilder::create(a1, v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseAndOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::BitwiseOrOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v42);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v41 = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v41 = 14;
    qmemcpy(__dst, "mps.bitwise_or", sizeof(__dst));
    v16 = v40;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v43) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v17;
    v18 = 3;
  }

  LOBYTE(v43) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v42);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseOrOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.bitwise_or";
    v37 = 14;
    v35 = 259;
    llvm::operator+(&v36, &v34, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v20, v23);
  mlir::mps::ATan2Op::build(a1, v42, *v21, v21[1]);
  v25 = mlir::OpBuilder::create(a1, v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseOrOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::BitwiseXorOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v42);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v41 = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v41 = 15;
    qmemcpy(__dst, "mps.bitwise_xor", sizeof(__dst));
    v16 = &v40;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v43) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v17;
    v18 = 3;
  }

  LOBYTE(v43) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v42);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseXorOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.bitwise_xor";
    v37 = 15;
    v35 = 259;
    llvm::operator+(&v36, &v34, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v20, v23);
  mlir::mps::ATan2Op::build(a1, v42, *v21, v21[1]);
  v25 = mlir::OpBuilder::create(a1, v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseXorOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::BitwiseLeftShiftOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    HIBYTE(v40) = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    HIBYTE(v40) = 22;
    qmemcpy(__dst, "mps.bitwise_left_shift", sizeof(__dst));
    v16 = &v40;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v42) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v17;
    v18 = 3;
  }

  LOBYTE(v42) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v41);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseLeftShiftOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.bitwise_left_shift";
    v37 = 22;
    v35 = 259;
    llvm::operator+(&v36, &v34, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v20, v23);
  mlir::mps::ATan2Op::build(a1, v41, *v21, v21[1]);
  v25 = mlir::OpBuilder::create(a1, v41);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseLeftShiftOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::BitwiseRightShiftOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v41 = 260;
  v40[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v40);
  v10 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (!v8)
  {
    operator new();
  }

  v11 = v8;
  v12 = [v8 UTF8String];
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

  HIBYTE(v39) = v13;
  if (v13)
  {
    memmove(&__dst, v12, v13);
  }

  *(&__dst + v15) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v14, &v35);
  v16 = v35.__r_.__value_.__r.__words[0];
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v35;
  }

  v17 = 1;
  HIBYTE(v41) = 1;
  if (v16->__r_.__value_.__s.__data_[0])
  {
    v40[0] = v16;
    v17 = 3;
  }

  LOBYTE(v41) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v40);
  v19 = mlir::NameLoc::get(v18, v10);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v39) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v32 = v19;
  Context = mlir::Attribute::getContext(&v32);
  v22 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseRightShiftOp,void>::id, Context);
  if ((v23 & 1) == 0)
  {
    v37 = 1283;
    v35.__r_.__value_.__r.__words[2] = "mps.bitwise_right_shift";
    v36 = 23;
    v34 = 259;
    llvm::operator+(&v35, &v33, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v40, v19, v22);
  mlir::mps::ATan2Op::build(a1, v40, *v20, v20[1]);
  v24 = mlir::OpBuilder::create(a1, v40);
  v25 = *(*(v24 + 48) + 16);
  mlir::OperationState::~OperationState(v40);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseRightShiftOp,void>::id)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v29 = v26 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v29);

  return DefiningOp;
}

void sub_1E0738A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t createBinaryArithmeticOp<mlir::mps::CreateComplexOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc("createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", __p);
  v8 = v7;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v42);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v12 = v8;
    v13 = [v8 UTF8String];
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

    v41[5] = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    v41[5] = 18;
    v40 = 30821;
    __dst = *"mps.create_complex";
    v16 = v41;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &v36);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v43) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v17;
    v18 = 3;
  }

  LOBYTE(v43) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v42);
  v20 = mlir::NameLoc::get(v19, v11);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v41[5] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v41[5] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.create_complex";
    v37 = 18;
    v35 = 259;
    llvm::operator+(&v36, &v34, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v20, v23);
  mlir::mps::CreateComplexOp::build(a1, v42, *v21, v21[1]);
  v25 = mlir::OpBuilder::create(a1, v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

uint64_t createTernaryArithmeticOp<mlir::mps::ClampOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t **a3, void *a4)
{
  v7 = a4;
  mpsFileLoc("createTernaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm", v25);
  v8 = v7;
  v33 = 260;
  v32[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v32);
  v11 = mlir::FileLineColLoc::get(StringAttr, 0x111u, 0);
  if (v8)
  {
    v12 = [v8 UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v31 = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    v15 = &__dst + v14;
  }

  else
  {
    v31 = 9;
    v29 = 112;
    __dst = *"mps.clamp";
    v15 = v30;
  }

  *v15 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, v10, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v33) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v32[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v33) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v32);
  v19 = mlir::NameLoc::get(v18, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v31 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v20 = *a3;
      v21 = a3[1];
      v22 = v21 - *a3;
      if (v22 == 16)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }
  }

  else if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = *a3;
  v21 = a3[1];
  v22 = v21 - *a3;
  if (v22 == 16)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v21 == v20 || v22 <= 8)
  {
LABEL_25:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v32[0] = mlir::OpBuilder::create<mlir::mps::ClampOp,mlir::Value &,mlir::Value &,mlir::Value &>(a1, v19, v20, v20 + 1, v20 + 2) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v32);

  return DefiningOp;
}

void sub_1E073912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E0739190);
}

void sub_1E0739180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0739190);
  }

  JUMPOUT(0x1E073914CLL);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::IdentityOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v28 = 260;
  v27[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v27);
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

    v26 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = (&__dst + v15);
  }

  else
  {
    v26 = 12;
    v24 = 2037672308;
    __dst = *"mps.identity";
    v16 = &v25;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, v11, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v28) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v27[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v28) = v18;
  v19 = mlir::Builder::getStringAttr(a2, v27);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(__dst);
    goto LABEL_16;
  }

  if (v26 < 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E0745E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E0746A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  mlir::OperationState::~OperationState(&a40);

  _Unwind_Resume(a1);
}

void sub_1E07474B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0747B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, char a50)
{
  mlir::OperationState::~OperationState(&a50);

  _Unwind_Resume(a1);
}

void sub_1E074889C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  mlir::OperationState::~OperationState(&a52);

  _Unwind_Resume(a1);
}

void sub_1E0748EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, char a46)
{
  mlir::OperationState::~OperationState(&a46);

  _Unwind_Resume(a1);
}

void sub_1E0749A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  mlir::OperationState::~OperationState(&a48);

  _Unwind_Resume(a1);
}

void sub_1E074DD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41, void *a42, void *a43, void *a44, void *a45, void *a46, void *a47, void *a48)
{
  *(v54 - 184) = a1;

  _Unwind_Resume(*(v54 - 184));
}

void sub_1E0750074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41)
{
  *(v46 - 184) = a1;

  _Unwind_Resume(*(v46 - 184));
}

EmitterObjC::ReturnOpHandler *EmitterObjC::ReturnOpHandler::ReturnOpHandler(EmitterObjC::ReturnOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4AFA8;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v36 = v5;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v36, 0);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v7 = *(v36 + 9);
  }

  else
  {
    v7 = 0;
  }

  v8 = ODSOperandIndexAndLength;
  v9 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  *(&v35.__r_.__value_.__s + 23) = 2;
  strcpy(&v35, "@[");
  v10 = v9 - ODSOperandIndexAndLength;
  if (v9 != ODSOperandIndexAndLength)
  {
    v11 = v7 + 32 * ODSOperandIndexAndLength;
    v34 = *(v11 + 24);
    v37 = &v34;
    v12 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v34);
    v15 = v12[3];
    v13 = v12 + 3;
    v14 = v15;
    v16 = *(v13 + 23);
    v17 = (v16 >= 0 ? v13 : v14);
    v18 = v16 >= 0 ? *(v13 + 23) : v13[1];
    std::string::append(&v35, v17, v18);
    if (v10 != 1)
    {
      v19 = ~v8 + v9;
      v20 = (v11 + 56);
      do
      {
        v21 = *v20;
        std::string::append(&v35, ", ");
        v34 = v21;
        v37 = &v34;
        v22 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v34);
        v25 = v22[3];
        v23 = (v22 + 3);
        v24 = v25;
        v26 = v23[23];
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        if (v26 >= 0)
        {
          v28 = *(v23 + 23);
        }

        else
        {
          v28 = *(v23 + 1);
        }

        std::string::append(&v35, v27, v28);
        v20 += 4;
        --v19;
      }

      while (v19);
    }
  }

  std::string::append(&v35, "]");
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v35;
  }

  else
  {
    v29 = v35.__r_.__value_.__r.__words[0];
  }

  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n    NSArray<MPSGraphTensor *> *returnTensors = %s\n", v29];;
  v31 = [*(a2 + 27) stringByAppendingString:v30];
  v32 = *(a2 + 27);
  *(a2 + 27) = v31;

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1E0750810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterObjC::ConstantOpHandler *EmitterObjC::ConstantOpHandler::ConstantOpHandler(EmitterObjC::ConstantOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4AFC0;
  v109 = a3;
  if (*(a3 + 9))
  {
    v5 = a3 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v109);
  v9 = v8;
  if (!AsAttribute && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  mlir::mps::CPUNDArray::CPUNDArray(v106, AsAttribute, v9);
  MPSDataType = getMPSDataType((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v11 = getMPSShapeFromMLIR(NextResultAtOffset);
  NumElements = mlir::mps::CPUNDArray::getNumElements(v106);
  if ((MPSDataType & 0xDFFFFFFF) != 4)
  {
    v13 = MPSDataType >> 3;
    if (v108 != 1)
    {
      goto LABEL_10;
    }

LABEL_24:
    if (mlir::mps::CPUNDArray::isComplexType(v106))
    {
      v94 = v11;
      v23 = *mlir::mps::CPUNDArray::getSplatComplexValue(v106).i32;
      v25 = v24;
      v26 = MEMORY[0x1E696AEC0];
      (*(*a2 + 32))(&v105, a2, NextResultAtOffset);
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v105;
      }

      else
      {
        v27 = v105.__r_.__value_.__r.__words[0];
      }

      EmitterObjC::ConstantOpHandler::ConstantOpHandler(EmitObjC *,mlir::Operation *)::$_0::operator()(v103, v23);
      if (v104 >= 0)
      {
        v28 = v103;
      }

      else
      {
        v28 = v103[0];
      }

      EmitterObjC::ConstantOpHandler::ConstantOpHandler(EmitObjC *,mlir::Operation *)::$_0::operator()(v101, v25);
      if (v102 >= 0)
      {
        v29 = v101;
      }

      else
      {
        v29 = v101[0];
      }

      EmitterObjC::emitMPSShape(v11, __p);
      v30 = v100;
      v31 = __p[0];
      EmitterObjC::emitMPSDataType(MPSDataType, v97);
      v32 = __p;
      if (v30 < 0)
      {
        v32 = v31;
      }

      if (v98 >= 0)
      {
        v33 = v97;
      }

      else
      {
        v33 = v97[0];
      }

      v22 = [v26 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph constantWithRealPart:%s\n                  imaginaryPart:%s\n                          shape:%s\n                       dataType:%s]\n    ", v27, v28, v29, v32, v33];;
      v11 = v94;
      if (v98 < 0)
      {
        goto LABEL_136;
      }
    }

    else
    {
      SplatFloatValue = -1.0;
      if (mlir::mps::CPUNDArray::isFloatType(v106))
      {
        SplatFloatValue = mlir::mps::CPUNDArray::getSplatFloatValue(v106);
      }

      if (mlir::mps::CPUNDArray::isIntegerType(v106))
      {
        SplatFloatValue = mlir::mps::CPUNDArray::getSplatIntegerValue(v106);
      }

      v38 = MEMORY[0x1E696AEC0];
      (*(*a2 + 32))(&v105, a2, NextResultAtOffset);
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v105;
      }

      else
      {
        v39 = v105.__r_.__value_.__r.__words[0];
      }

      EmitterObjC::ConstantOpHandler::ConstantOpHandler(EmitObjC *,mlir::Operation *)::$_0::operator()(v103, SplatFloatValue);
      if (v104 >= 0)
      {
        v40 = v103;
      }

      else
      {
        v40 = v103[0];
      }

      EmitterObjC::emitMPSShape(v11, v101);
      v41 = v102;
      v42 = v101[0];
      EmitterObjC::emitMPSDataType(MPSDataType, __p);
      v43 = v101;
      if (v41 < 0)
      {
        v43 = v42;
      }

      if (v100 >= 0)
      {
        v44 = __p;
      }

      else
      {
        v44 = __p[0];
      }

      v22 = [v38 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph constantWithScalar:%s\n                        shape:%s\n                     dataType:%s]\n    ", v39, v40, v43, v44];;
    }

    goto LABEL_137;
  }

  v13 = 1;
  **(a2 + 39) = 1;
  if (NumElements <= 1)
  {
    NumElements = 1;
  }

  else
  {
    NumElements >>= 1;
  }

  if (v108 == 1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v14 = v13 * NumElements;
  v93 = v11;
  if (*(*(a2 + 39) + 1) != 1)
  {
    if (NumElements > 0x20)
    {
      v45 = NumElements;
      v46 = MEMORY[0x1E696AEC0];
      (*(*a2 + 32))(&v105, a2, NextResultAtOffset);
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v105;
      }

      else
      {
        v47 = v105.__r_.__value_.__r.__words[0];
      }

      EmitterObjC::emitMPSDataType(MPSDataType, v103);
      if (v104 >= 0)
      {
        v48 = v103;
      }

      else
      {
        v48 = v103[0];
      }

      EmitterObjC::emitMPSShape(v11, v101);
      v49 = v102;
      v50 = v101[0];
      EmitterObjC::emitMPSDataType(MPSDataType, __p);
      v51 = v101;
      if (v49 < 0)
      {
        v51 = v50;
      }

      if (v100 >= 0)
      {
        v52 = __p;
      }

      else
      {
        v52 = __p[0];
      }

      v22 = [v46 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph constantWithData:MPSGraphTestDescriptor::genRandomConstant(%s, %lu)\n                      shape:%s\n                   dataType:%s]\n    ", v47, v48, v45, v51, v52];;
      v11 = v93;
      if ((v100 & 0x80000000) == 0)
      {
LABEL_138:
        if ((v102 & 0x80000000) == 0)
        {
LABEL_139:
          if ((v104 & 0x80000000) == 0)
          {
LABEL_140:
            if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_141;
            }

            goto LABEL_75;
          }

LABEL_74:
          operator delete(v103[0]);
          if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_141;
          }

LABEL_75:
          operator delete(v105.__r_.__value_.__l.__data_);
          goto LABEL_141;
        }

LABEL_73:
        operator delete(v101[0]);
        if ((v104 & 0x80000000) == 0)
        {
          goto LABEL_140;
        }

        goto LABEL_74;
      }

LABEL_72:
      operator delete(__p[0]);
      if ((v102 & 0x80000000) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_73;
    }

    v34 = v107;
    memset(&v105, 0, sizeof(v105));
    std::string::resize(&v105, (2 * (((v14 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL, 0);
    if (3 * (v14 / 3))
    {
      v36 = 0;
      v35 = 0;
      do
      {
        v53 = *(v34 + v36);
        v54 = *(v34 + v36 + 2);
        v55 = v54 | (*(v34 + v36 + 1) << 8);
        v56 = (v53 << 16) | (*(v34 + v36 + 1) << 8);
        v57 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[v53 >> 2];
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &v105;
        }

        else
        {
          v58 = v105.__r_.__value_.__r.__words[0];
        }

        v58->__r_.__value_.__s.__data_[v35] = v57;
        v59 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[(v56 >> 12) & 0x3F];
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = &v105;
        }

        else
        {
          v60 = v105.__r_.__value_.__r.__words[0];
        }

        v60->__r_.__value_.__s.__data_[v35 + 1] = v59;
        v61 = v54 & 0x3F;
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v105;
        }

        else
        {
          v62 = v105.__r_.__value_.__r.__words[0];
        }

        v62->__r_.__value_.__s.__data_[v35 + 2] = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[(v55 >> 6) & 0x3F];
        v63 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[v61];
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v105;
        }

        else
        {
          v64 = v105.__r_.__value_.__r.__words[0];
        }

        v64->__r_.__value_.__s.__data_[v35 + 3] = v63;
        v36 += 3;
        v35 += 4;
      }

      while (v36 < 3 * (v14 / 3));
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    v65 = v36 + 1;
    if (v36 + 1 == v14)
    {
      v66 = *(v34 + v36);
      v67 = v105.__r_.__value_.__r.__words[0];
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = &v105;
      }

      v67->__r_.__value_.__s.__data_[v35] = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[v66 >> 2];
      v68 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[16 * (v66 & 3)];
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &v105;
      }

      else
      {
        v69 = v105.__r_.__value_.__r.__words[0];
      }

      v69->__r_.__value_.__s.__data_[v35 + 1] = v68;
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v70 = &v105;
      }

      else
      {
        v70 = v105.__r_.__value_.__r.__words[0];
      }

      v70->__r_.__value_.__s.__data_[v35 + 2] = 61;
    }

    else
    {
      if (v36 + 2 != v14)
      {
        goto LABEL_116;
      }

      v71 = *(v34 + v36);
      v72 = *(v34 + v65);
      v73 = ((v72 & 0xF0) << 8) | (v71 << 16);
      v74 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[v71 >> 2];
      v75 = v105.__r_.__value_.__r.__words[0];
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = &v105;
      }

      v75->__r_.__value_.__s.__data_[v35] = v74;
      v76 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[(v73 >> 12) & 0x3F];
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = &v105;
      }

      else
      {
        v77 = v105.__r_.__value_.__r.__words[0];
      }

      v77->__r_.__value_.__s.__data_[v35 + 1] = v76;
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = &v105;
      }

      else
      {
        v78 = v105.__r_.__value_.__r.__words[0];
      }

      v78->__r_.__value_.__s.__data_[v35 + 2] = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[4 * (v72 & 0xF)];
    }

    v79 = &v105;
    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v79 = v105.__r_.__value_.__r.__words[0];
    }

    v79->__r_.__value_.__s.__data_[v35 + 3] = 61;
LABEL_116:
    v80 = MEMORY[0x1E696AEC0];
    (*(*a2 + 32))(v103, a2, NextResultAtOffset);
    if (v104 >= 0)
    {
      v81 = v103;
    }

    else
    {
      v81 = v103[0];
    }

    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = &v105;
    }

    else
    {
      v82 = v105.__r_.__value_.__r.__words[0];
    }

    (*(*a2 + 32))(v101, a2, NextResultAtOffset);
    if (v102 >= 0)
    {
      v83 = v101;
    }

    else
    {
      v83 = v101[0];
    }

    (*(*a2 + 32))(__p, a2, NextResultAtOffset);
    v92 = v80;
    if (v100 >= 0)
    {
      v84 = __p;
    }

    else
    {
      v84 = __p[0];
    }

    EmitterObjC::emitMPSShape(v11, v97);
    v85 = v98;
    v86 = v97[0];
    EmitterObjC::emitMPSDataType(MPSDataType, v95);
    v87 = v97;
    if (v85 < 0)
    {
      v87 = v86;
    }

    if (v96 >= 0)
    {
      v88 = v95;
    }

    else
    {
      v88 = v95[0];
    }

    v22 = [v92 stringWithFormat:@"\n    const char *%s_b64 = %s\n    MPSGraphTensor *%s = \n    [graph constantWithData:decodeBase64(%s_b64)\n                      shape:%s\n                   dataType:%s];\n    ", v81, v82, v83, v84, v87, v88];;
    if (v96 < 0)
    {
      operator delete(v95[0]);
    }

    if (v98 < 0)
    {
LABEL_136:
      operator delete(v97[0]);
    }

LABEL_137:
    if ((v100 & 0x80000000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_72;
  }

  v15 = *(a2 + 37);
  [0 writeBytes:v107 strideBytes:0];
  v16 = MEMORY[0x1E696AEC0];
  (*(*a2 + 32))(&v105, a2, NextResultAtOffset);
  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v105;
  }

  else
  {
    v17 = v105.__r_.__value_.__r.__words[0];
  }

  EmitterObjC::emitMPSShape(v11, v103);
  v18 = v104;
  v19 = v103[0];
  EmitterObjC::emitMPSDataType(MPSDataType, v101);
  v20 = v103;
  if (v18 < 0)
  {
    v20 = v19;
  }

  if (v102 >= 0)
  {
    v21 = v101;
  }

  else
  {
    v21 = v101[0];
  }

  v22 = [v16 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph constantWithData:[data subdataWithRange:NSMakeRange(%lu, %lu)]\n                      shape:%s\n                   dataType:%s]\n    ", v17, v15, v14, v20, v21];;
  v11 = v93;
  if ((v102 & 0x80000000) == 0)
  {
    if ((v104 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_77:
    operator delete(v103[0]);
    if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_78:
    operator delete(v105.__r_.__value_.__l.__data_);
    goto LABEL_22;
  }

  operator delete(v101[0]);
  if (v104 < 0)
  {
    goto LABEL_77;
  }

LABEL_21:
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }

LABEL_22:
  [*(a2 + 38) appendBytes:v107 length:v14];
  *(a2 + 37) += v14;
LABEL_141:
  v89 = [*(a2 + 27) stringByAppendingString:v22];
  v90 = *(a2 + 27);
  *(a2 + 27) = v89;

  mlir::mps::CPUNDArray::~CPUNDArray(v106);
  return this;
}

void sub_1E0751200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
    if (a34 < 0)
    {
LABEL_7:
      operator delete(a29);
      if ((a40 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if (a34 < 0)
  {
    goto LABEL_7;
  }

  if ((a40 & 0x80000000) == 0)
  {
LABEL_8:
    if (a46 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if (a46 < 0)
  {
LABEL_9:
    operator delete(a41);
    if (a52 < 0)
    {
LABEL_14:
      operator delete(a47);

      mlir::mps::CPUNDArray::~CPUNDArray(&a53);
      _Unwind_Resume(a1);
    }

LABEL_15:

    mlir::mps::CPUNDArray::~CPUNDArray(&a53);
    _Unwind_Resume(a1);
  }

LABEL_13:
  if (a52 < 0)
  {
    goto LABEL_14;
  }

  goto LABEL_15;
}

char *EmitterObjC::ConstantOpHandler::ConstantOpHandler(EmitObjC *,mlir::Operation *)::$_0::operator()(char *result, double a2)
{
  if (fabs(a2) == INFINITY)
  {
    result[23] = 8;
    strcpy(result, "INFINITY");
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
    v3 = v6;
    *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v8[0].__locale_ + *(v3 - 24)) = 9;
    MEMORY[0x1E12E56D0](&v6, a2);
    std::stringbuf::str();
    v5[0] = *MEMORY[0x1E69E54D8];
    v4 = *(MEMORY[0x1E69E54D8] + 72);
    *(v5 + *(v5[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v6 = v4;
    v7 = MEMORY[0x1E69E5548] + 16;
    if (v9 < 0)
    {
      operator delete(v8[7].__locale_);
    }

    v7 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v8);
    std::iostream::~basic_iostream();
    return MEMORY[0x1E12E5AA0](&v10);
  }

  return result;
}

void sub_1E07516D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10);
  MEMORY[0x1E12E5AA0](&a26);
  _Unwind_Resume(a1);
}

EmitterObjC::ReadVariableOpHandler *EmitterObjC::ReadVariableOpHandler::ReadVariableOpHandler(EmitterObjC::ReadVariableOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4AFD8;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id)
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

  v16 = [v11 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph  readVariable:%s\n                    name:%s]\n    ", v12, v14, p_p];;
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

void sub_1E07518E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

EmitterObjC::AssignVariableOpHandler *EmitterObjC::AssignVariableOpHandler::AssignVariableOpHandler(EmitterObjC::AssignVariableOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4AFF0;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = *(v6 + 56);
  v8 = *(v6 + 24);
  v9 = MEMORY[0x1E696AEC0];
  v10 = __p;
  (*(*a2 + 32))(__p, a2, v7);
  if (v22 < 0)
  {
    v10 = __p[0];
  }

  v20 = v7;
  v23 = &v20;
  v11 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v20);
  v12 = v11 + 3;
  if (*(v11 + 47) < 0)
  {
    v12 = *v12;
  }

  v19 = v8;
  v23 = &v19;
  v13 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v19);
  v14 = v13 + 3;
  if (*(v13 + 47) < 0)
  {
    v14 = *v14;
  }

  v15 = [v9 stringWithFormat:@"\n    MPSGraphOperation *%sassignOp = \n    [graph  assignVariable:%s\n         withValueOfTensor:%s\n                      name:%s]\n    ", v10, v12, v14, "nil"];;
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = [*(a2 + 27) stringByAppendingString:v15];
  v17 = *(a2 + 27);
  *(a2 + 27) = v16;

  return this;
}

void sub_1E0751B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::BroadcastToOpHandler *EmitterObjC::BroadcastToOpHandler::BroadcastToOpHandler(EmitterObjC::BroadcastToOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4B008;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id)
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
  v11 = getMPSShapeFromMLIR(NextResultAtOffset);
  v12 = MEMORY[0x1E696AEC0];
  (*(*a2 + 32))(v24, a2, NextResultAtOffset);
  if (v25 >= 0)
  {
    v13 = v24;
  }

  else
  {
    v13 = v24[0];
  }

  v23 = v6;
  __p[0] = &v23;
  v14 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v23);
  v15 = v14 + 3;
  if (*(v14 + 47) < 0)
  {
    v15 = *v15;
  }

  EmitterObjC::emitMPSShape(v11, __p);
  if (v22 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  v17 = [v12 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph  broadcastTensor:%s\n                    toShape:%s\n                       name:%s]\n    ", v13, v15, v16, "nil"];;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    operator delete(v24[0]);
    goto LABEL_17;
  }

  if (v25 < 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v18 = [*(a2 + 27) stringByAppendingString:v17];
  v19 = *(a2 + 27);
  *(a2 + 27) = v18;

  return this;
}

void sub_1E0751D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);

  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 24));
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  *(a1 + 16) = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  *(a1 + 128) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E12E59E0](a1 + 32);
  *(a1 + 88) = 0;
  v13 = a1 + 88;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  *(a1 + 112) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v14 = *(a1 + 111);
  if (v14 < 0)
  {
    v14 = *(a1 + 96);
  }

  *(a1 + 64) = v13;
  *(a1 + 72) = v13;
  *(a1 + 80) = v13 + v14;
  return a1;
}

void sub_1E075208C(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 24) = v4;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1E12E5AA0](v2);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1E12E5AA0](a1 + 128);
  return a1;
}

void sub_1E0752570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  mlir::OperationState::~OperationState(&a30);

  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "tensor.extract";
    v15[3] = 14;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::tensor::ExtractOp::build(a1, v18, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0752A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  mlir::OperationState::~OperationState(&a30);

  _Unwind_Resume(a1);
}

void controlFlowPostAutodiff(Autodiff *a1)
{
  llvm::outs(a1);
  v3 = v4;
  v4[0] = 0;
  v4[1] = 0;
  v4[2] = a1;
  WeakRetained = objc_loadWeakRetained((*a1 + 32));
  AutodiffSaveTemps::fixGraphInvalidTemps(&v3);
  llvm::outs(v2);

  std::__tree<std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>>>::destroy(&v3, v4[0]);
}

void sub_1E0752B64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AutodiffSaveTemps::~AutodiffSaveTemps(va);
  _Unwind_Resume(a1);
}

void AutodiffSaveTemps::fixGraphInvalidTemps(MPSGraphBlock **this)
{
  v248[15] = *MEMORY[0x1E69E9840];
  BlockInfos = AutodiffSaveTemps::getBlockInfos(this, this[4]);
  v212 = this[4];
  v244[0] = 0;
  v244[1] = 0;
  v243 = v244;
  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  v2 = this[3]->_blockOperations[10].super.super.isa;
  v3 = [(objc_class *)v2 countByEnumeratingWithState:&v239 objects:&v247 count:16];
  v228 = this;
  if (!v3)
  {

    std::__tree<MPSGraphTensor * {__strong}>::destroy(&v243, v244[0]);
    goto LABEL_170;
  }

  obj = v2;
  v4 = 0;
  v5 = *v240;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v240 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = v4 >> 3;
      if (((v4 >> 3) + 1) >> 61)
      {
        std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
      }

      if (v4 >> 3 != -1)
      {
        if (!(((v4 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v7) = *(*(&v239 + 1) + 8 * i);
      v8 = 8 * v7 + 8;
      if (v4)
      {
        v9 = v4 - 8;
        v10 = 0;
        v11 = 0;
        if ((v4 - 8) < 0x28)
        {
          goto LABEL_264;
        }

        if ((v9 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
        {
          v10 = 0;
          v11 = 0;
          goto LABEL_17;
        }

        v12 = (v9 >> 3) + 1;
        v11 = (8 * (v12 & 0x3FFFFFFFFFFFFFFCLL));
        v10 = v11;
        v13 = 16;
        v14 = 16;
        v15 = v12 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v16 = *(v14 - 16);
          v17 = *v14;
          *(v14 - 16) = 0uLL;
          *v14 = 0uLL;
          *(v13 - 16) = v16;
          *v13 = v17;
          v13 += 32;
          v14 += 32;
          v15 -= 4;
        }

        while (v15);
        if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_264:
          do
          {
LABEL_17:
            v18 = *v10;
            *v10++ = 0;
            *v11++ = v18;
          }

          while (v10 != v4);
        }

        for (j = 0; j != v4; ++j)
        {
        }
      }

      v4 = v8;
    }

    v3 = [(objc_class *)obj countByEnumeratingWithState:&v239 objects:&v247 count:16];
  }

  while (v3);

  while (v4)
  {
    v20 = *(v4 - 8);
    v4 -= 8;
    obja = v20;

    v21 = v244[0];
    if (!v244[0])
    {
LABEL_37:
      operator new();
    }

    v22 = v244[0];
    do
    {
      v23 = v22[4];
      if (obja >= v23)
      {
        if (v23 >= obja)
        {
          goto LABEL_25;
        }

        ++v22;
      }

      v22 = *v22;
    }

    while (v22);
    while (1)
    {
      while (1)
      {
        v24 = v21;
        v25 = v21[4];
        if (obja >= v25)
        {
          break;
        }

        v21 = *v24;
        if (!*v24)
        {
          goto LABEL_37;
        }
      }

      if (v25 >= obja)
      {
        break;
      }

      v21 = v24[1];
      if (!v21)
      {
        goto LABEL_37;
      }
    }

    if (!*(obja + 5))
    {
      goto LABEL_68;
    }

    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v214 = *(*(obja + 5) + 8);
    v26 = [v214 countByEnumeratingWithState:&v235 objects:v246 count:16];
    if (!v26)
    {
      goto LABEL_67;
    }

    v217 = *v236;
    do
    {
      v27 = 0;
      v222 = v26;
      do
      {
        if (*v236 != v217)
        {
          objc_enumerationMutation(v214);
        }

        v28 = *(*(&v235 + 1) + 8 * v27);
        v231 = 0u;
        v232 = 0u;
        v233 = 0u;
        v234 = 0u;
        v29 = *(v28 + 16);
        v30 = [v29 countByEnumeratingWithState:&v231 objects:v245 count:16];
        v225 = v27;
        if (v30)
        {
          v31 = *v232;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v232 != v31)
              {
                objc_enumerationMutation(v29);
              }

              if (((v4 >> 3) + 1) >> 61)
              {
                std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
              }

              if (v4 >> 3 != -1)
              {
                if (!(((v4 >> 3) + 1) >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v33 = (8 * (v4 >> 3));
              *v33 = *(*(&v231 + 1) + 8 * k);
              v34 = (v33 + 1);
              if (v4)
              {
                v35 = v4 - 8;
                v36 = 0;
                v37 = 0;
                if ((v4 - 8) < 0x28)
                {
                  goto LABEL_265;
                }

                if ((v35 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
                {
                  v36 = 0;
                  v37 = 0;
                  goto LABEL_60;
                }

                v38 = (v35 >> 3) + 1;
                v37 = (8 * (v38 & 0x3FFFFFFFFFFFFFFCLL));
                v36 = v37;
                v39 = 16;
                v40 = 16;
                v41 = v38 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v42 = *(v40 - 16);
                  v43 = *v40;
                  *(v40 - 16) = 0uLL;
                  *v40 = 0uLL;
                  *(v39 - 16) = v42;
                  *v39 = v43;
                  v39 += 32;
                  v40 += 32;
                  v41 -= 4;
                }

                while (v41);
                if (v38 != (v38 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_265:
                  do
                  {
LABEL_60:
                    v44 = *v36;
                    *v36++ = 0;
                    *v37++ = v44;
                  }

                  while (v36 != v4);
                }

                for (m = 0; m != v4; ++m)
                {
                }
              }

              v4 = v34;
            }

            v30 = [v29 countByEnumeratingWithState:&v231 objects:v245 count:16];
          }

          while (v30);
        }

        v27 = (&v225->super.super.isa + 1);
      }

      while ((&v225->super.super.isa + 1) != v222);
      v26 = [v214 countByEnumeratingWithState:&v235 objects:v246 count:16];
    }

    while (v26);
LABEL_67:

LABEL_68:
    v215 = 0;
    v208 = 0;
    while (2)
    {
      v46 = [obja inputTensors];
      v47 = v215 < [v46 count];

      if (v47)
      {
        v48 = [*(obja + 2) objectAtIndexedSubscript:v215];
        WeakRetained = objc_loadWeakRetained(obja + 6);
        v50 = objc_loadWeakRetained(v48 + 4);
        v51 = v212;
        v52 = WeakRetained;
        v53 = v50;
        v223 = v51;
        v226 = v53;
        v54 = v52 == v51 || v52 == v53;
        v55 = v52;
        if (!v54)
        {
          v56 = v52;
          do
          {
            v57 = [(MPSGraphBlock *)v56 parentOp];
            v55 = objc_loadWeakRetained(v57 + 6);

            v58 = v55 == v51 || v55 == v226;
            v56 = v55;
          }

          while (!v58);
        }

        if (v55 != v226)
        {
          v59 = *(obja + 8);
          if (*(*(v59 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::BroadcastGradientArgsOp,void>::id || v215 != 1)
          {
            goto LABEL_111;
          }

          v61 = (*(*(*(v59 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
          v62 = *v61;
          {
            v134 = llvm::getTypeName<mlir::ShapedType>();
            mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v134, v135);
          }

          v63 = *(v62 + 16);
          if (!v63)
          {
            goto LABEL_97;
          }

          v64 = *(v62 + 8);
          v65 = *(v62 + 16);
          do
          {
            v66 = v65 >> 1;
            v67 = &v64[2 * (v65 >> 1)];
            v69 = *v67;
            v68 = v67 + 2;
            v65 += ~(v65 >> 1);
            if (v69 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
            {
              v64 = v68;
            }

            else
            {
              v65 = v66;
            }
          }

          while (v65);
          if (v64 != (*(v62 + 8) + 16 * v63) && *v64 == mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id && v64[1])
          {
            v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v61 + 8);
          }

          else
          {
LABEL_97:
            v61 = 0;
            v70 = 0;
          }

          v230[0] = v61;
          v230[1] = v70;
          if (!v61 || !mlir::CallOpInterface::getArgOperands(v230))
          {
            goto LABEL_111;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v230);
          if (v72)
          {
            v73 = 8 * v72;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v73 -= 8;
              if (!v73)
              {
                goto LABEL_104;
              }
            }

LABEL_111:
            v99 = [v48 operation];
            v100 = v99[8];
            {
              v132 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
              mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v132, v133);
            }

            v101 = (*(**(v100 + 48) + 32))(*(v100 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);

            if (v101)
            {
              ParentBlock = mlir::Value::getParentBlock((**(v228 + 3) + 8));
              v103 = objc_loadWeakRetained((**(v228 + 3) + 32));
              v104 = [v48 operation];
              mlir::Operation::moveBefore(*(v104 + 64), ParentBlock, ParentBlock[5]);
              v105 = objc_loadWeakRetained((v104 + 48));
              [v105[2] removeObject:v104];
              if (v103)
              {
                [v103[2] addObject:v104];
              }

              objc_storeWeak((v104 + 48), v103);
              v106 = [v104 outputTensors];
              v107 = [v106 objectAtIndexedSubscript:0];
              objc_storeWeak(v107 + 4, v103);
            }

            else
            {
              v108 = *AutodiffSaveTemps::getBlockInfos(v228, v52);
              v109 = *AutodiffSaveTemps::getBlockInfos(v228, v226);
              v110 = v108 - v109;
              if (v108 == v109)
              {
                v111 = v52;
              }

              else
              {
                do
                {
                  v112 = [(MPSGraphBlock *)v52 parentOp];
                  v111 = objc_loadWeakRetained(v112 + 6);

                  v52 = v111;
                  --v110;
                }

                while (v110);
              }

              if (v226 != v223)
              {
                do
                {
                  v113 = [(MPSGraphBlock *)v226 parentOp];
                  v114 = *(AutodiffSaveTemps::getBlockInfos(v228, v226) + 5);
                  if (!v114)
                  {
LABEL_126:
                    operator new();
                  }

                  while (1)
                  {
                    while (1)
                    {
                      v115 = v114;
                      v116 = v114[4];
                      if (v48 >= v116)
                      {
                        break;
                      }

                      v114 = *v115;
                      if (!*v115)
                      {
                        goto LABEL_126;
                      }
                    }

                    if (v116 >= v48)
                    {
                      break;
                    }

                    v114 = v115[1];
                    if (!v114)
                    {
                      goto LABEL_126;
                    }
                  }

                  v117 = objc_loadWeakRetained(v113 + 6);

                  v226 = v117;
                  v118 = *(AutodiffSaveTemps::getBlockInfos(v228, v117) + 2);
                  if (!v118)
                  {
LABEL_133:
                    operator new();
                  }

                  while (1)
                  {
                    while (1)
                    {
                      v119 = v118;
                      v120 = v118[4];
                      if (v113 >= v120)
                      {
                        break;
                      }

                      v118 = *v119;
                      if (!*v119)
                      {
                        goto LABEL_133;
                      }
                    }

                    if (v120 >= v113)
                    {
                      break;
                    }

                    v118 = v119[1];
                    if (!v118)
                    {
                      goto LABEL_133;
                    }
                  }
                }

                while (v117 != v223);
              }

              v52 = v111;
              if (v111 != v223)
              {
                do
                {
                  v121 = [(MPSGraphBlock *)v52 parentOp];
                  v122 = *(AutodiffSaveTemps::getBlockInfos(v228, v52) + 14);
                  if (!v122)
                  {
LABEL_142:
                    operator new();
                  }

                  while (1)
                  {
                    while (1)
                    {
                      v123 = v122;
                      v124 = v122[4];
                      if (v48 >= v124)
                      {
                        break;
                      }

                      v122 = *v123;
                      if (!*v123)
                      {
                        goto LABEL_142;
                      }
                    }

                    if (v124 >= v48)
                    {
                      break;
                    }

                    v122 = v123[1];
                    if (!v122)
                    {
                      goto LABEL_142;
                    }
                  }

                  v125 = objc_loadWeakRetained(v121 + 6);

                  v218 = v125;
                  v52 = v125;
                  v126 = *(AutodiffSaveTemps::getBlockInfos(v228, v125) + 11);
                  if (!v126)
                  {
LABEL_149:
                    operator new();
                  }

                  while (1)
                  {
                    while (1)
                    {
                      v127 = v126;
                      v128 = v126[4];
                      if (v121 >= v128)
                      {
                        break;
                      }

                      v126 = *v127;
                      if (!*v127)
                      {
                        goto LABEL_149;
                      }
                    }

                    if (v128 >= v121)
                    {
                      break;
                    }

                    v126 = v127[1];
                    if (!v126)
                    {
                      goto LABEL_149;
                    }
                  }
                }

                while (v218 != v223);
              }

              v208 = 1;
            }
          }

          else
          {
LABEL_104:
            v74 = *(*(v228 + 3) + 16);
            v224 = *(*(v74 + 56) + 16);
            v75 = *(v74 + 176);
            v76 = *(*(*(v228 + 3) + 16) + 56);
            v77 = *(obja + 8);
            v78 = *(v77 + 16);
            v80 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v77, v79);
            *(v76 + 16) = v78;
            *(v76 + 24) = v80;
            v81 = objc_loadWeakRetained(obja + 6);
            v82 = *(*(v228 + 3) + 16);
            v83 = *(v82 + 176);
            *(v82 + 176) = v81;

            v84 = *(*(v228 + 3) + 16);
            v85 = getMPSShapeFromMLIR(v230[0]);
            v86 = [*(obja + 2) objectAtIndexedSubscript:1];
            v87 = [v84 constantWithScalar:v85 shape:objc_msgSend(v86 dataType:{"dataType"), 0.0}];

            v88 = obja;
            v89 = v87;
            v90 = [v88[2] mutableCopy];
            [v90 setObject:v89 atIndexedSubscript:1];
            v91 = v88[2];
            v88[2] = v90;

            v92 = v89[1];
            v93 = *(v88[8] + 9);
            v94 = v93 + 4;
            v95 = v93[5];
            if (v95)
            {
              v96 = *v94;
              *v95 = *v94;
              if (v96)
              {
                *(v96 + 8) = v95;
              }
            }

            v93[7] = v92;
            v93[5] = v92;
            v97 = *v92;
            v93[4] = *v92;
            if (v97)
            {
              *(v97 + 8) = v94;
            }

            *v92 = v94;
            v98 = *(*(*(v228 + 3) + 16) + 56);
            if (v224)
            {
              *(v98 + 16) = v224;
            }

            else
            {
              *(v98 + 16) = 0;
              *(v98 + 24) = 0;
            }

            v129 = *(*(v228 + 3) + 16);
            v130 = *(v129 + 176);
            *(v129 + 176) = v75;
            v131 = v75;
          }
        }

        ++v215;
        continue;
      }

      break;
    }

    if (v208)
    {
      v136 = objc_loadWeakRetained(obja + 6);
      v137 = *(AutodiffSaveTemps::getBlockInfos(v228, v136) + 17);
      if (!v137)
      {
LABEL_168:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v138 = v137;
          v139 = v137[4];
          if (obja >= v139)
          {
            break;
          }

          v137 = *v138;
          if (!*v138)
          {
            goto LABEL_168;
          }
        }

        if (v139 >= obja)
        {
          break;
        }

        v137 = v138[1];
        if (!v137)
        {
          goto LABEL_168;
        }
      }
    }

LABEL_25:
  }

  std::__tree<MPSGraphTensor * {__strong}>::destroy(&v243, v244[0]);
LABEL_170:

  v140 = v228;
  v141 = AutodiffSaveTemps::getBlockInfos(v228, *(v228 + 4));
  v142 = *(v141 + 1);
  v143 = v141 + 16;
  if (v142 != v141 + 16)
  {
    do
    {
      v146 = *(v142 + 4);
      AutodiffSaveTemps::extractTempsFromOp(v228, v146);

      v147 = *(v142 + 1);
      if (v147)
      {
        do
        {
          v148 = v147;
          v147 = *v147;
        }

        while (v147);
      }

      else
      {
        do
        {
          v148 = *(v142 + 2);
          v54 = *v148 == v142;
          v142 = v148;
        }

        while (!v54);
      }

      v142 = v148;
    }

    while (v148 != v143);
  }

  v144 = *(BlockInfos + 7);
  if (v144 != BlockInfos + 64)
  {
    v145 = BlockInfos + 112;
    do
    {
      v149 = *(v144 + 4);
      v150 = *(v144 + 5);
      v151 = *v145;
      if (!*v145)
      {
LABEL_187:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v152 = v151;
          v153 = v151[4];
          if (v149 >= v153)
          {
            break;
          }

          v151 = *v152;
          if (!*v152)
          {
            goto LABEL_187;
          }
        }

        if (v153 >= v149)
        {
          break;
        }

        v151 = v152[1];
        if (!v151)
        {
          goto LABEL_187;
        }
      }

      v154 = v152;
      v140 = v228;
      v155 = v152[5];
      v154[5] = v150;
      v156 = v150;

      v157 = *(v144 + 1);
      if (v157)
      {
        do
        {
          v158 = v157;
          v157 = *v157;
        }

        while (v157);
      }

      else
      {
        do
        {
          v158 = *(v144 + 2);
          v54 = *v158 == v144;
          v144 = v158;
        }

        while (!v54);
      }

      v144 = v158;
    }

    while (v158 != BlockInfos + 64);
  }

  v159 = AutodiffSaveTemps::getBlockInfos(v140, v140[4]);
  v160 = *(v159 + 10);
  v161 = v159 + 88;
  if (v160 != v159 + 88)
  {
    do
    {
      v163 = *(v160 + 4);
      AutodiffSaveTemps::injectTempsIntoOp(v140, v163);

      v164 = *(v160 + 1);
      if (v164)
      {
        do
        {
          v165 = v164;
          v164 = *v164;
        }

        while (v164);
      }

      else
      {
        do
        {
          v165 = *(v160 + 2);
          v54 = *v165 == v160;
          v160 = v165;
        }

        while (!v54);
      }

      v160 = v165;
    }

    while (v165 != v161);
  }

  v162 = *v140;
  v209 = v140 + 1;
  if (*v140 != (v140 + 1))
  {
    do
    {
      if (v162[4]._mlirBlock)
      {
        v211 = v162;
        v246[0] = v162->_parentRegion;
        v166 = AutodiffSaveTemps::getBlockInfos(v140, v246[0]);
        objb = *v166;
        v248[0] = 0;
        v248[1] = 0;
        v247 = v248;
        v167 = *(v166 + 16);
        v213 = v166 + 136;
        if (v167 == (v166 + 136))
        {
          v168 = 0;
        }

        else
        {
          do
          {
            v216 = v167;
            __p = v167[4];
            v227 = objc_loadWeakRetained(__p + 6);
            for (n = 0; n < [__p[2] count]; ++n)
            {
              v170 = [__p[2] objectAtIndexedSubscript:n];
              v171 = objc_loadWeakRetained((v170 + 32));
              v172 = *(v228 + 4);
              v173 = v227;
              v174 = v171;
              v175 = v173 == v174 || v173 == v172;
              v176 = v173;
              if (!v175)
              {
                v177 = v173;
                do
                {
                  v178 = [(MPSGraphBlock *)v177 parentOp];
                  v176 = objc_loadWeakRetained(v178 + 6);

                  v179 = v176 == v172 || v176 == v174;
                  v177 = v176;
                }

                while (!v179);
              }

              if (v176 != v174)
              {
                v180 = *AutodiffSaveTemps::getBlockInfos(v228, v174);
                v181 = v173;
                v182 = v181;
                v183 = objb - v180;
                if (v183)
                {
                  do
                  {
                    v185 = [(MPSGraphBlock *)v182 parentOp];
                    v184 = objc_loadWeakRetained(v185 + 6);

                    v182 = v184;
                    --v183;
                  }

                  while (v183);
                }

                else
                {
                  v184 = v181;
                }

                v186 = AutodiffSaveTemps::getBlockInfos(v228, v184);
                v189 = *(v186 + 14);
                v187 = v186 + 112;
                v188 = v189;
                if (!v189)
                {
                  goto LABEL_233;
                }

                v190 = v187;
                do
                {
                  v191 = *(v188 + 32);
                  v192 = v191 >= v170;
                  v193 = v191 < v170;
                  if (v192)
                  {
                    v190 = v188;
                  }

                  v188 = *(v188 + 8 * v193);
                }

                while (v188);
                if (v190 == v187 || v170 < *(v190 + 4))
                {
LABEL_233:
                  v190 = v187;
                }

                v194 = *(v190 + 5);
                v195 = __p;
                v196 = v194;
                v197 = [v195[2] mutableCopy];
                [v197 setObject:v196 atIndexedSubscript:n];
                v198 = v195[2];
                v195[2] = v197;

                v199 = *(v170 + 8);
                v200 = v248[0];
LABEL_236:
                if (!v200)
                {
LABEL_240:
                  operator new();
                }

                while (1)
                {
                  v201 = v200;
                  v202 = v200[4];
                  if (v199 < v202)
                  {
                    v200 = *v201;
                    goto LABEL_236;
                  }

                  if (v202 >= v199)
                  {
                    break;
                  }

                  v200 = v201[1];
                  if (!v200)
                  {
                    goto LABEL_240;
                  }
                }
              }
            }

            v203 = v216;
            v204 = v216[1];
            if (v204)
            {
              do
              {
                v205 = v204;
                v204 = *v204;
              }

              while (v204);
            }

            else
            {
              do
              {
                v205 = v203[2];
                v54 = *v205 == v203;
                v203 = v205;
              }

              while (!v54);
            }

            v167 = v205;
          }

          while (v205 != v213);
          v168 = v248[0];
        }

        std::__tree<void *>::destroy(v168);

        v140 = v228;
        v162 = v211;
      }

      terminator = v162->_terminator;
      if (terminator)
      {
        do
        {
          blockOperations = terminator;
          terminator = terminator->super.super.isa;
        }

        while (terminator);
      }

      else
      {
        do
        {
          blockOperations = v162->_blockOperations;
          v54 = blockOperations->super.super.isa == v162;
          v162 = blockOperations;
        }

        while (!v54);
      }

      v162 = blockOperations;
    }

    while (blockOperations != v209);
  }
}

void sub_1E0754C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, char *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51)
{

  std::__tree<MPSGraphTensor * {__strong}>::destroy(&a50, a51);
  if (__p)
  {
    while (v51 != __p)
    {
      v55 = *(v51 - 1);
      v51 -= 8;
    }

    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *AutodiffSaveTemps::getBlockInfos(AutodiffSaveTemps *this, MPSGraphBlock *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = this + 8;
  v5 = *(this + 1);
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = this + 8;
  do
  {
    v8 = *(v5 + 4);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 == v6 || *(v7 + 4) > v3)
  {
LABEL_9:
    v11 = v3;
    v12 = v11;
    if (*(this + 4) == v11)
    {
      WeakRetained = v11;
    }

    else
    {
      v13 = 0;
      v14 = v11;
      do
      {
        v15 = [(MPSGraphBlock *)v14 parentOp];
        ++v13;
        WeakRetained = objc_loadWeakRetained(v15 + 6);

        v14 = WeakRetained;
      }

      while (WeakRetained != *(this + 4));
    }

    v21 = v22;
    v22[0] = 0;
    v24[0] = 0;
    v24[1] = 0;
    v22[1] = 0;
    v23 = v24;
    v25 = v26;
    v26[0] = 0;
    v28[0] = 0;
    v28[1] = 0;
    v26[1] = 0;
    v27 = v28;
    v29 = v30;
    v30[0] = 0;
    v32[0] = 0;
    v32[1] = 0;
    v30[1] = 0;
    v31 = v32;
    v17 = *v6;
    if (!*v6)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v18 = v17;
        v19 = *(v17 + 4);
        if (v19 <= v12)
        {
          break;
        }

        v17 = *v18;
        if (!*v18)
        {
          goto LABEL_20;
        }
      }

      if (v19 >= v12)
      {
        break;
      }

      v17 = *(v18 + 1);
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    v7 = v18;
    std::__tree<MPSGraphTensor * {__strong}>::destroy(&v31, 0);
    std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(&v29, v30[0]);
    std::__tree<MPSGraphTensor * {__strong}>::destroy(&v27, v28[0]);
    std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(&v25, v26[0]);
    std::__tree<MPSGraphTensor * {__strong}>::destroy(&v23, v24[0]);
    std::__tree<MPSGraphTensor * {__strong}>::destroy(&v21, v22[0]);
  }

  return v7 + 40;
}

void sub_1E075529C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AutodiffSaveTemps::BlockInfos::~BlockInfos(va);

  _Unwind_Resume(a1);
}

void AutodiffSaveTemps::extractTempsFromOp(AutodiffSaveTemps *this, MPSGraphOperation *a2)
{
  v119 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(&v3->_parentBlock);
  v107 = this;
  BlockInfos = AutodiffSaveTemps::getBlockInfos(this, WeakRetained);

  v115 = 0;
  v116 = 0;
  v117 = 0;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v3->_region->_blocks;
  v97 = v3;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v111 objects:v118 count:16];
  v98 = BlockInfos;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_105;
  }

  v7 = 0;
  v8 = 0;
  v100 = *v112;
  do
  {
    v101 = v6;
    for (i = 0; i != v101; ++i)
    {
      if (*v112 != v100)
      {
        objc_enumerationMutation(obj);
      }

      v106 = *(*(&v111 + 1) + 8 * i);
      v9 = AutodiffSaveTemps::getBlockInfos(v107, v106);
      if (*(v9 + 6))
      {
        v10 = AutodiffSaveTemps::getBlockInfos(v107, v106);
        v11 = *(v10 + 1);
        v12 = v10 + 16;
        if (v11 != v10 + 16)
        {
          do
          {
            v14 = *(v11 + 4);
            AutodiffSaveTemps::extractTempsFromOp(v107, v14);

            v15 = *(v11 + 1);
            if (v15)
            {
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15);
            }

            else
            {
              do
              {
                v16 = *(v11 + 2);
                v17 = *v16 == v11;
                v11 = v16;
              }

              while (!v17);
            }

            v11 = v16;
          }

          while (v16 != v12);
        }

        v13 = *(v9 + 4);
        v105 = v9 + 40;
        if (v13 != v9 + 40)
        {
          v103 = v9 + 64;
          while (1)
          {
            v18 = *(v13 + 4);
            v19 = v18;
            if (v8 < v7)
            {
              *v8 = v18;
              v108 = (v8 + 8);
              goto LABEL_38;
            }

            v20 = (v8 >> 3) + 1;
            if (v20 >> 61)
            {
              std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
            }

            if (v7 >> 2 > v20)
            {
              v20 = v7 >> 2;
            }

            if (v20)
            {
              if (!(v20 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v21 = (8 * (v8 >> 3));
            *v21 = v18;
            v108 = v21 + 1;
            if (v8)
            {
              break;
            }

LABEL_37:
            v7 = 0;
LABEL_38:
            v33 = objc_loadWeakRetained(v19 + 4);
            v34 = v33 == v106;

            if (v34)
            {
              v40 = v116;
              if (v116 < v117)
              {
                v41 = v19;
                goto LABEL_52;
              }

              v43 = v115;
              v49 = v116 - v115;
              v50 = (v116 - v115) >> 3;
              v51 = v50 + 1;
              if ((v50 + 1) >> 61)
              {
                std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
              }

              v52 = v117 - v115;
              if ((v117 - v115) >> 2 > v51)
              {
                v51 = v52 >> 2;
              }

              if (v52 >= 0x7FFFFFFFFFFFFFF8)
              {
                v53 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v53 = v51;
              }

              v104 = v7;
              if (v53)
              {
                if (!(v53 >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v68 = (v116 - v115) >> 3;
              v56 = 0;
              *(8 * v50) = v19;
              v42 = 8 * v50 + 8;
              if (v43 == v40)
              {
LABEL_100:
                v7 = v104;
                v115 = v56;
                v116 = v42;
                v117 = 0;
                if (!v43)
                {
                  goto LABEL_94;
                }

LABEL_93:
                operator delete(v43);
                goto LABEL_94;
              }

              v69 = v40 - v43 - 8;
              v70 = v43;
              v71 = 0;
              if (v69 < 0x38)
              {
                goto LABEL_136;
              }

              if (v43 < v49 + (v69 & 0xFFFFFFFFFFFFFFF8) - 8 * v68 + 8)
              {
                v70 = v43;
                v71 = 0;
                if ((v43 + (v69 & 0xFFFFFFFFFFFFFFF8)) != -8)
                {
                  goto LABEL_136;
                }
              }

              v72 = (v69 >> 3) + 1;
              v71 = (8 * (v72 & 0x3FFFFFFFFFFFFFFCLL));
              v70 = (v71 + v43);
              v73 = (-8 * v68 + 8 * v50 + 16);
              v74 = (v43 + 2);
              v75 = v72 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v76 = *(v74 - 1);
                v77 = *v74;
                *(v74 - 1) = 0uLL;
                *v74 = 0uLL;
                *(v73 - 1) = v76;
                *v73 = v77;
                v73 += 2;
                v74 += 2;
                v75 -= 4;
              }

              while (v75);
              if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_136:
                do
                {
                  v78 = *v70;
                  *v70++ = 0;
                  *v71++ = v78;
                }

                while (v70 != v40);
              }

              v7 = v104;
              do
              {
              }

              while (v43 != v40);
            }

            else
            {
              v35 = *v103;
              if (!*v103)
              {
                goto LABEL_47;
              }

              v36 = v103;
              do
              {
                v37 = v35[4];
                v38 = v37 >= v19;
                v39 = v37 < v19;
                if (v38)
                {
                  v36 = v35;
                }

                v35 = v35[v39];
              }

              while (v35);
              if (v36 == v103 || v19 < v36[4])
              {
LABEL_47:
                v36 = v103;
              }

              v40 = v116;
              if (v116 < v117)
              {
                v41 = v36[5];
LABEL_52:
                *v40 = v41;
                v42 = (v40 + 8);
                goto LABEL_94;
              }

              v43 = v115;
              v44 = v116 - v115;
              v45 = (v116 - v115) >> 3;
              v46 = v45 + 1;
              if ((v45 + 1) >> 61)
              {
                std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
              }

              v47 = v117 - v115;
              if ((v117 - v115) >> 2 > v46)
              {
                v46 = v47 >> 2;
              }

              if (v47 >= 0x7FFFFFFFFFFFFFF8)
              {
                v48 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v46;
              }

              v104 = v7;
              if (v48)
              {
                if (!(v48 >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v54 = (v116 - v115) >> 3;
              v55 = v36[5];
              v56 = (8 * v45 - 8 * v54);
              *(8 * v45) = v55;
              v42 = 8 * v45 + 8;
              if (v43 == v40)
              {
                goto LABEL_100;
              }

              v57 = v40 - v43 - 8;
              v58 = v43;
              v59 = (8 * v45 - 8 * v54);
              if (v57 < 0x38)
              {
                goto LABEL_137;
              }

              if (v43 < v44 + (v57 & 0xFFFFFFFFFFFFFFF8) - 8 * v54 + 8)
              {
                v58 = v43;
                v59 = (8 * v45 - 8 * v54);
                if (v56 < v43 + (v57 & 0xFFFFFFFFFFFFFFF8) + 8)
                {
                  goto LABEL_137;
                }
              }

              v60 = (v57 >> 3) + 1;
              v61 = v60 & 0x3FFFFFFFFFFFFFFCLL;
              v58 = &v43[v61];
              v59 = &v56[v61 * 8];
              v62 = (-8 * v54 + 8 * v45 + 16);
              v63 = (v43 + 2);
              v64 = v60 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v65 = *(v63 - 1);
                v66 = *v63;
                *(v63 - 1) = 0uLL;
                *v63 = 0uLL;
                *(v62 - 1) = v65;
                *v62 = v66;
                v62 += 2;
                v63 += 2;
                v64 -= 4;
              }

              while (v64);
              if (v60 != (v60 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_137:
                do
                {
                  v67 = *v58;
                  *v58++ = 0;
                  *v59 = v67;
                  v59 += 8;
                }

                while (v58 != v40);
              }

              v7 = v104;
              do
              {
              }

              while (v43 != v40);
            }

            v43 = v115;
            v115 = v56;
            v116 = v42;
            v117 = 0;
            if (v43)
            {
              goto LABEL_93;
            }

LABEL_94:
            v116 = v42;

            v79 = *(v13 + 1);
            if (v79)
            {
              do
              {
                v80 = v79;
                v79 = *v79;
              }

              while (v79);
            }

            else
            {
              do
              {
                v80 = *(v13 + 2);
                v17 = *v80 == v13;
                v13 = v80;
              }

              while (!v17);
            }

            v8 = v108;
            v13 = v80;
            if (v80 == v105)
            {
              goto LABEL_4;
            }
          }

          v22 = v8 - 8;
          v23 = 0;
          v24 = 0;
          if ((v8 - 8) < 0x28)
          {
            goto LABEL_138;
          }

          if ((v22 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
          {
            v23 = 0;
            v24 = 0;
            goto LABEL_34;
          }

          v25 = (v22 >> 3) + 1;
          v24 = (8 * (v25 & 0x3FFFFFFFFFFFFFFCLL));
          v23 = v24;
          v26 = 16;
          v27 = 16;
          v28 = v25 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v29 = *(v27 - 16);
            v30 = *v27;
            *(v27 - 16) = 0uLL;
            *v27 = 0uLL;
            *(v26 - 16) = v29;
            *v26 = v30;
            v26 += 32;
            v27 += 32;
            v28 -= 4;
          }

          while (v28);
          if (v25 != (v25 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_138:
            do
            {
LABEL_34:
              v31 = *v23;
              *v23++ = 0;
              *v24++ = v31;
            }

            while (v23 != v8);
          }

          for (j = 0; j != v8; ++j)
          {
          }

          goto LABEL_37;
        }
      }

LABEL_4:
      ;
    }

    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v111 objects:v118 count:16];
  }

  while (v6);
LABEL_105:

  OpData = getOpData(v97);
  (*(*OpData + 40))(&v109);
  if (v8)
  {
    v82 = 0;
    v83 = (v98 + 64);
    if ((v8 >> 3) <= 1)
    {
      v84 = 1;
    }

    else
    {
      v84 = v8 >> 3;
    }

    do
    {
      v85 = *v83;
      if (!*v83)
      {
LABEL_115:
        operator new();
      }

      v86 = *(8 * v82);
      while (1)
      {
        while (1)
        {
          v87 = v85;
          v88 = v85[4];
          if (v86 >= v88)
          {
            break;
          }

          v85 = *v87;
          if (!*v87)
          {
            goto LABEL_115;
          }
        }

        if (v88 >= v86)
        {
          break;
        }

        v85 = v87[1];
        if (!v85)
        {
          goto LABEL_115;
        }
      }

      objc_storeStrong(v87 + 5, *(v109 + v82++));
    }

    while (v82 != v84);
  }

  v89 = v109;
  if (v109)
  {
    v90 = v110;
    v91 = v109;
    if (v110 != v109)
    {
      do
      {
        v92 = *(v90 - 1);
        v90 -= 8;
      }

      while (v90 != v89);
      v91 = v109;
    }

    v110 = v89;
    operator delete(v91);
  }

  v93 = v115;
  if (v115)
  {
    v94 = v116;
    v95 = v115;
    if (v116 != v115)
    {
      do
      {
        v96 = *(v94 - 1);
        v94 -= 8;
      }

      while (v94 != v93);
      v95 = v115;
    }

    v116 = v93;
    operator delete(v95);
  }
}