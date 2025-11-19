void *mlir::anec::Padding::getBackgroundValue@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 32), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

uint64_t mlir::anec::Padding::addOpToNetwork(mlir::anec::Padding *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Padding::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::Padding::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v69 = v71;
  v70 = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::ArrayAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v7 + 16 * v8 - 16), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v9, &v69);
  v67[0] = v68;
  v67[1] = 0x300000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v11 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v10 + 32), (v11 + 16 * v12), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getListOfPairs<unsigned long long>(buffer, v67);
  ANECPadLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::ArrayAttr::getValue(buffer);
  __p = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v13, (v14 + 16 * v15 - 32), **(*(*a1 + 6) + 96));
  v16 = mlir::FloatAttr::getValue(&__p, buffer);
  v17 = v73[0];
  v18 = llvm::APFloatBase::PPCDoubleDouble(v16);
  if (v18 == v17)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(v73, &__p);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v73, &__p);
  }

  v19 = v59;
  if (v59 >= 0x41)
  {
    if (v19 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
    {
      _H0 = *__p;
      __asm { FCVT            S0, H0 }

      if (*__p >> 16)
      {
        _S0 = NAN;
      }

      v57 = LODWORD(_S0);
    }

    else
    {
      v57 = -8192;
      if (!__p)
      {
        goto LABEL_15;
      }
    }

    operator delete[](__p);
    goto LABEL_15;
  }

  if (__p < 0x10000)
  {
    _H0 = __p;
    __asm { FCVT            S0, H0 }

    v57 = _S0;
  }

  else
  {
    v57 = -8192;
  }

LABEL_15:
  if (v18 != v73[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v73);
    v28 = v70;
    if (v70)
    {
      goto LABEL_17;
    }

LABEL_23:
    v36 = 0;
    goto LABEL_24;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
  v28 = v70;
  if (!v70)
  {
    goto LABEL_23;
  }

LABEL_17:
  v29 = 0;
  v30 = 0;
  v31 = v69;
  do
  {
    if (v31[v29] != 8)
    {
      v31 = v69;
      v33 = *(&off_1E86D3980 + *(v69 + v29));
      v34 = v67[0];
      v35 = &v56[3 * v30];
      *v35 = ANECDimension;
      v35[1] = v33;
      v35[2] = vmovn_s64(v34[v29]);
      v28 = v70;
      ++v30;
    }

    ++v29;
  }

  while (v29 < v28);
  v36 = v30;
LABEL_24:
  v55 = v36;
  v65[0] = v66;
  v65[1] = 0x100000000;
  *buffer = 1;
  __p = 0;
  ANECUnitValidatorCreate();
  v53 = 0;
  v54 = 0;
  if (ANECValidatePadLayer())
  {
    v37 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&__p);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v60, "Invalid configuration", 21);
    std::stringbuf::str();
    __p = *MEMORY[0x1E69E54D8];
    v38 = *(MEMORY[0x1E69E54D8] + 72);
    *(&__p + *(__p - 3)) = *(MEMORY[0x1E69E54D8] + 64);
    v60 = v38;
    v61 = MEMORY[0x1E69E5548] + 16;
    if (v63 < 0)
    {
      operator delete(v62[7].__locale_);
    }

    v61 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v62);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v64);
    v52 = 260;
    v51 = &v49;
    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v81 == 1)
    {
      if (v80 != &v81)
      {
        free(v80);
      }

      v40 = v78;
      if (v78)
      {
        v41 = v79;
        v42 = v78;
        if (v79 != v78)
        {
          do
          {
            v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
          }

          while (v41 != v40);
          v42 = v78;
        }

        v79 = v40;
        operator delete(v42);
      }

      v43 = v76;
      if (v76)
      {
        v44 = v77;
        v45 = v76;
        if (v77 != v76)
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
          v45 = v76;
        }

        v77 = v43;
        operator delete(v45);
      }

      if (v74 != &v75)
      {
        free(v74);
      }
    }

    if (v50 < 0)
    {
      operator delete(v49);
    }
  }

  else
  {
    v39 = 1;
  }

  ANECUnitValidatorDelete();
  if (v65[0] != v66)
  {
    free(v65[0]);
  }

  if (v67[0] != v68)
  {
    free(v67[0]);
  }

  if (v69 != v71)
  {
    free(v69);
  }

  return v39;
}

uint64_t mlir::anec::MatMul::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61 = *MEMORY[0x1E69E9840];
  v54 = a6;
  v55[0] = 0;
  v56 = 0;
  v57 = a7;
  v58 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v54);
    if (v56 == 1)
    {
      v56 = 0;
    }

    mlir::OperationName::OperationName(v55, "anec.matmul", 11, Context);
    v56 = 1;
    a1 = v15;
  }

  v59 = a4;
  v60 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::MatMulAdaptor::verify(&v54, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v49[0] = v20;
  v49[1] = v19;
  v21 = mlir::TypeRange::dereference_iterator(a9, 1);
  v22 = v21;
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  v48[0] = v22;
  v48[1] = v21;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v49);
  v24 = mlir::CallableOpInterface::getArgAttrsAttr(v48);
  mlir::CallableOpInterface::getArgAttrsAttr(v49);
  v26 = v25;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v25);
  v28 = mlir::anec::getIndexFromDim(2, v26);
  v30 = v29;
  v31 = 1;
  v32 = mlir::anec::getIndexFromDim(1, v26);
  v33 = mlir::anec::getIndexFromDim(3, v26);
  v34 = mlir::anec::getIndexFromDim(4, v26);
  v50 = v53;
  v35 = *(ArgAttrsAttr + 8 * IndexFromDim);
  v52 = 5;
  if (v35 == 1)
  {
    v36 = v24;
  }

  else
  {
    v36 = ArgAttrsAttr;
  }

  v53[0] = *(v36 + 8 * IndexFromDim);
  if (v30)
  {
    v53[1] = *(ArgAttrsAttr + 8 * v28);
    v31 = 2;
  }

  v37 = *(ArgAttrsAttr + 8 * v33);
  v53[v31] = *(ArgAttrsAttr + 8 * v32);
  if (v37 == 1)
  {
    v38 = v24;
  }

  else
  {
    v38 = ArgAttrsAttr;
  }

  v53[v31 + 1] = *(v38 + 8 * v33);
  v39 = (v31 + 2);
  v51 = v39;
  v40 = *(v24 + 8 * v34);
  if (v39 >= v52)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v39 + 1, 8);
    LODWORD(v39) = v51;
  }

  *(v50 + v39) = v40;
  v41 = ++v51;
  v42 = v50;
  isSplat = mlir::ElementsAttr::isSplat(v49);
  v44 = mlir::MemRefType::get(v42, v41, isSplat, 0, 0, 0);
  v45 = *(a11 + 8);
  if (v45 >= *(a11 + 12))
  {
    v47 = v44;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v45 + 1, 8);
    v44 = v47;
    LODWORD(v45) = *(a11 + 8);
  }

  *(*a11 + 8 * v45) = v44;
  ++*(a11 + 8);
  if (v50 != v53)
  {
    free(v50);
  }

  return 1;
}

BOOL mlir::anec::MatMulAdaptor::verify(mlir::anec::MatMulAdaptor *this, Location a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = *this;
  Value = mlir::AffineMapAttr::getValue(&v18);
  if (Value == mlir::DictionaryAttr::end(&v18))
  {
    return 1;
  }

  v5 = 0;
  do
  {
    if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
    {
      v5 = *(Value + 1);
    }

    Value = (Value + 16);
  }

  while (Value != mlir::DictionaryAttr::end(&v18));
  if (!v5)
  {
    return 1;
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v16[0] = v5;
    v19[0] = mlir::AffineMapAttr::getValue(v16);
    if (mlir::Type::isF16(v19))
    {
      return 1;
    }
  }

  v16[0] = "'anec.matmul' op attribute 'bias' failed to satisfy constraint: 16-bit float attribute";
  v17 = 259;
  mlir::emitError(a2.var0.var0, v16, v19);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
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

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
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
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v6;
}

void mlir::anec::MatMul::getZinIrUnitInfo(mlir::anec::MatMul *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = operator new(0x58uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33D98;
  *(v6 + 1) = 0;
  v6[80] = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 18, a2, 0, 0);
  v6[80] = 0;
  mlir::anec::MatMul::getBias(this, &v18);
  if (v20 == 1)
  {
    v8 = v19[0];
    v9 = llvm::APFloatBase::PPCDoubleDouble(v7);
    if (v9 == v8)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v19);
    }

    v6[80] = 1;
    if (*(*this + 36))
    {
      v10 = *this - 16;
    }

    else
    {
      v10 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(NextResultAtOffset);
    if (mlir::Type::isF16(&ElementTypeOrSelf))
    {
      mlir::anec::MatMul::getBias(this, &v18);
      _S0 = llvm::APFloat::convertToFloat(&v18);
      __asm { FCVT            H0, S0 }

      *(v6 + 41) = LOWORD(_S0);
    }

    else
    {
      if (!mlir::Type::isSignedInteger(&ElementTypeOrSelf, 8))
      {
        mlir::Type::isUnsignedInteger(&ElementTypeOrSelf, 8);
      }

      mlir::anec::MatMul::getBias(this, &v18);
      v6[82] = llvm::APFloat::convertToFloat(&v18);
    }

    if (v20 == 1)
    {
      if (v9 == v19[0])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v19);
      }
    }
  }

  *a3 = v6;
}

void mlir::anec::MatMul::getBias(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  BiasAttr = mlir::anec::MatMul::getBiasAttr(this);
  if (BiasAttr)
  {
    Value = mlir::FloatAttr::getValue(&BiasAttr, v7);
    v4 = v8.n128_u64[0];
    v5 = llvm::APFloatBase::PPCDoubleDouble(Value);
    if (v5 == v4)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), &v8);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(a2 + 8, &v8);
    }

    *(a2 + 32) = 1;
    if (v5 == v8.n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v8);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }
}

uint64_t mlir::anec::MatMul::addOpToNetwork(mlir::anec::MatMul *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::MatMul::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::MatMul::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  ANECMatrixMultLayerDescInitialize();
  if (*(*a1 + 9))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v32[0] = v7;
  v32[1] = v8;
  mlir::anec::MatMul::getBias(a1, buffer);
  v33 = v46;
  if (v46 == 1)
  {
    v10 = v44[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v9) == v10)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v44);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v44);
    }
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v32);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v11);
  if ((v13 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v34 = *(mlir::CallableOpInterface::getArgAttrsAttr(v32) + 8 * IndexFromDim);
  v41[0] = v42;
  v41[1] = 0x100000000;
  *buffer = 1;
  v35[0] = 0;
  ANECUnitValidatorCreate();
  v30 = 0;
  v31 = 0;
  if (ANECValidateMatrixMultLayer())
  {
    v14 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v35);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v36, "Invalid configuration", 21);
    std::stringbuf::str();
    v35[0] = *MEMORY[0x1E69E54D8];
    v15 = *(MEMORY[0x1E69E54D8] + 72);
    *(v35 + *(v35[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v36 = v15;
    v37 = MEMORY[0x1E69E5548] + 16;
    if (v39 < 0)
    {
      operator delete(v38[7].__locale_);
    }

    v37 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v38);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v40);
    v29 = 260;
    v28 = &v26;
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v17 = v50;
      if (v50)
      {
        v18 = v51;
        v19 = v50;
        if (v51 != v50)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = v50;
        }

        v51 = v17;
        operator delete(v19);
      }

      v20 = v48;
      if (v48)
      {
        v21 = v49;
        v22 = v48;
        if (v49 != v48)
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
          v22 = v48;
        }

        v49 = v20;
        operator delete(v22);
      }

      if (v45 != &v47)
      {
        free(v45);
      }
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    v16 = 1;
  }

  ANECUnitValidatorDelete();
  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  return v16;
}

BOOL mlir::anec::Flatten::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *x1_0, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60 = *MEMORY[0x1E69E9840];
  v53 = a6;
  v54[0] = 0;
  v55 = 0;
  v56 = a7;
  v57 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(v54, "anec.flatten", 12, Context);
    v55 = 1;
    a1 = v15;
  }

  v58 = a4;
  v59 = a5;
  v17 = mlir::UnknownLoc::get(a1, x1_0);
  if (a3)
  {
    v18.var0.var0 = x1_0;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::FlattenAdaptor::verify(&v53, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v46[0] = v20;
  v46[1] = v19;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v46);
  v22 = mlir::CallableOpInterface::getArgAttrsAttr(v46);
  v24 = (v22 + 8 * v23);
  v50 = v52;
  v51 = 0x500000000;
  v25 = (v24 - ArgAttrsAttr) >> 3;
  if (v25 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v25, 8);
    v26 = v51;
    if (v24 == ArgAttrsAttr)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v26 = 0;
  if (v24 != ArgAttrsAttr)
  {
LABEL_16:
    memcpy(v50 + 8 * v26, ArgAttrsAttr, v24 - ArgAttrsAttr);
    v26 = v51;
  }

LABEL_17:
  LODWORD(v51) = v26 + ((v24 - ArgAttrsAttr) >> 3);
  mlir::CallableOpInterface::getArgAttrsAttr(v46);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v28);
  if ((v30 & 1) == 0)
  {
    v45 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::FlattenAdaptor::verify(v45, v61);
  }

  v31 = IndexFromDim;
  mlir::anec::getAllDims(&v47);
  v32 = v47;
  if (!v48)
  {
    goto LABEL_28;
  }

  v33 = 4 * v48;
  do
  {
    v35 = *v32;
    mlir::CallableOpInterface::getArgAttrsAttr(v46);
    v37 = mlir::anec::getIndexFromDim(v35, v36);
    if (v35 == 2)
    {
      if (v38)
      {
        goto LABEL_20;
      }
    }

    else if (v35 >= 2)
    {
LABEL_20:
      v34 = v50;
      *(v50 + v31) *= *(v50 + v37);
      v34[v37] = 1;
    }

    ++v32;
    v33 -= 4;
  }

  while (v33);
  v32 = v47;
LABEL_28:
  if (v32 != &v49)
  {
    free(v32);
  }

  v39 = v50;
  v40 = v51;
  isSplat = mlir::ElementsAttr::isSplat(v46);
  v42 = mlir::MemRefType::get(v39, v40, isSplat, 0, 0, 0);
  v43 = *(a11 + 8);
  if (v43 >= *(a11 + 12))
  {
    v44 = v42;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v43 + 1, 8);
    v42 = v44;
    LODWORD(v43) = *(a11 + 8);
  }

  *(*a11 + 8 * v43) = v42;
  ++*(a11 + 8);
  if (v50 != v52)
  {
    free(v50);
  }

  return 1;
}

BOOL mlir::anec::FlattenAdaptor::verify(mlir::anec::FlattenAdaptor *this, Location a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v24); i != mlir::DictionaryAttr::end(&v24); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      if (!v14)
      {
        return 1;
      }

      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v22[0] = *(i + 1);
        v27[0] = mlir::AffineMapAttr::getValue(v22);
        if (mlir::Type::isSignlessInteger(v27, 64))
        {
          v26 = v14;
          if (mlir::IntegerAttr::getInt(&v26) == 1)
          {
            return 1;
          }

          v25 = v14;
          if (mlir::IntegerAttr::getInt(&v25) == 2)
          {
            return 1;
          }
        }
      }

      v22[0] = "'anec.flatten' op attribute 'flatten_mode' failed to satisfy constraint: valid FlattenMode";
      v23 = 259;
      mlir::emitError(a2.var0.var0, v22, v27);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
      if (v27[0])
      {
        mlir::InFlightDiagnostic::report(v27);
      }

      if (v35 == 1)
      {
        if (v34 != &v35)
        {
          free(v34);
        }

        v15 = __p;
        if (__p)
        {
          v16 = v33;
          v17 = __p;
          if (v33 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v33 = v15;
          operator delete(v17);
        }

        v9 = v30;
        if (!v30)
        {
          goto LABEL_45;
        }

        v18 = v31;
        v11 = v30;
        if (v31 == v30)
        {
LABEL_44:
          v31 = v9;
          operator delete(v11);
LABEL_45:
          if (v28 != &v29)
          {
            free(v28);
          }

          return v5;
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
LABEL_43:
        v11 = v30;
        goto LABEL_44;
      }

      return v5;
    }
  }

  v22[0] = "'anec.flatten' op requires attribute 'flatten_mode'";
  v23 = 259;
  mlir::emitError(a2.var0.var0, v22, v27);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v33;
      v8 = __p;
      if (v33 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v33 = v6;
      operator delete(v8);
    }

    v9 = v30;
    if (!v30)
    {
      goto LABEL_45;
    }

    v10 = v31;
    v11 = v30;
    if (v31 == v30)
    {
      goto LABEL_44;
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
    goto LABEL_43;
  }

  return v5;
}

uint64_t mlir::anec::Flatten::getZinIrUnitInfo@<X0>(mlir::anec::Flatten *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33DB8;
  *(v6 + 1) = 0;
  *(v6 + 20) = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 11, a2, 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*this + 48) + 96));
  result = mlir::IntegerAttr::getInt(&AttrDictionary);
  if (result == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *(v6 + 20) = v11;
  *a3 = v6;
  return result;
}

uint64_t mlir::anec::Flatten::getFlattenMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

