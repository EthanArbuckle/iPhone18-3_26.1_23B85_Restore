void llvm::SmallVectorImpl<llvm::APFloat>::append<llvm::APFloat const*,void>(unsigned int *a1, char *a2, char *a3)
{
  v5 = a1;
  v6 = a3 - a2;
  v7 = a1[2];
  v8 = v7 + ((a3 - a2) >> 5);
  if (v8 > a1[3])
  {
    v20 = 0;
    v9 = a1 + 4;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, v8, 32, &v20);
    v11 = v10;
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(v5, v10);
    v12 = v20;
    a1 = *v5;
    if (*v5 != v9)
    {
      free(a1);
    }

    *v5 = v11;
    v5[3] = v12;
    LODWORD(v7) = v5[2];
  }

  if (a2 != a3)
  {
    v13 = *v5;
    v14 = v7;
    v15 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v16 = &v13[8 * v14 + 2];
    v17 = (a2 + 8);
    do
    {
      if (v15 == *v17)
      {
        v18 = llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, v17);
      }

      else
      {
        v18 = llvm::detail::IEEEFloat::IEEEFloat(v16, v17);
      }

      v16 = (v18 + 4);
      v19 = v17 + 24;
      v17 = (v17 + 32);
    }

    while (v19 != a3);
    LODWORD(v7) = v5[2];
  }

  v5[2] = v7 + (v6 >> 5);
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldCastOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = a2;
  mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24));
  Type = mlir::pdl_interp::CheckTypeOp::getType(&v10);
  v5 = *a3;
  if (v5)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v5);
      v16 = Type;
      v15 = ElementTypeOrSelf;
      if (Type == ElementTypeOrSelf)
      {
        return v5 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v8 = ElementTypeOrSelf;
      if (mlir::Type::isF16(&v16) || mlir::Type::isBF16(&v16))
      {
        if (mlir::Type::isF32(&v15))
        {
          return v5 & 0xFFFFFFFFFFFFFFFBLL;
        }
      }

      else if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v13 = v16;
        Value = mlir::AffineMapAttr::getValue(&v13);
        if (mlir::Type::isF16(&Value))
        {
          v11 = v8;
          v12 = mlir::AffineMapAttr::getValue(&v11);
          if (mlir::Type::isF32(&v12))
          {
            return v5 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return mlir::mps::foldCastAttribute(v5, v6, Type, 1);
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldReinterpretCastOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v73 = a2;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24));
  if (ElementTypeOrSelf == mlir::pdl_interp::CheckTypeOp::getType(&v73))
  {
    return *(*(v73 + 72) + 24) | 4;
  }

  ElementBitWidth = mlir::mps::getElementBitWidth(ElementTypeOrSelf);
  Type = mlir::pdl_interp::CheckTypeOp::getType(&v73);
  v8 = mlir::mps::getElementBitWidth(Type);
  v9 = *a3;
  if (!v9)
  {
    return 0;
  }

  v10 = v8;
  v11 = mlir::DenseElementsAttr::classof(v9);
  v12 = v11 ? v9 : 0;
  v72 = v12;
  if (!v11)
  {
    return 0;
  }

  if (!mlir::DenseElementsAttr::isSplat(&v72))
  {
    goto LABEL_17;
  }

  v13 = ElementBitWidth >> 3;
  v14 = v10 >> 3;
  if (ElementBitWidth >= 8 && ElementBitWidth > v10)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v72);
    __p = &v71;
    v70 = xmmword_1E096FAF0;
    if (v14 < 5)
    {
      v23 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&__p, &v71, v10 >> 3, 1);
      v23 = v70;
    }

    if (v10 >= 8)
    {
      memcpy(__p + v23, RawStringData, v10 >> 3);
    }

    else
    {
      v26 = v23 + v14;
      *&v70 = v23 + v14;
      if (v10 != 1)
      {
        goto LABEL_38;
      }

      v27 = *RawStringData;
      if (v27 != 255)
      {
        if (*RawStringData)
        {
          goto LABEL_38;
        }
      }

      if ((v26 + 1) > *(&v70 + 1))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&__p, &v71, v26 + 1, 1);
        v26 = v70;
      }

      *(__p + v26) = v27;
      v14 = 1;
    }

    v26 = v70 + v14;
    *&v70 = v70 + v14;
    if (!v26)
    {
      goto LABEL_48;
    }

LABEL_38:
    v28 = 0;
    v29 = __p;
    do
    {
      v30 = 0;
      do
      {
        v31 = RawStringData[v30];
        v32 = *(__p + v30);
        if (v26 - 1 == v30)
        {
          break;
        }

        ++v30;
      }

      while (v31 == v32);
      v28 += v26;
      if (v28 == v13)
      {
        break;
      }

      RawStringData += v26;
    }

    while (v31 == v32);
    if (v31 == v32)
    {
      v33 = (*(v73 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (v33)
      {
        v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
        v29 = __p;
        v26 = v70;
      }

      else
      {
        v34 = 0;
      }

      result = mlir::DenseElementsAttr::getFromRawBuffer(v33, v34, v29, v26, v19, v20, v21) & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
LABEL_48:
      if (mlir::DenseElementsAttr::getNumElements(&v72) <= 1023)
      {
        v43 = mlir::DenseElementsAttr::getNumElements(&v72) * v13;
        v66 = &v68;
        v67 = xmmword_1E096FAF0;
        if (v43)
        {
          if (v43 < 5)
          {
            v44 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&v66, &v68, v43, 1);
            v44 = v67;
          }

          if (v43 != v44)
          {
            bzero(v66 + v44, v43 - v44);
          }

          v58 = 0;
          *&v67 = v43;
          do
          {
            v59 = v66;
            v60 = mlir::DenseElementsAttr::getRawStringData(&v72);
            memcpy(&v59[v58], v60, v13);
            v58 += v13;
          }

          while (v43 != v58);
        }

        v61 = (*(v73 - 8) & 0xFFFFFFFFFFFFFFF8);
        if (v61)
        {
          v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v61 + 8);
        }

        else
        {
          v62 = 0;
        }

        result = mlir::DenseElementsAttr::getFromRawBuffer(v61, v62, v66, v67, v40, v41, v42) & 0xFFFFFFFFFFFFFFFBLL;
        if (v66 != &v68)
        {
          v63 = result;
          free(v66);
          result = v63;
        }
      }

      else
      {
        result = 0;
      }
    }

    v64 = __p;
    if (__p == &v71)
    {
      return result;
    }

LABEL_83:
    v65 = result;
    free(v64);
    return v65;
  }

  if (ElementBitWidth >= v10 || v10 < 8)
  {
    goto LABEL_17;
  }

  if (ElementBitWidth == 1)
  {
    mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v72, &__p);
    v24 = v70;
    if (v70 > 0x40)
    {
      v25 = llvm::APInt::countLeadingZerosSlowCase(&__p) == v24 - 1;
      if (__p)
      {
        operator delete[](__p);
      }
    }

    else
    {
      v25 = __p == 1;
    }

    LOBYTE(v66) = v25 << 31 >> 31;
    llvm::SmallVector<char,2u>::SmallVector(&__p, v10 >> 3, &v66);
    v56 = (*(v73 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v56)
    {
      v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v56 + 8);
    }

    else
    {
      v57 = 0;
    }

    result = mlir::DenseElementsAttr::getFromRawBuffer(v56, v57, __p, v70, v53, v54, v55) & 0xFFFFFFFFFFFFFFFBLL;
    v64 = __p;
LABEL_82:
    if (v64 == &v71)
    {
      return result;
    }

    goto LABEL_83;
  }

  if (ElementBitWidth >= 8)
  {
    llvm::SmallVector<char,2u>::SmallVector(&__p, v10 >> 3);
    v45 = 0;
    do
    {
      v46 = __p;
      v47 = mlir::DenseElementsAttr::getRawStringData(&v72);
      memcpy(&v46[v45], v47, v13);
      v45 += v13;
    }

    while (v14 != v45);
    v51 = (*(v73 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    result = mlir::DenseElementsAttr::getFromRawBuffer(v51, v52, __p, v70, v48, v49, v50) & 0xFFFFFFFFFFFFFFFBLL;
    v64 = __p;
    goto LABEL_82;
  }

LABEL_17:
  if (mlir::DenseElementsAttr::isSplat(&v72) && ElementBitWidth != v10)
  {
    return 0;
  }

  v17 = (*(v73 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v35 = mlir::DenseElementsAttr::getRawStringData(&v72);
  return mlir::DenseElementsAttr::getFromRawBuffer(v17, v18, v35, v36, v37, v38, v39) & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t llvm::SmallVector<char,2u>::SmallVector(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  *a1 = a1 + 24;
  *(a1 + 8) = xmmword_1E09829E0;
  v5 = *a3;
  if (a2 >= 3)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), a2, 1);
    v6 = *a1;
LABEL_5:
    memset(v6, v5, a2);
    goto LABEL_6;
  }

  if (a2)
  {
    v6 = (a1 + 24);
    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 8) = a2;
  return a1;
}

uint64_t llvm::SmallVector<char,2u>::SmallVector(uint64_t result, unint64_t a2)
{
  v2 = a2;
  *result = result + 24;
  *(result + 8) = xmmword_1E09829E0;
  if (a2)
  {
    if (a2 < 3)
    {
      v4 = 0;
    }

    else
    {
      v3 = result;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(result, (result + 24), a2, 1);
      result = v3;
      v4 = *(v3 + 8);
      a2 = v2 - v4;
      if (v2 == v4)
      {
        goto LABEL_7;
      }
    }

    v5 = result;
    bzero((*result + v4), a2);
    result = v5;
LABEL_7:
    *(result + 8) = v2;
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldShapeOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
    v13 = v3;
    v14 = v4;
    if (v3 && mlir::CallOpInterface::getArgOperands(&v13) && mlir::CallOpInterface::getArgOperands(&v13))
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
      if (!v6)
      {
LABEL_11:
        mlir::Attribute::getContext((a2 + 24));
        v8 = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
        v10 = v9;
        ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
      }

      v7 = 8 * v6;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::getIntegerTensorAttr(uint64_t result, uint64_t a2, uint64_t a3)
{
  v43[4] = *MEMORY[0x1E69E9840];
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  v40 = v3;
  if (v3)
  {
    v5 = result;
    if (mlir::IntegerType::getWidth(&v40) == 32)
    {
      v39 = a2;
      v6 = mlir::RankedTensorType::get(&v39, 1, v40, 0);
      v7 = v6;
      if (v6)
      {
        v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
      }

      else
      {
        v8 = 0;
      }

      v41 = v43;
      v42 = 0x400000000;
      v12 = (8 * a2) >> 3;
      if (v12 < 5)
      {
        v13 = 0;
        v15 = 0;
        v14 = v43;
        v16 = 8 * a2;
        if (!a2)
        {
LABEL_30:
          LODWORD(v42) = v15 + (v16 >> 3);
          v24 = 4 * v42;
          v25 = v7;
          v26 = v8;
          v27 = 4;
LABEL_31:
          result = mlir::DenseElementsAttr::getFromRawBuffer(v25, v26, v14, v24, v27, 1, 1);
          if (v41 != v43)
          {
            v38 = result;
            free(v41);
            return v38;
          }

          return result;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v12, 4);
        v13 = v42;
        v14 = v41;
        v15 = v42;
        v16 = 8 * a2;
        if (!a2)
        {
          goto LABEL_30;
        }
      }

      v17 = (v14 + 4 * v13);
      v18 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v18 >= 7)
      {
        v28 = v18 + 1;
        v29 = (v18 + 1) & 0x3FFFFFFFFFFFFFF8;
        v19 = (v17 + 4 * v29);
        v20 = &v5->i8[8 * v29];
        v30 = v5 + 2;
        v31 = v17 + 1;
        v32 = v29;
        do
        {
          v34 = v30[-2];
          v33 = v30[-1];
          v36 = *v30;
          v35 = v30[1];
          v30 += 4;
          v31[-1] = vuzp1q_s32(v34, v33);
          *v31 = vuzp1q_s32(v36, v35);
          v31 += 2;
          v32 -= 8;
        }

        while (v32);
        if (v28 == v29)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v19 = v17;
        v20 = v5;
      }

      do
      {
        v37 = *v20;
        v20 += 8;
        v19->i32[0] = v37;
        v19 = (v19 + 4);
      }

      while (v20 != &v5->i8[v16]);
LABEL_29:
      v15 = v42;
      goto LABEL_30;
    }

    v39 = a2;
    v9 = mlir::RankedTensorType::get(&v39, 1, v40, 0);
    v10 = v9;
    if (v9)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    }

    else
    {
      v11 = 0;
    }

    v41 = v43;
    v42 = 0x400000000;
    v21 = (8 * a2) >> 3;
    if (v21 < 5)
    {
      v22 = 0;
      v14 = v43;
      v23 = 8 * a2;
      if (!a2)
      {
LABEL_24:
        LODWORD(v42) = v22 + (v23 >> 3);
        v24 = 8 * v42;
        v25 = v10;
        v26 = v11;
        v27 = 8;
        goto LABEL_31;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v21, 8);
      v22 = v42;
      v14 = v41;
      v23 = 8 * a2;
      if (!a2)
      {
        goto LABEL_24;
      }
    }

    memcpy(&v14[v22], v5, v23);
    v22 = v42;
    v14 = v41;
    goto LABEL_24;
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldRankOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
    v9 = v3;
    v10 = v4;
    if (v3 && mlir::CallOpInterface::getArgOperands(&v9))
    {
      mlir::Attribute::getContext((a2 + 24));
      mlir::CallableOpInterface::getArgAttrsAttr(&v9);
      v8 = v5;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return 0;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldSizeOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
    v13 = v3;
    v14 = v4;
    if (v3 && mlir::CallOpInterface::getArgOperands(&v13))
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
      if (!v6)
      {
LABEL_10:
        mlir::Attribute::getContext((a2 + 24));
        v8 = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
        NumElements = mlir::ShapedType::getNumElements(v8, v9);
        ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
      }

      v7 = 8 * v6;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  return 0;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldDimensionSizeOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 8);
  if (!v4 || !mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8))
  {
    return 0;
  }

  v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
  v25 = v27;
  v26 = 0x600000000;
  mlir::getIntValues<long long>(v4, v5, &v25, 1);
  v6 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v21[0] = v6;
  v21[1] = v7;
  if (mlir::CallOpInterface::getArgOperands(v21))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v21);
    v22 = v24;
    v23 = 0x400000000;
    if (v26)
    {
      v11 = 0;
      v12 = v25;
      v13 = 8 * v26;
      while (1)
      {
        v14 = *(ArgAttrsAttr + 8 * ((*v12 + v10) % v10));
        if (v14 == 0x8000000000000000)
        {
          break;
        }

        if (v11 >= HIDWORD(v23))
        {
          v15 = ArgAttrsAttr;
          v16 = v10;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v11 + 1, 8);
          v10 = v16;
          ArgAttrsAttr = v15;
          v11 = v23;
        }

        *(v22 + v11) = v14;
        v11 = v23 + 1;
        LODWORD(v23) = v23 + 1;
        ++v12;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      v8 = 0;
    }

    else
    {
LABEL_18:
      mlir::Attribute::getContext((a2 + 24));
      v17 = v22;
      v18 = v23;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
    }

    if (v22 != v24)
    {
      free(v22);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return v8;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldDynamicShapeCastOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
  v10 = *(*(v9 + 72) + 32 * ODSOperandIndexAndLength + 24);
  result = mlir::Value::getDefiningOp(&v10);
  if (result)
  {
    {
      v8 = result;
      result = v8;
    }

    if ((*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) && ((v4 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0), v5 = *(*(*(v9 + 72) + 32 * v4 + 24) + 8), *(v9 + 36)) ? (v6 = v9 - 16) : (v6 = 0), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) ^ v5) <= 7))
    {
      v7 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
      return *(*(v9 + 72) + 32 * v7 + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldBroadcastToOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37[6] = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  v5 = *a3;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(**a3 + 8))
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v28[0] = v5;
  v28[1] = v6;
  v7 = *(a3 + 8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  if (v7)
  {
    if (mlir::ElementsAttr::getNumElements(v5, v6) != 1 || mlir::ElementsAttr::getNumElements(v7, v8) != 1)
    {
      return 0;
    }

    SingleInt = mlir::getSingleIntValue<long long>(v7, v8);
    ArgOperands = mlir::CallOpInterface::getArgOperands(v28);
    v36 = v11;
    if (*(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      ArgOperands = mlir::CallOpInterface::getArgOperands(v28);
      v36 = v12;
      v13 = *(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136);
      if (v13 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        return 0;
      }

      mlir::ElementsAttr::getValues<llvm::APFloat>(v28, &ArgOperands);
      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&ArgOperands, 0, &__p);
      v31 = v33;
      v32 = 0x100000000;
      llvm::SmallVectorImpl<llvm::APFloat>::assign(&v31, SingleInt, &__p);
      llvm::APFloat::~APFloat(&__p);
      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ArgOperands);
      ArgOperands = v32;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v28[0]);
      v15 = mlir::RankedTensorType::get(&ArgOperands, 1, ElementTypeOrSelf, 0);
      v16 = mlir::createElementsAttr(v15, v31, v32) & 0xFFFFFFFFFFFFFFFBLL;
      llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v31);
      return v16;
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(v28, &v31);
    mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v31, 0, &__p);
    ArgOperands = v37;
    v36 = 0x300000000;
    llvm::SmallVectorImpl<llvm::APInt>::assign(&ArgOperands, SingleInt, &__p);
    if (v30 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if ((v33[8] & 1) == 0)
    {
      v17 = v34;
      v34 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    if ((v31 & 1) == 0)
    {
      v18 = v32;
      v32 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    v31 = v36;
    v19 = mlir::getElementTypeOrSelf(v28[0]);
    v20 = mlir::RankedTensorType::get(&v31, 1, v19, 0);
    ElementsAttr = mlir::createElementsAttr(v20, ArgOperands, v36);
    v22 = ArgOperands;
    if (v36)
    {
      v23 = (16 * v36 + ArgOperands - 8);
      v24 = -16 * v36;
      v25 = v23;
      do
      {
        v26 = *v25;
        v25 -= 4;
        if (v26 >= 0x41)
        {
          v27 = *(v23 - 1);
          if (v27)
          {
            operator delete[](v27);
          }
        }

        v23 = v25;
        v24 += 16;
      }

      while (v24);
      v22 = ArgOperands;
    }

    result = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
    if (v22 != v37)
    {
      v16 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
      free(v22);
      return v16;
    }
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldBroadcastGradientArgsOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  if (v4)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
  }

  v20 = v3;
  v21 = v4;
  v5 = (*(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    if (!v3)
    {
      return 0;
    }
  }

  if (!mlir::CallOpInterface::getArgOperands(&v20))
  {
    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v20);
  if (v8)
  {
    v9 = 8 * v8;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

LABEL_13:
  if (!v20 || !mlir::CallOpInterface::getArgOperands(&v20))
  {
    return 0;
  }

  v10 = mlir::CallableOpInterface::getArgAttrsAttr(&v20);
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

    return 0;
  }

LABEL_19:
  mlir::Attribute::getContext((a2 + 24));
  mlir::mps::getBroadcastGradientArgs(v20, v21, v5, v6, &__p);
  v13 = __p;
  v14 = (v19 - __p) >> 3;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (__p)
  {
    v19 = __p;
    v17 = result;
    operator delete(__p);
    return v17;
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldConv2DOp>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v87[4] = *MEMORY[0x1E69E9840];
  v79 = a2;
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

  v78[0] = v6;
  v78[1] = v7;
  v8 = *(a2 + 72);
  v9 = (*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v8 = *(a2 + 72);
  }

  else
  {
    v10 = 0;
  }

  v77[0] = v9;
  v77[1] = v10;
  v11 = (*(*(v8 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v76[0] = v11;
  v76[1] = v12;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v79);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v79);
  result = 0;
  if (!StorageType && WeightsLayout == 2)
  {
    if (!mlir::CallOpInterface::getArgOperands(v77))
    {
      return 0;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v77);
    if (v17)
    {
      v18 = 8 * v17;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_20:
    if (!mlir::CallOpInterface::getArgOperands(v76))
    {
      return 0;
    }

    v19 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
    if (v20)
    {
      v21 = 8 * v20;
      while (*v19 != 0x8000000000000000)
      {
        ++v19;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_25;
        }
      }

      return 0;
    }

LABEL_25:
    if (!mlir::CallOpInterface::getArgOperands(v78))
    {
      return 0;
    }

    v22 = mlir::CallableOpInterface::getArgAttrsAttr(v78);
    if (v23)
    {
      v24 = 8 * v23;
      while (*v22 != 0x8000000000000000)
      {
        ++v22;
        v24 -= 8;
        if (!v24)
        {
          goto LABEL_30;
        }
      }

      return 0;
    }

LABEL_30:
    isSplat = mlir::ElementsAttr::isSplat(v78);
    if (!mlir::Type::isF32(&isSplat) && !mlir::Type::isF16(&isSplat) && !mlir::Type::isBF16(&isSplat))
    {
      return 0;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v77[0]);
    v26 = mlir::getElementTypeOrSelf(v76[0]);
    v74 = ElementTypeOrSelf != v26;
    if (result)
    {
      v28 = result;
      v29 = v27;
      if (result)
      {
        v31 = result;
        v32 = v30;
        v33 = mlir::CallableOpInterface::getArgAttrsAttr(v77);
        v35 = v34;
        LOBYTE(v62) = 0;
        LOBYTE(v63) = 0;
        if (ElementTypeOrSelf == v26)
        {
          v38 = isSplat;
        }

        else
        {
          Context = mlir::Attribute::getContext(v78);
          v38 = mlir::Float32Type::get(Context, v37);
        }

        v39 = mlir::ShapedType::cloneWith(v78, &v62, v38);
        v41 = v40;
        mlir::mps::CPUNDArray::CPUNDArray(v73, v28, v29);
        mlir::mps::CPUNDArray::CPUNDArray(v72, v31, v32);
        mlir::mps::CPUNDArray::CPUNDArray(v71, v39, v41, 0);
        Strides = mlir::mps::Conv3DOp::getStrides(&v79);
        InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v79);
        Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v79);
        Groups = mlir::mps::Conv3DOp::getGroups(&v79);
        PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v79);
        v86[0] = v87;
        v86[1] = 0x400000000;
        v84[0] = v85;
        v84[1] = 0x400000000;
        v82[0] = v83;
        v82[1] = 0x200000000;
        v80[0] = v81;
        v80[1] = 0x200000000;
        v45 = *(v79 + 24);
        if (Strides)
        {
          v46 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
        }

        else
        {
          v46 = 0;
        }

        if (InputAttributeNames)
        {
          v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
        }

        else
        {
          v47 = 0;
        }

        if (Rewriter)
        {
          v48 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
        }

        else
        {
          v48 = 0;
        }

        if (mlir::mps::inferConv2DParams(v45, 1, v33, v35, Strides, v46, InputAttributeNames, v47, Rewriter, v48, 0, v86, v84, v82, v80))
        {
          v49 = *(v84[0] + 2);
          v50 = *(v84[0] + 3);
          v51 = *v84[0];
          v52 = *(v84[0] + 1);
          v54 = *v82[0];
          v53 = *(v82[0] + 1);
          v56 = *v80[0];
          v55 = *(v80[0] + 1);
          v70 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          mlir::mps::buildConv2DDescriptor(*(*(v79 + 72) + 24), *(*(v79 + 72) + 56), Groups, v53, v54, v55, v56, v49, &v62, v50, v51, v52, PaddingStyle, 0, 2, 0, 0, 0, 0);
          v57 = mlir::mps::doBNNSConv2D(v73, v72, v71, Groups, v55, v56, v53, v54, 0, 0, *(&v68 + 1), v69, *(&v67 + 1), v68, v59);
          v58 = 0;
          if (v57)
          {
            v58 = mlir::mps::CPUNDArray::getElementsAttr(v71, 0, 0) & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        else
        {
          v58 = 0;
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

        if (v86[0] != v87)
        {
          free(v86[0]);
        }

        mlir::mps::CPUNDArray::~CPUNDArray(v71);
        mlir::mps::CPUNDArray::~CPUNDArray(v72);
        mlir::mps::CPUNDArray::~CPUNDArray(v73);
        return v58;
      }
    }
  }

  return result;
}

void *mlir::mps::anonymous namespace::FoldConv2DOp::externalFold(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>)const::{lambda(mlir::Attribute)#1}::operator()(_BYTE *a1, void *a2)
{
  if (!a2)
  {
    v37 = 0;
    v38 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8))
  {
    v37 = 0;
    v38 = 0;
    return 0;
  }

  v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v37 = a2;
  v38 = v4;
  if (!a2)
  {
    return 0;
  }

  Type = mlir::ElementsAttr::getType(&v37);
  v6 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v36[0] = v6;
  v36[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v36);
  if (mlir::Type::isF32(&isSplat) || (*a1 & 1) == 0)
  {
    return v37;
  }

  if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isBF16(&isSplat))
  {
    return 0;
  }

  LOBYTE(v33) = 0;
  LOBYTE(v34) = 0;
  Context = mlir::Attribute::getContext(v36);
  v9 = mlir::Float32Type::get(Context, v8);
  v10 = mlir::ShapedType::cloneWith(v36, &v33, v9);
  v12 = v11;
  mlir::mps::CPUNDArray::CPUNDArray(&v33, v37, v38);
  mlir::mps::CPUNDArray::CPUNDArray(v32, v10, v12, 0);
  mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v31, 13, 0.0);
  v13 = operator new(8uLL);
  v28 = v13;
  *v13 = &v33;
  v29 = v13 + 1;
  v30 = v13 + 1;
  v14 = operator new(8uLL);
  v25 = v14;
  *v14 = v32;
  v26 = v14 + 1;
  v27 = v14 + 1;
  v15 = operator new(8uLL);
  v22 = v15;
  *v15 = 0;
  v23 = v15 + 1;
  v24 = v15 + 1;
  v16 = operator new(8uLL);
  __p = v16;
  *v16 = 0;
  v20 = v16 + 1;
  v21 = v16 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v31, &v28, &v25, &v22, &__p, 0, v34, v31);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
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

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v32, 0, 0);
  mlir::mps::CPUNDArray::~CPUNDArray(v32);
  mlir::mps::CPUNDArray::~CPUNDArray(&v33);
  return ElementsAttr;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldTypeConstraintOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = a2;
  mlir::ValueRange::ValueRange(v10, &v5, 1uLL);
  Type = mlir::pdl_interp::CheckTypeOp::getType(&v6);
  mlir::ValueRange::ValueRange(v9, &Type, 1uLL);
  v7[0] = &unk_1F5B17D00;
  v8 = v7;
  v2 = mlir::mps::areMoreSpecializedTypes(v10[0], v10[1], v9[0], v9[1], v7);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
    if (v2)
    {
      return *(*(v6 + 72) + 24) | 4;
    }
  }

  else
  {
    if (v8)
    {
      (*(*v8 + 40))();
    }

    if (v2)
    {
      return *(*(v6 + 72) + 24) | 4;
    }
  }

  return 0;
}

