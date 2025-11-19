void mlir::intrange::inferOr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  widenBitwiseBounds(&v9, a1);
  widenBitwiseBounds(&v5, (a1 + 64));
  v18 = v10;
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v17, &v9);
    v20 = v12;
    if (v12 > 0x40)
    {
LABEL_3:
      llvm::APInt::initSlowCase(&v19, &v11);
      v14 = v6;
      if (v6 > 0x40)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = v5;
      v16 = v8;
      if (v8 > 0x40)
      {
        goto LABEL_5;
      }

LABEL_9:
      __p = v7;
      goto LABEL_10;
    }
  }

  else
  {
    v17 = v9;
    v20 = v12;
    if (v12 > 0x40)
    {
      goto LABEL_3;
    }
  }

  v19 = v11;
  v14 = v6;
  if (v6 <= 0x40)
  {
    goto LABEL_8;
  }

LABEL_4:
  llvm::APInt::initSlowCase(&v13, &v5);
  v16 = v8;
  if (v8 <= 0x40)
  {
    goto LABEL_9;
  }

LABEL_5:
  llvm::APInt::initSlowCase(&__p, &v7);
LABEL_10:
  minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferOr(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v4, &v17, 2, &v13, 2, 0);
  if (v16 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  if (v20 >= 0x41 && v19)
  {
    operator delete[](v19);
  }

  if (v18 >= 0x41 && v17)
  {
    operator delete[](v17);
  }

  if (v8 >= 0x41 && v7)
  {
    operator delete[](v7);
  }

  if (v6 >= 0x41 && v5)
  {
    operator delete[](v5);
  }

  if (v12 >= 0x41 && v11)
  {
    operator delete[](v11);
  }

  if (v10 >= 0x41)
  {
    if (v9)
    {
      operator delete[](v9);
    }
  }
}

void mlir::intrange::inferXor(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  widenBitwiseBounds(&v9, a1);
  widenBitwiseBounds(&v5, (a1 + 64));
  v18 = v10;
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v17, &v9);
    v20 = v12;
    if (v12 > 0x40)
    {
LABEL_3:
      llvm::APInt::initSlowCase(&v19, &v11);
      v14 = v6;
      if (v6 > 0x40)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = v5;
      v16 = v8;
      if (v8 > 0x40)
      {
        goto LABEL_5;
      }

LABEL_9:
      __p = v7;
      goto LABEL_10;
    }
  }

  else
  {
    v17 = v9;
    v20 = v12;
    if (v12 > 0x40)
    {
      goto LABEL_3;
    }
  }

  v19 = v11;
  v14 = v6;
  if (v6 <= 0x40)
  {
    goto LABEL_8;
  }

LABEL_4:
  llvm::APInt::initSlowCase(&v13, &v5);
  v16 = v8;
  if (v8 <= 0x40)
  {
    goto LABEL_9;
  }

LABEL_5:
  llvm::APInt::initSlowCase(&__p, &v7);
LABEL_10:
  minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferXor(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v4, &v17, 2, &v13, 2, 0);
  if (v16 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  if (v20 >= 0x41 && v19)
  {
    operator delete[](v19);
  }

  if (v18 >= 0x41 && v17)
  {
    operator delete[](v17);
  }

  if (v8 >= 0x41 && v7)
  {
    operator delete[](v7);
  }

  if (v6 >= 0x41 && v5)
  {
    operator delete[](v5);
  }

  if (v12 >= 0x41 && v11)
  {
    operator delete[](v11);
  }

  if (v10 >= 0x41)
  {
    if (v9)
    {
      operator delete[](v9);
    }
  }
}

uint64_t mlir::intrange::inferShl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1 + 64, a2);
  v8 = mlir::ConstantIntRanges::umax((a1 + 64));
  v42 = &unk_1F5B15C88;
  v43 = a3;
  v44 = &v42;
  v39 = &unk_1F5B15D08;
  v40 = a3;
  v41 = &v39;
  v10 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, v9);
  v28 = *(v10 + 8);
  if (v28 > 0x40)
  {
    llvm::APInt::initSlowCase(&v27, v10);
  }

  else
  {
    v27 = *v10;
  }

  v11 = mlir::ConstantIntRanges::umax(a1);
  v30 = *(v11 + 8);
  if (v30 <= 0x40)
  {
    __p = *v11;
    v36 = *(v7 + 8);
    if (v36 > 0x40)
    {
      goto LABEL_6;
    }

LABEL_9:
    v35 = *v7;
    v38 = *(v8 + 8);
    if (v38 > 0x40)
    {
      goto LABEL_7;
    }

LABEL_10:
    v37 = *v8;
    goto LABEL_11;
  }

  llvm::APInt::initSlowCase(&__p, v11);
  v36 = *(v7 + 8);
  if (v36 <= 0x40)
  {
    goto LABEL_9;
  }

LABEL_6:
  llvm::APInt::initSlowCase(&v35, v7);
  v38 = *(v8 + 8);
  if (v38 <= 0x40)
  {
    goto LABEL_10;
  }

LABEL_7:
  llvm::APInt::initSlowCase(&v37, v8);
LABEL_11:
  minMaxBy(&v15, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v42, &v27, 2, &v35, 2, 0);
  if (v38 >= 0x41 && v37)
  {
    operator delete[](v37);
  }

  if (v36 >= 0x41 && v35)
  {
    operator delete[](v35);
  }

  if (v30 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v28 >= 0x41 && v27)
  {
    operator delete[](v27);
  }

  v12 = mlir::ConstantIntRanges::smin(a1);
  v36 = *(v12 + 8);
  if (v36 > 0x40)
  {
    llvm::APInt::initSlowCase(&v35, v12);
  }

  else
  {
    v35 = *v12;
  }

  v13 = mlir::ConstantIntRanges::smax(a1);
  v38 = *(v13 + 8);
  if (v38 <= 0x40)
  {
    v37 = *v13;
    v24 = *(v7 + 8);
    if (v24 > 0x40)
    {
      goto LABEL_28;
    }

LABEL_31:
    v23 = *v7;
    v26 = *(v8 + 8);
    if (v26 > 0x40)
    {
      goto LABEL_29;
    }

LABEL_32:
    v25 = *v8;
    goto LABEL_33;
  }

  llvm::APInt::initSlowCase(&v37, v13);
  v24 = *(v7 + 8);
  if (v24 <= 0x40)
  {
    goto LABEL_31;
  }

LABEL_28:
  llvm::APInt::initSlowCase(&v23, v7);
  v26 = *(v8 + 8);
  if (v26 <= 0x40)
  {
    goto LABEL_32;
  }

LABEL_29:
  llvm::APInt::initSlowCase(&v25, v8);
LABEL_33:
  minMaxBy(&v27, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v39, &v35, 2, &v23, 2, 1);
  if (v26 >= 0x41 && v25)
  {
    operator delete[](v25);
  }

  if (v24 >= 0x41 && v23)
  {
    operator delete[](v23);
  }

  if (v38 >= 0x41 && v37)
  {
    operator delete[](v37);
  }

  if (v36 >= 0x41 && v35)
  {
    operator delete[](v35);
  }

  mlir::ConstantIntRanges::intersection(&v15, &v27, a4);
  if (v34 >= 0x41 && v33)
  {
    operator delete[](v33);
  }

  if (v32 >= 0x41 && v31)
  {
    operator delete[](v31);
  }

  if (v30 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v28 >= 0x41 && v27)
  {
    operator delete[](v27);
  }

  if (v22 >= 0x41 && v21)
  {
    operator delete[](v21);
  }

  if (v20 >= 0x41 && v19)
  {
    operator delete[](v19);
  }

  if (v18 >= 0x41 && v17)
  {
    operator delete[](v17);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v41 != &v39)
  {
    if (v41)
    {
      (*(*v41 + 5))(v41);
    }

    result = v44;
    if (v44 != &v42)
    {
      goto LABEL_73;
    }

    return (*(*result + 32))(result);
  }

  (*(*v41 + 4))(v41);
  result = v44;
  if (v44 == &v42)
  {
    return (*(*result + 32))(result);
  }

LABEL_73:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void mlir::intrange::inferShrS(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = mlir::ConstantIntRanges::smin(a1);
  v14 = *(v4 + 8);
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13, v4);
  }

  else
  {
    v13 = *v4;
  }

  v5 = mlir::ConstantIntRanges::smax(a1);
  v6 = v5;
  v16 = *(v5 + 8);
  if (v16 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, v5);
  }

  else
  {
    v15 = *v5;
  }

  v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1 + 64, v6);
  v10 = *(v7 + 8);
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, v7);
  }

  else
  {
    v9 = *v7;
  }

  v8 = mlir::ConstantIntRanges::umax((a1 + 64));
  v12 = *(v8 + 8);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, v8);
  }

  else
  {
    __p = *v8;
  }

  minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v13, &v13, 2, &v9, 2, 1);
  if (v12 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v10 >= 0x41 && v9)
  {
    operator delete[](v9);
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

void mlir::intrange::inferShrU(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);
  v15 = *(v5 + 8);
  if (v15 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, v5);
  }

  else
  {
    v14 = *v5;
  }

  v6 = mlir::ConstantIntRanges::umax(a1);
  v7 = v6;
  v17 = *(v6 + 8);
  if (v17 > 0x40)
  {
    llvm::APInt::initSlowCase(&v16, v6);
  }

  else
  {
    v16 = *v6;
  }

  v8 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1 + 64, v7);
  v11 = *(v8 + 8);
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v10, v8);
  }

  else
  {
    v10 = *v8;
  }

  v9 = mlir::ConstantIntRanges::umax((a1 + 64));
  v13 = *(v9 + 8);
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, v9);
  }

  else
  {
    __p = *v9;
  }

  minMaxBy(a3, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v14, &v14, 2, &v10, 2, 0);
  if (v13 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v11 >= 0x41 && v10)
  {
    operator delete[](v10);
  }

  if (v17 >= 0x41 && v16)
  {
    operator delete[](v16);
  }

  if (v15 >= 0x41)
  {
    if (v14)
    {
      operator delete[](v14);
    }
  }
}

uint64_t mlir::intrange::evaluatePred(uint64_t a1, mlir::ConstantIntRanges *a2, mlir::ConstantIntRanges *a3)
{
  if (isStaticallyTrue(a1, a2, a3))
  {
    return 257;
  }

  else
  {
    return isStaticallyTrue(qword_1E09843F8[a1], a2, a3) << 8;
  }
}

uint64_t isStaticallyTrue(uint64_t a1, mlir::ConstantIntRanges *this, mlir::ConstantIntRanges *a3)
{
  result = 0;
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v25 = mlir::ConstantIntRanges::smax(this);
        v26 = mlir::ConstantIntRanges::smin(a3);
        return llvm::APInt::compareSigned(v25, v26) >> 31;
      }

      if (a1 != 3)
      {
        v7 = mlir::ConstantIntRanges::smin(this);
        v8 = mlir::ConstantIntRanges::smax(a3);
        v9 = llvm::APInt::compareSigned(v7, v8);
        return v9 > 0;
      }

      v31 = mlir::ConstantIntRanges::smax(this);
      v32 = mlir::ConstantIntRanges::smin(a3);
      v30 = llvm::APInt::compareSigned(v31, v32);
      return v30 < 1;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v13 = mlir::ConstantIntRanges::smax(this);
        v14 = mlir::ConstantIntRanges::smin(a3);
        if ((llvm::APInt::compareSigned(v13, v14) & 0x80000000) != 0)
        {
          v17 = 1;
        }

        else
        {
          v15 = mlir::ConstantIntRanges::smin(this);
          v16 = mlir::ConstantIntRanges::smax(a3);
          v17 = llvm::APInt::compareSigned(v15, v16) > 0;
        }

        v35 = mlir::ConstantIntRanges::umax(this);
        v37 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a3, v36);
        if ((llvm::APInt::compare(v35, v37) & 0x80000000) != 0)
        {
          return v17;
        }

        else
        {
          v39 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, v38);
          v40 = mlir::ConstantIntRanges::umax(a3);
          return v17 & (llvm::APInt::compare(v39, v40) > 0);
        }
      }
    }

    else
    {
      mlir::ConstantIntRanges::getConstantValue(this, &v46);
      mlir::ConstantIntRanges::getConstantValue(a3, &__p);
      result = 0;
      v21 = v48;
      v22 = v45;
      if (v48 == 1 && v45 == 1)
      {
        if (v47 > 0x40)
        {
          result = llvm::APInt::equalSlowCase(&v46, &__p);
        }

        else
        {
          result = v46 == __p;
        }

        v22 = 1;
      }

      if ((v22 & 1) != 0 && v44 >= 0x41 && __p)
      {
        v41 = result;
        operator delete[](__p);
        result = v41;
        v21 = v48;
      }

      if ((v21 & 1) != 0 && v47 >= 0x41 && v46)
      {
        v42 = result;
        operator delete[](v46);
        return v42;
      }
    }

    return result;
  }

  if (a1 <= 6)
  {
    if (a1 != 5)
    {
      v18 = mlir::ConstantIntRanges::umax(this);
      v20 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a3, v19);
      return llvm::APInt::compare(v18, v20) >> 31;
    }

    v23 = mlir::ConstantIntRanges::smin(this);
    v24 = mlir::ConstantIntRanges::smax(a3);
    v12 = llvm::APInt::compareSigned(v23, v24);
    return v12 >= 0;
  }

  switch(a1)
  {
    case 7:
      v27 = mlir::ConstantIntRanges::umax(this);
      v29 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a3, v28);
      v30 = llvm::APInt::compare(v27, v29);
      return v30 < 1;
    case 8:
      v33 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, this);
      v34 = mlir::ConstantIntRanges::umax(a3);
      v9 = llvm::APInt::compare(v33, v34);
      return v9 > 0;
    case 9:
      v10 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, this);
      v11 = mlir::ConstantIntRanges::umax(a3);
      v12 = llvm::APInt::compare(v10, v11);
      return v12 >= 0;
  }

  return result;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivURange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>(uint64_t *a1, const void **this, llvm::APInt *a3)
{
  v5 = *a1;
  llvm::APInt::udiv(this, a3, &__p);
  (*v5)(*(v5 + 8), this, a3, &__p);
  if (v7 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivSRange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, _BYTE *a4@<X8>)
{
  v10 = 0;
  llvm::APInt::sdiv_ov(this, a2, &v10, &__p);
  if (v10)
  {
    *a4 = 0;
    a4[16] = 0;
    if (v9 < 0x41)
    {
      return;
    }
  }

  else
  {
    (**a3)(*(*a3 + 8), this, a2, &__p);
    if (v9 < 0x41)
    {
      return;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }
}

void llvm::APInt::clearLowBits(llvm::APInt *this, int a2)
{
  v4 = *(this + 2);
  v8 = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, 0, 0);
    v5 = v8;
    if (v4 == a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __p = 0;
    v5 = v4;
    if (v4 == a2)
    {
LABEL_8:
      if (*(this + 2) <= 0x40u)
      {
        goto LABEL_9;
      }

LABEL_12:
      llvm::APInt::andAssignSlowCase(this, &__p);
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  v6 = v5 - (v4 - a2);
  if (v5 <= 0x40 && v6 <= 0x3F)
  {
    __p = (__p | (0xFFFFFFFFFFFFFFFFLL >> (a2 - v4) << v6));
    goto LABEL_8;
  }

  llvm::APInt::setBitsSlowCase(&__p, v6, v5);
  if (*(this + 2) > 0x40u)
  {
    goto LABEL_12;
  }

LABEL_9:
  *this &= __p;
  if (v8 < 0x41)
  {
    return;
  }

LABEL_13:
  if (__p)
  {
    operator delete[](__p);
  }
}

_DWORD *std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B15978;
  result[2] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B15978;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if ((v5 & 2) != 0)
  {
    llvm::APInt::uadd_sat(this, a2, &__p);
  }

  else
  {
    llvm::APInt::uadd_ov(this, a2, &v9, &__p);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &__p);
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

  else
  {
    *a4 = __p;
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

LABEL_10:
  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

_DWORD *std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B15A08;
  result[2] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B15A08;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if (v5)
  {
    llvm::APInt::sadd_sat(this, a2, &__p);
  }

  else
  {
    llvm::APInt::sadd_ov(this, a2, &v9, &__p);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &__p);
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

  else
  {
    *a4 = __p;
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

LABEL_10:
  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1DFFE48A4);
  }

  v3 = *(*v2 + 48);

  return v3();
}

_DWORD *std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B15A88;
  result[2] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B15A88;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(char **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if ((v5 & 2) != 0)
  {
    llvm::APInt::usub_sat(this, a2, &__p);
  }

  else
  {
    llvm::APInt::usub_ov(this, a2, &v9, &__p);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &__p);
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

  else
  {
    *a4 = __p;
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

LABEL_10:
  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

_DWORD *std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B15B08;
  result[2] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B15B08;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if (v5)
  {
    llvm::APInt::ssub_sat(this, a2, &__p);
  }

  else
  {
    llvm::APInt::ssub_ov(this, a2, &v9, &__p);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &__p);
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

  else
  {
    *a4 = __p;
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

LABEL_10:
  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

_DWORD *std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B15B88;
  result[2] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B15B88;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if ((v5 & 2) != 0)
  {
    llvm::APInt::umul_sat(this, a2, &__p);
  }

  else
  {
    llvm::APInt::umul_ov(this, a2, &v9, &__p);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &__p);
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

  else
  {
    *a4 = __p;
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

LABEL_10:
  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

_DWORD *std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B15C08;
  result[2] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B15C08;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if (v5)
  {
    llvm::APInt::smul_sat(this, a2, &__p);
  }

  else
  {
    llvm::APInt::smul_ov(this, a2, &v9, &__p);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &__p);
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

  else
  {
    *a4 = __p;
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

LABEL_10:
  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferDivU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>@<X0>(uint64_t *a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v7 = v3;
  if (v3 >= 0x41)
  {
    result = llvm::APInt::initSlowCase(&v6, a1);
    v3 = v7;
    a1 = &v6;
  }

  v5 = *a1;
  *(a2 + 8) = v3;
  *a2 = v5;
  *(a2 + 16) = 1;
  return result;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::urem(this, a2, &__p);
  v6 = v15;
  if (v15 > 0x40)
  {
    v8 = llvm::APInt::countLeadingZerosSlowCase(&__p);
    if (__p)
    {
      operator delete[](__p);
    }

    if (v8 != v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = *(a3 + 8);
    *(a4 + 8) = v9;
    if (v9 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, a3);
    }

    else
    {
      *a4 = *a3;
    }

    *(a4 + 16) = 1;
    return;
  }

  if (!__p)
  {
    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
  v7 = *(a3 + 8);
  v12 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, 1, 0);
  }

  else
  {
    v11 = (v7 != 0);
  }

  llvm::APInt::uadd_ov(a3, &v11, &v13, &__p);
  if (v12 >= 0x41 && v11)
  {
    operator delete[](v11);
  }

  if (v13)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    if (v15 < 0x41)
    {
      return;
    }
  }

  else
  {
    v10 = v15;
    *(a4 + 8) = v15;
    if (v10 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, &__p);
      *(a4 + 16) = 1;
      if (v15 < 0x41)
      {
        return;
      }
    }

    else
    {
      *a4 = __p;
      *(a4 + 16) = 1;
      if (v15 < 0x41)
      {
        return;
      }
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }
}

void *llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>@<X0>(uint64_t *a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v7 = v3;
  if (v3 >= 0x41)
  {
    result = llvm::APInt::initSlowCase(&v6, a1);
    v3 = v7;
    a1 = &v6;
  }

  v5 = *a1;
  *(a2 + 8) = v3;
  *a2 = v5;
  *(a2 + 16) = 1;
  return result;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::srem(this, a2, &__p);
  v8 = v24;
  if (v24 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&__p) == v8)
    {
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_17;
    }
  }

  else if (!__p)
  {
LABEL_17:
    v17 = *(a3 + 8);
    *(a4 + 8) = v17;
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, a3);
    }

    else
    {
      *a4 = *a3;
    }

    *(a4 + 16) = 1;
    return;
  }

  v9 = *(this + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*this + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = this;
  }

  v12 = ((*v11 >> v10) & 1) == 0;
  v13 = *(a2 + 2);
  v14 = v13 - 1;
  if (v13 >= 0x41)
  {
    v15 = (*a2 + 8 * ((v13 - 1) >> 6));
  }

  else
  {
    v15 = a2;
  }

  v16 = v12 ^ (((*v15 >> v14) & 1) == 0);
  if (v8 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v16)
  {
    goto LABEL_17;
  }

  v22 = 0;
  v18 = *(a3 + 8);
  v21 = v18;
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, 1, 0);
  }

  else
  {
    v20 = (v18 != 0);
  }

  llvm::APInt::sadd_ov(a3, &v20, &v22, &__p);
  if (v21 >= 0x41 && v20)
  {
    operator delete[](v20);
  }

  if (v22)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    if (v24 < 0x41)
    {
      return;
    }
  }

  else
  {
    v19 = v24;
    *(a4 + 8) = v24;
    if (v19 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, &__p);
      *(a4 + 16) = 1;
      if (v24 < 0x41)
      {
        return;
      }
    }

    else
    {
      *a4 = __p;
      *(a4 + 16) = 1;
      if (v24 < 0x41)
      {
        return;
      }
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferFloorDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::srem(this, a2, &__p);
  v8 = v24;
  if (v24 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&__p) == v8)
    {
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_19;
    }
  }

  else if (!__p)
  {
LABEL_19:
    v18 = *(a3 + 8);
    *(a4 + 8) = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, a3);
    }

    else
    {
      *a4 = *a3;
    }

    *(a4 + 16) = 1;
    return;
  }

  v9 = *(this + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*this + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = this;
  }

  v12 = ((*v11 >> v10) & 1) == 0;
  v13 = *(a2 + 2);
  v14 = v13 - 1;
  if (v13 >= 0x41)
  {
    v15 = (*a2 + 8 * ((v13 - 1) >> 6));
  }

  else
  {
    v15 = a2;
  }

  v16 = v12 ^ (((*v15 >> v14) & 1) == 0);
  if (v8 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (!v16)
  {
    goto LABEL_19;
  }

  v22 = 0;
  v17 = *(a3 + 8);
  v21 = v17;
  if (v17 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, 1, 0);
  }

  else
  {
    v20 = (v17 != 0);
  }

  llvm::APInt::ssub_ov(a3, &v20, &v22, &__p);
  if (v21 >= 0x41 && v20)
  {
    operator delete[](v20);
  }

  if (v22)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    if (v24 < 0x41)
    {
      return;
    }
  }

  else
  {
    v19 = v24;
    *(a4 + 8) = v24;
    if (v19 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, &__p);
      *(a4 + 16) = 1;
      if (v24 < 0x41)
      {
        return;
      }
    }

    else
    {
      *a4 = __p;
      *(a4 + 16) = 1;
      if (v24 < 0x41)
      {
        return;
      }
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferAnd(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>@<X0>(uint64_t *a1@<X1>, const llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 2);
  v9 = v5;
  if (v5 >= 0x41)
  {
    result = llvm::APInt::initSlowCase(&v8, a1);
    v5 = v9;
    if (v9 > 0x40)
    {
      result = llvm::APInt::andAssignSlowCase(&v8, a2);
      v5 = v9;
      v7 = v8;
      goto LABEL_6;
    }

    a1 = &v8;
  }

  v7 = *a2 & *a1;
LABEL_6:
  *(a3 + 8) = v5;
  *a3 = v7;
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferOr(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>@<X0>(uint64_t *a1@<X1>, const llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 2);
  v9 = v5;
  if (v5 >= 0x41)
  {
    result = llvm::APInt::initSlowCase(&v8, a1);
    v5 = v9;
    if (v9 > 0x40)
    {
      result = llvm::APInt::orAssignSlowCase(&v8, a2);
      v5 = v9;
      v7 = v8;
      goto LABEL_6;
    }

    a1 = &v8;
  }

  v7 = *a2 | *a1;
LABEL_6:
  *(a3 + 8) = v5;
  *a3 = v7;
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferXor(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>@<X0>(uint64_t *a1@<X1>, const llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 2);
  v9 = v5;
  if (v5 >= 0x41)
  {
    result = llvm::APInt::initSlowCase(&v8, a1);
    v5 = v9;
    if (v9 > 0x40)
    {
      result = llvm::APInt::xorAssignSlowCase(&v8, a2);
      v5 = v9;
      v7 = v8;
      goto LABEL_6;
    }

    a1 = &v8;
  }

  v7 = *a2 ^ *a1;
LABEL_6:
  *(a3 + 8) = v5;
  *a3 = v7;
  *(a3 + 16) = 1;
  return result;
}

_DWORD *std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B15C88;
  result[2] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B15C88;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if ((v5 & 2) != 0)
  {
    llvm::APInt::ushl_sat(this, a2, &__p);
  }

  else
  {
    llvm::APInt::ushl_ov(this, a2, &v9, &__p);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &__p);
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

  else
  {
    *a4 = __p;
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

LABEL_10:
  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

_DWORD *std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B15D08;
  result[2] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B15D08;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if (v5)
  {
    llvm::APInt::sshl_sat(this, a2, &__p);
  }

  else
  {
    llvm::APInt::sshl_ov(this, a2, &v9, &__p);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &__p);
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

  else
  {
    *a4 = __p;
    *(a4 + 16) = 1;
    if (v8 < 0x41)
    {
      return;
    }
  }

LABEL_10:
  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *a1@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  v7 = a1;
  if (v6 >= 0x41)
  {
    if (v6 - llvm::APInt::countLeadingZerosSlowCase(a1) > 0x40)
    {
LABEL_7:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }

    v7 = *a1;
  }

  if (*v7 >= v6)
  {
    goto LABEL_7;
  }

  v9 = *(a2 + 8);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v8, a2);
  }

  else
  {
    v8 = *a2;
  }

  llvm::APInt::ashrInPlace(&v8, a1);
  *(a3 + 8) = v9;
  *a3 = v8;
  *(a3 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *a1@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  v7 = a1;
  if (v6 >= 0x41)
  {
    if (v6 - llvm::APInt::countLeadingZerosSlowCase(a1) > 0x40)
    {
LABEL_7:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }

    v7 = *a1;
  }

  if (*v7 >= v6)
  {
    goto LABEL_7;
  }

  v9 = *(a2 + 8);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v8, a2);
  }

  else
  {
    v8 = *a2;
  }

  llvm::APInt::lshrInPlace(&v8, a1);
  *(a3 + 8) = v9;
  *a3 = v8;
  *(a3 + 16) = 1;
}