uint64_t mlir::anec::Flatten::addOpToNetwork(mlir::anec::Flatten *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Flatten::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::Flatten::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v67 = *MEMORY[0x1E69E9840];
  ANECFlattenLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  Int = mlir::IntegerAttr::getInt(buffer);
  *buffer = xmmword_1E86D3878;
  *v59 = unk_1E86D3888;
  v50 = 0;
  v51 = 0;
  v49 = &v50;
  v10 = std::__tree<std::__value_type<ZinIrDimension,__CFString const*>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,__CFString const*>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,__CFString const*>>>::__find_equal<ZinIrDimension>(&v49, &v50, v56, v44, buffer);
  if (!*v10)
  {
    v11 = v10;
    v12 = operator new(0x30uLL);
    v12[2] = *buffer;
    v13 = v56[0];
    *v12 = 0;
    *(v12 + 1) = 0;
    *(v12 + 2) = v13;
    *v11 = v12;
    if (*v49)
    {
      v49 = *v49;
      v14 = *v11;
    }

    else
    {
      v14 = v12;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v50, v14);
    ++v51;
  }

  v15 = std::__tree<std::__value_type<ZinIrDimension,__CFString const*>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,__CFString const*>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,__CFString const*>>>::__find_equal<ZinIrDimension>(&v49, &v50, v56, v44, v59);
  if (!*v15)
  {
    v16 = v15;
    v17 = operator new(0x30uLL);
    v17[2] = *v59;
    v18 = v56[0];
    *v17 = 0;
    *(v17 + 1) = 0;
    *(v17 + 2) = v18;
    *v16 = v17;
    if (*v49)
    {
      v49 = *v49;
      v19 = *v16;
    }

    else
    {
      v19 = v17;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v50, v19);
    ++v51;
  }

  if (Int == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (!v50)
  {
    goto LABEL_21;
  }

  v21 = &v50;
  v22 = v50;
  do
  {
    if (*(v22 + 8) >= v20)
    {
      v21 = v22;
    }

    v22 = v22[*(v22 + 8) < v20];
  }

  while (v22);
  if (v21 == &v50 || v20 < *(v21 + 8))
  {
LABEL_21:
    v21 = &v50;
  }

  v23 = v21[5];
  std::__tree<unsigned long long>::destroy(&v49, v50);
  v48 = v23;
  v56[0] = v57;
  v56[1] = 0x100000000;
  v24 = 1;
  *buffer = 1;
  v49 = 0;
  ANECUnitValidatorCreate();
  v46 = 0;
  v47 = 0;
  if (ANECValidateFlattenLayer())
  {
    v25 = *a1;
    v27 = v46;
    v26 = v47;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v49);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v51, "Invalid configuration", 21);
    if (v27)
    {
      if (v26)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v51, " for the following reasons: ", 28);
        v28 = *v26;
        if (*v26)
        {
          v29 = 0;
          do
          {
            v30 = v28 - 1;
            CFStringGetCString(v26[v29 + 1], buffer, 512, 0x8000100u);
            v31 = strlen(buffer);
            v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v51, buffer, v31);
            if (v29 == v30)
            {
              v33 = "";
            }

            else
            {
              v33 = ", ";
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, v33, 2 * (v29++ != v30));
            v28 = *v26;
          }

          while (*v26 > v29);
        }
      }
    }

    std::stringbuf::str();
    v49 = *MEMORY[0x1E69E54D8];
    v34 = *(MEMORY[0x1E69E54D8] + 72);
    *(&v49 + *(v49 - 3)) = *(MEMORY[0x1E69E54D8] + 64);
    v51 = v34;
    v52 = MEMORY[0x1E69E5548] + 16;
    if (v54 < 0)
    {
      operator delete(v53[7].__locale_);
    }

    v52 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v53);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v55);
    LOWORD(v53[0].__locale_) = 260;
    v49 = v44;
    v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v35 = v63;
      if (v63)
      {
        v36 = v64;
        v37 = v63;
        if (v64 != v63)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = v63;
        }

        v64 = v35;
        operator delete(v37);
      }

      v38 = v61;
      if (v61)
      {
        v39 = v62;
        v40 = v61;
        if (v62 != v61)
        {
          do
          {
            v42 = *--v39;
            v41 = v42;
            *v39 = 0;
            if (v42)
            {
              operator delete[](v41);
            }
          }

          while (v39 != v38);
          v40 = v61;
        }

        v62 = v38;
        operator delete(v40);
      }

      if (v59[1] != &v60)
      {
        free(v59[1]);
      }
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }
  }

  ANECUnitValidatorDelete();
  if (v56[0] != v57)
  {
    free(v56[0]);
  }

  return v24;
}

uint64_t mlir::anec::Unflatten::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v56 = *MEMORY[0x1E69E9840];
  v49 = a6;
  LOBYTE(v50) = 0;
  v51 = 0;
  v52 = a7;
  v53 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v49);
    if (v51 == 1)
    {
      v51 = 0;
    }

    mlir::OperationName::OperationName(&v50, "anec.unflatten", 14, Context);
    v51 = 1;
    a1 = v15;
  }

  v54 = a4;
  v55 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::UnflattenAdaptor::verify(&v49, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v44[0] = v20;
  v44[1] = v19;
  v46 = v48;
  v47 = 0x500000000;
  Value = mlir::AffineMapAttr::getValue(&v49);
  v22 = mlir::DictionaryAttr::end(&v49);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v22 - 16), **(v50 + 96));
  mlir::getValues<long long>(v23, &v46);
  v24 = v46;
  if (v47)
  {
    v25 = (v47 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v25)
    {
      v26 = v25 + 1;
      v27 = (v25 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v28 = (v46 + 8 * v27);
      v29 = v46 + 8;
      v30 = 1;
      v31 = v27;
      v32 = 1;
      do
      {
        v30 *= *(v29 - 1);
        v32 *= *v29;
        v29 += 2;
        v31 -= 2;
      }

      while (v31);
      v33 = v32 * v30;
      if (v26 == v27)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v33 = 1;
      v28 = v46;
    }

    do
    {
      v35 = *v28++;
      v33 *= v35;
    }

    while (v28 != (v46 + 8 * v47));
  }

  else
  {
    v33 = 1;
  }

LABEL_21:
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v44);
  v45 = mlir::ShapedType::getNumElements(ArgAttrsAttr, v37) / v33;
  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v46, v24, &v45);
  v38 = v46;
  v39 = v47;
  isSplat = mlir::ElementsAttr::isSplat(v44);
  v41 = mlir::MemRefType::get(v38, v39, isSplat, 0, 0, 0);
  v42 = *(a11 + 8);
  if (v42 >= *(a11 + 12))
  {
    v43 = v41;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v42 + 1, 8);
    v41 = v43;
    LODWORD(v42) = *(a11 + 8);
  }

  *(*a11 + 8 * v42) = v41;
  ++*(a11 + 8);
  if (v46 != v48)
  {
    free(v46);
  }

  return 1;
}

BOOL mlir::anec::UnflattenAdaptor::verify(mlir::anec::UnflattenAdaptor *this, Location a2)
{
  v56[1] = *MEMORY[0x1E69E9840];
  v46 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v46); i != mlir::DictionaryAttr::end(&v46); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      while (1)
      {
        if (i == mlir::DictionaryAttr::end(&v46))
        {
          v44[0] = "'anec.unflatten' op requires attribute 'flatten_mode'";
          v45 = 259;
          mlir::emitError(a2.var0.var0, v44, v47);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
          if (v47[0])
          {
            mlir::InFlightDiagnostic::report(v47);
          }

          if (v55 != 1)
          {
            return v5;
          }

          if (v54 != &v55)
          {
            free(v54);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v53;
            v17 = __p;
            if (v53 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v53 = v15;
            operator delete(v17);
          }

          v9 = v50;
          if (!v50)
          {
            goto LABEL_88;
          }

          v18 = v51;
          v11 = v50;
          if (v51 == v50)
          {
            goto LABEL_87;
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
          goto LABEL_86;
        }

        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          break;
        }

        i = (i + 16);
      }

      v21 = *(i + 1);
      if (!v21 || *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v44[0] = *(i + 1), v47[0] = mlir::AffineMapAttr::getValue(v44), mlir::Type::isSignlessInteger(v47, 64)) && ((v42[0] = v21, mlir::IntegerAttr::getInt(v42) == 1) || (v56[0] = v21, mlir::IntegerAttr::getInt(v56) == 2)))
      {
        if (!v14)
        {
          return 1;
        }

        if (mlir::DenseIntElementsAttr::classof(v14))
        {
          v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
          v44[0] = v14;
          v44[1] = v22;
          Type = mlir::ElementsAttr::getType(v44);
          v24 = Type;
          if (Type)
          {
            Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
          }

          v47[0] = v24;
          v47[1] = Type;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v47);
          v56[0] = 3;
          if (v26 == 1 && *ArgAttrsAttr == v56[0])
          {
            v41 = v14;
            v42[0] = mlir::ArrayAttr::getValue(&v41);
            v42[1] = v27;
            isSplat = mlir::ElementsAttr::isSplat(v42);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }

        v44[0] = "'anec.unflatten' op attribute 'destination_size' failed to satisfy constraint: ui64 elements attribute of shape {3}";
        v45 = 259;
        mlir::emitError(a2.var0.var0, v44, v47);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
        if (v47[0])
        {
          mlir::InFlightDiagnostic::report(v47);
        }

        if (v55 != 1)
        {
          return v5;
        }

        if (v54 != &v55)
        {
          free(v54);
        }

        v34 = __p;
        if (__p)
        {
          v35 = v53;
          v36 = __p;
          if (v53 != __p)
          {
            do
            {
              v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
            }

            while (v35 != v34);
            v36 = __p;
          }

          v53 = v34;
          operator delete(v36);
        }

        v9 = v50;
        if (!v50)
        {
          goto LABEL_88;
        }

        v37 = v51;
        v11 = v50;
        if (v51 == v50)
        {
          goto LABEL_87;
        }

        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            operator delete[](v38);
          }
        }

        while (v37 != v9);
      }

      else
      {
        v44[0] = "'anec.unflatten' op attribute 'flatten_mode' failed to satisfy constraint: valid FlattenMode";
        v45 = 259;
        mlir::emitError(a2.var0.var0, v44, v47);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
        if (v47[0])
        {
          mlir::InFlightDiagnostic::report(v47);
        }

        if (v55 != 1)
        {
          return v5;
        }

        if (v54 != &v55)
        {
          free(v54);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v53;
          v30 = __p;
          if (v53 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v53 = v28;
          operator delete(v30);
        }

        v9 = v50;
        if (!v50)
        {
          goto LABEL_88;
        }

        v31 = v51;
        v11 = v50;
        if (v51 == v50)
        {
          goto LABEL_87;
        }

        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            operator delete[](v32);
          }
        }

        while (v31 != v9);
      }

LABEL_86:
      v11 = v50;
      goto LABEL_87;
    }
  }

  v44[0] = "'anec.unflatten' op requires attribute 'destination_size'";
  v45 = 259;
  mlir::emitError(a2.var0.var0, v44, v47);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v53;
      v8 = __p;
      if (v53 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v53 = v6;
      operator delete(v8);
    }

    v9 = v50;
    if (v50)
    {
      v10 = v51;
      v11 = v50;
      if (v51 != v50)
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
        goto LABEL_86;
      }

LABEL_87:
      v51 = v9;
      operator delete(v11);
    }

LABEL_88:
    if (v48 != &v49)
    {
      free(v48);
    }
  }

  return v5;
}

uint64_t mlir::anec::Unflatten::verifyAttributesWithFamily(uint64_t *a1, int a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    v4 = *a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 36);
  v8 = v4 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (mlir::anec::verifyCompatibilityWithUnflatten(v5, v6, v10, v11))
  {
    if (a2 > 1)
    {
      return 1;
    }

    if (*(*a1 + 36))
    {
      v21 = *a1 - 16;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v22)
    {
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    }

    else
    {
      v23 = 0;
    }

    v44[0] = v22;
    v44[1] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v44);
    IndexFromDim = mlir::anec::getIndexFromDim(4, v24);
    if (v26)
    {
      v43 = *(mlir::CallableOpInterface::getArgAttrsAttr(v44) + 8 * IndexFromDim);
      if ((v43 - 65) <= 0xFFFFFFFFFFFFFFC0)
      {
        v37[0] = "output width dimension size = {0} failed to satisfy constraint: 2 <= size <= 64";
        v37[1] = 79;
        v37[2] = &v40;
        v37[3] = 1;
        LOBYTE(v38) = 1;
        v39[0] = &unk_1F5B17218;
        v39[1] = &v43;
        v40 = v39;
        v41[0] = v37;
        v42 = 263;
        mlir::OpState::emitOpError(a1, v41, &v46);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
        if (v46)
        {
          mlir::InFlightDiagnostic::report(&v46);
        }

        if (v55 == 1)
        {
          if (v54 != &v55)
          {
            free(v54);
          }

          v27 = v52;
          if (v52)
          {
            v28 = v53;
            v29 = v52;
            if (v53 != v52)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = v52;
            }

            v53 = v27;
            operator delete(v29);
          }

          v16 = v50;
          if (!v50)
          {
            goto LABEL_66;
          }

          v30 = v51;
          v18 = v50;
          if (v51 == v50)
          {
LABEL_65:
            v51 = v16;
            operator delete(v18);
LABEL_66:
            if (v48 != &v49)
            {
              free(v48);
            }

            return v12;
          }

          do
          {
            v32 = *--v30;
            v31 = v32;
            *v30 = 0;
            if (v32)
            {
              operator delete[](v31);
            }
          }

          while (v30 != v16);
LABEL_64:
          v18 = v50;
          goto LABEL_65;
        }

        return v12;
      }

      v46 = *(*(*a1 + 72) + 24);
      DefiningOp = mlir::Value::getDefiningOp(&v46);
      if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
      {
        return 1;
      }

      v41[0] = *(*(*a1 + 72) + 24);
      v34 = mlir::Value::getDefiningOp(v41);
      if (!v34)
      {
LABEL_60:
        v37[0] = "must be preceded by a convolution or a sequence of convolution, goc, and neuron activation for A12/A13 class ANEs";
        v38 = 259;
        mlir::OpState::emitOpError(a1, v37, &v46);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
        if (v46)
        {
          mlir::InFlightDiagnostic::report(&v46);
        }

        if (v55 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v47);
        }

        return v12;
      }

      v22 = v34;
      v37[0] = v34;
      {
LABEL_57:
        if ((*(**(v22 + 48) + 32))(*(v22 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::NeuronOpTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::NeuronOpTrait>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          if ((*(v22 + 46) & 0x80) != 0 && *(v22 + 68) == 1)
          {
            v12 = 1;
            v45 = 1;
            v46 = &v45;
            v47 = v37;
            mlir::detail::enumerate<mlir::detail::RecursivePatternMatcher<mlir::anec::GOC,mlir::detail::op_matcher<mlir::anec::Convolution>,mlir::detail::AnyValueMatcher,mlir::detail::AnyValueMatcher>,mlir::detail::RecursivePatternTraitMatcher<mlir::OpTrait::anec::NeuronOpTrait,mlir::detail::RecursivePatternMatcher<mlir::anec::GOC,mlir::detail::op_matcher<mlir::anec::Convolution>,mlir::detail::AnyValueMatcher,mlir::detail::AnyValueMatcher>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::detail::RecursivePatternMatcher<mlir::anec::GOC,mlir::detail::op_matcher<mlir::anec::Convolution>,mlir::detail::AnyValueMatcher,mlir::detail::AnyValueMatcher> &)#1}>(v36, &v46);
            if (v45)
            {
              return v12;
            }
          }
        }

        goto LABEL_60;
      }
    }

    else
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    mlir::anec::Unflatten::verifyAttributesWithFamily();
    goto LABEL_57;
  }

  v37[0] = "failed: input/output shapes are incompatible with unflatten op, (NxCx1x1) -> (NxCxHxW)";
  v38 = 259;
  mlir::OpState::emitOpError(a1, v37, &v46);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
  if (v46)
  {
    mlir::InFlightDiagnostic::report(&v46);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v13 = v52;
    if (v52)
    {
      v14 = v53;
      v15 = v52;
      if (v53 != v52)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = v52;
      }

      v53 = v13;
      operator delete(v15);
    }

    v16 = v50;
    if (!v50)
    {
      goto LABEL_66;
    }

    v17 = v51;
    v18 = v50;
    if (v51 == v50)
    {
      goto LABEL_65;
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
    goto LABEL_64;
  }

  return v12;
}

void mlir::anec::Unflatten::getZinIrUnitInfo(mlir::Operation **this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x60uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *(v6 + 10) = 0;
  *v6 = &unk_1F5B33DD8;
  *(v6 + 1) = 0;
  *(v6 + 11) = 0;
  v7 = *this;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 12, a2, 0, 0);
  v18[0] = mlir::Operation::getAttrDictionary(v7);
  Value = mlir::ArrayAttr::getValue(v18);
  v18[0] = mlir::Operation::getAttrDictionary(v7);
  v9 = mlir::ArrayAttr::getValue(v18);
  v18[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v9 + 16 * v10), *(*(*(v7 + 6) + 96) + 8));
  if (mlir::IntegerAttr::getInt(v18) == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *(v6 + 20) = v11;
  v18[0] = v19;
  v18[1] = 0x300000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v13 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v15 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v12, (v13 + 16 * v14 - 16), **(*(*this + 6) + 96));
  mlir::getValues<long long>(v15, v18);
  v16 = v18[0];
  *(v6 + 23) = *v18[0];
  *(v6 + 22) = v16[1];
  *(v6 + 21) = v16[2];
  *a3 = v6;
  if (v16 != v19)
  {
    free(v16);
  }
}

uint64_t mlir::anec::Unflatten::getFlattenMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

uint64_t mlir::anec::Unflatten::getDestinationSize(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
}