void *std::__function::__func<mlir::mps::$_0,std::allocator<mlir::mps::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B17D00;
  return result;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldRealPartOp>::externalFold(uint64_t a1, uint64_t a2)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 0;
  }

  else
  {
    return *(*(a2 + 72) + 24) | 4;
  }
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldImaginaryPartOp>::externalFold(uint64_t a1, uint64_t a2)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v4 = v3 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8) : 0;
    v9[0] = v3;
    v9[1] = v4;
    if (mlir::CallOpInterface::getArgOperands(v9))
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v9);
      if (!v6)
      {
        return mlir::mps::getConstantAttr<int>((*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) & 0xFFFFFFFFFFFFFFFBLL;
      }

      v7 = 8 * v6;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v7 -= 8;
        if (!v7)
        {
          return mlir::mps::getConstantAttr<int>((*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) & 0xFFFFFFFFFFFFFFFBLL;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldConjugateOp>::externalFold(uint64_t a1, uint64_t a2)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 0;
  }

  else
  {
    return *(*(a2 + 72) + 24) | 4;
  }
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldNonZeroOp>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (!*a3)
  {
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8))
  {
    return 0;
  }

  v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
  if (!v4)
  {
    return 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v13, v4, v5);
  mlir::mps::computeNonZeroIndices(v13, &v16);
  if (v19 == 1)
  {
    v15[0] = v17 / v14;
    v15[1] = v14;
    Context = mlir::Attribute::getContext((a2 + 24));
    v7 = mlir::IntegerType::get(Context, 32, 1u);
    v8 = mlir::RankedTensorType::get(v15, 2, v7, 0);
    v9 = v8;
    if (v8)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
      if (v19)
      {
LABEL_9:
        v11 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v10, v16, 4 * v17, 4, 1, 1) & 0xFFFFFFFFFFFFFFFBLL;
        if ((v19 & 1) != 0 && v16 != &v18)
        {
          free(v16);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v11 = 0;
LABEL_13:
  mlir::mps::CPUNDArray::~CPUNDArray(v13);
  return v11;
}

uint64_t OUTLINED_FUNCTION_16_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a10 = v11;
  a11 = a1;

  return mlir::CallOpInterface::getArgOperands(&a10);
}

void mlir::mps::MPSResources::~MPSResources(mlir::mps::MPSResources *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *this;
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      v6 = *(this + 9);
      llvm::sys::RWMutexImpl::lock((v6 + 48));
      if (*(v5 + 88) == 1)
      {
        *(v5 + 88) = 0;
        if (*(v5 + 80) == 1)
        {
          v7 = *(v5 + 64);
          if (v7 >= 8)
          {
            v8 = (v5 + 40);
            v9 = (v5 + 40);
            if ((v7 & 2) == 0)
            {
              v9 = *v8;
            }

            (*(v7 & 0xFFFFFFFFFFFFFFF8))(v9, *(v5 + 16), *(v5 + 24), *(v5 + 32));
            v10 = *(v5 + 64);
            if (v10 >= 8)
            {
              if ((v10 & 4) != 0)
              {
                if ((v10 & 2) == 0)
                {
                  v8 = *v8;
                }

                (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
              }

              if ((v10 & 2) == 0)
              {
                llvm::deallocate_buffer(*(v5 + 40), *(v5 + 48));
              }
            }
          }

          *(v5 + 80) = 0;
        }
      }

      else
      {
        --*(v5 + 88);
      }

      llvm::sys::RWMutexImpl::unlock_shared((v6 + 48));
      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  if (*(this + 15))
  {
    v11 = *(this + 14);
    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = *(*(this + 6) + v12);
        if (v13 != -8 && v13 != 0)
        {
          llvm::deallocate_buffer(v13, (*v13 + 33));
        }

        v12 += 8;
      }

      while (8 * v11 != v12);
    }
  }

  free(*(this + 6));
  if (*this != (this + 16))
  {
    free(*this);
  }
}

__n128 mlir::mps::MPSResources::insert(mlir::mps::MPSResources *this, MPSResourceBlobEntry *a2)
{
  v4 = *(this + 9);
  llvm::sys::RWMutexImpl::lock((v4 + 48));
  ++*(a2 + 11);
  llvm::sys::RWMutexImpl::unlock_shared((v4 + 48));
  v6 = *(this + 2);
  if (v6 >= *(this + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(this, this + 16, v6 + 1, 8);
    LODWORD(v6) = *(this + 2);
  }

  *(*this + 8 * v6) = a2;
  ++*(this + 2);
  v7 = a2 + 16;
  if (!*(a2 + 80))
  {
    v7 = 0;
  }

  v14 = *v7;
  v8 = *(v7 + 2);
  v10 = *a2;
  v9 = *(a2 + 1);
  v11 = llvm::StringMapImpl::hash(v10, v9, v5);
  v12 = *llvm::StringMap<llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>,llvm::MallocAllocator>::try_emplace_with_hash<>((this + 48), v10, v9, v11);
  result = v14;
  *(v12 + 1) = v14;
  v12[3] = v8;
  return result;
}

uint64_t mlir::mps::serializeInternalMPSModule(unsigned int *a1, uint64_t a2, uint64_t a3, mlir::Operation *a4, llvm::raw_ostream *a5, void (*a6)(uint64_t, mlir *), uint64_t a7, int a8, void *__src, uint64_t a10)
{
  v68[6] = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext((a1 + 6));
  v60[0] = Context;
  memset(&v60[1], 0, 24);
  v59 = mlir::OpBuilder::create<mlir::mps::serialization::ModuleOp>(v60, *(a1 + 3));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::Operation::setAttrs(v59, Value, v19);
  v20 = *(((v59 + 16 * ((*(v59 + 11) >> 23) & 1) + ((*(v59 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v59 + 10) + 8);
  v21 = v20 == 0;
  v22 = v20 - 8;
  if (v21)
  {
    v22 = 0;
  }

  v23 = *(((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10] + 8);
  if (v23)
  {
    v24 = v23 - 8;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + 32);
  if (*(v24 + 32) != v24 + 32)
  {
    v26 = *(v22 + 40);
    if (v25 != v26)
    {
      v27 = *(v24 + 40);
      llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v22 + 32, v24 + 32, v27, v24 + 32);
      if (v27 != v25)
      {
        v28 = *v25;
        v29 = *v27;
        *(v29 + 8) = v25;
        *v25 = v29;
        v30 = *v26;
        *(v28 + 8) = v26;
        *v27 = v30;
        *(v30 + 8) = v27;
        *v26 = v28;
      }
    }
  }

  if (mlir::mps::serialization::ModuleOp::verifyInvariants(&v59))
  {
    AttrDictionary = v68;
    v67 = 0x200000000;
    v31 = (24 * a10) >> 3;
    v32 = -1431655765 * v31;
    if (0xAAAAAAAAAAAAAAABLL * v31 < 3)
    {
      v33 = 0;
      v34 = v68;
      if (!a10)
      {
LABEL_17:
        v35 = (v33 + v32);
        LODWORD(v67) = v35;
        v58[0] = &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id;
        v58[1] = "mps_spi";
        v58[2] = 7;
        v36 = v58;
        if (v35 >= HIDWORD(v67))
        {
          if (v34 <= v58 && &v34[24 * v35] > v58)
          {
            v53 = (v58 - v34);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&AttrDictionary, v68, v35 + 1, 24);
            v34 = AttrDictionary;
            v36 = &v53[AttrDictionary];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&AttrDictionary, v68, v35 + 1, 24);
            v36 = v58;
            v34 = AttrDictionary;
          }
        }

        v37 = &v34[24 * v67];
        v38 = *v36;
        *(v37 + 2) = *(v36 + 2);
        *v37 = v38;
        LODWORD(v67) = v67 + 1;
        mlir::PassManager::PassManager(v58, Context, "any", 3uLL, 1);
        mlir::mps::createMPSSerializationPass(AttrDictionary, v67, &v57);
        mlir::OpPassManager::addPass(v58, &v57);
        v39 = v57;
        v57 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }

        v40.var0.var0 = v59;
        if (mlir::PassManager::run(v58, v40))
        {
          v41 = a6;
          v54 = a5;
          LoadedDialect = mlir::MLIRContext::getLoadedDialect(Context, "mps", 3);
          v43 = mlir::MLIRContext::getLoadedDialect(Context, "mps_spi", 7);
          v62 = Context;
          *(mlir::MLIRContext::getOrLoadDialect(Context, "mps", 3, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mps::MPSDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mps::MPSDialect>(void)::{lambda(void)#1}>, &v62) + 40) = 1;
          v62 = LoadedDialect;
          v63 = a2;
          v64 = v43;
          v65 = a3;
          v56 = 4;
          buffer = llvm::allocate_buffer(0x40uLL, 8uLL);
          v55[0] = buffer;
          v55[1] = 0;
          *buffer = -4096;
          *(buffer + 2) = -4096;
          *(buffer + 4) = -4096;
          *(buffer + 6) = -4096;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v55, &v62, &v63, v61);
          llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v55, &v64, &v65, v61);
          if (mlir::detail::downgradeToVersion(v59, v55))
          {
            if (v41)
            {
              v41(a7, v59);
            }

            v45 = *(a2 + 8);
            v62 = &unk_1F5B01218;
            v63 = v45;
            LODWORD(v64) = *(a2 + 16);
            v46 = mlir::MLIRContext::getLoadedDialect(Context, "mpsx", 4);
            v47 = mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(v46);
            *(v47 + 32) = v63;
            *(v47 + 40) = v64;
            v48 = mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(LoadedDialect);
            v49 = mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(v43);
            v50 = *(a2 + 8);
            *(v48 + 40) = *(a2 + 16);
            *(v48 + 32) = v50;
            LODWORD(v50) = *(a3 + 16);
            *(v49 + 32) = *(a3 + 8);
            *(v49 + 40) = v50;
            mlir::writeBytecodeToFile(v59, a4, v54, v51);
          }

          llvm::deallocate_buffer(v55[0], (16 * v56));
        }

        mlir::PassManager::~PassManager(v58);
        if (AttrDictionary != v68)
        {
          free(AttrDictionary);
        }

        goto LABEL_28;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&AttrDictionary, v68, 0xAAAAAAAAAAAAAAABLL * v31, 24);
      v33 = v67;
      v34 = AttrDictionary;
      if (!a10)
      {
        goto LABEL_17;
      }
    }

    memcpy(&v34[24 * v33], __src, 24 * a10);
    v33 = v67;
    v34 = AttrDictionary;
    goto LABEL_17;
  }

LABEL_28:
  if (v59)
  {
    mlir::Operation::erase(v59);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::ModuleOp>(mlir::StringAttr **a1, uint64_t a2)
{
  v13[38] = *MEMORY[0x1E69E9840];
  v10 = a2;
  Context = mlir::Attribute::getContext(&v10);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::ModuleOp,void>::id, Context);
  if ((v6 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::ModuleOp>(v13, v12, v11);
  }

  mlir::OperationState::OperationState(v13, a2, v5);
  v12[0] = 0;
  v12[16] = 0;
  mlir::ModuleOp::build(a1, v13, v12);
  v7 = mlir::OpBuilder::create(a1, v13);
  if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ModuleOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  return v8;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

void mlir::mps::inMemorySerializeInternalMPSModule(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, mlir::Operation *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, mlir::mps::MPSResources **a7@<X8>)
{
  Context = mlir::Attribute::getContext((a1 + 6));
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v15);
  v17 = operator new(0x50uLL);
  *v17 = v17 + 16;
  *(v17 + 1) = 0x400000000;
  *(v17 + 6) = 0;
  *(v17 + 7) = 0;
  *(v17 + 8) = 0x2000000000;
  *(v17 + 9) = Manager;
  v31 = v17;
  v32.var0 = "MLIR20.0.0git";
  v32.var1 = 13;
  mlir::BytecodeWriterConfig::BytecodeWriterConfig(&v30, v32);
  mlir::BytecodeWriterConfig::setElideResourceDataFlag(&v30, 1);
  v29 = &v31;
  v18 = *(a2 + 8);
  v27[0] = &unk_1F5B01218;
  v27[1] = v18;
  v28 = *(a2 + 16);
  v19 = *(a3 + 8);
  v25[0] = &unk_1F5B01238;
  v25[1] = v19;
  v26 = *(a3 + 16);
  v21 = mlir::mps::serializeInternalMPSModule(a1, v27, v25, a4, &v30, llvm::function_ref<void ()(mlir::mps::serialization::ModuleOp)>::callback_fn<mlir::mps::inMemorySerializeInternalMPSModule(mlir::ModuleOp,mlir::mps::MPSDialectVersion,mlir::mps_spi::MPSSPIDialectVersion,llvm::raw_ostream &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0>, &v29, v20, a5, a6);
  v22 = 0;
  if (v21)
  {
    v22 = v31;
    v31 = 0;
  }

  *a7 = v22;
  mlir::BytecodeWriterConfig::~BytecodeWriterConfig(&v30);
  v23 = v31;
  v31 = 0;
  if (v23)
  {
    mlir::mps::MPSResources::~MPSResources(v23);
    operator delete(v24);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = v5 - 1;
    v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
    v9 = (*result + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_10;
    }

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
      v9 = (v6 + 16 * (v16 & v7));
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
  }

  else
  {
    v9 = 0;
  }

  v20 = v9;
  v12 = *(result + 8);
  if (4 * v12 + 4 >= 3 * v5)
  {
    v5 *= 2;
    goto LABEL_24;
  }

  if (v5 + ~v12 - *(result + 12) <= v5 >> 3)
  {
LABEL_24:
    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v12 = *(v17 + 8);
    v9 = v20;
  }

  *(result + 8) = v12 + 1;
  if (*v9 != -4096)
  {
    --*(result + 12);
  }

  *v9 = *a2;
  v9[1] = *a3;
  v6 = *result;
  v5 = *(result + 16);
  v11 = 1;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t *llvm::function_ref<void ()(mlir::mps::serialization::ModuleOp)>::callback_fn<mlir::mps::inMemorySerializeInternalMPSModule(mlir::ModuleOp,mlir::mps::MPSDialectVersion,mlir::mps_spi::MPSSPIDialectVersion,llvm::raw_ostream &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0>(uint64_t *result, uint64_t a2)
{
  v2 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v8 = *result;
  for (i = *(v2 + 8); i != v2; i = *(i + 8))
  {
    v4 = i - 8;
    if (!i)
    {
      v4 = 0;
    }

    result = *(v4 + 40);
    v5 = (v4 + 32);
    if (result != (v4 + 32))
    {
      do
      {
        v6 = result[1];
        v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(result, a2);
        v9 = &v8;
        mlir::detail::walk<mlir::ForwardIterator>(v7, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZZNS1_3mps34inMemorySerializeInternalMPSModuleENS1_8ModuleOpENSB_17MPSDialectVersionENS1_7mps_spi20MPSSPIDialectVersionERNS_11raw_ostreamENS_8ArrayRefINSB_11DialectInfoEEEENK3__0clENSB_13serialization8ModuleOpEEUlNSB_10ConstantOpEE_SO_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESY_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v9, 1);
        result = v6;
      }

      while (v6 != v5);
    }
  }

  return result;
}

double _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZZNS1_3mps34inMemorySerializeInternalMPSModuleENS1_8ModuleOpENSB_17MPSDialectVersionENS1_7mps_spi20MPSSPIDialectVersionERNS_11raw_ostreamENS_8ArrayRefINSB_11DialectInfoEEEENK3__0clENSB_13serialization8ModuleOpEEUlNSB_10ConstantOpEE_SO_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESY_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::mps::MPSResources ****a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v11[3] = v2;
    v11[4] = v3;
    v4 = *a1;
    v11[0] = a2;
    AsAttribute = mlir::mps::ConstantOp::getAsAttribute(v11);
    if (*(AsAttribute->n128_u64[0] + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v7 = AsAttribute;
    }

    else
    {
      v7 = 0;
    }

    v10 = v7;
    if (v7)
    {
      v8 = **v4;
      mlir::mps::MPSBufferTensorAttr::getHandle(&v10, &v9);
      *&result = mlir::mps::MPSResources::insert(v8, v9.n128_u64[0]).n128_u64[0];
    }
  }

  return result;
}

unint64_t mlir::getANENextSupportedInterleaveValue(uint64_t this)
{
  v1 = 4;
  if (this > 4)
  {
    v1 = 8;
  }

  v2 = this & 0xFFFFFFFFFFFFFF00;
  if (this > 2)
  {
    v2 = 0;
  }

  else
  {
    v1 = this;
  }

  if (this <= 8)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  return v3 | v1;
}

uint64_t mlir::legalizeA12(mlir::SymbolRefAttr *InterfaceFor, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = InterfaceFor;
  v188[12] = *MEMORY[0x1E69E9840];
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v170[0] = v6;
  v170[1] = InterfaceFor;
  BodyBlock = mlir::TargetLegalizerInterface::getBodyBlock(v170);
  v8 = a4[1];
  v186 = v188;
  v187 = 0x400000000;
  v183 = v185;
  v184 = 0x400000000;
  v181[0] = mlir::CallOpInterface::getArgOperands(v170);
  Inputs = mlir::FunctionType::getInputs(v181);
  if (v10)
  {
    v11 = *(BodyBlock + 6);
    v12 = *(BodyBlock + 7);
    if (v11 != v12)
    {
      v13 = v11 + 8;
      v14 = 8 * v10 - 8;
      do
      {
        v15 = *Inputs;
        v16 = (*(*(v13 - 8) + 8) & 0xFFFFFFFFFFFFFFF8);
        v181[0] = *(v13 - 8);
        v181[1] = v16;
        v182[0] = v15;
        if (v187 >= HIDWORD(v187))
        {
          v18 = Inputs;
          llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(&v186, v181);
          Inputs = v18;
          if (!v14)
          {
            break;
          }
        }

        else
        {
          v17 = &v186[24 * v187];
          *v17 = *v181;
          *(v17 + 2) = v182[0];
          LODWORD(v187) = v187 + 1;
          if (!v14)
          {
            break;
          }
        }

        ++Inputs;
        v14 -= 8;
        v45 = v13 == v12;
        v13 += 8;
      }

      while (!v45);
    }
  }

  v166 = v8;
  v181[0] = mlir::CallOpInterface::getArgOperands(v170);
  Results = mlir::FunctionType::getResults(v181);
  v21 = v20;
  Terminator = mlir::Block::getTerminator(BodyBlock, v20);
  if ((*(Terminator + 46) & 0x80) != 0)
  {
    if (v21)
    {
      v23 = *(Terminator + 68);
      if (v23)
      {
        v24 = *(Terminator + 72) + 24;
        v25 = v23 - 1;
        v26 = 8 * v21 - 8;
        do
        {
          v27 = (*(*v24 + 8) & 0xFFFFFFFFFFFFFFF8);
          v181[0] = *v24;
          v181[1] = v27;
          v182[0] = *Results;
          if (v184 >= HIDWORD(v184))
          {
            llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(&v183, v181);
          }

          else
          {
            v28 = v183 + 24 * v184;
            *v28 = *v181;
            *(v28 + 2) = v182[0];
            LODWORD(v184) = v184 + 1;
          }

          v29 = v25-- != 0;
          v30 = v29;
          if (!v26)
          {
            break;
          }

          ++Results;
          v24 += 32;
          v26 -= 8;
        }

        while ((v30 & 1) != 0);
      }
    }
  }

  v31 = a3;
  if (!v32)
  {
    v33 = llvm::errs(v32);
    v34 = v33[4];
    if (v33[3] - v34 <= 0x1DuLL)
    {
      v35 = "checkAndCollectANEArgs failed\n";
      v36 = 30;
LABEL_28:
      llvm::raw_ostream::write(v33, v35, v36);
      v37 = 0;
      goto LABEL_31;
    }

    v37 = 0;
    qmemcpy(v34, "checkAndCollectANEArgs failed\n", 30);
    v38 = v33[4] + 30;
LABEL_30:
    v33[4] = v38;
    goto LABEL_31;
  }

  if (!v40)
  {
    v33 = llvm::errs(v40);
    v41 = v33[4];
    if (v33[3] - v41 <= 0x20uLL)
    {
      v35 = "checkAndCollectANEResults failed\n";
      v36 = 33;
      goto LABEL_28;
    }

    v37 = 0;
    qmemcpy(v41, "checkAndCollectANEResults failed\n", 33);
    v38 = v33[4] + 33;
    goto LABEL_30;
  }

  if (!(v187 | v184))
  {
    v37 = mlir::minimalLegalize(v170[0], a2, a3, a5);
    goto LABEL_31;
  }

  v42 = v166;
  if (v187)
  {
    v43 = 0;
    v44 = v186;
    v163 = &v186[24 * v187];
    do
    {
      v45 = *(v44 + 1) == *(v44 + 2) || v31 == 0;
      if (!v45)
      {
        v47 = *(v42 + 16);
        v46 = *(v42 + 24);
        v48 = 8 * a3;
        v49 = a2;
        do
        {
          v178 = *(*(*v49 + 72) + 32 * v43 + 24);
          v181[0] = v178;
          DefiningOp = mlir::Value::getDefiningOp(v181);
          if (DefiningOp)
          {
            v52 = *(DefiningOp + 16);
            v53 = (MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v51) + 8);
          }

          else
          {
            v52 = *(v181[0] + 2);
            v53 = (v52 + 40);
          }

          v54 = *v53;
          *(v42 + 16) = v52;
          *(v42 + 24) = v54;
          Loc = mlir::Value::getLoc(&v178);
          v56 = v178;
          v57 = *(v44 + 1);
          if (v57)
          {
            v58 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v57 + 8);
          }

          else
          {
            v58 = 0;
          }

          (*(*a4 + 120))(a4, Loc, v56, v57, v58, a5);
          if (v47)
          {
            v42 = v166;
            *(v166 + 16) = v47;
            *(v166 + 24) = v46;
          }

          else
          {
            v46 = 0;
            v42 = v166;
            *(v166 + 16) = 0;
            *(v166 + 24) = 0;
          }

          ++v49;
          v48 -= 8;
        }

        while (v48);
      }

      ++v43;
      v44 += 24;
      v31 = a3;
    }

    while (v44 != v163);
  }

  v181[0] = v182;
  v181[1] = 0x400000000;
  v59 = mlir::TargetLegalizerInterface::getBodyBlock(v170);
  v60 = *(v59 + 48);
  v61 = *(v59 + 56);
  if (v60 != v61)
  {
    v62 = v181[1];
    do
    {
      v63 = *&v186[24 * *(*v60 + 24) + 8];
      if (v62 >= HIDWORD(v181[1]))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v181, v182, v62 + 1, 8);
        v62 = v181[1];
      }

      *(v181[0] + v62) = v63;
      v62 = ++LODWORD(v181[1]);
      v60 += 8;
    }

    while (v60 != v61);
  }

  v178 = v180;
  v179 = 0x400000000;
  v64 = mlir::TargetLegalizerInterface::getBodyBlock(v170);
  v66 = mlir::Block::getTerminator(v64, v65);
  if ((*(v66 + 46) & 0x80) != 0)
  {
    v68 = *(v66 + 68);
    if (v68)
    {
      v69 = v179;
      v70 = 8;
      do
      {
        v71 = *(v183 + v70);
        if (v69 >= HIDWORD(v179))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v180, v69 + 1, 8);
          v69 = v179;
        }

        *(v178 + v69) = v71;
        v69 = v179 + 1;
        LODWORD(v179) = v179 + 1;
        v70 += 24;
        --v68;
      }

      while (v68);
    }
  }

  v175 = v177;
  v176 = 0x400000000;
  v162 = &a2[a3];
  if (a3)
  {
    v157 = (v42 + 16);
    v160 = *(v42 + 24);
    v161 = *(v42 + 16);
    v72 = a2;
    do
    {
      v164 = v72;
      v73 = *v72;
      v74 = *(*v72 + 16);
      v75 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*v72, v67);
      *(v42 + 16) = v74;
      *(v42 + 24) = v75;
      if ((*(v73 + 46) & 0x80) != 0)
      {
        v77 = *(v73 + 72);
        v78 = *(v73 + 68);
        v172 = v174;
        v173 = 0x400000000;
        if (v78 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v172, v174, v78, 8);
          v79 = v173;
          goto LABEL_80;
        }

        if (v78)
        {
          v79 = 0;
LABEL_80:
          v80 = 0;
          v81 = (v172 + 8 * v79);
          do
          {
            v82 = *(v77 + 32 * v80 + 24);
            v83 = *(a5 + 16);
            if (v83)
            {
              v84 = *a5;
              v85 = 0x9DDFEA08EB382D69 * ((8 * *(v77 + 32 * v80 + 24) - 0xAE502812AA7333) ^ HIDWORD(*(v77 + 32 * v80 + 24)));
              v86 = 0x9DDFEA08EB382D69 * (HIDWORD(v82) ^ (v85 >> 47) ^ v85);
              v87 = (-348639895 * ((v86 >> 47) ^ v86)) & (v83 - 1);
              v88 = *(*a5 + 16 * v87);
              if (v88 == v82)
              {
LABEL_84:
                if (v87 != v83)
                {
                  v82 = *(v84 + 16 * v87 + 8);
                }
              }

              else
              {
                v89 = 1;
                while (v88 != -4096)
                {
                  v90 = v87 + v89++;
                  v87 = v90 & (v83 - 1);
                  v88 = *(v84 + 16 * v87);
                  if (v88 == v82)
                  {
                    goto LABEL_84;
                  }
                }
              }
            }

            *v81++ = v82;
            ++v80;
          }

          while (v80 != v78);
          v91 = v173;
          goto LABEL_91;
        }

        v91 = 0;
      }

      else
      {
        LODWORD(v78) = 0;
        v91 = 0;
        v172 = v174;
        HIDWORD(v173) = 4;
      }

LABEL_91:
      LODWORD(v173) = v91 + v78;
      v92 = *(v73 + 24);
      v171[0] = mlir::SymbolRefAttr::get(v170[0], v76);
      v168 = mlir::placement::RegionTypeAttr::get(*v42, 1u);
      v93 = mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(v42, v92, &v178, v171, &v168, &v172);
      v169 = v93;
      v94 = v176;
      if (v176 >= HIDWORD(v176))
      {
        v107 = v93;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v175, v177, v176 + 1, 8);
        v93 = v107;
        v94 = v176;
      }

      *(v175 + v94) = v93;
      LODWORD(v176) = v176 + 1;
      v95 = *(v73 + 36);
      if (v95)
      {
        v96 = v73 - 16;
      }

      else
      {
        v96 = 0;
      }

      ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v169, 0);
      v98 = ODSResultIndexAndLength;
      if (*(v169 + 36))
      {
        NextResultAtOffset = v169 - 16;
      }

      else
      {
        NextResultAtOffset = 0;
      }

      v100 = ODSResultIndexAndLength;
      if (ODSResultIndexAndLength)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
      }

      if (v95)
      {
        v101 = (HIDWORD(v98) + v98);
        if (v101 != v98)
        {
          v102 = 0;
          v103 = ~v100 + v101;
          v104 = v95 - 1;
          do
          {
            v105 = mlir::detail::OpResultImpl::getNextResultAtOffset(v96, v102);
            v106 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v102);
            v171[0] = v105;
            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, v171) = v106;
            if (v104 == v102)
            {
              break;
            }

            v45 = v103 == v102++;
          }

          while (!v45);
        }
      }

      if (v172 != v174)
      {
        free(v172);
      }

      v42 = v166;
      if (v161)
      {
        *(v166 + 16) = v161;
        *(v166 + 24) = v160;
      }

      else
      {
        v160 = 0;
        *v157 = 0;
        v157[1] = 0;
      }

      v72 = v164 + 1;
    }

    while (v164 + 1 != v162);
  }

  v108 = a3;
  if (v184)
  {
    v109 = 0;
    v110 = v183;
    v111 = v183 + 24 * v184;
    v156 = v111;
    while (*(v110 + 1) == *(v110 + 2) || v108 == 0)
    {
      ++v109;
LABEL_116:
      v110 += 24;
      if (v110 == v111)
      {
        goto LABEL_157;
      }
    }

    v113 = a2;
    while (1)
    {
      if (v109 >= 6)
      {
        v114 = *v113 - 24 * (v109 - 5) - 96;
      }

      else
      {
        v114 = *v113 - 16 * ((v109 + 1) & 0xF);
      }

      v115 = *(a5 + 16);
      if (!v115)
      {
        goto LABEL_131;
      }

      v116 = *a5;
      v117 = 0x9DDFEA08EB382D69 * ((8 * v114 - 0xAE502812AA7333) ^ HIDWORD(v114));
      v118 = 0x9DDFEA08EB382D69 * (HIDWORD(v114) ^ (v117 >> 47) ^ v117);
      v119 = (-348639895 * ((v118 >> 47) ^ v118)) & (v115 - 1);
      v120 = *(*a5 + 16 * v119);
      if (v120 != v114)
      {
        break;
      }

LABEL_130:
      if (v119 == v115)
      {
        goto LABEL_131;
      }

      v121 = *(v116 + 16 * v119 + 8);
LABEL_133:
      v165 = *(v42 + 16);
      v171[0] = v121;
      v172 = v121;
      v122 = mlir::Value::getDefiningOp(&v172);
      if (v122)
      {
        v124 = *(v122 + 16);
        v125 = (MPSGraphDelegateCompiler.precompilationDescriptor.modify(v122, v123) + 8);
      }

      else
      {
        v124 = *(v172 + 2);
        v125 = (v124 + 40);
      }

      v126 = *v125;
      *(v42 + 16) = v124;
      *(v42 + 24) = v126;
      v127 = mlir::Value::getLoc(v171);
      v128 = v171[0];
      v129 = *(v110 + 2);
      if (v129)
      {
        v130 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v129 + 8);
      }

      else
      {
        v130 = 0;
      }

      (*(*a4 + 120))(a4, v127, v128, v129, v130, a5);
      v131 = v171[0];
      v132 = *(a5 + 16);
      if (v132)
      {
        v133 = *a5;
        v134 = 0x9DDFEA08EB382D69 * ((8 * LODWORD(v171[0]) - 0xAE502812AA7333) ^ HIDWORD(v171[0]));
        v135 = 0x9DDFEA08EB382D69 * (HIDWORD(v171[0]) ^ (v134 >> 47) ^ v134);
        v136 = (-348639895 * ((v135 >> 47) ^ v135)) & (v132 - 1);
        v137 = *(*a5 + 16 * v136);
        if (v137 == v171[0])
        {
          v42 = v166;
LABEL_142:
          if (v136 != v132)
          {
            v131 = *(v133 + 16 * v136 + 8);
          }
        }

        else
        {
          v140 = 1;
          v42 = v166;
          while (v137 != -4096)
          {
            v141 = v136 + v140++;
            v136 = v141 & (v132 - 1);
            v137 = *(v133 + 16 * v136);
            if (v137 == v171[0])
            {
              goto LABEL_142;
            }
          }
        }

        v172 = v114;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, &v172) = v131;
        if (!v42)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v172 = v114;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, &v172) = v131;
        v42 = v166;
      }

      if (v165)
      {
        *(v42 + 16) = v165;
      }

      else
      {
        *(v42 + 16) = 0;
        *(v42 + 24) = 0;
      }

