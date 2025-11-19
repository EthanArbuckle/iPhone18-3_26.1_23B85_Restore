_DWORD *llvm::APInt::APInt(_DWORD *this, unsigned int a2, uint64_t a3, char a4, int a5)
{
  this[2] = a2;
  if (a2 > 0x40)
  {
    v5 = this;
    llvm::APInt::initSlowCase(this, a3, a4);
    return v5;
  }

  else
  {
    *this = a3;
    if ((a4 & 1) != 0 || a5)
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
      if (!a2)
      {
        v6 = 0;
      }

      *this = v6 & a3;
    }
  }

  return this;
}

BOOL llvm::isa<mlir::FloatType,mlir::Type>(uint64_t a1)
{
  v1 = *(**a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

void *mlir::mps::anonymous namespace::convertFP32ToT<half>(uint64_t a1, uint64_t a2, void *a3)
{
  mlir::mps::CPUNDArray::CPUNDArray(v23, a1, a2);
  if (v25 == 1)
  {
    _S0 = mlir::mps::CPUNDArray::getSplatFloatValue(v23);
    __asm { FCVT            H0, S0 }

    v21[0] = LOWORD(_S0);
    if (a3)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
    }

    else
    {
      v12 = 0;
    }

    v14 = mlir::DenseElementsAttr::getFromRawBuffer(a3, v12, v21, 2, v4, v5, v6);
    ElementsAttr = v14;
    if (v14)
    {
      mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
    }
  }

  else
  {
    if (a3)
    {
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
    }

    else
    {
      v13 = 0;
    }

    mlir::mps::CPUNDArray::CPUNDArray(v21, a3, v13, 0);
    v16 = v24;
    v17 = v22;
    if (mlir::mps::CPUNDArray::getNumElements(v23) >= 1)
    {
      v18 = 0;
      do
      {
        _S0 = *(v16 + 4 * v18);
        __asm { FCVT            H0, S0 }

        *(v17 + 2 * v18++) = _S0;
      }

      while (v18 < mlir::mps::CPUNDArray::getNumElements(v23));
    }

    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v21, 0, 0);
    mlir::mps::CPUNDArray::~CPUNDArray(v21);
  }

  mlir::mps::CPUNDArray::~CPUNDArray(v23);
  return ElementsAttr;
}

void *mlir::mps::anonymous namespace::convertFP32ToT<__emulated_bf16>(uint64_t a1, uint64_t a2, void *a3)
{
  mlir::mps::CPUNDArray::CPUNDArray(v19, a1, a2);
  if (v21 == 1)
  {
    SplatFloatValue = mlir::mps::CPUNDArray::getSplatFloatValue(v19);
    v8 = SplatFloatValue + (COERCE_FLOAT(LODWORD(SplatFloatValue) & 0xFF800000) * 0.0039062);
    v17[0] = HIWORD(v8);
    if (a3)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
    }

    else
    {
      v9 = 0;
    }

    v15 = mlir::DenseElementsAttr::getFromRawBuffer(a3, v9, v17, 2, v4, v5, v6);
    ElementsAttr = v15;
    if (v15)
    {
      mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v15 + 8);
    }
  }

  else
  {
    if (a3)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
    }

    else
    {
      v10 = 0;
    }

    mlir::mps::CPUNDArray::CPUNDArray(v17, a3, v10, 0);
    v11 = v20;
    v12 = v18;
    if (mlir::mps::CPUNDArray::getNumElements(v19) >= 1)
    {
      v13 = 0;
      do
      {
        *(v12 + 2 * v13) = HIWORD(COERCE_UNSIGNED_INT(*(v11 + 4 * v13) + (COERCE_FLOAT(*(v11 + 4 * v13) & 0xFF800000) * 0.0039062)));
        ++v13;
      }

      while (v13 < mlir::mps::CPUNDArray::getNumElements(v19));
    }

    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v17, 0, 0);
    mlir::mps::CPUNDArray::~CPUNDArray(v17);
  }

  mlir::mps::CPUNDArray::~CPUNDArray(v19);
  return ElementsAttr;
}

uint64_t mlir::ElementsAttr::getValues<llvm::APFloat>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  ArgOperands = mlir::CallOpInterface::getArgOperands(a1);
  v6 = v5;
  mlir::ElementsAttr::value_begin<llvm::APFloat>(a1, v12);
  NumElements = mlir::ElementsAttr::getNumElements(*a1, a1[1]);
  v9 = 257;
  v10 = 0;
  v11 = NumElements;
  result = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(a2, ArgOperands, v6, v12, &v9);
  if ((v9 & 1) == 0)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v12[0] & 1) == 0)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

unint64_t mlir::mps::foldTransposeOp(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v48 = a3;
  v49 = a1;
  v47 = a2;
  if (!a2)
  {
    return 0;
  }

  v6 = a1 - 16;
  v7 = *(a1 + 36) ? a1 - 16 : 0;
  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  if (v9)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v8 = 0;
  }

  v46[0] = v8;
  v46[1] = v9;
  if (!mlir::CallOpInterface::getArgOperands(v46))
  {
    return 0;
  }

  Type = mlir::ElementsAttr::getType(&v47);
  v11 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  ArgOperands = v11;
  v45 = Type;
  mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
  v13 = v12;
  v52[0] = v53;
  v52[1] = 0x100000000;
  v50[0] = &v51;
  v50[1] = 0x100000000;
  if (!mlir::getPositiveAxes(*(*(a1 + 72) + 56), v12, v52, 0, 0, 0) || !mlir::getPositiveAxes(*(*(a1 + 72) + 88), v13, v50, 0, 0, 0) || *(*(mlir::Block::getParentOp(*(a1 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id || (a4 & 1) == 0 && v13 >= 2 && (*v50[0] >= *v52[0] ? (v14 = *v52[0]) : (v14 = *v50[0]), v14 == v13 - 2 && (*v52[0] <= *v50[0] ? (v15 = *v50[0]) : (v15 = *v52[0]), v15 == v13 - 1 && (*(a1 + 36) ? (v16 = v6) : (v16 = 0), ArgOperands = *mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0), v45 = 0, (llvm::any_of<llvm::iterator_range<mlir::ValueUserIterator<mlir::ValueUseIterator<mlir::OpOperand>,mlir::OpOperand>>,mlir::mps::foldTransposeOp(mlir::mps::TransposeOp,mlir::ElementsAttr,BOOL)::$_0>(&ArgOperands, &v49) & 1) != 0))))
  {
    v17 = 0;
  }

  else
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v46);
    v21 = v20;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v47);
    v45 = v22;
    isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
    v24 = mlir::RankedTensorType::get(ArgAttrsAttr, v21, isSplat, 0);
    if (mlir::ElementsAttr::isSplat(&v47))
    {
      v25 = v47;
      v26 = v48;
      if (v24)
      {
        v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
      }

      else
      {
        v27 = 0;
      }

      v17 = mlir::reshapeElementsAttr(v25, v26, v24, v27) & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      mlir::mps::CPUNDArray::CPUNDArray(&ArgOperands, v47, v48);
      v43[0] = 0;
      v43[1] = 0;
      if (v24)
      {
        v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
      }

      else
      {
        v28 = 0;
      }

      mlir::mps::CPUNDArray::tryMakeAliasedArray(v24, v28, v43, v42);
      __p = 0;
      v40 = 0;
      v41 = 0;
      std::vector<long long>::resize(&__p, v13);
      v29 = __p;
      if (v13 >= 1)
      {
        if (v13 > 3)
        {
          v30 = v13 & 0x7FFFFFFFFFFFFFFCLL;
          v31 = xmmword_1E09700F0;
          v32 = (__p + 16);
          v33 = vdupq_n_s64(2uLL);
          v34 = vdupq_n_s64(4uLL);
          v35 = v13 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v32[-1] = v31;
            *v32 = vaddq_s64(v31, v33);
            v31 = vaddq_s64(v31, v34);
            v32 += 2;
            v35 -= 4;
          }

          while (v35);
          goto LABEL_50;
        }

        v30 = 0;
        do
        {
          v29[v30] = v30;
          ++v30;
LABEL_50:
          ;
        }

        while (v13 != v30);
      }

      v36 = *v50[0];
      v37 = v29[*v52[0]];
      v29[*v52[0]] = v29[*v50[0]];
      v29[v36] = v37;
      mlir::mps::transpose(&ArgOperands, v42, v29, (v40 - v29) >> 3);
      ElementsAttr = v43[0];
      if (!v43[0])
      {
        ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v42, 0, 0);
      }

      v17 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }

      mlir::mps::CPUNDArray::~CPUNDArray(v42);
      mlir::mps::CPUNDArray::~CPUNDArray(&ArgOperands);
    }
  }

  if (v50[0] != &v51)
  {
    free(v50[0]);
  }

  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  return v17;
}

uint64_t llvm::any_of<llvm::iterator_range<mlir::ValueUserIterator<mlir::ValueUseIterator<mlir::OpOperand>,mlir::OpOperand>>,mlir::mps::foldTransposeOp(mlir::mps::TransposeOp,mlir::ElementsAttr,BOOL)::$_0>(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = v2[2];
      v6 = *(*(v5 + 48) + 16);
      if (v6 == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
      {
        v7 = v2[2];
      }

      else
      {
        v7 = 0;
      }

      v18 = v7;
      if (*(*a2 + 36))
      {
        v8 = *a2 - 16;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      if (v5)
      {
        v10 = v6 == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id;
      }

      else
      {
        v10 = 0;
      }

      if (v10 && (*(v5 + 36) ? (v11 = v5 - 16) : (v11 = 0), (v12 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0)) != 0 && !*v12))
      {
        if (*(v5 + 36))
        {
          v13 = v5 - 16;
        }

        else
        {
          v13 = 0;
        }

        v14 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
        if (*(*(*(*v14 + 16) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
        {
          v15 = *(*v14 + 16);
        }

        else
        {
          v15 = 0;
        }

        v18 = v15;
        if (*(v5 + 36))
        {
          v16 = v5 - 16;
        }

        else
        {
          v16 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
        if (!v15)
        {
          goto LABEL_3;
        }
      }

      else if (!v7)
      {
        goto LABEL_3;
      }

      if (!mlir::mps::MatMulOp::getTransposeRhs(&v18) && *(*(v18 + 72) + 56) == NextResultAtOffset)
      {
        return 1;
      }

LABEL_3:
      v2 = *v2;
    }

    while (v2 != v3);
  }

  return 0;
}

void std::vector<long long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<mlir::Value>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 8 * a2;
  }
}

void mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v109 = 1283;
    v73 = "mps.squeeze";
LABEL_83:
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = v73;
    v75 = 11;
    goto LABEL_86;
  }

  v4 = v2;
  v5 = v2[2];
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = v2[1];
    Values = mlir::SparseElementsAttr::getValues(v110);
    v5 = v4[2];
  }

  else
  {
    Values = v2[3];
  }

  {
    v94 = v5;
    v74 = Values;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    Values = v74;
    v5 = v94;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(Values, v5, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v7 = malloc(8uLL);
  v8 = v7;
  {
    v95 = v7;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v8 = v95;
  }

  mlir::detail::InterfaceMap::insert((v4 + 4), mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v109 = 1283;
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = "mps.expand_dims";
    v75 = 15;
    goto LABEL_86;
  }

  v11 = v9;
  v12 = v9[2];
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = v9[1];
    v13 = mlir::SparseElementsAttr::getValues(v110);
    v12 = v11[2];
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = v9[3];
    {
      goto LABEL_12;
    }
  }

  v78 = v13;
  v86 = v12;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v13 = v78;
  v12 = v86;
LABEL_12:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v14 = malloc(8uLL);
  v15 = v14;
  {
    v96 = v14;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v15 = v96;
  }

  mlir::detail::InterfaceMap::insert((v11 + 4), mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Flatten2DOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v109 = 1283;
    v76 = "mps.flatten_2d";
LABEL_77:
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = v76;
    v75 = 14;
    goto LABEL_86;
  }

  v18 = v16;
  v19 = v16[2];
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = v16[1];
    v20 = mlir::SparseElementsAttr::getValues(v110);
    v19 = v18[2];
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = v16[3];
    {
      goto LABEL_17;
    }
  }

  v79 = v20;
  v87 = v19;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v20 = v79;
  v19 = v87;
LABEL_17:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v21 = malloc(8uLL);
  v22 = v21;
  {
    v97 = v21;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v22 = v97;
  }

  mlir::detail::InterfaceMap::insert((v18 + 4), mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v22);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, a1);
  if ((v24 & 1) == 0)
  {
    v109 = 1283;
    v76 = "mps.dequantize";
    goto LABEL_77;
  }

  v25 = v23;
  v26 = v23[2];
  if (v26 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = v23[1];
    v27 = mlir::SparseElementsAttr::getValues(v110);
    v26 = v25[2];
    {
      goto LABEL_22;
    }
  }

  else
  {
    v27 = v23[3];
    {
      goto LABEL_22;
    }
  }

  v80 = v27;
  v88 = v26;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v27 = v80;
  v26 = v88;
LABEL_22:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v27, v26, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v28 = malloc(8uLL);
  v29 = v28;
  {
    v98 = v28;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v29 = v98;
  }

  mlir::detail::InterfaceMap::insert((v25 + 4), mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v29);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id, a1);
  if ((v31 & 1) == 0)
  {
    v109 = 1283;
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = "mps.quantize";
    v75 = 12;
    goto LABEL_86;
  }

  v32 = v30;
  v33 = v30[2];
  if (v33 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = v30[1];
    v34 = mlir::SparseElementsAttr::getValues(v110);
    v33 = v32[2];
    {
      goto LABEL_27;
    }
  }

  else
  {
    v34 = v30[3];
    {
      goto LABEL_27;
    }
  }

  v81 = v34;
  v89 = v33;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v34 = v81;
  v33 = v89;
LABEL_27:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v34, v33, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v35 = malloc(8uLL);
  v36 = v35;
  {
    v99 = v35;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v36 = v99;
  }

  mlir::detail::InterfaceMap::insert((v32 + 4), mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v36);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, a1);
  if ((v38 & 1) == 0)
  {
    v109 = 1283;
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = "mps.cast";
    v75 = 8;
    goto LABEL_86;
  }

  v39 = v37;
  v40 = v37[2];
  if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = v37[1];
    v41 = mlir::SparseElementsAttr::getValues(v110);
    v40 = v39[2];
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = v37[3];
    {
      goto LABEL_32;
    }
  }

  v82 = v41;
  v90 = v40;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v41 = v82;
  v40 = v90;
LABEL_32:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v41, v40, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v42 = malloc(8uLL);
  v43 = v42;
  {
    v100 = v42;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v43 = v100;
  }

  mlir::detail::InterfaceMap::insert((v39 + 4), mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v43);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, a1);
  if ((v45 & 1) == 0)
  {
    v109 = 1283;
    v77 = "mps.concat";
LABEL_85:
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = v77;
    v75 = 10;
LABEL_86:
    v108 = v75;
    v104 = ".";
    v105 = 259;
    llvm::operator+(&v106, &v104, v110);
    llvm::report_fatal_error(v110, 1);
  }

  v46 = v44;
  v47 = v44[2];
  if (v47 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = v44[1];
    v48 = mlir::SparseElementsAttr::getValues(v110);
    v47 = v46[2];
    {
      goto LABEL_37;
    }
  }

  else
  {
    v48 = v44[3];
    {
      goto LABEL_37;
    }
  }

  v83 = v48;
  v91 = v47;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v48 = v83;
  v47 = v91;
LABEL_37:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v48, v47, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v49 = malloc(8uLL);
  v50 = v49;
  {
    v101 = v49;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v50 = v101;
  }

  mlir::detail::InterfaceMap::insert((v46 + 4), mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v50);
  v51 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, a1);
  if ((v52 & 1) == 0)
  {
    v109 = 1283;
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = "mps.strided_slice";
    v75 = 17;
    goto LABEL_86;
  }

  v53 = v51;
  v54 = v51[2];
  if (v54 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = v51[1];
    v55 = mlir::SparseElementsAttr::getValues(v110);
    v54 = v53[2];
    {
      goto LABEL_42;
    }
  }

  else
  {
    v55 = v51[3];
    {
      goto LABEL_42;
    }
  }

  v84 = v55;
  v92 = v54;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v55 = v84;
  v54 = v92;
LABEL_42:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v55, v54, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v56 = malloc(8uLL);
  v57 = v56;
  {
    v102 = v56;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v57 = v102;
  }

  mlir::detail::InterfaceMap::insert((v53 + 4), mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v57);
  v58 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, a1);
  if ((v59 & 1) == 0)
  {
    v109 = 1283;
    v73 = "mps.reshape";
    goto LABEL_83;
  }

  v60 = v58;
  v61 = v58[2];
  if (v61 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = v58[1];
    v62 = mlir::SparseElementsAttr::getValues(v110);
    v61 = v60[2];
    {
      goto LABEL_47;
    }
  }

  else
  {
    v62 = v58[3];
    {
      goto LABEL_47;
    }
  }

  v85 = v62;
  v93 = v61;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v62 = v85;
  v61 = v93;
LABEL_47:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v62, v61, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v63 = malloc(8uLL);
  v64 = v63;
  {
    v103 = v63;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v64 = v103;
  }

  mlir::detail::InterfaceMap::insert((v60 + 4), mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v64);
  v65 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, a1);
  if ((v66 & 1) == 0)
  {
    v109 = 1283;
    v77 = "mps.select";
    goto LABEL_85;
  }

  v67 = v65;
  v68 = v65[2];
  if (v68 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = v65[1];
    v69 = mlir::SparseElementsAttr::getValues(v110);
    v68 = v67[2];
    {
      goto LABEL_52;
    }
  }

  else
  {
    v69 = v65[3];
    {
      goto LABEL_52;
    }
  }

  v71 = v68;
  v72 = v69;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v69 = v72;
  v68 = v71;
LABEL_52:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v69, v68, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v70 = malloc(8uLL);
  {
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  }

  mlir::detail::InterfaceMap::insert((v67 + 4), mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v70);
}

const char *llvm::getTypeName<mlir::ExternalCanonicalizeInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ExternalCanonicalizeInterface]";
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

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeSqueezeExpandFlatten<mlir::mps::SqueezeOp>>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v46[4] = *MEMORY[0x1E69E9840];
  v43 = a2;
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
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

  v42[0] = v6;
  v42[1] = v7;
  result = mlir::CallOpInterface::getArgOperands(v42);
  if (!result)
  {
    return result;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v42);
  if (v10)
  {
    v11 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v11 >= 3)
    {
      v14 = v11 + 1;
      v15 = (v11 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v13 = (ArgAttrsAttr + 8 * v15);
      v16 = (ArgAttrsAttr + 16);
      v17 = 0uLL;
      v18 = vnegq_f64(0);
      v19 = v15;
      v20 = 0uLL;
      do
      {
        v17 = vsubq_s64(v17, vceqq_s64(v16[-1], v18));
        v20 = vsubq_s64(v20, vceqq_s64(*v16, v18));
        v16 += 2;
        v19 -= 4;
      }

      while (v19);
      v12 = vaddvq_s64(vaddq_s64(v20, v17));
      if (v14 == v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = ArgAttrsAttr;
    }

    do
    {
      v21 = *v13++;
      if (v21 == 0x8000000000000000)
      {
        ++v12;
      }
    }

    while (v13 != (ArgAttrsAttr + 8 * v10));
LABEL_17:
    if (v12 > 1)
    {
      return 0;
    }
  }

  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v42);
  v24 = v22;
  v44 = v46;
  v45 = 0x400000000;
  v25 = (8 * v22) >> 3;
  if (v25 < 5)
  {
    v26 = 0;
    v27 = v46;
    v28 = 8 * v22;
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v25, 8);
  v26 = v45;
  v27 = v44;
  v28 = 8 * v24;
  if (v24)
  {
LABEL_23:
    memcpy(v27 + 8 * v26, v23, v28);
    v26 = v45;
    v27 = v44;
  }