uint64_t mlir::anec::Unflatten::addOpToNetwork(mlir::Operation **a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Unflatten::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

uint64_t mlir::anec::Reshape::getZinIrUnitInfo@<X0>(mlir::anec::Reshape *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *v6 = &unk_1F5B33DF8;
  *(v6 + 1) = 0;
  *(v6 + 72) = xmmword_1E0999980;
  v7 = vdupq_n_s64(1uLL);
  *(v6 + 88) = v7;
  *(v6 + 104) = v7;
  v8 = operator new(0x14uLL);
  *(v6 + 16) = v8 + 5;
  *(v6 + 17) = v8 + 5;
  v8[4] = 4;
  *v8 = *(&xmmword_1E09999F8 + 8);
  *(v6 + 15) = v8;
  *(v6 + 8) = 22;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 22, a2, 0, 0);
  if (*(*this + 36))
  {
    v9 = *this - 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v25[0] = v10;
  v25[1] = v11;
  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  IndexFromDim = mlir::anec::getIndexFromDim(0, v12);
  *(v6 + 10) = *(mlir::CallableOpInterface::getArgAttrsAttr(v25) + 8 * IndexFromDim);
  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v15 = mlir::anec::getIndexFromDim(2, v14);
  if (v16)
  {
    v17 = *(mlir::CallableOpInterface::getArgAttrsAttr(v25) + 8 * v15);
  }

  else
  {
    v17 = 1;
  }

  *(v6 + 14) = v17;
  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v19 = mlir::anec::getIndexFromDim(1, v18);
  *(v6 + 11) = *(mlir::CallableOpInterface::getArgAttrsAttr(v25) + 8 * v19);
  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v21 = mlir::anec::getIndexFromDim(3, v20);
  *(v6 + 12) = *(mlir::CallableOpInterface::getArgAttrsAttr(v25) + 8 * v21);
  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v23 = mlir::anec::getIndexFromDim(4, v22);
  result = mlir::CallableOpInterface::getArgAttrsAttr(v25);
  *(v6 + 13) = *(result + 8 * v23);
  *a3 = v6;
  return result;
}

uint64_t mlir::anec::Reshape::addOpToNetwork(mlir::anec::Reshape *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Reshape::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::Reshape::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v83 = *MEMORY[0x1E69E9840];
  ANECReshapeLayerDescInitialize();
  v60 = *a2;
  mlir::CallableOpInterface::getArgAttrsAttr(&v60);
  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v60);
      DimFromIndex = mlir::anec::getDimFromIndex(v7, v8);
      if ((DimFromIndex & 0x100000000) == 0)
      {
        goto LABEL_67;
      }

      v10 = DimFromIndex;
      v11 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v60) + 8 * v7);
      if (v11 > mlir::anec::getMaximumDimSize(v10))
      {
        break;
      }

      v7 = (v7 + 1);
      mlir::CallableOpInterface::getArgAttrsAttr(&v60);
      if (v7 >= v12)
      {
        goto LABEL_6;
      }
    }

    v16 = *a1;
    v66[0] = "failed: input tensor dimensions are not supported on ANEs.";
    LOWORD(v69[0].__locale_) = 259;
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if ((v82[0] & 1) == 0)
    {
      return v17;
    }

    if (v81 != v82)
    {
      free(v81);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v80;
      v20 = __p;
      if (v80 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v80 = v18;
      operator delete(v20);
    }

    v21 = v77;
    if (v77)
    {
      v22 = v78;
      v23 = v77;
      if (v78 != v77)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v77;
      }

      v78 = v21;
      operator delete(v23);
    }

    v53 = v75;
    if (v75 == v76)
    {
      return v17;
    }

LABEL_61:
    free(v53);
    return v17;
  }

LABEL_6:
  if (*(*a1 + 36))
  {
    v13 = *a1 - 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v59[0] = v14;
  v59[1] = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(v59);
  v27 = v26;
  IndexFromDim = mlir::anec::getIndexFromDim(2, v26);
  if (v29)
  {
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v59) + 8 * IndexFromDim);
  }

  else
  {
    v30 = 1;
  }

  v31 = mlir::anec::getIndexFromDim(0, v27);
  if ((v32 & 1) == 0 || (v33 = *(mlir::CallableOpInterface::getArgAttrsAttr(v59) + 8 * v31), v34 = mlir::anec::getIndexFromDim(1, v27), (v35 & 1) == 0) || (v36 = *(mlir::CallableOpInterface::getArgAttrsAttr(v59) + 8 * v34), v37 = mlir::anec::getIndexFromDim(3, v27), (v38 & 1) == 0) || (v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v59) + 8 * v37), v40 = mlir::anec::getIndexFromDim(4, v27), (v41 & 1) == 0))
  {
LABEL_67:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v42 = *(mlir::CallableOpInterface::getArgAttrsAttr(v59) + 8 * v40);
  v61 = v33;
  v62 = v36;
  v63 = v39;
  v64 = v42;
  v65 = v30;
  v72[0] = v73;
  v72[1] = 0x100000000;
  v17 = 1;
  *buffer = 1;
  v66[0] = 0;
  ANECUnitValidatorCreate();
  v57 = 0;
  v58 = 0;
  if (ANECValidateReshapeLayer())
  {
    v43 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v66);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v67, "Invalid configuration", 21);
    std::stringbuf::str();
    v66[0] = *MEMORY[0x1E69E54D8];
    v44 = *(MEMORY[0x1E69E54D8] + 72);
    *(v66 + *(v66[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v67 = v44;
    v68 = MEMORY[0x1E69E5548] + 16;
    if (v70 < 0)
    {
      operator delete(v69[7].__locale_);
    }

    v68 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v69);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v71);
    LOWORD(v69[0].__locale_) = 260;
    v66[0] = &v55;
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v82[0] == 1)
    {
      if (v81 != v82)
      {
        free(v81);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v80;
        v47 = __p;
        if (v80 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v80 = v45;
        operator delete(v47);
      }

      v48 = v77;
      if (v77)
      {
        v49 = v78;
        v50 = v77;
        if (v78 != v77)
        {
          do
          {
            v52 = *--v49;
            v51 = v52;
            *v49 = 0;
            if (v52)
            {
              operator delete[](v51);
            }
          }

          while (v49 != v48);
          v50 = v77;
        }

        v78 = v48;
        operator delete(v50);
      }

      if (v75 != v76)
      {
        free(v75);
      }
    }

    if (v56 < 0)
    {
      operator delete(v55);
    }
  }

  ANECUnitValidatorDelete();
  v53 = v72[0];
  if (v72[0] != v73)
  {
    goto LABEL_61;
  }

  return v17;
}

unint64_t mlir::anec::Reshape::fold(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(*a1 + 72) + 24) + 8);
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) ^ v4) <= 7)
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v24[0] = v8;
  v24[1] = v9;
  if (!mlir::CallOpInterface::getArgOperands(v24))
  {
    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v24);
  if (v11)
  {
    v12 = 8 * v11;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  v13 = **(a2 + 40);
  if (!v13)
  {
    v22 = 0;
    v23 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8))
  {
    v22 = 0;
    v23 = 0;
    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8);
  v22 = v13;
  v23 = v14;
  Type = mlir::ElementsAttr::getType(&v22);
  v16 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v21[0] = v16;
  v21[1] = Type;
  *&v25 = mlir::CallableOpInterface::getArgAttrsAttr(v24);
  *(&v25 + 1) = v17;
  v26 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v21);
  v19 = mlir::ShapedType::cloneWith(v21, &v25, isSplat);
  return mlir::reshapeElementsAttr(v22, v23, v19, v20) & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::anec::Reshape::canonicalize(uint64_t a1, void (***a2)(void, uint64_t, unint64_t, unint64_t))
{
  v13[2] = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  if (*(a1 + 36))
  {
    v4 = a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v11[0] = v5;
  v11[1] = v6;
  v13[0] = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id)
  {
    return 0;
  }

  v13[0] = *(*(a1 + 72) + 24);
  v10 = *(*(mlir::Value::getDefiningOp(v13) + 72) + 24);
  v12 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a2 + 1), *(a1 + 24), v11, &v10) - 16;
  v8 = 1;
  mlir::ValueRange::ValueRange(v13, &v12, 1uLL);
  (**a2)(a2, a1, v13[0], v13[1]);
  return v8;
}

uint64_t mlir::anec::Concat::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x1E69E9840];
  v58 = a6;
  LOBYTE(v59) = 0;
  v60 = 0;
  v61 = a7;
  v62 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v58);
    if (v60 == 1)
    {
      v60 = 0;
    }

    mlir::OperationName::OperationName(&v59, "anec.concat", 11, Context);
    v60 = 1;
    a1 = v15;
  }

  v63 = a4;
  v64 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::ConcatAdaptor::verify(&v58, v18))
  {
    v24.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v24, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v51[0] = v20;
  v51[1] = v19;
  mlir::CallableOpInterface::getArgAttrsAttr(v51);
  Value = mlir::AffineMapAttr::getValue(&v58);
  v22 = mlir::DictionaryAttr::end(&v58);
  v49[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v22, **(v59 + 96));
  mlir::IntegerAttr::getValue(v49, &__p);
  if (v53 > 0x40)
  {
    v23 = *__p;
    operator delete[](__p);
    v50 = v23;
    if (v23 < 0)
    {
LABEL_26:
      __p = "failed: Axis value {0} is out of bounds for input operands";
      v53 = 58;
      v54[0] = &v57;
      v54[1] = 1;
      v55 = 1;
      v56[0] = &unk_1F5B17218;
      v56[1] = &v50;
      v57 = v56;
      v34.var0.var0 = a3;
      return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, v34, &__p);
    }
  }

  else
  {
    v23 = __p;
    v50 = __p;
    if ((__p & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }
  }

  if (a10)
  {
    v26 = 0;
    while (1)
    {
      v27 = mlir::TypeRange::dereference_iterator(a9, v26);
      v28 = v27;
      if (v27)
      {
        v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
      }

      __p = v28;
      v53 = v27;
      mlir::CallableOpInterface::getArgAttrsAttr(&__p);
      if (v23 >= v29)
      {
        goto LABEL_26;
      }

      if (a10 == ++v26)
      {
        v30 = 0;
        for (i = 0; i != a10; ++i)
        {
          v32 = mlir::TypeRange::dereference_iterator(a9, i);
          v33 = v32;
          if (v32)
          {
            v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
          }

          __p = v33;
          v53 = v32;
          v30 += *(mlir::CallableOpInterface::getArgAttrsAttr(&__p) + 8 * v23);
        }

        goto LABEL_28;
      }
    }
  }

  v30 = 0;
LABEL_28:
  v35 = mlir::TypeRange::dereference_iterator(a9, 0);
  v36 = v35;
  if (v35)
  {
    v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8);
  }

  v49[0] = v36;
  v49[1] = v35;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v49);
  v38 = mlir::CallableOpInterface::getArgAttrsAttr(v49);
  v40 = (v38 + 8 * v39);
  __p = v54;
  v53 = 0x500000000;
  v41 = (v40 - ArgAttrsAttr) >> 3;
  if (v41 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v54, v41, 8);
    v42 = v53;
    v43 = __p;
    if (v40 == ArgAttrsAttr)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v42 = 0;
  v43 = v54;
  if (v40 != ArgAttrsAttr)
  {
LABEL_34:
    memcpy(&v43[v42], ArgAttrsAttr, v40 - ArgAttrsAttr);
    v42 = v53;
    v43 = __p;
  }

LABEL_35:
  v44 = (v42 + ((v40 - ArgAttrsAttr) >> 3));
  LODWORD(v53) = v42 + ((v40 - ArgAttrsAttr) >> 3);
  v43[v23] = v30;
  isSplat = mlir::ElementsAttr::isSplat(v49);
  v46 = mlir::MemRefType::get(v43, v44, isSplat, 0, 0, 0);
  v47 = *(a11 + 8);
  if (v47 >= *(a11 + 12))
  {
    v48 = v46;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v47 + 1, 8);
    v46 = v48;
    LODWORD(v47) = *(a11 + 8);
  }

  *(*a11 + 8 * v47) = v46;
  ++*(a11 + 8);
  if (__p != v54)
  {
    free(__p);
  }

  return 1;
}

BOOL mlir::anec::ConcatAdaptor::verify(mlir::anec::ConcatAdaptor *this, Location a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v31); i != mlir::DictionaryAttr::end(&v31); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      if (i == mlir::DictionaryAttr::end(&v31))
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

        while (i != mlir::DictionaryAttr::end(&v31));
      }

      if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v29[0] = v14, v32[0] = mlir::AffineMapAttr::getValue(v29), mlir::Type::isUnsignedInteger(v32, 64)))
      {
        if (!v15 || *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          return 1;
        }

        v29[0] = "'anec.concat' op attribute 'interleave' failed to satisfy constraint: unit attribute";
        v30 = 259;
        mlir::emitError(a2.var0.var0, v29, v32);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
        if (v32[0])
        {
          mlir::InFlightDiagnostic::report(v32);
        }

        if (v40 == 1)
        {
          if (v39 != &v40)
          {
            free(v39);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v38;
            v18 = __p;
            if (v38 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v38 = v16;
            operator delete(v18);
          }

          v9 = v35;
          if (v35)
          {
            v19 = v36;
            v11 = v35;
            if (v36 == v35)
            {
              goto LABEL_65;
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

            while (v19 != v9);
LABEL_64:
            v11 = v35;
            goto LABEL_65;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v29[0] = "'anec.concat' op attribute 'axis' failed to satisfy constraint: 64-bit unsigned integer attribute";
        v30 = 259;
        mlir::emitError(a2.var0.var0, v29, v32);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
        if (v32[0])
        {
          mlir::InFlightDiagnostic::report(v32);
        }

        if (v40 == 1)
        {
          if (v39 != &v40)
          {
            free(v39);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v38;
            v24 = __p;
            if (v38 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v38 = v22;
            operator delete(v24);
          }

          v9 = v35;
          if (v35)
          {
            v25 = v36;
            v11 = v35;
            if (v36 != v35)
            {
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
              goto LABEL_64;
            }

LABEL_65:
            v36 = v9;
            operator delete(v11);
          }

          goto LABEL_66;
        }
      }

      return v5;
    }
  }

  v29[0] = "'anec.concat' op requires attribute 'axis'";
  v30 = 259;
  mlir::emitError(a2.var0.var0, v29, v32);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v38;
      v8 = __p;
      if (v38 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v38 = v6;
      operator delete(v8);
    }

    v9 = v35;
    if (v35)
    {
      v10 = v36;
      v11 = v35;
      if (v36 == v35)
      {
        goto LABEL_65;
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
      goto LABEL_64;
    }

LABEL_66:
    if (v33 != &v34)
    {
      free(v33);
    }
  }

  return v5;
}

uint64_t mlir::anec::Concat::getZinIrUnitInfo@<X0>(mlir::Operation **this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33E18;
  *(v6 + 1) = 0;
  *(v6 + 20) = 2;
  v6[84] = 0;
  *(v6 + 8) = 3;
  v7 = *this;
  v20 = v7;
  mlir::anec::fillZinIrCommonInfo(v7, v6, 3, a2, 0, 0);
  v8 = (*(*(*(v7 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v19[0] = v8;
  v19[1] = v9;
  Axis = mlir::anec::Concat::getAxis(&v20);
  mlir::CallableOpInterface::getArgAttrsAttr(v19);
  DimFromIndex = mlir::anec::getDimFromIndex(Axis, v11);
  if ((DimFromIndex & 0x100000000) != 0)
  {
    v13 = dword_1E0999A44[DimFromIndex];
  }

  else
  {
    v13 = 5;
  }

  *(v6 + 20) = v13;
  AttrDictionary = mlir::Operation::getAttrDictionary(v7);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v7);
  v15 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v15 + 16 * v16), *(*(*(v7 + 6) + 96) + 8));
  if (result)
  {
    v18 = *(*result + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  }

  else
  {
    v18 = 0;
  }

  v6[84] = v18;
  *a3 = v6;
  return result;
}

void *mlir::anec::Concat::getAxis(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  mlir::IntegerAttr::getValue(&v9, &__p);
  if (v8 <= 0x40)
  {
    return __p;
  }

  v5 = *__p;
  operator delete[](__p);
  return v5;
}

BOOL mlir::anec::Concat::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  ANECConcatLayerDescInitialize();
  Axis = mlir::anec::Concat::getAxis(a1);
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  InterleaveAttr = mlir::anec::Concat::getInterleaveAttr(a1);
  v9 = MEMORY[0x1E695E4D0];
  if (!InterleaveAttr)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  v27 = *v9;
  v34[0] = v35;
  v34[1] = 0x100000000;
  v10 = 1;
  *buffer = 1;
  v28[0] = 0;
  ANECUnitValidatorCreate();
  v24 = 0;
  v25 = 0;
  if (ANECValidateConcatLayer())
  {
    v11 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v28);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, "Invalid configuration", 21);
    std::stringbuf::str();
    v28[0] = *MEMORY[0x1E69E54D8];
    v12 = *(MEMORY[0x1E69E54D8] + 72);
    *(v28 + *(v28[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v29 = v12;
    v30 = MEMORY[0x1E69E5548] + 16;
    if (v32 < 0)
    {
      operator delete(v31[7].__locale_);
    }

    v30 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v31);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v33);
    LOWORD(v31[0].__locale_) = 260;
    v28[0] = &v22;
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v13 = v41;
      if (v41)
      {
        v14 = v42;
        v15 = v41;
        if (v42 != v41)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = v41;
        }

        v42 = v13;
        operator delete(v15);
      }

      v16 = v39;
      if (v39)
      {
        v17 = v40;
        v18 = v39;
        if (v40 != v39)
        {
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
          v18 = v39;
        }

        v40 = v16;
        operator delete(v18);
      }

      if (v37 != &v38)
      {
        free(v37);
      }
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }
  }

  ANECUnitValidatorDelete();
  if (v34[0] != v35)
  {
    free(v34[0]);
  }

  return v10;
}