uint64_t mlir::mpsx::MPSXDialect::initialize(int32x2_t *this)
{
  mlir::Dialect::addOperations<mlir::mpsx::ANEOp,mlir::mpsx::BufferToTensorOp,mlir::mpsx::CPUOp,mlir::mpsx::DeinterleaveOp,mlir::mpsx::FPToIntClampedOp,mlir::mpsx::FusionOp,mlir::mpsx::FusionReturnOp,mlir::mpsx::GPUOp,mlir::mpsx::InterleaveOp,mlir::mpsx::ListPopBackOp,mlir::mpsx::ListPushBackOp,mlir::mpsx::MakeListOp,mlir::mpsx::MemrefBackedOp,mlir::mpsx::QuantizedConv2DOp,mlir::mpsx::QuantizedGatherOp,mlir::mpsx::QuantizedMatMulOp,mlir::mpsx::RegionReturnOp,mlir::mpsx::ReturnStitchedOp,mlir::mpsx::SparseDenseMatMulOp,mlir::mpsx::StitchedOp,mlir::mpsx::TensorToBufferOp,mlir::mpsx::UseMemrefOp,mlir::mpsx::VarHandleOp>(this);
  mlir::Dialect::addAttribute<mlir::mpsx::FusionTypeAttr>(this);
  v2 = operator new(0x18uLL);
  {
    v8 = v2;
    mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>();
    v2 = v8;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id;
  v2[1] = this;
  v2[2] = v3;
  *v2 = &unk_1F5B17078;
  v10 = v2;
  mlir::Dialect::addInterface(this, &v10);
  v4 = v10;
  v10 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  mlir::Dialect::addType<mlir::mpsx::ListType>(this);
  v5 = operator new(0x30uLL);
  {
    v9 = v5;
    mlir::mpsx::MPSXDialect::initialize();
    v5 = v9;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id;
  v5[1] = this;
  v5[2] = v6;
  *v5 = &unk_1F5B2DBE0;
  v5[3] = &unk_1F5B01218;
  v5[4] = 0x300000001;
  *(v5 + 10) = 4;
  v10 = v5;
  mlir::Dialect::addInterface(this, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

mlir::mpsx::MPSXDialect *mlir::mpsx::MPSXDialect::MPSXDialect(mlir::mpsx::MPSXDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "mpsx", 4, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id);
  *v3 = &unk_1F5B15D88;
  mlir::mpsx::MPSXDialect::initialize(v3);
  return this;
}

void sub_1DFFE6008(void *__p)
{

  operator delete(__p);
}

void *mlir::Dialect::addOperations<mlir::mpsx::ANEOp,mlir::mpsx::BufferToTensorOp,mlir::mpsx::CPUOp,mlir::mpsx::DeinterleaveOp,mlir::mpsx::FPToIntClampedOp,mlir::mpsx::FusionOp,mlir::mpsx::FusionReturnOp,mlir::mpsx::GPUOp,mlir::mpsx::InterleaveOp,mlir::mpsx::ListPopBackOp,mlir::mpsx::ListPushBackOp,mlir::mpsx::MakeListOp,mlir::mpsx::MemrefBackedOp,mlir::mpsx::QuantizedConv2DOp,mlir::mpsx::QuantizedGatherOp,mlir::mpsx::QuantizedMatMulOp,mlir::mpsx::RegionReturnOp,mlir::mpsx::ReturnStitchedOp,mlir::mpsx::SparseDenseMatMulOp,mlir::mpsx::StitchedOp,mlir::mpsx::TensorToBufferOp,mlir::mpsx::UseMemrefOp,mlir::mpsx::VarHandleOp>(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::Model(v2, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::ANEOp::getAttributeNames(void)::attrNames, 6);
  v3 = v76;
  v76 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::Model(v4, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::BufferToTensorOp::getAttributeNames(void)::attrNames, 5);
  v5 = v76;
  v76 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::Model(v6, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::CPUOp::getAttributeNames(void)::attrNames, 3);
  v7 = v76;
  v76 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::Model(v8, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::DeinterleaveOp::getAttributeNames(void)::attrNames, 1);
  v9 = v76;
  v76 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::FPToIntClampedOp>::Model(v10, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::FPToIntClampedOp::getAttributeNames(void)::attrNames, 1);
  v11 = v76;
  v76 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = operator new(0x70uLL);
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v76 = &v78;
  v77 = 0x300000000;
  mlir::OperationName::Impl::Impl(v12, "mpsx.fusion", 11, a1, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id, &v76);
  v13 = v76;
  if (v77)
  {
    v14 = 16 * v77;
    v15 = (v76 + 8);
    do
    {
      v16 = *v15;
      v15 += 2;
      free(v16);
      v14 -= 16;
    }

    while (v14);
    v13 = v76;
  }

  if (v13 != &v78)
  {
    free(v13);
  }

  *v12 = &unk_1F5B16268;
  v76 = v12;
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::FusionOp::getAttributeNames(void)::attrNames, 2);
  v17 = v76;
  v76 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = operator new(0x70uLL);
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v76 = &v78;
  v77 = 0x300000000;
  mlir::OperationName::Impl::Impl(v18, "mpsx.fusion_return", 18, a1, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionReturnOp,void>::id, &v76);
  v19 = v76;
  if (v77)
  {
    v20 = 16 * v77;
    v21 = (v76 + 8);
    do
    {
      v22 = *v21;
      v21 += 2;
      free(v22);
      v20 -= 16;
    }

    while (v20);
    v19 = v76;
  }

  if (v19 != &v78)
  {
    free(v19);
  }

  *v18 = &unk_1F5B16330;
  v76 = v18;
  mlir::RegisteredOperationName::insert(&v76, 0, 0);
  v23 = v76;
  v76 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::GPUOp>::Model(v24, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::GPUOp::getAttributeNames(void)::attrNames, 3);
  v25 = v76;
  v76 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::InterleaveOp>::Model(v26, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::InterleaveOp::getAttributeNames(void)::attrNames, 1);
  v27 = v76;
  v76 = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::ListPopBackOp>::Model(v28, a1);
  mlir::RegisteredOperationName::insert(&v76, 0, 0);
  v29 = v76;
  v76 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::ListPushBackOp>::Model(v30, a1);
  mlir::RegisteredOperationName::insert(&v76, 0, 0);
  v31 = v76;
  v76 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::MakeListOp>::Model(v32, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::MakeListOp::getAttributeNames(void)::attrNames, 2);
  v33 = v76;
  v76 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = operator new(0x70uLL);
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v76 = &v78;
  v77 = 0x300000000;
  mlir::OperationName::Impl::Impl(v34, "mpsx.memref_backed", 18, a1, &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id, &v76);
  v35 = v76;
  if (v77)
  {
    v36 = 16 * v77;
    v37 = (v76 + 8);
    do
    {
      v38 = *v37;
      v37 += 2;
      free(v38);
      v36 -= 16;
    }

    while (v36);
    v35 = v76;
  }

  if (v35 != &v78)
  {
    free(v35);
  }

  *v34 = &unk_1F5B167E0;
  v76 = v34;
  mlir::RegisteredOperationName::insert(&v76, 0, 0);
  v39 = v76;
  v76 = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::QuantizedConv2DOp>::Model(v40, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::QuantizedConv2DOp::getAttributeNames(void)::attrNames, 11);
  v41 = v76;
  v76 = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::QuantizedGatherOp>::Model(v42, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::QuantizedGatherOp::getAttributeNames(void)::attrNames, 4);
  v43 = v76;
  v76 = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::QuantizedMatMulOp>::Model(v44, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::QuantizedMatMulOp::getAttributeNames(void)::attrNames, 6);
  v45 = v76;
  v76 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = operator new(0x70uLL);
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v76 = &v78;
  v77 = 0x300000000;
  mlir::OperationName::Impl::Impl(v46, "mpsx.region_return", 18, a1, &mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id, &v76);
  v47 = v76;
  if (v77)
  {
    v48 = 16 * v77;
    v49 = (v76 + 8);
    do
    {
      v50 = *v49;
      v49 += 2;
      free(v50);
      v48 -= 16;
    }

    while (v48);
    v47 = v76;
  }

  if (v47 != &v78)
  {
    free(v47);
  }

  *v46 = &unk_1F5B16B00;
  v76 = v46;
  mlir::RegisteredOperationName::insert(&v76, 0, 0);
  v51 = v76;
  v76 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  v52 = operator new(0x70uLL);
  v76 = &v78;
  v77 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::ReturnStitchedOp>>(&v76);
  mlir::OperationName::Impl::Impl(v52, "mpsx.stitched_return", 20, a1, &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id, &v76);
  v53 = v76;
  if (v77)
  {
    v54 = 16 * v77;
    v55 = (v76 + 8);
    do
    {
      v56 = *v55;
      v55 += 2;
      free(v56);
      v54 -= 16;
    }

    while (v54);
    v53 = v76;
  }

  if (v53 != &v78)
  {
    free(v53);
  }

  *v52 = &unk_1F5B16BC8;
  v76 = v52;
  mlir::RegisteredOperationName::insert(&v76, 0, 0);
  v57 = v76;
  v76 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  v58 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::SparseDenseMatMulOp>::Model(v58, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::SparseDenseMatMulOp::getAttributeNames(void)::attrNames, 3);
  v59 = v76;
  v76 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::StitchedOp>::Model(v60, a1);
  mlir::RegisteredOperationName::insert(&v76, 0, 0);
  v61 = v76;
  v76 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = operator new(0x70uLL);
  v76 = mlir::RegisteredOperationName::Model<mlir::mpsx::TensorToBufferOp>::Model(v62, a1);
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::TensorToBufferOp::getAttributeNames(void)::attrNames, 5);
  v63 = v76;
  v76 = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = operator new(0x70uLL);
  v76 = &v78;
  v77 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::UseMemrefOp>>(&v76);
  mlir::OperationName::Impl::Impl(v64, "mpsx.use_memref", 15, a1, &mlir::detail::TypeIDResolver<mlir::mpsx::UseMemrefOp,void>::id, &v76);
  v65 = v76;
  if (v77)
  {
    v66 = 16 * v77;
    v67 = (v76 + 8);
    do
    {
      v68 = *v67;
      v67 += 2;
      free(v68);
      v66 -= 16;
    }

    while (v66);
    v65 = v76;
  }

  if (v65 != &v78)
  {
    free(v65);
  }

  *v64 = &unk_1F5B16EE8;
  v76 = v64;
  mlir::RegisteredOperationName::insert(&v76, 0, 0);
  v69 = v76;
  v76 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = operator new(0x70uLL);
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v76 = &v78;
  v77 = 0x300000000;
  mlir::OperationName::Impl::Impl(v70, "mpsx.var_handle", 15, a1, &mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id, &v76);
  v71 = v76;
  if (v77)
  {
    v72 = 16 * v77;
    v73 = (v76 + 8);
    do
    {
      v74 = *v73;
      v73 += 2;
      free(v74);
      v72 -= 16;
    }

    while (v72);
    v71 = v76;
  }

  if (v71 != &v78)
  {
    free(v71);
  }

  *v70 = &unk_1F5B16FB0;
  v76 = v70;
  mlir::RegisteredOperationName::insert(&v76, &mlir::mpsx::VarHandleOp::getAttributeNames(void)::attrNames, 1);
  result = v76;
  v76 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::mpsx::MPSXDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8);
    v10 = a3;
    v11 = v8;
    if (a3)
    {
      return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(a2, a5, &v12, &v10);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return 0;
}

void *mlir::mpsx::QuantizedMatMulOp::getInputDequantizedType(mlir::Operation **this)
{
  v7 = *this;
  v1 = v7;
  v2 = (*(*(*(v1 + 9) + 32 * mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v7, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v6[0] = v2;
  v6[1] = v3;
  if (*(*mlir::getElementTypeOrSelf(v2) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v7);
    LOBYTE(v8) = 0;
    v9 = 0;
    return mlir::ShapedType::cloneWith(v6, &v8, FunctionType);
  }

  return v2;
}

void *mlir::mpsx::QuantizedMatMulOp::getWeightsDequantizedType(mlir::Operation **this)
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = *this;
  v1 = v37;
  v2 = (*(*(*(v1 + 9) + 32 * mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v37, 4) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v35 = v2;
  v36 = v3;
  if (*(*mlir::getElementTypeOrSelf(v2) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    *&__p = v1;
    ODSOperandIndexAndLength = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&__p, 8);
    if ((*(v1 + 46) & 0x80) != 0)
    {
      v5 = *(v1 + 9);
    }

    else
    {
      v5 = 0;
    }

    if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength != ODSOperandIndexAndLength && *(v5 + 32 * ODSOperandIndexAndLength + 24))
    {
      v6 = (*(*(*(v1 + 9) + 32 * mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v37, 8) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v6)
      {
        v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
      }

      else
      {
        v7 = 0;
      }

      v34[0] = v6;
      v34[1] = v7;
      if (!mlir::CallOpInterface::getArgOperands(v34))
      {
        goto LABEL_27;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v34);
      if (v9)
      {
        v10 = 8 * v9;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_27;
      }

LABEL_17:
      if (!mlir::CallOpInterface::getArgOperands(&v35))
      {
LABEL_27:
        isSplat = mlir::ElementsAttr::isSplat(&v35);
        v16 = mlir::UnrankedTensorType::get(isSplat);
        v17 = v16;
        if (v16)
        {
          v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
        }

        v35 = v17;
        v36 = v16;
        goto LABEL_30;
      }

      v11 = mlir::CallableOpInterface::getArgAttrsAttr(&v35);
      if (v12)
      {
        v13 = 8 * v12;
        while (*v11 != 0x8000000000000000)
        {
          ++v11;
          v13 -= 8;
          if (!v13)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_27;
      }

LABEL_22:
      WeightsQuantParamsAxisAttr = mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxisAttr(&v37);
      if (WeightsQuantParamsAxisAttr)
      {
        mlir::IntegerAttr::getValue(&WeightsQuantParamsAxisAttr, &__p);
        if (DWORD2(__p) > 0x40)
        {
          v14 = *__p;
          operator delete[](__p);
        }

        else if (DWORD2(__p))
        {
          v14 = (__p << -BYTE8(__p)) >> -BYTE8(__p);
        }

        else
        {
          v14 = 0;
        }

        v20 = v14 | 0x100000000;
      }

      else
      {
        v20 = 0;
      }

      mlir::CallableOpInterface::getArgAttrsAttr(v34);
      if (v21 != 1 && (v20 & 0x100000000) != 0)
      {
        v22 = *(mlir::CallableOpInterface::getArgAttrsAttr(v34) + 8 * (v21 - 1));
        if (v22 >= 2)
        {
          if (v20 <= 0)
          {
            mlir::CallableOpInterface::getArgAttrsAttr(&v35);
            LODWORD(v20) = v23 + v20;
          }

          v24 = mlir::CallableOpInterface::getArgAttrsAttr(&v35);
          v26 = v25;
          *&__p = v40;
          *(&__p + 1) = 0x500000000;
          v27 = (8 * v25) >> 3;
          if (v27 < 6)
          {
            v28 = 0;
            v29 = v40;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v40, v27, 8);
            v28 = DWORD2(__p);
            v29 = __p;
          }

          if (v26)
          {
            memcpy(&v29[v28], v24, 8 * v26);
            v28 = DWORD2(__p);
            v29 = __p;
          }

          v30 = (v28 + v26);
          DWORD2(__p) = v28 + v26;
          v29[v20] *= v22;
          v31 = mlir::ElementsAttr::isSplat(&v35);
          v32 = mlir::RankedTensorType::get(v29, v30, v31, 0);
          v33 = v32;
          if (v32)
          {
            v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
          }

          v35 = v33;
          v36 = v32;
          if (__p != v40)
          {
            free(__p);
          }
        }
      }
    }

LABEL_30:
    FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v37);
    LOBYTE(__p) = 0;
    v40[0] = 0;
    return mlir::ShapedType::cloneWith(&v35, &__p, FunctionType);
  }

  return v2;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v188[4] = *MEMORY[0x1E69E9840];
  *&v169 = a6;
  BYTE8(v169) = 0;
  LOBYTE(v170) = 0;
  *(&v170 + 1) = a9;
  *&v171 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v169);
    if (v170 == 1)
    {
      LOBYTE(v170) = 0;
    }

    mlir::OperationName::OperationName(&v169 + 8, "mpsx.quantized_matmul", 21, Context);
    LOBYTE(v170) = 1;
  }

  *(&v171 + 1) = a4;
  v172 = a5;
  v17.var0.var0 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::QuantizedMatMulOpAdaptor::verify(&v169, v17))
  {
    v24 = mlir::Float32Type::get(this, v18);
LABEL_75:
    v86 = mlir::UnrankedTensorType::get(v24);
    goto LABEL_76;
  }

  *v176 = v169;
  *v177 = v170;
  v178 = v171;
  v179 = v172;
  Value = mlir::AffineMapAttr::getValue(v176);
  v20 = mlir::DictionaryAttr::end(v176);
  v21 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v20 - 16), *(*(v176[1] + 12) + 8));
  if (v22)
  {
    v23 = *(v21 + 1);
  }

  else
  {
    v23 = 0;
  }

  v165[0] = v23;
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(v165);
  v165[0] = *(&v178 + 1);
  v165[1] = 0;
  v25 = *(mlir::ValueRange::dereference_iterator(v165, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v25)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  v186 = v25;
  v187 = v26;
  if (*(*mlir::getElementTypeOrSelf(v25) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v27 = mlir::AffineMapAttr::getValue(v176);
    v28 = mlir::DictionaryAttr::end(v176);
    v29 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v27 + 16), v28, *(*(v176[1] + 12) + 16));
    if (v30)
    {
      v31 = *(v29 + 1);
    }

    else
    {
      v31 = 0;
    }

    v165[0] = v31;
    v32 = mlir::AffineMapAttr::getValue(v165);
    LOBYTE(v165[0]) = 0;
    LOBYTE(v166) = 0;
    v25 = mlir::ShapedType::cloneWith(&v186, v165, v32);
  }

  *v165 = v169;
  v166 = v170;
  v167 = v171;
  v168 = v172;
  v33 = *(mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeights(v165) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v33)
  {
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  v186 = v33;
  v187 = v34;
  if (*(*mlir::getElementTypeOrSelf(v33) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    *v176 = *v165;
    *v177 = v166;
    v178 = v167;
    v179 = v168;
    if (mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(v176))
    {
      v35 = (*(mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(v165) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v35)
      {
        v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8);
      }

      else
      {
        v36 = 0;
      }

      v173 = v35;
      v174 = v36;
      if (!mlir::CallOpInterface::getArgOperands(&v173))
      {
        goto LABEL_43;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v173);
      if (v38)
      {
        v39 = 8 * v38;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v39 -= 8;
          if (!v39)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_43;
      }

LABEL_31:
      if (!mlir::CallOpInterface::getArgOperands(&v186))
      {
LABEL_43:
        isSplat = mlir::ElementsAttr::isSplat(&v186);
        v54 = mlir::UnrankedTensorType::get(isSplat);
        v55 = v54;
        if (v54)
        {
          v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        }

        v186 = v55;
        v187 = v54;
        goto LABEL_46;
      }

      v40 = mlir::CallableOpInterface::getArgAttrsAttr(&v186);
      if (v41)
      {
        v42 = 8 * v41;
        while (*v40 != 0x8000000000000000)
        {
          ++v40;
          v42 -= 8;
          if (!v42)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_43;
      }

LABEL_36:
      WeightsQuantParamsAxis = mlir::mpsx::detail::QuantizedMatMulOpGenericAdaptorBase::getWeightsQuantParamsAxis(v165);
      mlir::CallableOpInterface::getArgAttrsAttr(&v173);
      if (v44 != 1 && (WeightsQuantParamsAxis & 0x100000000) != 0)
      {
        v45 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v173) + 8 * (v44 - 1));
        if (v45 >= 2)
        {
          if (WeightsQuantParamsAxis <= 0)
          {
            mlir::CallableOpInterface::getArgAttrsAttr(&v186);
            LODWORD(WeightsQuantParamsAxis) = v46 + WeightsQuantParamsAxis;
          }

          v47 = mlir::CallableOpInterface::getArgAttrsAttr(&v186);
          v49 = v48;
          v50 = v177;
          v176[0] = v177;
          v176[1] = 0x500000000;
          v51 = (8 * v48) >> 3;
          if (v51 < 6)
          {
            v52 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v176, v177, v51, 8);
            v52 = v176[1];
            v50 = v176[0];
          }

          if (v49)
          {
            memcpy(&v50[v52], v47, 8 * v49);
            v52 = v176[1];
            v50 = v176[0];
          }

          v153 = (v52 + v49);
          LODWORD(v176[1]) = v52 + v49;
          v50[WeightsQuantParamsAxis] = (v50[WeightsQuantParamsAxis] * v45);
          v154 = mlir::ElementsAttr::isSplat(&v186);
          v155 = mlir::RankedTensorType::get(v50, v153, v154, 0);
          v156 = v155;
          if (v155)
          {
            v155 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v155 + 8);
          }

          v186 = v156;
          v187 = v155;
          if (v176[0] != v177)
          {
            free(v176[0]);
          }
        }
      }
    }