LABEL_24:
  v29 = v26 + (v28 >> 3);
  LODWORD(v45) = v26 + (v28 >> 3);
  if (v45)
  {
    v30 = (v29 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v31 = v27;
    if (v30 < 3)
    {
      goto LABEL_41;
    }

    v32 = v30 + 1;
    v31 = &v27->i64[v32 & 0x3FFFFFFFFFFFFFFCLL];
    v33 = v27 + 1;
    v34 = vnegq_f64(0);
    v35 = v32 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = vmovn_s64(vceqq_s64(v33[-1], v34));
      if (v36.i8[0])
      {
        v33[-1].i64[0] = -1;
      }

      if (v36.i8[4])
      {
        v33[-1].i64[1] = -1;
      }

      v37 = vmovn_s64(vceqq_s64(*v33, v34));
      if (v37.i8[0])
      {
        v33->i64[0] = -1;
      }

      if (v37.i8[4])
      {
        v33->i64[1] = -1;
      }

      v33 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_41:
      v40 = &v27->i64[v29];
      do
      {
        if (*v31 == 0x8000000000000000)
        {
          *v31 = -1;
        }

        ++v31;
      }

      while (v31 != v40);
    }
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v43, 0);
  v41 = *(*(v43 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v39 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(a3 + 1, *(a2 + 24), &v41, &v44);
  ((*a3)[1])(a3, a2, v39);
  if (v44 != v46)
  {
    free(v44);
  }

  return 1;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeSqueezeExpandFlatten<mlir::mps::ExpandDimsOp>>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v44[4] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
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

  v41[0] = v6;
  v41[1] = v7;
  result = mlir::CallOpInterface::getArgOperands(v41);
  if (!result)
  {
    return result;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v41);
  if (v10)
  {
    v11 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v11 >= 3)
    {
      v14 = v11 + 1;
      v15 = (v11 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v13 = (ArgAttrsAttr + 8 * v15);
      v16 = (ArgAttrsAttr + 16);
      v17 = 0uLL;
      v18 = vnegq_f64(0);
      v19 = v15;
      v20 = 0uLL;
      do
      {
        v17 = vsubq_s64(v17, vceqq_s64(v16[-1], v18));
        v20 = vsubq_s64(v20, vceqq_s64(*v16, v18));
        v16 += 2;
        v19 -= 4;
      }

      while (v19);
      v12 = vaddvq_s64(vaddq_s64(v20, v17));
      if (v14 == v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = ArgAttrsAttr;
    }

    do
    {
      v21 = *v13++;
      if (v21 == 0x8000000000000000)
      {
        ++v12;
      }
    }

    while (v13 != (ArgAttrsAttr + 8 * v10));
LABEL_17:
    if (v12 > 1)
    {
      return 0;
    }
  }

  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v41);
  v24 = v22;
  v42 = v44;
  v43 = 0x400000000;
  v25 = (8 * v22) >> 3;
  if (v25 < 5)
  {
    v26 = 0;
    v27 = v44;
    v28 = 8 * v22;
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v25, 8);
  v26 = v43;
  v27 = v42;
  v28 = 8 * v24;
  if (v24)
  {
LABEL_23:
    memcpy(v27 + 8 * v26, v23, v28);
    v26 = v43;
    v27 = v42;
  }

LABEL_24:
  v29 = v26 + (v28 >> 3);
  LODWORD(v43) = v26 + (v28 >> 3);
  if (v43)
  {
    v30 = (v29 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v31 = v27;
    if (v30 < 3)
    {
      goto LABEL_41;
    }

    v32 = v30 + 1;
    v31 = &v27->i64[v32 & 0x3FFFFFFFFFFFFFFCLL];
    v33 = v27 + 1;
    v34 = vnegq_f64(0);
    v35 = v32 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = vmovn_s64(vceqq_s64(v33[-1], v34));
      if (v36.i8[0])
      {
        v33[-1].i64[0] = -1;
      }

      if (v36.i8[4])
      {
        v33[-1].i64[1] = -1;
      }

      v37 = vmovn_s64(vceqq_s64(*v33, v34));
      if (v37.i8[0])
      {
        v33->i64[0] = -1;
      }

      if (v37.i8[4])
      {
        v33->i64[1] = -1;
      }

      v33 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_41:
      v39 = &v27->i64[v29];
      do
      {
        if (*v31 == 0x8000000000000000)
        {
          *v31 = -1;
        }

        ++v31;
      }

      while (v31 != v39);
    }
  }

  v40 = *(*(a2 + 72) + 24);
  v38 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(a3 + 1, *(a2 + 24), &v40, &v42);
  ((*a3)[1])(a3, a2, v38);
  if (v42 != v44)
  {
    free(v42);
  }

  return 1;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeSqueezeExpandFlatten<mlir::mps::Flatten2DOp>>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v44[4] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
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

  v41[0] = v6;
  v41[1] = v7;
  result = mlir::CallOpInterface::getArgOperands(v41);
  if (!result)
  {
    return result;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v41);
  if (v10)
  {
    v11 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v11 >= 3)
    {
      v14 = v11 + 1;
      v15 = (v11 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v13 = (ArgAttrsAttr + 8 * v15);
      v16 = (ArgAttrsAttr + 16);
      v17 = 0uLL;
      v18 = vnegq_f64(0);
      v19 = v15;
      v20 = 0uLL;
      do
      {
        v17 = vsubq_s64(v17, vceqq_s64(v16[-1], v18));
        v20 = vsubq_s64(v20, vceqq_s64(*v16, v18));
        v16 += 2;
        v19 -= 4;
      }

      while (v19);
      v12 = vaddvq_s64(vaddq_s64(v20, v17));
      if (v14 == v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = ArgAttrsAttr;
    }

    do
    {
      v21 = *v13++;
      if (v21 == 0x8000000000000000)
      {
        ++v12;
      }
    }

    while (v13 != (ArgAttrsAttr + 8 * v10));
LABEL_17:
    if (v12 > 1)
    {
      return 0;
    }
  }

  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v41);
  v24 = v22;
  v42 = v44;
  v43 = 0x400000000;
  v25 = (8 * v22) >> 3;
  if (v25 < 5)
  {
    v26 = 0;
    v27 = v44;
    v28 = 8 * v22;
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v25, 8);
  v26 = v43;
  v27 = v42;
  v28 = 8 * v24;
  if (v24)
  {
LABEL_23:
    memcpy(v27 + 8 * v26, v23, v28);
    v26 = v43;
    v27 = v42;
  }

LABEL_24:
  v29 = v26 + (v28 >> 3);
  LODWORD(v43) = v26 + (v28 >> 3);
  if (v43)
  {
    v30 = (v29 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v31 = v27;
    if (v30 < 3)
    {
      goto LABEL_41;
    }

    v32 = v30 + 1;
    v31 = &v27->i64[v32 & 0x3FFFFFFFFFFFFFFCLL];
    v33 = v27 + 1;
    v34 = vnegq_f64(0);
    v35 = v32 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = vmovn_s64(vceqq_s64(v33[-1], v34));
      if (v36.i8[0])
      {
        v33[-1].i64[0] = -1;
      }

      if (v36.i8[4])
      {
        v33[-1].i64[1] = -1;
      }

      v37 = vmovn_s64(vceqq_s64(*v33, v34));
      if (v37.i8[0])
      {
        v33->i64[0] = -1;
      }

      if (v37.i8[4])
      {
        v33->i64[1] = -1;
      }

      v33 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_41:
      v39 = &v27->i64[v29];
      do
      {
        if (*v31 == 0x8000000000000000)
        {
          *v31 = -1;
        }

        ++v31;
      }

      while (v31 != v39);
    }
  }

  v40 = *(*(a2 + 72) + 24);
  v38 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(a3 + 1, *(a2 + 24), &v40, &v42);
  ((*a3)[1])(a3, a2, v38);
  if (v42 != v44)
  {
    free(v42);
  }

  return 1;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeQuantizeOp<mlir::mps::DequantizeOp>>::externalCanonicalize(uint64_t a1, uint64_t a2, mlir::UnknownLoc **a3)
{
  v24 = a2;
  v23[0] = a3;
  v23[1] = &v24;
  v22 = 0;
  v21 = 1;
  v20 = v4;
  v19 = v5;
  v6 = *(*(v24 + 72) + 120);
  v18 = v7;
  if (HIBYTE(v22) == 1 && v22 == 1 && v21 == 1)
  {
    v8 = 0;
    v9 = v24;
  }

  else
  {
    v9 = v24;
    v8 = *(v9 + 16 * ((*(v9 + 44) >> 23) & 1) + 64);
  }

  v17 = v8;
  v10 = *(v9 + 72);
  if (v10[7] == v4)
  {
    v11 = v10[11] == v5 && v6 == v7;
    if (v11 && v8 == *(v9 + 80))
    {
      return 0;
    }
  }

  v12 = v10[3];
  v15 = *(v9 + 88);
  v16 = v12;
  v13 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr,mlir::IntegerAttr>(a3 + 1, *(v9 + 24), &v16, &v20, &v19, &v18, &v15, &v17);
  (*(*a3 + 1))(a3, v9, v13);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizeOp<mlir::mps::DequantizeOp>::externalCanonicalize(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(mlir::Value,BOOL &)#1}::operator()(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (mlir::CallOpInterface::getArgOperands(v34))
  {
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
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v11 = mlir::CallableOpInterface::getArgAttrsAttr(v34);
      if (mlir::ShapedType::getNumElements(v11, v12) == 1)
      {
        *a3 = 1;
        return v4;
      }
    }
  }

  v33[0] = 0;
  v33[1] = 0;
  v32 = v33;
  v35 = v4;
  DefiningOp = mlir::Value::getDefiningOp(&v35);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v32, DefiningOp) && (mlir::ElementsAttr::isSplat(v33) & 1) != 0)
  {
    *a3 = 1;
    mlir::ElementsAttr::value_begin<mlir::TypedAttr,void>(v33, &v35);
    if (BYTE1(v35))
    {
      v14 = 0;
    }

    else
    {
      v14 = v37;
    }

    if (v35 == 1)
    {
      v15 = *(v36 + 8 * v14);
    }

    else
    {
      v15 = (*(*v36 + 24))();
    }

    v17 = v38(v15);
    if ((v35 & 1) == 0)
    {
      v19 = v36;
      v36 = 0;
      if (v19)
      {
        v20 = v17;
        v21 = v18;
        (*(*v19 + 8))(v19);
        v18 = v21;
        v17 = v20;
      }
    }

    v35 = v17;
    v36 = v18;
    CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v35);
    v23 = mlir::RankedTensorType::get(0, 0, CallableForCallee, 0);
    if (v23)
    {
      v24 = v23;
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
      v23 = v24;
    }

    else
    {
      v25 = 0;
    }

    v32 = mlir::DenseElementsAttr::get(v23, v25, &v35, 1uLL);
    v26 = *a1;
    v27 = *(*a1[1] + 24);
    isSplat = mlir::ElementsAttr::isSplat(v34);
    v31 = mlir::RankedTensorType::get(0, 0, isSplat, 0);
    v29 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((v26 + 8), v27, &v31, &v32);
    if (*(v29 + 36))
    {
      v30 = v29 - 16;
    }

    else
    {
      v30 = 0;
    }

    return mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  }

  else
  {
    *a3 = 0;
  }

  return v4;
}