uint64_t mlir::anec::Concat::addOpToNetwork(mlir::Operation **a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Concat::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

uint64_t mlir::anec::InstanceNorm::inferPromotedReturnTypes(mlir::Float16Type *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v23[0] = a4;
  v23[1] = a5;
  v12 = (*(mlir::ValueRange::dereference_iterator(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v20[0] = v12;
  v20[1] = v13;
  *&v21 = mlir::ElementsAttr::isSplat(v20);
  if (mlir::Type::isF16(&v21))
  {
    v15 = v20[0];
  }

  else
  {
    v16 = mlir::Float16Type::get(a1, v14);
    LOBYTE(v21) = 0;
    v22 = 0;
    v15 = mlir::ShapedType::cloneWith(v20, &v21, v16);
  }

  v17 = *(a11 + 8);
  if (v17 >= *(a11 + 12))
  {
    v19 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v17 + 1, 8);
    v15 = v19;
    v17 = *(a11 + 8);
  }

  *(*a11 + 8 * v17) = v15;
  ++*(a11 + 8);
  return 1;
}

void mlir::anec::InstanceNorm::getZinIrUnitInfo(mlir::anec::InstanceNorm *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x80uLL);
  v6[3] = 0u;
  v6[4] = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v6[5] = 0u;
  *(v6 + 9) = -1;
  *(v6 + 28) = 1065353216;
  *(v6 + 30) = 730643660;
  *v6 = &unk_1F5B33E38;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 25, a2, 0, 0);
  v7 = *this;
  v8 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v7 = *this;
  }

  else
  {
    v9 = 0;
  }

  v26[0] = v8;
  v26[1] = v9;
  v30 = v32;
  v31 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v7);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v11 + 16 * v12 - 16), **(*(*this + 48) + 96));
  mlir::getValues<unsigned long>(v13, &v30);
  if (v31)
  {
    v14 = v30;
    v15 = 8 * v31;
    do
    {
      v17 = *v14;
      mlir::CallableOpInterface::getArgAttrsAttr(v26);
      DimFromIndex = mlir::anec::getDimFromIndex(v17, v18);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v16 = dword_1E0999A44[DimFromIndex];
      }

      else
      {
        v16 = 5;
      }

      LODWORD(AttrDictionary) = v16;
      std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension>((v6 + 5), &AttrDictionary, &AttrDictionary);
      ++v14;
      v15 -= 8;
    }

    while (v15);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v20 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v21 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v20 + 16), (v21 + 16 * v22), *(*(*(*this + 48) + 96) + 8));
  mlir::FloatAttr::getValue(&v27, &AttrDictionary);
  v24 = llvm::APFloat::convertToFloat(&AttrDictionary);
  if (v24 < 0.00000011921)
  {
    v24 = 0.00000011921;
  }

  *(v6 + 30) = v24;
  v25 = v29[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v23) == v25)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v29);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v29);
  }

  *a3 = v6;
  if (v30 != v32)
  {
    free(v30);
  }
}

void *mlir::anec::InstanceNorm::getEpsilon@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v5 + 16 * v6), *(*(*(*this + 6) + 96) + 8));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

BOOL mlir::anec::InstanceNorm::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  ANECInstanceNormLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::ArrayAttr::getValue(buffer);
  v38[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8 - 16), **(*(*a1 + 6) + 96));
  v38[1] = mlir::DenseElementsAttr::getNumElements(v38);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v9 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::ArrayAttr::getValue(buffer);
  v40[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v9 + 16), (v10 + 16 * v11), *(*(*(*a1 + 6) + 96) + 8));
  mlir::FloatAttr::getValue(v40, buffer);
  v13 = llvm::APFloat::convertToFloat(buffer);
  if (v13 < 0.00000011921)
  {
    v13 = 0.00000011921;
  }

  *&v39[10] = v13;
  v14 = v50;
  if (llvm::APFloatBase::PPCDoubleDouble(v12) == v14)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v50);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v50);
  }

  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v16 = v15;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v38[0], 0);
  v17 = v38[0];
  NumElements = mlir::DenseElementsAttr::getNumElements(v38);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v40, v17, NumElements);
  if (v51 != v41)
  {
    v30 = v39;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v46);
      v31 = v47;
      if (v47 >= 0x41)
      {
        if (v31 - llvm::APInt::countLeadingZerosSlowCase(&v46) <= 0x40)
        {
          v32 = *v46;
        }

        else
        {
          v32 = -1;
        }
      }

      else
      {
        v32 = v46;
      }

      if (v47 >= 0x41 && v46)
      {
        operator delete[](v46);
      }

      ++v51;
      ++v30;
    }

    while (v51 != v41);
  }

  v19 = 1;
  *buffer = 1;
  v40[0] = 0;
  ANECUnitValidatorCreate();
  v46 = v48;
  v47 = 0x100000000;
  v36 = 0;
  v37 = 0;
  if (ANECValidateInstanceNormLayer())
  {
    v20 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v40);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v41, "Invalid configuration", 21);
    std::stringbuf::str();
    v40[0] = *MEMORY[0x1E69E54D8];
    v21 = *(MEMORY[0x1E69E54D8] + 72);
    *(v40 + *(v40[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v41 = v21;
    v42 = MEMORY[0x1E69E5548] + 16;
    if (v44 < 0)
    {
      operator delete(v43[7].__locale_);
    }

    v42 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v43);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v45);
    LOWORD(v43[0].__locale_) = 260;
    v40[0] = &v34;
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v22 = v56;
      if (v56)
      {
        v23 = v57;
        v24 = v56;
        if (v57 != v56)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = v56;
        }

        v57 = v22;
        operator delete(v24);
      }

      v25 = v54;
      if (v54)
      {
        v26 = v55;
        v27 = v54;
        if (v55 != v54)
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
          v27 = v54;
        }

        v55 = v25;
        operator delete(v27);
      }

      if (v52 != &v53)
      {
        free(v52);
      }
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }
  }

  if (v46 != v48)
  {
    free(v46);
  }

  ANECUnitValidatorDelete();
  return v19;
}

uint64_t mlir::anec::InstanceNorm::addOpToNetwork(mlir::anec::InstanceNorm *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::InstanceNorm::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

void mlir::anec::LayerNorm::getZinIrUnitInfo(mlir::anec::LayerNorm *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x88uLL);
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  v6[5] = 0u;
  *(v6 + 9) = -1;
  v6[6] = 0u;
  *(v6 + 28) = 1065353216;
  *(v6 + 30) = 730643660;
  *v6 = &unk_1F5B33EA8;
  *(v6 + 16) = 1;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 28, a2, 0, 0);
  v7 = *this;
  v8 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v7 = *this;
  }

  else
  {
    v9 = 0;
  }

  v26[0] = v8;
  v26[1] = v9;
  v30 = v32;
  v31 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v7);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v11 + 16 * v12 - 16), **(*(*this + 48) + 96));
  mlir::getValues<unsigned long>(v13, &v30);
  if (v31)
  {
    v14 = v30;
    v15 = 8 * v31;
    do
    {
      v17 = *v14;
      mlir::CallableOpInterface::getArgAttrsAttr(v26);
      DimFromIndex = mlir::anec::getDimFromIndex(v17, v18);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v16 = dword_1E0999A44[DimFromIndex];
      }

      else
      {
        v16 = 5;
      }

      LODWORD(AttrDictionary) = v16;
      std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension>((v6 + 5), &AttrDictionary, &AttrDictionary);
      ++v14;
      v15 -= 8;
    }

    while (v15);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v20 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v21 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v20 + 16), (v21 + 16 * v22), *(*(*(*this + 48) + 96) + 8));
  mlir::FloatAttr::getValue(&v27, &AttrDictionary);
  v24 = llvm::APFloat::convertToFloat(&AttrDictionary);
  if (v24 < 0.00000011921)
  {
    v24 = 0.00000011921;
  }

  *(v6 + 30) = v24;
  v25 = v29[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v23) == v25)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v29);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v29);
  }

  *a3 = v6;
  if (v30 != v32)
  {
    free(v30);
  }
}

BOOL mlir::anec::LayerNorm::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  ANECLayerNormLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::ArrayAttr::getValue(buffer);
  v32[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8 - 16), **(*(*a1 + 6) + 96));
  v32[1] = mlir::DenseElementsAttr::getNumElements(v32);
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v10 = v9;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v32[0], 0);
  v11 = v32[0];
  NumElements = mlir::DenseElementsAttr::getNumElements(v32);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, v11, NumElements);
  if (v44 != v35)
  {
    v24 = &v33;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v40);
      v25 = v41;
      if (v41 >= 0x41)
      {
        if (v25 - llvm::APInt::countLeadingZerosSlowCase(&v40) <= 0x40)
        {
          v26 = *v40;
        }

        else
        {
          v26 = -1;
        }
      }

      else
      {
        v26 = v40;
      }

      if (v41 >= 0x41 && v40)
      {
        operator delete[](v40);
      }

      ++v44;
      ++v24;
    }

    while (v44 != v35);
  }

  v13 = 1;
  *buffer = 1;
  v34[0] = 0;
  ANECUnitValidatorCreate();
  v40 = v42;
  v41 = 0x100000000;
  v30 = 0;
  v31 = 0;
  if (ANECValidateLayerNormLayer())
  {
    v14 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v34);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v35, "Invalid configuration", 21);
    std::stringbuf::str();
    v34[0] = *MEMORY[0x1E69E54D8];
    v15 = *(MEMORY[0x1E69E54D8] + 72);
    *(v34 + *(v34[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v35 = v15;
    v36 = MEMORY[0x1E69E5548] + 16;
    if (v38 < 0)
    {
      operator delete(v37[7].__locale_);
    }

    v36 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v37);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v39);
    LOWORD(v37[0].__locale_) = 260;
    v34[0] = &v28;
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v16 = v49;
      if (v49)
      {
        v17 = v50;
        v18 = v49;
        if (v50 != v49)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = v49;
        }

        v50 = v16;
        operator delete(v18);
      }

      v19 = v47;
      if (v47)
      {
        v20 = v48;
        v21 = v47;
        if (v48 != v47)
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
          v21 = v47;
        }

        v48 = v19;
        operator delete(v21);
      }

      if (v45 != &v46)
      {
        free(v45);
      }
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }
  }

  if (v40 != v42)
  {
    free(v40);
  }

  ANECUnitValidatorDelete();
  return v13;
}

uint64_t mlir::anec::LayerNorm::addOpToNetwork(mlir::anec::LayerNorm *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::LayerNorm::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

uint64_t mlir::anec::verifyANECBatchNormOp(uint64_t a1, mlir::Operation *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v55[0] = v4;
  v55[1] = v5;
  v56[0] = mlir::ElementsAttr::isSplat(v55);
  if (mlir::Type::isF16(v56))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v55);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v7);
    if (v9)
    {
      v10 = *(mlir::CallableOpInterface::getArgAttrsAttr(v55) + 8 * IndexFromDim);
      if ((*(a1 + 46) & 0x80) != 0)
      {
        v11 = *(a1 + 68);
        v12 = v11 - 1;
        if (v11 == 1)
        {
          return 1;
        }

        v13 = *(a1 + 72) + 32;
      }

      else
      {
        v12 = -1;
        v13 = 32;
      }

      for (i = (v13 + 24); ; i += 4)
      {
        v15 = *i;
        mlir::CallableOpInterface::getArgAttrsAttr(v55);
        v17 = mlir::anec::getIndexFromDim(1, v16);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v19 = v17;
        v20 = (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v20)
        {
          v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        else
        {
          v21 = 0;
        }

        v52[0] = v20;
        v52[1] = v21;
        if (*(mlir::CallableOpInterface::getArgAttrsAttr(v52) + 8 * v19) != v10)
        {
          v53[0] = "failed: the parameters of batch norm must equal to the channel size\n";
          v54 = 259;
          mlir::Operation::emitOpError(a1, v53, v56);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
          if (v56[0])
          {
            mlir::InFlightDiagnostic::report(v56);
          }

          if (v64)
          {
            if (v63 != &v64)
            {
              free(v63);
            }

            v44 = __p;
            if (__p)
            {
              v45 = v62;
              v46 = __p;
              if (v62 != __p)
              {
                do
                {
                  v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
                }

                while (v45 != v44);
                v46 = __p;
              }

              v62 = v44;
              operator delete(v46);
            }

            v47 = v59;
            if (v59)
            {
              v48 = v60;
              v49 = v59;
              if (v60 != v59)
              {
                do
                {
                  v51 = *--v48;
                  v50 = v51;
                  *v48 = 0;
                  if (v51)
                  {
                    operator delete[](v50);
                  }
                }

                while (v48 != v47);
                v49 = v59;
              }

              v60 = v47;
              operator delete(v49);
            }

            v42 = v57;
            if (v57 != v58)
            {
              goto LABEL_73;
            }
          }

          return v6;
        }

        if (!--v12)
        {
          return 1;
        }
      }

      v53[0] = "failed: can not find channel axis of batch norm op\n";
      v54 = 259;
      mlir::Operation::emitOpError(a1, v53, v56);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
      if (v56[0])
      {
        mlir::InFlightDiagnostic::report(v56);
      }

      if (v64 != 1)
      {
        return v6;
      }

      if (v63 != &v64)
      {
        free(v63);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v62;
        v38 = __p;
        if (v62 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v62 = v36;
        operator delete(v38);
      }

      v25 = v59;
      if (!v59)
      {
        goto LABEL_72;
      }

      v39 = v60;
      v27 = v59;
      if (v60 == v59)
      {
        goto LABEL_71;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          operator delete[](v40);
        }
      }

      while (v39 != v25);
    }

    else
    {
      v53[0] = "failed: can not find channel axis of batch norm op\n";
      v54 = 259;
      mlir::Operation::emitOpError(a1, v53, v56);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
      if (v56[0])
      {
        mlir::InFlightDiagnostic::report(v56);
      }

      if (v64 != 1)
      {
        return v6;
      }

      if (v63 != &v64)
      {
        free(v63);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v62;
        v32 = __p;
        if (v62 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v62 = v30;
        operator delete(v32);
      }

      v25 = v59;
      if (!v59)
      {
        goto LABEL_72;
      }

      v33 = v60;
      v27 = v59;
      if (v60 == v59)
      {
        goto LABEL_71;
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

      while (v33 != v25);
    }

    goto LABEL_70;
  }

  v53[0] = "failed: the output type of batch normalization must be FP16 \n";
  v54 = 259;
  mlir::Operation::emitOpError(a1, v53, v56);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
  if (v56[0])
  {
    mlir::InFlightDiagnostic::report(v56);
  }

  if (v64 != 1)
  {
    return v6;
  }

  if (v63 != &v64)
  {
    free(v63);
  }

  v22 = __p;
  if (__p)
  {
    v23 = v62;
    v24 = __p;
    if (v62 != __p)
    {
      do
      {
        v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
      }

      while (v23 != v22);
      v24 = __p;
    }

    v62 = v22;
    operator delete(v24);
  }

  v25 = v59;
  if (v59)
  {
    v26 = v60;
    v27 = v59;
    if (v60 == v59)
    {
      goto LABEL_71;
    }

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
LABEL_70:
    v27 = v59;
LABEL_71:
    v60 = v25;
    operator delete(v27);
  }

LABEL_72:
  v42 = v57;
  if (v57 != v58)
  {
LABEL_73:
    free(v42);
  }

  return v6;
}

uint64_t mlir::anec::BatchNorm::addOpToNetwork(mlir::Operation **a1, uint64_t a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v43 = *a1;
  v44 = a2;
  if (a2)
  {
    v7 = operator new(0xE8uLL);
    *(v7 + 1) = 0;
    *(v7 + 8) = 0;
    *(v7 + 1) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 9) = -1;
    *v7 = &unk_1F5B33EE0;
    v7[80] = 0;
    *(v7 + 84) = -1;
    *(v7 + 12) = -1;
    v7[112] = 0;
    *(v7 + 26) = 0;
    *(v7 + 116) = -1;
    *(v7 + 16) = -1;
    v7[152] = 0;
    *(v7 + 34) = 0;
    v7[184] = 0;
    v7[192] = 0;
    v7[224] = 0;
    mlir::anec::fillZinIrCommonInfo(v4, v7, 63, a2, 1uLL, 1u);
    v42[0] = &v44;
    v42[1] = a3;
    v42[2] = &v43;
    if ((v7[184] & 1) == 0)
    {
      v7[184] = 1;
    }

    v7[152] = 0;
    *(v7 + 156) = -1;
    *(v7 + 21) = -1;
    *(v7 + 44) = 0;
    if ((v7[224] & 1) == 0)
    {
      v7[224] = 1;
    }

    v7[192] = 0;
    *(v7 + 196) = -1;
    *(v7 + 26) = -1;
    *(v7 + 54) = 0;
    if (mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(v42, *(*(*a1 + 9) + 56), (v7 + 80)) & 1) != 0 && (mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(v42, *(*(*a1 + 9) + 88), (v7 + 112)))
    {
      if ((v7[184] & 1) == 0)
      {
        goto LABEL_65;
      }

      if (mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(v42, *(*(*a1 + 9) + 120), (v7 + 152)))
      {
        if (v7[224])
        {
          if (mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(v42, *(*(*a1 + 9) + 152), (v7 + 192)))
          {
            AttrDictionary = mlir::Operation::getAttrDictionary(v43);
            Value = mlir::ArrayAttr::getValue(&AttrDictionary);
            AttrDictionary = mlir::Operation::getAttrDictionary(v43);
            v9 = mlir::ArrayAttr::getValue(&AttrDictionary);
            v40[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v9 + 16 * v10), **(*(v43 + 6) + 96));
            mlir::FloatAttr::getValue(v40, &AttrDictionary);
            *(v7 + 36) = llvm::APFloat::convertToFloat(&AttrDictionary);
            v11 = v46[0];
            if (llvm::APFloatBase::PPCDoubleDouble(v12) == v11)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v46);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v46);
            }

            v31 = v44;
            v32 = operator new(0xC8uLL);
            v33 = v32;
            *(v32 + 1) = 0;
            *(v32 + 2) = 0;
            *v32 = &unk_1F5B2E830;
            v34 = v32 + 24;
            *(v32 + 3) = &unk_1F5B2E868;
            if (v7[31] < 0)
            {
              std::string::__init_copy_ctor_external((v32 + 32), *(v7 + 1), *(v7 + 2));
            }

            else
            {
              *(v32 + 2) = *(v7 + 8);
              *(v32 + 6) = *(v7 + 3);
            }

            *(v33 + 14) = 17;
            *(v33 + 3) = &unk_1F5B34308;
            *(v33 + 8) = v7;
            v33[72] = 0;
            *(v33 + 10) = 0;
            *(v33 + 11) = v33 + 104;
            *(v33 + 12) = 0x100000000;
            *(v33 + 17) = v33 + 152;
            *(v33 + 18) = 0x300000000;
            *&v39 = v34;
            *(&v39 + 1) = v33;
            mlir::anec::ANECIRNetwork::AddUnit(v31, &v39);
            v35 = *(&v39 + 1);
            if (*(&v39 + 1))
            {
              if (!atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v35->__on_zero_shared)(v35);
                std::__shared_weak_count::__release_weak(v35);
              }
            }

            return 1;
          }

          goto LABEL_14;
        }