LABEL_46:
    v56 = mlir::AffineMapAttr::getValue(v165);
    v57 = mlir::DictionaryAttr::end(v165);
    v58 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v56 + 16), v57, *(*(v165[1] + 12) + 16));
    if (v59)
    {
      v60 = *(v58 + 1);
    }

    else
    {
      v60 = 0;
    }

    v176[0] = v60;
    v61 = mlir::AffineMapAttr::getValue(v176);
    LOBYTE(v176[0]) = 0;
    LOBYTE(v177[0]) = 0;
    v33 = mlir::ShapedType::cloneWith(&v186, v176, v61);
  }

  v62 = mlir::AffineMapAttr::getValue(&v169);
  v63 = mlir::DictionaryAttr::end(&v169);
  v64 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v62 + 16), v63, *(*(*(&v169 + 1) + 96) + 16));
  if (v65)
  {
    v66 = *(v64 + 1);
  }

  else
  {
    v66 = 0;
  }

  v176[0] = v66;
  v67 = mlir::AffineMapAttr::getValue(v176);
  v68 = mlir::AffineMapAttr::getValue(&v169);
  v69 = mlir::DictionaryAttr::end(&v169);
  v70 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v68 + 32), v69, *(*(*(&v169 + 1) + 96) + 24));
  if ((v71 & 1) != 0 && (v72 = *(v70 + 1)) != 0)
  {
    if (mlir::BoolAttr::classof(*(v70 + 1)))
    {
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }
  }

  else
  {
    v73 = 0;
  }

  v176[0] = v73;
  v74 = mlir::BoolAttr::getValue(v176);
  v75 = mlir::AffineMapAttr::getValue(&v169);
  v76 = mlir::DictionaryAttr::end(&v169);
  v77 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v75 + 32), v76, *(*(*(&v169 + 1) + 96) + 32));
  if ((v78 & 1) != 0 && (v79 = *(v77 + 1)) != 0)
  {
    if (mlir::BoolAttr::classof(*(v77 + 1)))
    {
      v80 = v79;
    }

    else
    {
      v80 = 0;
    }
  }

  else
  {
    v80 = 0;
  }

  v176[0] = v80;
  v81 = mlir::BoolAttr::getValue(v176);
  if (*(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v33 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || ((v82 = v81, (v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8)) == 0) ? (v25 = 0) : (v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8)), (v164[0] = v25, v164[1] = v83, (v84 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8)) == 0) ? (v33 = 0) : (v84 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8)), v163[0] = v33, v163[1] = v84, !(v25 | v33)))
  {
    v24 = v67;
    goto LABEL_75;
  }

  if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    if ((a3 & 1) == 0)
    {
      return 0;
    }

    mlir::emitError(a2, v85, v176);
    if (v176[0])
    {
      mlir::Diagnostic::append<char const(&)[22],mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(&v176[1], "invalid input types: ", v164, ", ", v163);
    }

    v89 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v176);
    if (v176[0])
    {
      mlir::InFlightDiagnostic::report(v176);
    }

    if (v185 == 1)
    {
      if (v184 != &v185)
      {
        free(v184);
      }

      v90 = __p;
      if (__p)
      {
        v91 = v183;
        v92 = __p;
        if (v183 != __p)
        {
          do
          {
            v91 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v91 - 1);
          }

          while (v91 != v90);
          v92 = __p;
        }

        v183 = v90;
        operator delete(v92);
      }

      v93 = v180;
      if (v180)
      {
        v94 = v181;
        v95 = v180;
        if (v181 != v180)
        {
          do
          {
            v97 = *--v94;
            v96 = v97;
            *v94 = 0;
            if (v97)
            {
              operator delete[](v96);
            }
          }

          while (v94 != v93);
          v95 = v180;
        }

        v181 = v93;
        operator delete(v95);
      }

      if (v177[1] != &v178 + 8)
      {
        free(v177[1]);
      }
    }

    if (!v89)
    {
      return 0;
    }

    v86 = 0;
    goto LABEL_76;
  }

  v173 = v175;
  v174 = 0x400000000;
  v98 = mlir::CallableOpInterface::getArgAttrsAttr(v164);
  v100 = v99;
  v101 = mlir::CallableOpInterface::getArgAttrsAttr(v163);
  v102 = v100;
  v103 = v101;
  v105 = v104;
  v176[0] = v177;
  v176[1] = 0x400000000;
  v162 = v102;
  v165[0] = &v166;
  v165[1] = 0x400000000;
  if (v102 == 1)
  {
    v106 = *v98;
    v177[0] = 1;
    v177[1] = v106;
    goto LABEL_110;
  }

  if (!v102)
  {
    *v177 = vdupq_n_s64(1uLL);
LABEL_110:
    LODWORD(v176[1]) = 2;
    goto LABEL_111;
  }

  v160 = v101;
  __n = v102;
  v186 = v188;
  v187 = 0x400000000;
  v111 = (8 * v102) >> 3;
  if (v111 < 5)
  {
    v112 = 0;
    v113 = v188;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v188, v111, 8);
    v112 = v187;
    v113 = v186;
  }

  memcpy(&v113[v112], v98, __n * 8);
  LODWORD(v187) = v187 + ((__n * 8) >> 3);
  llvm::SmallVectorImpl<unsigned long long>::operator=(v176, &v186);
  if (v186 != v188)
  {
    free(v186);
  }

  v103 = v160;
  if (v74)
  {
    v121 = v176[0] + 8 * LODWORD(v176[1]);
    *(v121 - 1) = v98[__n - 2];
    *(v121 - 2) = v98[__n - 1];
  }

LABEL_111:
  v107 = v105;
  if (v105 == 1)
  {
    v109 = *v103;
    LODWORD(v165[1]) = 0;
    if (HIDWORD(v165[1]) > 1)
    {
      v110 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v165, &v166, 2uLL, 8);
      v110 = LODWORD(v165[1]);
    }

    v119 = v165[0] + 8 * v110;
    *v119 = v109;
    goto LABEL_125;
  }

  if (!v105)
  {
    LODWORD(v165[1]) = 0;
    if (HIDWORD(v165[1]) > 1)
    {
      v108 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v165, &v166, 2uLL, 8);
      v108 = LODWORD(v165[1]);
    }

    v119 = v165[0] + 8 * v108;
    *v119 = 1;
LABEL_125:
    *(v119 + 1) = 1;
    v120 = LODWORD(v165[1]) + 2;
    LODWORD(v165[1]) += 2;
    goto LABEL_136;
  }

  v114 = v105;
  v186 = v188;
  v187 = 0x400000000;
  v115 = (8 * v105) >> 3;
  if (v115 < 5)
  {
    v117 = 0;
    v118 = v188;
  }

  else
  {
    v116 = v103;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v188, v115, 8);
    v103 = v116;
    v117 = v187;
    v118 = v186;
  }

  v122 = v103;
  memcpy(&v118[v117], v103, 8 * v105);
  LODWORD(v187) = v187 + v105;
  llvm::SmallVectorImpl<unsigned long long>::operator=(v165, &v186);
  if (v186 != v188)
  {
    free(v186);
  }

  v120 = v165[1];
  if (v82)
  {
    v123 = v165[0] + 8 * LODWORD(v165[1]);
    *(v123 - 1) = v122[v114 - 2];
    *(v123 - 2) = v122[v114 - 1];
  }

LABEL_136:
  LODWORD(v174) = 0;
  if (LODWORD(v176[1]) <= v120)
  {
    v124 = 0;
    if (v120)
    {
      v128 = v165[0];
      v129 = 8 * v120;
      do
      {
        v130 = *v128;
        if (v124 >= HIDWORD(v174))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v175, v124 + 1, 8);
          v124 = v174;
        }

        *(v173 + v124) = v130;
        v124 = v174 + 1;
        LODWORD(v174) = v174 + 1;
        ++v128;
        v129 -= 8;
      }

      while (v129);
    }
  }

  else
  {
    v124 = 0;
    v125 = v176[0];
    v126 = 8 * LODWORD(v176[1]);
    do
    {
      v127 = *v125;
      if (v124 >= HIDWORD(v174))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v175, v124 + 1, 8);
        v124 = v174;
      }

      *(v173 + v124) = v127;
      v124 = v174 + 1;
      LODWORD(v174) = v174 + 1;
      ++v125;
      v126 -= 8;
    }

    while (v126);
  }

  v131 = v176[0];
  v132 = LODWORD(v176[1]);
  v133 = v176[0] + 8 * LODWORD(v176[1]);
  v134 = v165[0];
  v135 = LODWORD(v165[1]);
  v136 = v165[0] + 8 * LODWORD(v165[1]);
  v137 = v173;
  v138 = v173 + 8 * v124;
  *(v138 - 1) = *(v136 - 1);
  v139 = v136 - 16;
  *(v138 - 2) = *(v133 - 2);
  v140 = v133 - 16 == v131 || v139 == v134;
  if (v140)
  {
LABEL_168:
    if (v162 <= 1)
    {
      v148 = *(v138 - 1);
      LODWORD(v174) = --v124;
      v137[v124 - 1] = v148;
    }

    if (v107 > 1)
    {
      v149 = 0;
      if (v134 == &v166)
      {
        goto LABEL_173;
      }
    }

    else
    {
      v149 = 0;
      LODWORD(v174) = v124 - 1;
      if (v134 == &v166)
      {
        goto LABEL_173;
      }
    }

    goto LABEL_172;
  }

  v141 = 8 * v132 - 24;
  v142 = &v137[v124 - 3];
  v143 = 8 * v135 - 24;
  while (1)
  {
    v144 = *&v131[v141];
    v145 = *&v134[v143];
    if (v144 == 0x8000000000000000)
    {
      if (v145 <= 1)
      {
        v144 = 0x8000000000000000;
      }

      else
      {
        v144 = *&v134[v143];
      }

      goto LABEL_166;
    }

    if (v145 == 0x8000000000000000)
    {
      if (v144 <= 1)
      {
        v144 = 0x8000000000000000;
      }

      goto LABEL_166;
    }

    if (v144 != v145 && v145 != 1)
    {
      v140 = v144 == 1;
      v144 = *&v134[v143];
      if (!v140)
      {
        break;
      }
    }

LABEL_166:
    *v142-- = v144;
    if (v141)
    {
      v141 -= 8;
      v147 = v143;
      v143 -= 8;
      if (v147)
      {
        continue;
      }
    }

    goto LABEL_168;
  }

  LODWORD(v174) = 0;
  v157.var0.var0 = a3;
  v158 = mlir::emitOptionalError<char const(&)[66]>(a2, v157, "incompatible dimensions");
  v134 = v165[0];
  v149 = !v158;
  if (v165[0] != &v166)
  {
LABEL_172:
    free(v134);
  }

LABEL_173:
  if (v176[0] != v177)
  {
    free(v176[0]);
  }

  if (v149)
  {
    v150.var0.var0 = a3;
    v151 = mlir::emitOptionalError<char const(&)[66]>(a2, v150, "invalid shape");
    v86 = 0;
  }

  else
  {
    v86 = mlir::RankedTensorType::get(v173, v174, v67, 0);
    v151 = 1;
  }

  if (v173 != v175)
  {
    v152 = v86;
    free(v173);
    v86 = v152;
  }

  if (!v151)
  {
    return 0;
  }

LABEL_76:
  v87 = *(a11 + 8);
  if (v87 >= *(a11 + 12))
  {
    v159 = v86;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v87 + 1, 8);
    v86 = v159;
    LODWORD(v87) = *(a11 + 8);
  }

  *(*a11 + 8 * v87) = v86;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::QuantizedMatMulOpAdaptor::verify(mlir::mpsx::QuantizedMatMulOpAdaptor *this, Location a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v50 = *this;
  Value = mlir::AffineMapAttr::getValue(&v50);
  if (Value != mlir::DictionaryAttr::end(&v50))
  {
    v5 = 0;
    while (mlir::CallGraphNode::getCallableRegion(Value) != *(*(*(this + 1) + 96) + 8))
    {
      if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
      {
        v5 = *(Value + 1);
      }

      Value = (Value + 16);
      if (Value == mlir::DictionaryAttr::end(&v50))
      {
        goto LABEL_7;
      }
    }

    v15 = *(Value + 1);
    while (1)
    {
      if (Value == mlir::DictionaryAttr::end(&v50))
      {
        v48[0] = "'mpsx.quantized_matmul' op requires attribute 'output_type'";
        v49 = 259;
        mlir::emitError(a2.var0.var0, v48, &v53);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
        if (v53)
        {
          mlir::InFlightDiagnostic::report(&v53);
        }

        if (v64 != 1)
        {
          return v6;
        }

        if (v63 != &v64)
        {
          free(v63);
        }

        v16 = __p;
        if (__p)
        {
          v17 = v62;
          v18 = __p;
          if (v62 != __p)
          {
            do
            {
              v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
            }

            while (v17 != v16);
            v18 = __p;
          }

          v62 = v16;
          operator delete(v18);
        }

        v10 = v59;
        if (!v59)
        {
          goto LABEL_100;
        }

        v19 = v60;
        v12 = v59;
        if (v60 == v59)
        {
          goto LABEL_99;
        }

        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            operator delete[](v20);
          }
        }

        while (v19 != v10);
        goto LABEL_98;
      }

      if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 16))
      {
        break;
      }

      Value = (Value + 16);
    }

    v22 = *(Value + 1);
    if (Value == mlir::DictionaryAttr::end(&v50))
    {
      v25 = 0;
      v24 = 0;
      v23 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      do
      {
        if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 24))
        {
          v23 = *(Value + 1);
        }

        else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 32))
        {
          v25 = *(Value + 1);
        }

        else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 40))
        {
          v24 = *(Value + 1);
        }

        Value = (Value + 16);
      }

      while (Value != mlir::DictionaryAttr::end(&v50));
    }

    v47 = v15;
    mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v47);
    if (v26 == 11)
    {
      if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v48[0] = v5, v53 = mlir::AffineMapAttr::getValue(v48), mlir::Type::isSignedInteger(&v53, 32)))
      {
        if (!v24 || *(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v48[0] = v24, v53 = mlir::AffineMapAttr::getValue(v48), mlir::Type::isSignedInteger(&v53, 32)))
        {
          if (v22)
          {
            if (*(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v27 = "'mpsx.quantized_matmul' op attribute 'output_type' failed to satisfy constraint: any type attribute";
LABEL_115:
              v48[0] = v27;
              v49 = 259;
              mlir::emitError(a2.var0.var0, v48, &v53);
              v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v53);
              return v6;
            }

            v53 = v22;
            mlir::AffineMapAttr::getValue(&v53);
          }

          if (v23 && !mlir::BoolAttr::classof(v23))
          {
            v27 = "'mpsx.quantized_matmul' op attribute 'transpose_lhs' failed to satisfy constraint: BOOL attribute";
          }

          else
          {
            if (!v25 || mlir::BoolAttr::classof(v25))
            {
              return 1;
            }

            v27 = "'mpsx.quantized_matmul' op attribute 'transpose_rhs' failed to satisfy constraint: BOOL attribute";
          }

          goto LABEL_115;
        }

        v48[0] = "'mpsx.quantized_matmul' op attribute 'weights_quant_params_axis' failed to satisfy constraint: 32-bit signed integer attribute";
        v49 = 259;
        mlir::emitError(a2.var0.var0, v48, &v53);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
        if (v53)
        {
          mlir::InFlightDiagnostic::report(&v53);
        }

        if (v64 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v54);
        }

        return v6;
      }

      v48[0] = "'mpsx.quantized_matmul' op attribute 'input_quant_params_axis' failed to satisfy constraint: 32-bit signed integer attribute";
      v49 = 259;
      mlir::emitError(a2.var0.var0, v48, &v53);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
      if (v53)
      {
        mlir::InFlightDiagnostic::report(&v53);
      }

      if (v64 != 1)
      {
        return v6;
      }

      if (v63 != &v64)
      {
        free(v63);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v62;
        v41 = __p;
        if (v62 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v62 = v39;
        operator delete(v41);
      }

      v10 = v59;
      if (!v59)
      {
        goto LABEL_100;
      }

      v42 = v60;
      v12 = v59;
      if (v60 == v59)
      {
        goto LABEL_99;
      }

      do
      {
        v44 = *--v42;
        v43 = v44;
        *v42 = 0;
        if (v44)
        {
          operator delete[](v43);
        }
      }

      while (v42 != v10);
    }

    else
    {
      v28 = v26;
      v48[0] = "'mpsx.quantized_matmul' op 'operandSegmentSizes' attribute for specifying operand segments must have 11 elements, but got ";
      v49 = 259;
      mlir::emitError(a2.var0.var0, v48, &v53);
      if (v53)
      {
        v51 = 5;
        v52 = v28;
        v29 = &v51;
        v30 = v55;
        if (v56 >= v57)
        {
          if (v55 <= &v51 && v55 + 24 * v56 > &v51)
          {
            v46 = &v51 - v55;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v30 = v55;
            v29 = (v55 + v46);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v29 = &v51;
            v30 = v55;
          }
        }

        v31 = &v30[24 * v56];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        ++v56;
      }

      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
      if (v53)
      {
        mlir::InFlightDiagnostic::report(&v53);
      }

      if ((v64 & 1) == 0)
      {
        return v6;
      }

      if (v63 != &v64)
      {
        free(v63);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v62;
        v35 = __p;
        if (v62 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v62 = v33;
        operator delete(v35);
      }

      v10 = v59;
      if (!v59)
      {
        goto LABEL_100;
      }

      v36 = v60;
      v12 = v59;
      if (v60 == v59)
      {
        goto LABEL_99;
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

      while (v36 != v10);
    }

    goto LABEL_98;
  }

LABEL_7:
  v48[0] = "'mpsx.quantized_matmul' op requires attribute 'operandSegmentSizes'";
  v49 = 259;
  mlir::emitError(a2.var0.var0, v48, &v53);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v53);
  }

  if (v64 == 1)
  {
    if (v63 != &v64)
    {
      free(v63);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v62;
      v9 = __p;
      if (v62 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v62 = v7;
      operator delete(v9);
    }

    v10 = v59;
    if (!v59)
    {
      goto LABEL_100;
    }

    v11 = v60;
    v12 = v59;
    if (v60 == v59)
    {
LABEL_99:
      v60 = v10;
      operator delete(v12);
LABEL_100:
      if (v55 != v58)
      {
        free(v55);
      }

      return v6;
    }

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
LABEL_98:
    v12 = v59;
    goto LABEL_99;
  }

  return v6;
}