LABEL_124:
      if (++v113 == v162)
      {
        v108 = a3;
        v111 = v156;
        ++v109;
        goto LABEL_116;
      }
    }

    v138 = 1;
    while (v120 != -4096)
    {
      v139 = v119 + v138++;
      v119 = v139 & (v115 - 1);
      v120 = *(v116 + 16 * v119);
      if (v120 == v114)
      {
        goto LABEL_130;
      }
    }

LABEL_131:
    v121 = 0;
    goto LABEL_133;
  }

LABEL_157:
  v142 = mlir::TargetLegalizerInterface::getBodyBlock(v170);
  v144 = mlir::Block::getTerminator(v142, v143);
  if ((*(v144 + 46) & 0x80) != 0)
  {
    v145 = *(v144 + 68);
    if (v145 && v179 != 0)
    {
      v147 = v178;
      v148 = (*(v144 + 72) + 24);
      v149 = v145 - 1;
      v150 = 8 * v179 - 8;
      do
      {
        v152 = *v148;
        v148 += 4;
        v151 = v152;
        v153 = *v147++;
        *(v151 + 8) = *(v151 + 8) & 7 | v153;
        v29 = v149-- != 0;
        if (!v29)
        {
          break;
        }

        v154 = v150;
        v150 -= 8;
      }

      while (v154);
    }
  }

  Context = mlir::Attribute::getContext((v170[0] + 24));
  mlir::ValueRange::ValueRange(&v172, v181[0], LODWORD(v181[1]));
  mlir::ValueRange::ValueRange(v171, v178, v179);
  v37 = mlir::FunctionType::get(Context, v172, v173, v171[0], v171[1]);
  if (v175 != v177)
  {
    free(v175);
  }

  if (v178 != v180)
  {
    free(v178);
  }

  if (v181[0] != v182)
  {
    free(v181[0]);
  }

LABEL_31:
  if (v183 != v185)
  {
    free(v183);
  }

  if (v186 != v188)
  {
    free(v186);
  }

  return v37;
}

BOOL mlir::anonymous namespace::checkAndCollectANEArgs(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v183[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = *a4;
  }

  else
  {
    v7 = 0;
  }

  v9 = *(a2 + 48);
  v8 = *(a2 + 56);
  if (v9 == v8)
  {
    return 1;
  }

  v10 = 0;
  v11 = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  v12 = &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id;
  v13 = &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id;
  while (1)
  {
    v30 = (*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v30 + 136) != v11)
    {
      v30 = 0;
    }

    v163 = v30;
    if (!v30)
    {
      v164 = "Argument was not memref: ";
      v167 = 259;
      mlir::Operation::emitOpError(a1, &v164, &RawStringData);
      if (RawStringData)
      {
        v104 = &v181;
        mlir::DiagnosticArgument::DiagnosticArgument(&v181, v163);
        v105 = v171;
        if (v172 >= v173)
        {
          if (v171 <= &v181 && v171 + 24 * v172 > &v181)
          {
            v145 = &v181 - v171;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
            v105 = v171;
            v104 = v171 + v145;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
            v105 = v171;
          }
        }

        v106 = &v105[24 * v172];
        v107 = *v104;
        *(v106 + 2) = *(v104 + 2);
        *v106 = v107;
        ++v172;
        if (RawStringData)
        {
          mlir::InFlightDiagnostic::report(&RawStringData);
        }
      }

      if (v180 == 1)
      {
        if (v179 != &v180)
        {
          free(v179);
        }

        v108 = __p;
        if (__p)
        {
          v109 = v178;
          v110 = __p;
          if (v178 != __p)
          {
            do
            {
              v109 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v109 - 1);
            }

            while (v109 != v108);
            v110 = __p;
          }

          v178 = v108;
          operator delete(v110);
        }

        v111 = v175;
        if (v175)
        {
          v112 = v176;
          v113 = v175;
          if (v176 == v175)
          {
            goto LABEL_148;
          }

          do
          {
            v115 = *--v112;
            v114 = v115;
            *v112 = 0;
            if (v115)
            {
              operator delete[](v114);
            }
          }

          while (v112 != v111);
          goto LABEL_147;
        }

LABEL_149:
        if (v171 != v174)
        {
          free(v171);
        }
      }

      return 0;
    }

    mlir::ArrayAttr::getValue(&v163);
    if (v31 != 4)
    {
      mlir::ArrayAttr::getValue(&v163);
      if (v32 != 5)
      {
        break;
      }
    }

    {
      return 0;
    }

    if (!v7)
    {
      goto LABEL_19;
    }

    v162 = *(*(v7 + 72) + 32 * v10 + 24);
    v161 = *(*(mlir::Value::getDefiningOp(&v162) + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v161);
    if (!DefiningOp)
    {
      goto LABEL_19;
    }

    v34 = *(*(DefiningOp + 48) + 16);
    if (v34 != v12)
    {
      if (v34 != v13)
      {
        goto LABEL_19;
      }

      v35 = *(DefiningOp + 72);
      v36 = *(v35 + 24);
      v159 = *(v35 + 56);
      v160 = v36;
      v37 = mlir::Value::getDefiningOp(&v159);
      if (v37)
      {
        v38 = *(*(v37 + 48) + 16);
        v39 = v38 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id;
        if (v38 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
        {
          v40 = v37;
        }

        else
        {
          v40 = 0;
        }

        v158 = v40;
        if (!v39)
        {
          goto LABEL_129;
        }

        AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v158);
        mlir::DenseIntElementsAttr::classof(AsAttribute);
        v42 = mlir::Value::getDefiningOp(&v160);
        if (v42 && *(*(v42 + 48) + 16) == v12)
        {
          v157 = *(*(*(v42 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
          mlir::ArrayAttr::getValue(&v157);
          v44 = v43;
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v157);
          v169 = v45;
          CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&RawStringData);
          RawStringData = &v170;
          v169 = 0x300000000;
          v164 = v166;
          v165 = 0x100000000;
          v46 = *mlir::AffineMap::getResults(&CallableForCallee);
          if (v46 && (v181 = v46, mlir::arith::FastMathFlagsAttr::getValue(&v181) < 5))
          {
            v47 = v46;
          }

          else
          {
            v47 = 0;
          }

          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v181, v47);
          v155 = v181;
          LHS = mlir::AffineBinaryOpExpr::getLHS(&v155);
          if (LHS && (v49 = LHS, v181 = LHS, mlir::arith::FastMathFlagsAttr::getValue(&v181) < 5))
          {
            v50 = v49;
          }

          else
          {
            v50 = 0;
          }

          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v181, v50);
          v51 = v181;
          RHS = mlir::AffineBinaryOpExpr::getRHS(&v155);
          if (RHS && (v53 = RHS, v181 = RHS, mlir::arith::FastMathFlagsAttr::getValue(&v181) < 5))
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }

          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v181, v54);
          v154 = v181;
          if (v181 && mlir::arith::FastMathFlagsAttr::getValue(&v154) == 2)
          {
            v55 = mlir::AffineBinaryOpExpr::getRHS(&v154);
            v56 = v165;
            if (v165 >= HIDWORD(v165))
            {
              v102 = v55;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v166, v165 + 1, 8);
              v55 = v102;
              v56 = v165;
            }

            *(v164 + v56) = v55;
            LODWORD(v165) = v165 + 1;
            v155 = v51;
          }

          if (v44 - 1 >= 1)
          {
            do
            {
              v57 = mlir::AffineBinaryOpExpr::getLHS(&v155);
              if (v57 && (v58 = v57, v181 = v57, mlir::arith::FastMathFlagsAttr::getValue(&v181) < 5))
              {
                v59 = v58;
              }

              else
              {
                v59 = 0;
              }

              mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v181, v59);
              v60 = v181;
              v61 = mlir::AffineBinaryOpExpr::getRHS(&v155);
              if (v61 && (v62 = v61, v181 = v61, mlir::arith::FastMathFlagsAttr::getValue(&v181) < 5))
              {
                v63 = v62;
              }

              else
              {
                v63 = 0;
              }

              mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v181, v63);
              v154 = v181;
              if (v181 && mlir::arith::FastMathFlagsAttr::getValue(&v154) == 1)
              {
                AffineConstantExpr = mlir::AffineBinaryOpExpr::getRHS(&v154);
              }

              else
              {
                Context = mlir::Attribute::getContext(&v163);
                AffineConstantExpr = mlir::getAffineConstantExpr(1, Context, v66);
              }

              v67 = v169;
              if (v169 >= HIDWORD(v169))
              {
                v68 = AffineConstantExpr;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&RawStringData, &v170, v169 + 1, 8);
                AffineConstantExpr = v68;
                v67 = v169;
              }

              *(RawStringData + v67) = AffineConstantExpr;
              LODWORD(v169) = v169 + 1;
              v155 = v60;
              --v44;
            }

            while (v44 > 1);
          }

          v69 = mlir::AffineBinaryOpExpr::getRHS(&v155);
          v70 = v169;
          if (v169 >= HIDWORD(v169))
          {
            v100 = v69;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&RawStringData, &v170, v169 + 1, 8);
            v69 = v100;
            v70 = v169;
          }

          *(RawStringData + v70) = v69;
          LODWORD(v169) = v169 + 1;
          if (v165 == 1)
          {
            v71 = *v164;
            if (*v164 && (v181 = *v164, mlir::arith::FastMathFlagsAttr::getValue(&v181) == 5))
            {
              v72 = v71;
            }

            else
            {
              v72 = 0;
            }

            v74 = mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v181, v72);
            v73 = mlir::AffineBinaryOpExpr::getLHS(v74);
          }

          else
          {
            v73 = 1;
          }

          v181 = v183;
          v182 = 0x100000000;
          v75 = mlir::Attribute::getContext(&v163);
          AffineDimExpr = mlir::getAffineDimExpr(0, v75, v76);
          v152 = mlir::AffineExpr::operator*(&AffineDimExpr, *(RawStringData + 2));
          Value = mlir::ArrayAttr::getValue(&v163);
          v153 = mlir::AffineExpr::operator*(&v152, *(Value + 8) / v73);
          v78 = mlir::Attribute::getContext(&v163);
          v152 = mlir::getAffineDimExpr(1, v78, v79);
          if (v165 == 1)
          {
            v152 = mlir::AffineExpr::floorDiv(&v152, *v164);
          }

          v80 = mlir::AffineExpr::operator*(&v152, *(RawStringData + 2));
          v153 = mlir::AffineExpr::operator+(&v153, v80);
          v81 = mlir::Attribute::getContext(&v163);
          AffineDimExpr = mlir::getAffineDimExpr(2, v81, v82);
          v83 = mlir::AffineExpr::operator*(&AffineDimExpr, *(RawStringData + 1));
          v153 = mlir::AffineExpr::operator+(&v153, v83);
          v84 = mlir::Attribute::getContext(&v163);
          AffineDimExpr = mlir::getAffineDimExpr(3, v84, v85);
          v86 = mlir::AffineExpr::operator*(&AffineDimExpr, *RawStringData);
          v87 = mlir::AffineExpr::operator+(&v153, v86);
          v153 = v87;
          if (v165 == 1)
          {
            v88 = mlir::Attribute::getContext(&v163);
            AffineDimExpr = mlir::getAffineDimExpr(1, v88, v89);
            v90 = mlir::AffineExpr::operator%(&AffineDimExpr, *v164);
            v87 = mlir::AffineExpr::operator+(&v153, v90);
            v153 = v87;
          }

          v91 = v182;
          if (v182 >= HIDWORD(v182))
          {
            v101 = v87;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v181, v183, v182 + 1, 8);
            v87 = v101;
            v91 = v182;
          }

          v181[v91] = v87;
          LODWORD(v182) = v182 + 1;
          v92 = v182;
          v93 = v181;
          v94 = mlir::Attribute::getContext(&v163);
          v95 = mlir::AffineMap::get(4, 0, v93, v92, v94);
          v96 = mlir::ArrayAttr::getValue(&v163);
          v98 = v97;
          v99 = mlir::AffineBinaryOpExpr::getRHS(&v163);
          *(*a3 + 24 * *(*v9 + 24) + 8) = mlir::MemRefType::get(v96, v98, v99, v95, 0);
          if (v181 != v183)
          {
            free(v181);
          }

          v12 = &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id;
          v13 = &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id;
          if (v164 != v166)
          {
            free(v164);
          }

          if (RawStringData != &v170)
          {
            free(RawStringData);
          }

          goto LABEL_8;
        }

LABEL_19:
        {
          goto LABEL_8;
        }

        if (v163 == CanonicalMemRefType)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      v158 = 0;
LABEL_129:
      v164 = "Reshape pattern not present: ";
      v167 = 259;
      mlir::Operation::emitOpError(a1, &v164, &RawStringData);
      if (RawStringData)
      {
        v135 = &v181;
        mlir::DiagnosticArgument::DiagnosticArgument(&v181, v163);
        v136 = v171;
        if (v172 >= v173)
        {
          if (v171 <= &v181 && v171 + 24 * v172 > &v181)
          {
            v148 = &v181 - v171;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
            v136 = v171;
            v135 = v171 + v148;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
            v136 = v171;
          }
        }

        v137 = &v136[24 * v172];
        v138 = *v135;
        *(v137 + 2) = *(v135 + 2);
        *v137 = v138;
        ++v172;
        if (RawStringData)
        {
          mlir::InFlightDiagnostic::report(&RawStringData);
        }
      }

      if (v180 == 1)
      {
        if (v179 != &v180)
        {
          free(v179);
        }

        v139 = __p;
        if (__p)
        {
          v140 = v178;
          v141 = __p;
          if (v178 != __p)
          {
            do
            {
              v140 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v140 - 1);
            }

            while (v140 != v139);
            v141 = __p;
          }

          v178 = v139;
          operator delete(v141);
        }

        v111 = v175;
        if (v175)
        {
          v142 = v176;
          v113 = v175;
          if (v176 == v175)
          {
LABEL_148:
            v176 = v111;
            operator delete(v113);
            goto LABEL_149;
          }

          do
          {
            v144 = *--v142;
            v143 = v144;
            *v142 = 0;
            if (v144)
            {
              operator delete[](v143);
            }
          }

          while (v142 != v111);
LABEL_147:
          v113 = v175;
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      return 0;
    }

    v164 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v164);
    v169 = v14;
    v149 = mlir::CallOpInterface::getCallableForCallee(&RawStringData);
    v150 = v10;
    v15 = a1;
    v16 = v7;
    v17 = v8;
    v18 = v11;
    v19 = a3;
    v20 = v12;
    v21 = mlir::ArrayAttr::getValue(&v163);
    v22 = v9;
    v23 = v13;
    v25 = v24;
    v26 = mlir::AffineBinaryOpExpr::getRHS(&v163);
    v27 = v21;
    v12 = v20;
    a3 = v19;
    v11 = v18;
    v8 = v17;
    v7 = v16;
    a1 = v15;
    v10 = v150;
    v28 = v25;
    v13 = v23;
    v9 = v22;
    CanonicalMemRefType = mlir::MemRefType::get(v27, v28, v26, v149, 0);