LABEL_65:
        v36 = std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(v36, v37, v38);
      }
    }

LABEL_14:
    v40[0] = "failed: can not serialize the mean/variance/gamma/beta for batch norm \n";
    v41 = 259;
    mlir::Operation::emitOpError(v43, v40, &AttrDictionary);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v53;
        v16 = __p;
        if (v53 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v53 = v14;
        operator delete(v16);
      }

      v17 = v50;
      if (v50)
      {
        v18 = v51;
        v19 = v50;
        if (v51 != v50)
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
          v19 = v50;
        }

        v51 = v17;
        operator delete(v19);
      }

      if (v47 != &v49)
      {
        free(v47);
      }
    }

    (*(*v7 + 8))(v7);
    return v13;
  }

  AttrDictionary = "network should not be nullptr";
  v48 = 259;
  mlir::OpState::emitError(a1, &AttrDictionary, v56);
  if (v56[0])
  {
    mlir::InFlightDiagnostic::report(v56);
  }

  if (v64 == 1)
  {
    if (v63 != &v64)
    {
      free(v63);
    }

    v22 = v61;
    if (v61)
    {
      v23 = v62;
      v24 = v61;
      if (v62 != v61)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = v61;
      }

      v62 = v22;
      operator delete(v24);
    }

    v25 = v59;
    if (v59)
    {
      v26 = v60;
      v27 = v59;
      if (v60 != v59)
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
        v27 = v59;
      }

      v60 = v25;
      operator delete(v27);
    }

    if (v57 != &v58)
    {
      free(v57);
    }
  }

  return 0;
}

uint64_t mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0;
  {
    return 0;
  }

  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8) : 0;
  v18[0] = v5;
  v18[1] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(v18);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v7);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v20;
  *(a3 + 4) = v21;
  *(a3 + 16) = v10;
  *(a3 + 8) = *(mlir::CallableOpInterface::getArgAttrsAttr(v18) + 8 * IndexFromDim);
  v11 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v22[0] = v11;
  v22[1] = v12;
  isSplat = mlir::ElementsAttr::isSplat(v22);
  v15 = *(*isSplat + 136);
  if (v15 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v16 = 4;
    }

    else if (v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v16 = 6;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_24;
  }

  v23 = isSplat;
  Width = mlir::IntegerType::getWidth(&v23);
  if (Width != 16)
  {
    if (Width == 8)
    {
      if (mlir::IntegerType::getSignedness(&v23) == 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (mlir::IntegerType::getSignedness(&v23) != 1)
  {
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  v16 = 3;
LABEL_24:
  *(a3 + 24) = v16;
  return 1;
}

uint64_t mlir::anec::CropResize::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v67 = *MEMORY[0x1E69E9840];
  v60 = a6;
  LOBYTE(v61) = 0;
  v62 = 0;
  v63 = a7;
  v64 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v60);
    if (v62 == 1)
    {
      v62 = 0;
    }

    mlir::OperationName::OperationName(&v61, "anec.crop_resize", 16, Context);
    v62 = 1;
    a1 = v15;
  }

  v65 = a4;
  v66 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::CropResizeAdaptor::verify(&v60, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v54[0] = v20;
  v54[1] = v19;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v54);
  v22 = mlir::CallableOpInterface::getArgAttrsAttr(v54);
  v24 = (v22 + 8 * v23);
  v57 = v59;
  v58 = 0x500000000;
  v25 = (v24 - ArgAttrsAttr) >> 3;
  if (v25 < 6)
  {
    v26 = 0;
    if (v24 == ArgAttrsAttr)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v25, 8);
  v26 = v58;
  if (v24 != ArgAttrsAttr)
  {
LABEL_16:
    memcpy(v57 + 8 * v26, ArgAttrsAttr, v24 - ArgAttrsAttr);
    v26 = v58;
  }

LABEL_17:
  LODWORD(v58) = v26 + ((v24 - ArgAttrsAttr) >> 3);
  v55[0] = v56;
  v55[1] = 0x200000000;
  Value = mlir::AffineMapAttr::getValue(&v60);
  v29 = mlir::DictionaryAttr::end(&v60);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 64), (v29 - 48), *(*(v61 + 96) + 40));
  mlir::getValues<long long>(v30, v55);
  mlir::CallableOpInterface::getArgAttrsAttr(v54);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v31);
  if ((v33 & 1) == 0 || (v34 = IndexFromDim, mlir::CallableOpInterface::getArgAttrsAttr(v54), v36 = mlir::anec::getIndexFromDim(4, v35), (v37 & 1) == 0) || (v38 = v55[0], v39 = v57, *(v57 + v34) = *v55[0], v39[v36] = v38[1], mlir::CallableOpInterface::getArgAttrsAttr(v54), v41 = mlir::anec::getIndexFromDim(0, v40), (v42 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v43 = v41;
  v44 = mlir::TypeRange::dereference_iterator(a9, 1);
  v45 = v44;
  if (v44)
  {
    v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
  }

  v53[0] = v45;
  v53[1] = v44;
  v46 = mlir::CallableOpInterface::getArgAttrsAttr(v53);
  v47 = v57;
  *(v57 + v43) = *(v46 + 8 * v43);
  v48 = v58;
  isSplat = mlir::ElementsAttr::isSplat(v54);
  v50 = mlir::MemRefType::get(v47, v48, isSplat, 0, 0, 0);
  v51 = *(a11 + 8);
  if (v51 >= *(a11 + 12))
  {
    v52 = v50;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v51 + 1, 8);
    v50 = v52;
    LODWORD(v51) = *(a11 + 8);
  }

  *(*a11 + 8 * v51) = v50;
  ++*(a11 + 8);
  if (v55[0] != v56)
  {
    free(v55[0]);
  }

  if (v57 != v59)
  {
    free(v57);
  }

  return 1;
}

BOOL mlir::anec::CropResizeAdaptor::verify(mlir::anec::CropResizeAdaptor *this, Location a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v85 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v85); i != mlir::DictionaryAttr::end(&v85); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v85))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = *(i + 1);
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v85))
            {
              v82 = "'anec.crop_resize' op requires attribute 'coordinate_mode'";
              v84 = 259;
              mlir::emitError(a2.var0.var0, &v82, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v98 != 1)
              {
                return v5;
              }

              if (v97 != &v98)
              {
                free(v97);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v96;
                v24 = __p;
                if (v96 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v96 = v22;
                operator delete(v24);
              }

              v9 = v93;
              if (!v93)
              {
                goto LABEL_85;
              }

              v25 = v94;
              v11 = v93;
              if (v94 == v93)
              {
                goto LABEL_84;
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
              goto LABEL_83;
            }

            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              break;
            }

            i = (i + 16);
          }

          v28 = *(i + 1);
          if (i != mlir::DictionaryAttr::end(&v85))
          {
            v29 = 0;
            while (mlir::CallGraphNode::getCallableRegion(i) != *(*(*(this + 1) + 96) + 32))
            {
              if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 24))
              {
                v29 = *(i + 1);
              }

              i = (i + 16);
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                goto LABEL_67;
              }
            }

            v37 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v82 = "'anec.crop_resize' op requires attribute 'output_dims'";
                v84 = 259;
                mlir::emitError(a2.var0.var0, &v82, &Value);
                v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                if (Value)
                {
                  mlir::InFlightDiagnostic::report(&Value);
                }

                if (v98 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v90);
                }

                return v5;
              }

              if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 40))
              {
                break;
              }

              i = (i + 16);
            }

            v38 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'padding_modes'";
                goto LABEL_170;
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
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'sampling_method'";
                goto LABEL_170;
              }

              if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 56))
              {
                break;
              }

              i = (i + 16);
            }

            v79 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'sampling_mode'";
                goto LABEL_170;
              }

              if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 64))
              {
                break;
              }

              i = (i + 16);
            }

            v41 = *(i + 1);
            if (!v38)
            {
              goto LABEL_173;
            }

            if (!mlir::DenseIntElementsAttr::classof(v38))
            {
              goto LABEL_161;
            }

            v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v38 + 8);
            v82 = v38;
            v83 = v42;
            Type = mlir::ElementsAttr::getType(&v82);
            v44 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            Value = v44;
            v90 = Type;
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
            v88 = 2;
            if (v46 == 1 && *ArgAttrsAttr == v88 && (v80 = v38, v86 = mlir::ArrayAttr::getValue(&v80), v87 = v47, isSplat = mlir::ElementsAttr::isSplat(&v86), mlir::Type::isUnsignedInteger(&isSplat, 64)))
            {
LABEL_173:
              if (!v29)
              {
                goto LABEL_126;
              }

              if (!mlir::DenseIntElementsAttr::classof(v29))
              {
                goto LABEL_162;
              }

              v48 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v29 + 8);
              v82 = v29;
              v83 = v48;
              v49 = mlir::ElementsAttr::getType(&v82);
              v50 = v49;
              if (v49)
              {
                v49 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
              }

              Value = v50;
              v90 = v49;
              v51 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
              v88 = 2;
              if (v52 == 1 && *v51 == v88 && (v80 = v29, v86 = mlir::ArrayAttr::getValue(&v80), v87 = v53, isSplat = mlir::ElementsAttr::isSplat(&v86), mlir::Type::isUnsignedInteger(&isSplat, 64)))
              {
LABEL_126:
                if (v21 && (mlir::anec::BoxCoordinateModeAttr::classof(v21) & 1) == 0)
                {
                  v39 = "'anec.crop_resize' op attribute 'box_coordinate_mode' failed to satisfy constraint: valid BoxCoordinateMode";
                }

                else
                {
                  if (!v28)
                  {
                    goto LABEL_174;
                  }

                  v54 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                  v82 = v28;
                  v83 = v54;
                  v55 = mlir::ElementsAttr::getType(&v82);
                  v56 = v55;
                  if (v55)
                  {
                    v55 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
                  }

                  Value = v56;
                  v90 = v55;
                  v57 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                  v86 = 5;
                  if (v58 == 1 && *v57 == v86 && (v88 = v28, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_0>(&v88) & 1) != 0))
                  {
LABEL_174:
                    if (!v37)
                    {
                      goto LABEL_175;
                    }

                    v59 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v37 + 8);
                    v82 = v37;
                    v83 = v59;
                    v60 = mlir::ElementsAttr::getType(&v82);
                    v61 = v60;
                    if (v60)
                    {
                      v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
                    }

                    Value = v61;
                    v90 = v60;
                    v62 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                    v86 = 5;
                    if (v63 == 1 && *v62 == v86 && (v88 = v37, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v88) & 1) != 0))
                    {
LABEL_175:
                      if (!v41)
                      {
                        goto LABEL_176;
                      }

                      v64 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v41 + 8);
                      v82 = v41;
                      v83 = v64;
                      v65 = mlir::ElementsAttr::getType(&v82);
                      v66 = v65;
                      if (v65)
                      {
                        v65 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v65 + 8);
                      }

                      Value = v66;
                      v90 = v65;
                      v67 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                      v86 = 5;
                      if (v68 == 1 && *v67 == v86 && (v88 = v41, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_2>(&v88) & 1) != 0))
                      {
LABEL_176:
                        if (!v79)
                        {
                          goto LABEL_177;
                        }

                        v69 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v79 + 8);
                        v82 = v79;
                        v83 = v69;
                        v70 = mlir::ElementsAttr::getType(&v82);
                        v71 = v70;
                        if (v70)
                        {
                          v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v70 + 8);
                        }

                        Value = v71;
                        v90 = v70;
                        v72 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                        v86 = 5;
                        if (v73 == 1 && *v72 == v86 && (v88 = v79, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v88) & 1) != 0))
                        {
LABEL_177:
                          if (!v40)
                          {
                            goto LABEL_178;
                          }

                          v74 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v40 + 8);
                          v82 = v40;
                          v83 = v74;
                          v75 = mlir::ElementsAttr::getType(&v82);
                          v76 = v75;
                          if (v75)
                          {
                            v75 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v75 + 8);
                          }

                          Value = v76;
                          v90 = v75;
                          v77 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                          v86 = 5;
                          if (v78 == 1 && *v77 == v86 && (v88 = v40, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_4>(&v88) & 1) != 0))
                          {
LABEL_178:
                            if (!v14)
                            {
                              return 1;
                            }

                            if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
                            {
                              v82 = v14;
                              Value = mlir::AffineMapAttr::getValue(&v82);
                              if (mlir::Type::isF16(&Value))
                              {
                                return 1;
                              }
                            }

                            v39 = "'anec.crop_resize' op attribute 'background_value' failed to satisfy constraint: 16-bit float attribute";
                          }

                          else
                          {
                            v39 = "'anec.crop_resize' op attribute 'padding_modes' failed to satisfy constraint: PaddingMode elements attribute of shape {5}";
                          }
                        }

                        else
                        {
                          v39 = "'anec.crop_resize' op attribute 'sampling_method' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {5}";
                        }
                      }

                      else
                      {
                        v39 = "'anec.crop_resize' op attribute 'sampling_mode' failed to satisfy constraint: SamplingGridMode elements attribute of shape {5}";
                      }
                    }

                    else
                    {
                      v39 = "'anec.crop_resize' op attribute 'normalized_range' failed to satisfy constraint: NormalizedCoordinateRange elements attribute of shape {5}";
                    }
                  }

                  else
                  {
                    v39 = "'anec.crop_resize' op attribute 'coordinate_mode' failed to satisfy constraint: CoordinateMode elements attribute of shape {5}";
                  }
                }
              }

              else
              {
LABEL_162:
                v39 = "'anec.crop_resize' op attribute 'crop_dims' failed to satisfy constraint: ui64 elements attribute of shape {2}";
              }
            }

            else
            {
LABEL_161:
              v39 = "'anec.crop_resize' op attribute 'output_dims' failed to satisfy constraint: ui64 elements attribute of shape {2}";
            }

LABEL_170:
            v82 = v39;
            v84 = 259;
            mlir::emitError(a2.var0.var0, &v82, &Value);
            v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
            return v5;
          }

LABEL_67:
          v82 = "'anec.crop_resize' op requires attribute 'normalized_range'";
          v84 = 259;
          mlir::emitError(a2.var0.var0, &v82, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v98 != 1)
          {
            return v5;
          }

          if (v97 != &v98)
          {
            free(v97);
          }

          v30 = __p;
          if (__p)
          {
            v31 = v96;
            v32 = __p;
            if (v96 != __p)
            {
              do
              {
                v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
              }

              while (v31 != v30);
              v32 = __p;
            }

            v96 = v30;
            operator delete(v32);
          }

          v9 = v93;
          if (!v93)
          {
            goto LABEL_85;
          }

          v33 = v94;
          v11 = v93;
          if (v94 == v93)
          {
            goto LABEL_84;
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

          while (v33 != v9);
          goto LABEL_83;
        }

        i = (i + 16);
      }

      v82 = "'anec.crop_resize' op requires attribute 'box_coordinate_mode'";
      v84 = 259;
      mlir::emitError(a2.var0.var0, &v82, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v98 != 1)
      {
        return v5;
      }

      if (v97 != &v98)
      {
        free(v97);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v96;
        v17 = __p;
        if (v96 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v96 = v15;
        operator delete(v17);
      }

      v9 = v93;
      if (!v93)
      {
        goto LABEL_85;
      }

      v18 = v94;
      v11 = v93;
      if (v94 == v93)
      {
        goto LABEL_84;
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
LABEL_83:
      v11 = v93;
      goto LABEL_84;
    }
  }

  v82 = "'anec.crop_resize' op requires attribute 'background_value'";
  v84 = 259;
  mlir::emitError(a2.var0.var0, &v82, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v98 == 1)
  {
    if (v97 != &v98)
    {
      free(v97);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v96;
      v8 = __p;
      if (v96 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v96 = v6;
      operator delete(v8);
    }

    v9 = v93;
    if (v93)
    {
      v10 = v94;
      v11 = v93;
      if (v94 != v93)
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
        goto LABEL_83;
      }

LABEL_84:
      v94 = v9;
      operator delete(v11);
    }

LABEL_85:
    if (v91 != &v92)
    {
      free(v91);
    }
  }

  return v5;
}