void *mlir::ElementsAttr::value_begin<mlir::TypedAttr,void>@<X0>(mlir::CallOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::getValues<mlir::TypedAttr,void>(a1, v5);
  v4 = v5[0];
  *a2 = v5[0];
  *(a2 + 1) = v5[1];
  if (v4 == 1)
  {
    *(a2 + 8) = v6;
  }

  else
  {
    result = (*(*v6 + 16))(v6);
  }

  *(a2 + 16) = v7;
  if ((v8 & 1) == 0)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v5[0] & 1) == 0)
  {
    result = v6;
    v6 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *mlir::ElementsAttr::getValues<mlir::TypedAttr,void>@<X0>(mlir::CallOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  ArgOperands = mlir::CallOpInterface::getArgOperands(a1);
  v6 = v5;
  mlir::ElementsAttr::getValues<mlir::Attribute>(a1, &v11);
  result = llvm::map_range<mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>,mlir::IntegerAttr (*)(mlir::Attribute)>(&v11, _ZZNK4mlir12ElementsAttr9getValuesINS_9TypedAttrEvEENS_6detail17ElementsAttrRangeIN4llvm15mapped_iteratorINS3_20ElementsAttrIteratorINS_9AttributeEEEPFT_S8_EDTclclsr3stdE7declvalISC_EEdeclL_ZNSt3__17declvalB8nn200100IS9_EEDTclsr3stdE9__declvalISA_ELi0EEEvEEEEEEEEvENUlS8_E_8__invokeES8_, v15);
  v8 = v15[0];
  *a2 = v15[0];
  *(a2 + 1) = v15[1];
  if (v8 == 1)
  {
    *(a2 + 8) = v16;
  }

  else
  {
    result = (*(*v16 + 16))(v16);
  }

  *(a2 + 16) = v17;
  v9 = v18;
  *(a2 + 32) = v18;
  *(a2 + 33) = v19;
  if (v9 == 1)
  {
    *(a2 + 40) = *v20;
    *(a2 + 56) = *&v20[16];
    *(a2 + 64) = ArgOperands;
    *(a2 + 72) = v6;
  }

  else
  {
    result = (*(**v20 + 16))(*v20);
    v10 = v18;
    *(a2 + 48) = *&v20[8];
    *(a2 + 64) = ArgOperands;
    *(a2 + 72) = v6;
    if ((v10 & 1) == 0)
    {
      result = *v20;
      *v20 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if ((v15[0] & 1) == 0)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v13 & 1) == 0)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v11 & 1) == 0)
  {
    result = v12;
    v12 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZZNK4mlir12ElementsAttr9getValuesINS_9TypedAttrEvEENS_6detail17ElementsAttrRangeIN4llvm15mapped_iteratorINS3_20ElementsAttrIteratorINS_9AttributeEEEPFT_S8_EDTclclsr3stdE7declvalISC_EEdeclL_ZNSt3__17declvalB8nn200100IS9_EEDTclsr3stdE9__declvalISA_ELi0EEEvEEEEEEEEvENUlS8_E_8__invokeES8_(void *result)
{
  if (result)
  {
    v1 = result;
    mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(*result + 8);
    return v1;
  }

  return result;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeQuantizeOp<mlir::mps::QuantizeOp>>::externalCanonicalize(uint64_t a1, uint64_t a2, mlir::UnknownLoc **a3)
{
  v19 = a2;
  v18[0] = a3;
  v18[1] = &v19;
  v17 = 0;
  v16 = v4;
  v15 = v5;
  if (HIBYTE(v17) == 1 && v17 == 1)
  {
    v6 = 0;
    v7 = v19;
  }

  else
  {
    v7 = v19;
    v6 = *(v7 + 16 * ((*(v7 + 44) >> 23) & 1) + 64);
  }

  v14 = v6;
  v8 = *(v7 + 72);
  if (v8[7] == v4 && v8[11] == v5 && v6 == *(v7 + 80))
  {
    return 0;
  }

  v9 = v8[3];
  v12 = *(v7 + 88);
  v13 = v9;
  v10 = mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::TypeAttr,mlir::IntegerAttr &>(a3 + 1, *(v7 + 24), &v13, &v16, &v15, &v12, &v14);
  (*(*a3 + 1))(a3, v7, v10);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::TypeAttr,mlir::IntegerAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::TypeAttr,mlir::IntegerAttr &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::QuantizeOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeCastOp>::externalCanonicalize(uint64_t a1, uint64_t a2, mlir::UnknownLoc **a3)
{
  v38 = a2;
  v4 = *(*(a2 + 72) + 24);
  v37 = v4;
  v5 = (v4[1] & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v36[0] = v5;
  v36[1] = v6;
  isSplat = mlir::ElementsAttr::isSplat(v36);
  Type = mlir::pdl_interp::CheckTypeOp::getType(&v38);
  if (isSplat == Type)
  {
    if (*(v38 + 36))
    {
      v8 = v38 - 16;
    }

    else
    {
      v8 = 0;
    }

    v9 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    if (v9)
    {
      do
      {
        v11 = *v9;
        v12 = v9[2];
        (*(*a3 + 5))(a3, v12);
        v13 = v9[1];
        if (v13)
        {
          v14 = *v9;
          *v13 = *v9;
          if (v14)
          {
            v14[1] = v9[1];
          }
        }

        v9[3] = v4;
        v9[1] = v4;
        v15 = *v4;
        *v9 = *v4;
        if (v15)
        {
          v15[1] = v9;
        }

        *v4 = v9;
        (*(*a3 + 6))(a3, v12);
        v9 = v11;
      }

      while (v11);
    }

    return 1;
  }

  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
    {
      v34 = *(*(DefiningOp + 72) + 24);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v34);
      {
        {
          ElementBitWidth = mlir::mps::getElementBitWidth(ElementTypeOrSelf);
          if (ElementBitWidth <= mlir::mps::getElementBitWidth(isSplat))
          {
            v28 = v38;
            v29 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 1, *(v38 + 24), &v34, &Type);
            goto LABEL_34;
          }
        }
      }
    }
  }

  v19 = mlir::Value::getDefiningOp(&v37);
  if (v19)
  {
    v20 = *(*(v19 + 48) + 16);
    v21 = v20 == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id;
    v22 = v20 == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id ? v19 : 0;
    v34 = v22;
    if (v21)
    {
      if (*v37)
      {
        if (!**v37)
        {
          v23 = v19;
          {
            v24 = mlir::mps::getElementBitWidth(Type);
            if (v24 < mlir::mps::getElementBitWidth(isSplat))
            {
              v25 = *(v38 + 24);
              v32 = *(*(v23 + 72) + 88);
              v33 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 1, v25, &v32, &Type);
              v26 = *(v38 + 24);
              v31 = *(*(v23 + 72) + 24);
              v27 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 1, v26, &v31, &Type);
              v28 = v38;
              v31 = *(*(v23 + 72) + 56);
              v32 = v27;
              StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v34);
              v29 = mlir::OpBuilder::create<mlir::mps::PadOp,mlir::mps::CastOp &,mlir::Value,mlir::mps::CastOp &,mlir::mps::PaddingMode>(a3 + 1, *(v28 + 24), &v32, &v31, &v33, &StorageType);
LABEL_34:
              (*(*a3 + 1))(a3, v28, v29);
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeCastOp::externalCanonicalize(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(mlir::Type,mlir::Type)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 136);
  if ((v4 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) != (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
  {
    return 0;
  }

  v30[3] = v2;
  v30[4] = v3;
  v29 = a2;
  v30[0] = a1;
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v28 = v6;
  if (v6)
  {
    v7 = a2;
    Value = mlir::AffineMapAttr::getValue(&v28);
    v30[0] = Value;
    v27 = v7;
    a2 = mlir::AffineMapAttr::getValue(&v27);
    a1 = Value;
    v29 = a2;
  }

  v9 = *(*a1 + 136);
  if (v9 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return v9 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  }

  v26 = *(*a2 + 136);
  if (v26 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return v9 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  }

  if (mlir::Type::isF16(v30) && mlir::Type::isBF16(&v29))
  {
    return 0;
  }

  if (mlir::Type::isBF16(v30))
  {
    return !mlir::Type::isF16(&v29);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PadOp,mlir::mps::CastOp &,mlir::Value,mlir::mps::CastOp &,mlir::mps::PaddingMode>(mlir::MLIRContext **a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, unsigned int *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PadOp,mlir::mps::PermuteOp &,mlir::mps::ConstantOp &,mlir::Value,mlir::mps::PaddingMode>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::PadOp::build(a1, v21, *a3 - 16, *a4, *a5 - 16, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeStridedSliceOp>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v54[2] = *MEMORY[0x1E69E9840];
  v44 = a2;
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v43[0] = v5;
  v43[1] = v6;
  v41 = 0;
  v42 = 0;
  result = mlir::CallOpInterface::getArgOperands(v43);
  if (!result)
  {
    return result;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (!v9)
  {
LABEL_9:
    v11 = *(*(a2 + 72) + 88);
    v49 = &v41;
    v52 = v11;
    result = mlir::Value::getDefiningOp(&v52);
    if (!result)
    {
      return result;
    }

    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v49, result);
    if (!result)
    {
      return result;
    }

    v39 = 0;
    v40 = 0;
    v12 = *(*(a2 + 72) + 120);
    v49 = &v39;
    v52 = v12;
    result = mlir::Value::getDefiningOp(&v52);
    if (!result)
    {
      return result;
    }

    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v49, result);
    if (!result)
    {
      return result;
    }

    v52 = v54;
    v53 = 0x400000000;
    mlir::getIntValues<int>(v41, v42, &v52, 1);
    v49 = v51;
    v50 = 0x400000000;
    mlir::getIntValues<int>(v39, v40, &v49, 1);
    v13 = v53;
    v46 = v48;
    v47 = 0x400000000;
    if (v53 < 5)
    {
      if (!v53)
      {
        goto LABEL_20;
      }

      v15 = 4 * v53;
      v14 = v48;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v53, 4);
      v14 = v46;
      v15 = 4 * v13;
    }

    bzero(v14, v15);
LABEL_20:
    LODWORD(v47) = v13;
    if (mlir::mps::StridedSliceOp::getEndIsSize(&v44))
    {
      v37 = 0;
      v38 = 0;
      v16 = *(*(v44 + 72) + 56);
      v36 = &v37;
      v45 = v16;
      DefiningOp = mlir::Value::getDefiningOp(&v45);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) == 0)
      {
        goto LABEL_37;
      }

      LODWORD(v47) = 0;
      mlir::getIntValues<int>(v37, v38, &v46, 1);
    }

    v18 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
    Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v44);
    v35 = Offset;
    if (v53)
    {
      v20 = Offset;
      v21 = 0;
      v22 = Offset;
      do
      {
        v23 = v52[v21];
        if ((mlir::pdl::ResultOp::getIndex(&v44) & (1 << v21)) == 0)
        {
          v23 += mlir::getPositiveAxis(*(v46 + v21), *(v18 + 8 * v21));
        }

        v24 = v21 >= v50 || *(v49 + v21) > 0;
        if (v23 > *(v18 + 8 * v21) && v24)
        {
          v22 |= 1 << v21;
          v35 = v22;
        }

        ++v21;
      }

      while (v21 < v53);
      if (v20 == v22)
      {
        result = 0;
      }

      else
      {
        v26 = v44;
        v27 = *(v44 + 72);
        v28 = v27[3];
        v45 = v27[7];
        v36 = v27[11];
        v37 = v28;
        v34 = v27[15];
        Index = mlir::pdl::ResultOp::getIndex(&v44);
        Groups = mlir::mps::Conv3DOp::getGroups(&v44);
        IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v44);
        v29 = mlir::OpBuilder::create<mlir::mps::StridedSliceOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,unsigned int,unsigned int &,unsigned int,BOOL>(a3 + 1, *(v26 + 24), &v37, &v45, &v36, &v34, &Index, &v35, &Groups, &IsSize);
        ((*a3)[1])(a3, v26, v29);
        result = 1;
      }

      goto LABEL_41;
    }

LABEL_37:
    result = 0;
LABEL_41:
    v30 = result;
    if (v46 != v48)
    {
      free(v46);
      result = v30;
    }

    if (v49 != v51)
    {
      free(v49);
      result = v30;
    }

    if (v52 != v54)
    {
      free(v52);
      return v30;
    }

    return result;
  }

  v10 = 8 * v9;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v10 -= 8;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::StridedSliceOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,unsigned int,unsigned int &,unsigned int,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::StridedSliceOp,mlir::mps::PermuteOp &,mlir::mps::ConstantOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp,unsigned int,unsigned int,unsigned int,BOOL>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mps::StridedSliceOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v22;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeReshapeOp>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v32 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v32);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    if (v6 == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    if (v6 != &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id || *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) || *(result + 16 * ((*(result + 44) >> 23) & 1) + 64))
    {
      return 0;
    }

    else
    {
      v8 = result;
      if (*(a2 + 36))
      {
        v9 = a2 - 16;
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

      v31[0] = v10;
      v31[1] = v11;
      if (mlir::CallOpInterface::getArgOperands(v31))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v31);
        v14 = v13;
        v32 = v34;
        v33 = 0x400000000;
        v15 = (8 * v13) >> 3;
        if (v15 < 5)
        {
          v16 = 0;
          v17 = v34;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v15, 8);
          v16 = v33;
          v17 = v32;
        }

        if (v14)
        {
          memcpy(v17 + 8 * v16, ArgAttrsAttr, 8 * v14);
          v16 = v33;
          v17 = v32;
        }

        v19 = v16 + v14;
        LODWORD(v33) = v16 + v14;
        if (v16 + v14)
        {
          v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          v21 = v17;
          if (v20 < 3)
          {
            goto LABEL_39;
          }

          v22 = v20 + 1;
          v21 = &v17->i64[v22 & 0x3FFFFFFFFFFFFFFCLL];
          v23 = v17 + 1;
          v24 = vnegq_f64(0);
          v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v26 = vmovn_s64(vceqq_s64(v23[-1], v24));
            if (v26.i8[0])
            {
              v23[-1].i64[0] = -1;
            }

            if (v26.i8[4])
            {
              v23[-1].i64[1] = -1;
            }

            v27 = vmovn_s64(vceqq_s64(*v23, v24));
            if (v27.i8[0])
            {
              v23->i64[0] = -1;
            }

            if (v27.i8[4])
            {
              v23->i64[1] = -1;
            }

            v23 += 2;
            v25 -= 4;
          }

          while (v25);
          if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_39:
            v29 = &v17->i64[v19];
            do
            {
              if (*v21 == 0x8000000000000000)
              {
                *v21 = -1;
              }

              ++v21;
            }

            while (v21 != v29);
          }
        }

        v30 = *(*(v7 + 72) + 24);
        v28 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(a3 + 1, *(a2 + 24), &v30, &v32);
        ((*a3)[1])(a3, a2, v28);
        if (v32 != v34)
        {
          free(v32);
        }
      }

      else
      {
        v32 = *(*(v8 + 72) + 24);
        v30 = *(*(a2 + 72) + 56);
        v18 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value&>(a3 + 1, *(a2 + 24), &v32, &v30);
        ((*a3)[1])(a3, a2, v18);
      }

      return 1;
    }
  }

  return result;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeSelectOp>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v94 = *MEMORY[0x1E69E9840];
  ArgOperands = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&ArgOperands);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    v89 = v8;
    if (!v7)
    {
      return 0;
    }

    v88[0] = mlir::mps::ConstantOp::getAsAttribute(&v89);
    v88[1] = v9;
    ArgOperands = mlir::CallOpInterface::getArgOperands(v88);
    v83 = v10;
    v11 = *(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136);
    if (v11 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (v11 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        return 0;
      }

      mlir::ElementsAttr::getValues<llvm::APFloat>(v88, &ArgOperands);
      LOWORD(v79) = ArgOperands;
      if (ArgOperands == 1)
      {
        v80 = v83;
      }

      else
      {
        (*(*v83 + 16))(&v80);
      }

      v28 = v84;
      v81 = v84;
      LOWORD(__p) = v85;
      if (v85 == 1)
      {
        v77 = v86;
      }

      else
      {
        (*(*v86 + 16))(&v77);
        v28 = v81;
      }

      v78 = v87;
      if (v28 == v87)
      {
        v29 = 0;
LABEL_69:
        v30 = 0;
        if (__p)
        {
          goto LABEL_115;
        }
      }

      else
      {
        if (BYTE1(v79))
        {
          v31 = 0;
        }

        else
        {
          v31 = v28;
        }

        if (v79)
        {
          v32 = v80 + 32 * v31;
          v34 = *(v32 + 1);
          v33 = (v32 + 8);
          v35 = llvm::APFloatBase::PPCDoubleDouble(v80);
          if (v35 == v34)
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(&v91, v33);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(&v91, v33);
          }
        }

        else
        {
          v40 = (*(*v80 + 24))(&isSplat);
          v35 = llvm::APFloatBase::PPCDoubleDouble(v40);
        }

        v41 = v92;
        if (v35 != v91)
        {
          v41 = &isSplat;
        }

        v42 = *(v41 + 28) & 7;
        v29 = v42 != 3;
        if (v35 == v91)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v91);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v91);
        }

        while (1)
        {
          v44 = v81 + 1;
          v81 = v44;
          if (v44 == v78)
          {
            break;
          }

          if (BYTE1(v79))
          {
            v45 = 0;
          }

          else
          {
            v45 = v44;
          }

          if (v79 == 1)
          {
            v46 = v80 + 32 * v45;
            v48 = *(v46 + 1);
            v47 = (v46 + 8);
            if (v35 == v48)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v91, v47);
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(&v91, v47);
            }
          }

          else
          {
            (*(*v80 + 24))(&isSplat);
          }

          if (v35 == v91)
          {
            v43 = (v42 != 3) ^ ((*(v92 + 28) & 7) == 3);
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v91);
            if ((v43 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v49 = (v42 != 3) ^ ((v93 & 7) == 3);
            llvm::detail::IEEEFloat::~IEEEFloat(&v91);
            if ((v49 & 1) == 0)
            {
              goto LABEL_69;
            }
          }
        }

        v30 = 1;
        if (__p)
        {
LABEL_115:
          if ((v79 & 1) == 0)
          {
            v51 = v80;
            v80 = 0;
            if (v51)
            {
              (*(*v51 + 8))(v51);
            }
          }

          if ((v85 & 1) == 0)
          {
            v52 = v86;
            v86 = 0;
            if (v52)
            {
              (*(*v52 + 8))(v52);
            }
          }

          if ((ArgOperands & 1) == 0)
          {
            v53 = v83;
            v83 = 0;
            if (v53)
            {
              (*(*v53 + 8))(v53);
            }
          }

          if (!v30)
          {
            return 0;
          }

LABEL_146:
          v61 = 88;
          if (v29)
          {
            v61 = 56;
          }

          v79 = *(*(a2 + 72) + v61);
          if (*(a2 + 36))
          {
            v62 = a2 - 16;
          }

          else
          {
            v62 = 0;
          }

          v63 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v62, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v63)
          {
            v64 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
          }

          else
          {
            v64 = 0;
          }

          ArgOperands = v63;
          v83 = v64;
          if (mlir::CallOpInterface::getArgOperands(&ArgOperands))
          {
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
            if (!v66)
            {
LABEL_159:
              v68 = *(a2 + 24);
              isSplat = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
              v91 = v69;
              __p = mlir::OpBuilder::create<mlir::mps::ConstantOp,llvm::ArrayRef<long long>>(a3 + 1, v68, &isSplat);
              v70 = mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 1), *(a2 + 24), &ArgOperands, &v79, &__p);