uint64_t mlir::mpsx::anonymous namespace::isCompatibleReturnTypesDefaultImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = *(a5 + 24);
  if (!v9)
  {
    v14 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  if (v9 != a5)
  {
    v10 = (*(*v9 + 16))(v9);
    v14 = v10;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_10;
  }

  v14 = v13;
  (*(*v9 + 24))(v9, v13);
  v10 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v10 == v13)
  {
    v18 = v17;
    (*(*v10 + 24))(v10, v17);
  }

  else
  {
    v18 = (*(*v10 + 16))(v10);
  }

LABEL_10:
  {
    v11 = 1;
  }

  else
  {
    if (v14)
    {
      if (v14 == v13)
      {
        v16 = v15;
        (*(*v14 + 24))();
      }

      else
      {
        v16 = (*(*v14 + 16))();
      }
    }

    else
    {
      v16 = 0;
    }

    if (v16 == v15)
    {
      (*(*v16 + 32))(v16);
    }

    else if (v16)
    {
      (*(*v16 + 40))();
    }
  }

  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))();
  }

  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))();
  }

  return v11;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, unint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v86 = *MEMORY[0x1E69E9840];
  v79 = a6;
  LOBYTE(v80) = 0;
  v81 = 0;
  v82 = a9;
  v83 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v79);
    if (v81 == 1)
    {
      v81 = 0;
    }

    mlir::OperationName::OperationName(&v80, "mpsx.sparse_dense_matmul", 24, Context);
    v81 = 1;
  }

  v84 = a4;
  v85 = a5;
  if (a5 >= 4)
  {
    v15.var0.var0 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mpsx::SparseDenseMatMulOpAdaptor::verify(&v79, v15))
    {
      v77[0] = v78;
      v77[1] = 0x400000000;
      __b = v84;
      v75 = 3;
      __b = mlir::ValueRange::offset_base(&__b, 3);
      v75 = 0;
      v16 = mlir::ValueRange::dereference_iterator(&__b, 0);
      if (mlir::matchConstantWithIntVector<long long>(v16, v77))
      {
        __b = v84;
        v75 = 4;
        __b = mlir::ValueRange::offset_base(&__b, 4);
        v75 = 0;
        v18 = (*(mlir::ValueRange::dereference_iterator(&__b, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        if (v19)
        {
          v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        }

        else
        {
          v18 = 0;
        }

        v72[0] = v18;
        v72[1] = v19;
        if (mlir::CallOpInterface::getArgOperands(v72))
        {
          if (mlir::CallOpInterface::getArgOperands(v72))
          {
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v72);
            if (!v28)
            {
LABEL_24:
              v30 = *v77[0];
              v31 = *(v77[0] + 1);
              Value = mlir::AffineMapAttr::getValue(&v79);
              v33 = mlir::DictionaryAttr::end(&v79);
              v34 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), v33, *(*(v80 + 96) + 8));
              if ((v35 & 1) != 0 && (v36 = *(v34 + 1)) != 0)
              {
                if (mlir::BoolAttr::classof(*(v34 + 1)))
                {
                  v37 = v36;
                }

                else
                {
                  v37 = 0;
                }
              }

              else
              {
                v37 = 0;
              }

              __b = v37;
              if (mlir::BoolAttr::getValue(&__b))
              {
                v30 = v31;
              }

              mlir::CallableOpInterface::getArgAttrsAttr(v72);
              v49 = *(mlir::CallableOpInterface::getArgAttrsAttr(v72) + 8 * (v48 - 2));
              mlir::CallableOpInterface::getArgAttrsAttr(v72);
              v51 = *(mlir::CallableOpInterface::getArgAttrsAttr(v72) + 8 * (v50 - 1));
              v52 = mlir::AffineMapAttr::getValue(&v79);
              v53 = mlir::DictionaryAttr::end(&v79);
              v54 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v52 + 16), v53, *(*(v80 + 96) + 16));
              if ((v55 & 1) != 0 && (v56 = *(v54 + 1)) != 0)
              {
                if (mlir::BoolAttr::classof(*(v54 + 1)))
                {
                  v57 = v56;
                }

                else
                {
                  v57 = 0;
                }
              }

              else
              {
                v57 = 0;
              }

              __b = v57;
              if (!mlir::BoolAttr::getValue(&__b))
              {
                v49 = v51;
              }

              __b = v76;
              v75 = 0x400000000;
              v58 = mlir::CallableOpInterface::getArgAttrsAttr(v72);
              v60 = v75;
              if (&v58[v59 - 2] != v58)
              {
                v61 = 8 * v59 - 16;
                do
                {
                  v62 = *v58;
                  if (v60 >= HIDWORD(v75))
                  {
                    v71 = v58;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v76, v60 + 1, 8);
                    v58 = v71;
                    v60 = v75;
                  }

                  *(__b + v60) = v62;
                  v60 = v75 + 1;
                  LODWORD(v75) = v75 + 1;
                  ++v58;
                  v61 -= 8;
                }

                while (v61);
              }

              __src[0] = v30;
              __src[1] = v49;
              llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&__b, __b + 8 * v60, __src, &__b);
              v63 = __b;
              v64 = v75;
              ElementTypeOrSelf = mlir::getElementTypeOrSelf(v72[0]);
              v46 = v63;
              v47 = v64;
LABEL_60:
              v65 = mlir::RankedTensorType::get(v46, v47, ElementTypeOrSelf, 0);
              v66 = *(a11 + 8);
              if (v66 >= *(a11 + 12))
              {
                v70 = v65;
                llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v66 + 1, 8);
                v65 = v70;
                LODWORD(v66) = *(a11 + 8);
              }

              *(*a11 + 8 * v66) = v65;
              ++*(a11 + 8);
              if (__b != v76)
              {
                free(__b);
              }

              goto LABEL_35;
            }

            v29 = 8 * v28;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v29 -= 8;
              if (!v29)
              {
                goto LABEL_24;
              }
            }
          }

          mlir::CallableOpInterface::getArgAttrsAttr(v72);
          v43 = v42;
          __b = v76;
          HIDWORD(v75) = 6;
          if (v42 < 7)
          {
            if (v42)
            {
              memset_pattern16(v76, &unk_1E096FAD0, 8 * v42);
            }

            v44 = v76;
          }

          else
          {
            LODWORD(v75) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v76, v42, 8);
            v44 = __b;
            memset_pattern16(__b, &unk_1E096FAD0, 8 * v43);
          }

          LODWORD(v75) = v43;
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(v72[0]);
          v46 = v44;
          v47 = v43;
          goto LABEL_60;
        }

        v38 = mlir::getElementTypeOrSelf(v72[0]);
        if (!v38)
        {
          v38 = mlir::Float32Type::get(this, v39);
        }

        v40 = mlir::UnrankedTensorType::get(v38);
        v41 = *(a11 + 8);
        if (v41 >= *(a11 + 12))
        {
          v69 = v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v41 + 1, 8);
          v40 = v69;
          v41 = *(a11 + 8);
        }

        *(*a11 + 8 * v41) = v40;
      }

      else
      {
        v24 = mlir::Float32Type::get(this, v17);
        v25 = mlir::UnrankedTensorType::get(v24);
        v26 = *(a11 + 8);
        if (v26 >= *(a11 + 12))
        {
          v68 = v25;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v26 + 1, 8);
          v25 = v68;
          LODWORD(v26) = *(a11 + 8);
        }

        *(*a11 + 8 * v26) = v25;
      }

      ++*(a11 + 8);
LABEL_35:
      if (v77[0] != v78)
      {
        free(v77[0]);
      }

      return 1;
    }
  }

  v20 = mlir::Float32Type::get(this, a2);
  v21 = mlir::UnrankedTensorType::get(v20);
  v22 = *(a11 + 8);
  if (v22 >= *(a11 + 12))
  {
    v67 = v21;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v22 + 1, 8);
    v21 = v67;
    LODWORD(v22) = *(a11 + 8);
  }

  *(*a11 + 8 * v22) = v21;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::SparseDenseMatMulOpAdaptor::verify(mlir::mpsx::SparseDenseMatMulOpAdaptor *this, Location a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      if (i == mlir::DictionaryAttr::end(&v38))
      {
        goto LABEL_32;
      }

      v15 = 0;
      v16 = 0;
      do
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v16 = *(i + 1);
        }

        else if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
        {
          v15 = *(i + 1);
        }

        i = (i + 16);
      }

      while (i != mlir::DictionaryAttr::end(&v38));
      if (v16 && !mlir::BoolAttr::classof(v16))
      {
        v36[0] = "'mpsx.sparse_dense_matmul' op attribute 'transpose_lhs' failed to satisfy constraint: BOOL attribute";
        v37 = 259;
        mlir::emitError(a2.var0.var0, v36, v39);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
        if (v39[0])
        {
          mlir::InFlightDiagnostic::report(v39);
        }

        if (v47 != 1)
        {
          return v5;
        }

        if (v46 != &v47)
        {
          free(v46);
        }

        v23 = __p;
        if (__p)
        {
          v24 = v45;
          v25 = __p;
          if (v45 != __p)
          {
            do
            {
              v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
            }

            while (v24 != v23);
            v25 = __p;
          }

          v45 = v23;
          operator delete(v25);
        }

        v9 = v42;
        if (!v42)
        {
          goto LABEL_85;
        }

        v26 = v43;
        v11 = v42;
        if (v43 != v42)
        {
          do
          {
            v28 = *--v26;
            v27 = v28;
            *v26 = 0;
            if (v28)
            {
              operator delete[](v27);
            }
          }

          while (v26 != v9);
          goto LABEL_83;
        }
      }

      else
      {
        if (!v15 || mlir::BoolAttr::classof(v15))
        {
LABEL_32:
          if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
          {
            return 1;
          }

          v36[0] = "'mpsx.sparse_dense_matmul' op attribute 'storage_type' failed to satisfy constraint: valid SparseTensorStorage";
          v37 = 259;
          mlir::emitError(a2.var0.var0, v36, v39);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
          if (v39[0])
          {
            mlir::InFlightDiagnostic::report(v39);
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

            v9 = v42;
            if (v42)
            {
              v20 = v43;
              v11 = v42;
              if (v43 == v42)
              {
                goto LABEL_84;
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

              while (v20 != v9);
LABEL_83:
              v11 = v42;
              goto LABEL_84;
            }

            goto LABEL_85;
          }

          return v5;
        }

        v36[0] = "'mpsx.sparse_dense_matmul' op attribute 'transpose_rhs' failed to satisfy constraint: BOOL attribute";
        v37 = 259;
        mlir::emitError(a2.var0.var0, v36, v39);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
        if (v39[0])
        {
          mlir::InFlightDiagnostic::report(v39);
        }

        if (v47 != 1)
        {
          return v5;
        }

        if (v46 != &v47)
        {
          free(v46);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v45;
          v31 = __p;
          if (v45 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v45 = v29;
          operator delete(v31);
        }

        v9 = v42;
        if (!v42)
        {
          goto LABEL_85;
        }

        v32 = v43;
        v11 = v42;
        if (v43 != v42)
        {
          do
          {
            v34 = *--v32;
            v33 = v34;
            *v32 = 0;
            if (v34)
            {
              operator delete[](v33);
            }
          }

          while (v32 != v9);
          goto LABEL_83;
        }
      }

LABEL_84:
      v43 = v9;
      operator delete(v11);
      goto LABEL_85;
    }
  }

  v36[0] = "'mpsx.sparse_dense_matmul' op requires attribute 'storage_type'";
  v37 = 259;
  mlir::emitError(a2.var0.var0, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (v42)
    {
      v10 = v43;
      v11 = v42;
      if (v43 == v42)
      {
        goto LABEL_84;
      }

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
      goto LABEL_83;
    }

LABEL_85:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

uint64_t mlir::mpsx::anonymous namespace::defaultInferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, mlir::Float32Type *this)
{
  if (this)
  {
    v4 = this;
  }

  else
  {
    v4 = mlir::Float32Type::get(a1, a2);
  }

  v5 = mlir::UnrankedTensorType::get(v4);
  v6 = *(a2 + 2);
  if (v6 >= *(a2 + 3))
  {
    v8 = v5;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v6 + 1, 8);
    v5 = v8;
    v6 = *(a2 + 2);
  }

  *(*a2 + 8 * v6) = v5;
  ++*(a2 + 2);
  return 1;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::verify(mlir::Operation **this)
{
  v39 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v27 = mlir::getElementTypeOrSelf((*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (ElementTypeOrSelf == v27)
  {
    v29[0] = &v30;
    v29[1] = 0x600000000;
    if (mlir::matchConstantWithIntVector<long long>(*(*(*this + 9) + 120), v29))
    {
      v2 = *(*this + 9);
      v3 = v2[3];
      v4 = v2[7];
      v5 = v2[11];
      StorageType = mlir::mpsx::SparseDenseMatMulOp::getStorageType(this);
      v7 = *v29[0];
      v8 = *(v29[0] + 1);
      v20[0] = this;
      v9 = mlir::mps::verifySparseTensorHelper(v3, v4, v5, StorageType, v7, v8, llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::Twine const&)>::callback_fn<mlir::mpsx::SparseDenseMatMulOp::verify(void)::$_0>, v20) & 1;
    }

    else
    {
      v9 = 1;
    }

    v18 = v29[0];
    if (v29[0] != &v30)
    {
LABEL_22:
      free(v18);
    }
  }

  else
  {
    v20[0] = "failed: expected same element type between the sparse and the dense matrix, but got {0} and {1}";
    v20[1] = 95;
    v20[2] = v24;
    v20[3] = 2;
    v21 = 1;
    v22[0] = &unk_1F5B15E08;
    v22[1] = &ElementTypeOrSelf;
    v23[0] = &unk_1F5B15E08;
    v23[1] = &v27;
    v24[0] = v22;
    v24[1] = v23;
    v26 = 263;
    v25 = v20;
    mlir::OpState::emitOpError(this, &v25, v29);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v36;
        v12 = __p;
        if (v36 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v36 = v10;
        operator delete(v12);
      }

      v13 = v33;
      if (v33)
      {
        v14 = v34;
        v15 = v33;
        if (v34 != v33)
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
          v15 = v33;
        }

        v34 = v13;
        operator delete(v15);
      }

      v18 = v31;
      if (v31 != &v32)
      {
        goto LABEL_22;
      }
    }
  }

  return v9;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::getStorageType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::arith::FastMathFlagsAttr::getValue(&AttrDictionary);
}

BOOL mlir::mpsx::getAxis(mlir *a1, char a2, char *a3, char *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  v24 = a4;
  v25 = &v26;
  v22 = a3;
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v25, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v26, v27);
  v22 = SingleInt;
  var0 = v10.var0.var0;
  result = 1;
  if (v10.var0.var0)
  {
    if ((*a5 = SingleInt, *(a5 + 8) = 1, SingleInt < 0) && (SingleInt += a4, *a5 = SingleInt, SingleInt < 0) || SingleInt >= a4)
    {
      if (a2)
      {
        mlir::emitError(a1, v10, &v26);
        if (v26)
        {
          mlir::Diagnostic::append<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(&v27, "invalid axis tensor: [", &v22, "], axis must be in range -rank <= axis < rank,", " rank = ", &v24);
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
        v13 = result;
        if (v26)
        {
          mlir::InFlightDiagnostic::report(&v26);
          result = v13;
        }

        if (v35 == 1)
        {
          if (v34 != &v35)
          {
            free(v34);
            result = v13;
          }

          v14 = __p;
          if (__p)
          {
            v15 = v33;
            v16 = __p;
            if (v33 != __p)
            {
              do
              {
                v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
              }

              while (v15 != v14);
              v16 = __p;
            }

            v33 = v14;
            operator delete(v16);
            result = v13;
          }

          v17 = v30;
          if (v30)
          {
            v18 = v31;
            v19 = v30;
            if (v31 != v30)
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
              v19 = v30;
            }

            v31 = v17;
            operator delete(v19);
            result = v13;
          }

          if (v28 != &v29)
          {
            free(v28);
            return v13;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedGatherOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70[2] = *MEMORY[0x1E69E9840];
  v70[0] = a4;
  v70[1] = a5;
  v63 = a6;
  LOBYTE(v64) = 0;
  v65 = 0;
  v66 = a9;
  v67 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v63);
    if (v65 == 1)
    {
      v65 = 0;
    }

    mlir::OperationName::OperationName(&v64, "mpsx.quantized_gather", 21, Context);
    v65 = 1;
  }

  v68 = a4;
  v69 = a5;
  if (a5 < 4 || (v17.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mpsx::QuantizedGatherOpAdaptor::verify(&v63, v17)))
  {
    v20 = mlir::Float32Type::get(this, a2);
    v21 = mlir::UnrankedTensorType::get(v20);
    v22 = *(a11 + 8);
    if (v22 >= *(a11 + 12))
    {
      v52 = v21;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v22 + 1, 8);
      v21 = v52;
      LODWORD(v22) = *(a11 + 8);
    }

    *(*a11 + 8 * v22) = v21;
    goto LABEL_12;
  }

  v18 = (*(mlir::ValueRange::dereference_iterator(v70, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  }

  else
  {
    v18 = 0;
  }

  v59[0] = v18;
  v59[1] = v19;
  v24 = (*(mlir::ValueRange::dereference_iterator(v70, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8))
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
    v57 = v24;
    v58 = v25;
    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = 0;
    v57 = 0;
    v58 = 0;
    if (!v18)
    {
LABEL_21:
      v31 = mlir::ValueRange::dereference_iterator(v70, 0);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v31);
      if (!ElementTypeOrSelf)
      {
        ElementTypeOrSelf = mlir::Float32Type::get(this, v33);
      }

      v34 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v35 = *(a11 + 8);
      if (v35 >= *(a11 + 12))
      {
        v53 = v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v35 + 1, 8);
        v34 = v53;
        v35 = *(a11 + 8);
      }

      *(*a11 + 8 * v35) = v34;
LABEL_12:
      ++*(a11 + 8);
      return 1;
    }
  }

  if (!v24)
  {
    goto LABEL_21;
  }

  Value = mlir::AffineMapAttr::getValue(&v63);
  v27 = mlir::DictionaryAttr::end(&v63);
  v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v27 - 16), *(*(v64 + 96) + 16));
  if (v29)
  {
    v30 = *(v28 + 1);
  }

  else
  {
    v30 = 0;
  }

  v56 = v30;
  v36 = mlir::AffineMapAttr::getValue(&v56);
  v37 = mlir::getElementTypeOrSelf(v36);
  v38 = mlir::UnrankedTensorType::get(v37);
  if (!mlir::CallOpInterface::getArgOperands(v59) || !mlir::CallOpInterface::getArgOperands(&v57))
  {
    goto LABEL_36;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v59);
  v40 = v39;
  LOBYTE(v54) = 0;
  v55 = 0;
  v41 = mlir::ValueRange::dereference_iterator(v70, 2);
  if (mlir::mpsx::getAxis(a2, a3, v41, v40, &v54))
  {
    if (v55 != 1)
    {
      goto LABEL_36;
    }

    BatchDims = mlir::mpsx::detail::QuantizedGatherOpGenericAdaptorBase::getBatchDims(&v63);
    v60 = v62;
    v61 = 0x400000000;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v59);
    v45 = v44;
    v46 = mlir::CallableOpInterface::getArgAttrsAttr(&v57);
    v48 = v47;
    v49.var0.var0 = a3;
    if (v50)
    {
      v38 = mlir::RankedTensorType::get(v60, v61, v37, 0);
    }

    if (v60 != v62)
    {
      free(v60);
    }

    if (v50)
    {
LABEL_36:
      v51 = *(a11 + 8);
      if (v51 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v51 + 1, 8);
        LODWORD(v51) = *(a11 + 8);
      }

      *(*a11 + 8 * v51) = v38;
      goto LABEL_12;
    }
  }

  return 0;
}