LABEL_7:
    *(*a3 + 24 * *(*v9 + 24) + 8) = CanonicalMemRefType;
LABEL_8:
    ++v10;
    v9 += 8;
    if (v9 == v8)
    {
      return 1;
    }
  }

  v164 = "Region input ";
  v167 = 259;
  mlir::Operation::emitOpError(a1, &v164, &RawStringData);
  if (RawStringData)
  {
    v116 = *(*v9 + 24);
    LODWORD(v181) = 5;
    v182 = v116;
    v117 = &v181;
    v118 = v171;
    if (v172 >= v173)
    {
      if (v171 <= &v181 && v171 + 24 * v172 > &v181)
      {
        v146 = &v181 - v171;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
        v118 = v171;
        v117 = v171 + v146;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
        v117 = &v181;
        v118 = v171;
      }
    }

    v119 = &v118[24 * v172];
    v120 = *v117;
    *(v119 + 2) = *(v117 + 2);
    *v119 = v120;
    v121 = ++v172;
    if (RawStringData)
    {
      LODWORD(v181) = 3;
      v182 = " was not rank-4 or rank-5";
      v183[0] = 25;
      v122 = &v181;
      v123 = v171;
      if (v121 >= v173)
      {
        if (v171 <= &v181 && v171 + 24 * v121 > &v181)
        {
          v147 = &v181 - v171;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v121 + 1, 24);
          v123 = v171;
          v122 = v171 + v147;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v121 + 1, 24);
          v122 = &v181;
          v123 = v171;
        }
      }

      v124 = &v123[24 * v172];
      v125 = *v122;
      *(v124 + 2) = *(v122 + 2);
      *v124 = v125;
      ++v172;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
  v126 = result;
  if (RawStringData)
  {
    mlir::InFlightDiagnostic::report(&RawStringData);
    result = v126;
  }

  if (v180 == 1)
  {
    if (v179 != &v180)
    {
      free(v179);
      result = v126;
    }

    v127 = __p;
    if (__p)
    {
      v128 = v178;
      v129 = __p;
      if (v178 != __p)
      {
        do
        {
          v128 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v128 - 1);
        }

        while (v128 != v127);
        v129 = __p;
      }

      v178 = v127;
      operator delete(v129);
      result = v126;
    }

    v130 = v175;
    if (v175)
    {
      v131 = v176;
      v132 = v175;
      if (v176 != v175)
      {
        do
        {
          v134 = *--v131;
          v133 = v134;
          *v131 = 0;
          if (v134)
          {
            operator delete[](v133);
          }
        }

        while (v131 != v130);
        v132 = v175;
      }

      v176 = v130;
      operator delete(v132);
      result = v126;
    }

    if (v171 != v174)
    {
      free(v171);
      return v126;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(v21, v23, v22);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::ValueRange::ValueRange(v23, *a3, *(a3 + 8));
  v15 = *a4;
  v16 = *a5;
  mlir::ValueRange::ValueRange(v22, *a6, *(a6 + 8));
  mlir::placement::RegionCall::build(a1, v21, v23[0], v23[1], v15, v16, v22[0], v22[1]);
  v17 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v18;
}

uint64_t mlir::legalizeA12(mlir::SymbolRefAttr *InterfaceFor, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = InterfaceFor;
  v191[12] = *MEMORY[0x1E69E9840];
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v169 = a3;
  v170 = a4;
  v173[0] = v10;
  v173[1] = InterfaceFor;
  BodyBlock = mlir::TargetLegalizerInterface::getBodyBlock(v173);
  v189 = v191;
  v190 = 0x400000000;
  v186 = v188;
  v187 = 0x400000000;
  v184[0] = mlir::CallOpInterface::getArgOperands(v173);
  Inputs = mlir::FunctionType::getInputs(v184);
  if (v13)
  {
    v14 = *(BodyBlock + 6);
    v15 = *(BodyBlock + 7);
    if (v14 != v15)
    {
      v16 = v14 + 8;
      v17 = 8 * v13 - 8;
      do
      {
        v18 = (*(*(v16 - 8) + 8) & 0xFFFFFFFFFFFFFFF8);
        v184[0] = *(v16 - 8);
        v184[1] = v18;
        v185[0] = *Inputs;
        if (v190 >= HIDWORD(v190))
        {
          v20 = a2;
          v21 = Inputs;
          llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(&v189, v184);
          Inputs = v21;
          a2 = v20;
          if (!v17)
          {
            break;
          }
        }

        else
        {
          v19 = &v189[24 * v190];
          *v19 = *v184;
          *(v19 + 2) = v185[0];
          LODWORD(v190) = v190 + 1;
          if (!v17)
          {
            break;
          }
        }

        ++Inputs;
        v17 -= 8;
        v46 = v16 == v15;
        v16 += 8;
      }

      while (!v46);
    }
  }

  v184[0] = mlir::CallOpInterface::getArgOperands(v173);
  Results = mlir::FunctionType::getResults(v184);
  v24 = v23;
  Terminator = mlir::Block::getTerminator(BodyBlock, v23);
  if ((*(Terminator + 46) & 0x80) != 0)
  {
    if (v24)
    {
      v26 = *(Terminator + 68);
      if (v26)
      {
        v27 = *(Terminator + 72) + 24;
        v28 = v26 - 1;
        v29 = 8 * v24 - 8;
        do
        {
          v30 = (*(*v27 + 8) & 0xFFFFFFFFFFFFFFF8);
          v184[0] = *v27;
          v184[1] = v30;
          v185[0] = *Results;
          if (v187 >= HIDWORD(v187))
          {
            llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(&v186, v184);
          }

          else
          {
            v31 = v186 + 24 * v187;
            *v31 = *v184;
            *(v31 + 2) = v185[0];
            LODWORD(v187) = v187 + 1;
          }

          v32 = v28-- != 0;
          v33 = v32;
          if (!v29)
          {
            break;
          }

          ++Results;
          v27 += 32;
          v29 -= 8;
        }

        while ((v33 & 1) != 0);
      }
    }
  }

  if (!v34)
  {
    v35 = llvm::errs(v34);
    v36 = v35[4];
    if (v35[3] - v36 <= 0x1DuLL)
    {
      v37 = "checkAndCollectANEArgs failed\n";
      v38 = 30;
LABEL_28:
      llvm::raw_ostream::write(v35, v37, v38);
      v39 = 0;
      goto LABEL_31;
    }

    v39 = 0;
    qmemcpy(v36, "checkAndCollectANEArgs failed\n", 30);
    v40 = v35[4] + 30;
LABEL_30:
    v35[4] = v40;
    goto LABEL_31;
  }

  if (!v42)
  {
    v35 = llvm::errs(v42);
    v43 = v35[4];
    if (v35[3] - v43 <= 0x20uLL)
    {
      v37 = "checkAndCollectANEResults failed\n";
      v38 = 33;
      goto LABEL_28;
    }

    v39 = 0;
    qmemcpy(v43, "checkAndCollectANEResults failed\n", 33);
    v40 = v35[4] + 33;
    goto LABEL_30;
  }

  if (!(v190 | v187))
  {
    v39 = mlir::minimalLegalize(v173[0], v169, v170, a6);
    goto LABEL_31;
  }

  if (!v190)
  {
LABEL_63:
    v167 = a2;
    v184[0] = v185;
    v184[1] = 0x400000000;
    v60 = mlir::TargetLegalizerInterface::getBodyBlock(v173);
    v61 = *(v60 + 48);
    v62 = *(v60 + 56);
    if (v61 != v62)
    {
      v63 = v184[1];
      do
      {
        v64 = *&v189[24 * *(*v61 + 24) + 8];
        if (v63 >= HIDWORD(v184[1]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v184, v185, v63 + 1, 8);
          v63 = v184[1];
        }

        *(v184[0] + v63) = v64;
        v63 = ++LODWORD(v184[1]);
        v61 += 8;
      }

      while (v61 != v62);
    }

    v181 = v183;
    v182 = 0x400000000;
    v65 = mlir::TargetLegalizerInterface::getBodyBlock(v173);
    v67 = mlir::Block::getTerminator(v65, v66);
    if ((*(v67 + 46) & 0x80) != 0)
    {
      v69 = *(v67 + 68);
      if (v69)
      {
        v70 = v182;
        v71 = 8;
        do
        {
          v72 = *(v186 + v71);
          if (v70 >= HIDWORD(v182))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v181, v183, v70 + 1, 8);
            v70 = v182;
          }

          *(v181 + v70) = v72;
          v70 = v182 + 1;
          LODWORD(v182) = v182 + 1;
          v71 += 24;
          --v69;
        }

        while (v69);
      }
    }

    v178 = v180;
    v179 = 0x400000000;
    v166 = &v169[v170];
    if (v170)
    {
      v161 = *(v167 + 24);
      v73 = v169;
      v163 = *(v167 + 16);
      do
      {
        v74 = *v73;
        v75 = *(*v73 + 16);
        v76 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*v73, v68);
        *(v167 + 16) = v75;
        *(v167 + 24) = v76;
        if ((*(v74 + 46) & 0x80) != 0)
        {
          v78 = *(v74 + 72);
          v79 = *(v74 + 68);
          v175 = v177;
          v176 = 0x400000000;
          v77 = v177;
          if (v79 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v175, v177, v79, 8);
            v80 = v176;
            goto LABEL_83;
          }

          if (v79)
          {
            v80 = 0;
LABEL_83:
            v81 = 0;
            v82 = (v175 + 8 * v80);
            do
            {
              v83 = *(v78 + 32 * v81 + 24);
              v84 = *(a6 + 16);
              if (v84)
              {
                v85 = *a6;
                v86 = 0x9DDFEA08EB382D69 * ((8 * *(v78 + 32 * v81 + 24) - 0xAE502812AA7333) ^ HIDWORD(*(v78 + 32 * v81 + 24)));
                v87 = 0x9DDFEA08EB382D69 * (HIDWORD(v83) ^ (v86 >> 47) ^ v86);
                v88 = (-348639895 * ((v87 >> 47) ^ v87)) & (v84 - 1);
                v89 = *(*a6 + 16 * v88);
                if (v89 == v83)
                {
LABEL_87:
                  if (v88 != v84)
                  {
                    v83 = *(v85 + 16 * v88 + 8);
                  }
                }

                else
                {
                  v90 = 1;
                  while (v89 != -4096)
                  {
                    v91 = v88 + v90++;
                    v88 = v91 & (v84 - 1);
                    v89 = *(v85 + 16 * v88);
                    if (v89 == v83)
                    {
                      goto LABEL_87;
                    }
                  }
                }
              }

              *v82++ = v83;
              ++v81;
            }

            while (v81 != v79);
            v92 = v176;
            goto LABEL_94;
          }

          v92 = 0;
        }

        else
        {
          LODWORD(v79) = 0;
          v92 = 0;
          v175 = v177;
          HIDWORD(v176) = 4;
        }

LABEL_94:
        LODWORD(v176) = v92 + v79;
        v93 = *(v74 + 24);
        v174[0] = mlir::SymbolRefAttr::get(v173[0], v77);
        v171 = mlir::placement::RegionTypeAttr::get(*v167, 1u);
        v94 = mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(v167, v93, &v181, v174, &v171, &v175);
        v172 = v94;
        v95 = v179;
        if (v179 >= HIDWORD(v179))
        {
          v108 = v94;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v180, v179 + 1, 8);
          v94 = v108;
          v95 = v179;
        }

        *(v178 + v95) = v94;
        LODWORD(v179) = v179 + 1;
        v96 = *(v74 + 36);
        if (v96)
        {
          v97 = v74 - 16;
        }

        else
        {
          v97 = 0;
        }

        ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v172, 0);
        v99 = ODSResultIndexAndLength;
        if (*(v172 + 36))
        {
          NextResultAtOffset = v172 - 16;
        }

        else
        {
          NextResultAtOffset = 0;
        }

        v101 = ODSResultIndexAndLength;
        if (ODSResultIndexAndLength)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
        }

        if (v96)
        {
          v102 = (HIDWORD(v99) + v99);
          if (v102 != v99)
          {
            v103 = 0;
            v104 = ~v101 + v102;
            v105 = v96 - 1;
            do
            {
              v106 = mlir::detail::OpResultImpl::getNextResultAtOffset(v97, v103);
              v107 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v103);
              v174[0] = v106;
              *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, v174) = v107;
              if (v105 == v103)
              {
                break;
              }

              v46 = v104 == v103++;
            }

            while (!v46);
          }
        }

        if (v175 != v177)
        {
          free(v175);
        }

        if (v163)
        {
          *(v167 + 16) = v163;
          *(v167 + 24) = v161;
        }

        else
        {
          v161 = 0;
          *(v167 + 16) = 0;
          *(v167 + 24) = 0;
        }

        ++v73;
      }

      while (v73 != v166);
    }

    v109 = v167;
    if (!v187)
    {
LABEL_161:
      v144 = mlir::TargetLegalizerInterface::getBodyBlock(v173);
      v146 = mlir::Block::getTerminator(v144, v145);
      if ((*(v146 + 46) & 0x80) != 0)
      {
        v147 = *(v146 + 68);
        if (v147 && v182 != 0)
        {
          v149 = v181;
          v150 = (*(v146 + 72) + 24);
          v151 = v147 - 1;
          v152 = 8 * v182 - 8;
          do
          {
            v154 = *v150;
            v150 += 4;
            v153 = v154;
            v155 = *v149++;
            *(v153 + 8) = *(v153 + 8) & 7 | v155;
            v32 = v151-- != 0;
            if (!v32)
            {
              break;
            }

            v156 = v152;
            v152 -= 8;
          }

          while (v156);
        }
      }

      Context = mlir::Attribute::getContext((v173[0] + 24));
      mlir::ValueRange::ValueRange(&v175, v184[0], LODWORD(v184[1]));
      mlir::ValueRange::ValueRange(v174, v181, v182);
      v39 = mlir::FunctionType::get(Context, v175, v176, v174[0], v174[1]);
LABEL_172:
      if (v178 != v180)
      {
        free(v178);
      }

      if (v181 != v183)
      {
        free(v181);
      }

      if (v184[0] != v185)
      {
        free(v184[0]);
      }

      goto LABEL_31;
    }

    v164 = 0;
    v110 = v186;
    v158 = v186 + 24 * v187;
    while (*(v110 + 1) == *(v110 + 2) || v170 == 0)
    {
      v112 = v164 + 1;
LABEL_160:
      v110 += 24;
      v164 = v112;
      if (v110 == v158)
      {
        goto LABEL_161;
      }
    }

    v159 = *(v109 + 24);
    v160 = *(v109 + 16);
    v113 = v169;
    while (1)
    {
      v114 = v164 >= 6 ? *v113 - 24 * (v164 - 5) - 96 : *v113 - 16 * ((v164 + 1) & 0xF);
      v115 = *(a6 + 16);
      if (!v115)
      {
        break;
      }

      v116 = *a6;
      v117 = 0x9DDFEA08EB382D69 * ((8 * v114 - 0xAE502812AA7333) ^ HIDWORD(v114));
      v118 = 0x9DDFEA08EB382D69 * (HIDWORD(v114) ^ (v117 >> 47) ^ v117);
      v119 = (-348639895 * ((v118 >> 47) ^ v118)) & (v115 - 1);
      v120 = *(*a6 + 16 * v119);
      if (v120 == v114)
      {
LABEL_131:
        if (v119 == v115)
        {
          break;
        }

        v121 = *(v116 + 16 * v119 + 8);
      }

      else
      {
        v140 = 1;
        while (v120 != -4096)
        {
          v141 = v119 + v140++;
          v119 = v141 & (v115 - 1);
          v120 = *(v116 + 16 * v119);
          if (v120 == v114)
          {
            goto LABEL_131;
          }
        }

        v121 = 0;
      }

LABEL_134:
      v174[0] = v121;
      v175 = v121;
      DefiningOp = mlir::Value::getDefiningOp(&v175);
      if (DefiningOp)
      {
        v124 = *(DefiningOp + 16);
        v125 = (MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v123) + 8);
      }

      else
      {
        v124 = *(v175 + 2);
        v125 = (v124 + 40);
      }

      v126 = *v125;
      *(v167 + 16) = v124;
      *(v167 + 24) = v126;
      v109 = v167;
      Loc = mlir::Value::getLoc(v174);
      v128 = v174[0];
      v129 = v110;
      v130 = *(v110 + 2);
      if (v130)
      {
        v131 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v130 + 8);
      }

      else
      {
        v131 = 0;
      }

      v132 = (*(*a5 + 24))(a5, v167, Loc, v128, v130, v131, a6);
      v110 = v129;
      if (v132)
      {
        v133 = v174[0];
        v134 = *(a6 + 16);
        if (v134)
        {
          v135 = *a6;
          v136 = 0x9DDFEA08EB382D69 * ((8 * LODWORD(v174[0]) - 0xAE502812AA7333) ^ HIDWORD(v174[0]));
          v137 = 0x9DDFEA08EB382D69 * (HIDWORD(v174[0]) ^ (v136 >> 47) ^ v136);
          v138 = (-348639895 * ((v137 >> 47) ^ v137)) & (v134 - 1);
          v139 = *(*a6 + 16 * v138);
          if (v139 == v174[0])
          {
LABEL_143:
            if (v138 != v134)
            {
              v133 = *(v135 + 16 * v138 + 8);
            }
          }

          else
          {
            v142 = 1;
            while (v139 != -4096)
            {
              v143 = v138 + v142++;
              v138 = v143 & (v134 - 1);
              v139 = *(v135 + 16 * v138);
              v109 = v167;
              v110 = v129;
              if (v139 == v174[0])
              {
                goto LABEL_143;
              }
            }

            v109 = v167;
            v110 = v129;
          }
        }

        v175 = v114;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &v175) = v133;
      }

      if (v160)
      {
        *(v109 + 16) = v160;
        *(v109 + 24) = v159;
        if ((v132 & 1) == 0)
        {
LABEL_171:
          v39 = 0;
          goto LABEL_172;
        }
      }

      else
      {
        v159 = 0;
        *(v109 + 16) = 0;
        *(v109 + 24) = 0;
        if ((v132 & 1) == 0)
        {
          goto LABEL_171;
        }
      }

      if (++v113 == v166)
      {
        v112 = v164 + 1;
        goto LABEL_160;
      }
    }

    v121 = 0;
    goto LABEL_134;
  }

  v44 = 0;
  v45 = v189;
  v162 = &v189[24 * v190];
  while (1)
  {
    v46 = *(v45 + 1) == *(v45 + 2) || v170 == 0;
    if (!v46)
    {
      break;
    }

LABEL_43:
    ++v44;
    v45 += 24;
    if (v45 == v162)
    {
      goto LABEL_63;
    }
  }

  v47 = *(a2 + 16);
  v165 = *(a2 + 24);
  v48 = 8 * v170;
  v49 = v169;
  while (1)
  {
    v50 = a2;
    v181 = *(*(*v49 + 72) + 32 * v44 + 24);
    v184[0] = v181;
    v51 = mlir::Value::getDefiningOp(v184);
    if (v51)
    {
      v53 = *(v51 + 16);
      v54 = (MPSGraphDelegateCompiler.precompilationDescriptor.modify(v51, v52) + 8);
    }

    else
    {
      v53 = *(v184[0] + 2);
      v54 = (v53 + 40);
    }

    v55 = *v54;
    *(v50 + 16) = v53;
    *(v50 + 24) = v55;
    a2 = v50;
    v56 = mlir::Value::getLoc(&v181);
    v57 = v181;
    v58 = *(v45 + 1);
    v59 = v58 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8) : 0;
    if (((*(*a5 + 24))(a5, a2, v56, v57, v58, v59, a6) & 1) == 0)
    {
      break;
    }

    if (v47)
    {
      *(a2 + 16) = v47;
      *(a2 + 24) = v165;
    }

    else
    {
      v165 = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
    }

    ++v49;
    v48 -= 8;
    if (!v48)
    {
      goto LABEL_43;
    }
  }

  v39 = 0;
  if (v47)
  {
    *(a2 + 16) = v47;
    *(a2 + 24) = v165;
  }

  else
  {
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

LABEL_31:
  if (v186 != v188)
  {
    free(v186);
  }

  if (v189 != v191)
  {
    free(v189);
  }

  return v39;
}