LABEL_161:
              ((*a3)[1])(a3, a2, v70);
              return 1;
            }

            v67 = 8 * v66;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v67 -= 8;
              if (!v67)
              {
                goto LABEL_159;
              }
            }
          }

          isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
          v70 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::ShapedType &,mlir::Value &,mlir::Type>((a3 + 1), *(a2 + 24), &ArgOperands, &v79, &isSplat);
          goto LABEL_161;
        }
      }

      v50 = v77;
      v77 = 0;
      if (v50)
      {
        (*(*v50 + 8))(v50);
      }

      goto LABEL_115;
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(v88, &ArgOperands);
    LOWORD(isSplat) = ArgOperands;
    if (ArgOperands == 1)
    {
      v91 = v83;
    }

    else
    {
      (*(*v83 + 16))(&v91);
    }

    v36 = v84;
    v92 = v84;
    LOWORD(v79) = v85;
    if (v85 == 1)
    {
      v80 = v86;
    }

    else
    {
      (*(*v86 + 16))(&v80);
      v36 = v92;
    }

    v81 = v87;
    if (v36 == v87)
    {
      v29 = 0;
    }

    else
    {
      if (BYTE1(isSplat))
      {
        v38 = 0;
      }

      else
      {
        v38 = v36;
      }

      if (isSplat)
      {
        v39 = v91 + 16 * v38;
        LODWORD(v77) = *(v39 + 2);
        if (v77 >= 0x41)
        {
          llvm::APInt::initSlowCase(&__p, v39);
        }

        else
        {
          __p = *v39;
        }
      }

      else
      {
        (*(*v91 + 24))(&__p);
      }

      p_p = &__p;
      if (v77 >= 0x41)
      {
        p_p = __p;
      }

      v55 = *p_p;
      v29 = *p_p != 0;
      if (v77 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      v56 = v92 + 1;
      v92 = v56;
      if (v56 == v81)
      {
LABEL_133:
        v37 = 1;
        if (v79)
        {
          goto LABEL_136;
        }

LABEL_134:
        v57 = v80;
        v80 = 0;
        if (v57)
        {
          (*(*v57 + 8))(v57);
        }

LABEL_136:
        if ((isSplat & 1) == 0)
        {
          v58 = v91;
          v91 = 0;
          if (v58)
          {
            (*(*v58 + 8))(v58);
          }
        }

        if ((v85 & 1) == 0)
        {
          v59 = v86;
          v86 = 0;
          if (v59)
          {
            (*(*v59 + 8))(v59);
          }
        }

        if ((ArgOperands & 1) == 0)
        {
          v60 = v83;
          v83 = 0;
          if (v60)
          {
            (*(*v60 + 8))(v60);
          }
        }

        if ((v37 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_146;
      }

      while (1)
      {
        v71 = BYTE1(isSplat) ? 0 : v56;
        if (isSplat == 1)
        {
          v72 = v91 + 16 * v71;
          LODWORD(v77) = *(v72 + 2);
          if (v77 > 0x40)
          {
            llvm::APInt::initSlowCase(&__p, v72);
          }

          else
          {
            __p = *v72;
          }
        }

        else
        {
          (*(*v91 + 24))(&__p);
        }

        v73 = v77 >= 0x41 ? __p : &__p;
        v74 = (v55 != 0) ^ (*v73 == 0);
        v75 = !__p || v77 < 0x41;
        if ((v74 & 1) == 0)
        {
          break;
        }

        if (!v75)
        {
          operator delete[](__p);
        }

        v56 = v92 + 1;
        v92 = v56;
        if (v56 == v81)
        {
          goto LABEL_133;
        }
      }

      if (!v75)
      {
        operator delete[](__p);
      }
    }

    v37 = 0;
    if (v79)
    {
      goto LABEL_136;
    }

    goto LABEL_134;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,llvm::ArrayRef<long long>>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ConstantOp::build(a1, v15, *a3, a3[1]);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::mps::ShapeOp>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::BroadcastToOp::build(a1, v19, *a3, *a4, *a5 - 16);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CastOp,mlir::ShapedType &,mlir::Value &,mlir::Type>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::CastOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
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

void mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v650 = 1283;
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = "mps.reciprocal_square_root";
    v444 = 26;
    goto LABEL_521;
  }

  v4 = v2;
  v5 = v2[2];
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v2[1];
    Values = mlir::SparseElementsAttr::getValues(v651);
    v5 = v4[2];
  }

  else
  {
    Values = v2[3];
  }

  {
    v582 = v5;
    v445 = Values;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    Values = v445;
    v5 = v582;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(Values, v5, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v7 = malloc(0x10uLL);
  v8 = v7;
  {
    v583 = v7;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v8 = v583;
  }

  mlir::detail::InterfaceMap::insert((v4 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v650 = 1283;
    v446 = "mps.reciprocal";
LABEL_465:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v446;
    v444 = 14;
    goto LABEL_521;
  }

  v11 = v9;
  v12 = v9[2];
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v9[1];
    v13 = mlir::SparseElementsAttr::getValues(v651);
    v12 = v11[2];
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = v9[3];
    {
      goto LABEL_12;
    }
  }

  v460 = v13;
  v521 = v12;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v13 = v460;
  v12 = v521;
LABEL_12:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v14 = malloc(0x10uLL);
  v15 = v14;
  {
    v584 = v14;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v15 = v584;
  }

  mlir::detail::InterfaceMap::insert((v11 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NegativeOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v650 = 1283;
    v447 = "mps.negative";
LABEL_520:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v447;
    v444 = 12;
LABEL_521:
    v649 = v444;
    v645 = ".";
    v646 = 259;
    llvm::operator+(&v647, &v645, v651);
    llvm::report_fatal_error(v651, 1);
  }

  v18 = v16;
  v19 = v16[2];
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v16[1];
    v20 = mlir::SparseElementsAttr::getValues(v651);
    v19 = v18[2];
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = v16[3];
    {
      goto LABEL_17;
    }
  }

  v461 = v20;
  v522 = v19;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v20 = v461;
  v19 = v522;
LABEL_17:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v21 = malloc(0x10uLL);
  v22 = v21;
  {
    v585 = v21;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v22 = v585;
  }

  mlir::detail::InterfaceMap::insert((v18 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v22);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NotOp,void>::id, a1);
  if ((v24 & 1) == 0)
  {
    v650 = 1283;
    v448 = "mps.not";
LABEL_494:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v448;
    v444 = 7;
    goto LABEL_521;
  }

  v25 = v23;
  v26 = v23[2];
  if (v26 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v23[1];
    v27 = mlir::SparseElementsAttr::getValues(v651);
    v26 = v25[2];
    {
      goto LABEL_22;
    }
  }

  else
  {
    v27 = v23[3];
    {
      goto LABEL_22;
    }
  }

  v462 = v27;
  v523 = v26;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v27 = v462;
  v26 = v523;
LABEL_22:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v27, v26, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v28 = malloc(0x10uLL);
  v29 = v28;
  {
    v586 = v28;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v29 = v586;
  }

  mlir::detail::InterfaceMap::insert((v25 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v29);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CeilOp,void>::id, a1);
  if ((v31 & 1) == 0)
  {
    v650 = 1283;
    v449 = "mps.ceil";
LABEL_502:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v449;
    v444 = 8;
    goto LABEL_521;
  }

  v32 = v30;
  v33 = v30[2];
  if (v33 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v30[1];
    v34 = mlir::SparseElementsAttr::getValues(v651);
    v33 = v32[2];
    {
      goto LABEL_27;
    }
  }

  else
  {
    v34 = v30[3];
    {
      goto LABEL_27;
    }
  }

  v463 = v34;
  v524 = v33;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v34 = v463;
  v33 = v524;
LABEL_27:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v34, v33, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v35 = malloc(0x10uLL);
  v36 = v35;
  {
    v587 = v35;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v36 = v587;
  }

  mlir::detail::InterfaceMap::insert((v32 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v36);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id, a1);
  if ((v38 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.floor";
LABEL_499:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v450;
    v444 = 9;
    goto LABEL_521;
  }

  v39 = v37;
  v40 = v37[2];
  if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v37[1];
    v41 = mlir::SparseElementsAttr::getValues(v651);
    v40 = v39[2];
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = v37[3];
    {
      goto LABEL_32;
    }
  }

  v464 = v41;
  v525 = v40;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v41 = v464;
  v40 = v525;
LABEL_32:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v41, v40, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v42 = malloc(0x10uLL);
  v43 = v42;
  {
    v588 = v42;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v43 = v588;
  }

  mlir::detail::InterfaceMap::insert((v39 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v43);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RoundOp,void>::id, a1);
  if ((v45 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.round";
    goto LABEL_499;
  }

  v46 = v44;
  v47 = v44[2];
  if (v47 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v44[1];
    v48 = mlir::SparseElementsAttr::getValues(v651);
    v47 = v46[2];
    {
      goto LABEL_37;
    }
  }

  else
  {
    v48 = v44[3];
    {
      goto LABEL_37;
    }
  }

  v465 = v48;
  v526 = v47;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v48 = v465;
  v47 = v526;
LABEL_37:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v48, v47, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v49 = malloc(0x10uLL);
  v50 = v49;
  {
    v589 = v49;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v50 = v589;
  }

  mlir::detail::InterfaceMap::insert((v46 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v50);
  v51 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id, a1);
  if ((v52 & 1) == 0)
  {
    v650 = 1283;
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = "mps.square_root";
    v444 = 15;
    goto LABEL_521;
  }

  v53 = v51;
  v54 = v51[2];
  if (v54 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v51[1];
    v55 = mlir::SparseElementsAttr::getValues(v651);
    v54 = v53[2];
    {
      goto LABEL_42;
    }
  }

  else
  {
    v55 = v51[3];
    {
      goto LABEL_42;
    }
  }

  v466 = v55;
  v527 = v54;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v55 = v466;
  v54 = v527;
LABEL_42:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v55, v54, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v56 = malloc(0x10uLL);
  v57 = v56;
  {
    v590 = v56;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v57 = v590;
  }

  mlir::detail::InterfaceMap::insert((v53 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v57);
  v58 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, a1);
  if ((v59 & 1) == 0)
  {
    v650 = 1283;
    v448 = "mps.add";
    goto LABEL_494;
  }

  v60 = v58;
  v61 = v58[2];
  if (v61 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v58[1];
    v62 = mlir::SparseElementsAttr::getValues(v651);
    v61 = v60[2];
    {
      goto LABEL_47;
    }
  }

  else
  {
    v62 = v58[3];
    {
      goto LABEL_47;
    }
  }

  v467 = v62;
  v528 = v61;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v62 = v467;
  v61 = v528;
LABEL_47:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v62, v61, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v63 = malloc(0x10uLL);
  v64 = v63;
  {
    v591 = v63;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v64 = v591;
  }

  mlir::detail::InterfaceMap::insert((v60 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v64);
  v65 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id, a1);
  if ((v66 & 1) == 0)
  {
    v650 = 1283;
    v447 = "mps.subtract";
    goto LABEL_520;
  }

  v67 = v65;
  v68 = v65[2];
  if (v68 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v65[1];
    v69 = mlir::SparseElementsAttr::getValues(v651);
    v68 = v67[2];
    {
      goto LABEL_52;
    }
  }

  else
  {
    v69 = v65[3];
    {
      goto LABEL_52;
    }
  }

  v468 = v69;
  v529 = v68;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v69 = v468;
  v68 = v529;
LABEL_52:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v69, v68, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v70 = malloc(0x10uLL);
  v71 = v70;
  {
    v592 = v70;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v71 = v592;
  }

  mlir::detail::InterfaceMap::insert((v67 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v71);
  v72 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, a1);
  if ((v73 & 1) == 0)
  {
    v650 = 1283;
    v447 = "mps.multiply";
    goto LABEL_520;
  }

  v74 = v72;
  v75 = v72[2];
  if (v75 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v72[1];
    v76 = mlir::SparseElementsAttr::getValues(v651);
    v75 = v74[2];
    {
      goto LABEL_57;
    }
  }

  else
  {
    v76 = v72[3];
    {
      goto LABEL_57;
    }
  }

  v469 = v76;
  v530 = v75;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v76 = v469;
  v75 = v530;
LABEL_57:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v76, v75, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v77 = malloc(0x10uLL);
  v78 = v77;
  {
    v593 = v77;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v78 = v593;
  }

  mlir::detail::InterfaceMap::insert((v74 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v78);
  v79 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id, a1);
  if ((v80 & 1) == 0)
  {
    v650 = 1283;
    v451 = "mps.divide";
LABEL_489:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v451;
    v444 = 10;
    goto LABEL_521;
  }

  v81 = v79;
  v82 = v79[2];
  if (v82 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v79[1];
    v83 = mlir::SparseElementsAttr::getValues(v651);
    v82 = v81[2];
    {
      goto LABEL_62;
    }
  }

  else
  {
    v83 = v79[3];
    {
      goto LABEL_62;
    }
  }

  v470 = v83;
  v531 = v82;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v83 = v470;
  v82 = v531;
LABEL_62:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v83, v82, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v84 = malloc(0x10uLL);
  v85 = v84;
  {
    v594 = v84;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v85 = v594;
  }

  mlir::detail::InterfaceMap::insert((v81 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v85);
  v86 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ModuloOp,void>::id, a1);
  if ((v87 & 1) == 0)
  {
    v650 = 1283;
    v451 = "mps.modulo";
    goto LABEL_489;
  }

  v88 = v86;
  v89 = v86[2];
  if (v89 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v86[1];
    v90 = mlir::SparseElementsAttr::getValues(v651);
    v89 = v88[2];
    {
      goto LABEL_67;
    }
  }

  else
  {
    v90 = v86[3];
    {
      goto LABEL_67;
    }
  }

  v471 = v90;
  v532 = v89;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v90 = v471;
  v89 = v532;
LABEL_67:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v90, v89, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v91 = malloc(0x10uLL);
  v92 = v91;
  {
    v595 = v91;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v92 = v595;
  }

  mlir::detail::InterfaceMap::insert((v88 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v92);
  v93 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id, a1);
  if ((v94 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.minimum";
LABEL_511:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v452;
    v444 = 11;
    goto LABEL_521;
  }

  v95 = v93;
  v96 = v93[2];
  if (v96 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v93[1];
    v97 = mlir::SparseElementsAttr::getValues(v651);
    v96 = v95[2];
    {
      goto LABEL_72;
    }
  }

  else
  {
    v97 = v93[3];
    {
      goto LABEL_72;
    }
  }

  v472 = v97;
  v533 = v96;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v97 = v472;
  v96 = v533;
LABEL_72:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v97, v96, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v98 = malloc(0x10uLL);
  v99 = v98;
  {
    v596 = v98;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v99 = v596;
  }

  mlir::detail::InterfaceMap::insert((v95 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v99);
  v100 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id, a1);
  if ((v101 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.maximum";
    goto LABEL_511;
  }

  v102 = v100;
  v103 = v100[2];
  if (v103 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v100[1];
    v104 = mlir::SparseElementsAttr::getValues(v651);
    v103 = v102[2];
    {
      goto LABEL_77;
    }
  }

  else
  {
    v104 = v100[3];
    {
      goto LABEL_77;
    }
  }

  v473 = v104;
  v534 = v103;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v104 = v473;
  v103 = v534;
LABEL_77:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v104, v103, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v105 = malloc(0x10uLL);
  v106 = v105;
  {
    v597 = v105;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v106 = v597;
  }

  mlir::detail::InterfaceMap::insert((v102 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v106);
  v107 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::EqualToOp,void>::id, a1);
  if ((v108 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.equal";
    goto LABEL_499;
  }

  v109 = v107;
  v110 = v107[2];
  if (v110 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v107[1];
    v111 = mlir::SparseElementsAttr::getValues(v651);
    v110 = v109[2];
    {
      goto LABEL_82;
    }
  }

  else
  {
    v111 = v107[3];
    {
      goto LABEL_82;
    }
  }

  v474 = v111;
  v535 = v110;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v111 = v474;
  v110 = v535;
LABEL_82:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v111, v110, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v112 = malloc(0x10uLL);
  v113 = v112;
  {
    v598 = v112;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v113 = v598;
  }

  mlir::detail::InterfaceMap::insert((v109 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v113);
  v114 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NotEqualToOp,void>::id, a1);
  if ((v115 & 1) == 0)
  {
    v650 = 1283;
    v453 = "mps.not_equal";
LABEL_518:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v453;
    v444 = 13;
    goto LABEL_521;
  }

  v116 = v114;
  v117 = v114[2];
  if (v117 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v114[1];
    v118 = mlir::SparseElementsAttr::getValues(v651);
    v117 = v116[2];
    {
      goto LABEL_87;
    }
  }

  else
  {
    v118 = v114[3];
    {
      goto LABEL_87;
    }
  }

  v475 = v118;
  v536 = v117;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v118 = v475;
  v117 = v536;
LABEL_87:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v118, v117, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v119 = malloc(0x10uLL);
  v120 = v119;
  {
    v599 = v119;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v120 = v599;
  }

  mlir::detail::InterfaceMap::insert((v116 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v120);
  v121 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOp,void>::id, a1);
  if ((v122 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.greater";
    goto LABEL_511;
  }

  v123 = v121;
  v124 = v121[2];
  if (v124 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v121[1];
    v125 = mlir::SparseElementsAttr::getValues(v651);
    v124 = v123[2];
    {
      goto LABEL_92;
    }
  }

  else
  {
    v125 = v121[3];
    {
      goto LABEL_92;
    }
  }

  v476 = v125;
  v537 = v124;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v125 = v476;
  v124 = v537;
LABEL_92:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v125, v124, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v126 = malloc(0x10uLL);
  v127 = v126;
  {
    v600 = v126;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v127 = v600;
  }

  mlir::detail::InterfaceMap::insert((v123 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v127);
  v128 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOrEqualToOp,void>::id, a1);
  if ((v129 & 1) == 0)
  {
    v650 = 1283;
    v454 = "mps.greater_equal";
LABEL_486:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v454;
    v444 = 17;
    goto LABEL_521;
  }

  v130 = v128;
  v131 = v128[2];
  if (v131 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v128[1];
    v132 = mlir::SparseElementsAttr::getValues(v651);
    v131 = v130[2];
    {
      goto LABEL_97;
    }
  }

  else
  {
    v132 = v128[3];
    {
      goto LABEL_97;
    }
  }

  v477 = v132;
  v538 = v131;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v132 = v477;
  v131 = v538;
LABEL_97:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v132, v131, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v133 = malloc(0x10uLL);
  v134 = v133;
  {
    v601 = v133;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v134 = v601;
  }

  mlir::detail::InterfaceMap::insert((v130 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v134);
  v135 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LessThanOp,void>::id, a1);
  if ((v136 & 1) == 0)
  {
    v650 = 1283;
    v449 = "mps.less";
    goto LABEL_502;
  }

  v137 = v135;
  v138 = v135[2];
  if (v138 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v135[1];
    v139 = mlir::SparseElementsAttr::getValues(v651);
    v138 = v137[2];
    {
      goto LABEL_102;
    }
  }

  else
  {
    v139 = v135[3];
    {
      goto LABEL_102;
    }
  }

  v478 = v139;
  v539 = v138;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v139 = v478;
  v138 = v539;
LABEL_102:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v139, v138, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v140 = malloc(0x10uLL);
  v141 = v140;
  {
    v602 = v140;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v141 = v602;
  }

  mlir::detail::InterfaceMap::insert((v137 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v141);
  v142 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LessThanOrEqualToOp,void>::id, a1);
  if ((v143 & 1) == 0)
  {
    v650 = 1283;
    v446 = "mps.less_equal";
    goto LABEL_465;
  }

  v144 = v142;
  v145 = v142[2];
  if (v145 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v142[1];
    v146 = mlir::SparseElementsAttr::getValues(v651);
    v145 = v144[2];
    {
      goto LABEL_107;
    }
  }

  else
  {
    v146 = v142[3];
    {
      goto LABEL_107;
    }
  }

  v479 = v146;
  v540 = v145;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v146 = v479;
  v145 = v540;
LABEL_107:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v146, v145, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v147 = malloc(0x10uLL);
  v148 = v147;
  {
    v603 = v147;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v148 = v603;
  }

  mlir::detail::InterfaceMap::insert((v144 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v148);
  v149 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionAndOp,void>::id, a1);
  if ((v150 & 1) == 0)
  {
    v650 = 1283;
    v454 = "mps.reduction_and";
    goto LABEL_486;
  }

  v151 = v149;
  v152 = v149[2];
  if (v152 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v149[1];
    v153 = mlir::SparseElementsAttr::getValues(v651);
    v152 = v151[2];
    {
      goto LABEL_112;
    }
  }

  else
  {
    v153 = v149[3];
    {
      goto LABEL_112;
    }
  }

  v480 = v153;
  v541 = v152;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v153 = v480;
  v152 = v541;
LABEL_112:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v153, v152, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v154 = malloc(0x10uLL);
  v155 = v154;
  {
    v604 = v154;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v155 = v604;
  }

  mlir::detail::InterfaceMap::insert((v151 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v155);
  v156 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMaxOp,void>::id, a1);
  if ((v157 & 1) == 0)
  {
    v650 = 1283;
    v455 = "mps.reduction_argmax";
LABEL_497:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v455;
    v444 = 20;
    goto LABEL_521;
  }

  v158 = v156;
  v159 = v156[2];
  if (v159 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v156[1];
    v160 = mlir::SparseElementsAttr::getValues(v651);
    v159 = v158[2];
    {
      goto LABEL_117;
    }
  }

  else
  {
    v160 = v156[3];
    {
      goto LABEL_117;
    }
  }

  v481 = v160;
  v542 = v159;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v160 = v481;
  v159 = v542;
LABEL_117:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v160, v159, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v161 = malloc(0x10uLL);
  v162 = v161;
  {
    v605 = v161;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v162 = v605;
  }

  mlir::detail::InterfaceMap::insert((v158 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v162);
  v163 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMinOp,void>::id, a1);
  if ((v164 & 1) == 0)
  {
    v650 = 1283;
    v455 = "mps.reduction_argmin";
    goto LABEL_497;
  }

  v165 = v163;
  v166 = v163[2];
  if (v166 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v163[1];
    v167 = mlir::SparseElementsAttr::getValues(v651);
    v166 = v165[2];
    {
      goto LABEL_122;
    }
  }

  else
  {
    v167 = v163[3];
    {
      goto LABEL_122;
    }
  }

  v482 = v167;
  v543 = v166;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v167 = v482;
  v166 = v543;
LABEL_122:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v167, v166, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v168 = malloc(0x10uLL);
  v169 = v168;
  {
    v606 = v168;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v169 = v606;
  }

  mlir::detail::InterfaceMap::insert((v165 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v169);
  v170 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionLogSumExpOp,void>::id, a1);
  if ((v171 & 1) == 0)
  {
    v650 = 1283;
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = "mps.reduction_logsumexp";
    v444 = 23;
    goto LABEL_521;
  }

  v172 = v170;
  v173 = v170[2];
  if (v173 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v170[1];
    v174 = mlir::SparseElementsAttr::getValues(v651);
    v173 = v172[2];
    {
      goto LABEL_127;
    }
  }

  else
  {
    v174 = v170[3];
    {
      goto LABEL_127;
    }
  }

  v483 = v174;
  v544 = v173;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v174 = v483;
  v173 = v544;
LABEL_127:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v174, v173, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v175 = malloc(0x10uLL);
  v176 = v175;
  {
    v607 = v175;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v176 = v607;
  }

  mlir::detail::InterfaceMap::insert((v172 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v176);
  v177 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id, a1);
  if ((v178 & 1) == 0)
  {
    v650 = 1283;
    v454 = "mps.reduction_max";
    goto LABEL_486;
  }

  v179 = v177;
  v180 = v177[2];
  if (v180 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v177[1];
    v181 = mlir::SparseElementsAttr::getValues(v651);
    v180 = v179[2];
    {
      goto LABEL_132;
    }
  }

  else
  {
    v181 = v177[3];
    {
      goto LABEL_132;
    }
  }

  v484 = v181;
  v545 = v180;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v181 = v484;
  v180 = v545;
LABEL_132:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v181, v180, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v182 = malloc(0x10uLL);
  v183 = v182;
  {
    v608 = v182;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v183 = v608;
  }

  mlir::detail::InterfaceMap::insert((v179 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v183);
  v184 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id, a1);
  if ((v185 & 1) == 0)
  {
    v650 = 1283;
    v456 = "mps.reduction_mean";
LABEL_516:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v456;
    v444 = 18;
    goto LABEL_521;
  }

  v186 = v184;
  v187 = v184[2];
  if (v187 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v184[1];
    v188 = mlir::SparseElementsAttr::getValues(v651);
    v187 = v186[2];
    {
      goto LABEL_137;
    }
  }

  else
  {
    v188 = v184[3];
    {
      goto LABEL_137;
    }
  }

  v485 = v188;
  v546 = v187;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v188 = v485;
  v187 = v546;
LABEL_137:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v188, v187, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v189 = malloc(0x10uLL);
  v190 = v189;
  {
    v609 = v189;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v190 = v609;
  }

  mlir::detail::InterfaceMap::insert((v186 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v190);
  v191 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMinOp,void>::id, a1);
  if ((v192 & 1) == 0)
  {
    v650 = 1283;
    v454 = "mps.reduction_min";
    goto LABEL_486;
  }

  v193 = v191;
  v194 = v191[2];
  if (v194 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v191[1];
    v195 = mlir::SparseElementsAttr::getValues(v651);
    v194 = v193[2];
    {
      goto LABEL_142;
    }
  }

  else
  {
    v195 = v191[3];
    {
      goto LABEL_142;
    }
  }

  v486 = v195;
  v547 = v194;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v195 = v486;
  v194 = v547;
LABEL_142:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v195, v194, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v196 = malloc(0x10uLL);
  v197 = v196;
  {
    v610 = v196;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v197 = v610;
  }

  mlir::detail::InterfaceMap::insert((v193 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v197);
  v198 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionOrOp,void>::id, a1);
  if ((v199 & 1) == 0)
  {
    v650 = 1283;
    v457 = "mps.reduction_or";
LABEL_507:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v457;
    v444 = 16;
    goto LABEL_521;
  }

  v200 = v198;
  v201 = v198[2];
  if (v201 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v198[1];
    v202 = mlir::SparseElementsAttr::getValues(v651);
    v201 = v200[2];
    {
      goto LABEL_147;
    }
  }

  else
  {
    v202 = v198[3];
    {
      goto LABEL_147;
    }
  }

  v487 = v202;
  v548 = v201;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v202 = v487;
  v201 = v548;
LABEL_147:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v202, v201, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v203 = malloc(0x10uLL);
  v204 = v203;
  {
    v611 = v203;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v204 = v611;
  }

  mlir::detail::InterfaceMap::insert((v200 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v204);
  v205 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, a1);
  if ((v206 & 1) == 0)
  {
    v650 = 1283;
    v454 = "mps.reduction_sum";
    goto LABEL_486;
  }

  v207 = v205;
  v208 = v205[2];
  if (v208 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v205[1];
    v209 = mlir::SparseElementsAttr::getValues(v651);
    v208 = v207[2];
    {
      goto LABEL_152;
    }
  }

  else
  {
    v209 = v205[3];
    {
      goto LABEL_152;
    }
  }

  v488 = v209;
  v549 = v208;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v209 = v488;
  v208 = v549;
LABEL_152:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v209, v208, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v210 = malloc(0x10uLL);
  v211 = v210;
  {
    v612 = v210;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v211 = v612;
  }

  mlir::detail::InterfaceMap::insert((v207 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v211);
  v212 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id, a1);
  if ((v213 & 1) == 0)
  {
    v650 = 1283;
    v458 = "mps.reduction_variance";
LABEL_505:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v458;
    v444 = 22;
    goto LABEL_521;
  }

  v214 = v212;
  v215 = v212[2];
  if (v215 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v212[1];
    v216 = mlir::SparseElementsAttr::getValues(v651);
    v215 = v214[2];
    {
      goto LABEL_157;
    }
  }

  else
  {
    v216 = v212[3];
    {
      goto LABEL_157;
    }
  }

  v489 = v216;
  v550 = v215;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v216 = v489;
  v215 = v550;
LABEL_157:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v216, v215, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v217 = malloc(0x10uLL);
  v218 = v217;
  {
    v613 = v217;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v218 = v613;
  }

  mlir::detail::InterfaceMap::insert((v214 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v218);
  v219 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BatchToSpaceOp,void>::id, a1);
  if ((v220 & 1) == 0)
  {
    v650 = 1283;
    v456 = "mps.batch_to_space";
    goto LABEL_516;
  }

  v221 = v219;
  v222 = v219[2];
  if (v222 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v219[1];
    v223 = mlir::SparseElementsAttr::getValues(v651);
    v222 = v221[2];
    {
      goto LABEL_162;
    }
  }

  else
  {
    v223 = v219[3];
    {
      goto LABEL_162;
    }
  }

  v490 = v223;
  v551 = v222;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v223 = v490;
  v222 = v551;
LABEL_162:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v223, v222, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v224 = malloc(0x10uLL);
  v225 = v224;
  {
    v614 = v224;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v225 = v614;
  }

  mlir::detail::InterfaceMap::insert((v221 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v225);
  v226 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id, a1);
  if ((v227 & 1) == 0)
  {
    v650 = 1283;
    v456 = "mps.space_to_batch";
    goto LABEL_516;
  }

  v228 = v226;
  v229 = v226[2];
  if (v229 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v226[1];
    v230 = mlir::SparseElementsAttr::getValues(v651);
    v229 = v228[2];
    {
      goto LABEL_167;
    }
  }

  else
  {
    v230 = v226[3];
    {
      goto LABEL_167;
    }
  }

  v491 = v230;
  v552 = v229;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v230 = v491;
  v229 = v552;
LABEL_167:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v230, v229, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v231 = malloc(0x10uLL);
  v232 = v231;
  {
    v615 = v231;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v232 = v615;
  }

  mlir::detail::InterfaceMap::insert((v228 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v232);
  v233 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, a1);
  if ((v234 & 1) == 0)
  {
    v650 = 1283;
    v451 = "mps.select";
    goto LABEL_489;
  }

  v235 = v233;
  v236 = v233[2];
  if (v236 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v233[1];
    v237 = mlir::SparseElementsAttr::getValues(v651);
    v236 = v235[2];
    {
      goto LABEL_172;
    }
  }

  else
  {
    v237 = v233[3];
    {
      goto LABEL_172;
    }
  }

  v492 = v237;
  v553 = v236;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v237 = v492;
  v236 = v553;
LABEL_172:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v237, v236, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v238 = malloc(0x10uLL);
  v239 = v238;
  {
    v616 = v238;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v239 = v616;
  }

  mlir::detail::InterfaceMap::insert((v235 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v239);
  v240 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id, a1);
  if ((v241 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.power";
    goto LABEL_499;
  }

  v242 = v240;
  v243 = v240[2];
  if (v243 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v240[1];
    v244 = mlir::SparseElementsAttr::getValues(v651);
    v243 = v242[2];
    {
      goto LABEL_177;
    }
  }

  else
  {
    v244 = v240[3];
    {
      goto LABEL_177;
    }
  }

  v493 = v244;
  v554 = v243;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v244 = v493;
  v243 = v554;
LABEL_177:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v244, v243, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v245 = malloc(0x10uLL);
  v246 = v245;
  {
    v617 = v245;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v246 = v617;
  }

  mlir::detail::InterfaceMap::insert((v242 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v246);
  v247 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, a1);
  if ((v248 & 1) == 0)
  {
    v650 = 1283;
    v453 = "mps.transpose";
    goto LABEL_518;
  }

  v249 = v247;
  v250 = v247[2];
  if (v250 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v247[1];
    v251 = mlir::SparseElementsAttr::getValues(v651);
    v250 = v249[2];
    {
      goto LABEL_182;
    }
  }

  else
  {
    v251 = v247[3];
    {
      goto LABEL_182;
    }
  }

  v494 = v251;
  v555 = v250;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v251 = v494;
  v250 = v555;
LABEL_182:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v251, v250, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v252 = malloc(0x10uLL);
  v253 = v252;
  {
    v618 = v252;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v253 = v618;
  }

  mlir::detail::InterfaceMap::insert((v249 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v253);
  v254 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id, a1);
  if ((v255 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.permute";
    goto LABEL_511;
  }

  v256 = v254;
  v257 = v254[2];
  if (v257 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v254[1];
    v258 = mlir::SparseElementsAttr::getValues(v651);
    v257 = v256[2];
    {
      goto LABEL_187;
    }
  }

  else
  {
    v258 = v254[3];
    {
      goto LABEL_187;
    }
  }

  v495 = v258;
  v556 = v257;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v258 = v495;
  v257 = v556;
LABEL_187:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v258, v257, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v259 = malloc(0x10uLL);
  v260 = v259;
  {
    v619 = v259;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v260 = v619;
  }

  mlir::detail::InterfaceMap::insert((v256 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v260);
  v261 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterOp,void>::id, a1);
  if ((v262 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.scatter";
    goto LABEL_511;
  }

  v263 = v261;
  v264 = v261[2];
  if (v264 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v261[1];
    v265 = mlir::SparseElementsAttr::getValues(v651);
    v264 = v263[2];
    {
      goto LABEL_192;
    }
  }

  else
  {
    v265 = v261[3];
    {
      goto LABEL_192;
    }
  }

  v496 = v265;
  v557 = v264;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v265 = v496;
  v264 = v557;
LABEL_192:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v265, v264, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v266 = malloc(0x10uLL);
  v267 = v266;
  {
    v620 = v266;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v267 = v620;
  }

  mlir::detail::InterfaceMap::insert((v263 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v267);
  v268 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id, a1);
  if ((v269 & 1) == 0)
  {
    v650 = 1283;
    v451 = "mps.gather";
    goto LABEL_489;
  }

  v270 = v268;
  v271 = v268[2];
  if (v271 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v268[1];
    v272 = mlir::SparseElementsAttr::getValues(v651);
    v271 = v270[2];
    {
      goto LABEL_197;
    }
  }

  else
  {
    v272 = v268[3];
    {
      goto LABEL_197;
    }
  }

  v497 = v272;
  v558 = v271;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v272 = v497;
  v271 = v558;
LABEL_197:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v272, v271, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v273 = malloc(0x10uLL);
  v274 = v273;
  {
    v621 = v273;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v274 = v621;
  }

  mlir::detail::InterfaceMap::insert((v270 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v274);
  v275 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, a1);
  if ((v276 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.slice";
    goto LABEL_499;
  }

  v277 = v275;
  v278 = v275[2];
  if (v278 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v275[1];
    v279 = mlir::SparseElementsAttr::getValues(v651);
    v278 = v277[2];
    {
      goto LABEL_202;
    }
  }

  else
  {
    v279 = v275[3];
    {
      goto LABEL_202;
    }
  }

  v498 = v279;
  v559 = v278;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v279 = v498;
  v278 = v559;
LABEL_202:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v279, v278, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v280 = malloc(0x10uLL);
  v281 = v280;
  {
    v622 = v280;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v281 = v622;
  }

  mlir::detail::InterfaceMap::insert((v277 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v281);
  v282 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, a1);
  if ((v283 & 1) == 0)
  {
    v650 = 1283;
    v454 = "mps.strided_slice";
    goto LABEL_486;
  }

  v284 = v282;
  v285 = v282[2];
  if (v285 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v282[1];
    v286 = mlir::SparseElementsAttr::getValues(v651);
    v285 = v284[2];
    {
      goto LABEL_207;
    }
  }

  else
  {
    v286 = v282[3];
    {
      goto LABEL_207;
    }
  }

  v499 = v286;
  v560 = v285;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v286 = v499;
  v285 = v560;
LABEL_207:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v286, v285, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v287 = malloc(0x10uLL);
  v288 = v287;
  {
    v623 = v287;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v288 = v623;
  }

  mlir::detail::InterfaceMap::insert((v284 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v288);
  v289 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id, a1);
  if ((v290 & 1) == 0)
  {
    v650 = 1283;
    v449 = "mps.crop";
    goto LABEL_502;
  }

  v291 = v289;
  v292 = v289[2];
  if (v292 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v289[1];
    v293 = mlir::SparseElementsAttr::getValues(v651);
    v292 = v291[2];
    {
      goto LABEL_212;
    }
  }

  else
  {
    v293 = v289[3];
    {
      goto LABEL_212;
    }
  }

  v500 = v293;
  v561 = v292;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v293 = v500;
  v292 = v561;
LABEL_212:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v293, v292, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v294 = malloc(0x10uLL);
  v295 = v294;
  {
    v624 = v294;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v295 = v624;
  }

  mlir::detail::InterfaceMap::insert((v291 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v295);
  v296 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, a1);
  if ((v297 & 1) == 0)
  {
    v650 = 1283;
    v451 = "mps.concat";
    goto LABEL_489;
  }

  v298 = v296;
  v299 = v296[2];
  if (v299 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v296[1];
    v300 = mlir::SparseElementsAttr::getValues(v651);
    v299 = v298[2];
    {
      goto LABEL_217;
    }
  }

  else
  {
    v300 = v296[3];
    {
      goto LABEL_217;
    }
  }

  v501 = v300;
  v562 = v299;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v300 = v501;
  v299 = v562;
LABEL_217:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v300, v299, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v301 = malloc(0x10uLL);
  v302 = v301;
  {
    v625 = v301;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v302 = v625;
  }

  mlir::detail::InterfaceMap::insert((v298 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v302);
  v303 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, a1);
  if ((v304 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.reshape";
    goto LABEL_511;
  }

  v305 = v303;
  v306 = v303[2];
  if (v306 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v303[1];
    v307 = mlir::SparseElementsAttr::getValues(v651);
    v306 = v305[2];
    {
      goto LABEL_222;
    }
  }

  else
  {
    v307 = v303[3];
    {
      goto LABEL_222;
    }
  }

  v502 = v307;
  v563 = v306;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v307 = v502;
  v306 = v563;
LABEL_222:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v307, v306, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v308 = malloc(0x10uLL);
  v309 = v308;
  {
    v626 = v308;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v309 = v626;
  }

  mlir::detail::InterfaceMap::insert((v305 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v309);
  v310 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GetCoordOp,void>::id, a1);
  if ((v311 & 1) == 0)
  {
    v650 = 1283;
    v459 = "mps.get_coordinates";
LABEL_513:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v459;
    v444 = 19;
    goto LABEL_521;
  }

  v312 = v310;
  v313 = v310[2];
  if (v313 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v310[1];
    v314 = mlir::SparseElementsAttr::getValues(v651);
    v313 = v312[2];
    {
      goto LABEL_227;
    }
  }

  else
  {
    v314 = v310[3];
    {
      goto LABEL_227;
    }
  }

  v503 = v314;
  v564 = v313;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v314 = v503;
  v313 = v564;
LABEL_227:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v314, v313, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v315 = malloc(0x10uLL);
  v316 = v315;
  {
    v627 = v315;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v316 = v627;
  }

  mlir::detail::InterfaceMap::insert((v312 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v316);
  v317 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::InitRandomPhiloxStateOp,void>::id, a1);
  if ((v318 & 1) == 0)
  {
    v650 = 1283;
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = "mps.init_random_philox_state";
    v444 = 28;
    goto LABEL_521;
  }

  v319 = v317;
  v320 = v317[2];
  if (v320 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v317[1];
    v321 = mlir::SparseElementsAttr::getValues(v651);
    v320 = v319[2];
    {
      goto LABEL_232;
    }
  }

  else
  {
    v321 = v317[3];
    {
      goto LABEL_232;
    }
  }

  v504 = v321;
  v565 = v320;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v321 = v504;
  v320 = v565;
LABEL_232:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v321, v320, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v322 = malloc(0x10uLL);
  v323 = v322;
  {
    v628 = v322;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v323 = v628;
  }

  mlir::detail::InterfaceMap::insert((v319 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v323);
  v324 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id, a1);
  if ((v325 & 1) == 0)
  {
    v650 = 1283;
    v448 = "mps.pad";
    goto LABEL_494;
  }

  v326 = v324;
  v327 = v324[2];
  if (v327 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v324[1];
    v328 = mlir::SparseElementsAttr::getValues(v651);
    v327 = v326[2];
    {
      goto LABEL_237;
    }
  }

  else
  {
    v328 = v324[3];
    {
      goto LABEL_237;
    }
  }

  v505 = v328;
  v566 = v327;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v328 = v505;
  v327 = v566;
LABEL_237:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v328, v327, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v329 = malloc(0x10uLL);
  v330 = v329;
  {
    v629 = v329;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v330 = v629;
  }

  mlir::detail::InterfaceMap::insert((v326 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v330);
  v331 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, a1);
  if ((v332 & 1) == 0)
  {
    v650 = 1283;
    v449 = "mps.cast";
    goto LABEL_502;
  }

  v333 = v331;
  v334 = v331[2];
  if (v334 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v331[1];
    v335 = mlir::SparseElementsAttr::getValues(v651);
    v334 = v333[2];
    {
      goto LABEL_242;
    }
  }

  else
  {
    v335 = v331[3];
    {
      goto LABEL_242;
    }
  }

  v506 = v335;
  v567 = v334;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v335 = v506;
  v334 = v567;
LABEL_242:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v335, v334, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v336 = malloc(0x10uLL);
  v337 = v336;
  {
    v630 = v336;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v337 = v630;
  }

  mlir::detail::InterfaceMap::insert((v333 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v337);
  v338 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id, a1);
  if ((v339 & 1) == 0)
  {
    v650 = 1283;
    v455 = "mps.reinterpret_cast";
    goto LABEL_497;
  }

  v340 = v338;
  v341 = v338[2];
  if (v341 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v338[1];
    v342 = mlir::SparseElementsAttr::getValues(v651);
    v341 = v340[2];
    {
      goto LABEL_247;
    }
  }

  else
  {
    v342 = v338[3];
    {
      goto LABEL_247;
    }
  }

  v507 = v342;
  v568 = v341;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v342 = v507;
  v341 = v568;
LABEL_247:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v342, v341, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v343 = malloc(0x10uLL);
  v344 = v343;
  {
    v631 = v343;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v344 = v631;
  }

  mlir::detail::InterfaceMap::insert((v340 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v344);
  v345 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ShapeOp,void>::id, a1);
  if ((v346 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.shape";
    goto LABEL_499;
  }

  v347 = v345;
  v348 = v345[2];
  if (v348 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v345[1];
    v349 = mlir::SparseElementsAttr::getValues(v651);
    v348 = v347[2];
    {
      goto LABEL_252;
    }
  }

  else
  {
    v349 = v345[3];
    {
      goto LABEL_252;
    }
  }

  v508 = v349;
  v569 = v348;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v349 = v508;
  v348 = v569;
LABEL_252:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v349, v348, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v350 = malloc(0x10uLL);
  v351 = v350;
  {
    v632 = v350;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v351 = v632;
  }

  mlir::detail::InterfaceMap::insert((v347 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v351);
  v352 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RankOp,void>::id, a1);
  if ((v353 & 1) == 0)
  {
    v650 = 1283;
    v449 = "mps.rank";
    goto LABEL_502;
  }

  v354 = v352;
  v355 = v352[2];
  if (v355 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v352[1];
    v356 = mlir::SparseElementsAttr::getValues(v651);
    v355 = v354[2];
    {
      goto LABEL_257;
    }
  }

  else
  {
    v356 = v352[3];
    {
      goto LABEL_257;
    }
  }

  v509 = v356;
  v570 = v355;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v356 = v509;
  v355 = v570;
LABEL_257:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v356, v355, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v357 = malloc(0x10uLL);
  v358 = v357;
  {
    v633 = v357;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v358 = v633;
  }

  mlir::detail::InterfaceMap::insert((v354 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v358);
  v359 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SizeOp,void>::id, a1);
  if ((v360 & 1) == 0)
  {
    v650 = 1283;
    v449 = "mps.size";
    goto LABEL_502;
  }

  v361 = v359;
  v362 = v359[2];
  if (v362 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v359[1];
    v363 = mlir::SparseElementsAttr::getValues(v651);
    v362 = v361[2];
    {
      goto LABEL_262;
    }
  }

  else
  {
    v363 = v359[3];
    {
      goto LABEL_262;
    }
  }

  v510 = v363;
  v571 = v362;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v363 = v510;
  v362 = v571;
LABEL_262:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v363, v362, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v364 = malloc(0x10uLL);
  v365 = v364;
  {
    v634 = v364;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v365 = v634;
  }

  mlir::detail::InterfaceMap::insert((v361 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v365);
  v366 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DimensionSizeOp,void>::id, a1);
  if ((v367 & 1) == 0)
  {
    v650 = 1283;
    v456 = "mps.dimension_size";
    goto LABEL_516;
  }

  v368 = v366;
  v369 = v366[2];
  if (v369 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v366[1];
    v370 = mlir::SparseElementsAttr::getValues(v651);
    v369 = v368[2];
    {
      goto LABEL_267;
    }
  }

  else
  {
    v370 = v366[3];
    {
      goto LABEL_267;
    }
  }

  v511 = v370;
  v572 = v369;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v370 = v511;
  v369 = v572;
LABEL_267:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v370, v369, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v371 = malloc(0x10uLL);
  v372 = v371;
  {
    v635 = v371;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v372 = v635;
  }

  mlir::detail::InterfaceMap::insert((v368 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v372);
  v373 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DynamicShapeCastOp,void>::id, a1);
  if ((v374 & 1) == 0)
  {
    v650 = 1283;
    v458 = "mps.dynamic_shape_cast";
    goto LABEL_505;
  }

  v375 = v373;
  v376 = v373[2];
  if (v376 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v373[1];
    v377 = mlir::SparseElementsAttr::getValues(v651);
    v376 = v375[2];
    {
      goto LABEL_272;
    }
  }

  else
  {
    v377 = v373[3];
    {
      goto LABEL_272;
    }
  }

  v512 = v377;
  v573 = v376;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v377 = v512;
  v376 = v573;
LABEL_272:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v377, v376, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v378 = malloc(0x10uLL);
  v379 = v378;
  {
    v636 = v378;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v379 = v636;
  }

  mlir::detail::InterfaceMap::insert((v375 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v379);
  v380 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id, a1);
  if ((v381 & 1) == 0)
  {
    v650 = 1283;
    v457 = "mps.broadcast_to";
    goto LABEL_507;
  }

  v382 = v380;
  v383 = v380[2];
  if (v383 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v380[1];
    v384 = mlir::SparseElementsAttr::getValues(v651);
    v383 = v382[2];
    {
      goto LABEL_277;
    }
  }

  else
  {
    v384 = v380[3];
    {
      goto LABEL_277;
    }
  }

  v513 = v384;
  v574 = v383;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v384 = v513;
  v383 = v574;
LABEL_277:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v384, v383, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v385 = malloc(0x10uLL);
  v386 = v385;
  {
    v637 = v385;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v386 = v637;
  }

  mlir::detail::InterfaceMap::insert((v382 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v386);
  v387 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastGradientArgsOp,void>::id, a1);
  if ((v388 & 1) == 0)
  {
    v650 = 1283;
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = "mps.broadcast_gradient_args";
    v444 = 27;
    goto LABEL_521;
  }

  v389 = v387;
  v390 = v387[2];
  if (v390 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v387[1];
    v391 = mlir::SparseElementsAttr::getValues(v651);
    v390 = v389[2];
    {
      goto LABEL_282;
    }
  }

  else
  {
    v391 = v387[3];
    {
      goto LABEL_282;
    }
  }

  v514 = v391;
  v575 = v390;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v391 = v514;
  v390 = v575;
LABEL_282:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v391, v390, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v392 = malloc(0x10uLL);
  v393 = v392;
  {
    v638 = v392;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v393 = v638;
  }

  mlir::detail::InterfaceMap::insert((v389 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v393);
  v394 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id, a1);
  if ((v395 & 1) == 0)
  {
    v650 = 1283;
    v456 = "mps.reduction_prod";
    goto LABEL_516;
  }

  v396 = v394;
  v397 = v394[2];
  if (v397 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v394[1];
    v398 = mlir::SparseElementsAttr::getValues(v651);
    v397 = v396[2];
    {
      goto LABEL_287;
    }
  }

  else
  {
    v398 = v394[3];
    {
      goto LABEL_287;
    }
  }

  v515 = v398;
  v576 = v397;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v398 = v515;
  v397 = v576;
LABEL_287:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v398, v397, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v399 = malloc(0x10uLL);
  v400 = v399;
  {
    v639 = v399;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v400 = v639;
  }

  mlir::detail::InterfaceMap::insert((v396 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v400);
  v401 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, a1);
  if ((v402 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.conv_2d";
    goto LABEL_511;
  }

  v403 = v401;
  v404 = v401[2];
  if (v404 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v401[1];
    v405 = mlir::SparseElementsAttr::getValues(v651);
    v404 = v403[2];
    {
      goto LABEL_292;
    }
  }

  else
  {
    v405 = v401[3];
    {
      goto LABEL_292;
    }
  }

  v516 = v405;
  v577 = v404;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v405 = v516;
  v404 = v577;
LABEL_292:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v405, v404, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v406 = malloc(0x10uLL);
  v407 = v406;
  {
    v640 = v406;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v407 = v640;
  }

  mlir::detail::InterfaceMap::insert((v403 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v407);
  v408 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TypeConstraintOp,void>::id, a1);
  if ((v409 & 1) == 0)
  {
    v650 = 1283;
    v459 = "mps.type_constraint";
    goto LABEL_513;
  }

  v410 = v408;
  v411 = v408[2];
  if (v411 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v408[1];
    v412 = mlir::SparseElementsAttr::getValues(v651);
    v411 = v410[2];
    {
      goto LABEL_297;
    }
  }

  else
  {
    v412 = v408[3];
    {
      goto LABEL_297;
    }
  }

  v517 = v412;
  v578 = v411;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v412 = v517;
  v411 = v578;
LABEL_297:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v412, v411, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v413 = malloc(0x10uLL);
  v414 = v413;
  {
    v641 = v413;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v414 = v641;
  }

  mlir::detail::InterfaceMap::insert((v410 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v414);
  v415 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RealPartOp,void>::id, a1);
  if ((v416 & 1) == 0)
  {
    v650 = 1283;
    v453 = "mps.real_part";
    goto LABEL_518;
  }

  v417 = v415;
  v418 = v415[2];
  if (v418 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v415[1];
    v419 = mlir::SparseElementsAttr::getValues(v651);
    v418 = v417[2];
    {
      goto LABEL_302;
    }
  }

  else
  {
    v419 = v415[3];
    {
      goto LABEL_302;
    }
  }

  v518 = v419;
  v579 = v418;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v419 = v518;
  v418 = v579;
LABEL_302:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v419, v418, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v420 = malloc(0x10uLL);
  v421 = v420;
  {
    v642 = v420;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v421 = v642;
  }

  mlir::detail::InterfaceMap::insert((v417 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v421);
  v422 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ImaginaryPartOp,void>::id, a1);
  if ((v423 & 1) == 0)
  {
    v650 = 1283;
    v456 = "mps.imaginary_part";
    goto LABEL_516;
  }

  v424 = v422;
  v425 = v422[2];
  if (v425 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v422[1];
    v426 = mlir::SparseElementsAttr::getValues(v651);
    v425 = v424[2];
    {
      goto LABEL_307;
    }
  }

  else
  {
    v426 = v422[3];
    {
      goto LABEL_307;
    }
  }

  v519 = v426;
  v580 = v425;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v426 = v519;
  v425 = v580;
LABEL_307:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v426, v425, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v427 = malloc(0x10uLL);
  v428 = v427;
  {
    v643 = v427;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v428 = v643;
  }

  mlir::detail::InterfaceMap::insert((v424 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v428);
  v429 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConjugateOp,void>::id, a1);
  if ((v430 & 1) == 0)
  {
    v650 = 1283;
    v453 = "mps.conjugate";
    goto LABEL_518;
  }

  v431 = v429;
  v432 = v429[2];
  if (v432 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v429[1];
    v433 = mlir::SparseElementsAttr::getValues(v651);
    v432 = v431[2];
    {
      goto LABEL_312;
    }
  }

  else
  {
    v433 = v429[3];
    {
      goto LABEL_312;
    }
  }

  v520 = v433;
  v581 = v432;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v433 = v520;
  v432 = v581;
LABEL_312:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v433, v432, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v434 = malloc(0x10uLL);
  v435 = v434;
  {
    v644 = v434;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v435 = v644;
  }

  mlir::detail::InterfaceMap::insert((v431 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v435);
  v436 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NonZeroOp,void>::id, a1);
  if ((v437 & 1) == 0)
  {
    v650 = 1283;
    v447 = "mps.non_zero";
    goto LABEL_520;
  }

  v438 = v436;
  v439 = v436[2];
  if (v439 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = v436[1];
    v440 = mlir::SparseElementsAttr::getValues(v651);
    v439 = v438[2];
    {
      goto LABEL_317;
    }
  }

  else
  {
    v440 = v436[3];
    {
      goto LABEL_317;
    }
  }

  v442 = v439;
  v443 = v440;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v440 = v443;
  v439 = v442;
LABEL_317:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v440, v439, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v441 = malloc(0x10uLL);
  {
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  }

  mlir::detail::InterfaceMap::insert((v438 + 4), mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v441);
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::ReciprocalSquareRootOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (!*a3)
  {
    v33 = 0;
    v34 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
  {
    v33 = 0;
    v34 = 0;
    return 0;
  }

  v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
  v33 = v3;
  v34 = v4;
  if (!v3)
  {
    return 0;
  }

  Type = mlir::ElementsAttr::getType(&v33);
  v6 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v31 = v6;
  v32 = Type;
  if (!mlir::CallOpInterface::getArgOperands(&v31))
  {
    return 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v29, v33, v34);
  v28[0] = 0;
  v28[1] = 0;
  mlir::mps::CPUNDArray::tryMakeAliasedArray(v31, v32, v28, v27);
  mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v26, 6, 0.0);
  v7 = operator new(8uLL);
  v23 = v7;
  *v7 = v29;
  v24 = v7 + 1;
  v25 = v7 + 1;
  v8 = operator new(8uLL);
  v20 = v8;
  *v8 = v27;
  v21 = v8 + 1;
  v22 = v8 + 1;
  v9 = operator new(8uLL);
  v17 = v9;
  *v9 = 0;
  v18 = v9 + 1;
  v19 = v9 + 1;
  v10 = operator new(8uLL);
  __p = v10;
  *v10 = 0;
  v15 = v10 + 1;
  v16 = v10 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v26, &v23, &v20, &v17, &__p, 0, v30, v26);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  ElementsAttr = v28[0];
  if (!v28[0])
  {
    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v27, 0, 0);
  }

  v12 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
  mlir::mps::CPUNDArray::~CPUNDArray(v27);
  mlir::mps::CPUNDArray::~CPUNDArray(v29);
  return v12;
}

void *llvm::dyn_cast_or_null<mlir::ElementsAttr,mlir::Attribute>(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v1 + 8))
    {
      mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::ReciprocalOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (!*a3)
  {
    v33 = 0;
    v34 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
  {
    v33 = 0;
    v34 = 0;
    return 0;
  }

  v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
  v33 = v3;
  v34 = v4;
  if (!v3)
  {
    return 0;
  }

  Type = mlir::ElementsAttr::getType(&v33);
  v6 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v31 = v6;
  v32 = Type;
  if (!mlir::CallOpInterface::getArgOperands(&v31))
  {
    return 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v29, v33, v34);
  v28[0] = 0;
  v28[1] = 0;
  mlir::mps::CPUNDArray::tryMakeAliasedArray(v31, v32, v28, v27);
  mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v26, 12, 0.0);
  v7 = operator new(8uLL);
  v23 = v7;
  *v7 = v29;
  v24 = v7 + 1;
  v25 = v7 + 1;
  v8 = operator new(8uLL);
  v20 = v8;
  *v8 = v27;
  v21 = v8 + 1;
  v22 = v8 + 1;
  v9 = operator new(8uLL);
  v17 = v9;
  *v9 = 0;
  v18 = v9 + 1;
  v19 = v9 + 1;
  v10 = operator new(8uLL);
  __p = v10;
  *v10 = 0;
  v15 = v10 + 1;
  v16 = v10 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v26, &v23, &v20, &v17, &__p, 0, v30, v26);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  ElementsAttr = v28[0];
  if (!v28[0])
  {
    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v27, 0, 0);
  }

  v12 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
  mlir::mps::CPUNDArray::~CPUNDArray(v27);
  mlir::mps::CPUNDArray::~CPUNDArray(v29);
  return v12;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::NegativeOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (!*a3)
  {
    v33 = 0;
    v34 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
  {
    v33 = 0;
    v34 = 0;
    return 0;
  }

  v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
  v33 = v3;
  v34 = v4;
  if (!v3)
  {
    return 0;
  }

  Type = mlir::ElementsAttr::getType(&v33);
  v6 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v31 = v6;
  v32 = Type;
  if (!mlir::CallOpInterface::getArgOperands(&v31))
  {
    return 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v29, v33, v34);
  v28[0] = 0;
  v28[1] = 0;
  mlir::mps::CPUNDArray::tryMakeAliasedArray(v31, v32, v28, v27);
  mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v26, 9, 0.0);
  v7 = operator new(8uLL);
  v23 = v7;
  *v7 = v29;
  v24 = v7 + 1;
  v25 = v7 + 1;
  v8 = operator new(8uLL);
  v20 = v8;
  *v8 = v27;
  v21 = v8 + 1;
  v22 = v8 + 1;
  v9 = operator new(8uLL);
  v17 = v9;
  *v9 = 0;
  v18 = v9 + 1;
  v19 = v9 + 1;
  v10 = operator new(8uLL);
  __p = v10;
  *v10 = 0;
  v15 = v10 + 1;
  v16 = v10 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v26, &v23, &v20, &v17, &__p, 0, v30, v26);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  ElementsAttr = v28[0];
  if (!v28[0])
  {
    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v27, 0, 0);
  }

  v12 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
  mlir::mps::CPUNDArray::~CPUNDArray(v27);
  mlir::mps::CPUNDArray::~CPUNDArray(v29);
  return v12;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::NotOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (!*a3)
  {
    v33 = 0;
    v34 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
  {
    v33 = 0;
    v34 = 0;
    return 0;
  }

  v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
  v33 = v3;
  v34 = v4;
  if (!v3)
  {
    return 0;
  }

  Type = mlir::ElementsAttr::getType(&v33);
  v6 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v31 = v6;
  v32 = Type;
  if (!mlir::CallOpInterface::getArgOperands(&v31))
  {
    return 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v29, v33, v34);
  v28[0] = 0;
  v28[1] = 0;
  mlir::mps::CPUNDArray::tryMakeAliasedArray(v31, v32, v28, v27);
  mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v26, 10, 0.0);
  v7 = operator new(8uLL);
  v23 = v7;
  *v7 = v29;
  v24 = v7 + 1;
  v25 = v7 + 1;
  v8 = operator new(8uLL);
  v20 = v8;
  *v8 = v27;
  v21 = v8 + 1;
  v22 = v8 + 1;
  v9 = operator new(8uLL);
  v17 = v9;
  *v9 = 0;
  v18 = v9 + 1;
  v19 = v9 + 1;
  v10 = operator new(8uLL);
  __p = v10;
  *v10 = 0;
  v15 = v10 + 1;
  v16 = v10 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v26, &v23, &v20, &v17, &__p, 0, v30, v26);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  ElementsAttr = v28[0];
  if (!v28[0])
  {
    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v27, 0, 0);
  }

  v12 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
  mlir::mps::CPUNDArray::~CPUNDArray(v27);
  mlir::mps::CPUNDArray::~CPUNDArray(v29);
  return v12;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::CeilOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return *(*(a2 + 72) + 24) | 4;
  }

  v5 = *a3;
  if (!v5)
  {
    v35 = 0;
    v36 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
  {
    v35 = 0;
    v36 = 0;
    return 0;
  }

  v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
  v35 = v5;
  v36 = v6;
  Type = mlir::ElementsAttr::getType(&v35);
  v9 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33 = v9;
  v34 = Type;
  if (!mlir::CallOpInterface::getArgOperands(&v33))
  {
    return 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v31, v35, v36);
  v30[0] = 0;
  v30[1] = 0;
  mlir::mps::CPUNDArray::tryMakeAliasedArray(v33, v34, v30, v29);
  mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v28, 7, 0.0);
  v10 = operator new(8uLL);
  v25 = v10;
  *v10 = v31;
  v26 = v10 + 1;
  v27 = v10 + 1;
  v11 = operator new(8uLL);
  v22 = v11;
  *v11 = v29;
  v23 = v11 + 1;
  v24 = v11 + 1;
  v12 = operator new(8uLL);
  v19 = v12;
  *v12 = 0;
  v20 = v12 + 1;
  v21 = v12 + 1;
  v13 = operator new(8uLL);
  __p = v13;
  *v13 = 0;
  v17 = v13 + 1;
  v18 = v13 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v28, &v25, &v22, &v19, &__p, 0, v32, v28);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  ElementsAttr = v30[0];
  if (!v30[0])
  {
    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v29, 0, 0);
  }

  v15 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
  mlir::mps::CPUNDArray::~CPUNDArray(v29);
  mlir::mps::CPUNDArray::~CPUNDArray(v31);
  return v15;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::FloorOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return *(*(a2 + 72) + 24) | 4;
  }

  v5 = *a3;
  if (!v5)
  {
    v35 = 0;
    v36 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
  {
    v35 = 0;
    v36 = 0;
    return 0;
  }

  v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
  v35 = v5;
  v36 = v6;
  Type = mlir::ElementsAttr::getType(&v35);
  v9 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33 = v9;
  v34 = Type;
  if (!mlir::CallOpInterface::getArgOperands(&v33))
  {
    return 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v31, v35, v36);
  v30[0] = 0;
  v30[1] = 0;
  mlir::mps::CPUNDArray::tryMakeAliasedArray(v33, v34, v30, v29);
  mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v28, 8, 0.0);
  v10 = operator new(8uLL);
  v25 = v10;
  *v10 = v31;
  v26 = v10 + 1;
  v27 = v10 + 1;
  v11 = operator new(8uLL);
  v22 = v11;
  *v11 = v29;
  v23 = v11 + 1;
  v24 = v11 + 1;
  v12 = operator new(8uLL);
  v19 = v12;
  *v12 = 0;
  v20 = v12 + 1;
  v21 = v12 + 1;
  v13 = operator new(8uLL);
  __p = v13;
  *v13 = 0;
  v17 = v13 + 1;
  v18 = v13 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v28, &v25, &v22, &v19, &__p, 0, v32, v28);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  ElementsAttr = v30[0];
  if (!v30[0])
  {
    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v29, 0, 0);
  }

  v15 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
  mlir::mps::CPUNDArray::~CPUNDArray(v29);
  mlir::mps::CPUNDArray::~CPUNDArray(v31);
  return v15;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::RoundOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return *(*(a2 + 72) + 24) | 4;
  }

  v5 = *a3;
  if (!v5)
  {
    v35 = 0;
    v36 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
  {
    v35 = 0;
    v36 = 0;
    return 0;
  }

  v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
  v35 = v5;
  v36 = v6;
  Type = mlir::ElementsAttr::getType(&v35);
  v9 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33 = v9;
  v34 = Type;
  if (!mlir::CallOpInterface::getArgOperands(&v33))
  {
    return 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v31, v35, v36);
  v30[0] = 0;
  v30[1] = 0;
  mlir::mps::CPUNDArray::tryMakeAliasedArray(v33, v34, v30, v29);
  mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v28, 11, 0.0);
  v10 = operator new(8uLL);
  v25 = v10;
  *v10 = v31;
  v26 = v10 + 1;
  v27 = v10 + 1;
  v11 = operator new(8uLL);
  v22 = v11;
  *v11 = v29;
  v23 = v11 + 1;
  v24 = v11 + 1;
  v12 = operator new(8uLL);
  v19 = v12;
  *v12 = 0;
  v20 = v12 + 1;
  v21 = v12 + 1;
  v13 = operator new(8uLL);
  __p = v13;
  *v13 = 0;
  v17 = v13 + 1;
  v18 = v13 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v28, &v25, &v22, &v19, &__p, 0, v32, v28);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  ElementsAttr = v30[0];
  if (!v30[0])
  {
    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v29, 0, 0);
  }

  v15 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
  mlir::mps::CPUNDArray::~CPUNDArray(v29);
  mlir::mps::CPUNDArray::~CPUNDArray(v31);
  return v15;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::SquareRootOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (!*a3)
  {
    v33 = 0;
    v34 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
  {
    v33 = 0;
    v34 = 0;
    return 0;
  }

  v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
  v33 = v3;
  v34 = v4;
  if (!v3)
  {
    return 0;
  }

  Type = mlir::ElementsAttr::getType(&v33);
  v6 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v31 = v6;
  v32 = Type;
  if (!mlir::CallOpInterface::getArgOperands(&v31))
  {
    return 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v29, v33, v34);
  v28[0] = 0;
  v28[1] = 0;
  mlir::mps::CPUNDArray::tryMakeAliasedArray(v31, v32, v28, v27);
  mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v26, 17, 0.0);
  v7 = operator new(8uLL);
  v23 = v7;
  *v7 = v29;
  v24 = v7 + 1;
  v25 = v7 + 1;
  v8 = operator new(8uLL);
  v20 = v8;
  *v8 = v27;
  v21 = v8 + 1;
  v22 = v8 + 1;
  v9 = operator new(8uLL);
  v17 = v9;
  *v9 = 0;
  v18 = v9 + 1;
  v19 = v9 + 1;
  v10 = operator new(8uLL);
  __p = v10;
  *v10 = 0;
  v15 = v10 + 1;
  v16 = v10 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v26, &v23, &v20, &v17, &__p, 0, v30, v26);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  ElementsAttr = v28[0];
  if (!v28[0])
  {
    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v27, 0, 0);
  }

  v12 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
  mlir::mps::CPUNDArray::~CPUNDArray(v27);
  mlir::mps::CPUNDArray::~CPUNDArray(v29);
  return v12;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::AddOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v55 = v5;
  v56 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v53 = v7;
  v54 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v51 = v11;
    v52 = v12;
    v57[0] = mlir::ElementsAttr::getType(&v55);
    v57[1] = mlir::ElementsAttr::getType(&v53);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v57, v55, v56);
      mlir::mps::CPUNDArray::CPUNDArray(v49, v53, v54);
      v48[0] = 0;
      v48[1] = 0;
      if (mlir::CallOpInterface::getArgOperands(&v51))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v55);
      v18 = mlir::ElementsAttr::getType(&v53);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (!BroadcastedType)
      {
        v27 = 0;
        v51 = 0;
        v52 = 0;
LABEL_49:
        mlir::mps::CPUNDArray::~CPUNDArray(v49);
        mlir::mps::CPUNDArray::~CPUNDArray(v57);
        return v27;
      }

      v20 = BroadcastedType;
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
      v51 = v20;
      v52 = v21;