void mlir::anec::CropResize::getZinIrUnitInfo(mlir::anec::CropResize *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v88 = *MEMORY[0x1E69E9840];
  v5 = operator new(0xC8uLL);
  v5[8] = 0u;
  v5[9] = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  *(v5 + 9) = -1;
  *(v5 + 138) = 0u;
  *v5 = &unk_1F5B33F00;
  *(v5 + 20) = 0;
  *(v5 + 39) = 5;
  *(v5 + 21) = 0;
  *(v5 + 22) = 0;
  *&v6 = 0x100000001;
  *(&v6 + 1) = 0x100000001;
  *(v5 + 184) = v6;
  mlir::anec::fillZinIrCommonInfo(*this, v5, 46, a2, 0, 0);
  v84[0] = v85;
  v84[1] = 0x500000000;
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&v86);
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v8 = mlir::ArrayAttr::getValue(&v86);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v8 + 16 * v9 - 80), *(*(*(*this + 48) + 96) + 16));
  mlir::getValues<unsigned long>(v10, v84);
  v82[0] = v83;
  v82[1] = 0x500000000;
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v11 = mlir::ArrayAttr::getValue(&v86);
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v12 = mlir::ArrayAttr::getValue(&v86);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v11 + 48), (v12 + 16 * v13 - 64), *(*(*(*this + 48) + 96) + 32));
  mlir::getValues<unsigned long>(v14, v82);
  v80[0] = v81;
  v80[1] = 0x500000000;
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v15 = mlir::ArrayAttr::getValue(&v86);
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v16 = mlir::ArrayAttr::getValue(&v86);
  v18 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v15 + 80), (v16 + 16 * v17 - 32), *(*(*(*this + 48) + 96) + 48));
  mlir::getValues<unsigned long>(v18, v80);
  v78[0] = v79;
  v78[1] = 0x500000000;
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v19 = mlir::ArrayAttr::getValue(&v86);
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v20 = mlir::ArrayAttr::getValue(&v86);
  v22 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v19 + 96), (v20 + 16 * v21 - 16), *(*(*(*this + 48) + 96) + 56));
  mlir::getValues<unsigned long>(v22, v78);
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v23 = mlir::ArrayAttr::getValue(&v86);
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v24 = mlir::ArrayAttr::getValue(&v86);
  __p = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v23, (v24 + 16 * v25 - 112), **(*(*this + 48) + 96));
  v26 = mlir::FloatAttr::getValue(&__p, &v86);
  v27 = *(&v86 + 1);
  v28 = llvm::APFloatBase::PPCDoubleDouble(v26);
  if (v28 == v27)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt((&v86 + 8), &__p);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt((&v86 + 8), &__p);
  }

  v29 = v76;
  if (v76 < 0x41)
  {
    if (__p >= 0xFFFF)
    {
      LOWORD(v30) = -1;
    }

    else
    {
      LOWORD(v30) = __p;
    }

    goto LABEL_15;
  }

  if (v29 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
  {
    if (*__p >= 0xFFFFuLL)
    {
      LOWORD(v30) = -1;
    }

    else
    {
      v30 = *__p;
    }

    goto LABEL_14;
  }

  LOWORD(v30) = -1;
  if (__p)
  {
LABEL_14:
    operator delete[](__p);
  }

LABEL_15:
  if (v28 == *(&v86 + 1))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v86 + 8));
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&v86 + 8));
  }

  v31 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v31)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  *&v86 = v31;
  *(&v86 + 1) = v32;
  mlir::CallableOpInterface::getArgAttrsAttr(&v86);
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v34 = mlir::ArrayAttr::getValue(&v86);
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v35 = mlir::ArrayAttr::getValue(&v86);
  *&v86 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v34 + 16), (v35 + 16 * v36 - 96), *(*(*(*this + 48) + 96) + 8));
  *(v5 + 39) = mlir::IntegerAttr::getInt(&v86);
  v37 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v37)
  {
    v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
  }

  else
  {
    v38 = 0;
  }

  *&v86 = v37;
  *(&v86 + 1) = v38;
  mlir::CallableOpInterface::getArgAttrsAttr(&v86);
  v40 = v39;
  __p = v77;
  v76 = 0x500000000;
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v41 = mlir::ArrayAttr::getValue(&v86);
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v42 = mlir::ArrayAttr::getValue(&v86);
  v44 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v41 + 112), (v42 + 16 * v43), *(*(*(*this + 48) + 96) + 64));
  mlir::getValues<unsigned long>(v44, &__p);
  if (v40)
  {
    for (i = 0; i != v40; i = (i + 1))
    {
      DimFromIndex = mlir::anec::getDimFromIndex(i, v40);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v46 = dword_1E0999A44[DimFromIndex];
      }

      else
      {
        v46 = 5;
      }

      *&v86 = v46;
      DWORD1(v86) = *(__p + i);
      std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((v5 + 10), &v86);
    }
  }

  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v48 = mlir::ArrayAttr::getValue(&v86);
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v49 = mlir::ArrayAttr::getValue(&v86);
  CropDimsAttr = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v48 + 64), (v49 + 16 * v50 - 48), *(*(*(*this + 48) + 96) + 40));
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&CropDimsAttr, &v86);
  v73 = v86;
  *&v74 = v87 + 1;
  *(&v74 + 1) = *(&v87 + 1);
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v73, &v86);
  v51 = DWORD2(v86);
  if (DWORD2(v86) >= 0x41)
  {
    v52 = v51 - llvm::APInt::countLeadingZerosSlowCase(&v86);
    v53 = v86;
    if (v52 <= 0x40)
    {
      v54 = *v86;
      if (*v86 >= 0x7FFFFFFFuLL)
      {
        LODWORD(v54) = 0x7FFFFFFF;
      }

      *(v5 + 46) = v54;
    }

    else
    {
      *(v5 + 46) = 0x7FFFFFFF;
      if (!v53)
      {
        goto LABEL_41;
      }
    }

    operator delete[](v53);
    goto LABEL_41;
  }

  if (v86 >> 31)
  {
    *(v5 + 46) = 0x7FFFFFFF;
  }

  else
  {
    *(v5 + 46) = v86;
  }

LABEL_41:
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v55 = mlir::ArrayAttr::getValue(&v86);
  *&v86 = mlir::Operation::getAttrDictionary(*this);
  v56 = mlir::ArrayAttr::getValue(&v86);
  CropDimsAttr = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v55 + 64), (v56 + 16 * v57 - 48), *(*(*(*this + 48) + 96) + 40));
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&CropDimsAttr, &v86);
  v73 = v86;
  v74 = v87;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v73, &v86);
  v58 = DWORD2(v86);
  if (DWORD2(v86) >= 0x41)
  {
    v59 = v58 - llvm::APInt::countLeadingZerosSlowCase(&v86);
    v60 = v86;
    if (v59 <= 0x40)
    {
      v61 = *v86;
      if (*v86 >= 0x7FFFFFFFuLL)
      {
        LODWORD(v61) = 0x7FFFFFFF;
      }

      *(v5 + 47) = v61;
    }

    else
    {
      *(v5 + 47) = 0x7FFFFFFF;
      if (!v60)
      {
        goto LABEL_52;
      }
    }

    operator delete[](v60);
    goto LABEL_52;
  }

  if (v86 >> 31)
  {
    *(v5 + 47) = 0x7FFFFFFF;
  }

  else
  {
    *(v5 + 47) = v86;
  }

LABEL_52:
  CropDimsAttr = mlir::anec::CropResize::getCropDimsAttr(this);
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&CropDimsAttr, &v86);
  v73 = v86;
  *&v74 = v87 + 1;
  *(&v74 + 1) = *(&v87 + 1);
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v73, &v86);
  v62 = DWORD2(v86);
  if (DWORD2(v86) >= 0x41)
  {
    v63 = v62 - llvm::APInt::countLeadingZerosSlowCase(&v86);
    v64 = v86;
    if (v63 <= 0x40)
    {
      v65 = *v86;
      if (*v86 >= 0x7FFFFFFFuLL)
      {
        LODWORD(v65) = 0x7FFFFFFF;
      }

      *(v5 + 48) = v65;
    }

    else
    {
      *(v5 + 48) = 0x7FFFFFFF;
      if (!v64)
      {
        goto LABEL_63;
      }
    }

    operator delete[](v64);
    goto LABEL_63;
  }

  if (v86 >> 31)
  {
    *(v5 + 48) = 0x7FFFFFFF;
  }

  else
  {
    *(v5 + 48) = v86;
  }

LABEL_63:
  CropDimsAttr = mlir::anec::CropResize::getCropDimsAttr(this);
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&CropDimsAttr, &v86);
  v73 = v86;
  v74 = v87;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v73, &v86);
  v66 = DWORD2(v86);
  if (DWORD2(v86) >= 0x41)
  {
    v68 = v66 - llvm::APInt::countLeadingZerosSlowCase(&v86);
    v69 = v86;
    if (v68 <= 0x40)
    {
      v70 = *v86;
      if (*v86 >= 0x7FFFFFFFuLL)
      {
        LODWORD(v70) = 0x7FFFFFFF;
      }

      *(v5 + 49) = v70;
      v67 = a3;
    }

    else
    {
      *(v5 + 49) = 0x7FFFFFFF;
      v67 = a3;
      if (!v69)
      {
        goto LABEL_74;
      }
    }

    operator delete[](v69);
    goto LABEL_74;
  }

  v67 = a3;
  if (v86 >> 31)
  {
    *(v5 + 49) = 0x7FFFFFFF;
  }

  else
  {
    *(v5 + 49) = v86;
  }

LABEL_74:
  *v67 = v5;
  if (__p != v77)
  {
    free(__p);
  }

  if (v78[0] != v79)
  {
    free(v78[0]);
  }

  if (v80[0] != v81)
  {
    free(v80[0]);
  }

  if (v82[0] != v83)
  {
    free(v82[0]);
  }

  if (v84[0] != v85)
  {
    free(v84[0]);
  }
}

uint64_t mlir::anec::CropResize::getCoordinateMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 16));
}

uint64_t mlir::anec::CropResize::getNormalizedRange(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 64), *(*(*(*this + 6) + 96) + 32));
}

uint64_t mlir::anec::CropResize::getPaddingModes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 80), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 48));
}

uint64_t mlir::anec::CropResize::getSamplingMethod(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 96), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 56));
}

void *mlir::anec::CropResize::getBackgroundValue@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 112), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

void mlir::anec::anonymous namespace::fillZinIrTextureInfo(uint64_t a1, void *a2, void *a3, void *a4, void *a5, __int16 a6, unsigned int a7)
{
  if (a7)
  {
    v12 = 0;
    v13 = a7;
    do
    {
      DimFromIndex = mlir::anec::getDimFromIndex(v12, v13);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v14 = dword_1E0999A44[DimFromIndex];
      }

      else
      {
        v14 = 5;
      }

      v21 = 0;
      v20 = v14;
      v15 = dword_1E0999A18[*(*a2 + 8 * v12)];
      LODWORD(v21) = *(*a3 + 8 * v12) != 0;
      HIDWORD(v21) = v15;
      std::vector<ZinIrCoordinateInfo>::push_back[abi:nn200100](a1 + 80, &v20);
      v19 = 0;
      v19 = __PAIR64__(dword_1E0999A24[*(*a4 + 8 * v12)], v14);
      std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a1 + 104, &v19);
      v18 = 0;
      v18 = __PAIR64__(*(*a5 + 8 * v12) != 0, v14);
      std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a1 + 128, &v18);
      v12 = (v12 + 1);
    }

    while (v13 != v12);
  }

  *(a1 + 152) = a6;
}

uint64_t mlir::anec::CropResize::getBoxCoordinateMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 96), *(*(*(*this + 6) + 96) + 8));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

uint64_t mlir::anec::CropResize::getSamplingMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 112), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 64));
}

uint64_t mlir::anec::CropResize::getOutputDims(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 64), (v3 + 16 * v4 - 48), *(*(*(*this + 6) + 96) + 40));
}

uint64_t mlir::anec::CropResize::addOpToNetwork(mlir::anec::CropResize *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::CropResize::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::CropResize::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3)
{
  v131 = *MEMORY[0x1E69E9840];
  ANECCropResizeLayerDescInitialize();
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v7 = v6;
  IndexFromDim = mlir::anec::getIndexFromDim(3, v6);
  if ((v9 & 1) == 0 || (v10 = IndexFromDim, v11 = mlir::anec::getIndexFromDim(4, v7), (v12 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v118 = v120;
  v120[0] = v10;
  v120[1] = v11;
  v119 = 0x200000002;
  v114 = &ANECDimension;
  v117 = 0;
  ANECDimension = 0;
  v115 = 0x200000002;
  v112[0] = v113;
  v112[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::ArrayAttr::getValue(buffer);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 112), (v14 + 16 * v15), *(*(*(*a1 + 6) + 96) + 64));
  mlir::getValues<unsigned long>(v16, v112);
  v110[0] = v111;
  v110[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::ArrayAttr::getValue(buffer);
  v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v17 + 96), (v18 + 16 * v19 - 16), *(*(*(*a1 + 6) + 96) + 56));
  mlir::getValues<unsigned long>(v20, v110);
  v108[0] = v109;
  v108[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v21 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v22 = mlir::ArrayAttr::getValue(buffer);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v21 + 80), (v22 + 16 * v23 - 32), *(*(*(*a1 + 6) + 96) + 48));
  mlir::getValues<unsigned long>(v24, v108);
  v106[0] = v107;
  v106[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v25 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v26 = mlir::ArrayAttr::getValue(buffer);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), (v26 + 16 * v27 - 80), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v28, v106);
  v104[0] = v105;
  v104[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v29 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v30 = mlir::ArrayAttr::getValue(buffer);
  v32 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v29 + 48), (v30 + 16 * v31 - 64), *(*(*(*a1 + 6) + 96) + 32));
  mlir::getValues<unsigned long>(v32, v104);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v33 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v34 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v33 + 16), (v34 + 16 * v35 - 96), *(*(*(*a1 + 6) + 96) + 8));
  v68 = *(&off_1E86D38D0 + mlir::IntegerAttr::getInt(buffer));
  v69 = *v114;
  v36 = *v118;
  v70 = *(&off_1E86D3950 + *(v112[0] + *v118));
  v73 = *v114;
  if (*(v110[0] + v36))
  {
    v37 = @"NearestNeighbor";
  }

  else
  {
    v37 = @"Linear";
  }

  v74 = v37;
  v77 = *v114;
  v78 = *(&off_1E86D3980 + *(v108[0] + v36));
  v81 = *v114;
  v83 = *(&off_1E86D39C0 + *(v106[0] + v36));
  if (*(v104[0] + v36))
  {
    v38 = @"RangeMinusOneToOne";
  }

  else
  {
    v38 = @"RangeZeroToOne";
  }

  v82 = v38;
  v71 = *(v114 + 1);
  v39 = *(v118 + 1);
  v72 = *(&off_1E86D3950 + *(v112[0] + v39));
  v75 = *(v114 + 1);
  if (*(v110[0] + v39))
  {
    v40 = @"NearestNeighbor";
  }

  else
  {
    v40 = @"Linear";
  }

  v76 = v40;
  v79 = *(v114 + 1);
  v80 = *(&off_1E86D3980 + *(v108[0] + v39));
  v84 = *(v114 + 1);
  v86 = *(&off_1E86D39C0 + *(v106[0] + v39));
  if (*(v104[0] + v39))
  {
    v41 = @"RangeMinusOneToOne";
  }

  else
  {
    v41 = @"RangeZeroToOne";
  }

  v85 = v41;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v42 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v43 = mlir::ArrayAttr::getValue(buffer);
  v92[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v42, (v43 + 16 * v44 - 112), **(*(*a1 + 6) + 96));
  mlir::FloatAttr::getValue(v92, buffer);
  v87 = llvm::APFloat::convertToFloat(buffer);
  v45 = v122[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v46) == v45)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v122);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v122);
  }

  v102[0] = v103;
  v102[1] = 0xC00000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v47 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v48 = mlir::ArrayAttr::getValue(buffer);
  v50 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v47 + 64), (v48 + 16 * v49 - 48), *(*(*(*a1 + 6) + 96) + 40));
  mlir::getValues<unsigned int>(v50, v102);
  v89 = *v102[0];
  v88 = *(v102[0] + 1);
  v100[0] = v101;
  v100[1] = 0xC00000000;
  CropDimsAttr = mlir::anec::CropResize::getCropDimsAttr(a1);
  mlir::getValues<unsigned int>(CropDimsAttr, v100);
  v91 = *v100[0];
  v90 = *(v100[0] + 1);
  v98[0] = v99;
  v98[1] = 0x100000000;
  v52 = 1;
  *buffer = 1;
  v92[0] = 0;
  ANECUnitValidatorCreate();
  v66 = 0;
  v67 = 0;
  if (ANECValidateCropResizeLayer())
  {
    v63 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v92);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v93, "Invalid configuration", 21);
    std::stringbuf::str();
    v92[0] = *MEMORY[0x1E69E54D8];
    v53 = *(MEMORY[0x1E69E54D8] + 72);
    *(v92 + *(v92[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v93 = v53;
    v94 = MEMORY[0x1E69E5548] + 16;
    if (v96 < 0)
    {
      operator delete(v95[7].__locale_);
    }

    v94 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v95);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v97);
    LOWORD(v95[0].__locale_) = 260;
    v92[0] = &v64;
    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v130 == 1)
    {
      if (v129 != &v130)
      {
        free(v129);
      }

      v54 = v127;
      if (v127)
      {
        v55 = v128;
        v56 = v127;
        if (v128 != v127)
        {
          do
          {
            v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
          }

          while (v55 != v54);
          v56 = v127;
        }

        v128 = v54;
        operator delete(v56);
      }

      v57 = v125;
      if (v125)
      {
        v58 = v126;
        v59 = v125;
        if (v126 != v125)
        {
          do
          {
            v61 = *--v58;
            v60 = v61;
            *v58 = 0;
            if (v61)
            {
              operator delete[](v60);
            }
          }

          while (v58 != v57);
          v59 = v125;
        }

        v126 = v57;
        operator delete(v59);
      }

      if (v123 != &v124)
      {
        free(v123);
      }
    }

    if (v65 < 0)
    {
      operator delete(v64);
    }
  }

  ANECUnitValidatorDelete();
  if (v98[0] != v99)
  {
    free(v98[0]);
  }

  if (v100[0] != v101)
  {
    free(v100[0]);
  }

  if (v102[0] != v103)
  {
    free(v102[0]);
  }

  if (v104[0] != v105)
  {
    free(v104[0]);
  }

  if (v106[0] != v107)
  {
    free(v106[0]);
  }

  if (v108[0] != v109)
  {
    free(v108[0]);
  }

  if (v110[0] != v111)
  {
    free(v110[0]);
  }

  if (v112[0] != v113)
  {
    free(v112[0]);
  }

  if (v114 != &ANECDimension)
  {
    free(v114);
  }

  if (v118 != v120)
  {
    free(v118);
  }

  return v52;
}