uint64_t mlir::anec::IOAttributes::toMLIRAttribute(mlir::anec::IOAttributes *this, mlir::MLIRContext *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  *&v29[0] = "name";
  LOWORD(v30) = 259;
  v4 = mlir::StringAttr::get(a2, v29);
  v27 = 260;
  v26[0] = this;
  v5 = mlir::StringAttr::get(a2, v26);
  mlir::NamedAttribute::NamedAttribute(&v28, v4, v5);
  v26[0] = a2;
  memset(&v26[1], 0, 24);
  *&v29[0] = "elementType";
  LOWORD(v30) = 259;
  v6 = mlir::StringAttr::get(a2, v29);
  v7 = mlir::TypeAttr::get(*(this + 3));
  mlir::NamedAttribute::NamedAttribute(&v25, v6, v7);
  *&v29[0] = "shape";
  LOWORD(v30) = 259;
  v8 = mlir::StringAttr::get(a2, v29);
  *&v34 = *(this + 10);
  IntegerType = mlir::Builder::getIntegerType(v26, 64, 1);
  v10 = mlir::RankedTensorType::get(&v34, 1, IntegerType, 0);
  if (v10)
  {
    v11 = v10;
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = mlir::DenseElementsAttr::getFromRawBuffer(v10, v12, *(this + 4), 8 * *(this + 10), 8, 1, 1);
  mlir::NamedAttribute::NamedAttribute(&v24, v8, v13);
  *&v29[0] = "strides";
  LOWORD(v30) = 259;
  v14 = mlir::StringAttr::get(a2, v29);
  *&v33 = *(this + 22);
  v15 = mlir::Builder::getIntegerType(v26, 64, 1);
  v16 = mlir::RankedTensorType::get(&v33, 1, v15, 0);
  if (v16)
  {
    v17 = v16;
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
    v16 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = mlir::DenseElementsAttr::getFromRawBuffer(v16, v18, *(this + 10), 8 * *(this + 22), 8, 1, 1);
  mlir::NamedAttribute::NamedAttribute(&v34, v14, v19);
  *&v29[0] = "interleave";
  LOWORD(v30) = 259;
  v20 = mlir::StringAttr::get(a2, v29);
  v21 = mlir::Builder::getIntegerType(v26, 64, 0);
  v22 = mlir::IntegerAttr::get(v21, *(this + 16));
  mlir::NamedAttribute::NamedAttribute(&v33, v20, v22);
  v29[0] = v28;
  v29[1] = v25;
  v30 = v24;
  v31 = v34;
  v32 = v33;
  return mlir::DictionaryAttr::get(a2, v29, 5);
}

uint64_t mlir::anonymous namespace::checkStrideAndInterleave(uint64_t a1, uint64_t a2)
{
  v101[4] = *MEMORY[0x1E69E9840];
  v83 = 0;
  v84 = a2;
  v99 = v101;
  v100 = 0x400000000;
  if ((mlir::getStridesAndOffset(a2, &v99, &v83) & 1) == 0)
  {
    v81[0] = "Unable to get strides for type: ";
    v82 = 259;
    mlir::Operation::emitOpError(a1, v81, &v87);
    if (v87)
    {
      v16 = &v85;
      mlir::DiagnosticArgument::DiagnosticArgument(&v85, a2);
      v17 = v89;
      if (v90 >= v91)
      {
        if (v89 <= &v85 && v89 + 24 * v90 > &v85)
        {
          v74 = &v85 - v89;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v17 = v89;
          v16 = (v89 + v74);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v16 = &v85;
          v17 = v89;
        }
      }

      v18 = &v17[24 * v90];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v90;
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }
    }

    if (v98 != 1)
    {
      goto LABEL_101;
    }

    if (v97 != &v98)
    {
      free(v97);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v96;
      v22 = __p;
      if (v96 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v96 = v20;
      operator delete(v22);
    }

    v11 = v93;
    if (!v93)
    {
      goto LABEL_99;
    }

    v23 = v94;
    v13 = v93;
    if (v94 == v93)
    {
      goto LABEL_98;
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

    while (v23 != v11);
    goto LABEL_97;
  }

  if (v83)
  {
    v81[0] = "Invalid offset for type: ";
    v82 = 259;
    mlir::Operation::emitOpError(a1, v81, &v87);
    if (v87)
    {
      v4 = &v85;
      mlir::DiagnosticArgument::DiagnosticArgument(&v85, a2);
      v5 = v89;
      if (v90 >= v91)
      {
        if (v89 <= &v85 && v89 + 24 * v90 > &v85)
        {
          v75 = &v85 - v89;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v5 = v89;
          v4 = (v89 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v4 = &v85;
          v5 = v89;
        }
      }

      v6 = &v5[24 * v90];
      v7 = *v4;
      *(v6 + 2) = *(v4 + 2);
      *v6 = v7;
      ++v90;
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }
    }

    if (v98 != 1)
    {
      goto LABEL_101;
    }

    if (v97 != &v98)
    {
      free(v97);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v96;
      v10 = __p;
      if (v96 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v96 = v8;
      operator delete(v10);
    }

    v11 = v93;
    if (!v93)
    {
LABEL_99:
      if (v89 != v92)
      {
        free(v89);
      }

LABEL_101:
      v43 = 0;
      goto LABEL_102;
    }

    v12 = v94;
    v13 = v93;
    if (v94 == v93)
    {
LABEL_98:
      v94 = v11;
      operator delete(v13);
      goto LABEL_99;
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
LABEL_97:
    v13 = v93;
    goto LABEL_98;
  }

  v26 = &v99[8 * v100];
  if (v100 >= 2)
  {
    v29 = v99 + 8;
    v28 = *v99;
    v30 = 8 * v100 - 8;
    v27 = v99;
    v31 = v99 + 8;
    do
    {
      v33 = *v31;
      v31 += 8;
      v32 = v33;
      if (v33 < v28)
      {
        v28 = v32;
        v27 = v29;
      }

      v29 = v31;
      v30 -= 8;
    }

    while (v30);
  }

  else
  {
    v27 = v99;
  }

  v35 = v100 < 3 || v27 - v99 != 8;
  v36 = v27 + 8;
  if (v27 + 8 != v26)
  {
    v37 = v27 + 8;
    while (*v27 < *v37)
    {
      if (++v37 == v26)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_68;
  }

LABEL_55:
  if (v35 || *v27 != 1)
  {
LABEL_68:
    if (v36 == v26)
    {
LABEL_71:
      v43 = 1;
      goto LABEL_102;
    }

    while (*v27 == *v36)
    {
      v36 += 8;
      if (v36 == v26)
      {
        goto LABEL_71;
      }
    }

    v81[0] = "Smallest stride was: ";
    v82 = 259;
    mlir::Operation::emitOpError(a1, v81, &v87);
    if (v87)
    {
      v85 = 2;
      v86 = (v27 - v99) >> 3;
      v48 = &v85;
      v49 = v89;
      if (v90 >= v91)
      {
        if (v89 <= &v85 && v89 + 24 * v90 > &v85)
        {
          v76 = &v85 - v89;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v49 = v89;
          v48 = (v89 + v76);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v48 = &v85;
          v49 = v89;
        }
      }

      v50 = &v49[24 * v90];
      v51 = *v48;
      *(v50 + 2) = *(v48 + 2);
      *v50 = v51;
      ++v90;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v87, " expected ");
    if (*v52)
    {
      v53 = *(v52 + 24);
      v85 = 5;
      v86 = v100 - 1;
      v54 = *(v52 + 32);
      v55 = &v85;
      if (v54 >= *(v52 + 36))
      {
        if (v53 <= &v85 && v53 + 24 * v54 > &v85)
        {
          v77 = &v85 - v53;
          v78 = v52;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v52 + 24, v52 + 40, v54 + 1, 24);
          v52 = v78;
          v53 = *(v78 + 24);
          v55 = &v77[v53];
        }

        else
        {
          v73 = v52;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v52 + 24, v52 + 40, v54 + 1, 24);
          v52 = v73;
          v53 = *(v73 + 24);
          v55 = &v85;
        }
      }

      v56 = v53 + 24 * *(v52 + 32);
      v57 = *v55;
      *(v56 + 16) = *(v55 + 2);
      *v56 = v57;
      ++*(v52 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, " for type ");
    if (*v58)
    {
      v59 = v58;
      v60 = &v85;
      mlir::DiagnosticArgument::DiagnosticArgument(&v85, a2);
      v61 = (v59 + 3);
      v62 = v59[3];
      v63 = *(v59 + 8);
      if (v63 >= *(v59 + 9))
      {
        if (v62 <= &v85 && v62 + 24 * v63 > &v85)
        {
          v79 = &v85 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v61, (v59 + 5), v63 + 1, 24);
          v62 = v59[3];
          v60 = &v79[v62];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v61, (v59 + 5), v63 + 1, 24);
          v62 = v59[3];
          v60 = &v85;
        }
      }

      v64 = v62 + 24 * *(v59 + 8);
      v65 = *v60;
      *(v64 + 16) = *(v60 + 2);
      *v64 = v65;
      ++*(v59 + 8);
    }

    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
    }

    if (v98 != 1)
    {
      goto LABEL_101;
    }

    if (v97 != &v98)
    {
      free(v97);
    }

    v66 = __p;
    if (__p)
    {
      v67 = v96;
      v68 = __p;
      if (v96 != __p)
      {
        do
        {
          v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
        }

        while (v67 != v66);
        v68 = __p;
      }

      v96 = v66;
      operator delete(v68);
    }

    v11 = v93;
    if (!v93)
    {
      goto LABEL_99;
    }

    v69 = v94;
    v13 = v93;
    if (v94 == v93)
    {
      goto LABEL_98;
    }

    do
    {
      v71 = *--v69;
      v70 = v71;
      *v69 = 0;
      if (v71)
      {
        operator delete[](v70);
      }
    }

    while (v69 != v11);
    goto LABEL_97;
  }

  v38 = *(mlir::ArrayAttr::getValue(&v84) + 8);
  v39 = *(mlir::ArrayAttr::getValue(&v84) + 8);
  v40 = *(mlir::ArrayAttr::getValue(&v84) + 8);
  v41 = *(mlir::ArrayAttr::getValue(&v84) + 8);
  Value = mlir::ArrayAttr::getValue(&v84);
  v43 = 1;
  if (v38 != 1 && v39 != 2 && v40 != 3 && v41 != 4 && *(Value + 8) != 8)
  {
    v81[0] = "Disallowed interleave size, cannot legalize argument of type: ";
    v82 = 259;
    mlir::Operation::emitOpError(a1, v81, &v87);
    if (v87)
    {
      v44 = &v85;
      mlir::DiagnosticArgument::DiagnosticArgument(&v85, v84);
      v45 = v89;
      if (v90 >= v91)
      {
        if (v89 <= &v85 && v89 + 24 * v90 > &v85)
        {
          v80 = &v85 - v89;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v45 = v89;
          v44 = (v89 + v80);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v44 = &v85;
          v45 = v89;
        }
      }

      v46 = &v45[24 * v90];
      v47 = *v44;
      *(v46 + 2) = *(v44 + 2);
      *v46 = v47;
      ++v90;
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }
    }

    if (v98 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v88);
    }

    goto LABEL_101;
  }

LABEL_102:
  if (v99 != v101)
  {
    free(v99);
  }

  return v43;
}

BOOL mlir::anonymous namespace::isRowAligned(uint64_t a1, uint64_t a2)
{
  v58[4] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = a2;
  v56 = v58;
  v57 = 0x400000000;
  if (mlir::getStridesAndOffset(a2, &v56, &v42))
  {
    v4 = v56;
    v5 = v57;
    v6 = 8 * v57;
    if (v57 > 1)
    {
      v22 = v56 + 8;
      v21 = *v56;
      v23 = v6 - 8;
      v24 = v56;
      v25 = v56 + 8;
      do
      {
        v27 = *v25;
        v25 += 8;
        v26 = v27;
        if (v27 < v21)
        {
          v21 = v26;
          v24 = v22;
        }

        v22 = v25;
        v23 -= 8;
      }

      while (v23);
      v28 = 1;
      if (v57 != 2)
      {
        v28 = 2;
      }

      if (v24 - v56 == 8)
      {
        v8 = v28;
      }

      else
      {
        v8 = 1;
      }

      if (v57 >= 0x81)
      {
        v29 = v56;
        v30 = MEMORY[0x1E69E5398];
        v31 = v57;
        v32 = v57;
        while (1)
        {
          v33 = operator new(8 * v32, v30);
          if (v33)
          {
            break;
          }

          v7 = v32 >> 1;
          v34 = v32 > 1;
          v32 >>= 1;
          if (!v34)
          {
            v4 = v29;
            v5 = v31;
            goto LABEL_37;
          }
        }

        v38 = v33;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v29, &v29[v6], v45, v31, v33, v32);
        operator delete(v38);
        goto LABEL_38;
      }

      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 1;
    }

LABEL_37:
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v4, &v4[v6], v45, v5, 0, v7);
LABEL_38:
    v35 = *&v56[8 * v8];
    v45[0] = mlir::AffineBinaryOpExpr::getRHS(&v43);
    v36 = ((v35 * (mlir::Type::getIntOrFloatBitWidth(v45) >> 3)) & 0x3FLL) == 0;
    goto LABEL_44;
  }

  v40 = "Unable to get strides for type: ";
  v41 = 259;
  mlir::Operation::emitOpError(a1, &v40, v45);
  if (v45[0])
  {
    v9 = v44;
    mlir::DiagnosticArgument::DiagnosticArgument(v44, a2);
    v10 = v46;
    if (v47 >= v48)
    {
      if (v46 <= v44 && v46 + 24 * v47 > v44)
      {
        v39 = v44 - v46;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v10 = v46;
        v9 = v46 + v39;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v9 = v44;
        v10 = v46;
      }
    }

    v11 = &v10[24 * v47];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    ++v47;
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v53;
      v15 = __p;
      if (v53 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v53 = v13;
      operator delete(v15);
    }

    v16 = v50;
    if (v50)
    {
      v17 = v51;
      v18 = v50;
      if (v51 != v50)
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
        v18 = v50;
      }

      v51 = v16;
      operator delete(v18);
    }

    if (v46 != v49)
    {
      free(v46);
    }
  }

  v36 = 0;
LABEL_44:
  if (v56 != v58)
  {
    free(v56);
  }

  return v36;
}

void *mlir::anonymous namespace::makeCanonicalMemRefType(void *a1)
{
  v42[4] = *MEMORY[0x1E69E9840];
  v34 = a1;
  mlir::ArrayAttr::getValue(&v34);
  if (!v1)
  {
    return v34;
  }

  mlir::ArrayAttr::getValue(&v34);
  v3 = v2;
  v36 = v39;
  v38 = 4;
  if (v2 >= 5)
  {
    v37 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v2, 8);
    v4 = v36;
    v5 = 8 * v3;
LABEL_7:
    memset_pattern16(v4, &unk_1E096FAE0, v5);
    goto LABEL_8;
  }

  if (v2)
  {
    v5 = 8 * v2;
    v4 = v39;
    goto LABEL_7;
  }

LABEL_8:
  v37 = v3;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v34);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&RHS);
  v8 = v36;
  v9 = v37;
  *(v36 + v37 - 1) = 0x40 / (IntOrFloatBitWidth >> 3);
  v10 = v34;
  if (v34)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
    v8 = v36;
    v9 = v37;
  }

  else
  {
    v11 = 0;
  }

  v35[0] = v10;
  v35[1] = v11;
  v42[0] = 1;
  RHS = v42;
  v41 = 0x400000001;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v35);
  LODWORD(v14) = v41;
  if (v13 != 1)
  {
    v28 = &v8[8 * v9 - 8];
    v29 = 8 * v13 - 8;
    do
    {
      v14 = v14;
      v31 = *v28;
      v28 -= 8;
      v30 = v31;
      if (v31)
      {
        v32 = (v30 + *(RHS + v14 - 1) * *(ArgAttrsAttr + v29) - 1) / v30 * v30;
      }

      else
      {
        v32 = 0;
      }

      if (v14 >= HIDWORD(v41))
      {
        v33 = ArgAttrsAttr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&RHS, v42, v14 + 1, 8);
        ArgAttrsAttr = v33;
        v14 = v41;
      }

      *(RHS + v14) = v32;
      LODWORD(v14) = v41 + 1;
      LODWORD(v41) = v41 + 1;
      v29 -= 8;
    }

    while (v29);
  }

  v15 = RHS;
  v16 = v14;
  if (v14)
  {
    v17 = RHS + 8 * v14 - 8;
    if (v17 > RHS)
    {
      v18 = RHS + 8;
      do
      {
        v19 = *(v18 - 1);
        *(v18 - 1) = *v17;
        *v17 = v19;
        v17 -= 8;
        v20 = v18 >= v17;
        v18 += 8;
      }

      while (!v20);
    }
  }

  Context = mlir::Attribute::getContext(v35);
  StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v15, v16, 0, Context);
  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v35);
  v25 = v24;
  isSplat = mlir::ElementsAttr::isSplat(v35);
  v6 = mlir::MemRefType::get(v23, v25, isSplat, StridedLinearLayoutMap, 0);
  if (RHS != v42)
  {
    free(RHS);
  }

  if (v36 != v39)
  {
    free(v36);
  }

  return v6;
}

char *std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(char *result, char *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *result;
      if (v6 < *result)
      {
        *result = v6;
        *(a2 - 1) = v7;
      }

      return result;
    }

    if (a4 > 128)
    {
      if (a4 <= a6)
      {
        if (a4 - 32769 >= 0xFFFFFFFFFFFF83FFLL)
        {

          return std::__radix_sort_impl[abi:nn200100]<long long *,long long *,void std::__radix_sort[abi:nn200100]<long long *,long long *,std::__identity,std::__low_byte_fn>(long long *,long long *,long long *,std::__identity,std::__low_byte_fn)::{lambda(long long * const&)#1},std::__low_byte_fn,0>(result);
        }

        else
        {
          v24 = a4 >> 1;
          v25 = a4 >> 1;
          v27 = result;
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(result, &result[v25 * 8], a3, a4 >> 1, a5);
          v31 = &a5[v25];
          result = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(&v27[v25], a2, a3, a4 - v24, &a5[v25]);
          v32 = v27;
          v33 = &a5[v25];
          v34 = a5;
          v35 = &a5[a4];
          do
          {
            if (v33 == v35)
            {
              if (v34 == v31)
              {
                return result;
              }

              v51 = &a5[v24] - v34 - 8;
              if (v51 >= 0x38)
              {
                if ((v32 - v34) >= 0x20)
                {
                  v53 = v27 + 2;
                  v54 = (v51 >> 3) + 1;
                  v55 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                  v27 = (v27 + v55 * 8);
                  v52 = &v34[v55];
                  v56 = (v34 + 2);
                  v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v58 = *v56;
                    *(v53 - 1) = *(v56 - 1);
                    *v53 = v58;
                    v56 += 2;
                    v53 += 2;
                    v57 -= 4;
                  }

                  while (v57);
                  if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
                  {
                    return result;
                  }
                }

                else
                {
                  v52 = v34;
                }
              }

              else
              {
                v52 = v34;
              }

              do
              {
                v59 = *v52++;
                *v27++ = v59;
              }

              while (v52 != v31);
              return result;
            }

            v36 = v33;
            v37 = *v33;
            v38 = v37 < *v34;
            if (v37 >= *v34)
            {
              v39 = *v34;
            }

            else
            {
              v39 = v37;
            }

            v34 += v37 >= *v34;
            v40 = v38;
            v33 = &v36[v40];
            *v27++ = v39;
            v32 += 8;
          }

          while (v34 != v31);
          if (v33 != v35)
          {
            v41 = v35 - v36 - v40 * 8 - 8;
            if (v41 <= 0x57)
            {
              goto LABEL_51;
            }

            if ((v32 - v36 - v40 * 8) < 0x20)
            {
              goto LABEL_51;
            }

            v42 = 0;
            v43 = (v41 >> 3) + 1;
            v44 = v43 & 0x3FFFFFFFFFFFFFFCLL;
            v45 = &v27[v44];
            v33 = (v33 + v44 * 8);
            v46 = &v36[v40 + 2];
            v47 = v43 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v48 = &v27[v42];
              v49 = *v46;
              *v48 = *(v46 - 1);
              *(v48 + 1) = v49;
              v46 += 4;
              v42 += 4;
              v47 -= 4;
            }

            while (v47);
            v27 = v45;
            if (v43 != (v43 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_51:
              do
              {
                v50 = *v33++;
                *v27++ = v50;
              }

              while (v33 != v35);
            }
          }
        }
      }

      else
      {
        v15 = a4 >> 1;
        v16 = &result[8 * (a4 >> 1)];
        v17 = result;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(result, v16, a3, a4 >> 1, a5, a6);
        v23 = a4 - v15;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v16, a2, a3, v23, a5, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v17, v16, a2, a3, v15, v23, a5, a6);
      }
    }

    else if (result != a2)
    {
      v8 = result + 8;
      if (result + 8 != a2)
      {
        v9 = 0;
        v10 = result;
        do
        {
          v13 = *v10;
          v12 = *(v10 + 1);
          v10 = v8;
          if (v12 < v13)
          {
            v14 = v9;
            do
            {
              *&result[v14 + 8] = v13;
              if (!v14)
              {
                v11 = result;
                goto LABEL_11;
              }

              v13 = *&result[v14 - 8];
              v14 -= 8;
            }

            while (v12 < v13);
            v11 = &result[v14 + 8];
LABEL_11:
            *v11 = v12;
          }

          v8 = v10 + 8;
          v9 += 8;
        }

        while (v10 + 8 != a2);
      }
    }
  }

  return result;
}