LABEL_28:
      if (v13 == mlir::ElementsAttr::isSplat(&v51))
      {
        v22 = v51;
        v23 = v52;
      }

      else
      {
        v24 = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
        if (v22)
        {
          v26 = v22;
          v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
          v22 = v26;
        }

        else
        {
          v23 = 0;
        }

        v51 = v22;
        v52 = v23;
      }

      mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v48, v47);
      mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v46, 0);
      if (v58 <= v50)
      {
        v28 = v50;
      }

      else
      {
        v28 = v58;
      }

      v29 = operator new(0x10uLL);
      v44 = v29 + 2;
      v45 = v29 + 2;
      *v29 = v57;
      v29[1] = v49;
      v43 = v29;
      v30 = operator new(8uLL);
      v40 = v30;
      *v30 = v47;
      v41 = v30 + 1;
      v42 = v30 + 1;
      v31 = operator new(0x10uLL);
      v38 = v31 + 2;
      v39 = v31 + 2;
      *v31 = 0;
      v31[1] = 0;
      v37 = v31;
      v32 = operator new(8uLL);
      __p = v32;
      *v32 = 0;
      v35 = v32 + 1;
      v36 = v32 + 1;
      mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v46, &v43, &v40, &v37, &__p, 0, v28, v46);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      ElementsAttr = v48[0];
      if (!v48[0])
      {
        ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v47, 0, 0);
      }

      v27 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
      mlir::mps::CPUNDArray::~CPUNDArray(v47);
      goto LABEL_49;
    }
  }

  return result;
}