BOOL mlir::mpsx::QuantizedGatherOpAdaptor::verify(mlir::mpsx::QuantizedGatherOpAdaptor *this, Location a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v47 = *this;
  Value = mlir::AffineMapAttr::getValue(&v47);
  if (Value == mlir::DictionaryAttr::end(&v47))
  {
LABEL_7:
    v45[0] = "'mpsx.quantized_gather' op requires attribute 'batch_dims'";
    v46 = 259;
    mlir::emitError(a2.var0.var0, v45, &v50);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
    if (v50)
    {
      mlir::InFlightDiagnostic::report(&v50);
    }

    if (v61 != 1)
    {
      return v6;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v59;
      v9 = __p;
      if (v59 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v59 = v7;
      operator delete(v9);
    }

    v10 = v56;
    if (v56)
    {
      v11 = v57;
      v12 = v56;
      if (v57 != v56)
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
        goto LABEL_89;
      }

      goto LABEL_90;
    }

    goto LABEL_91;
  }

  v5 = 0;
  while (mlir::CallGraphNode::getCallableRegion(Value) != *(*(*(this + 1) + 96) + 8))
  {
    if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
    {
      v5 = *(Value + 1);
    }

    Value = (Value + 16);
    if (Value == mlir::DictionaryAttr::end(&v47))
    {
      goto LABEL_7;
    }
  }

  v15 = *(Value + 1);
  while (1)
  {
    if (Value == mlir::DictionaryAttr::end(&v47))
    {
      v45[0] = "'mpsx.quantized_gather' op requires attribute 'dtype'";
      v46 = 259;
      mlir::emitError(a2.var0.var0, v45, &v50);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
      if (v50)
      {
        mlir::InFlightDiagnostic::report(&v50);
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
        }

        v16 = __p;
        if (__p)
        {
          v17 = v59;
          v18 = __p;
          if (v59 != __p)
          {
            do
            {
              v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
            }

            while (v17 != v16);
            v18 = __p;
          }

          v59 = v16;
          operator delete(v18);
        }

        v10 = v56;
        if (v56)
        {
          v19 = v57;
          v12 = v56;
          if (v57 != v56)
          {
            do
            {
              v21 = *--v19;
              v20 = v21;
              *v19 = 0;
              if (v21)
              {
                operator delete[](v20);
              }
            }

            while (v19 != v10);
            goto LABEL_89;
          }

          goto LABEL_90;
        }

LABEL_91:
        if (v52 != v55)
        {
          free(v52);
        }

        return v6;
      }

      return v6;
    }

    if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 16))
    {
      break;
    }

    Value = (Value + 16);
  }

  v22 = *(Value + 1);
  while (1)
  {
    if (Value == mlir::DictionaryAttr::end(&v47))
    {
      v45[0] = "'mpsx.quantized_gather' op requires attribute 'operandSegmentSizes'";
      v46 = 259;
      mlir::emitError(a2.var0.var0, v45, &v50);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
      if (v50)
      {
        mlir::InFlightDiagnostic::report(&v50);
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
        }

        v23 = __p;
        if (__p)
        {
          v24 = v59;
          v25 = __p;
          if (v59 != __p)
          {
            do
            {
              v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
            }

            while (v24 != v23);
            v25 = __p;
          }

          v59 = v23;
          operator delete(v25);
        }

        v10 = v56;
        if (v56)
        {
          v26 = v57;
          v12 = v56;
          if (v57 == v56)
          {
            goto LABEL_90;
          }

          do
          {
            v28 = *--v26;
            v27 = v28;
            *v26 = 0;
            if (v28)
            {
              operator delete[](v27);
            }
          }

          while (v26 != v10);
          goto LABEL_89;
        }

        goto LABEL_91;
      }

      return v6;
    }

    if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 24))
    {
      break;
    }

    Value = (Value + 16);
  }

  v44 = *(Value + 1);
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v44);
  if (v29 == 6)
  {
    if (v22)
    {
      if (*(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v45[0] = "'mpsx.quantized_gather' op attribute 'dtype' failed to satisfy constraint: any type attribute";
        v46 = 259;
        mlir::emitError(a2.var0.var0, v45, &v50);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
        if (v50)
        {
          mlir::InFlightDiagnostic::report(&v50);
        }

        if (v61 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v51);
        }

        return v6;
      }

      v50 = v22;
      mlir::AffineMapAttr::getValue(&v50);
    }

    if (!v15 || *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v45[0] = v15, v50 = mlir::AffineMapAttr::getValue(v45), mlir::Type::isUnsignedInteger(&v50, 32)))
    {
      if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        return 1;
      }

      v42 = "'mpsx.quantized_gather' op attribute 'allow_negative_indices' failed to satisfy constraint: unit attribute";
    }

    else
    {
      v42 = "'mpsx.quantized_gather' op attribute 'batch_dims' failed to satisfy constraint: 32-bit unsigned integer attribute";
    }

    v45[0] = v42;
    v46 = 259;
    mlir::emitError(a2.var0.var0, v45, &v50);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
    return v6;
  }

  v30 = v29;
  v45[0] = "'mpsx.quantized_gather' op 'operandSegmentSizes' attribute for specifying operand segments must have 6 elements, but got ";
  v46 = 259;
  mlir::emitError(a2.var0.var0, v45, &v50);
  if (v50)
  {
    v48 = 5;
    v49 = v30;
    v31 = &v48;
    v32 = v52;
    if (v53 >= v54)
    {
      if (v52 <= &v48 && v52 + 24 * v53 > &v48)
      {
        v43 = &v48 - v52;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
        v32 = v52;
        v31 = (v52 + v43);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
        v31 = &v48;
        v32 = v52;
      }
    }

    v33 = &v32[24 * v53];
    v34 = *v31;
    *(v33 + 2) = *(v31 + 2);
    *v33 = v34;
    ++v53;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
  if (v50)
  {
    mlir::InFlightDiagnostic::report(&v50);
  }

  if (v61)
  {
    if (v60 != &v61)
    {
      free(v60);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v59;
      v37 = __p;
      if (v59 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v59 = v35;
      operator delete(v37);
    }

    v10 = v56;
    if (v56)
    {
      v38 = v57;
      v12 = v56;
      if (v57 == v56)
      {
        goto LABEL_90;
      }

      do
      {
        v40 = *--v38;
        v39 = v40;
        *v38 = 0;
        if (v40)
        {
          operator delete[](v39);
        }
      }

      while (v38 != v10);
LABEL_89:
      v12 = v56;
LABEL_90:
      v57 = v10;
      operator delete(v12);
    }

    goto LABEL_91;
  }

  return v6;
}

void *mlir::mpsx::detail::QuantizedGatherOpGenericAdaptorBase::getBatchDims(mlir::mpsx::detail::QuantizedGatherOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 - 32), *(*(*(this + 1) + 96) + 8));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  mlir::IntegerAttr::getValue(&v11, &__p);
  if (v10 <= 0x40)
  {
    return __p;
  }

  v7 = *__p;
  operator delete[](__p);
  return v7;
}

uint64_t mlir::mpsx::anonymous namespace::inferQuantizedGatherShape(mlir *a1, Location a2, uint64_t *a3, unint64_t a4, unint64_t *a5, unint64_t a6, char *a7, unsigned int a8, uint64_t a9)
{
  v105 = *MEMORY[0x1E69E9840];
  v94 = a7;
  v93 = a8;
  v9 = a8;
  v10 = a4 - a8;
  if (a4 <= a8 || a6 < a8)
  {
    if (a2.var0.var0)
    {
      mlir::emitError(a1, a2, &v95);
      if (v95)
      {
        mlir::Diagnostic::append<char const(&)[27],unsigned int &,char const(&)[47]>(v96, "invalid batch dimensions: ", &v93, ", must be less than ranks of all input tensors");
      }

      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
      if (v95)
      {
        mlir::InFlightDiagnostic::report(&v95);
      }

      if (v104 == 1)
      {
        if (v103 != &v104)
        {
          free(v103);
        }

        v13 = v101;
        if (v101)
        {
          v14 = v102;
          v15 = v101;
          if (v102 != v101)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = v101;
          }

          v102 = v13;
          operator delete(v15);
        }

        v16 = v99;
        if (!v99)
        {
          goto LABEL_77;
        }

        v17 = v100;
        v18 = v99;
        if (v100 == v99)
        {
LABEL_76:
          v100 = v16;
          operator delete(v18);
LABEL_77:
          if (v97 != &v98)
          {
            free(v97);
          }

          return v12;
        }

        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
LABEL_75:
        v18 = v99;
        goto LABEL_76;
      }

      return v12;
    }

    return 0;
  }

  v21 = &a7[-a8];
  if (a7 >= a8)
  {
    v28 = a6 - a8;
    v94 = &a7[-a8];
    v29 = (v10 - 1);
    if ((v10 - 1 + v28) < 0)
    {
      if (a2.var0.var0)
      {
        mlir::emitError(a1, a2, &v95);
        if (v95)
        {
          mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(v96, "Rank of destination array must be greater than or equal ", "to 0");
        }

        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
        if (v95)
        {
          mlir::InFlightDiagnostic::report(&v95);
        }

        if (v104 == 1)
        {
          if (v103 != &v104)
          {
            free(v103);
          }

          v44 = v101;
          if (v101)
          {
            v45 = v102;
            v46 = v101;
            if (v102 != v101)
            {
              do
              {
                v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
              }

              while (v45 != v44);
              v46 = v101;
            }

            v102 = v44;
            operator delete(v46);
          }

          v16 = v99;
          if (!v99)
          {
            goto LABEL_77;
          }

          v47 = v100;
          v18 = v99;
          if (v100 == v99)
          {
            goto LABEL_76;
          }

          do
          {
            v49 = *--v47;
            v48 = v49;
            *v47 = 0;
            if (v49)
            {
              operator delete[](v48);
            }
          }

          while (v47 != v16);
          goto LABEL_75;
        }

        return v12;
      }

      return 0;
    }

    v32 = &v29[a6];
    v33 = *(a9 + 8);
    if (&v29[a6] != v33)
    {
      if (&v29[a6] >= v33)
      {
        v91 = a7;
        v92 = a4;
        v90 = a8;
        if (v32 > *(a9 + 12))
        {
          v34 = a6;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a9, a9 + 16, &v29[a6], 8);
          a7 = v91;
          a4 = v92;
          a6 = v34;
          a8 = v90;
          v33 = *(a9 + 8);
        }

        if (v32 != v33)
        {
          v35 = a6;
          bzero((*a9 + 8 * v33), 8 * (v32 - v33));
          a7 = v91;
          a4 = v92;
          a6 = v35;
          a8 = v90;
        }
      }

      *(a9 + 8) = v32;
      v33 = v32;
    }

    v36 = &a3[a4];
    v37 = *a9;
    v38 = *a9 + 8 * v33;
    v39 = (v21 - v29);
    if (v21 != v29)
    {
      v40 = 8 * a4 - 16;
      v41 = v40 - 8 * a7;
      if (v41 < 0x58)
      {
        v42 = &a3[a4];
        v43 = &v37[v33];
LABEL_83:
        v57 = v43 - 1;
        do
        {
          v58 = *(v42 - 1);
          v42 -= 8;
          *v57-- = v58;
        }

        while (v42 != &v36[8 * v39]);
        goto LABEL_85;
      }

      v50 = &v37[v33];
      v42 = &a3[a4];
      v43 = v50;
      if ((v36 - v50) < 0x20)
      {
        goto LABEL_83;
      }

      v51 = (v41 >> 3) + 1;
      v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
      v42 = &v36[-v52];
      v43 = (v38 - v52);
      v53 = (a3 + v40);
      v54 = v50 - 2;
      v55 = v51 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v56 = *v53;
        *(v54 - 1) = *(v53 - 1);
        *v54 = v56;
        v53 -= 2;
        v54 -= 4;
        v55 -= 4;
      }

      while (v55);
      if (v51 != (v51 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_83;
      }
    }

LABEL_85:
    if (a6 != v9)
    {
      v59 = &a5[a6];
      v60 = v38 + 8 * v39;
      v61 = 8 * a6 - 8 * v9 - 8;
      if (v61 >= 0x98)
      {
        v63 = &a7[v33];
        v62 = &a5[a6];
        if (v59 + 8 * a4 - &v37[v63] - 8 >= 0x20)
        {
          v64 = (v61 >> 3) + 1;
          v65 = 8 * (v64 & 0x3FFFFFFFFFFFFFFCLL);
          v62 = &v59[v65 / 0xFFFFFFFFFFFFFFF8];
          v60 -= v65;
          v66 = &a5[a6 - 2];
          v67 = (v37 + v63 * 8 - 8 * a4 - 8);
          v68 = v64 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v69 = *v66;
            *(v67 - 1) = *(v66 - 1);
            *v67 = v69;
            v66 -= 4;
            v67 -= 2;
            v68 -= 4;
          }

          while (v68);
          if (v64 == (v64 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        v62 = &a5[a6];
      }

      v70 = &v59[-v28];
      v71 = (v60 - 8);
      do
      {
        v72 = *--v62;
        *v71-- = v72;
      }

      while (v62 != v70);
    }

LABEL_94:
    if (a7 != v9)
    {
      v73 = &v21[-v10 - v28];
      v74 = v38 + 8 * v73 + 8;
      v75 = &v36[8 * &v21[-v10]];
      v76 = 8 * a7 - 8 * v9 - 8;
      if (v76 < 0x88)
      {
        goto LABEL_100;
      }

      if ((&a3[a6 + a4] - &v37[&v9[v33]] - 8) < 0x20)
      {
        goto LABEL_100;
      }

      v77 = (v76 >> 3) + 1;
      v78 = 8 * (v77 & 0x3FFFFFFFFFFFFFFCLL);
      v75 -= v78;
      v74 -= v78;
      v79 = &a3[a7 - 2];
      v80 = &v37[v33 - 1 + v73];
      v81 = v77 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v82 = *v79;
        *(v80 - 1) = *(v79 - 1);
        *v80 = v82;
        v79 -= 2;
        v80 -= 4;
        v81 -= 4;
      }

      while (v81);
      if (v77 != (v77 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_100:
        v83 = &v36[-8 * v10];
        v84 = (v74 - 8);
        do
        {
          v85 = *(v75 - 1);
          v75 -= 8;
          *v84-- = v85;
        }

        while (v75 != v83);
      }
    }

    if (a8)
    {
      v86 = 8 * v9;
      do
      {
        v87 = *a5++;
        v95 = v87;
        v88 = *a3++;
        v96[0] = v88;
        *v37++ = mlir::mps::mergeDynamicDims(&v95, 2);
        v86 -= 8;
      }

      while (v86);
    }

    return 1;
  }

  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v95);
  if (v95)
  {
    mlir::Diagnostic::append<char const(&)[39],char const(&)[19],long long &,char const(&)[4],unsigned int &>(v96, "Axis must be greater than or equal to ", "batch dimensions, ", &v94, " < ", &v93);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v104 == 1)
  {
    if (v103 != &v104)
    {
      free(v103);
    }

    v22 = v101;
    if (v101)
    {
      v23 = v102;
      v24 = v101;
      if (v102 != v101)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = v101;
      }

      v102 = v22;
      operator delete(v24);
    }

    v16 = v99;
    if (!v99)
    {
      goto LABEL_77;
    }

    v25 = v100;
    v18 = v99;
    if (v100 == v99)
    {
      goto LABEL_76;
    }

    do
    {
      v27 = *--v25;
      v26 = v27;
      *v25 = 0;
      if (v27)
      {
        operator delete[](v26);
      }
    }

    while (v25 != v16);
    goto LABEL_75;
  }

  return v12;
}

BOOL mlir::mpsx::QuantizedGatherOp::verify(mlir::Operation **this)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = (*(*(*(*this + 9) + 32 * mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v43[0] = v2;
  v43[1] = v3;
  v4 = (*(*(*(*this + 9) + 32 * mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(this, 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v42[0] = v4;
  v42[1] = v5;
  if (mlir::CallOpInterface::getArgOperands(v43))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
    v8 = v7;
  }

  else
  {
    ArgAttrsAttr = 0;
    v8 = 0x8000000000000000;
  }

  if (mlir::CallOpInterface::getArgOperands(v42))
  {
    v9 = mlir::CallableOpInterface::getArgAttrsAttr(v42);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0x8000000000000000;
  }

  BatchDims = mlir::mpsx::QuantizedGatherOp::getBatchDims(this);
  v13 = BatchDims;
  v41 = BatchDims;
  if ((v8 == 0x8000000000000000 || v8 > BatchDims) && (v11 == 0x8000000000000000 || v11 >= BatchDims))
  {
    v19 = 1;
    if (v8 == 0x8000000000000000 || v11 == 0x8000000000000000)
    {
      return v19;
    }

    if (mlir::verifyCompatibleShape(ArgAttrsAttr, BatchDims, v9, BatchDims))
    {
      LOBYTE(v44) = 0;
      LOBYTE(v45) = 0;
      v28 = *(*this + 3);
      ODSOperandIndexAndLength = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(this, 2);
      Axis = mlir::mpsx::getAxis(v28, 1, *(*(*this + 9) + 32 * ODSOperandIndexAndLength + 24), v8, &v44);
      v19 = 0;
      if (!Axis)
      {
        return v19;
      }

      if (v45 != 1)
      {
        return 1;
      }

      if (v44 < v13)
      {
        v39[0] = "Axis must be greater than or equal to batch ";
        v40 = 259;
        mlir::OpState::emitOpError(this, v39, &v46);
        if (v46)
        {
          mlir::Diagnostic::append<char const(&)[7]>(&v47, "dimensions, ");
        }

        mlir::InFlightDiagnostic::operator<<<long long &>(&v46, &v44);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v31, " < ");
        mlir::InFlightDiagnostic::operator<<<unsigned long>(v32, &v41);
        goto LABEL_50;
      }

      if (&v8[v11 - 1] >= 0)
      {
        v46 = v43;
        v47 = this;
        if (v43[0] && mlir::CallOpInterface::getArgOperands(v43))
        {
          v34 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(this, 3);
          if (!mlir::mpsx::QuantizedGatherOp::verify(void)::$_0::operator()(&v46, "scale", *(*(*this + 9) + 32 * v34 + 24)))
          {
            return 0;
          }

          ZeroPoint = mlir::mpsx::QuantizedGatherOp::getZeroPoint(this);
          if (!mlir::mpsx::QuantizedGatherOp::verify(void)::$_0::operator()(&v46, "zeroPoint", ZeroPoint))
          {
            return 0;
          }

          Min = mlir::mpsx::QuantizedGatherOp::getMin(this);
          return mlir::mpsx::QuantizedGatherOp::verify(void)::$_0::operator()(&v46, "min", Min);
        }

        return 1;
      }

      v39[0] = "Rank of destination array must be greater than or equal to 0";
      v40 = 259;
      mlir::OpState::emitOpError(this, v39, &v46);
      v33 = &v46;
    }

    else
    {
      v39[0] = "invalid input tensor shapes: input tensor shapes ";
      v40 = 259;
      mlir::OpState::emitOpError(this, v39, &v46);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v46, "must match along batch dimensions");
    }

LABEL_50:
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
    return v19;
  }

  v39[0] = "invalid batch dimensions: ";
  v40 = 259;
  mlir::OpState::emitOpError(this, v39, &v46);
  if (v46)
  {
    LODWORD(v44) = 5;
    v45 = v13;
    v14 = &v44;
    v15 = v48;
    if (v49 >= v50)
    {
      if (v48 <= &v44 && v48 + 24 * v49 > &v44)
      {
        v38 = &v44 - v48;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v15 = v48;
        v14 = (v48 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v14 = &v44;
        v15 = v48;
      }
    }

    v16 = &v15[24 * v49];
    v17 = *v14;
    *(v16 + 2) = v14[2];
    *v16 = v17;
    ++v49;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v46, ", must be less than ranks of all input tensors");
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v46)
  {
    mlir::InFlightDiagnostic::report(&v46);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v55;
      v22 = __p;
      if (v55 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v55 = v20;
      operator delete(v22);
    }

    v23 = v52;
    if (v52)
    {
      v24 = v53;
      v25 = v52;
      if (v53 != v52)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            operator delete[](v26);
          }
        }

        while (v24 != v23);
        v25 = v52;
      }

      v53 = v23;
      operator delete(v25);
    }

    if (v48 != v51)
    {
      free(v48);
    }
  }

  return v19;
}