char *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(char *result, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_8:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 8;
      v6 = v7;
      v8 = v7 < *result;
      if (v7 >= *result)
      {
        v6 = *result;
      }

      *a5++ = v6;
      if (!v8)
      {
        result = v5;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v18 = a4 >> 1;
      v19 = a4 >> 1;
      v20 = &result[v19 * 8];
      v21 = result;
      v25 = a5;
      (std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v20, a2, a3, a4 - v18, &v25[v19], a4 - v18);
      v26 = v25;
      v27 = v21;
      v28 = v20;
      do
      {
        if (v28 == a2)
        {
          if (v27 == v20)
          {
            return result;
          }

          v44 = &v21[8 * v18] - v27 - 8;
          if (v44 >= 0x38)
          {
            if ((v26 - v27) >= 0x20)
            {
              v46 = v25 + 2;
              v47 = (v44 >> 3) + 1;
              v48 = 8 * (v47 & 0x3FFFFFFFFFFFFFFCLL);
              v25 = (v25 + v48);
              v45 = &v27[v48];
              v49 = (v27 + 16);
              v50 = v47 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v51 = *v49;
                *(v46 - 1) = *(v49 - 1);
                *v46 = v51;
                v49 += 2;
                v46 += 2;
                v50 -= 4;
              }

              while (v50);
              if (v47 == (v47 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v45 = v27;
            }
          }

          else
          {
            v45 = v27;
          }

          do
          {
            v52 = *v45++;
            *v25++ = v52;
          }

          while (v45 != v20);
          return result;
        }

        v29 = v28;
        v30 = *v28;
        v31 = v30 >= *v27;
        if (v30 >= *v27)
        {
          v32 = *v27;
        }

        else
        {
          v32 = v30;
        }

        v33 = 8 * (v30 < *v27);
        v28 = &v29[v33];
        v27 += 8 * v31;
        *v25++ = v32;
        v26 += 8;
      }

      while (v27 != v20);
      if (v28 != a2)
      {
        v34 = a2 - &v29[v33] - 8;
        if (v34 < 0x58)
        {
          goto LABEL_48;
        }

        if ((v26 - v29 - v33) < 0x20)
        {
          goto LABEL_48;
        }

        v35 = 0;
        v36 = (v34 >> 3) + 1;
        v37 = v36 & 0x3FFFFFFFFFFFFFFCLL;
        v38 = &v25[v37];
        v28 += v37 * 8;
        v39 = &v29[v33 + 16];
        v40 = v36 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v41 = &v25[v35];
          v42 = *v39;
          *v41 = *(v39 - 1);
          *(v41 + 1) = v42;
          v39 += 32;
          v35 += 4;
          v40 -= 4;
        }

        while (v40);
        v25 = v38;
        if (v36 != (v36 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_48:
          do
          {
            v43 = *v28;
            v28 += 8;
            *v25++ = v43;
          }

          while (v28 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result;
      result += 8;
      *a5 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a5;
        v12 = a5;
        do
        {
          v14 = *v12++;
          v13 = v14;
          if (*result >= v14)
          {
            *v12 = *result;
          }

          else
          {
            v11[1] = v13;
            v15 = a5;
            if (v11 != a5)
            {
              v16 = v10;
              while (1)
              {
                v15 = (a5 + v16);
                v17 = *(a5 + v16 - 8);
                if (*result >= v17)
                {
                  break;
                }

                *v15 = v17;
                v16 -= 8;
                if (!v16)
                {
                  v15 = a5;
                  break;
                }
              }
            }

            *v15 = *result;
          }

          result += 8;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    while (a6 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v11 = *a2;
      while (1)
      {
        v12 = *result;
        if (v11 < *result)
        {
          break;
        }

        result += 8;
        if (!--a5)
        {
          return result;
        }
      }

      if (a5 >= a6)
      {
        if (a5 == 1)
        {
          *result = v11;
          *a2 = v12;
          return result;
        }

        v21 = a5 / 2;
        v16 = &result[8 * (a5 / 2)];
        if (a3 == a2)
        {
          v14 = a2;
        }

        else
        {
          v22 = (a3 - a2) >> 3;
          v14 = a2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v14[8 * (v22 >> 1)];
            v26 = *v24;
            v25 = (v24 + 1);
            v22 += ~(v22 >> 1);
            if (v26 < *v16)
            {
              v14 = v25;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v13 = (v14 - a2) >> 3;
      }

      else
      {
        v13 = a6 / 2;
        v14 = &a2[8 * (a6 / 2)];
        if (result == a2)
        {
          v16 = result;
        }

        else
        {
          v15 = (a2 - result) >> 3;
          v16 = result;
          do
          {
            v17 = v15 >> 1;
            v18 = &v16[8 * (v15 >> 1)];
            v20 = *v18;
            v19 = (v18 + 1);
            v15 += ~(v15 >> 1);
            if (*v14 < v20)
            {
              v15 = v17;
            }

            else
            {
              v16 = v19;
            }
          }

          while (v15);
        }

        v21 = (v16 - result) >> 3;
      }

      v27 = v14;
      if (v16 != a2)
      {
        v27 = v16;
        if (a2 != v14)
        {
          v28 = v16 + 8;
          if (v16 + 8 == a2)
          {
            v99 = *v16;
            v101 = a4;
            v35 = v14 - a2;
            v103 = result;
            v36 = a3;
            v37 = a6;
            v38 = a7;
            v39 = a5;
            memmove(v16, v16 + 8, v14 - a2);
            a5 = v39;
            a7 = v38;
            a6 = v37;
            a4 = v101;
            result = v103;
            a3 = v36;
            v27 = &v16[v35];
            *v27 = v99;
          }

          else
          {
            v29 = a2 + 8;
            if (a2 + 8 == v14)
            {
              v40 = *(v14 - 1);
              v27 = v16 + 8;
              if (v14 - 8 != v16)
              {
                v102 = a4;
                v104 = result;
                v41 = a3;
                v42 = a6;
                v100 = a7;
                v43 = a5;
                memmove(v16 + 8, v16, v14 - 8 - v16);
                a5 = v43;
                a6 = v42;
                a7 = v100;
                a4 = v102;
                result = v104;
                a3 = v41;
              }

              *v16 = v40;
            }

            else
            {
              v30 = a2 - v16;
              v31 = (a2 - v16) >> 3;
              v32 = (v14 - a2) >> 3;
              if (v31 == v32)
              {
                do
                {
                  v33 = *(v28 - 1);
                  *(v28 - 1) = *(v29 - 1);
                  *(v29 - 1) = v33;
                  if (v28 == a2)
                  {
                    break;
                  }

                  v28 += 8;
                  v34 = v29 == v14;
                  v29 += 8;
                }

                while (!v34);
                v27 = a2;
              }

              else
              {
                v44 = (a2 - v16) >> 3;
                do
                {
                  v45 = v44;
                  v44 = v32;
                  v32 = v45 % v32;
                }

                while (v32);
                v46 = &v16[8 * v44];
                do
                {
                  v48 = *(v46 - 1);
                  v46 -= 8;
                  v47 = v48;
                  v49 = &v46[v30];
                  v50 = v46;
                  do
                  {
                    v51 = v50;
                    v50 = v49;
                    *v51 = *v49;
                    v52 = (v14 - v49) >> 3;
                    v53 = __OFSUB__(v31, v52);
                    v54 = v31 - v52;
                    v75 = (v54 < 0) ^ v53;
                    v49 = &v16[8 * v54];
                    if (v75)
                    {
                      v49 = v50 + v30;
                    }
                  }

                  while (v49 != v46);
                  *v50 = v47;
                }

                while (v46 != v16);
                v27 = &v16[v14 - a2];
              }
            }
          }
        }
      }

      v55 = a5 - v21;
      v56 = a6 - v13;
      if (v21 + v13 >= v55 + v56)
      {
        v61 = result;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v27, v14, a3, a4);
        result = v61;
        a6 = v13;
        a5 = v21;
        a3 = v27;
        a2 = v16;
        if (!v13)
        {
          return result;
        }
      }

      else
      {
        v57 = v16;
        v58 = a3;
        v59 = v55;
        v60 = v56;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(result, v57, v27, a4);
        a5 = v59;
        a6 = v60;
        a3 = v58;
        result = v27;
        a2 = v14;
        if (!v60)
        {
          return result;
        }
      }
    }

    if (a5 <= a6)
    {
      if (result != a2)
      {
        v76 = a2 - result - 8;
        v77 = a7;
        v78 = result;
        if (v76 < 0x18)
        {
          goto LABEL_102;
        }

        v77 = a7;
        v78 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_102;
        }

        v79 = (v76 >> 3) + 1;
        v80 = 8 * (v79 & 0x3FFFFFFFFFFFFFFCLL);
        v77 = &a7[v80];
        v78 = &result[v80];
        v81 = (result + 16);
        v82 = a7 + 16;
        v83 = v79 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v84 = *v81;
          *(v82 - 1) = *(v81 - 1);
          *v82 = v84;
          v81 += 2;
          v82 += 2;
          v83 -= 4;
        }

        while (v83);
        if (v79 != (v79 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_102:
          do
          {
            v85 = *v78;
            v78 += 8;
            *v77 = v85;
            v77 += 8;
          }

          while (v78 != a2);
        }

        while (a2 != a3)
        {
          v86 = *a2;
          v87 = *a2 < *a7;
          if (*a2 >= *a7)
          {
            v86 = *a7;
          }

          a7 += 8 * (*a2 >= *a7);
          a2 += 8 * v87;
          *result = v86;
          result += 8;
          if (a7 == v77)
          {
            return result;
          }
        }

        return memmove(result, a7, v77 - a7);
      }
    }

    else if (a2 != a3)
    {
      v62 = a3 - a2 - 8;
      v63 = a7;
      v64 = a2;
      if (v62 < 0x18)
      {
        goto LABEL_103;
      }

      v63 = a7;
      v64 = a2;
      if ((a7 - a2) <= 0x1F)
      {
        goto LABEL_103;
      }

      v65 = (v62 >> 3) + 1;
      v66 = 8 * (v65 & 0x3FFFFFFFFFFFFFFCLL);
      v63 = &a7[v66];
      v64 = &a2[v66];
      v67 = (a2 + 16);
      v68 = a7 + 16;
      v69 = v65 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v70 = *v67;
        *(v68 - 1) = *(v67 - 1);
        *v68 = v70;
        v67 += 2;
        v68 += 2;
        v69 -= 4;
      }

      while (v69);
      if (v65 != (v65 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_103:
        do
        {
          v71 = *v64;
          v64 += 8;
          *v63 = v71;
          v63 += 8;
        }

        while (v64 != a3);
      }

      v72 = a3;
      while (a2 != result)
      {
        v73 = *(v63 - 1);
        v74 = *(a2 - 1);
        v75 = v73 < v74;
        if (v73 <= v74)
        {
          v73 = *(a2 - 1);
        }

        if (v75)
        {
          a2 -= 8;
        }

        else
        {
          v63 -= 8;
        }

        *(a3 - 1) = v73;
        a3 -= 8;
        v72 -= 8;
        if (v63 == a7)
        {
          return result;
        }
      }

      v88 = v63 - a7;
      if (v63 != a7)
      {
        v89 = v88 - 8;
        if ((v88 - 8) < 0x48 || (v63 - v72) < 0x20)
        {
          v90 = v63;
LABEL_90:
          v91 = a3 - 8;
          do
          {
            v92 = *(v90 - 1);
            v90 -= 8;
            *v91 = v92;
            v91 -= 8;
          }

          while (v90 != a7);
          return result;
        }

        v93 = a3 - 16;
        v94 = (v89 >> 3) + 1;
        v95 = 8 * (v94 & 0x3FFFFFFFFFFFFFFCLL);
        v90 = &v63[-v95];
        a3 -= v95;
        v96 = v63 - 16;
        v97 = v94 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v98 = *v96;
          *(v93 - 1) = *(v96 - 1);
          *v93 = v98;
          v93 -= 32;
          v96 -= 32;
          v97 -= 4;
        }

        while (v97);
        if (v94 != (v94 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_90;
        }
      }
    }
  }

  return result;
}

uint64_t std::__radix_sort_impl[abi:nn200100]<long long *,long long *,void std::__radix_sort[abi:nn200100]<long long *,long long *,std::__identity,std::__low_byte_fn>(long long *,long long *,long long *,std::__identity,std::__low_byte_fn)::{lambda(long long * const&)#1},std::__low_byte_fn,0>(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v27[2048] = *MEMORY[0x1E69E9840];
  bzero(v27, 0x4000uLL);
  memset(v26, 0, sizeof(v26));
  result = std::__collect_impl[abi:nn200100]<long long *,void std::__radix_sort[abi:nn200100]<long long *,long long *,std::__identity,std::__low_byte_fn>(long long *,long long *,long long *,std::__identity,std::__low_byte_fn)::{lambda(long long * const&)#1},std::__low_byte_fn,long (*)[256],long *,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>(v8, v7, v3, v27, v26);
  if ((result & 1) == 0)
  {
    v10 = 0;
    v11 = v7 - v8;
    do
    {
      v13 = *&v26[v10];
      v14 = *(v26 + ((v10 * 2) | 1));
      if (v13 == v11 && v14 == v11)
      {
        goto LABEL_6;
      }

      if (v13 == v11)
      {
        if (v7 != v8)
        {
          result = memmove(v5, v8, v7 - v8);
          if (v14 != v11)
          {
            goto LABEL_21;
          }

LABEL_5:
          result = memmove(v8, v5, v7 - v8);
          goto LABEL_6;
        }
      }

      else if (v7 != v8)
      {
        v16 = v7;
        v17 = &v27[128 * v10];
        do
        {
          v18 = *--v16;
          v19 = ((v18 ^ 0x8000000000000000) >> (8 * (v10 * 2)));
          v20 = v17[v19] - 1;
          v17[v19] = v20;
          *&v5[8 * v20] = v18;
        }

        while (v16 != v8);
      }

      if (v14 == v11)
      {
        if (v7 != v8)
        {
          goto LABEL_5;
        }
      }

      else if (v7 != v8)
      {
LABEL_21:
        v21 = &v27[256 * ((v10 * 2) | 1)];
        v22 = v7 - v8;
        do
        {
          v23 = *&v5[v22 - 8];
          v24 = ((v23 ^ 0x8000000000000000) >> ((4 * v10) | 8));
          v25 = v21[v24] - 1;
          v21[v24] = v25;
          v8[v25] = v23;
          v22 -= 8;
        }

        while (v22);
      }

LABEL_6:
      ;
    }

    while (v10++ < 3);
  }

  return result;
}

uint64_t std::__collect_impl[abi:nn200100]<long long *,void std::__radix_sort[abi:nn200100]<long long *,long long *,std::__identity,std::__low_byte_fn>(long long *,long long *,long long *,std::__identity,std::__low_byte_fn)::{lambda(long long * const&)#1},std::__low_byte_fn,long (*)[256],long *,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (result == a2)
  {
    result = 1;
  }

  else
  {
    v5 = result;
    v6 = 0;
    LOBYTE(result) = 1;
    do
    {
      v7 = *v5++;
      ++a4[v7];
      ++a4[BYTE1(v7) + 256];
      ++a4[BYTE2(v7) + 512];
      ++a4[BYTE3(v7) + 768];
      ++a4[BYTE4(v7) + 1024];
      ++a4[BYTE5(v7) + 1280];
      ++a4[BYTE6(v7) + 1536];
      result = result & ((v7 ^ 0x8000000000000000) >= v6);
      ++*(a4 + (((v7 ^ 0x8000000000000000) >> 53) & 0x7F8) + 14336);
      v6 = v7 ^ 0x8000000000000000;
    }

    while (v5 != a2);
  }

  v8 = *a4;
  v9 = 1;
  v10 = *a4;
  do
  {
    v11 = a4[v9];
    if (v10 <= v11)
    {
      v10 = a4[v9];
    }

    v8 += v11;
    a4[v9++] = v8;
  }

  while (v9 != 256);
  v12 = 0;
  *a5 = v10;
  v13 = a4[256];
  v14 = a4 + 257;
  v15 = v13;
  do
  {
    v16 = v14[v12];
    if (v15 <= v16)
    {
      v15 = v14[v12];
    }

    v13 += v16;
    v14[v12++] = v13;
  }

  while (v12 != 255);
  v17 = 0;
  a5[1] = v15;
  v18 = a4[512];
  v19 = a4 + 513;
  v20 = v18;
  do
  {
    v21 = v19[v17];
    if (v20 <= v21)
    {
      v20 = v19[v17];
    }

    v18 += v21;
    v19[v17++] = v18;
  }

  while (v17 != 255);
  v22 = 0;
  a5[2] = v20;
  v23 = a4[768];
  v24 = a4 + 769;
  v25 = v23;
  do
  {
    v26 = v24[v22];
    if (v25 <= v26)
    {
      v25 = v24[v22];
    }

    v23 += v26;
    v24[v22++] = v23;
  }

  while (v22 != 255);
  v27 = 0;
  a5[3] = v25;
  v28 = a4[1024];
  v29 = a4 + 1025;
  v30 = v28;
  do
  {
    v31 = v29[v27];
    if (v30 <= v31)
    {
      v30 = v29[v27];
    }

    v28 += v31;
    v29[v27++] = v28;
  }

  while (v27 != 255);
  v32 = 0;
  a5[4] = v30;
  v33 = a4[1280];
  v34 = a4 + 1281;
  v35 = v33;
  do
  {
    v36 = v34[v32];
    if (v35 <= v36)
    {
      v35 = v34[v32];
    }

    v33 += v36;
    v34[v32++] = v33;
  }

  while (v32 != 255);
  v37 = 0;
  a5[5] = v35;
  v38 = a4[1536];
  v39 = a4 + 1537;
  v40 = v38;
  do
  {
    v41 = v39[v37];
    if (v40 <= v41)
    {
      v40 = v39[v37];
    }

    v38 += v41;
    v39[v37++] = v38;
  }

  while (v37 != 255);
  v42 = 0;
  a5[6] = v40;
  v43 = a4[1792];
  v44 = a4 + 1793;
  v45 = v43;
  do
  {
    v46 = v44[v42];
    if (v45 <= v46)
    {
      v45 = v44[v42];
    }

    v43 += v46;
    v44[v42++] = v43;
  }

  while (v42 != 255);
  a5[7] = v45;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1)
{
  *(v1 - 136) = a1;

  return mlir::arith::FastMathFlagsAttr::getValue((v1 - 136));
}

void OUTLINED_FUNCTION_3_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, &a33, v33 + 1, 24);
}

void OUTLINED_FUNCTION_7_16(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a21, a5, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_8_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return mlir::AffineExpr::operator+(va, a1);
}

uint64_t mlir::ANEProperties::createFromModule(mlir::ANEProperties *this, mlir::Operation *a2)
{
  v3 = operator new(0x20uLL);
  *__p = v3;
  *&__p[8] = xmmword_1E097BD80;
  strcpy(v3, "mps.enableANECHWRankPromotion");
  if (*(this + 47) && (v37.var0 = v3, v37.var1 = 29, InherentAttr = mlir::Operation::getInherentAttr(this, v37), (v5 & 1) != 0))
  {
    if (!InherentAttr)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v38.var0 = v3;
    v38.var1 = 29;
    if (!mlir::DictionaryAttr::contains((this + 56), v38))
    {
      goto LABEL_22;
    }
  }

  if (__p[23] >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = *__p;
  }

  if (__p[23] >= 0)
  {
    v7 = __p[23];
  }

  else
  {
    v7 = *&__p[8];
  }

  if (!*(this + 47) || (v39.var0 = v6, v39.var1 = v7, v8 = mlir::Operation::getInherentAttr(this, v39), (v9 & 1) == 0))
  {
    v40.var0 = v6;
    v40.var1 = v7;
    v8 = mlir::DictionaryAttr::get((this + 56), v40);
  }

  if (v8)
  {
    v10 = v8;
    v11 = mlir::BoolAttr::classof(v8);
    v12 = v11 ? v10 : 0;
    v36 = v12;
    if (v11)
    {
      Value = mlir::BoolAttr::getValue(&v36);
      if ((__p[23] & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }
  }

LABEL_22:
  Value = 0;
  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_23:
    operator delete(*__p);
  }

LABEL_24:
  __p[23] = 21;
  strcpy(__p, "mps.useRegularSigmoid");
  if (*(this + 47) && (v41.var0 = __p, v41.var1 = 21, v14 = mlir::Operation::getInherentAttr(this, v41), (v15 & 1) != 0))
  {
    if (!v14)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v42.var0 = __p;
    v42.var1 = 21;
    if (!mlir::DictionaryAttr::contains((this + 56), v42))
    {
      goto LABEL_48;
    }
  }

  if (__p[23] >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = *__p;
  }

  if (__p[23] >= 0)
  {
    v17 = __p[23];
  }

  else
  {
    v17 = *&__p[8];
  }

  if (!*(this + 47) || (v43.var0 = v16, v43.var1 = v17, v18 = mlir::Operation::getInherentAttr(this, v43), (v19 & 1) == 0))
  {
    v44.var0 = v16;
    v44.var1 = v17;
    v18 = mlir::DictionaryAttr::get((this + 56), v44);
  }

  if (v18)
  {
    v20 = v18;
    v21 = mlir::BoolAttr::classof(v18);
    v22 = v21 ? v20 : 0;
    v36 = v22;
    if (v21)
    {
      if (mlir::BoolAttr::getValue(&v36))
      {
        v23 = 256;
      }

      else
      {
        v23 = 0;
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }
  }

LABEL_48:
  v23 = 0;
  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_49:
    operator delete(*__p);
  }

LABEL_50:
  strcpy(__p, "mps.useMulForSquareSum");
  __p[23] = 22;
  if (*(this + 47))
  {
    v45.var0 = __p;
    v45.var1 = 22;
    v24 = mlir::Operation::getInherentAttr(this, v45);
    if (v25)
    {
      if (v24)
      {
        goto LABEL_53;
      }

LABEL_73:
      v33 = 0x10000;
      if ((__p[23] & 0x80000000) != 0)
      {
        goto LABEL_74;
      }

      return v23 | Value | v33;
    }
  }

  v48.var0 = __p;
  v48.var1 = 22;
  if (!mlir::DictionaryAttr::contains((this + 56), v48))
  {
    goto LABEL_73;
  }

LABEL_53:
  if (__p[23] >= 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = *__p;
  }

  if (__p[23] >= 0)
  {
    v27 = __p[23];
  }

  else
  {
    v27 = *&__p[8];
  }

  if (!*(this + 47) || (v46.var0 = v26, v46.var1 = v27, v28 = mlir::Operation::getInherentAttr(this, v46), (v29 & 1) == 0))
  {
    v47.var0 = v26;
    v47.var1 = v27;
    v28 = mlir::DictionaryAttr::get((this + 56), v47);
  }

  if (!v28 || ((v30 = v28, !(v31 = mlir::BoolAttr::classof(v28))) ? (v32 = 0) : (v32 = v30), v36 = v32, !v31))
  {
    v33 = 0;
    if ((__p[23] & 0x80000000) == 0)
    {
      return v23 | Value | v33;
    }

    goto LABEL_74;
  }

  if (mlir::BoolAttr::getValue(&v36))
  {
    v33 = 0x10000;
  }

  else
  {
    v33 = 0;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_74:
    operator delete(*__p);
  }

  return v23 | Value | v33;
}

void sub_1E005B750()
{

  std::mutex::~mutex(v0);
}

void mlir::ANEPropertiesRegistry::registerProperties(std::mutex *this, mlir::MLIRContext *a2, const mlir::ANEProperties *a3)
{
  v22 = a2;
  std::mutex::lock(this);
  v6 = this;
  sig = this[1].__m_.__sig;
  v8 = this + 1;
  v7 = sig;
  v10 = *&v8->__m_.__opaque[8];
  if (v10)
  {
    v11 = v10 - 1;
    v12 = ((a2 >> 4) ^ (a2 >> 9)) & (v10 - 1);
    v13 = v7 + 16 * v12;
    v14 = *v13;
    if (*v13 == a2)
    {
      goto LABEL_18;
    }

    v15 = 0;
    v16 = 1;
    while (v14 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14 == -8192;
      }

      if (v17)
      {
        v15 = v13;
      }

      v18 = v12 + v16++;
      v12 = v18 & v11;
      v13 = v7 + 16 * (v18 & v11);
      v14 = *v13;
      if (*v13 == a2)
      {
        goto LABEL_18;
      }
    }

    if (v15)
    {
      v13 = v15;
    }
  }

  else
  {
    v13 = 0;
  }

  v23 = v13;
  v19 = *v6[1].__m_.__opaque;
  if (4 * v19 + 4 >= 3 * v10)
  {
    v21 = v6;
    v10 *= 2;
LABEL_24:
    llvm::DenseMap<mlir::MLIRContext *,mlir::ANEProperties,llvm::DenseMapInfo<mlir::MLIRContext *,void>,llvm::detail::DenseMapPair<mlir::MLIRContext *,mlir::ANEProperties>>::grow(v8, v10);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(&v8->__m_.__sig, &v22, &v23);
    v6 = v21;
    v19 = *v21[1].__m_.__opaque;
    v13 = v23;
    goto LABEL_15;
  }

  if (v10 + ~v19 - *&v6[1].__m_.__opaque[4] <= v10 >> 3)
  {
    v21 = v6;
    goto LABEL_24;
  }

LABEL_15:
  *v6[1].__m_.__opaque = v19 + 1;
  if (*v13 != -4096)
  {
    --*&v6[1].__m_.__opaque[4];
  }

  *v13 = v22;
  *(v13 + 8) = 0;
  *(v13 + 10) = 0;
LABEL_18:
  v20 = *a3;
  *(v13 + 10) = *(a3 + 2);
  *(v13 + 8) = v20;
  std::mutex::unlock(v6);
}

uint64_t mlir::ANEPropertiesRegistry::getProperties(std::mutex *this, mlir::MLIRContext *a2)
{
  std::mutex::lock(this);
  sig = this[1].__m_.__sig;
  v5 = *&this[1].__m_.__opaque[8];
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(sig + 16 * v6);
    if (v7 == a2)
    {
      goto LABEL_8;
    }

    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v6 + v8++;
      v6 = v9 & (v5 - 1);
      v7 = *(sig + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = *&this[1].__m_.__opaque[8];
LABEL_8:
  v10 = sig + 16 * v6 + 8;
  if (v6 == v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::mutex::unlock(this);
  return v11;
}

mlir::ScopedANEProperties *mlir::ScopedANEProperties::ScopedANEProperties(mlir::ScopedANEProperties *this, mlir::MLIRContext *a2, const mlir::ANEProperties *a3)
{
  *this = a2;
  mlir::ANEPropertiesRegistry::registerProperties(&mlir::ANEPropertiesRegistry::instance, a2, a3);
  return this;
}

void mlir::ScopedANEProperties::~ScopedANEProperties(mlir::ScopedANEProperties *this)
{
  v1 = *this;
  std::mutex::lock(&mlir::ANEPropertiesRegistry::instance);
  if (qword_1ECE75510)
  {
    v2 = (qword_1ECE75510 - 1) & ((v1 >> 4) ^ (v1 >> 9));
    v3 = *(qword_1ECE75500 + 16 * v2);
    if (v3 == v1)
    {
LABEL_3:
      *(qword_1ECE75500 + 16 * v2) = -8192;
      qword_1ECE75508 = vadd_s32(qword_1ECE75508, 0x1FFFFFFFFLL);
    }

    else
    {
      v4 = 1;
      while (v3 != -4096)
      {
        v5 = v2 + v4++;
        v2 = v5 & (qword_1ECE75510 - 1);
        v3 = *(qword_1ECE75500 + 16 * v2);
        if (v3 == v1)
        {
          goto LABEL_3;
        }
      }
    }
  }

  std::mutex::unlock(&mlir::ANEPropertiesRegistry::instance);
}

void *llvm::DenseMap<mlir::MLIRContext *,mlir::ANEProperties,llvm::DenseMapInfo<mlir::MLIRContext *,void>,llvm::detail::DenseMapPair<mlir::MLIRContext *,mlir::ANEProperties>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = *a1 + 16 * v26;
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = *a1 + 16 * (v31 & v25);
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          *v22 = v24;
          v23 = *(v16 + 4);
          *(v22 + 10) = *(v16 + 10);
          *(v22 + 8) = v23;
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

uint64_t _GLOBAL__sub_I_ANEProperties_cpp()
{
  qword_1ECE75510 = 0;
  mlir::ANEPropertiesRegistry::instance = 850045863;
  *algn_1ECE754C8 = 0u;
  *&algn_1ECE754C8[16] = 0u;
  *&algn_1ECE754C8[32] = 0u;
  *&algn_1ECE754C8[48] = 0u;
  *(&qword_1ECE75500 + 4) = 0u;
  return __cxa_atexit(mlir::ANEPropertiesRegistry::~ANEPropertiesRegistry, &mlir::ANEPropertiesRegistry::instance, &dword_1DF9BF000);
}

BOOL mlir::hasUniqueValues(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v40 = a1;
  v43 = v45;
  v44 = 0x400000000;
  v47 = 0;
  v48 = 0;
  v46 = &v47;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v38, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v40);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v36, a1, NumElements);
  while (v39 != v37)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v38, &__p);
    if (v48)
    {
      goto LABEL_18;
    }

    v14 = v43;
    v15 = v44;
    v16 = (v43 + 16 * v44);
    if (!v44)
    {
      goto LABEL_27;
    }

    v17 = __p;
    v18 = 16 * v44;
    v19 = v43;
    while (*(v19 + 2) > 0x40u)
    {
      if (llvm::APInt::equalSlowCase(v19, &__p))
      {
        goto LABEL_25;
      }

LABEL_22:
      v19 = (v19 + 16);
      v18 -= 16;
      if (!v18)
      {
        goto LABEL_26;
      }
    }

    if (*v19 != v17)
    {
      goto LABEL_22;
    }

LABEL_25:
    if (v18)
    {
      goto LABEL_30;
    }

LABEL_26:
    if (v15 < 4)
    {
LABEL_27:
      if (v15 >= HIDWORD(v44))
      {
        if (v14 <= &__p && v16 > &__p)
        {
          v35 = (&__p - v14);
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v43, v15 + 1);
          v14 = v43;
          p_p = &v35[v43];
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v43, v15 + 1);
          p_p = &__p;
          v14 = v43;
        }
      }

      else
      {
        p_p = &__p;
      }

      v21 = v14 + 16 * v44;
      *(v21 + 2) = *(p_p + 2);
      *v21 = *p_p;
      *(p_p + 2) = 0;
      LODWORD(v44) = v44 + 1;
      goto LABEL_30;
    }

    while (2)
    {
      v23 = v47;
      v24 = &v47;
      if (v46 == &v47)
      {
        goto LABEL_49;
      }

      v25 = v47;
      v26 = &v47;
      if (v47)
      {
        do
        {
          v24 = v25;
          v25 = v25[1];
        }

        while (v25);
      }

      else
      {
        do
        {
          v24 = v26[2];
          v27 = *v24 == v26;
          v26 = v24;
        }

        while (v27);
      }

      if ((llvm::APInt::compare((v24 + 4), v14) & 0x80000000) != 0)
      {
LABEL_49:
        if (v23)
        {
          v28 = v24 + 1;
        }

        else
        {
          v24 = &v47;
          v28 = &v47;
        }

        if (!*v28)
        {
LABEL_53:
          v29 = operator new(0x30uLL);
          v29[10] = *(v14 + 2);
          *(v29 + 4) = *v14;
          *(v14 + 2) = 0;
          *v29 = 0;
          *(v29 + 1) = 0;
          *(v29 + 2) = v24;
          *v28 = v29;
          if (*v46)
          {
            v46 = *v46;
            v22 = *v28;
          }

          else
          {
            v22 = v29;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v47, v22);
          ++v48;
        }
      }

      else
      {
        v28 = &v47;
        v24 = &v47;
        if (!v23)
        {
          goto LABEL_53;
        }

        while (1)
        {
          while (1)
          {
            v24 = v23;
            if ((llvm::APInt::compare(v14, (v23 + 4)) & 0x80000000) == 0)
            {
              break;
            }

            v23 = *v23;
            v28 = v24;
            if (!*v24)
            {
              goto LABEL_53;
            }
          }

          if ((llvm::APInt::compare((v23 + 4), v14) & 0x80000000) == 0)
          {
            break;
          }

          v23 = v23[1];
          if (!v23)
          {
            v28 = v24 + 1;
            goto LABEL_53;
          }
        }
      }

      v14 = (v14 + 16);
      if (v14 != v16)
      {
        continue;
      }

      break;
    }

    if (v44)
    {
      v30 = (v43 + 16 * v44 - 8);
      v31 = -16 * v44;
      v32 = v30;
      do
      {
        v33 = *v32;
        v32 -= 4;
        if (v33 >= 0x41)
        {
          v34 = *(v30 - 1);
          if (v34)
          {
            operator delete[](v34);
          }
        }

        v30 = v32;
        v31 += 16;
      }

      while (v31);
    }

    LODWORD(v44) = 0;
LABEL_18:
    std::set<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::insert[abi:nn200100](&v46, &__p);
LABEL_30:
    if (v42 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    ++v39;
  }

  v3 = mlir::DenseElementsAttr::getNumElements(&v40);
  v4 = v44;
  v5 = v48;
  std::__tree<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::destroy(v47);
  v6 = v43;
  if (v44)
  {
    v7 = (v43 + 16 * v44 - 8);
    v8 = -16 * v44;
    v9 = v7;
    do
    {
      v10 = *v9;
      v9 -= 4;
      if (v10 >= 0x41)
      {
        v11 = *(v7 - 1);
        if (v11)
        {
          operator delete[](v11);
        }
      }

      v7 = v9;
      v8 += 16;
    }

    while (v8);
    v6 = v43;
  }

  if (v6 != v45)
  {
    free(v6);
  }

  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = v4;
  }

  return v3 == v12;
}