void mlir::getValues<unsigned int>(uint64_t a1, uint64_t a2)
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
    v7 = *(a2 + 8);
    if (v7 >= *(a2 + 12))
    {
      llvm::SmallVectorTemplateBase<int,true>::push_back(a2, v6);
    }

    else
    {
      *(*a2 + 4 * v7) = v6;
      ++*(a2 + 8);
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

uint64_t mlir::anec::GatherND::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *x1_0, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = *MEMORY[0x1E69E9840];
  v59 = a6;
  LOBYTE(v60) = 0;
  v61 = 0;
  v62 = a7;
  v63 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v59);
    if (v61 == 1)
    {
      v61 = 0;
    }

    mlir::OperationName::OperationName(&v60, "anec.gather_nd", 14, Context);
    v61 = 1;
    a1 = v15;
  }

  v64 = a4;
  v65 = a5;
  v17 = mlir::UnknownLoc::get(a1, x1_0);
  if (a3)
  {
    v18.var0.var0 = x1_0;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::GatherNDAdaptor::verify(&v59, v18))
  {
    v36.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(x1_0, v36, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v50[0] = v20;
  v50[1] = v19;
  v21 = mlir::TypeRange::dereference_iterator(a9, 1);
  v22 = v21;
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  v49[0] = v22;
  v49[1] = v21;
  mlir::CallableOpInterface::getArgAttrsAttr(v50);
  v24 = v23;
  IndexFromDim = mlir::anec::getIndexFromDim(1, v23);
  if ((v26 & 1) == 0)
  {
    v48 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::GatherNDAdaptor::verify(v48, v67);
  }

  v27 = IndexFromDim;
  v56 = v58;
  v57 = 0x500000000;
  Value = mlir::AffineMapAttr::getValue(&v59);
  v29 = mlir::DictionaryAttr::end(&v59);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v29, **(v60 + 96));
  mlir::getValues<unsigned long>(v30, &v56);
  v31 = *(mlir::CallableOpInterface::getArgAttrsAttr(v49) + 8 * v27);
  v32 = v57;
  v53 = v55;
  v54 = 0x500000000;
  if (!v24)
  {
    goto LABEL_18;
  }

  if (v24 < 6)
  {
    v33 = 0;
    v34 = v24;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v55, v24, 8);
    v33 = v54;
    v34 = v24 - v54;
    if (v24 == v54)
    {
      LODWORD(v54) = v24;
LABEL_22:
      v38 = 0;
      v39 = v31 / v32;
      do
      {
        v41 = *(mlir::CallableOpInterface::getArgAttrsAttr(v50) + 8 * v38);
        v40 = v39;
        if (v27 != v38)
        {
          v40 = *(mlir::CallableOpInterface::getArgAttrsAttr(v49) + 8 * v38);
        }

        if (v57)
        {
          v42 = 8 * v57;
          v43 = v56;
          while (*v43 != v38)
          {
            ++v43;
            v42 -= 8;
            if (!v42)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          v43 = v56;
        }

        if (v43 == (v56 + 8 * v57))
        {
LABEL_23:
          if (v41 > v40)
          {
            v40 = v41;
          }
        }

        v35 = v53;
        *(v53 + v38++) = v40;
      }

      while (v38 != v24);
      LODWORD(v24) = v54;
      goto LABEL_37;
    }
  }

  bzero(v53 + 8 * v33, 8 * v34);
  LODWORD(v54) = v24;
  if (v24 >= 1)
  {
    goto LABEL_22;
  }

LABEL_18:
  v35 = v53;
LABEL_37:
  *&v51 = v35;
  *(&v51 + 1) = v24;
  v52 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v50);
  v45 = mlir::ShapedType::cloneWith(v50, &v51, isSplat);
  v46 = *(a11 + 8);
  if (v46 >= *(a11 + 12))
  {
    v47 = v45;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v46 + 1, 8);
    v45 = v47;
    LODWORD(v46) = *(a11 + 8);
  }

  *(*a11 + 8 * v46) = v45;
  ++*(a11 + 8);
  if (v53 != v55)
  {
    free(v53);
  }

  if (v56 != v58)
  {
    free(v56);
  }

  return 1;
}

BOOL mlir::anec::GatherNDAdaptor::verify(mlir::anec::GatherNDAdaptor *this, Location a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v33 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v34[0] = v17;
        v34[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v34);
        if (v18 == 1 && mlir::hasUniqueValues(v14))
        {
          v30 = v14;
          if (mlir::DenseElementsAttr::getNumElements(&v30))
          {
            v27 = v14;
            v28[0] = mlir::ArrayAttr::getValue(&v27);
            v28[1] = v19;
            isSplat = mlir::ElementsAttr::isSplat(v28);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v31[0] = "'anec.gather_nd' op attribute 'axes' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 1";
      v32 = 259;
      mlir::emitError(a2.var0.var0, v31, v34);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 == 1)
      {
        if (v41 != &v42)
        {
          free(v41);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v40;
          v22 = __p;
          if (v40 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v40 = v20;
          operator delete(v22);
        }

        v9 = v37;
        if (!v37)
        {
          goto LABEL_48;
        }

        v23 = v38;
        v11 = v37;
        if (v38 == v37)
        {
LABEL_47:
          v38 = v9;
          operator delete(v11);
LABEL_48:
          if (v35 != &v36)
          {
            free(v35);
          }

          return v5;
        }

        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v23 != v9);
LABEL_46:
        v11 = v37;
        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.gather_nd' op requires attribute 'axes'";
  v32 = 259;
  mlir::emitError(a2.var0.var0, v31, v34);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v40;
      v8 = __p;
      if (v40 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v40 = v6;
      operator delete(v8);
    }

    v9 = v37;
    if (!v37)
    {
      goto LABEL_48;
    }

    v10 = v38;
    v11 = v37;
    if (v38 == v37)
    {
      goto LABEL_47;
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
    goto LABEL_46;
  }

  return v5;
}

void mlir::anec::GatherND::getZinIrUnitInfo(mlir::anec::GatherND *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v18[6] = *MEMORY[0x1E69E9840];
  v6 = operator new(0xB8uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 138) = 0u;
  *v6 = &unk_1F5B33F28;
  *(v6 + 1) = 0;
  *(v6 + 20) = 0;
  *(v6 + 21) = 0;
  *(v6 + 22) = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 39, a2, 0, 0);
  v16 = v18;
  v17 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*this + 48) + 96));
  mlir::getValues<unsigned long>(v10, &v16);
  v11 = v16;
  if (v17)
  {
    v12 = 8 * v17;
    do
    {
      v13 = 5;
      DimFromIndex = mlir::anec::getDimFromIndex(*v11, 5uLL);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v13 = dword_1E0999A44[DimFromIndex];
      }

      LODWORD(AttrDictionary) = v13;
      std::vector<ZinIrDimension>::push_back[abi:nn200100]((v6 + 160), &AttrDictionary);
      ++v11;
      v12 -= 8;
    }

    while (v12);
    v11 = v16;
  }

  *a3 = v6;
  if (v11 != v18)
  {
    free(v11);
  }
}

void std::vector<ZinIrDimension>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 >> 62)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v11 = a2;
      v12 = operator new(4 * v10);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[4 * (v7 >> 2)];
    *v13 = *a2;
    v5 = v13 + 4;
    memcpy(v12, v6, v7);
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = &v12[4 * v10];
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

BOOL mlir::anec::GatherND::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  ANECGatherLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::ArrayAttr::getValue(buffer);
  v32[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  v32[1] = mlir::DenseElementsAttr::getNumElements(v32);
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v10 = v9;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v32[0], 0);
  v11 = v32[0];
  NumElements = mlir::DenseElementsAttr::getNumElements(v32);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, v11, NumElements);
  if (v44 != v35)
  {
    v24 = &v33;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v40);
      v25 = v41;
      if (v41 >= 0x41)
      {
        if (v25 - llvm::APInt::countLeadingZerosSlowCase(&v40) <= 0x40)
        {
          v26 = *v40;
        }

        else
        {
          v26 = -1;
        }
      }

      else
      {
        v26 = v40;
      }

      if (v41 >= 0x41 && v40)
      {
        operator delete[](v40);
      }

      ++v44;
      ++v24;
    }

    while (v44 != v35);
  }

  v13 = 1;
  *buffer = 1;
  v34[0] = 0;
  ANECUnitValidatorCreate();
  v40 = v42;
  v41 = 0x100000000;
  v30 = 0;
  v31 = 0;
  if (ANECValidateGatherLayer())
  {
    v14 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v34);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v35, "Invalid configuration", 21);
    std::stringbuf::str();
    v34[0] = *MEMORY[0x1E69E54D8];
    v15 = *(MEMORY[0x1E69E54D8] + 72);
    *(v34 + *(v34[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v35 = v15;
    v36 = MEMORY[0x1E69E5548] + 16;
    if (v38 < 0)
    {
      operator delete(v37[7].__locale_);
    }

    v36 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v37);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v39);
    LOWORD(v37[0].__locale_) = 260;
    v34[0] = &v28;
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v16 = v49;
      if (v49)
      {
        v17 = v50;
        v18 = v49;
        if (v50 != v49)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = v49;
        }

        v50 = v16;
        operator delete(v18);
      }

      v19 = v47;
      if (v47)
      {
        v20 = v48;
        v21 = v47;
        if (v48 != v47)
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
          v21 = v47;
        }

        v48 = v19;
        operator delete(v21);
      }

      if (v45 != &v46)
      {
        free(v45);
      }
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }
  }

  if (v40 != v42)
  {
    free(v40);
  }

  ANECUnitValidatorDelete();
  return v13;
}

uint64_t mlir::anec::GatherND::addOpToNetwork(mlir::anec::GatherND *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::GatherND::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::ArgMinMax::inferPromotedReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v63 = *MEMORY[0x1E69E9840];
  v56 = a6;
  LOBYTE(v57) = 0;
  v58 = 0;
  v59 = a7;
  v60 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(&v57, "anec.arg_min_max", 16, Context);
    v58 = 1;
  }

  v61 = a4;
  v62 = a5;
  v17 = mlir::UnknownLoc::get(this, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::ArgMinMaxAdaptor::verify(&v56, v18))
  {
    v35.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v35, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v47[0] = v20;
  v47[1] = v19;
  v53 = v55;
  v54 = 0x600000000;
  Value = mlir::AffineMapAttr::getValue(&v56);
  v22 = mlir::DictionaryAttr::end(&v56);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v22 - 64), **(v57 + 96));
  mlir::getValues<long long>(v23, &v53);
  if (v54)
  {
    v24 = v53;
    v25 = 8 * v54;
    while (1)
    {
      v26 = *v24;
      mlir::CallableOpInterface::getArgAttrsAttr(v47);
      if (v27 <= v26)
      {
        break;
      }

      ++v24;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_15;
      }
    }

    v44 = v47[0];
    v45 = *(a11 + 8);
    if (v45 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v45 + 1, 8);
      LODWORD(v45) = *(a11 + 8);
    }

    *(*a11 + 8 * v45) = v44;
    ++*(a11 + 8);
    goto LABEL_31;
  }

LABEL_15:
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v47);
  v29 = mlir::CallableOpInterface::getArgAttrsAttr(v47);
  v31 = (v29 + 8 * v30);
  v50 = v52;
  v51 = 0x600000000;
  v32 = (v31 - ArgAttrsAttr) >> 3;
  if (v32 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v32, 8);
    v33 = v51;
    v34 = v50;
    if (v31 == ArgAttrsAttr)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v33 = 0;
  v34 = v52;
  if (v31 != ArgAttrsAttr)
  {
LABEL_20:
    memcpy(&v34[8 * v33], ArgAttrsAttr, v31 - ArgAttrsAttr);
    v33 = v51;
    v34 = v50;
  }

LABEL_21:
  v37 = v33 + ((v31 - ArgAttrsAttr) >> 3);
  LODWORD(v51) = v33 + ((v31 - ArgAttrsAttr) >> 3);
  if (v54)
  {
    v38 = v53;
    v39 = 8 * v54;
    do
    {
      v40 = *v38++;
      *&v34[8 * v40] = 1;
      v39 -= 8;
    }

    while (v39);
  }

  v41 = mlir::IntegerType::get(this, 16, 2u);
  *&v48 = v34;
  *(&v48 + 1) = v37;
  v49 = 1;
  v42 = mlir::ShapedType::cloneWith(v47, &v48, v41);
  v43 = *(a11 + 8);
  if (v43 >= *(a11 + 12))
  {
    v46 = v42;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v43 + 1, 8);
    v42 = v46;
    LODWORD(v43) = *(a11 + 8);
  }

  *(*a11 + 8 * v43) = v42;
  ++*(a11 + 8);
  if (v50 != v52)
  {
    free(v50);
  }

LABEL_31:
  if (v53 != v55)
  {
    free(v53);
  }

  return 1;
}

BOOL mlir::anec::ArgMinMaxAdaptor::verify(mlir::anec::ArgMinMaxAdaptor *this, Location a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v75 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v75); i != mlir::DictionaryAttr::end(&v75); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v75))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v75))
          {
            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v75))
              {
                if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 24))
                {
                  v36 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v72 = "'anec.arg_min_max' op requires attribute 'stride_values'";
                      v74 = 259;
                      mlir::emitError(a2.var0.var0, &v72, &v77);
                      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
                      if (v77)
                      {
                        mlir::InFlightDiagnostic::report(&v77);
                      }

                      if (v86 == 1)
                      {
                        mlir::Diagnostic::~Diagnostic(&v78);
                      }

                      return v5;
                    }

                    if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 32))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v37 = *(i + 1);
                  if (!v14)
                  {
                    goto LABEL_106;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_129;
                  }

                  v38 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v72 = v14;
                  v73 = v38;
                  Type = mlir::ElementsAttr::getType(&v72);
                  v40 = Type;
                  if (Type)
                  {
                    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                  }

                  v77 = v40;
                  v78 = Type;
                  mlir::CallableOpInterface::getArgAttrsAttr(&v77);
                  if (v41)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                    v76[0] = v14;
                    v76[1] = v42;
                    v43 = mlir::ElementsAttr::getType(v76);
                    v44 = v43;
                    if (v43)
                    {
                      v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
                    }

                    Value = v44;
                    v71 = v43;
                    mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                    if (v45 != 1)
                    {
                      goto LABEL_129;
                    }
                  }

                  if (mlir::hasUniqueValues(v14) && (v69 = v14, mlir::DenseElementsAttr::getNumElements(&v69)) && (v66 = v14, v67[0] = mlir::ArrayAttr::getValue(&v66), v67[1] = v46, isSplat = mlir::ElementsAttr::isSplat(v67), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
LABEL_106:
                    if (v28 && (llvm::CastInfo<mlir::anec::ArgMinMaxModeAttr,mlir::Attribute const,void>::isPossible(v28) & 1) == 0)
                    {
                      v65 = "'anec.arg_min_max' op attribute 'mode' failed to satisfy constraint: valid ArgMinMaxMode";
                    }

                    else
                    {
                      if (!v21)
                      {
                        goto LABEL_137;
                      }

                      if (!mlir::DenseIntElementsAttr::classof(v21))
                      {
                        goto LABEL_130;
                      }

                      v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                      v72 = v21;
                      v73 = v47;
                      v48 = mlir::ElementsAttr::getType(&v72);
                      v49 = v48;
                      if (v48)
                      {
                        v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
                      }

                      v77 = v49;
                      v78 = v48;
                      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v77);
                      v76[0] = 2;
                      if (v51 == 1 && *ArgAttrsAttr == v76[0] && (v69 = v21, Value = mlir::ArrayAttr::getValue(&v69), v71 = v52, v67[0] = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(v67, 64)))
                      {
LABEL_137:
                        if (!v37)
                        {
                          goto LABEL_138;
                        }

                        if (!mlir::DenseIntElementsAttr::classof(v37))
                        {
                          goto LABEL_132;
                        }

                        v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v37 + 8);
                        v72 = v37;
                        v73 = v53;
                        v54 = mlir::ElementsAttr::getType(&v72);
                        v55 = v54;
                        if (v54)
                        {
                          v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
                        }

                        v77 = v55;
                        v78 = v54;
                        v56 = mlir::CallableOpInterface::getArgAttrsAttr(&v77);
                        v76[0] = 2;
                        if (v57 == 1 && *v56 == v76[0] && (v69 = v37, Value = mlir::ArrayAttr::getValue(&v69), v71 = v58, v67[0] = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(v67, 64)))
                        {
LABEL_138:
                          if (!v36)
                          {
                            return 1;
                          }

                          if (mlir::DenseIntElementsAttr::classof(v36))
                          {
                            v59 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v36 + 8);
                            v72 = v36;
                            v73 = v59;
                            v60 = mlir::ElementsAttr::getType(&v72);
                            v61 = v60;
                            if (v60)
                            {
                              v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
                            }

                            v77 = v61;
                            v78 = v60;
                            v62 = mlir::CallableOpInterface::getArgAttrsAttr(&v77);
                            v76[0] = 4;
                            if (v63 == 1 && *v62 == v76[0])
                            {
                              v69 = v36;
                              Value = mlir::ArrayAttr::getValue(&v69);
                              v71 = v64;
                              v67[0] = mlir::ElementsAttr::isSplat(&Value);
                              if (mlir::Type::isUnsignedInteger(v67, 64))
                              {
                                return 1;
                              }
                            }
                          }

                          v65 = "'anec.arg_min_max' op attribute 'pad_values' failed to satisfy constraint: ui64 elements attribute of shape {4}";
                        }

                        else
                        {
LABEL_132:
                          v65 = "'anec.arg_min_max' op attribute 'stride_values' failed to satisfy constraint: ui64 elements attribute of shape {2}";
                        }
                      }

                      else
                      {
LABEL_130:
                        v65 = "'anec.arg_min_max' op attribute 'kernel_size' failed to satisfy constraint: ui64 elements attribute of shape {2}";
                      }
                    }
                  }

                  else
                  {
LABEL_129:
                    v65 = "'anec.arg_min_max' op attribute 'axes' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 0/1";
                  }

                  v72 = v65;
                  v74 = 259;
                  mlir::emitError(a2.var0.var0, &v72, &v77);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v77);
                  return v5;
                }

                i = (i + 16);
              }

              v72 = "'anec.arg_min_max' op requires attribute 'pad_values'";
              v74 = 259;
              mlir::emitError(a2.var0.var0, &v72, &v77);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
              if (v77)
              {
                mlir::InFlightDiagnostic::report(&v77);
              }

              if (v86 != 1)
              {
                return v5;
              }

              if (v85 != &v86)
              {
                free(v85);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v84;
                v31 = __p;
                if (v84 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v84 = v29;
                operator delete(v31);
              }

              v9 = v81;
              if (!v81)
              {
                goto LABEL_83;
              }

              v32 = v82;
              v11 = v81;
              if (v82 == v81)
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

          v72 = "'anec.arg_min_max' op requires attribute 'mode'";
          v74 = 259;
          mlir::emitError(a2.var0.var0, &v72, &v77);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }

          if (v86 != 1)
          {
            return v5;
          }

          if (v85 != &v86)
          {
            free(v85);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v84;
            v24 = __p;
            if (v84 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v84 = v22;
            operator delete(v24);
          }

          v9 = v81;
          if (!v81)
          {
            goto LABEL_83;
          }

          v25 = v82;
          v11 = v81;
          if (v82 == v81)
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

      v72 = "'anec.arg_min_max' op requires attribute 'kernel_size'";
      v74 = 259;
      mlir::emitError(a2.var0.var0, &v72, &v77);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }

      if (v86 != 1)
      {
        return v5;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v84;
        v17 = __p;
        if (v84 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v84 = v15;
        operator delete(v17);
      }

      v9 = v81;
      if (!v81)
      {
        goto LABEL_83;
      }

      v18 = v82;
      v11 = v81;
      if (v82 == v81)
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
      v11 = v81;
      goto LABEL_82;
    }
  }

  v72 = "'anec.arg_min_max' op requires attribute 'axes'";
  v74 = 259;
  mlir::emitError(a2.var0.var0, &v72, &v77);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
  if (v77)
  {
    mlir::InFlightDiagnostic::report(&v77);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v84;
      v8 = __p;
      if (v84 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v84 = v6;
      operator delete(v8);
    }

    v9 = v81;
    if (v81)
    {
      v10 = v82;
      v11 = v81;
      if (v82 != v81)
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
      v82 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v79 != &v80)
    {
      free(v79);
    }
  }

  return v5;
}