void *mlir::mpsx::QuantizedGatherOp::getBatchDims(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 8));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  mlir::IntegerAttr::getValue(&v12, &__p);
  if (v11 <= 0x40)
  {
    return __p;
  }

  v8 = *__p;
  operator delete[](__p);
  return v8;
}

BOOL mlir::mpsx::QuantizedGatherOp::verify(void)::$_0::operator()(uint64_t a1, char *a2, uint64_t a3)
{
  v75 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8))
  {
    v61 = 0;
    v62 = 0;
    return 1;
  }

  v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  v61 = v6;
  v62 = v7;
  if (!v6 || !mlir::CallOpInterface::getArgOperands(&v61))
  {
    return 1;
  }

  if (mlir::CallOpInterface::getArgOperands(&v61))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(&v61);
    v9 = v8;
    mlir::CallableOpInterface::getArgAttrsAttr(*a1);
    if (v9 != v10)
    {
      v60 = 257;
      mlir::OpState::emitOpError(v5, v59, &v65);
      if (v65)
      {
        mlir::Diagnostic::operator<<(v66, a2);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v65, " rank doesn't match the rank of updates");
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v65)
      {
        v48 = result;
        mlir::InFlightDiagnostic::report(&v65);
        result = v48;
      }

      if (v74 == 1)
      {
        v49 = result;
        mlir::Diagnostic::~Diagnostic(v66);
        return v49;
      }

      return result;
    }
  }

  mlir::CallableOpInterface::getArgAttrsAttr(*a1);
  if (v11 < 1)
  {
    return 1;
  }

  v12 = 0;
  while (1)
  {
    v14 = 8 * v12;
    v15 = *(mlir::CallableOpInterface::getArgAttrsAttr(*a1) + v14);
    v16 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v61) + v14);
    v17 = v15 == 0x8000000000000000 || v16 == 0x8000000000000000;
    if (!v17 && v15 % v16)
    {
      break;
    }

    ++v12;
    mlir::CallableOpInterface::getArgAttrsAttr(*a1);
    if (v12 >= v13)
    {
      return 1;
    }
  }

  v60 = 257;
  mlir::OpState::emitOpError(v5, v59, &v65);
  if (v65)
  {
    mlir::Diagnostic::operator<<(v66, a2);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v65, " shape not compatible with updates for axis ");
  if (*v18)
  {
    v19 = *(v18 + 24);
    v63 = 2;
    v64 = v12;
    v20 = *(v18 + 32);
    v21 = &v63;
    if (v20 >= *(v18 + 36))
    {
      if (v19 <= &v63 && v19 + 24 * v20 > &v63)
      {
        v53 = &v63 - v19;
        v54 = v18;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 24, v18 + 40, v20 + 1, 24);
        v18 = v54;
        v19 = *(v54 + 24);
        v21 = &v53[v19];
      }

      else
      {
        v50 = v18;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 24, v18 + 40, v20 + 1, 24);
        v18 = v50;
        v19 = *(v50 + 24);
        v21 = &v63;
      }
    }

    v22 = v19 + 24 * *(v18 + 32);
    v23 = *v21;
    *(v22 + 16) = *(v21 + 2);
    *v22 = v23;
    ++*(v18 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v18, ": ");
  if (*v24)
  {
    v25 = *(v24 + 24);
    v63 = 2;
    v64 = v15;
    v26 = *(v24 + 32);
    v27 = &v63;
    if (v26 >= *(v24 + 36))
    {
      if (v25 <= &v63 && v25 + 24 * v26 > &v63)
      {
        v55 = &v63 - v25;
        v56 = v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v24 + 24, v24 + 40, v26 + 1, 24);
        v24 = v56;
        v25 = *(v56 + 24);
        v27 = &v55[v25];
      }

      else
      {
        v51 = v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v24 + 24, v24 + 40, v26 + 1, 24);
        v24 = v51;
        v25 = *(v51 + 24);
        v27 = &v63;
      }
    }

    v28 = v25 + 24 * *(v24 + 32);
    v29 = *v27;
    *(v28 + 16) = *(v27 + 2);
    *v28 = v29;
    ++*(v24 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v24, " % ");
  if (*v30)
  {
    v31 = *(v30 + 24);
    v63 = 2;
    v64 = v16;
    v32 = *(v30 + 32);
    v33 = &v63;
    if (v32 >= *(v30 + 36))
    {
      if (v31 <= &v63 && v31 + 24 * v32 > &v63)
      {
        v57 = &v63 - v31;
        v58 = v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v30 + 24, v30 + 40, v32 + 1, 24);
        v30 = v58;
        v31 = *(v58 + 24);
        v33 = &v57[v31];
      }

      else
      {
        v52 = v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v30 + 24, v30 + 40, v32 + 1, 24);
        v30 = v52;
        v31 = *(v52 + 24);
        v33 = &v63;
      }
    }

    v34 = v31 + 24 * *(v30 + 32);
    v35 = *v33;
    *(v34 + 16) = *(v33 + 2);
    *v34 = v35;
    ++*(v30 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v30, " != 0");
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  v38 = result;
  if (v65)
  {
    mlir::InFlightDiagnostic::report(&v65);
    result = v38;
  }

  if (v74)
  {
    if (v73 != &v74)
    {
      free(v73);
      result = v38;
    }

    v39 = __p;
    if (__p)
    {
      v40 = v72;
      v41 = __p;
      if (v72 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v72 = v39;
      operator delete(v41);
      result = v38;
    }

    v42 = v69;
    if (v69)
    {
      v43 = v70;
      v44 = v69;
      if (v70 != v69)
      {
        do
        {
          v46 = *--v43;
          v45 = v46;
          *v43 = 0;
          if (v46)
          {
            operator delete[](v45);
          }
        }

        while (v43 != v42);
        v44 = v69;
      }

      v70 = v42;
      operator delete(v44);
      result = v38;
    }

    if (v67 != &v68)
    {
      free(v67);
      return v38;
    }
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v119 = *MEMORY[0x1E69E9840];
  v117 = a4;
  v118 = a5;
  *&v113 = a6;
  BYTE8(v113) = 0;
  LOBYTE(v114) = 0;
  v16 = a5;
  *(&v114 + 1) = a9;
  *&v115 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v113);
    if (v114 == 1)
    {
      LOBYTE(v114) = 0;
    }

    mlir::OperationName::OperationName(&v113 + 8, "mpsx.quantized_conv2d", 21, Context);
    LOBYTE(v114) = 1;
    v16 = v118;
  }

  *(&v115 + 1) = a4;
  v116 = a5;
  if (v16 < 2 || (v18.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mpsx::QuantizedConv2DOpAdaptor::verify(&v113, v18)))
  {
    v24 = mlir::Float32Type::get(this, a2);
    v25 = mlir::UnrankedTensorType::get(v24);
    v26 = a11[2];
    if (v26 >= a11[3])
    {
      v80 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 4), v26 + 1, 8);
      v25 = v80;
      LODWORD(v26) = a11[2];
    }

    *(*a11 + 8 * v26) = v25;
    goto LABEL_12;
  }

  Value = mlir::AffineMapAttr::getValue(&v113);
  v20 = mlir::DictionaryAttr::end(&v113);
  v21 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 112), (v20 - 16), *(*(*(&v113 + 1) + 96) + 64));
  if (v22)
  {
    v23 = *(v21 + 1);
  }

  else
  {
    v23 = 0;
  }

  v28 = mlir::AffineMapAttr::getValue(&v113);
  v29 = mlir::DictionaryAttr::end(&v113);
  v30 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v28 + 16), (v29 - 112), *(*(*(&v113 + 1) + 96) + 8));
  if (v31)
  {
    v89 = *(v30 + 1);
  }

  else
  {
    v89 = 0;
  }

  v32 = mlir::AffineMapAttr::getValue(&v113);
  v33 = mlir::DictionaryAttr::end(&v113);
  v34 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v32 + 32), (v33 - 96), *(*(*(&v113 + 1) + 96) + 16));
  if (v35)
  {
    v36 = *(v34 + 1);
  }

  else
  {
    v36 = 0;
  }

  Groups = mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getGroups(&v113);
  v37 = mlir::AffineMapAttr::getValue(&v113);
  v38 = mlir::DictionaryAttr::end(&v113);
  v39 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v37 + 96), (v38 - 32), *(*(*(&v113 + 1) + 96) + 56));
  if (v40)
  {
    v41 = *(v39 + 1);
  }

  else
  {
    v41 = 0;
  }

  *&v96 = v41;
  v87 = mlir::arith::FastMathFlagsAttr::getValue(&v96);
  v42 = mlir::AffineMapAttr::getValue(&v113);
  v43 = mlir::DictionaryAttr::end(&v113);
  v44 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v42, (v43 - 128), **(*(&v113 + 1) + 96));
  if (v45)
  {
    v46 = *(v44 + 1);
  }

  else
  {
    v46 = 0;
  }

  *&v96 = v46;
  v47 = mlir::arith::FastMathFlagsAttr::getValue(&v96);
  v48 = mlir::AffineMapAttr::getValue(&v113);
  v49 = mlir::DictionaryAttr::end(&v113);
  v50 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v48 + 128), v49, *(*(*(&v113 + 1) + 96) + 72));
  if (v51)
  {
    v52 = *(v50 + 1);
  }

  else
  {
    v52 = 0;
  }

  *&v96 = v52;
  v53 = mlir::arith::FastMathFlagsAttr::getValue(&v96);
  v54 = mlir::ValueRange::dereference_iterator(&v117, 0);
  v86 = mlir::ValueRange::dereference_iterator(&v117, 1);
  v96 = v113;
  v97 = v114;
  v98 = v115;
  *&v99 = v116;
  v91[1] = v55;
  if (!v91[0] || (mlir::CallOpInterface::getArgOperands(v91) & 1) == 0)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v54);
    if (!ElementTypeOrSelf)
    {
      ElementTypeOrSelf = mlir::Float32Type::get(this, v62);
    }

    v63 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v64 = a11[2];
    if (v64 >= a11[3])
    {
      v81 = v63;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 4), v64 + 1, 8);
      v63 = v81;
      v64 = a11[2];
    }

    *(*a11 + 8 * v64) = v63;
LABEL_12:
    ++a11[2];
    return 1;
  }

  v82 = v53;
  ArgAttrsAttr = operator new(0x20uLL);
  v57 = ArgAttrsAttr;
  *ArgAttrsAttr = 0u;
  ArgAttrsAttr[1] = 0u;
  if (!v91[0] || (ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v91), v58 == 4))
  {
    v84 = ArgAttrsAttr;
    v111[0] = v112;
    v111[1] = 0x400000000;
    v109[0] = v110;
    v109[1] = 0x400000000;
    v107[0] = v108;
    v107[1] = 0x200000000;
    v105[0] = v106;
    v105[1] = 0x200000000;
    v85 = v57;
    if (v23)
    {
      v83 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v23 + 8);
    }

    else
    {
      v83 = 0;
    }

    v65 = v23;
    if (v89)
    {
      v66 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v89 + 8);
      if (v36)
      {
LABEL_44:
        v67 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v36 + 8);
        goto LABEL_47;
      }
    }

    else
    {
      v89 = 0;
      v66 = 0;
      if (v36)
      {
        goto LABEL_44;
      }
    }

    v67 = 0;
LABEL_47:
    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v90);
      v60 = 1;
    }

    else
    {
      v79 = mlir::getElementTypeOrSelf(v54);
    }

    v57 = v85;
    if (v105[0] != v106)
    {
      free(v105[0]);
    }

    if (v107[0] != v108)
    {
      free(v107[0]);
    }

    if (v109[0] != v110)
    {
      free(v109[0]);
    }

    if (v111[0] != v112)
    {
      free(v111[0]);
    }

    goto LABEL_59;
  }

  v59.var0.var0 = a3;
  v60 = mlir::emitOptionalError<char const(&)[66]>(a2, v59, "QuantizedConv2DOp input should be rank 4");
LABEL_59:
  operator delete(v57);
  return v60;
}

BOOL mlir::mpsx::QuantizedConv2DOpAdaptor::verify(mlir::mpsx::QuantizedConv2DOpAdaptor *this, Location a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v73 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v73); i != mlir::DictionaryAttr::end(&v73); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v73))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v73))
          {
            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v73))
              {
                if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 24))
                {
                  v36 = *(i + 1);
                  if (i == mlir::DictionaryAttr::end(&v73))
                  {
LABEL_92:
                    v70 = "'mpsx.quantized_conv2d' op requires attribute 'operandSegmentSizes'";
                    v72 = 259;
                    mlir::emitError(a2.var0.var0, &v70, &Value);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                    if (Value)
                    {
                      mlir::InFlightDiagnostic::report(&Value);
                    }

                    if (v85 == 1)
                    {
                      mlir::Diagnostic::~Diagnostic(&v77);
                    }
                  }

                  else
                  {
                    v37 = 0;
                    while (mlir::CallGraphNode::getCallableRegion(i) != *(*(*(this + 1) + 96) + 40))
                    {
                      if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 32))
                      {
                        v37 = *(i + 1);
                      }

                      i = (i + 16);
                      if (i == mlir::DictionaryAttr::end(&v73))
                      {
                        goto LABEL_92;
                      }
                    }

                    v38 = *(i + 1);
                    while (1)
                    {
                      if (i == mlir::DictionaryAttr::end(&v73))
                      {
                        v39 = "'mpsx.quantized_conv2d' op requires attribute 'output_type'";
                        goto LABEL_116;
                      }

                      if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 48))
                      {
                        break;
                      }

                      i = (i + 16);
                    }

                    v40 = *(i + 1);
                    while (1)
                    {
                      if (i == mlir::DictionaryAttr::end(&v73))
                      {
                        v39 = "'mpsx.quantized_conv2d' op requires attribute 'padding_style'";
                        goto LABEL_116;
                      }

                      if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 56))
                      {
                        break;
                      }

                      i = (i + 16);
                    }

                    v67 = *(i + 1);
                    while (1)
                    {
                      if (i == mlir::DictionaryAttr::end(&v73))
                      {
                        v39 = "'mpsx.quantized_conv2d' op requires attribute 'strides'";
                        goto LABEL_116;
                      }

                      if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 64))
                      {
                        break;
                      }

                      i = (i + 16);
                    }

                    v65 = v40;
                    v66 = v14;
                    v41 = *(i + 1);
                    while (1)
                    {
                      if (i == mlir::DictionaryAttr::end(&v73))
                      {
                        v39 = "'mpsx.quantized_conv2d' op requires attribute 'weights_layout'";
                        goto LABEL_116;
                      }

                      if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 72))
                      {
                        break;
                      }

                      i = (i + 16);
                    }

                    v64 = *(i + 1);
                    if (i == mlir::DictionaryAttr::end(&v73))
                    {
                      v43 = 0;
                    }

                    else
                    {
                      v43 = 0;
                      do
                      {
                        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 80))
                        {
                          v43 = *(i + 1);
                        }

                        i = (i + 16);
                      }

                      while (i != mlir::DictionaryAttr::end(&v73));
                    }

                    *&v75 = v38;
                    mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v75);
                    v74[0] = v44;
                    if (v44 != 11)
                    {
                      v70 = "'mpsx.quantized_conv2d' op 'operandSegmentSizes' attribute for specifying operand segments must have 11 elements, but got ";
                      v72 = 259;
                      mlir::emitError(a2.var0.var0, &v70, &Value);
                      mlir::InFlightDiagnostic::operator<<<unsigned long>(&Value, v74);
                      goto LABEL_117;
                    }

                    if (v37)
                    {
                      if (*(*v37 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v70 = v37, Value = mlir::AffineMapAttr::getValue(&v70), !mlir::Type::isSignedInteger(&Value, 32)))
                      {
                        v39 = "'mpsx.quantized_conv2d' op attribute 'input_quant_params_axis' failed to satisfy constraint: 32-bit signed integer attribute";
                        goto LABEL_116;
                      }
                    }

                    if (v43)
                    {
                      if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v70 = v43, Value = mlir::AffineMapAttr::getValue(&v70), !mlir::Type::isSignedInteger(&Value, 32)))
                      {
                        v39 = "'mpsx.quantized_conv2d' op attribute 'weights_quant_params_axis' failed to satisfy constraint: 32-bit signed integer attribute";
                        goto LABEL_116;
                      }
                    }

                    if (v36)
                    {
                      if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v70 = v36, Value = mlir::AffineMapAttr::getValue(&v70), !mlir::Type::isUnsignedInteger(&Value, 64)))
                      {
                        v39 = "'mpsx.quantized_conv2d' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
                        goto LABEL_116;
                      }
                    }

                    if (v41)
                    {
                      if (!mlir::DenseIntElementsAttr::classof(v41))
                      {
                        goto LABEL_166;
                      }

                      v45 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v41 + 8);
                      v70 = v41;
                      v71 = v45;
                      Type = mlir::ElementsAttr::getType(&v70);
                      v47 = Type;
                      if (Type)
                      {
                        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                      }

                      Value = v47;
                      v77 = Type;
                      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                      v74[0] = 4;
                      if (v49 != 1 || *ArgAttrsAttr != v74[0] || (v68 = v41, *&v75 = mlir::ArrayAttr::getValue(&v68), *(&v75 + 1) = v50, isSplat = mlir::ElementsAttr::isSplat(&v75), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
                      {
LABEL_166:
                        v39 = "'mpsx.quantized_conv2d' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
                        goto LABEL_116;
                      }
                    }

                    if (v21)
                    {
                      if (!mlir::DenseIntElementsAttr::classof(v21))
                      {
                        goto LABEL_167;
                      }

                      v51 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                      v70 = v21;
                      v71 = v51;
                      v52 = mlir::ElementsAttr::getType(&v70);
                      v53 = v52;
                      if (v52)
                      {
                        v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                      }

                      Value = v53;
                      v77 = v52;
                      v54 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                      v74[0] = 4;
                      if (v55 != 1 || *v54 != v74[0] || (v68 = v21, *&v75 = mlir::ArrayAttr::getValue(&v68), *(&v75 + 1) = v56, isSplat = mlir::ElementsAttr::isSplat(&v75), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
                      {
LABEL_167:
                        v39 = "'mpsx.quantized_conv2d' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
                        goto LABEL_116;
                      }
                    }

                    if (v28)
                    {
                      if (!mlir::DenseIntElementsAttr::classof(v28))
                      {
                        goto LABEL_168;
                      }

                      v57 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                      v70 = v28;
                      v71 = v57;
                      v58 = mlir::ElementsAttr::getType(&v70);
                      v59 = v58;
                      if (v58)
                      {
                        v58 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8);
                      }

                      Value = v59;
                      v77 = v58;
                      v60 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                      v75 = xmmword_1E097BBD0;
                      if (v61 != 2 || (*v60 == v75 ? (v62 = v60[1] == *(&v75 + 1)) : (v62 = 0), !v62 || (v68 = v28, v74[0] = mlir::ArrayAttr::getValue(&v68), v74[1] = v63, isSplat = mlir::ElementsAttr::isSplat(v74), !mlir::Type::isUnsignedInteger(&isSplat, 64))))
                      {
LABEL_168:
                        v39 = "'mpsx.quantized_conv2d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
                        goto LABEL_116;
                      }
                    }

                    if (v67 && *(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
                    {
                      v39 = "'mpsx.quantized_conv2d' op attribute 'padding_style' failed to satisfy constraint: valid padding_style";
                      goto LABEL_116;
                    }

                    if (v66 && *(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
                    {
                      v39 = "'mpsx.quantized_conv2d' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout";
                      goto LABEL_116;
                    }

                    if (v64 && *(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
                    {
                      v39 = "'mpsx.quantized_conv2d' op attribute 'weights_layout' failed to satisfy constraint: valid TensorDataLayout";
                      goto LABEL_116;
                    }

                    if (v65)
                    {
                      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
                      {
                        v39 = "'mpsx.quantized_conv2d' op attribute 'output_type' failed to satisfy constraint: any type attribute";
LABEL_116:
                        v70 = v39;
                        v72 = 259;
                        mlir::emitError(a2.var0.var0, &v70, &Value);
                        p_Value = &Value;
LABEL_117:
                        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(p_Value);
                        mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
                        return v5;
                      }

                      Value = v65;
                      mlir::AffineMapAttr::getValue(&Value);
                    }

                    return 1;
                  }

                  return v5;
                }

                i = (i + 16);
              }

              v70 = "'mpsx.quantized_conv2d' op requires attribute 'groups'";
              v72 = 259;
              mlir::emitError(a2.var0.var0, &v70, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v85 != 1)
              {
                return v5;
              }

              if (v84 != &v85)
              {
                free(v84);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v83;
                v31 = __p;
                if (v83 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v83 = v29;
                operator delete(v31);
              }

              v9 = v80;
              if (!v80)
              {
                goto LABEL_83;
              }

              v32 = v81;
              v11 = v80;
              if (v81 == v80)
              {
                goto LABEL_82;
              }

              do
              {
                v34 = *--v32;
                v33 = v34;
                *v32 = 0;
                if (v34)
                {
                  operator delete[](v33);
                }
              }

              while (v32 != v9);
              goto LABEL_81;
            }

            i = (i + 16);
          }

          v70 = "'mpsx.quantized_conv2d' op requires attribute 'explicit_padding'";
          v72 = 259;
          mlir::emitError(a2.var0.var0, &v70, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v85 != 1)
          {
            return v5;
          }

          if (v84 != &v85)
          {
            free(v84);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v83;
            v24 = __p;
            if (v83 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v83 = v22;
            operator delete(v24);
          }

          v9 = v80;
          if (!v80)
          {
            goto LABEL_83;
          }

          v25 = v81;
          v11 = v80;
          if (v81 == v80)
          {
            goto LABEL_82;
          }

          do
          {
            v27 = *--v25;
            v26 = v27;
            *v25 = 0;
            if (v27)
            {
              operator delete[](v26);
            }
          }

          while (v25 != v9);
          goto LABEL_81;
        }

        i = (i + 16);
      }

      v70 = "'mpsx.quantized_conv2d' op requires attribute 'dilation_rates'";
      v72 = 259;
      mlir::emitError(a2.var0.var0, &v70, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v85 != 1)
      {
        return v5;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v83;
        v17 = __p;
        if (v83 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v83 = v15;
        operator delete(v17);
      }

      v9 = v80;
      if (!v80)
      {
        goto LABEL_83;
      }

      v18 = v81;
      v11 = v80;
      if (v81 == v80)
      {
        goto LABEL_82;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v18 != v9);
LABEL_81:
      v11 = v80;
      goto LABEL_82;
    }
  }

  v70 = "'mpsx.quantized_conv2d' op requires attribute 'data_layout'";
  v72 = 259;
  mlir::emitError(a2.var0.var0, &v70, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v85 == 1)
  {
    if (v84 != &v85)
    {
      free(v84);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v83;
      v8 = __p;
      if (v83 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v83 = v6;
      operator delete(v8);
    }

    v9 = v80;
    if (v80)
    {
      v10 = v81;
      v11 = v80;
      if (v81 != v80)
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
        goto LABEL_81;
      }

LABEL_82:
      v81 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v78 != &v79)
    {
      free(v78);
    }
  }

  return v5;
}

void *mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getGroups(mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 48), (v3 - 80), *(*(*(this + 1) + 96) + 24));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  mlir::IntegerAttr::getValue(&v11, &__p);
  if (v10 <= 0x40)
  {
    return __p;
  }

  v7 = *__p;
  operator delete[](__p);
  return v7;
}