void *mlir::mps::anonymous namespace::getElementTypeWithLargestPrecision(void **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = 8 * a2;
    while (1)
    {
      v5 = *(*mlir::getElementTypeOrSelf(a1[v3 / 8]) + 136);
      if (v5 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        break;
      }

      v3 += 8;
      if (v4 == v3)
      {
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(*a1);
        goto LABEL_9;
      }
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*a1);
    if (*(*mlir::getElementTypeOrSelf(ElementTypeOrSelf) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
LABEL_9:
      while (1)
      {
        v8 = mlir::getElementTypeOrSelf(*a1);
        if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && ElementTypeOrSelf != v8)
        {
          break;
        }

        v10 = v8;
        if ((v5 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) != (*(*mlir::getElementTypeOrSelf(v8) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
        {
          break;
        }

        ElementBitWidth = mlir::mps::getElementBitWidth(v10);
        if (ElementBitWidth > mlir::mps::getElementBitWidth(ElementTypeOrSelf))
        {
          ElementTypeOrSelf = v10;
        }

        ++a1;
        v4 -= 8;
        if (!v4)
        {
          return ElementTypeOrSelf;
        }
      }
    }
  }

  return 0;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::SubtractOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v55 = v5;
  v56 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v53 = v7;
  v54 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v51 = v11;
    v52 = v12;
    v57[0] = mlir::ElementsAttr::getType(&v55);
    v57[1] = mlir::ElementsAttr::getType(&v53);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v57, v55, v56);
      mlir::mps::CPUNDArray::CPUNDArray(v49, v53, v54);
      v48[0] = 0;
      v48[1] = 0;
      if (mlir::CallOpInterface::getArgOperands(&v51))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v55);
      v18 = mlir::ElementsAttr::getType(&v53);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (!BroadcastedType)
      {
        v27 = 0;
        v51 = 0;
        v52 = 0;
LABEL_49:
        mlir::mps::CPUNDArray::~CPUNDArray(v49);
        mlir::mps::CPUNDArray::~CPUNDArray(v57);
        return v27;
      }

      v20 = BroadcastedType;
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
      v51 = v20;
      v52 = v21;
LABEL_28:
      if (v13 == mlir::ElementsAttr::isSplat(&v51))
      {
        v22 = v51;
        v23 = v52;
      }

      else
      {
        v24 = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
        if (v22)
        {
          v26 = v22;
          v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
          v22 = v26;
        }

        else
        {
          v23 = 0;
        }

        v51 = v22;
        v52 = v23;
      }

      mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v48, v47);
      mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v46, 1);
      if (v58 <= v50)
      {
        v28 = v50;
      }

      else
      {
        v28 = v58;
      }

      v29 = operator new(0x10uLL);
      v44 = v29 + 2;
      v45 = v29 + 2;
      *v29 = v57;
      v29[1] = v49;
      v43 = v29;
      v30 = operator new(8uLL);
      v40 = v30;
      *v30 = v47;
      v41 = v30 + 1;
      v42 = v30 + 1;
      v31 = operator new(0x10uLL);
      v38 = v31 + 2;
      v39 = v31 + 2;
      *v31 = 0;
      v31[1] = 0;
      v37 = v31;
      v32 = operator new(8uLL);
      __p = v32;
      *v32 = 0;
      v35 = v32 + 1;
      v36 = v32 + 1;
      mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v46, &v43, &v40, &v37, &__p, 0, v28, v46);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      ElementsAttr = v48[0];
      if (!v48[0])
      {
        ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v47, 0, 0);
      }

      v27 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
      mlir::mps::CPUNDArray::~CPUNDArray(v47);
      goto LABEL_49;
    }
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::MultiplyOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v55 = v5;
  v56 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v53 = v7;
  v54 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v51 = v11;
    v52 = v12;
    v57[0] = mlir::ElementsAttr::getType(&v55);
    v57[1] = mlir::ElementsAttr::getType(&v53);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v57, v55, v56);
      mlir::mps::CPUNDArray::CPUNDArray(v49, v53, v54);
      v48[0] = 0;
      v48[1] = 0;
      if (mlir::CallOpInterface::getArgOperands(&v51))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v55);
      v18 = mlir::ElementsAttr::getType(&v53);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (!BroadcastedType)
      {
        v27 = 0;
        v51 = 0;
        v52 = 0;
LABEL_49:
        mlir::mps::CPUNDArray::~CPUNDArray(v49);
        mlir::mps::CPUNDArray::~CPUNDArray(v57);
        return v27;
      }

      v20 = BroadcastedType;
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
      v51 = v20;
      v52 = v21;