void mlir::anec::ArgMinMax::getZinIrUnitInfo(mlir::anec::ArgMinMax *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v47[6] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x80uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33F50;
  *(v6 + 1) = 0;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  *(v6 + 5) = v7;
  *(v6 + 13) = 0;
  *(v6 + 14) = 0;
  *(v6 + 12) = 0;
  *(v6 + 30) = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 15, a2, 0, 0);
  v8 = *this;
  v9 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v8 = *this;
  }

  else
  {
    v10 = 0;
  }

  v38[0] = v9;
  v38[1] = v10;
  v46[0] = v47;
  v46[1] = 0x600000000;
  v44[0] = mlir::Operation::getAttrDictionary(v8);
  Value = mlir::ArrayAttr::getValue(v44);
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  v12 = mlir::ArrayAttr::getValue(v44);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 64), **(*(*this + 48) + 96));
  mlir::getValues<long long>(v14, v46);
  v15 = *v46[0];
  mlir::CallableOpInterface::getArgAttrsAttr(v38);
  DimFromIndex = mlir::anec::getDimFromIndex(v15, v16);
  if ((DimFromIndex & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v18 = DimFromIndex;
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  v19 = mlir::ArrayAttr::getValue(v44);
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  v20 = mlir::ArrayAttr::getValue(v44);
  v44[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v19 + 32), (v20 + 16 * v21 - 32), *(*(*(*this + 48) + 96) + 16));
  Int = mlir::IntegerAttr::getInt(v44);
  if (Int)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (Int)
  {
    v24 = 3;
  }

  else
  {
    v24 = 1;
  }

  if (v18 != 1)
  {
    v23 = v24;
  }

  *(v6 + 30) = v23;
  v44[0] = v45;
  v44[1] = 0x600000000;
  v42[0] = mlir::Operation::getAttrDictionary(*this);
  v25 = mlir::ArrayAttr::getValue(v42);
  v42[0] = mlir::Operation::getAttrDictionary(*this);
  v26 = mlir::ArrayAttr::getValue(v42);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 16), (v26 + 16 * v27 - 48), *(*(*(*this + 48) + 96) + 8));
  mlir::getValues<long long>(v28, v44);
  *(v6 + 10) = vmovn_s64(*v44[0]);
  if (v18 == 3 || (*(v6 + 20) = 1, v18 != 4))
  {
    *(v6 + 21) = 1;
  }

  v42[0] = v43;
  v42[1] = 0x600000000;
  v40[0] = mlir::Operation::getAttrDictionary(*this);
  v29 = mlir::ArrayAttr::getValue(v40);
  v40[0] = mlir::Operation::getAttrDictionary(*this);
  v30 = mlir::ArrayAttr::getValue(v40);
  v32 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v29 + 64), (v30 + 16 * v31), *(*(*(*this + 48) + 96) + 32));
  mlir::getValues<long long>(v32, v42);
  *(v6 + 11) = vmovn_s64(*v42[0]);
  v40[0] = v41;
  v40[1] = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v33 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v34 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v36 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v33 + 48), (v34 + 16 * v35 - 16), *(*(*(*this + 48) + 96) + 24));
  mlir::getValues<long long>(v36, v40);
  v37 = v40[0];
  *(v6 + 6) = vuzp1q_s32(*(v40[0] + 1), *v40[0]);
  *a3 = v6;
  if (v37 != v41)
  {
    free(v37);
  }

  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }
}

uint64_t mlir::anec::ArgMinMax::getAxes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 64), **(*(*this + 6) + 96));
}

uint64_t mlir::anec::ArgMinMax::getMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 16));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

uint64_t mlir::anec::ArgMinMax::getKernelSize(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 48), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::ArgMinMax::getStrideValues(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 64), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
}

uint64_t mlir::anec::ArgMinMax::getPadValues(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 24));
}

BOOL mlir::anec::ArgMinMax::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v112 = *MEMORY[0x1E69E9840];
  v67 = *a2;
  v100 = v102;
  v101 = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::ArrayAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8 - 64), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v9, &v100);
  if (v101 < 3)
  {
    v20 = *v100;
    mlir::CallableOpInterface::getArgAttrsAttr(&v67);
    DimFromIndex = mlir::anec::getDimFromIndex(v20, v21);
    if ((DimFromIndex & 0x100000000) != 0)
    {
      v32 = DimFromIndex;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v33 = mlir::ArrayAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v34 = mlir::ArrayAttr::getValue(buffer);
      *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v33 + 32), (v34 + 16 * v35 - 32), *(*(*(*a1 + 6) + 96) + 16));
      Int = mlir::IntegerAttr::getInt(buffer);
      v37 = @"SpatialArgMin";
      v38 = @"SpatialArgMax";
      if (v32 == 1)
      {
        v37 = @"ChannelArgMin";
        v38 = @"ChannelArgMax";
      }

      if (Int == 1)
      {
        v37 = v38;
      }

      v68 = v37;
      v98[0] = v99;
      v98[1] = 0x600000000;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v39 = mlir::ArrayAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v40 = mlir::ArrayAttr::getValue(buffer);
      v42 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v39 + 16), (v40 + 16 * v41 - 48), *(*(*(*a1 + 6) + 96) + 8));
      mlir::getValues<unsigned long>(v42, v98);
      v11 = 1;
      v70 = 1;
      v69 = vextq_s8(*v98[0], *v98[0], 8uLL);
      v96[0] = v97;
      v96[1] = 0x600000000;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v43 = mlir::ArrayAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v44 = mlir::ArrayAttr::getValue(buffer);
      v46 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v43 + 64), (v44 + 16 * v45), *(*(*(*a1 + 6) + 96) + 32));
      mlir::getValues<unsigned long>(v46, v96);
      v73 = 1;
      v72 = *v96[0];
      v71 = *(v96[0] + 1);
      v94[0] = v95;
      v94[1] = 0xC00000000;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v47 = mlir::ArrayAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v48 = mlir::ArrayAttr::getValue(buffer);
      v50 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v47 + 48), (v48 + 16 * v49 - 16), *(*(*(*a1 + 6) + 96) + 24));
      mlir::getValues<int>(v50, v94);
      v78 = 0;
      v79 = 0;
      v76 = *v94[0];
      v77 = *(v94[0] + 1);
      v74 = *(v94[0] + 2);
      v75 = *(v94[0] + 3);
      *buffer = 1;
      v80 = 0;
      ANECUnitValidatorCreate();
      v91[0] = v92;
      v91[1] = 0x100000000;
      v65 = 0;
      v66 = 0;
      if (ANECValidateArgMinMaxLayer())
      {
        v62 = *a1;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v80);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v82, "Invalid configuration", 21);
        std::stringbuf::str();
        v80 = *MEMORY[0x1E69E54D8];
        v51 = *(MEMORY[0x1E69E54D8] + 72);
        *(&v80 + *(v80 - 3)) = *(MEMORY[0x1E69E54D8] + 64);
        v82 = v51;
        v83 = MEMORY[0x1E69E5548] + 16;
        if (v89 < 0)
        {
          operator delete(v88[2]);
        }

        v83 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v84);
        std::iostream::~basic_iostream();
        MEMORY[0x1E12E5AA0](&v90);
        LOWORD(v84.__locale_) = 260;
        v80 = &v63;
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
        if (*buffer)
        {
          mlir::InFlightDiagnostic::report(buffer);
        }

        if (v111[0] == 1)
        {
          if (v110 != v111)
          {
            free(v110);
          }

          v52 = __p;
          if (__p)
          {
            v53 = v109;
            v54 = __p;
            if (v109 != __p)
            {
              do
              {
                v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
              }

              while (v53 != v52);
              v54 = __p;
            }

            v109 = v52;
            operator delete(v54);
          }

          v55 = v106;
          if (v106)
          {
            v56 = v107;
            v57 = v106;
            if (v107 != v106)
            {
              do
              {
                v59 = *--v56;
                v58 = v59;
                *v56 = 0;
                if (v59)
                {
                  operator delete[](v58);
                }
              }

              while (v56 != v55);
              v57 = v106;
            }

            v107 = v55;
            operator delete(v57);
          }

          if (v104 != v105)
          {
            free(v104);
          }
        }

        if (v64 < 0)
        {
          operator delete(v63);
        }
      }

      if (v91[0] != v92)
      {
        free(v91[0]);
      }

      ANECUnitValidatorDelete();
      if (v94[0] != v95)
      {
        free(v94[0]);
      }

      if (v96[0] != v97)
      {
        free(v96[0]);
      }

      v60 = v98[0];
      if (v98[0] != v99)
      {
LABEL_61:
        free(v60);
      }
    }

    else
    {
      v23 = *a1;
      v24 = v100;
      mlir::CallableOpInterface::getArgAttrsAttr(&v67);
      v80 = "failed: found axis ({0}) incompatible with rank of tensor input ({1}). ArgMin/Max is supported only on Channel or Spatial dimensions.";
      v81 = 133;
      v82 = v88;
      v83 = 2;
      LOBYTE(v84.__locale_) = 1;
      v85 = &unk_1F5B17218;
      v86 = v24;
      v87[0] = &unk_1F5B17290;
      v87[1] = v25;
      v88[0] = &v85;
      v88[1] = v87;
      v93 = 263;
      v91[0] = &v80;
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
      if (*buffer)
      {
        mlir::InFlightDiagnostic::report(buffer);
      }

      if (v111[0] == 1)
      {
        if (v110 != v111)
        {
          free(v110);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v109;
          v28 = __p;
          if (v109 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v109 = v26;
          operator delete(v28);
        }

        v15 = v106;
        if (v106)
        {
          v29 = v107;
          v17 = v106;
          if (v107 == v106)
          {
            goto LABEL_59;
          }

          do
          {
            v31 = *--v29;
            v30 = v31;
            *v29 = 0;
            if (v31)
            {
              operator delete[](v30);
            }
          }

          while (v29 != v15);
          goto LABEL_58;
        }

LABEL_60:
        v60 = v104;
        if (v104 == v105)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }
    }
  }

  else
  {
    v10 = *a1;
    v80 = "failed: a maximum of two axes can be handled by the operation, but found {0}";
    v81 = 76;
    v82 = v87;
    v83 = 1;
    LOBYTE(v84.__locale_) = 1;
    v85 = &unk_1F5B2E980;
    v86 = v101;
    v87[0] = &v85;
    v93 = 263;
    v91[0] = &v80;
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v111[0] == 1)
    {
      if (v110 != v111)
      {
        free(v110);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v109;
        v14 = __p;
        if (v109 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v109 = v12;
        operator delete(v14);
      }

      v15 = v106;
      if (v106)
      {
        v16 = v107;
        v17 = v106;
        if (v107 == v106)
        {
          goto LABEL_59;
        }

        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            operator delete[](v18);
          }
        }

        while (v16 != v15);
LABEL_58:
        v17 = v106;
LABEL_59:
        v107 = v15;
        operator delete(v17);
        goto LABEL_60;
      }

      goto LABEL_60;
    }
  }

LABEL_62:
  if (v100 != v102)
  {
    free(v100);
  }

  return v11;
}

uint64_t mlir::anec::ArgMinMax::addOpToNetwork(mlir::anec::ArgMinMax *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::ArgMinMax::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::GlobalArgMinMax::inferPromotedReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58 = *MEMORY[0x1E69E9840];
  v51 = a6;
  LOBYTE(v52) = 0;
  v53 = 0;
  v54 = a7;
  v55 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v51);
    if (v53 == 1)
    {
      v53 = 0;
    }

    mlir::OperationName::OperationName(&v52, "anec.global_arg_min_max", 23, Context);
    v53 = 1;
  }

  v56 = a4;
  v57 = a5;
  v17 = mlir::UnknownLoc::get(this, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::GlobalArgMinMaxAdaptor::verify(&v51, v18))
  {
    v24.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v24, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v44[0] = v20;
  v44[1] = v19;
  Value = mlir::AffineMapAttr::getValue(&v51);
  v22 = mlir::DictionaryAttr::end(&v51);
  *&v46 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v22 - 16), **(v52 + 96));
  mlir::IntegerAttr::getValue(&v46, &__p);
  if (v49 > 0x40)
  {
    v23 = *__p;
    operator delete[](__p);
  }

  else
  {
    v23 = __p;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v44);
  if (v26 <= v23)
  {
    v33 = v44[0];
    v34 = *(a11 + 8);
    if (v34 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v34 + 1, 8);
      LODWORD(v34) = *(a11 + 8);
    }

    *(*a11 + 8 * v34) = v33;
    ++*(a11 + 8);
    return 1;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v44);
  v28 = mlir::CallableOpInterface::getArgAttrsAttr(v44);
  v30 = (v28 + 8 * v29);
  __p = v50;
  v49 = 0x600000000;
  v31 = (v30 - ArgAttrsAttr) >> 3;
  if (v31 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v50, v31, 8);
    v32 = v49;
    if (v30 == ArgAttrsAttr)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v32 = 0;
  if (v30 != ArgAttrsAttr)
  {
LABEL_23:
    memcpy(__p + 8 * v32, ArgAttrsAttr, v30 - ArgAttrsAttr);
    v32 = v49;
  }

LABEL_24:
  LODWORD(v49) = v32 + ((v30 - ArgAttrsAttr) >> 3);
  v35 = mlir::AffineMapAttr::getValue(&v51);
  v36 = mlir::DictionaryAttr::end(&v51);
  v45 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v35, (v36 - 16), **(v52 + 96));
  mlir::IntegerAttr::getValue(&v45, &v46);
  if (DWORD2(v46) > 0x40)
  {
    v37 = *v46;
    operator delete[](v46);
  }

  else
  {
    v37 = v46;
  }

  v38 = __p;
  *(__p + v37) = 1;
  v39 = v49;
  v40 = mlir::IntegerType::get(this, 16, 2u);
  *&v46 = v38;
  *(&v46 + 1) = v39;
  v47 = 1;
  v41 = mlir::ShapedType::cloneWith(v44, &v46, v40);
  v42 = *(a11 + 8);
  if (v42 >= *(a11 + 12))
  {
    v43 = v41;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v42 + 1, 8);
    v41 = v43;
    LODWORD(v42) = *(a11 + 8);
  }

  *(*a11 + 8 * v42) = v41;
  ++*(a11 + 8);
  if (__p != v50)
  {
    free(__p);
  }

  return 1;
}