uint64_t mlir::getSI32TensorAttr(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 1);
  v6 = mlir::RankedTensorType::get(v10, 1, IntegerType, 0);
  if (v6)
  {
    v7 = v6;
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  return mlir::DenseElementsAttr::getFromRawBuffer(v6, v8, a2, 4 * a3, 4, 1, 1);
}

uint64_t mlir::getSI64TensorAttr(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 1);
  v6 = mlir::RankedTensorType::get(v10, 1, IntegerType, 0);
  if (v6)
  {
    v7 = v6;
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  return mlir::DenseElementsAttr::getFromRawBuffer(v6, v8, a2, 8 * a3, 8, 1, 1);
}

void std::__tree<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::destroy(*a1);
    std::__tree<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::destroy(a1[1]);
    if (*(a1 + 10) >= 0x41u)
    {
      v2 = a1[4];
      if (v2)
      {
        operator delete[](v2);
      }
    }

    operator delete(a1);
  }
}

uint64_t std::set<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::insert[abi:nn200100](uint64_t **a1, llvm::APInt *this)
{
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v6 = v4;
        if ((llvm::APInt::compare(this, (v4 + 4)) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      result = llvm::APInt::compare((v6 + 4), this);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      v4 = v6[1];
      if (!v4)
      {
        v5 = v6 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = a1 + 1;
LABEL_8:
    v8 = operator new(0x30uLL);
    v8[10] = *(this + 2);
    *(v8 + 4) = *this;
    *(this + 2) = 0;
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = v6;
    *v5 = v8;
    v9 = **a1;
    if (v9)
    {
      *a1 = v9;
      v10 = *v5;
    }

    else
    {
      v10 = v8;
    }

    result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v10);
    a1[2] = (a1[2] + 1);
  }

  return result;
}

BOOL mlir::detail::is_constant_int_zero(uint64_t a1)
{
  if (*(*mlir::getElementTypeOrSelf((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  v11[0] = 0;
  v11[1] = 0;
  __p = v11;
  v12 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v12);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__p, DefiningOp) || (mlir::ElementsAttr::isSplat(v11) & 1) == 0)
  {
    return 0;
  }

  mlir::ElementsAttr::value_begin<llvm::APInt>(v11, &v12);
  if (BYTE1(v12))
  {
    v4 = 0;
  }

  else
  {
    v4 = v14;
  }

  if (v12 == 1)
  {
    v5 = v13 + 16 * v4;
    v10 = *(v5 + 8);
    if (v10 > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, v5);
      if (v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      __p = *v5;
      if (v12)
      {
        goto LABEL_19;
      }
    }

LABEL_17:
    v6 = v13;
    v13 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    goto LABEL_19;
  }

  (*(*v13 + 24))(&__p);
  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v7 = v10;
  if (v10 <= 0x40)
  {
    return __p == 0;
  }

  result = llvm::APInt::countLeadingZerosSlowCase(&__p) == v7;
  if (__p)
  {
    v8 = result;
    operator delete[](__p);
    return v8;
  }

  return result;
}

BOOL mlir::detail::is_constant_fp_value<unsigned long long>(unint64_t *a1, unint64_t a2)
{
  v32[3] = *MEMORY[0x1E69E9840];
  v4 = *(*mlir::getElementTypeOrSelf((a1[1] & 0xFFFFFFFFFFFFFFF8)) + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v28 = 0;
  v30 = &v28;
  v31 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v31);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v30, DefiningOp) && mlir::DenseElementsAttr::isSplat(&v28))
  {
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v28, &v31);
    v22 = llvm::APFloat::convertToFloat(&v31);
    v23 = v32[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v24) == v23)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v32);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v32);
    }
  }

  else
  {
    v31 = 0;
    v32[0] = 0;
    v29 = &v31;
    v30 = a1;
    v25 = mlir::Value::getDefiningOp(&v30);
    if (!v25)
    {
      return 0;
    }

    if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v29, v25) & 1) == 0)
    {
      return 0;
    }

    SingleFloat = mlir::getSingleFloatValue<float>(v31, v32[0]);
    if ((SingleFloat & 0x100000000) == 0)
    {
      return 0;
    }

    v22 = *&SingleFloat;
  }

  return v22 == a2;
}

BOOL mlir::detail::is_constant_fp_value<float>(unint64_t *a1, float a2)
{
  v32[3] = *MEMORY[0x1E69E9840];
  v4 = *(*mlir::getElementTypeOrSelf((a1[1] & 0xFFFFFFFFFFFFFFF8)) + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v28 = 0;
  v30 = &v28;
  v31 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v31);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v30, DefiningOp) && mlir::DenseElementsAttr::isSplat(&v28))
  {
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v28, &v31);
    v22 = llvm::APFloat::convertToFloat(&v31);
    v23 = v32[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v24) == v23)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v32);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v32);
    }
  }

  else
  {
    v31 = 0;
    v32[0] = 0;
    v29 = &v31;
    v30 = a1;
    v25 = mlir::Value::getDefiningOp(&v30);
    if (!v25)
    {
      return 0;
    }

    if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v29, v25) & 1) == 0)
    {
      return 0;
    }

    SingleFloat = mlir::getSingleFloatValue<float>(v31, v32[0]);
    if ((SingleFloat & 0x100000000) == 0)
    {
      return 0;
    }

    v22 = *&SingleFloat;
  }

  return v22 == a2;
}

uint64_t mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseFPElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::mps::getBNNSDataType(void *a1)
{
  v1 = 65552;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  if (mlir::Type::isF32(&ElementTypeOrSelf))
  {
    return 65568;
  }

  if (mlir::Type::isF16(&ElementTypeOrSelf))
  {
    return v1;
  }

  if (mlir::Type::isBF16(&ElementTypeOrSelf))
  {
    return 98320;
  }

  v1 = 262152;
  if (mlir::Type::isInteger(&ElementTypeOrSelf, 64))
  {
    return 262208;
  }

  if (mlir::Type::isInteger(&ElementTypeOrSelf, 32))
  {
    return 262176;
  }

  if (mlir::Type::isInteger(&ElementTypeOrSelf, 16))
  {
    return 262160;
  }

  if (mlir::Type::isInteger(&ElementTypeOrSelf, 8))
  {
    return v1;
  }

  if (mlir::Type::isInteger(&ElementTypeOrSelf, 1))
  {
    return 1048584;
  }

  result = mlir::Type::dump(&ElementTypeOrSelf);
  __break(1u);
  return result;
}

void **mlir::mps::CPUNDArray::CPUNDArray(void **a1, uint64_t a2, uint64_t a3)
{
  v35[0] = a2;
  v35[1] = a3;
  *a1 = mlir::ElementsAttr::getType(v35);
  a1[1] = 0;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 57) = 1;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  *(a1 + 88) = 0;
  a1[3] = mlir::ArrayAttr::getValue(a1);
  a1[4] = v4;
  mlir::ArrayAttr::getValue(a1);
  a1[2] = v5;
  ElementsAttrRawData = mlir::getElementsAttrRawData(v35[0]);
  NumElements = v7;
  isInteger = 0;
  if (mlir::ElementsAttr::isSplat(v35))
  {
    if (*(*mlir::AffineBinaryOpExpr::getRHS(a1) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v36 = mlir::AffineBinaryOpExpr::getRHS(a1), mlir::Type::getIntOrFloatBitWidth(&v36) <= 7))
    {
      RHS = mlir::AffineBinaryOpExpr::getRHS(a1);
      isInteger = 1;
      if (!mlir::Type::isInteger(&RHS, 1))
      {
        v33 = mlir::AffineBinaryOpExpr::getRHS(a1);
        if (!mlir::Type::isInteger(&v33, 2))
        {
          v32 = mlir::AffineBinaryOpExpr::getRHS(a1);
          if (!mlir::Type::isInteger(&v32, 3))
          {
            v31 = mlir::AffineBinaryOpExpr::getRHS(a1);
            if (!mlir::Type::isInteger(&v31, 4))
            {
              v30 = mlir::AffineBinaryOpExpr::getRHS(a1);
              isInteger = mlir::Type::isInteger(&v30, 6);
            }
          }
        }
      }
    }

    else
    {
      isInteger = 1;
    }
  }

  *(a1 + 58) = isInteger;
  mlir::mps::CPUNDArray::calculateStrides(a1);
  if (*(a1 + 58) == 1)
  {
    v36 = mlir::AffineBinaryOpExpr::getRHS(a1);
    if (mlir::Type::isInteger(&v36, 1))
    {
      ElementsAttrElementBitWidth = 8;
    }

    else
    {
      ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*a1);
    }

    if (ElementsAttrElementBitWidth)
    {
      v26 = ((ElementsAttrElementBitWidth - (ElementsAttrElementBitWidth != 0)) >> 3) + 1;
    }

    else
    {
      v26 = 0;
    }

    *(a1 + 56) = 1;
    v14 = malloc(v26);
    Value = mlir::ArrayAttr::getValue(a1);
    NumElements = mlir::ShapedType::getNumElements(Value, v28);
    v36 = mlir::AffineBinaryOpExpr::getRHS(a1);
    if (mlir::Type::isInteger(&v36, 1))
    {
      *v14 = *ElementsAttrRawData != 0;
    }

    else
    {
      memcpy(v14, ElementsAttrRawData, v26);
    }
  }

  else
  {
    v36 = mlir::AffineBinaryOpExpr::getRHS(a1);
    if (mlir::Type::isInteger(&v36, 1))
    {
      *(a1 + 56) = 1;
      v11 = mlir::ArrayAttr::getValue(a1);
      v13 = mlir::ShapedType::getNumElements(v11, v12);
      v14 = malloc(v13);
      v15 = mlir::ArrayAttr::getValue(a1);
      v17 = mlir::ShapedType::getNumElements(v15, v16);
      if (NumElements)
      {
        v18 = v14 + 3;
        v19 = v17;
        do
        {
          if (v19)
          {
            if (v19 >= 8)
            {
              v20 = 8;
            }

            else
            {
              v20 = v19;
            }

            if (v20 <= 1)
            {
              v21 = 1;
            }

            else
            {
              v21 = v20;
            }

            v22 = *ElementsAttrRawData;
            v23 = vdupq_n_s64(v21 - 1);
            v24 = vmovn_s64(vcgeq_u64(v23, xmmword_1E09700F0));
            if (vuzp1_s8(vuzp1_s16(v24, 0), 0).u8[0])
            {
              *(v18 - 3) = v22 & 1;
            }

            if (vuzp1_s8(vuzp1_s16(v24, 0), 0).i8[1])
            {
              *(v18 - 2) = (v22 & 2) != 0;
            }

            if (vuzp1_s8(vuzp1_s16(0, vmovn_s64(vcgeq_u64(v23, xmmword_1E096E650))), 0).i8[2])
            {
              *(v18 - 1) = (v22 & 4) != 0;
              *v18 = (v22 & 8) != 0;
            }

            v25 = vmovn_s64(vcgeq_u64(v23, xmmword_1E097BBE0));
            if (vuzp1_s8(0, vuzp1_s16(v25, 0)).i32[1])
            {
              v18[1] = (v22 & 0x10) != 0;
            }

            if (vuzp1_s8(0, vuzp1_s16(v25, 0)).i8[5])
            {
              v18[2] = (v22 & 0x20) != 0;
            }

            if (vuzp1_s8(0, vuzp1_s16(0, vmovn_s64(vcgeq_u64(v23, xmmword_1E096E670)))).i8[6])
            {
              v18[3] = (v22 & 0x40) != 0;
              v18[4] = v22 >> 7;
            }
          }

          v19 -= 8;
          ++ElementsAttrRawData;
          v18 += 8;
          --NumElements;
        }

        while (NumElements);
      }

      NumElements = v17;
    }

    else
    {
      *(a1 + 56) = 0;
      v14 = ElementsAttrRawData;
    }
  }

  a1[5] = v14;
  a1[6] = NumElements;
  return a1;
}

int8x16_t mlir::mps::CPUNDArray::calculateStrides(mlir::mps::CPUNDArray *this)
{
  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  if (mlir::Type::isInteger(&RHS, 1))
  {
    ElementsAttrElementBitWidth = 8;
  }

  else
  {
    ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*this);
  }

  v5 = (ElementsAttrElementBitWidth & 7) == 0 && ElementsAttrElementBitWidth > 7;
  *(this + 88) = v5;
  if (v5)
  {
    v6 = ElementsAttrElementBitWidth >> 3;
    v7 = *(this + 8);
    v8 = *(this + 2);
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = (*(this + 9) - v7) >> 3;
    if (v8 <= v9)
    {
      if (v8 < v9)
      {
        *(this + 9) = v7 + 8 * v8;
      }
    }

    else
    {
      std::vector<mlir::Value>::__append(this + 64, v8 - v9);
      v7 = *(this + 8);
    }

    v10 = *(this + 58);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6;
    }

    v7->i64[0] = v11;
    v12 = *(this + 2);
    if (v12 >= 2)
    {
      v13 = 0;
      v14 = -1;
      do
      {
        if (v10)
        {
          v15 = 0;
        }

        else
        {
          v15 = *(*(this + 3) + 8 * (v12 + v14)) * v7->i64[v13];
        }

        v7->i64[v13 + 1] = v15;
        v12 = *(this + 2);
        --v14;
        v16 = v13 + 2;
        ++v13;
      }

      while (v16 < v12);
    }

    v17 = *(this + 9);
    v18 = (v17 - 8);
    if (v7 != v17 && v18 > v7)
    {
      v20 = v17 - 1;
      v21 = &v7->u64[1];
      if (&v17[-1] <= &v7->u64[1])
      {
        v22 = &v7->u64[1];
      }

      else
      {
        v22 = v17 - 1;
      }

      v23 = &v22[-1].i8[8];
      if (v23 == v7)
      {
        v24 = v7;
      }

      else
      {
        v24 = &v7->i8[1];
      }

      v25 = v23 == v7;
      v26 = (v23 - v24) >> 4;
      if (!v25)
      {
        ++v26;
      }

      if (v26 < 0x13)
      {
        goto LABEL_50;
      }

      v27 = v20 <= v21 ? &v7->u64[1] : &v17[-1];
      v28 = (v27 - 8);
      v29 = v28 == v7 ? v7 : &v7->i8[1];
      v25 = v28 == v7;
      v30 = (v28 - v29) >> 4;
      if (!v25)
      {
        ++v30;
      }

      if (v7 >= v17 || v17 - 8 * v30 - 8 >= v21 + 8 * v30)
      {
        v35 = v26 + 1;
        v36 = (v26 + 1) & 0x3FFFFFFFFFFFFFFCLL;
        v18 = (v18 - 8 * v36);
        v31 = &v7->i64[v36];
        v37 = v7 + 1;
        v38 = v36;
        do
        {
          v39 = v37[-1];
          v40 = *v37;
          v41 = vextq_s8(v20[-1], v20[-1], 8uLL);
          v37[-1] = vextq_s8(*v20, *v20, 8uLL);
          *v37 = v41;
          result = vextq_s8(v39, v39, 8uLL);
          v20[-1] = vextq_s8(v40, v40, 8uLL);
          *v20 = result;
          v37 += 2;
          v20 -= 2;
          v38 -= 4;
        }

        while (v38);
        if (v35 == v36)
        {
          return result;
        }
      }

      else
      {
LABEL_50:
        v31 = v7;
      }

      v32 = (v31 + 1);
      do
      {
        v33 = *(v32 - 8);
        *(v32 - 8) = v18->i64[0];
        v18->i64[0] = v33;
        v18 = (v18 - 8);
        v34 = v32 >= v18;
        v32 += 8;
      }

      while (!v34);
    }
  }

  return result;
}

unint64_t mlir::mps::CPUNDArray::getElementDataSize(mlir::mps::CPUNDArray *this)
{
  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  if (mlir::Type::isInteger(&RHS, 1))
  {
    ElementsAttrElementBitWidth = 8;
  }

  else
  {
    ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*this);
  }

  if (ElementsAttrElementBitWidth)
  {
    return ((ElementsAttrElementBitWidth - (ElementsAttrElementBitWidth != 0)) >> 3) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::mps::CPUNDArray::CPUNDArray(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v18[0] = a2;
  v18[1] = a3;
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 55) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  *(a1 + 88) = 0;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v18);
  v8 = v7;
  isSplat = mlir::ElementsAttr::isSplat(v18);
  *a1 = mlir::RankedTensorType::get(ArgAttrsAttr, v8, isSplat, 0);
  a1[3] = mlir::ArrayAttr::getValue(a1);
  a1[4] = v10;
  mlir::ArrayAttr::getValue(a1);
  a1[2] = v11;
  Value = mlir::ArrayAttr::getValue(a1);
  if (mlir::ShapedType::getNumElements(Value, v13) == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4;
  }

  *(a1 + 58) = v14;
  mlir::mps::CPUNDArray::calculateStrides(a1);
  *(a1 + 56) = 1;
  if (*(a1 + 58) == 1)
  {
    RHS = mlir::AffineBinaryOpExpr::getRHS(a1);
    if (mlir::Type::isInteger(&RHS, 1))
    {
      ElementsAttrElementBitWidth = 8;
    }

    else
    {
      ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*a1);
    }

    if (ElementsAttrElementBitWidth)
    {
      BufferByteSize = ((ElementsAttrElementBitWidth - (ElementsAttrElementBitWidth != 0)) >> 3) + 1;
    }

    else
    {
      BufferByteSize = 0;
    }
  }

  else
  {
    BufferByteSize = mlir::mps::CPUNDArray::getBufferByteSize(a1);
  }

  a1[5] = malloc(BufferByteSize);
  a1[6] = BufferByteSize;
  return a1;
}

unint64_t mlir::mps::CPUNDArray::getBufferByteSize(mlir::mps::CPUNDArray *this)
{
  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  if (mlir::Type::isInteger(&RHS, 1))
  {
    Value = mlir::ArrayAttr::getValue(this);
    return mlir::ShapedType::getNumElements(Value, v3);
  }

  else
  {
    v5 = *this;
    if (v5)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    return mlir::mps::getElementsAttrStorageSize(v5, v6);
  }
}

void *std::vector<long long>::vector[abi:nn200100](void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - *a2);
    *a1 = v6;
    a1[1] = v6;
    v7 = &v6[v5];
    a1[2] = &v6[v5];
    memcpy(v6, v4, v5);
    a1[1] = v7;
  }

  return a1;
}

uint64_t *mlir::mps::CPUNDArray::tryMakeAliasedArray@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v13 = a1;
  v14 = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v13);
  if (mlir::Type::isInteger(&isSplat, 1))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
    v8 = v7;
    v9 = mlir::ElementsAttr::isSplat(&v13);
    v10 = mlir::RankedTensorType::get(ArgAttrsAttr, v8, v9, 0);
    mlir::tryCreateMutableElementsAttr(v10, a3);
    if (*a3)
    {
      return mlir::mps::CPUNDArray::CPUNDArray(a4, *a3, *(a3 + 8));
    }
  }

  return mlir::mps::CPUNDArray::CPUNDArray(a4, v13, v14, 0);
}

void mlir::mps::CPUNDArray::~CPUNDArray(mlir::mps::CPUNDArray *this)
{
  if (*(this + 56) == 1)
  {
    v2 = *(this + 5);
    if (v2)
    {
      free(v2);
    }
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }
}

uint64_t mlir::mps::CPUNDArray::getNumElements(mlir::mps::CPUNDArray *this)
{
  Value = mlir::ArrayAttr::getValue(this);

  return mlir::ShapedType::getNumElements(Value, v2);
}