LABEL_28:
      if (v13 == mlir::ElementsAttr::isSplat(&v51))
      {
        v22 = v51;
        v23 = v52;
      }

      else
      {
        v24 = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
        if (v22)
        {
          v26 = v22;
          v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
          v22 = v26;
        }

        else
        {
          v23 = 0;
        }

        v51 = v22;
        v52 = v23;
      }

      mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v48, v47);
      mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v46, 2);
      if (v58 <= v50)
      {
        v28 = v50;
      }

      else
      {
        v28 = v58;
      }

      v29 = operator new(0x10uLL);
      v44 = v29 + 2;
      v45 = v29 + 2;
      *v29 = v57;
      v29[1] = v49;
      v43 = v29;
      v30 = operator new(8uLL);
      v40 = v30;
      *v30 = v47;
      v41 = v30 + 1;
      v42 = v30 + 1;
      v31 = operator new(0x10uLL);
      v38 = v31 + 2;
      v39 = v31 + 2;
      *v31 = 0;
      v31[1] = 0;
      v37 = v31;
      v32 = operator new(8uLL);
      __p = v32;
      *v32 = 0;
      v35 = v32 + 1;
      v36 = v32 + 1;
      mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v46, &v43, &v40, &v37, &__p, 0, v28, v46);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      ElementsAttr = v48[0];
      if (!v48[0])
      {
        ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v47, 0, 0);
      }

      v27 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
      mlir::mps::CPUNDArray::~CPUNDArray(v47);
      goto LABEL_49;
    }
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::DivideOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v55 = v5;
  v56 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v53 = v7;
  v54 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v51 = v11;
    v52 = v12;
    v57[0] = mlir::ElementsAttr::getType(&v55);
    v57[1] = mlir::ElementsAttr::getType(&v53);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v57, v55, v56);
      mlir::mps::CPUNDArray::CPUNDArray(v49, v53, v54);
      v48[0] = 0;
      v48[1] = 0;
      if (mlir::CallOpInterface::getArgOperands(&v51))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v55);
      v18 = mlir::ElementsAttr::getType(&v53);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (!BroadcastedType)
      {
        v27 = 0;
        v51 = 0;
        v52 = 0;
LABEL_49:
        mlir::mps::CPUNDArray::~CPUNDArray(v49);
        mlir::mps::CPUNDArray::~CPUNDArray(v57);
        return v27;
      }

      v20 = BroadcastedType;
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
      v51 = v20;
      v52 = v21;
LABEL_28:
      if (v13 == mlir::ElementsAttr::isSplat(&v51))
      {
        v22 = v51;
        v23 = v52;
      }

      else
      {
        v24 = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
        if (v22)
        {
          v26 = v22;
          v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
          v22 = v26;
        }

        else
        {
          v23 = 0;
        }

        v51 = v22;
        v52 = v23;
      }

      mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v48, v47);
      mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v46, 3);
      if (v58 <= v50)
      {
        v28 = v50;
      }

      else
      {
        v28 = v58;
      }

      v29 = operator new(0x10uLL);
      v44 = v29 + 2;
      v45 = v29 + 2;
      *v29 = v57;
      v29[1] = v49;
      v43 = v29;
      v30 = operator new(8uLL);
      v40 = v30;
      *v30 = v47;
      v41 = v30 + 1;
      v42 = v30 + 1;
      v31 = operator new(0x10uLL);
      v38 = v31 + 2;
      v39 = v31 + 2;
      *v31 = 0;
      v31[1] = 0;
      v37 = v31;
      v32 = operator new(8uLL);
      __p = v32;
      *v32 = 0;
      v35 = v32 + 1;
      v36 = v32 + 1;
      mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v46, &v43, &v40, &v37, &__p, 0, v28, v46);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      ElementsAttr = v48[0];
      if (!v48[0])
      {
        ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v47, 0, 0);
      }

      v27 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
      mlir::mps::CPUNDArray::~CPUNDArray(v47);
      goto LABEL_49;
    }
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::ModuloOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v55 = v5;
  v56 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v53 = v7;
  v54 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v51 = v11;
    v52 = v12;
    v57[0] = mlir::ElementsAttr::getType(&v55);
    v57[1] = mlir::ElementsAttr::getType(&v53);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v57, v55, v56);
      mlir::mps::CPUNDArray::CPUNDArray(v49, v53, v54);
      v48[0] = 0;
      v48[1] = 0;
      if (mlir::CallOpInterface::getArgOperands(&v51))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v55);
      v18 = mlir::ElementsAttr::getType(&v53);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (!BroadcastedType)
      {
        v27 = 0;
        v51 = 0;
        v52 = 0;
LABEL_49:
        mlir::mps::CPUNDArray::~CPUNDArray(v49);
        mlir::mps::CPUNDArray::~CPUNDArray(v57);
        return v27;
      }

      v20 = BroadcastedType;
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
      v51 = v20;
      v52 = v21;
LABEL_28:
      if (v13 == mlir::ElementsAttr::isSplat(&v51))
      {
        v22 = v51;
        v23 = v52;
      }

      else
      {
        v24 = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
        if (v22)
        {
          v26 = v22;
          v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
          v22 = v26;
        }

        else
        {
          v23 = 0;
        }

        v51 = v22;
        v52 = v23;
      }

      mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v48, v47);
      mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v46, 5);
      if (v58 <= v50)
      {
        v28 = v50;
      }

      else
      {
        v28 = v58;
      }

      v29 = operator new(0x10uLL);
      v44 = v29 + 2;
      v45 = v29 + 2;
      *v29 = v57;
      v29[1] = v49;
      v43 = v29;
      v30 = operator new(8uLL);
      v40 = v30;
      *v30 = v47;
      v41 = v30 + 1;
      v42 = v30 + 1;
      v31 = operator new(0x10uLL);
      v38 = v31 + 2;
      v39 = v31 + 2;
      *v31 = 0;
      v31[1] = 0;
      v37 = v31;
      v32 = operator new(8uLL);
      __p = v32;
      *v32 = 0;
      v35 = v32 + 1;
      v36 = v32 + 1;
      mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v46, &v43, &v40, &v37, &__p, 0, v28, v46);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      ElementsAttr = v48[0];
      if (!v48[0])
      {
        ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v47, 0, 0);
      }

      v27 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
      mlir::mps::CPUNDArray::~CPUNDArray(v47);
      goto LABEL_49;
    }
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::MinimumOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v55 = v5;
  v56 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v53 = v7;
  v54 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v51 = v11;
    v52 = v12;
    v57[0] = mlir::ElementsAttr::getType(&v55);
    v57[1] = mlir::ElementsAttr::getType(&v53);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v57, v55, v56);
      mlir::mps::CPUNDArray::CPUNDArray(v49, v53, v54);
      v48[0] = 0;
      v48[1] = 0;
      if (mlir::CallOpInterface::getArgOperands(&v51))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v55);
      v18 = mlir::ElementsAttr::getType(&v53);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (!BroadcastedType)
      {
        v27 = 0;
        v51 = 0;
        v52 = 0;
LABEL_49:
        mlir::mps::CPUNDArray::~CPUNDArray(v49);
        mlir::mps::CPUNDArray::~CPUNDArray(v57);
        return v27;
      }

      v20 = BroadcastedType;
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
      v51 = v20;
      v52 = v21;
LABEL_28:
      if (v13 == mlir::ElementsAttr::isSplat(&v51))
      {
        v22 = v51;
        v23 = v52;
      }

      else
      {
        v24 = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
        if (v22)
        {
          v26 = v22;
          v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
          v22 = v26;
        }

        else
        {
          v23 = 0;
        }

        v51 = v22;
        v52 = v23;
      }

      mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v48, v47);
      mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v46, 15);
      if (v58 <= v50)
      {
        v28 = v50;
      }

      else
      {
        v28 = v58;
      }

      v29 = operator new(0x10uLL);
      v44 = v29 + 2;
      v45 = v29 + 2;
      *v29 = v57;
      v29[1] = v49;
      v43 = v29;
      v30 = operator new(8uLL);
      v40 = v30;
      *v30 = v47;
      v41 = v30 + 1;
      v42 = v30 + 1;
      v31 = operator new(0x10uLL);
      v38 = v31 + 2;
      v39 = v31 + 2;
      *v31 = 0;
      v31[1] = 0;
      v37 = v31;
      v32 = operator new(8uLL);
      __p = v32;
      *v32 = 0;
      v35 = v32 + 1;
      v36 = v32 + 1;
      mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v46, &v43, &v40, &v37, &__p, 0, v28, v46);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      ElementsAttr = v48[0];
      if (!v48[0])
      {
        ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v47, 0, 0);
      }

      v27 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
      mlir::mps::CPUNDArray::~CPUNDArray(v47);
      goto LABEL_49;
    }
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::MaximumOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v55 = v5;
  v56 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v53 = v7;
  v54 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v51 = v11;
    v52 = v12;
    v57[0] = mlir::ElementsAttr::getType(&v55);
    v57[1] = mlir::ElementsAttr::getType(&v53);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v57, v55, v56);
      mlir::mps::CPUNDArray::CPUNDArray(v49, v53, v54);
      v48[0] = 0;
      v48[1] = 0;
      if (mlir::CallOpInterface::getArgOperands(&v51))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v55);
      v18 = mlir::ElementsAttr::getType(&v53);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (!BroadcastedType)
      {
        v27 = 0;
        v51 = 0;
        v52 = 0;
LABEL_49:
        mlir::mps::CPUNDArray::~CPUNDArray(v49);
        mlir::mps::CPUNDArray::~CPUNDArray(v57);
        return v27;
      }

      v20 = BroadcastedType;
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
      v51 = v20;
      v52 = v21;
LABEL_28:
      if (v13 == mlir::ElementsAttr::isSplat(&v51))
      {
        v22 = v51;
        v23 = v52;
      }

      else
      {
        v24 = mlir::CallableOpInterface::getArgAttrsAttr(&v51);
        v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
        if (v22)
        {
          v26 = v22;
          v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
          v22 = v26;
        }

        else
        {
          v23 = 0;
        }

        v51 = v22;
        v52 = v23;
      }

      mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v48, v47);
      mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v46, 16);
      if (v58 <= v50)
      {
        v28 = v50;
      }

      else
      {
        v28 = v58;
      }

      v29 = operator new(0x10uLL);
      v44 = v29 + 2;
      v45 = v29 + 2;
      *v29 = v57;
      v29[1] = v49;
      v43 = v29;
      v30 = operator new(8uLL);
      v40 = v30;
      *v30 = v47;
      v41 = v30 + 1;
      v42 = v30 + 1;
      v31 = operator new(0x10uLL);
      v38 = v31 + 2;
      v39 = v31 + 2;
      *v31 = 0;
      v31[1] = 0;
      v37 = v31;
      v32 = operator new(8uLL);
      __p = v32;
      *v32 = 0;
      v35 = v32 + 1;
      v36 = v32 + 1;
      mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v46, &v43, &v40, &v37, &__p, 0, v28, v46);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      ElementsAttr = v48[0];
      if (!v48[0])
      {
        ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v47, 0, 0);
      }

      v27 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
      mlir::mps::CPUNDArray::~CPUNDArray(v47);
      goto LABEL_49;
    }
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::EqualToOp,std::equal_to<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
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

  v69[0] = v5;
  v69[1] = v6;
  v78 = v80;
  v79 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v67 = v7;
  v68 = v8;
  v9 = *(a3 + 8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    if (v10)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  ElementTypeWithLargestPrecision = 0;
  v65 = v9;
  v66 = v10;
  if (v67 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v67);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v74 = v13;
    v75 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v74);
    v74 = mlir::ElementsAttr::getType(&v67);
    v75 = mlir::ElementsAttr::getType(&v65);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v67, v68);
      v16 = mlir::ElementsAttr::getNumElements(v65, v66);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v65, &v60);
        if (v17)
        {
          v30 = 0;
          v31 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v74, v30, &__p);
            LODWORD(v71[0]) = v59;
            v70 = __p;
            v59 = 0;
            BYTE4(v71[0]) = v31;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v60, v30, &v53);
            v56 = v54;
            v55 = v53;
            v54 = 0;
            v57 = v31;
            if (LODWORD(v71[0]) > 0x40)
            {
              v32 = llvm::APInt::equalSlowCase(&v70, &v55);
            }

            else
            {
              v32 = v70 == v53;
            }

            LODWORD(v73[0]) = 1;
            v72 = v32;
            v33 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &v72 && &v78[16 * v79] > &v72)
              {
                v36 = &v72 - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v33 = v78;
                v34 = &v78[v36];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v34 = &v72;
                v33 = v78;
              }
            }

            else
            {
              v34 = &v72;
            }

            v35 = &v33[16 * v79];
            *(v35 + 2) = *(v34 + 2);
            *v35 = *v34;
            *(v34 + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              operator delete[](v72);
            }

            if (v56 >= 0x41 && v55)
            {
              operator delete[](v55);
            }

            if (v54 >= 0x41 && v53)
            {
              operator delete[](v53);
            }

            if (LODWORD(v71[0]) >= 0x41 && v70)
            {
              operator delete[](v70);
            }

            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            ++v30;
          }

          while (v17 != v30);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v65, &v60);
        v72 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v72);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v74, i, &v72);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v60, i, &v70);
            LOBYTE(__p) = 0;
            llvm::APFloat::convert(&v72, v20, 1, &__p);
            LOBYTE(__p) = 0;
            v22 = llvm::APFloat::convert(&v70, v20, 1, &__p);
            v23 = v73[0];
            v24 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v24 == v23)
            {
              v25 = llvm::detail::DoubleAPFloat::compare(v73, v71);
            }

            else
            {
              v25 = llvm::detail::IEEEFloat::compare(v73, v71);
            }

            v59 = 1;
            __p = (v25 == 1);
            v26 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &__p && &v78[16 * v79] > &__p)
              {
                v29 = &__p - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v26 = v78;
                p_p = &v78[v29];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                p_p = &__p;
                v26 = v78;
              }
            }

            else
            {
              p_p = &__p;
            }

            v28 = &v26[16 * v79];
            *(v28 + 2) = *(p_p + 2);
            *v28 = *p_p;
            *(p_p + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v24 == v71[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v71);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v71);
            }

            if (v24 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }
          }
        }
      }

      if ((v62 & 1) == 0)
      {
        v37 = v63;
        v63 = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }
      }

      if ((v60 & 1) == 0)
      {
        v38 = v61;
        v61 = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }
      }

      if ((v76 & 1) == 0)
      {
        v39 = v77;
        v77 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v74 & 1) == 0)
      {
        v40 = v75;
        v75 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v69);
      v43 = v42;
      v44 = mlir::ElementsAttr::isSplat(v69);
      v45 = mlir::RankedTensorType::get(ArgAttrsAttr, v43, v44, 0);
      ElementTypeWithLargestPrecision = (mlir::createElementsAttr(v45, v78, v79) & 0xFFFFFFFFFFFFFFFBLL);
    }
  }