uint64_t mlir::mpsx::anonymous namespace::qimpl::getInputDequantizedType<mlir::mpsx::QuantizedConv2DOpAdaptor>(mlir::AffineMapAttr *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  Value = mlir::AffineMapAttr::getValue(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 64), (v3 - 64), *(*(*(a1 + 1) + 96) + 40));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  *&v17 = v6;
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v17);
  v17 = *(a1 + 5);
  v7 = (*(mlir::ValueRange::dereference_iterator(&v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v16[0] = v7;
  v16[1] = v8;
  if (*(*mlir::getElementTypeOrSelf(v7) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v9 = mlir::AffineMapAttr::getValue(a1);
    v10 = mlir::DictionaryAttr::end(a1);
    v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v9 + 80), (v10 - 48), *(*(*(a1 + 1) + 96) + 48));
    if (v12)
    {
      v13 = *(v11 + 1);
    }

    else
    {
      v13 = 0;
    }

    *&v17 = v13;
    v14 = mlir::AffineMapAttr::getValue(&v17);
    LOBYTE(v17) = 0;
    v18 = 0;
    return mlir::ShapedType::cloneWith(v16, &v17, v14);
  }

  return v7;
}

uint64_t mlir::mpsx::anonymous namespace::inferConv2DReturnType(mlir *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v102 = *MEMORY[0x1E69E9840];
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8))
  {
    v86 = 0;
    v87 = 0;
LABEL_32:
    if (a2)
    {
      mlir::emitError(a1, v14, &v92);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v92, "cannot conv2D a non-shaped inputType");
      v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v92)
      {
        mlir::InFlightDiagnostic::report(&v92);
      }

      if (v101 != 1)
      {
        return v40;
      }

      if (v100 != &v101)
      {
        free(v100);
      }

      v41 = __p;
      if (__p)
      {
        v42 = v99;
        v43 = __p;
        if (v99 != __p)
        {
          do
          {
            v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
          }

          while (v42 != v41);
          v43 = __p;
        }

        v99 = v41;
        operator delete(v43);
      }

      v44 = v96;
      if (v96)
      {
        v45 = v97;
        v46 = v96;
        if (v97 == v96)
        {
          goto LABEL_96;
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
LABEL_95:
        v46 = v96;
LABEL_96:
        v97 = v44;
        operator delete(v46);
      }

LABEL_97:
      v66 = v94;
      if (v94 == v95)
      {
        return v40;
      }

      goto LABEL_143;
    }

    return 0;
  }

  v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
  v86 = a3;
  v87 = v15;
  if (!a3)
  {
    goto LABEL_32;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a4 + 8))
  {
    if (a2)
    {
      mlir::emitError(a1, v16, &v92);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v92, "cannot conv2D a non-shaped weightsType");
      v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
      if (v92)
      {
        mlir::InFlightDiagnostic::report(&v92);
      }

      if (v101 != 1)
      {
        return v40;
      }

      if (v100 != &v101)
      {
        free(v100);
      }

      v50 = __p;
      if (__p)
      {
        v51 = v99;
        v52 = __p;
        if (v99 != __p)
        {
          do
          {
            v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
          }

          while (v51 != v50);
          v52 = __p;
        }

        v99 = v50;
        operator delete(v52);
      }

      v44 = v96;
      if (v96)
      {
        v53 = v97;
        v46 = v96;
        if (v97 == v96)
        {
          goto LABEL_96;
        }

        do
        {
          v55 = *--v53;
          v54 = v55;
          *v53 = 0;
          if (v55)
          {
            operator delete[](v54);
          }
        }

        while (v53 != v44);
        goto LABEL_95;
      }

      goto LABEL_97;
    }

    return 0;
  }

  mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a4 + 8);
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    *a7 = mlir::UnrankedTensorType::get(a5);
    return 1;
  }

  v89 = v91;
  v90 = 0x400000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v86);
  var0 = v18.var0.var0;
  if (v18.var0.var0 != 4)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_141;
    }

    mlir::emitError(a1, v18, &v92);
    if (v92)
    {
      mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(&v93, "conv2D input rank ", &var0, "must be 4 ");
    }

    v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
    if (v92)
    {
      mlir::InFlightDiagnostic::report(&v92);
    }

    if (v101 == 1)
    {
      if (v100 != &v101)
      {
        free(v100);
      }

      v58 = __p;
      if (__p)
      {
        v59 = v99;
        v60 = __p;
        if (v99 != __p)
        {
          do
          {
            v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
          }

          while (v59 != v58);
          v60 = __p;
        }

        v99 = v58;
        operator delete(v60);
      }

      v61 = v96;
      if (v96)
      {
        v62 = v97;
        v63 = v96;
        if (v97 != v96)
        {
          do
          {
            v65 = *--v62;
            v64 = v65;
            *v62 = 0;
            if (v65)
            {
              operator delete[](v64);
            }
          }

          while (v62 != v61);
          v63 = v96;
        }

        v97 = v61;
        operator delete(v63);
      }

      if (v94 != v95)
      {
        free(v94);
      }
    }

    if (!v57)
    {
      goto LABEL_141;
    }

LABEL_134:
    v34 = v89;
    v30.var0.var0 = v90;
LABEL_135:
    *a7 = mlir::RankedTensorType::get(v34, v30.var0.var0, a5, 0);
    v40 = 1;
    goto LABEL_142;
  }

  v19 = v90;
  if (v90 <= 3)
  {
    if (HIDWORD(v90) > 3 || (v20 = ArgAttrsAttr, llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v91, 4uLL, 8), ArgAttrsAttr = v20, v19 = v90, v90 != 4))
    {
      v21 = ArgAttrsAttr;
      bzero(v89 + 8 * v19, 32 - 8 * v19);
      ArgAttrsAttr = v21;
    }
  }

  LODWORD(v90) = 0;
  v22 = *ArgAttrsAttr;
  if (HIDWORD(v90))
  {
    v23 = 0;
  }

  else
  {
    v82 = ArgAttrsAttr;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v91, 1uLL, 8);
    ArgAttrsAttr = v82;
    v23 = v90;
  }

  *(v89 + v23) = v22;
  v24 = (v90 + 1);
  LODWORD(v90) = v24;
  v25 = ArgAttrsAttr[1];
  if (v24 >= HIDWORD(v90))
  {
    v83 = ArgAttrsAttr;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v91, v24 + 1, 8);
    ArgAttrsAttr = v83;
    LODWORD(v24) = v90;
  }

  *(v89 + v24) = v25;
  v26 = (v90 + 1);
  LODWORD(v90) = v26;
  v27 = ArgAttrsAttr[2];
  if (v26 >= HIDWORD(v90))
  {
    v84 = ArgAttrsAttr;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v91, v26 + 1, 8);
    ArgAttrsAttr = v84;
    LODWORD(v26) = v90;
  }

  *(v89 + v26) = v27;
  v28 = (v90 + 1);
  LODWORD(v90) = v28;
  v29 = ArgAttrsAttr[3];
  if (v28 >= HIDWORD(v90))
  {
    v85 = ArgAttrsAttr;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v91, v28 + 1, 8);
    ArgAttrsAttr = v85;
    LODWORD(v28) = v90;
  }

  *(v89 + v28) = v29;
  v30.var0.var0 = (v90 + 1);
  LODWORD(v90) = v90 + 1;
  v31 = *(a6 + 8);
  v32 = 0x8000000000000000;
  v33 = 0x8000000000000000;
  if (v31 != 0x8000000000000000)
  {
    v33 = (*(a6 + 88) + v31 + *(a6 + 96) + *(a6 + 56) + ~((*(a6 + 24) - 1) * *(a6 + 72))) / *(a6 + 56);
  }

  if (*a6 != 0x8000000000000000)
  {
    v32 = (*a6 + ~((*(a6 + 32) - 1) * *(a6 + 80)) + *(a6 + 104) + *(a6 + 112) + *(a6 + 64)) / *(a6 + 64);
  }

  v34 = v89;
  v35 = *(a6 + 124);
  if (!v35)
  {
    if (LODWORD(v30.var0.var0))
    {
      v67 = 0;
      if (v32 <= 0)
      {
        v32 = 0x8000000000000000;
      }

      if (v33 <= 0)
      {
        v33 = 0x8000000000000000;
      }

      v68 = v30.var0.var0;
      v69 = ArgAttrsAttr + 3;
      do
      {
        v70 = v33;
        if (v67)
        {
          if (v67 == 2)
          {
            v70 = *(a6 + 40);
            if (v70 <= 0)
            {
              v70 = 0x8000000000000000;
            }
          }

          else
          {
            v70 = v32;
            if (v67 != 1)
            {
              v70 = *v69;
            }
          }
        }

        v34[v68 - 1] = v70;
        ++v67;
        --v69;
        --v68;
      }

      while (v68 * 8);
    }

    goto LABEL_135;
  }

  if (v35 == 1)
  {
    if (LODWORD(v30.var0.var0))
    {
      v36 = 0;
      if (v32 <= 0)
      {
        v32 = 0x8000000000000000;
      }

      if (v33 <= 0)
      {
        v33 = 0x8000000000000000;
      }

      v37 = v30.var0.var0;
      v38 = ArgAttrsAttr + 3;
      do
      {
        v56 = v32;
        if (v36 != 2)
        {
          v56 = v33;
          if (v36 != 1)
          {
            if (v36)
            {
              v56 = *v38;
            }

            else
            {
              v56 = *(a6 + 40);
              if (v56 <= 0)
              {
                v56 = 0x8000000000000000;
              }
            }
          }
        }

        v34[v37 - 1] = v56;
        ++v36;
        --v38;
        --v37;
      }

      while (v37 * 8);
    }

    goto LABEL_135;
  }

  if (a2)
  {
    mlir::emitError(a1, v30, &v92);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v92, "unrecognized input dataLayout to conv2D");
    v72 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
    if (v92)
    {
      mlir::InFlightDiagnostic::report(&v92);
    }

    if (v101 == 1)
    {
      if (v100 != &v101)
      {
        free(v100);
      }

      v73 = __p;
      if (__p)
      {
        v74 = v99;
        v75 = __p;
        if (v99 != __p)
        {
          do
          {
            v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
          }

          while (v74 != v73);
          v75 = __p;
        }

        v99 = v73;
        operator delete(v75);
      }

      v76 = v96;
      if (v96)
      {
        v77 = v97;
        v78 = v96;
        if (v97 != v96)
        {
          do
          {
            v80 = *--v77;
            v79 = v80;
            *v77 = 0;
            if (v80)
            {
              operator delete[](v79);
            }
          }

          while (v77 != v76);
          v78 = v96;
        }

        v97 = v76;
        operator delete(v78);
      }

      if (v94 != v95)
      {
        free(v94);
      }
    }

    if (v72)
    {
      goto LABEL_134;
    }
  }

LABEL_141:
  v40 = 0;
LABEL_142:
  v66 = v89;
  if (v89 != v91)
  {
LABEL_143:
    free(v66);
  }

  return v40;
}

uint64_t mlir::mpsx::anonymous namespace::qimpl::getWeightsDequantizedType<mlir::mpsx::QuantizedConv2DOpAdaptor>(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = (*(mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeights(a1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v38 = v2;
  v39 = v3;
  if (*(*mlir::getElementTypeOrSelf(v2) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v2;
  }

  v4 = *(a1 + 16);
  *v40 = *a1;
  v41[0] = v4;
  v41[1] = *(a1 + 32);
  v42 = *(a1 + 48);
  if (mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(v40))
  {
    v5 = (*(mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(a1) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v5)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    v37[0] = v5;
    v37[1] = v6;
    if (!mlir::CallOpInterface::getArgOperands(v37))
    {
      goto LABEL_26;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v37);
    if (v8)
    {
      v9 = 8 * v8;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_26;
    }

LABEL_14:
    if (!mlir::CallOpInterface::getArgOperands(&v38))
    {
LABEL_26:
      isSplat = mlir::ElementsAttr::isSplat(&v38);
      v24 = mlir::UnrankedTensorType::get(isSplat);
      v25 = v24;
      if (v24)
      {
        v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
      }

      v38 = v25;
      v39 = v24;
      goto LABEL_29;
    }

    v10 = mlir::CallableOpInterface::getArgAttrsAttr(&v38);
    if (v11)
    {
      v12 = 8 * v11;
      while (*v10 != 0x8000000000000000)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_26;
    }

LABEL_19:
    WeightsQuantParamsAxis = mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getWeightsQuantParamsAxis(a1);
    mlir::CallableOpInterface::getArgAttrsAttr(v37);
    if (v14 != 1 && (WeightsQuantParamsAxis & 0x100000000) != 0)
    {
      v15 = *(mlir::CallableOpInterface::getArgAttrsAttr(v37) + 8 * (v14 - 1));
      if (v15 >= 2)
      {
        if (WeightsQuantParamsAxis <= 0)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(&v38);
          LODWORD(WeightsQuantParamsAxis) = v16 + WeightsQuantParamsAxis;
        }

        v17 = mlir::CallableOpInterface::getArgAttrsAttr(&v38);
        v19 = v18;
        v40[0] = v41;
        v40[1] = 0x500000000;
        v20 = (8 * v18) >> 3;
        if (v20 < 6)
        {
          v21 = 0;
          v22 = v41;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v40, v41, v20, 8);
          v21 = v40[1];
          v22 = v40[0];
        }

        if (v19)
        {
          memcpy(&v22[v21], v17, 8 * v19);
          v21 = v40[1];
          v22 = v40[0];
        }

        v33 = (v21 + v19);
        LODWORD(v40[1]) = v21 + v19;
        v22[WeightsQuantParamsAxis] *= v15;
        v34 = mlir::ElementsAttr::isSplat(&v38);
        v35 = mlir::RankedTensorType::get(v22, v33, v34, 0);
        v36 = v35;
        if (v35)
        {
          v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8);
        }

        v38 = v36;
        v39 = v35;
        if (v40[0] != v41)
        {
          free(v40[0]);
        }
      }
    }
  }

LABEL_29:
  Value = mlir::AffineMapAttr::getValue(a1);
  v27 = mlir::DictionaryAttr::end(a1);
  v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 80), (v27 - 48), *(*(*(a1 + 8) + 96) + 48));
  if (v29)
  {
    v30 = *(v28 + 1);
  }

  else
  {
    v30 = 0;
  }

  v40[0] = v30;
  v31 = mlir::AffineMapAttr::getValue(v40);
  LOBYTE(v40[0]) = 0;
  LOBYTE(v41[0]) = 0;
  return mlir::ShapedType::cloneWith(&v38, v40, v31);
}

uint64_t mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getOutputType(mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 80), (v3 - 48), *(*(*(this + 1) + 96) + 48));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  return mlir::AffineMapAttr::getValue(&v8);
}

uint64_t mlir::mpsx::MakeListOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  LOBYTE(v27) = 0;
  v28 = 0;
  v29 = a9;
  v30 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(&v27, "mpsx.make_list", 14, Context);
    v28 = 1;
  }

  v31 = a4;
  v32 = a5;
  v15.var0.var0 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::MakeListOpAdaptor::verify(&v26, v15))
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v26);
  v17 = mlir::DictionaryAttr::end(&v26);
  v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, v17, **(v27 + 96));
  if (v19)
  {
    v20 = *(v18 + 1);
  }

  else
  {
    v20 = 0;
  }

  v25 = v20;
  v25 = mlir::AffineMapAttr::getValue(&v25);
  v22 = mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get(&v25, 1, this);
  v23 = *(a11 + 8);
  if (v23 >= *(a11 + 12))
  {
    v24 = v22;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v23 + 1, 8);
    v22 = v24;
    LODWORD(v23) = *(a11 + 8);
  }

  *(*a11 + 8 * v23) = v22;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::MakeListOpAdaptor::verify(mlir::mpsx::MakeListOpAdaptor *this, Location a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v32); ; i = (i + 16))
  {
    if (i == mlir::DictionaryAttr::end(&v32))
    {
      v30[0] = "'mpsx.make_list' op requires attribute 'element_type'";
      v31 = 259;
      mlir::emitError(a2.var0.var0, v30, v33);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }

      if (v41 == 1)
      {
        if (v40 != &v41)
        {
          free(v40);
        }

        v6 = __p;
        if (__p)
        {
          v7 = v39;
          v8 = __p;
          if (v39 != __p)
          {
            do
            {
              v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
            }

            while (v7 != v6);
            v8 = __p;
          }

          v39 = v6;
          operator delete(v8);
        }

        v9 = v36;
        if (!v36)
        {
          goto LABEL_68;
        }

        v10 = v37;
        v11 = v36;
        if (v37 == v36)
        {
          goto LABEL_67;
        }

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
        goto LABEL_66;
      }

      return v5;
    }

    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      break;
    }
  }

  v14 = *(i + 1);
  if (i == mlir::DictionaryAttr::end(&v32))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
      {
        v15 = *(i + 1);
      }

      i = (i + 16);
    }

    while (i != mlir::DictionaryAttr::end(&v32));
  }

  if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && (v33[0] = v14, mlir::AffineMapAttr::getValue(v33), v30[0] = v14, Value = mlir::AffineMapAttr::getValue(v30), (mlir::mpsx::isMPSXListElementType(Value) & 1) != 0))
  {
    if (!v15)
    {
      return 1;
    }

    if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v30[0] = v15;
      v33[0] = mlir::AffineMapAttr::getValue(v30);
      if (mlir::Type::isUnsignedInteger(v33, 32))
      {
        return 1;
      }
    }

    v30[0] = "'mpsx.make_list' op attribute 'max_size' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v31 = 259;
    mlir::emitError(a2.var0.var0, v30, v33);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v39;
        v25 = __p;
        if (v39 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v39 = v23;
        operator delete(v25);
      }

      v9 = v36;
      if (!v36)
      {
        goto LABEL_68;
      }

      v26 = v37;
      v11 = v36;
      if (v37 == v36)
      {
LABEL_67:
        v37 = v9;
        operator delete(v11);
LABEL_68:
        if (v34 != &v35)
        {
          free(v34);
        }

        return v5;
      }

      do
      {
        v28 = *--v26;
        v27 = v28;
        *v26 = 0;
        if (v28)
        {
          operator delete[](v27);
        }
      }

      while (v26 != v9);