void *mlir::mps::CPUNDArray::getElementsAttr(mlir::mps::CPUNDArray *this, int a2, int a3)
{
  if (*(this + 58))
  {
    NumElements = 1;
  }

  else
  {
    Value = mlir::ArrayAttr::getValue(this);
    NumElements = mlir::ShapedType::getNumElements(Value, v8);
  }

  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  if (!mlir::Type::isInteger(&RHS, 1))
  {
    if (a3 && (v13 = NumElements - 2, NumElements >= 2))
    {
      v14 = (this + 40);
      v15 = *(this + 5);
      RHS = mlir::AffineBinaryOpExpr::getRHS(this);
      if (mlir::Type::isUnsignedInteger(&RHS, 8))
      {
        v16 = *v15;
        if (v16 == v15[1])
        {
          v17 = v15 + 2;
          v18 = -1;
          while (v13)
          {
            v19 = *v17++;
            --v18;
            --v13;
            if (v16 != v19)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_64;
        }

LABEL_103:
        v41 = 0;
        v39 = *(this + 5);
        v42 = *(this + 6);
        if (a2)
        {
LABEL_73:
          v47 = mlir::AffineBinaryOpExpr::getRHS(this);
          if (mlir::mps::isCompatibleWithDenseStorage(v47))
          {
            v51 = *this;
            if (v51)
            {
              v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
            }

            else
            {
              v52 = 0;
            }

            result = mlir::DenseElementsAttr::getFromRawBuffer(v51, v52, v39, v42, v48, v49, v50);
            if (result)
            {
              v53 = result;
              mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*result + 8);
              result = v53;
            }
          }

          else
          {
            result = 0;
          }

          goto LABEL_105;
        }

LABEL_104:
        result = mlir::createRawElementsAttr(*this, v39, v42);
LABEL_105:
        if (!v41)
        {
          return result;
        }

        v24 = result;
        operator delete(v41);
        return v24;
      }

      if (mlir::Type::isInteger(&RHS, 8))
      {
        v21 = *v15;
        if (v21 != v15[1])
        {
          goto LABEL_103;
        }

        v22 = v15 + 2;
        v18 = -1;
        while (v13)
        {
          v23 = *v22++;
          --v18;
          --v13;
          if (v21 != v23)
          {
            goto LABEL_62;
          }
        }
      }

      else if (mlir::Type::isUnsignedInteger(&RHS, 16))
      {
        v25 = *v15;
        if (v25 != *(v15 + 1))
        {
          goto LABEL_103;
        }

        v26 = (v15 + 4);
        v18 = -1;
        while (v13)
        {
          v27 = *v26++;
          --v18;
          --v13;
          if (v25 != v27)
          {
            goto LABEL_62;
          }
        }
      }

      else if (mlir::Type::isInteger(&RHS, 16))
      {
        v28 = *v15;
        if (v28 != *(v15 + 1))
        {
          goto LABEL_103;
        }

        v29 = (v15 + 4);
        v18 = -1;
        while (v13)
        {
          v30 = *v29++;
          --v18;
          --v13;
          if (v28 != v30)
          {
            goto LABEL_62;
          }
        }
      }

      else if (mlir::Type::isUnsignedInteger(&RHS, 32))
      {
        if (*v15 != *(v15 + 1))
        {
          goto LABEL_103;
        }

        v31 = (v15 + 8);
        v18 = -1;
        while (v13)
        {
          v32 = *v31++;
          --v18;
          --v13;
          if (*v15 != v32)
          {
            goto LABEL_62;
          }
        }
      }

      else if (mlir::Type::isInteger(&RHS, 32))
      {
        if (*v15 != *(v15 + 1))
        {
          goto LABEL_103;
        }

        v33 = (v15 + 8);
        v18 = -1;
        while (v13)
        {
          v34 = *v33++;
          --v18;
          --v13;
          if (*v15 != v34)
          {
            goto LABEL_62;
          }
        }
      }

      else if (mlir::Type::isUnsignedInteger(&RHS, 64))
      {
        if (*v15 != *(v15 + 1))
        {
          goto LABEL_103;
        }

        v35 = (v15 + 16);
        v18 = -1;
        while (v13)
        {
          v36 = *v35++;
          --v18;
          --v13;
          if (*v15 != v36)
          {
            goto LABEL_62;
          }
        }
      }

      else if (mlir::Type::isInteger(&RHS, 64))
      {
        if (*v15 != *(v15 + 1))
        {
          goto LABEL_103;
        }

        v37 = (v15 + 16);
        v18 = -1;
        while (v13)
        {
          v38 = *v37++;
          --v18;
          --v13;
          if (*v15 != v38)
          {
LABEL_62:
            if (-v18 >= NumElements)
            {
              break;
            }

            goto LABEL_63;
          }
        }
      }

      else if (mlir::Type::isF32(&RHS))
      {
        if (*v15 != *(v15 + 1))
        {
          goto LABEL_103;
        }

        v54 = (v15 + 8);
        v55 = -1;
        while (v13)
        {
          v56 = *v54++;
          --v55;
          --v13;
          if (*v15 != v56)
          {
            goto LABEL_98;
          }
        }
      }

      else if (mlir::Type::isF16(&RHS))
      {
        if (*v15 != *(v15 + 1))
        {
          goto LABEL_103;
        }

        v57 = (v15 + 4);
        v55 = -1;
        while (v13)
        {
          v58 = *v57++;
          --v55;
          --v13;
          if (*v15 != v58)
          {
            goto LABEL_98;
          }
        }
      }

      else if (mlir::Type::isBF16(&RHS))
      {
        LODWORD(v59) = *v15 << 16;
        if (v59 != COERCE_FLOAT(*(v15 + 1) << 16))
        {
          goto LABEL_103;
        }

        v60 = (v15 + 4);
        v55 = -1;
        while (v13)
        {
          v61 = *v60++;
          --v55;
          --v13;
          if (v59 != COERCE_FLOAT(v61 << 16))
          {
            goto LABEL_98;
          }
        }
      }

      else
      {
        v62 = RHS;
        v63 = *(*RHS + 136);
        if (v63 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v62 = 0;
        }

        v75 = v62;
        if (v63 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          goto LABEL_103;
        }

        v74 = mlir::AffineMapAttr::getValue(&v75);
        if (mlir::Type::isF32(&v74))
        {
          if (*v15 != *(v15 + 2))
          {
            goto LABEL_103;
          }

          v64 = *(v15 + 1);
          if (v64 != *(v15 + 3))
          {
            goto LABEL_103;
          }

          v65 = (v15 + 20);
          v55 = -1;
          while (v13)
          {
            v66 = *(v65 - 1);
            v67 = *v65;
            --v55;
            v65 += 2;
            --v13;
            if (*v15 != v66 || v64 != v67)
            {
              goto LABEL_98;
            }
          }
        }

        else
        {
          v74 = mlir::AffineMapAttr::getValue(&v75);
          if (!mlir::Type::isF32(&v74))
          {
            goto LABEL_103;
          }

          if (*v15 != *(v15 + 2))
          {
            goto LABEL_103;
          }

          v69 = *(v15 + 1);
          if (v69 != *(v15 + 3))
          {
            goto LABEL_103;
          }

          v70 = (v15 + 10);
          v55 = -1;
          while (v13)
          {
            v71 = *(v70 - 1);
            v72 = *v70;
            --v55;
            v70 += 2;
            --v13;
            if (*v15 != v71 || v69 != v72)
            {
LABEL_98:
              if (-v55 < NumElements)
              {
                goto LABEL_63;
              }

              break;
            }
          }
        }
      }
    }

    else
    {
LABEL_63:
      v14 = (this + 40);
      v39 = *(this + 5);
      if (NumElements != 1)
      {
        v41 = 0;
        v42 = *(this + 6);
        if (a2)
        {
          goto LABEL_73;
        }

        goto LABEL_104;
      }
    }

LABEL_64:
    RHS = mlir::AffineBinaryOpExpr::getRHS(this);
    if (mlir::Type::isInteger(&RHS, 1))
    {
      v40 = 1;
    }

    else
    {
      ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*this);
      if (ElementsAttrElementBitWidth <= 7)
      {
        v44 = **v14 & ~(-1 << ElementsAttrElementBitWidth);
        v41 = operator new(1uLL);
        *v41 = v44;
        v45 = v41 + 1;
        goto LABEL_72;
      }

      v40 = ElementsAttrElementBitWidth >> 3;
    }

    v46 = *v14;
    v41 = operator new(v40);
    v45 = &v41[v40];
    memcpy(v41, v46, v40);
LABEL_72:
    v42 = v45 - v41;
    v39 = v41;
    if (a2)
    {
      goto LABEL_73;
    }

    goto LABEL_104;
  }

  v9 = *(this + 5);
  v10 = *this;
  if (!a2)
  {
    return mlir::createElementsAttr<BOOL>(v10, *(this + 5), NumElements);
  }

  if (v10)
  {
    v11 = *this;
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = mlir::DenseElementsAttr::get(v10, v12, v9, NumElements);
  if (result)
  {
    v24 = result;
    mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*result + 8);
    return v24;
  }

  return result;
}

BOOL mlir::mps::CPUNDArray::isFloatType(mlir::mps::CPUNDArray *this)
{
  v1 = *(*mlir::AffineBinaryOpExpr::getRHS(this) + 136);
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

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

float mlir::mps::CPUNDArray::getSplatFloatValue(mlir::mps::CPUNDArray *this)
{
  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  v3 = *(*RHS + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    RHS = 0;
  }

  v26 = RHS;
  if (mlir::Type::isF32(&v26))
  {
    return **(this + 5);
  }

  if (mlir::Type::isF16(&v26))
  {
    _H0 = **(this + 5);
    __asm { FCVT            S0, H0 }
  }

  else
  {
    isBF16 = mlir::Type::isBF16(&v26);
    result = 0.0;
    if (isBF16)
    {
      LODWORD(result) = **(this + 5) << 16;
    }
  }

  return result;
}

uint64_t mlir::mps::CPUNDArray::getSplatIntegerValue(mlir::mps::CPUNDArray *this)
{
  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  if (*(*RHS + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v3 = RHS;
  }

  else
  {
    v3 = 0;
  }

  v8 = v3;
  Width = mlir::IntegerType::getWidth(&v8);
  result = 0;
  if (Width <= 7)
  {
    if ((Width - 3) >= 2 && Width != 1 && Width != 6)
    {
      return result;
    }

    return **(this + 5);
  }

  if (Width > 31)
  {
    if (Width == 32)
    {
      return **(this + 5);
    }

    else if (Width == 64)
    {
      return **(this + 5);
    }
  }

  else
  {
    if (Width == 8)
    {
      return **(this + 5);
    }

    if (Width == 16)
    {
      return **(this + 5);
    }
  }

  return result;
}

float16x4_t mlir::mps::CPUNDArray::getSplatComplexValue(mlir::mps::CPUNDArray *this)
{
  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  Value = mlir::AffineMapAttr::getValue(&RHS);
  if (mlir::Type::isF32(&Value))
  {
    return **(this + 5);
  }

  else
  {
    isF16 = mlir::Type::isF16(&Value);
    *&result = 0.0;
    if (isF16)
    {
      result.i32[0] = **(this + 5);
      return vcvtq_f32_f16(result).u64[0];
    }
  }

  return result;
}

void *mlir::mps::CPUNDArray::getBNNSDescriptor@<X0>(mlir::mps::CPUNDArray *this@<X0>, uint64_t a2@<X8>)
{
  result = mlir::AffineBinaryOpExpr::getRHS(this);
  v6 = *(this + 3);
  v5 = *(this + 4);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  if (v5 <= 8)
  {
    *(a2 + 4) = ((v5 & 0x7FFF) << 16) | 0x8000;
    v7 = result;
    *(a2 + 144) = mlir::mps::getBNNSDataType(result);
    result = mlir::mps::getDataSize(v7);
    if (v5)
    {
      v8 = v6 + 8 * v5;
      *(a2 + 8) = *(v8 - 8);
      if (v5 != 1)
      {
        *(a2 + 16) = *(v8 - 16);
        if (v5 != 2)
        {
          *(a2 + 24) = *(v8 - 24);
          if (v5 != 3)
          {
            *(a2 + 32) = *(v8 - 32);
            if (v5 != 4)
            {
              *(a2 + 40) = *(v8 - 40);
              if (v5 != 5)
              {
                *(a2 + 48) = *(v8 - 48);
                if (v5 != 6)
                {
                  *(a2 + 56) = *(v8 - 56);
                  if (v5 != 7)
                  {
                    *(a2 + 64) = *(v8 - 64);
                  }
                }
              }
            }
          }
        }
      }

      *(a2 + 72) = 1;
      v9 = v5 - 1;
      if (v5 != 1)
      {
        v10 = (a2 + 80);
        v11 = 1;
        do
        {
          v11 *= *(v10 - 9);
          *v10++ = v11;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      *(a2 + 72) = 1;
    }

    *(a2 + 136) = 0;
    *(a2 + 164) = 1065353216;
    if (*(this + 4) <= 3uLL)
    {
      *(a2 + 4) = v5 << 16;
    }
  }

  return result;
}

void mlir::mps::CPUNDArrayKernel::cpuTilingEngine(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a4;
  v9 = *(a4 + 8);
  v11 = v9 - *a4;
  if (v9 == *a4)
  {
    v12 = 0;
    v62 = 0;
  }

  else
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }

    v12 = operator new(v9 - v10);
    v62 = &v12[v11];
    memcpy(v12, v10, v11);
  }

  v14 = *a5;
  v13 = *(a5 + 8);
  v15 = v13 - *a5;
  if (v13 == *a5)
  {
    v16 = 0;
    v71 = 0;
  }

  else
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }

    v16 = operator new(v13 - *a5);
    v71 = &v16[v15];
    memcpy(v16, v14, v15);
  }

  v17 = v62;
  if (*(a1 + 8) + a6 >= a7)
  {
    v51 = *a1;
    v83 = 0;
    v84 = 0;
    v82 = 0;
    v52 = v62 - v12;
    if (v62 != v12)
    {
      if ((v52 & 0x8000000000000000) != 0)
      {
        goto LABEL_79;
      }

      v53 = operator new(v52);
      v54 = &v53[v52];
      v82 = v53;
      v84 = &v53[v52];
      memcpy(v53, v12, v52);
      v83 = v54;
    }

    v79 = 0;
    v80 = 0;
    v81 = 0;
    v55 = v71 - v16;
    if (v71 == v16)
    {
LABEL_70:
      v51(a2, a3, &v82, &v79, a6, a7, a8);
      if (v79)
      {
        v80 = v79;
        operator delete(v79);
      }

      if (v82)
      {
        v83 = v82;
        operator delete(v82);
      }

      goto LABEL_74;
    }

    if ((v55 & 0x8000000000000000) == 0)
    {
      v56 = operator new(v71 - v16);
      v57 = &v56[v55];
      v79 = v56;
      v81 = &v56[v55];
      memcpy(v56, v16, v55);
      v80 = v57;
      goto LABEL_70;
    }

LABEL_79:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v18 = **a3;
  v19 = *(v18 + 16);
  v70 = 1;
  v64 = a6;
  v20 = (v19 & (a6 >> 63)) + a6;
  if (v20 < 0 || !v19 || (v70 = *(*(v18 + 24) + 8 * v20), v70 >= 1))
  {
    v21 = 0;
    v69 = a7 - a6;
    __sz = v62 - v12;
    v22 = a6 - a7;
    v23 = v64 - a7;
    v24 = v71 - v16;
    if (((v62 - v12) >> 3) <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = (v62 - v12) >> 3;
    }

    if (((v71 - v16) >> 3) <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = (v71 - v16) >> 3;
    }

    v58 = v26;
    v59 = v25;
    do
    {
      if (v69 <= *(a1 + 8))
      {
        goto LABEL_22;
      }

      if (v17 != v12)
      {
        v27 = *a4;
        v28 = *a2;
        v29 = v12;
        v30 = v59;
        do
        {
          v31 = *v28;
          if ((*(*v28 + 58) & 1) != 0 || ((v32 = v31[2], v22 < 0) ? (v33 = v31[2]) : (v33 = 0), (v34 = v33 + v23, v34 < 0) || (v34 <= v32 - 1 ? (v35 = v32 == 0) : (v35 = 1), v35 || *(v31[3] + 8 * v34) == 1)))
          {
            v36 = 0;
          }

          else
          {
            v36 = *(v31[8] + 8 * v34);
          }

          v37 = *v27++;
          *v29++ = v37 + v36 * v21;
          v28 += 8;
          --v30;
        }

        while (v30);
      }

      if (v71 != v16)
      {
        v38 = *a5;
        v39 = *a3;
        v40 = v16;
        v41 = v58;
        do
        {
          v42 = *v39;
          if ((*(*v39 + 58) & 1) != 0 || ((v43 = v42[2], v22 < 0) ? (v44 = v42[2]) : (v44 = 0), (v45 = v44 + v23, v45 < 0) || (v45 <= v43 - 1 ? (v46 = v43 == 0) : (v46 = 1), v46 || *(v42[3] + 8 * v45) == 1)))
          {
            v47 = 0;
          }

          else
          {
            v47 = *(v42[8] + 8 * v45);
          }

          v48 = *v38++;
          *v40++ = v48 + v47 * v21;
          ++v39;
          --v41;
        }

        while (v41);
      }

      v76 = 0;
      v77 = 0;
      v78 = 0;
      if (v17 == v12)
      {
        v49 = 0;
      }

      else
      {
        if ((__sz & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        v49 = operator new(__sz);
        v76 = v49;
        v78 = &v49[__sz];
        memcpy(v49, v12, __sz);
        v77 = &v49[__sz];
      }

      v73 = 0;
      v74 = 0;
      v75 = 0;
      if (v71 == v16)
      {
        mlir::mps::CPUNDArrayKernel::cpuTilingEngine(a1, a2, a3, &v76, &v73, v64 + 1, a7, a8);
        if (v49)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        v50 = operator new(v24);
        v73 = v50;
        v75 = &v50[v24];
        memcpy(v50, v16, v24);
        v74 = &v50[v24];
        mlir::mps::CPUNDArrayKernel::cpuTilingEngine(a1, a2, a3, &v76, &v73, v64 + 1, a7, a8);
        v74 = v50;
        operator delete(v50);
        v17 = v62;
        if (v49)
        {
LABEL_21:
          v77 = v49;
          operator delete(v49);
        }
      }

LABEL_22:
      ++v21;
    }

    while (v21 != v70);
  }

LABEL_74:
  if (v16)
  {
    operator delete(v16);
  }

  if (v12)
  {
    operator delete(v12);
  }
}

void mlir::mps::CPUNDArrayArithmeticBinaryKernel::arithmeticBinaryTileKernel(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 16);
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v117 = 0;
        v118 = 0;
        v119 = 0;
        v31 = *a3;
        v30 = *(a3 + 8);
        v32 = v30 - *a3;
        if (v30 != *a3)
        {
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }

          v33 = operator new(v30 - *a3);
          v34 = &v33[v32];
          v117 = v33;
          v119 = &v33[v32];
          memcpy(v33, v31, v32);
          v118 = v34;
        }

        v114 = 0;
        v115 = 0;
        v116 = 0;
        v35 = *a4;
        v36 = *(a4 + 8) - *a4;
        if (v36)
        {
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }

          v37 = operator new(v36);
          v38 = &v37[v36];
          v114 = v37;
          v116 = &v37[v36];
          memcpy(v37, v35, v36);
          v115 = v38;
        }

        mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)2>(a1, a2, &v117, &v114);
        if (v114)
        {
          v115 = v114;
          operator delete(v114);
        }

        v20 = v117;
        if (v117)
        {
          v118 = v117;
          goto LABEL_88;
        }

        return;
      }

      v111 = 0;
      v112 = 0;
      v113 = 0;
      v67 = *a3;
      v66 = *(a3 + 8);
      v68 = v66 - *a3;
      if (v66 != *a3)
      {
        if ((v68 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v69 = operator new(v66 - *a3);
        v70 = &v69[v68];
        v111 = v69;
        v113 = &v69[v68];
        memcpy(v69, v67, v68);
        v112 = v70;
      }

      v108 = 0;
      v109 = 0;
      v110 = 0;
      v71 = *a4;
      v72 = *(a4 + 8) - *a4;
      if (v72)
      {
        if ((v72 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v73 = operator new(v72);
        v74 = &v73[v72];
        v108 = v73;
        v110 = &v73[v72];
        memcpy(v73, v71, v72);
        v109 = v74;
      }

      mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)3>(a1, a2, &v111, &v108);
      if (v108)
      {
        v109 = v108;
        operator delete(v108);
      }

      v20 = v111;
      if (v111)
      {
        v112 = v111;
        goto LABEL_88;
      }

      return;
    }

    if (v10)
    {
      v123 = 0;
      v124 = 0;
      v125 = 0;
      v49 = *a3;
      v48 = *(a3 + 8);
      v50 = v48 - *a3;
      if (v48 != *a3)
      {
        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v51 = operator new(v48 - *a3);
        v52 = &v51[v50];
        v123 = v51;
        v125 = &v51[v50];
        memcpy(v51, v49, v50);
        v124 = v52;
      }

      v120 = 0;
      v121 = 0;
      v122 = 0;
      v53 = *a4;
      v54 = *(a4 + 8) - *a4;
      if (v54)
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v55 = operator new(v54);
        v56 = &v55[v54];
        v120 = v55;
        v122 = &v55[v54];
        memcpy(v55, v53, v54);
        v121 = v56;
      }

      mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)1>(a1, a2, &v123, &v120);
      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      v20 = v123;
      if (v123)
      {
        v124 = v123;
        goto LABEL_88;
      }

      return;
    }

    v129 = 0;
    v130 = 0;
    v131 = 0;
    v12 = *a3;
    v11 = *(a3 + 8);
    v13 = v11 - *a3;
    if (v11 != *a3)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      v14 = operator new(v11 - *a3);
      v15 = &v14[v13];
      v129 = v14;
      v131 = &v14[v13];
      memcpy(v14, v12, v13);
      v130 = v15;
    }

    v126 = 0;
    v127 = 0;
    v128 = 0;
    v16 = *a4;
    v17 = *(a4 + 8) - *a4;
    if (!v17)
    {
      goto LABEL_10;
    }

    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = operator new(v17);
      v19 = &v18[v17];
      v126 = v18;
      v128 = &v18[v17];
      memcpy(v18, v16, v17);
      v127 = v19;
LABEL_10:
      mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(a1, a2, &v129, &v126);
      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      v20 = v129;
      if (v129)
      {
        v130 = v129;
LABEL_88:
        operator delete(v20);
        return;
      }

      return;
    }

LABEL_90:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v10 > 14)
  {
    if (v10 == 15)
    {
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v40 = *a3;
      v39 = *(a3 + 8);
      v41 = v39 - *a3;
      if (v39 != *a3)
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v42 = operator new(v39 - *a3);
        v43 = &v42[v41];
        v93 = v42;
        v95 = &v42[v41];
        memcpy(v42, v40, v41);
        v94 = v43;
      }

      v90 = 0;
      v91 = 0;
      v92 = 0;
      v44 = *a4;
      v45 = *(a4 + 8) - *a4;
      if (v45)
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v46 = operator new(v45);
        v47 = &v46[v45];
        v90 = v46;
        v92 = &v46[v45];
        memcpy(v46, v44, v45);
        v91 = v47;
      }

      mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)15>(a1, a2, &v93, &v90);
      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      v20 = v93;
      if (v93)
      {
        v94 = v93;
        goto LABEL_88;
      }

      return;
    }

    v87 = 0;
    v88 = 0;
    v89 = 0;
    v76 = *a3;
    v75 = *(a3 + 8);
    v77 = v75 - *a3;
    if (v75 != *a3)
    {
      if ((v77 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      v78 = operator new(v75 - *a3);
      v79 = &v78[v77];
      v87 = v78;
      v89 = &v78[v77];
      memcpy(v78, v76, v77);
      v88 = v79;
    }

    v84 = 0;
    v85 = 0;
    v86 = 0;
    v80 = *a4;
    v81 = *(a4 + 8) - *a4;
    if (v81)
    {
      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      v82 = operator new(v81);
      v83 = &v82[v81];
      v84 = v82;
      v86 = &v82[v81];
      memcpy(v82, v80, v81);
      v85 = v83;
    }

    mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)16>(a1, a2, &v87, &v84);
    if (v84)
    {
      v85 = v84;
      operator delete(v84);
    }

    v20 = v87;
    if (v87)
    {
      v88 = v87;
      goto LABEL_88;
    }

    return;
  }

  if (v10 != 4)
  {
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v58 = *a3;
    v57 = *(a3 + 8);
    v59 = v57 - *a3;
    if (v57 != *a3)
    {
      if ((v59 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      v60 = operator new(v57 - *a3);
      v61 = &v60[v59];
      v99 = v60;
      v101 = &v60[v59];
      memcpy(v60, v58, v59);
      v100 = v61;
    }

    v96 = 0;
    v97 = 0;
    v98 = 0;
    v62 = *a4;
    v63 = *(a4 + 8) - *a4;
    if (v63)
    {
      if ((v63 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      v64 = operator new(v63);
      v65 = &v64[v63];
      v96 = v64;
      v98 = &v64[v63];
      memcpy(v64, v62, v63);
      v97 = v65;
    }

    mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)5>(a1, a2, &v99, &v96);
    if (v96)
    {
      v97 = v96;
      operator delete(v96);
    }

    v20 = v99;
    if (v99)
    {
      v100 = v99;
      goto LABEL_88;
    }

    return;
  }

  v105 = 0;
  v106 = 0;
  v107 = 0;
  v22 = *a3;
  v21 = *(a3 + 8);
  v23 = v21 - *a3;
  if (v21 != *a3)
  {
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    v24 = operator new(v21 - *a3);
    v25 = &v24[v23];
    v105 = v24;
    v107 = &v24[v23];
    memcpy(v24, v22, v23);
    v106 = v25;
  }

  __p = 0;
  v103 = 0;
  v104 = 0;
  v26 = *a4;
  v27 = *(a4 + 8) - *a4;
  if (v27)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    v28 = operator new(v27);
    v29 = &v28[v27];
    __p = v28;
    v104 = &v28[v27];
    memcpy(v28, v26, v27);
    v103 = v29;
  }

  mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)4>(a1, a2, &v105, &__p);
  if (__p)
  {
    v103 = __p;
    operator delete(__p);
  }

  v20 = v105;
  if (v105)
  {
    v106 = v105;
    goto LABEL_88;
  }
}