LABEL_105:
  v46 = v78;
  if (v79)
  {
    v47 = &v78[16 * v79 - 8];
    v48 = -16 * v79;
    v49 = v47;
    do
    {
      v50 = *v49;
      v49 -= 4;
      if (v50 >= 0x41)
      {
        v51 = *(v47 - 1);
        if (v51)
        {
          operator delete[](v51);
        }
      }

      v47 = v49;
      v48 += 16;
    }

    while (v48);
    v46 = v78;
  }

  if (v46 != v80)
  {
    free(v46);
  }

  return ElementTypeWithLargestPrecision;
}

void *mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[]@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *result;
  v5 = *(result + 1);
  v14 = v5;
  if (*result == 1)
  {
    v6 = result[2] + a2;
    v15 = result[1];
    v16 = v6;
    goto LABEL_4;
  }

  v7 = result;
  result = (*(*result[1] + 16))(&v15, result[1]);
  v5 = v14;
  v6 = v7[2] + a2;
  v16 = v6;
  if (v13)
  {
LABEL_4:
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v9 = &v15[2 * v8];
    v10 = *(v9 + 2);
    *(a3 + 8) = v10;
    if (v10 > 0x40)
    {
      result = llvm::APInt::initSlowCase(a3, v9);
      if (v13)
      {
        return result;
      }
    }

    else
    {
      *a3 = *v9;
      if (v13)
      {
        return result;
      }
    }

    goto LABEL_16;
  }

  v11 = v15;
  v15 = 0;
  if (v14)
  {
    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  (*(*v11 + 24))(v11, v12);
  result = (*(*v11 + 8))(v11);
  if ((v13 & 1) == 0)
  {
LABEL_16:
    result = v15;
    v15 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[]@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *a1;
  v5 = *(a1 + 1);
  v16 = v5;
  if (*a1 == 1)
  {
    v6 = a1[2] + a2;
    v17 = a1[1];
    v18 = v6;
    goto LABEL_4;
  }

  v7 = a1;
  a1 = (*(*a1[1] + 16))(&v17, a1[1]);
  v5 = v16;
  v6 = v7[2] + a2;
  v18 = v6;
  if (v15)
  {
LABEL_4:
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v9 = &v17[4 * v8];
    v11 = v9[1];
    v10 = (v9 + 1);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v11)
    {
      result = llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), v10);
      if (v15)
      {
        return result;
      }
    }

    else
    {
      result = llvm::detail::IEEEFloat::IEEEFloat((a3 + 8), v10);
      if (v15)
      {
        return result;
      }
    }

    goto LABEL_16;
  }

  v13 = v17;
  v17 = 0;
  if (v16)
  {
    v14 = 0;
  }

  else
  {
    v14 = v6;
  }

  (*(*v13 + 24))(v13, v14);
  result = (*(*v13 + 8))(v13);
  if ((v15 & 1) == 0)
  {
LABEL_16:
    result = v17;
    v17 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(uint64_t a1, unint64_t a2)
{
  v19 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v19);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = (v5 + 8);
    v9 = 16 * v7;
    v10 = v6 + 2;
    do
    {
      *v8 = *v10;
      *(v8 - 1) = *(v10 - 1);
      *v10 = 0;
      v10 += 4;
      v8 += 4;
      v9 -= 16;
    }

    while (v9);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 16 * v11;
      v13 = &v6[4 * v11 - 2];
      v14 = -v12;
      v15 = v13;
      do
      {
        v16 = *v15;
        v15 -= 4;
        if (v16 >= 0x41)
        {
          v17 = *(v13 - 8);
          if (v17)
          {
            operator delete[](v17);
          }
        }

        v13 = v15;
        v14 += 16;
      }

      while (v14);
      v6 = *a1;
    }
  }

  v18 = v19;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v18;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::NotEqualToOp,std::not_equal_to<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
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

  v69[0] = v5;
  v69[1] = v6;
  v78 = v80;
  v79 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v67 = v7;
  v68 = v8;
  v9 = *(a3 + 8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    if (v10)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  ElementTypeWithLargestPrecision = 0;
  v65 = v9;
  v66 = v10;
  if (v67 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v67);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v74 = v13;
    v75 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v74);
    v74 = mlir::ElementsAttr::getType(&v67);
    v75 = mlir::ElementsAttr::getType(&v65);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v67, v68);
      v16 = mlir::ElementsAttr::getNumElements(v65, v66);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v65, &v60);
        if (v17)
        {
          v30 = 0;
          v31 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v74, v30, &__p);
            LODWORD(v71[0]) = v59;
            v70 = __p;
            v59 = 0;
            BYTE4(v71[0]) = v31;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v60, v30, &v53);
            v56 = v54;
            v55 = v53;
            v54 = 0;
            v57 = v31;
            if (LODWORD(v71[0]) > 0x40)
            {
              v32 = llvm::APInt::equalSlowCase(&v70, &v55);
            }

            else
            {
              v32 = v70 == v53;
            }

            LODWORD(v73[0]) = 1;
            v72 = !v32;
            v33 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &v72 && &v78[16 * v79] > &v72)
              {
                v36 = &v72 - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v33 = v78;
                v34 = &v78[v36];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v34 = &v72;
                v33 = v78;
              }
            }

            else
            {
              v34 = &v72;
            }

            v35 = &v33[16 * v79];
            *(v35 + 2) = *(v34 + 2);
            *v35 = *v34;
            *(v34 + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              operator delete[](v72);
            }

            if (v56 >= 0x41 && v55)
            {
              operator delete[](v55);
            }

            if (v54 >= 0x41 && v53)
            {
              operator delete[](v53);
            }

            if (LODWORD(v71[0]) >= 0x41 && v70)
            {
              operator delete[](v70);
            }

            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            ++v30;
          }

          while (v17 != v30);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v65, &v60);
        v72 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v72);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v74, i, &v72);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v60, i, &v70);
            LOBYTE(__p) = 0;
            llvm::APFloat::convert(&v72, v20, 1, &__p);
            LOBYTE(__p) = 0;
            v22 = llvm::APFloat::convert(&v70, v20, 1, &__p);
            v23 = v73[0];
            v24 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v24 == v23)
            {
              v25 = llvm::detail::DoubleAPFloat::compare(v73, v71);
            }

            else
            {
              v25 = llvm::detail::IEEEFloat::compare(v73, v71);
            }

            v59 = 1;
            __p = (v25 != 1);
            v26 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &__p && &v78[16 * v79] > &__p)
              {
                v29 = &__p - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v26 = v78;
                p_p = &v78[v29];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                p_p = &__p;
                v26 = v78;
              }
            }

            else
            {
              p_p = &__p;
            }

            v28 = &v26[16 * v79];
            *(v28 + 2) = *(p_p + 2);
            *v28 = *p_p;
            *(p_p + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v24 == v71[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v71);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v71);
            }

            if (v24 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }
          }
        }
      }

      if ((v62 & 1) == 0)
      {
        v37 = v63;
        v63 = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }
      }

      if ((v60 & 1) == 0)
      {
        v38 = v61;
        v61 = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }
      }

      if ((v76 & 1) == 0)
      {
        v39 = v77;
        v77 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v74 & 1) == 0)
      {
        v40 = v75;
        v75 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v69);
      v43 = v42;
      v44 = mlir::ElementsAttr::isSplat(v69);
      v45 = mlir::RankedTensorType::get(ArgAttrsAttr, v43, v44, 0);
      ElementTypeWithLargestPrecision = (mlir::createElementsAttr(v45, v78, v79) & 0xFFFFFFFFFFFFFFFBLL);
    }
  }

LABEL_105:
  v46 = v78;
  if (v79)
  {
    v47 = &v78[16 * v79 - 8];
    v48 = -16 * v79;
    v49 = v47;
    do
    {
      v50 = *v49;
      v49 -= 4;
      if (v50 >= 0x41)
      {
        v51 = *(v47 - 1);
        if (v51)
        {
          operator delete[](v51);
        }
      }

      v47 = v49;
      v48 += 16;
    }

    while (v48);
    v46 = v78;
  }

  if (v46 != v80)
  {
    free(v46);
  }

  return ElementTypeWithLargestPrecision;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::GreaterThanOp,std::greater<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
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

  v69[0] = v5;
  v69[1] = v6;
  v78 = v80;
  v79 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v67 = v7;
  v68 = v8;
  v9 = *(a3 + 8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    if (v10)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  ElementTypeWithLargestPrecision = 0;
  v65 = v9;
  v66 = v10;
  if (v67 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v67);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v74 = v13;
    v75 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v74);
    v74 = mlir::ElementsAttr::getType(&v67);
    v75 = mlir::ElementsAttr::getType(&v65);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v67, v68);
      v16 = mlir::ElementsAttr::getNumElements(v65, v66);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v65, &v60);
        if (v17)
        {
          v30 = 0;
          v31 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v74, v30, &__p);
            LODWORD(v71[0]) = v59;
            v70 = __p;
            v59 = 0;
            BYTE4(v71[0]) = v31;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v60, v30, &v53);
            v56 = v54;
            v55 = v53;
            v54 = 0;
            v57 = v31;
            if (BYTE4(v71[0]) == 1)
            {
              v32 = llvm::APInt::compare(&v70, &v55);
            }

            else
            {
              v32 = llvm::APInt::compareSigned(&v70, &v55);
            }

            LODWORD(v73[0]) = 1;
            v72 = (v32 > 0);
            v33 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &v72 && &v78[16 * v79] > &v72)
              {
                v36 = &v72 - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v33 = v78;
                v34 = &v78[v36];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v34 = &v72;
                v33 = v78;
              }
            }

            else
            {
              v34 = &v72;
            }

            v35 = &v33[16 * v79];
            *(v35 + 2) = *(v34 + 2);
            *v35 = *v34;
            *(v34 + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              operator delete[](v72);
            }

            if (v56 >= 0x41 && v55)
            {
              operator delete[](v55);
            }

            if (v54 >= 0x41 && v53)
            {
              operator delete[](v53);
            }

            if (LODWORD(v71[0]) >= 0x41 && v70)
            {
              operator delete[](v70);
            }

            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            ++v30;
          }

          while (v17 != v30);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v65, &v60);
        v72 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v72);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v74, i, &v72);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v60, i, &v70);
            LOBYTE(__p) = 0;
            llvm::APFloat::convert(&v72, v20, 1, &__p);
            LOBYTE(__p) = 0;
            v22 = llvm::APFloat::convert(&v70, v20, 1, &__p);
            v23 = v73[0];
            v24 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v24 == v23)
            {
              v25 = llvm::detail::DoubleAPFloat::compare(v73, v71);
            }

            else
            {
              v25 = llvm::detail::IEEEFloat::compare(v73, v71);
            }

            v59 = 1;
            __p = (v25 == 2);
            v26 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &__p && &v78[16 * v79] > &__p)
              {
                v29 = &__p - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v26 = v78;
                p_p = &v78[v29];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                p_p = &__p;
                v26 = v78;
              }
            }

            else
            {
              p_p = &__p;
            }

            v28 = &v26[16 * v79];
            *(v28 + 2) = *(p_p + 2);
            *v28 = *p_p;
            *(p_p + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v24 == v71[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v71);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v71);
            }

            if (v24 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }
          }
        }
      }

      if ((v62 & 1) == 0)
      {
        v37 = v63;
        v63 = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }
      }

      if ((v60 & 1) == 0)
      {
        v38 = v61;
        v61 = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }
      }

      if ((v76 & 1) == 0)
      {
        v39 = v77;
        v77 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v74 & 1) == 0)
      {
        v40 = v75;
        v75 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v69);
      v43 = v42;
      v44 = mlir::ElementsAttr::isSplat(v69);
      v45 = mlir::RankedTensorType::get(ArgAttrsAttr, v43, v44, 0);
      ElementTypeWithLargestPrecision = (mlir::createElementsAttr(v45, v78, v79) & 0xFFFFFFFFFFFFFFFBLL);
    }
  }

LABEL_105:
  v46 = v78;
  if (v79)
  {
    v47 = &v78[16 * v79 - 8];
    v48 = -16 * v79;
    v49 = v47;
    do
    {
      v50 = *v49;
      v49 -= 4;
      if (v50 >= 0x41)
      {
        v51 = *(v47 - 1);
        if (v51)
        {
          operator delete[](v51);
        }
      }

      v47 = v49;
      v48 += 16;
    }

    while (v48);
    v46 = v78;
  }

  if (v46 != v80)
  {
    free(v46);
  }

  return ElementTypeWithLargestPrecision;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::GreaterThanOrEqualToOp,std::greater_equal<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
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

  v69[0] = v5;
  v69[1] = v6;
  v78 = v80;
  v79 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v67 = v7;
  v68 = v8;
  v9 = *(a3 + 8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    if (v10)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  ElementTypeWithLargestPrecision = 0;
  v65 = v9;
  v66 = v10;
  if (v67 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v67);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v74 = v13;
    v75 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v74);
    v74 = mlir::ElementsAttr::getType(&v67);
    v75 = mlir::ElementsAttr::getType(&v65);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v67, v68);
      v16 = mlir::ElementsAttr::getNumElements(v65, v66);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v65, &v60);
        if (v17)
        {
          v30 = 0;
          v31 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v74, v30, &__p);
            LODWORD(v71[0]) = v59;
            v70 = __p;
            v59 = 0;
            BYTE4(v71[0]) = v31;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v60, v30, &v53);
            v56 = v54;
            v55 = v53;
            v54 = 0;
            v57 = v31;
            if (BYTE4(v71[0]) == 1)
            {
              v32 = llvm::APInt::compare(&v70, &v55);
            }

            else
            {
              v32 = llvm::APInt::compareSigned(&v70, &v55);
            }

            LODWORD(v73[0]) = 1;
            v72 = (v32 >= 0);
            v33 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &v72 && &v78[16 * v79] > &v72)
              {
                v36 = &v72 - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v33 = v78;
                v34 = &v78[v36];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v34 = &v72;
                v33 = v78;
              }
            }

            else
            {
              v34 = &v72;
            }

            v35 = &v33[16 * v79];
            *(v35 + 2) = *(v34 + 2);
            *v35 = *v34;
            *(v34 + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              operator delete[](v72);
            }

            if (v56 >= 0x41 && v55)
            {
              operator delete[](v55);
            }

            if (v54 >= 0x41 && v53)
            {
              operator delete[](v53);
            }

            if (LODWORD(v71[0]) >= 0x41 && v70)
            {
              operator delete[](v70);
            }

            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            ++v30;
          }

          while (v17 != v30);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v65, &v60);
        v72 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v72);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v74, i, &v72);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v60, i, &v70);
            LOBYTE(__p) = 0;
            llvm::APFloat::convert(&v72, v20, 1, &__p);
            LOBYTE(__p) = 0;
            v22 = llvm::APFloat::convert(&v70, v20, 1, &__p);
            v23 = v73[0];
            v24 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v24 == v23)
            {
              v25 = llvm::detail::DoubleAPFloat::compare(v73, v71);
            }

            else
            {
              v25 = llvm::detail::IEEEFloat::compare(v73, v71);
            }

            v59 = 1;
            __p = ((v25 - 1) < 2);
            v26 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &__p && &v78[16 * v79] > &__p)
              {
                v29 = &__p - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v26 = v78;
                p_p = &v78[v29];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                p_p = &__p;
                v26 = v78;
              }
            }

            else
            {
              p_p = &__p;
            }

            v28 = &v26[16 * v79];
            *(v28 + 2) = *(p_p + 2);
            *v28 = *p_p;
            *(p_p + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v24 == v71[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v71);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v71);
            }

            if (v24 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }
          }
        }
      }

      if ((v62 & 1) == 0)
      {
        v37 = v63;
        v63 = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }
      }

      if ((v60 & 1) == 0)
      {
        v38 = v61;
        v61 = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }
      }

      if ((v76 & 1) == 0)
      {
        v39 = v77;
        v77 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v74 & 1) == 0)
      {
        v40 = v75;
        v75 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v69);
      v43 = v42;
      v44 = mlir::ElementsAttr::isSplat(v69);
      v45 = mlir::RankedTensorType::get(ArgAttrsAttr, v43, v44, 0);
      ElementTypeWithLargestPrecision = (mlir::createElementsAttr(v45, v78, v79) & 0xFFFFFFFFFFFFFFFBLL);
    }
  }

LABEL_105:
  v46 = v78;
  if (v79)
  {
    v47 = &v78[16 * v79 - 8];
    v48 = -16 * v79;
    v49 = v47;
    do
    {
      v50 = *v49;
      v49 -= 4;
      if (v50 >= 0x41)
      {
        v51 = *(v47 - 1);
        if (v51)
        {
          operator delete[](v51);
        }
      }

      v47 = v49;
      v48 += 16;
    }

    while (v48);
    v46 = v78;
  }

  if (v46 != v80)
  {
    free(v46);
  }

  return ElementTypeWithLargestPrecision;
}