LABEL_66:
      v11 = v36;
      goto LABEL_67;
    }
  }

  else
  {
    v30[0] = "'mpsx.make_list' op attribute 'element_type' failed to satisfy constraint: any type attribute MPSX list element type attribute";
    v31 = 259;
    mlir::emitError(a2.var0.var0, v30, v33);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v39;
        v19 = __p;
        if (v39 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v39 = v17;
        operator delete(v19);
      }

      v9 = v36;
      if (!v36)
      {
        goto LABEL_68;
      }

      v20 = v37;
      v11 = v36;
      if (v37 == v36)
      {
        goto LABEL_67;
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

      while (v20 != v9);
      goto LABEL_66;
    }
  }

  return v5;
}

uint64_t mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get(uint64_t *a1, int a2, mlir::MLIRContext *this)
{
  v3 = *a1;
  {
    v8 = this;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    this = v8;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  v10 = this;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(this);
  v9[0] = v4;
  v9[1] = &v10;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4mpsx6detail29TypeWithStaticSubtypesStorageILj1EEEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_8ListTypeEJRNSt3__15arrayINS1_4TypeELm1EEEEEENSE_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS6_;
  v14[1] = v9;
  v13 = v3;
  v6 = 0x9DDFEA08EB382D69 * ((8 * ((v3 >> 4) ^ (v3 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = &v13;
  v11[1] = v14;
  v12 = &v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, v4, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v6 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> * mlir::StorageUniquer::get<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,std::array<mlir::Type,1ul> &>(llvm::function_ref<void ()(mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> *)>,mlir::TypeID,std::array<mlir::Type,1ul> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> * mlir::StorageUniquer::get<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,std::array<mlir::Type,1ul> &>(llvm::function_ref<void ()(mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> *)>,mlir::TypeID,std::array<mlir::Type,1ul> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

BOOL mlir::mpsx::ListPushBackOp::verify(mlir::mpsx::ListPushBackOp *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*this + 72);
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ValueRange::ValueRange(v19, &v16, 1uLL);
  v15 = *(v3 + 8);
  mlir::ValueRange::ValueRange(v17, &v15, 1uLL);
  v28[0] = &unk_1F5B170F0;
  v29 = v28;
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if (v4)
    {
      return 1;
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    if (v4)
    {
      return 1;
    }
  }

  v17[0] = "list's element_type and element's type are not compatible";
  v18 = 259;
  mlir::OpState::emitOpError(this, v17, v19);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v25;
      v8 = __p;
      if (v25 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v25 = v6;
      operator delete(v8);
    }

    v9 = v22;
    if (v22)
    {
      v10 = v23;
      v11 = v22;
      if (v23 != v22)
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
        v11 = v22;
      }

      v23 = v9;
      operator delete(v11);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v5;
}

uint64_t mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 != a4)
  {
    return 0;
  }

  v16[0] = &unk_1F5B15E38;
  v16[1] = v16;
  v16[2] = a5;
  v17 = v16;
  if (!a2)
  {
    v13 = 1;
    v12 = v16;
LABEL_16:
    (*(*v12 + 32))(v12);
    return v13;
  }

  v7 = 0;
  v8 = a2 - 1;
  do
  {
    v9 = mlir::TypeRange::dereference_iterator(a1, v7);
    v14 = mlir::TypeRange::dereference_iterator(a3, v7);
    v15 = v9;
    if (!v17)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    result = (*(*v17 + 48))(v17, &v15, &v14);
    if (result)
    {
      v11 = v8 == v7;
    }

    else
    {
      v11 = 1;
    }

    ++v7;
  }

  while (!v11);
  v12 = v17;
  if (v17 == v16)
  {
    v13 = result;
    goto LABEL_16;
  }

  if (!v17)
  {
    return result;
  }

  v13 = result;
  (*(*v17 + 40))(v17);
  return v13;
}

BOOL mlir::mpsx::FusionOp::verify(mlir::Operation **this)
{
  v26 = *MEMORY[0x1E69E9840];
  v17[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v17);
  v17[0] = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(v17);
  if (*(*(mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8)) + 1) + 8))
  {
    return 1;
  }

  v17[0] = mlir::mpsx::FusionOp::getCustomFusionTypeAttr(this);
  if (v17[0])
  {
    mlir::OpaqueAttr::getAttrData(v17);
    return 1;
  }

  else
  {
    v15 = "custom fusion defined, but the custom fusion type has not been set";
    v16 = 259;
    mlir::OpState::emitOpError(this, &v15, v17);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    v6 = result;
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
      result = v6;
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
        result = v6;
      }

      v7 = __p;
      if (__p)
      {
        v8 = v23;
        v9 = __p;
        if (v23 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v23 = v7;
        operator delete(v9);
        result = v6;
      }

      v10 = v20;
      if (v20)
      {
        v11 = v21;
        v12 = v20;
        if (v21 != v20)
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
          v12 = v20;
        }

        v21 = v10;
        operator delete(v12);
        result = v6;
      }

      if (v18 != &v19)
      {
        free(v18);
        return v6;
      }
    }
  }

  return result;
}

uint64_t mlir::mpsx::FusionOp::getFusionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return *(*(mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8)) + 1) + 8);
}

uint64_t mlir::mpsx::FusionOp::getCustomFusionType@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  result = mlir::mpsx::FusionOp::getCustomFusionTypeAttr(this);
  v6 = result;
  if (result)
  {
    result = mlir::OpaqueAttr::getAttrData(&v6);
    *a2 = result;
    *(a2 + 8) = v4;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v5;
  return result;
}

uint64_t mlir::mpsx::InterleaveOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = *MEMORY[0x1E69E9840];
  v44 = a6;
  v45[0] = 0;
  v46 = 0;
  v47 = a9;
  v48 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v44);
    if (v46 == 1)
    {
      v46 = 0;
    }

    mlir::OperationName::OperationName(v45, "mpsx.interleave", 15, Context);
    v46 = 1;
  }

  v49 = a4;
  v50 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  v15.var0.var0 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::InterleaveOpAdaptor::verify(&v44, v15))
  {
    goto LABEL_13;
  }

  v41 = v49;
  v42 = 0;
  v16 = (*(mlir::ValueRange::dereference_iterator(&v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
  {
    v39 = 0;
    v40 = 0;
    goto LABEL_13;
  }

  v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  v39 = v16;
  v40 = v17;
  if (!v16)
  {
LABEL_13:
    v24 = mlir::Float32Type::get(this, a2);
    goto LABEL_14;
  }

  isSplat = mlir::ElementsAttr::isSplat(&v39);
  if (mlir::CallOpInterface::getArgOperands(&v39))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v39);
    v21 = v20;
    v41 = v43;
    v42 = 0x500000000;
    v22 = (8 * v20) >> 3;
    if (v22 < 6)
    {
      v23 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v22, 8);
      v23 = v42;
    }

    if (v21)
    {
      memcpy(v41 + 8 * v23, ArgAttrsAttr, 8 * v21);
      v23 = v42;
    }

    v28 = v23 + v21;
    LODWORD(v42) = v23 + v21;
    if ((v28 - 6) > 0xFFFFFFFFFFFFFFFDLL)
    {
      InterleaveFactor = mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase::getInterleaveFactor(&v44);
      v31 = 1;
      if (v28 != 4)
      {
        v31 = 2;
      }

      v32 = v41;
      v33 = *(v41 + v31);
      if (v33 != 0x8000000000000000)
      {
        *(v41 + v31) = v33 / InterleaveFactor;
      }

      v34 = &v32[v28];
      v35 = *(v34 - 1);
      if (v35 != 0x8000000000000000)
      {
        *(v34 - 1) = v35 * InterleaveFactor;
      }

      v29 = mlir::RankedTensorType::get(v32, v42, isSplat, 0);
    }

    else
    {
      v29 = mlir::UnrankedTensorType::get(isSplat);
    }

    v36 = *(a11 + 8);
    if (v36 >= *(a11 + 12))
    {
      v38 = v29;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v36 + 1, 8);
      v29 = v38;
      v36 = *(a11 + 8);
    }

    *(*a11 + 8 * v36) = v29;
    ++*(a11 + 8);
    if (v41 != v43)
    {
      free(v41);
    }

    return 1;
  }

  v24 = isSplat;
LABEL_14:
  v25 = mlir::UnrankedTensorType::get(v24);
  v26 = *(a11 + 8);
  if (v26 >= *(a11 + 12))
  {
    v37 = v25;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v26 + 1, 8);
    v25 = v37;
    LODWORD(v26) = *(a11 + 8);
  }

  *(*a11 + 8 * v26) = v25;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::InterleaveOp::verify(mlir::Operation **this)
{
  v68 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v55 = *this;
  InterleaveFactor = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v55);
  mlir::getANENextSupportedInterleaveValue(InterleaveFactor);
  if (v3)
  {
    v4 = (*(*(*(v1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v52[0] = v4;
    v52[1] = v5;
    if (mlir::CallOpInterface::getArgOperands(v52))
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v52);
      if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v54 = 257;
        mlir::Operation::emitOpError(v1, v53, &v58);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v58, "Interleave can only be applied on 4D or 5D tensor");
        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
        if (v58)
        {
          mlir::InFlightDiagnostic::report(&v58);
        }

        if (v67 == 1)
        {
          if (v66 != &v67)
          {
            free(v66);
          }

          v19 = __p;
          if (__p)
          {
            v20 = v65;
            v21 = __p;
            if (v65 != __p)
            {
              do
              {
                v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
              }

              while (v20 != v19);
              v21 = __p;
            }

            v65 = v19;
            operator delete(v21);
          }

          v11 = v62;
          if (!v62)
          {
            goto LABEL_57;
          }

          v22 = v63;
          v13 = v62;
          if (v63 == v62)
          {
LABEL_56:
            v63 = v11;
            operator delete(v13);
LABEL_57:
            if (v60 != &v61)
            {
              free(v60);
            }

            return v7;
          }

          do
          {
            v24 = *--v22;
            v23 = v24;
            *v22 = 0;
            if (v24)
            {
              operator delete[](v23);
            }
          }

          while (v22 != v11);
LABEL_55:
          v13 = v62;
          goto LABEL_56;
        }

        return v7;
      }

      v25 = ArgAttrsAttr;
      v26 = v17;
      v27 = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v55);
      v28 = v26 == 4;
      v7 = 1;
      if (v28)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      v30 = *(v25 + 8 * v29);
      if (v30 == 0x8000000000000000)
      {
        return v7;
      }

      v31 = v27;
      if (v30 % v27)
      {
        v54 = 257;
        mlir::Operation::emitOpError(v1, v53, &v58);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v58, "channel ");
        if (*v32)
        {
          v33 = *(v32 + 24);
          v34 = *(v25 + 8 * v29);
          v56 = 2;
          v57 = v34;
          v35 = *(v32 + 32);
          v36 = &v56;
          if (v35 >= *(v32 + 36))
          {
            if (v33 <= &v56 && v33 + 24 * v35 > &v56)
            {
              v48 = &v56 - v33;
              v49 = v32;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v32 + 24, v32 + 40, v35 + 1, 24);
              v32 = v49;
              v33 = *(v49 + 24);
              v36 = &v48[v33];
            }

            else
            {
              v46 = v32;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v32 + 24, v32 + 40, v35 + 1, 24);
              v32 = v46;
              v33 = *(v46 + 24);
              v36 = &v56;
            }
          }

          v37 = v33 + 24 * *(v32 + 32);
          v38 = *v36;
          *(v37 + 16) = *(v36 + 2);
          *v37 = v38;
          ++*(v32 + 32);
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v32, " must be a multiple of interleave ");
        if (*v39)
        {
          v40 = *(v39 + 24);
          v56 = 2;
          v57 = v31;
          v41 = *(v39 + 32);
          v42 = &v56;
          if (v41 >= *(v39 + 36))
          {
            if (v40 <= &v56 && v40 + 24 * v41 > &v56)
            {
              v50 = &v56 - v40;
              v51 = v39;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, v39 + 40, v41 + 1, 24);
              v39 = v51;
              v40 = *(v51 + 24);
              v42 = &v50[v40];
            }

            else
            {
              v47 = v39;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, v39 + 40, v41 + 1, 24);
              v39 = v47;
              v40 = *(v47 + 24);
              v42 = &v56;
            }
          }

          v43 = v40 + 24 * *(v39 + 32);
          v44 = *v42;
          *(v43 + 16) = *(v42 + 2);
          *v43 = v44;
          ++*(v39 + 32);
        }

        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
        if (v58)
        {
          mlir::InFlightDiagnostic::report(&v58);
        }

        if (v67 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v59);
        }

        return v7;
      }
    }

    return 1;
  }

  v54 = 257;
  mlir::Operation::emitOpError(v1, v53, &v58);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v58, "interleave factor not supported");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v58)
  {
    mlir::InFlightDiagnostic::report(&v58);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v65;
      v10 = __p;
      if (v65 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v65 = v8;
      operator delete(v10);
    }

    v11 = v62;
    if (!v62)
    {
      goto LABEL_57;
    }

    v12 = v63;
    v13 = v62;
    if (v63 == v62)
    {
      goto LABEL_56;
    }

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
    goto LABEL_55;
  }

  return v7;
}

uint64_t mlir::mpsx::DeinterleaveOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = *MEMORY[0x1E69E9840];
  v44 = a6;
  v45[0] = 0;
  v46 = 0;
  v47 = a9;
  v48 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v44);
    if (v46 == 1)
    {
      v46 = 0;
    }

    mlir::OperationName::OperationName(v45, "mpsx.deinterleave", 17, Context);
    v46 = 1;
  }

  v49 = a4;
  v50 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  v15.var0.var0 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::DeinterleaveOpAdaptor::verify(&v44, v15))
  {
    goto LABEL_13;
  }

  v41 = v49;
  v42 = 0;
  v16 = (*(mlir::ValueRange::dereference_iterator(&v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
  {
    v39 = 0;
    v40 = 0;
    goto LABEL_13;
  }

  v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  v39 = v16;
  v40 = v17;
  if (!v16)
  {
LABEL_13:
    v24 = mlir::Float32Type::get(this, a2);
    goto LABEL_14;
  }

  isSplat = mlir::ElementsAttr::isSplat(&v39);
  if (mlir::CallOpInterface::getArgOperands(&v39))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v39);
    v21 = v20;
    v41 = v43;
    v42 = 0x500000000;
    v22 = (8 * v20) >> 3;
    if (v22 < 6)
    {
      v23 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v22, 8);
      v23 = v42;
    }

    if (v21)
    {
      memcpy(v41 + 8 * v23, ArgAttrsAttr, 8 * v21);
      v23 = v42;
    }

    v28 = v23 + v21;
    LODWORD(v42) = v23 + v21;
    if ((v28 - 6) > 0xFFFFFFFFFFFFFFFDLL)
    {
      InterleaveFactor = mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase::getInterleaveFactor(&v44);
      v31 = 1;
      if (v28 != 4)
      {
        v31 = 2;
      }

      v32 = v41;
      v33 = *(v41 + v31);
      if (v33 != 0x8000000000000000)
      {
        *(v41 + v31) = v33 * InterleaveFactor;
      }

      v34 = &v32[v28];
      v35 = *(v34 - 1);
      if (v35 != 0x8000000000000000)
      {
        *(v34 - 1) = v35 / InterleaveFactor;
      }

      v29 = mlir::RankedTensorType::get(v32, v42, isSplat, 0);
    }

    else
    {
      v29 = mlir::UnrankedTensorType::get(isSplat);
    }

    v36 = *(a11 + 8);
    if (v36 >= *(a11 + 12))
    {
      v38 = v29;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v36 + 1, 8);
      v29 = v38;
      v36 = *(a11 + 8);
    }

    *(*a11 + 8 * v36) = v29;
    ++*(a11 + 8);
    if (v41 != v43)
    {
      free(v41);
    }

    return 1;
  }

  v24 = isSplat;
LABEL_14:
  v25 = mlir::UnrankedTensorType::get(v24);
  v26 = *(a11 + 8);
  if (v26 >= *(a11 + 12))
  {
    v37 = v25;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v26 + 1, 8);
    v25 = v37;
    LODWORD(v26) = *(a11 + 8);
  }

  *(*a11 + 8 * v26) = v25;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::DeinterleaveOp::verify(mlir::Operation **this)
{
  v67 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v54 = *this;
  InterleaveFactor = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v54);
  mlir::getANENextSupportedInterleaveValue(InterleaveFactor);
  if (v3)
  {
    v4 = (*(*(*(v1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v51[0] = v4;
    v51[1] = v5;
    if (mlir::CallOpInterface::getArgOperands(v51))
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v51);
      if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v53 = 257;
        mlir::Operation::emitOpError(v1, v52, &v57);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v57, "Interleave can only be applied on 4D or 5D tensor");
        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
        if (v57)
        {
          mlir::InFlightDiagnostic::report(&v57);
        }

        if (v66 == 1)
        {
          if (v65 != &v66)
          {
            free(v65);
          }

          v19 = __p;
          if (__p)
          {
            v20 = v64;
            v21 = __p;
            if (v64 != __p)
            {
              do
              {
                v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
              }

              while (v20 != v19);
              v21 = __p;
            }

            v64 = v19;
            operator delete(v21);
          }

          v11 = v61;
          if (!v61)
          {
            goto LABEL_54;
          }

          v22 = v62;
          v13 = v61;
          if (v62 == v61)
          {
LABEL_53:
            v62 = v11;
            operator delete(v13);
LABEL_54:
            if (v59 != &v60)
            {
              free(v59);
            }

            return v7;
          }

          do
          {
            v24 = *--v22;
            v23 = v24;
            *v22 = 0;
            if (v24)
            {
              operator delete[](v23);
            }
          }

          while (v22 != v11);
LABEL_52:
          v13 = v61;
          goto LABEL_53;
        }

        return v7;
      }

      v25 = ArgAttrsAttr;
      v26 = v17;
      v27 = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v54);
      v28 = v25 + 8 * v26;
      v29 = *(v28 - 8);
      if (v29 != 0x8000000000000000)
      {
        v30 = v27;
        if (v29 % v27)
        {
          v53 = 257;
          mlir::Operation::emitOpError(v1, v52, &v57);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v57, "width ");
          if (*v31)
          {
            v32 = *(v31 + 24);
            v33 = *(v28 - 8);
            v55 = 2;
            v56 = v33;
            v34 = *(v31 + 32);
            v35 = &v55;
            if (v34 >= *(v31 + 36))
            {
              if (v32 <= &v55 && v32 + 24 * v34 > &v55)
              {
                v47 = &v55 - v32;
                v48 = v31;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, v31 + 40, v34 + 1, 24);
                v31 = v48;
                v32 = *(v48 + 24);
                v35 = &v47[v32];
              }

              else
              {
                v45 = v31;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, v31 + 40, v34 + 1, 24);
                v31 = v45;
                v32 = *(v45 + 24);
                v35 = &v55;
              }
            }

            v36 = v32 + 24 * *(v31 + 32);
            v37 = *v35;
            *(v36 + 16) = *(v35 + 2);
            *v36 = v37;
            ++*(v31 + 32);
          }

          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v31, " must be a multiple of interleave ");
          if (*v38)
          {
            v39 = *(v38 + 24);
            v55 = 2;
            v56 = v30;
            v40 = *(v38 + 32);
            v41 = &v55;
            if (v40 >= *(v38 + 36))
            {
              if (v39 <= &v55 && v39 + 24 * v40 > &v55)
              {
                v49 = &v55 - v39;
                v50 = v38;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 24, v38 + 40, v40 + 1, 24);
                v38 = v50;
                v39 = *(v50 + 24);
                v41 = &v49[v39];
              }

              else
              {
                v46 = v38;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 24, v38 + 40, v40 + 1, 24);
                v38 = v46;
                v39 = *(v46 + 24);
                v41 = &v55;
              }
            }

            v42 = v39 + 24 * *(v38 + 32);
            v43 = *v41;
            *(v42 + 16) = *(v41 + 2);
            *v42 = v43;
            ++*(v38 + 32);
          }

          v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }

          if (v66 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v58);
          }

          return v7;
        }
      }
    }

    return 1;
  }

  v53 = 257;
  mlir::Operation::emitOpError(v1, v52, &v57);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v57, "interleave factor not supported");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v57)
  {
    mlir::InFlightDiagnostic::report(&v57);
  }

  if (v66 == 1)
  {
    if (v65 != &v66)
    {
      free(v65);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v64;
      v10 = __p;
      if (v64 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v64 = v8;
      operator delete(v10);
    }

    v11 = v61;
    if (!v61)
    {
      goto LABEL_54;
    }

    v12 = v62;
    v13 = v61;
    if (v62 == v61)
    {
      goto LABEL_53;
    }

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
    goto LABEL_52;
  }

  return v7;
}