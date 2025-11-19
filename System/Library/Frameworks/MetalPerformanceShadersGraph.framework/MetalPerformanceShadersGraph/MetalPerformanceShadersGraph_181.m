_BYTE *mlir::detail::packBooleanData(_BYTE *result, unint64_t a2, char *a3, uint64_t a4)
{
  if (a2 == 1)
  {
    if (*result)
    {
      v4 = -1;
    }

    else
    {
      v4 = 0;
    }

    *a3 = v4;
  }

  else if (a4)
  {
    v5 = result + 3;
    do
    {
      if (a2)
      {
        v6 = *(v5 - 3);
        if (a2 > 1)
        {
          v6 |= 2 * *(v5 - 2);
          if (a2 != 2)
          {
            v6 |= 4 * *(v5 - 1);
            if (a2 != 3)
            {
              v6 |= 8 * *v5;
              if (a2 != 4)
              {
                v6 |= 16 * v5[1];
                if (a2 != 5)
                {
                  v6 |= 32 * v5[2];
                  if (a2 != 6)
                  {
                    v6 |= v5[3] << 6;
                    if (a2 != 7)
                    {
                      v6 |= v5[4] << 7;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v6 = 0;
      }

      *a3++ = v6;
      a2 -= 8;
      v5 += 8;
      --a4;
    }

    while (a4);
  }

  return result;
}

void mlir::copyElementsAttrData<complex_support::complex_fp<float,(void *)0>>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v105[5] = *MEMORY[0x1E69E9840];
  v102 = a1;
  v103 = a2;
  Type = mlir::ElementsAttr::getType(&v102);
  if (!Type)
  {
    goto LABEL_14;
  }

  v6 = *Type;
  {
    v16 = Type;
    mlir::arith::ExtUIOp::fold();
    Type = v16;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_14;
  }

  v17 = v10[1];
LABEL_15:
  v101[0] = Type;
  v101[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v101);
  v18 = mlir::ElementsAttr::isSplat(&v102);
  RawStringData = v102;
  if (mlir::DenseElementsAttr::classof(v102))
  {
    v20 = RawStringData;
  }

  else
  {
    v20 = 0;
  }

  v104[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v104);
    v3 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v102, v103);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_39;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_52;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_62;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_72;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_82;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_92;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_102;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_112;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_122;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_132;
    }

    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_148;
    }

    if (NumElements < 1)
    {
      return;
    }

LABEL_142:
    v69 = 0;
    v70 = a3 + 4;
    do
    {
      if (v18)
      {
        v71 = 0;
      }

      else
      {
        v71 = v69;
      }

      *(v70 - 4) = *&RawStringData[2 * v71] << 16;
      ++v69;
      v70 += 8;
    }

    while (NumElements != v69);
    return;
  }

  if (*(*RawStringData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v24 = RawStringData;
  }

  else
  {
    v24 = 0;
  }

  v104[0] = v24;
  if (v24)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v104);
    v3 = v25;
    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_29:
    v26 = 0;
    v27 = (a3 + 4);
    do
    {
      if (v18)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      LOBYTE(v22) = RawStringData[v28];
      v22 = LODWORD(v22);
      *(v27 - 1) = v22;
      *v27 = 0.0;
      v27 += 2;
      ++v26;
    }

    while (NumElements != v26);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    v30 = 0;
    v31 = (a3 + 4);
    do
    {
      if (v18)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30;
      }

      v29.i8[0] = RawStringData[v32];
      v29 = vmovl_s16(*&vmovl_s8(v29)).u64[0];
      *v29.i32 = v29.i32[0];
      *(v31 - 1) = v29.i32[0];
      *v31 = 0;
      v31 += 2;
      ++v30;
    }

    while (NumElements != v30);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    v34 = 0;
    v35 = (a3 + 4);
    do
    {
      if (v18)
      {
        v36 = 0;
      }

      else
      {
        v36 = v34;
      }

      LOWORD(v33) = *&RawStringData[2 * v36];
      v33 = LODWORD(v33);
      *(v35 - 1) = v33;
      *v35 = 0.0;
      v35 += 2;
      ++v34;
    }

    while (NumElements != v34);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_62:
    v38 = 0;
    v39 = (a3 + 4);
    do
    {
      if (v18)
      {
        v40 = 0;
      }

      else
      {
        v40 = v38;
      }

      v37.i16[0] = *&RawStringData[2 * v40];
      v37 = vmovl_s16(v37).u64[0];
      *v37.i32 = v37.i32[0];
      *(v39 - 1) = v37.i32[0];
      *v39 = 0;
      v39 += 2;
      ++v38;
    }

    while (NumElements != v38);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_72:
    v41 = 0;
    v42 = (a3 + 4);
    do
    {
      if (v18)
      {
        v43 = 0;
      }

      else
      {
        v43 = v41;
      }

      *(v42 - 1) = *&RawStringData[4 * v43];
      *v42 = 0.0;
      v42 += 2;
      ++v41;
    }

    while (NumElements != v41);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_82:
    v44 = 0;
    v45 = (a3 + 4);
    do
    {
      if (v18)
      {
        v46 = 0;
      }

      else
      {
        v46 = v44;
      }

      *(v45 - 1) = *&RawStringData[4 * v46];
      *v45 = 0.0;
      v45 += 2;
      ++v44;
    }

    while (NumElements != v44);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_92:
    v47 = 0;
    v48 = (a3 + 4);
    do
    {
      if (v18)
      {
        v49 = 0;
      }

      else
      {
        v49 = v47;
      }

      *(v48 - 1) = *&RawStringData[8 * v49];
      *v48 = 0.0;
      v48 += 2;
      ++v47;
    }

    while (NumElements != v47);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_102:
    v50 = 0;
    v51 = (a3 + 4);
    do
    {
      if (v18)
      {
        v52 = 0;
      }

      else
      {
        v52 = v50;
      }

      *(v51 - 1) = *&RawStringData[8 * v52];
      *v51 = 0.0;
      v51 += 2;
      ++v50;
    }

    while (NumElements != v50);
    return;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_112:
    v53 = 0;
    v54 = (a3 + 4);
    do
    {
      if (v18)
      {
        v55 = 0;
      }

      else
      {
        v55 = v53;
      }

      _H0 = *&RawStringData[2 * v55];
      __asm { FCVT            S0, H0 }

      *(v54 - 1) = _S0;
      *v54 = 0;
      v54 += 2;
      ++v53;
    }

    while (NumElements != v53);
    return;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_122:
    v62 = 0;
    v63 = a3 + 4;
    do
    {
      if (v18)
      {
        v64 = 0;
      }

      else
      {
        v64 = v62;
      }

      *(v63 - 4) = *&RawStringData[4 * v64];
      ++v62;
      v63 += 8;
    }

    while (NumElements != v62);
    return;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_132:
    v65 = 0;
    v66 = (a3 + 4);
    do
    {
      if (v18)
      {
        v67 = 0;
      }

      else
      {
        v67 = v65;
      }

      v68 = *&RawStringData[8 * v67];
      *(v66 - 1) = v68;
      *v66 = 0.0;
      v66 += 2;
      ++v65;
    }

    while (NumElements != v65);
    return;
  }

  NumElements = 1;
  if (mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_142;
  }

LABEL_148:
  if (mlir::Type::isInteger(&isSplat, 1))
  {
    llvm::SmallVector<char,40u>::SmallVector(v104, NumElements);
    mlir::detail::unpackBooleanData(RawStringData, v3, v104[0], v104[1]);
    v73 = v104[0];
    if (NumElements >= 1)
    {
      v74 = 0;
      v75 = (a3 + 4);
      do
      {
        if (v18)
        {
          v76 = 0;
        }

        else
        {
          v76 = v74;
        }

        v72.i8[0] = v73[v76];
        v72 = vmovl_s16(*&vmovl_s8(v72)).u64[0];
        *v72.i32 = v72.i32[0];
        *(v75 - 1) = v72.i32[0];
        *v75 = 0;
        v75 += 2;
        ++v74;
      }

      while (NumElements != v74);
    }

    if (v73 != v105)
    {
      free(v73);
    }
  }

  else
  {
    v77 = isSplat;
    v78 = *(*isSplat + 136);
    if (v78 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v77 = 0;
    }

    v104[0] = v77;
    if (v78 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<std::complex<float>>(RawStringData, v3, a3, NumElements, IntOrFloatBitWidth);
      return;
    }

    Value = mlir::AffineMapAttr::getValue(v104);
    if (mlir::Type::isF32(&Value))
    {
      if (NumElements < 1)
      {
        return;
      }

      if (v18)
      {
        if (NumElements >= 8 && ((RawStringData + 8) <= a3 || a3 + 8 * NumElements <= RawStringData))
        {
          v80 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
          v96 = vld1q_dup_f64(RawStringData);
          v97 = (a3 + 16);
          v98 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v97[-1] = v96;
            *v97 = v96;
            v97 += 2;
            v98 -= 4;
          }

          while (v98);
          if (NumElements == v80)
          {
            return;
          }
        }

        else
        {
          v80 = 0;
        }

        v81 = NumElements - v80;
        v82 = (a3 + 8 * v80);
        do
        {
          *v82++ = *RawStringData;
          --v81;
        }

        while (v81);
        return;
      }

      v86 = 0;
      if (NumElements < 4)
      {
        goto LABEL_184;
      }

      if (a3 - RawStringData <= 0x1F)
      {
        goto LABEL_184;
      }

      v86 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v87 = (RawStringData + 16);
      v88 = (a3 + 16);
      v89 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v90 = *v87;
        *(v88 - 1) = *(v87 - 1);
        *v88 = v90;
        v87 += 2;
        v88 += 2;
        v89 -= 4;
      }

      while (v89);
      if (NumElements != v86)
      {
LABEL_184:
        v91 = 8 * v86;
        v92 = &RawStringData[8 * v86];
        v93 = NumElements - v86;
        v94 = (a3 + v91);
        do
        {
          v95 = *v92;
          v92 += 8;
          *v94++ = v95;
          --v93;
        }

        while (v93);
      }
    }

    else
    {
      Value = mlir::AffineMapAttr::getValue(v104);
      mlir::Type::isF16(&Value);
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (v18)
          {
            v85 = 0;
          }

          else
          {
            v85 = i;
          }

          v83.i32[0] = *&RawStringData[4 * v85];
          v83 = vcvtq_f32_f16(v83).u64[0];
          *(a3 + 8 * i) = v83;
        }
      }
    }
  }
}

void mlir::copyElementsAttrData<complex_support::complex_fp<half,(void *)0>>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v110[5] = *MEMORY[0x1E69E9840];
  v107 = a1;
  v108 = a2;
  Type = mlir::ElementsAttr::getType(&v107);
  if (!Type)
  {
    goto LABEL_14;
  }

  v6 = *Type;
  {
    v16 = Type;
    mlir::arith::ExtUIOp::fold();
    Type = v16;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_14;
  }

  v17 = v10[1];
LABEL_15:
  v106[0] = Type;
  v106[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v106);
  v18 = mlir::ElementsAttr::isSplat(&v107);
  RawStringData = v107;
  if (mlir::DenseElementsAttr::classof(v107))
  {
    v20 = RawStringData;
  }

  else
  {
    v20 = 0;
  }

  v109[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v109);
    v3 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v107, v108);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_39;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_52;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_62;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_72;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_82;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_92;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_102;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_112;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_122;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_132;
    }

    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_148;
    }

    if (NumElements < 1)
    {
      return;
    }

LABEL_142:
    v70 = 0;
    v71 = (a3 + 2);
    do
    {
      if (v18)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      _S0 = *&RawStringData[2 * v72] << 16;
      __asm { FCVT            H0, S0 }

      *(v71 - 1) = _S0;
      *v71 = 0;
      v71 += 2;
      ++v70;
    }

    while (NumElements != v70);
    return;
  }

  if (*(*RawStringData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v24 = RawStringData;
  }

  else
  {
    v24 = 0;
  }

  v109[0] = v24;
  if (v24)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v109);
    v3 = v25;
    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_29:
    v26 = 0;
    v27 = (a3 + 2);
    do
    {
      if (v18)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      LOBYTE(v22) = RawStringData[v28];
      v22 = LOWORD(v22);
      *(v27 - 1) = v22;
      *v27 = 0;
      v27 += 2;
      ++v26;
    }

    while (NumElements != v26);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    v30 = 0;
    v31 = (a3 + 2);
    do
    {
      if (v18)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30;
      }

      v29.i8[0] = RawStringData[v32];
      v29 = vmovl_s8(v29).u64[0];
      *v29.i16 = v29.i16[0];
      *(v31 - 1) = v29.i16[0];
      *v31 = 0;
      v31 += 2;
      ++v30;
    }

    while (NumElements != v30);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    v33 = 0;
    v34 = (a3 + 2);
    do
    {
      if (v18)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33;
      }

      *(v34 - 1) = *&RawStringData[2 * v35];
      *v34 = 0;
      v34 += 2;
      ++v33;
    }

    while (NumElements != v33);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_62:
    v36 = 0;
    v37 = (a3 + 2);
    do
    {
      if (v18)
      {
        v38 = 0;
      }

      else
      {
        v38 = v36;
      }

      *(v37 - 1) = *&RawStringData[2 * v38];
      *v37 = 0;
      v37 += 2;
      ++v36;
    }

    while (NumElements != v36);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_72:
    v39 = 0;
    v40 = (a3 + 2);
    do
    {
      if (v18)
      {
        v41 = 0;
      }

      else
      {
        v41 = v39;
      }

      _S0 = *&RawStringData[4 * v41];
      __asm { FCVT            H0, S0 }

      *(v40 - 1) = LOWORD(_S0);
      *v40 = 0;
      v40 += 2;
      ++v39;
    }

    while (NumElements != v39);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_82:
    v47 = 0;
    v48 = (a3 + 2);
    do
    {
      if (v18)
      {
        v49 = 0;
      }

      else
      {
        v49 = v47;
      }

      _S0 = *&RawStringData[4 * v49];
      __asm { FCVT            H0, S0 }

      *(v48 - 1) = LOWORD(_S0);
      *v48 = 0;
      v48 += 2;
      ++v47;
    }

    while (NumElements != v47);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_92:
    v51 = 0;
    v52 = (a3 + 2);
    do
    {
      if (v18)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      _S0 = *&RawStringData[8 * v53];
      __asm { FCVT            H0, S0 }

      *(v52 - 1) = LOWORD(_S0);
      *v52 = 0;
      v52 += 2;
      ++v51;
    }

    while (NumElements != v51);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_102:
    v55 = 0;
    v56 = (a3 + 2);
    do
    {
      if (v18)
      {
        v57 = 0;
      }

      else
      {
        v57 = v55;
      }

      _S0 = *&RawStringData[8 * v57];
      __asm { FCVT            H0, S0 }

      *(v56 - 1) = LOWORD(_S0);
      *v56 = 0;
      v56 += 2;
      ++v55;
    }

    while (NumElements != v55);
    return;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_112:
    v59 = 0;
    v60 = a3 + 2;
    do
    {
      if (v18)
      {
        v61 = 0;
      }

      else
      {
        v61 = v59;
      }

      *(v60 - 2) = *&RawStringData[2 * v61];
      v60 += 4;
      ++v59;
    }

    while (NumElements != v59);
    return;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_122:
    v62 = 0;
    v63 = (a3 + 2);
    do
    {
      if (v18)
      {
        v64 = 0;
      }

      else
      {
        v64 = v62;
      }

      _S0 = *&RawStringData[4 * v64];
      __asm { FCVT            H0, S0 }

      *(v63 - 1) = _S0;
      *v63 = 0;
      v63 += 2;
      ++v62;
    }

    while (NumElements != v62);
    return;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_132:
    v66 = 0;
    v67 = (a3 + 2);
    do
    {
      if (v18)
      {
        v68 = 0;
      }

      else
      {
        v68 = v66;
      }

      _S0 = *&RawStringData[8 * v68];
      __asm { FCVT            H0, S0 }

      *(v67 - 1) = LOWORD(_S0);
      *v67 = 0;
      v67 += 2;
      ++v66;
    }

    while (NumElements != v66);
    return;
  }

  NumElements = 1;
  if (mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_142;
  }

LABEL_148:
  if (mlir::Type::isInteger(&isSplat, 1))
  {
    llvm::SmallVector<char,40u>::SmallVector(v109, NumElements);
    mlir::detail::unpackBooleanData(RawStringData, v3, v109[0], v109[1]);
    v75 = v109[0];
    if (NumElements >= 1)
    {
      v76 = 0;
      v77 = (a3 + 2);
      do
      {
        if (v18)
        {
          v78 = 0;
        }

        else
        {
          v78 = v76;
        }

        v74.i8[0] = v75[v78];
        v74 = vmovl_s8(v74).u64[0];
        *v74.i16 = v74.i16[0];
        *(v77 - 1) = v74.i16[0];
        *v77 = 0;
        v77 += 2;
        ++v76;
      }

      while (NumElements != v76);
    }

    if (v75 != v110)
    {
      free(v75);
    }
  }

  else
  {
    v79 = isSplat;
    v80 = *(*isSplat + 136);
    if (v80 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v79 = 0;
    }

    v109[0] = v79;
    if (v80 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<complex_support::complex_fp<half,(void *)0>>(RawStringData, v3, a3, NumElements, IntOrFloatBitWidth);
      return;
    }

    Value = mlir::AffineMapAttr::getValue(v109);
    if (mlir::Type::isF32(&Value))
    {
      if (NumElements >= 1)
      {
        v82 = 0;
        v83 = (a3 + 2);
        do
        {
          if (v18)
          {
            v84 = 0;
          }

          else
          {
            v84 = v82;
          }

          v85 = &RawStringData[8 * v84];
          _S0 = *v85;
          _S1 = *(v85 + 1);
          __asm
          {
            FCVT            H0, S0
            FCVT            H1, S1
          }

          *(v83 - 1) = _S0;
          *v83 = _S1;
          ++v82;
          v83 += 2;
        }

        while (NumElements != v82);
      }
    }

    else
    {
      Value = mlir::AffineMapAttr::getValue(v109);
      mlir::Type::isF16(&Value);
      if (NumElements < 1)
      {
        return;
      }

      if (v18)
      {
        if (NumElements >= 8 && ((RawStringData + 4) <= a3 || a3 + 4 * NumElements <= RawStringData))
        {
          v88 = NumElements & 0x7FFFFFFFFFFFFFF8;
          v101 = vld1q_dup_f32(RawStringData);
          v102 = (a3 + 16);
          v103 = NumElements & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v102[-1] = v101;
            *v102 = v101;
            v102 += 2;
            v103 -= 8;
          }

          while (v103);
          if (NumElements == v88)
          {
            return;
          }
        }

        else
        {
          v88 = 0;
        }

        v89 = NumElements - v88;
        v90 = (a3 + 4 * v88);
        do
        {
          *v90++ = *RawStringData;
          --v89;
        }

        while (v89);
        return;
      }

      v91 = 0;
      if (NumElements < 8)
      {
        goto LABEL_184;
      }

      if (a3 - RawStringData <= 0x1F)
      {
        goto LABEL_184;
      }

      v91 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v92 = (RawStringData + 16);
      v93 = (a3 + 16);
      v94 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v95 = *v92;
        *(v93 - 1) = *(v92 - 1);
        *v93 = v95;
        v92 += 2;
        v93 += 2;
        v94 -= 8;
      }

      while (v94);
      if (NumElements != v91)
      {
LABEL_184:
        v96 = 4 * v91;
        v97 = &RawStringData[4 * v91];
        v98 = NumElements - v91;
        v99 = (a3 + v96);
        do
        {
          v100 = *v97;
          v97 += 4;
          *v99++ = v100;
          --v98;
        }

        while (v98);
      }
    }
  }
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned char>(unsigned __int8 *result, unint64_t a2, _BYTE *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      v12 = a4 - v9 * v11;
      if (v12 >= v11)
      {
        v12 = 8 / a5;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = vdupq_n_s64(v12 - 1);
      v14 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v13, xmmword_1E09700F0), vcgeq_u64(v13, xmmword_1E096E650)), vuzp1q_s32(vcgeq_u64(v13, xmmword_1E097BBE0), vcgeq_u64(v13, xmmword_1E096E670))));
      v15 = &a3[v9 * v11];
      v16 = *result;
      v17 = (v16 >> a5) & v10;
      v18 = (v16 >> (2 * a5)) & v10;
      v19 = (v16 >> (3 * a5)) & v10;
      v20 = (v16 >> (4 * a5)) & v10;
      v21 = (v16 >> (5 * a5)) & v10;
      v22 = (v16 >> (6 * a5)) & v10;
      v23 = (v16 >> (7 * a5)) & v10;
      if (v14.i8[0])
      {
        if (v14.i8[1])
        {
          v15[1] = v17;
          if (v14.i8[2])
          {
            goto LABEL_36;
          }

LABEL_21:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_37:
          v15[3] = v19;
          if (v14.i8[4])
          {
            goto LABEL_38;
          }

LABEL_23:
          if ((v14.i8[5] & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_39:
          v15[5] = v21;
          if (v14.i8[6])
          {
            goto LABEL_40;
          }

LABEL_25:
          if (v14.i8[7])
          {
LABEL_41:
            v15[7] = v23;
          }
        }

        else
        {
          if ((v14.i8[2] & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_36:
          v15[2] = v18;
          if (v14.i8[3])
          {
            goto LABEL_37;
          }

LABEL_22:
          if ((v14.i8[4] & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_38:
          v15[4] = v20;
          if (v14.i8[5])
          {
            goto LABEL_39;
          }

LABEL_24:
          if ((v14.i8[6] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_40:
          v15[6] = v22;
          if (v14.i8[7])
          {
            goto LABEL_41;
          }
        }

        *v15 = v16 & v10;
        goto LABEL_14;
      }

      if (v14.i8[1])
      {
        v15[1] = v17;
        if ((v14.i8[2] & 1) == 0)
        {
LABEL_29:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_44;
        }
      }

      else if ((v14.i8[2] & 1) == 0)
      {
        goto LABEL_29;
      }

      v15[2] = v18;
      if ((v14.i8[3] & 1) == 0)
      {
LABEL_30:
        if ((v14.i8[4] & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_45;
      }

LABEL_44:
      v15[3] = v19;
      if ((v14.i8[4] & 1) == 0)
      {
LABEL_31:
        if ((v14.i8[5] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }

LABEL_45:
      v15[4] = v20;
      if ((v14.i8[5] & 1) == 0)
      {
LABEL_32:
        if ((v14.i8[6] & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_46:
      v15[5] = v21;
      if ((v14.i8[6] & 1) == 0)
      {
LABEL_33:
        if (v14.i8[7])
        {
          goto LABEL_48;
        }

        goto LABEL_14;
      }

LABEL_47:
      v15[6] = v22;
      if (v14.i8[7])
      {
LABEL_48:
        v15[7] = v23;
      }

LABEL_14:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = v7 & ~(-1 << a5);
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned short>(unsigned __int8 *result, unint64_t a2, _WORD *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      v12 = a4 - v9 * v11;
      if (v12 >= v11)
      {
        v12 = 8 / a5;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = vdupq_n_s64(v12 - 1);
      v14 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v13, xmmword_1E09700F0), vcgeq_u64(v13, xmmword_1E096E650)), vuzp1q_s32(vcgeq_u64(v13, xmmword_1E097BBE0), vcgeq_u64(v13, xmmword_1E096E670))));
      v15 = &a3[v9 * v11];
      v16 = *result;
      v17 = (v16 >> a5) & v10;
      v18 = (v16 >> (2 * a5)) & v10;
      v19 = (v16 >> (3 * a5)) & v10;
      v20 = (v16 >> (4 * a5)) & v10;
      v21 = (v16 >> (5 * a5)) & v10;
      v22 = (v16 >> (6 * a5)) & v10;
      v23 = (v16 >> (7 * a5)) & v10;
      if (v14.i8[0])
      {
        if (v14.i8[1])
        {
          v15[1] = v17;
          if (v14.i8[2])
          {
            goto LABEL_36;
          }

LABEL_21:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_37:
          v15[3] = v19;
          if (v14.i8[4])
          {
            goto LABEL_38;
          }

LABEL_23:
          if ((v14.i8[5] & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_39:
          v15[5] = v21;
          if (v14.i8[6])
          {
            goto LABEL_40;
          }

LABEL_25:
          if (v14.i8[7])
          {
LABEL_41:
            v15[7] = v23;
          }
        }

        else
        {
          if ((v14.i8[2] & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_36:
          v15[2] = v18;
          if (v14.i8[3])
          {
            goto LABEL_37;
          }

LABEL_22:
          if ((v14.i8[4] & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_38:
          v15[4] = v20;
          if (v14.i8[5])
          {
            goto LABEL_39;
          }

LABEL_24:
          if ((v14.i8[6] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_40:
          v15[6] = v22;
          if (v14.i8[7])
          {
            goto LABEL_41;
          }
        }

        *v15 = v10 & v16;
        goto LABEL_14;
      }

      if (v14.i8[1])
      {
        v15[1] = v17;
        if ((v14.i8[2] & 1) == 0)
        {
LABEL_29:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_44;
        }
      }

      else if ((v14.i8[2] & 1) == 0)
      {
        goto LABEL_29;
      }

      v15[2] = v18;
      if ((v14.i8[3] & 1) == 0)
      {
LABEL_30:
        if ((v14.i8[4] & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_45;
      }

LABEL_44:
      v15[3] = v19;
      if ((v14.i8[4] & 1) == 0)
      {
LABEL_31:
        if ((v14.i8[5] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }

LABEL_45:
      v15[4] = v20;
      if ((v14.i8[5] & 1) == 0)
      {
LABEL_32:
        if ((v14.i8[6] & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_46:
      v15[5] = v21;
      if ((v14.i8[6] & 1) == 0)
      {
LABEL_33:
        if (v14.i8[7])
        {
          goto LABEL_48;
        }

        goto LABEL_14;
      }

LABEL_47:
      v15[6] = v22;
      if (v14.i8[7])
      {
LABEL_48:
        v15[7] = v23;
      }

LABEL_14:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = (v7 & ~(-1 << a5));
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned int>(unsigned __int8 *result, unint64_t a2, int *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = *result;
      v14 = vdupq_n_s64(v12 - 1);
      v15 = &a3[v9 * v11];
      v16 = vmovn_s64(vcgeq_u64(v14, xmmword_1E09700F0));
      if (vuzp1_s16(v16, 0).u8[0])
      {
        *v15 = v10 & v13;
        if ((vuzp1_s16(v16, 0).i8[2] & 1) == 0)
        {
LABEL_20:
          v17 = vmovn_s64(vcgeq_u64(v14, xmmword_1E096E650));
          if ((vuzp1_s16(0, v17).i32[1] & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_26;
        }
      }

      else if ((vuzp1_s16(v16, 0).i8[2] & 1) == 0)
      {
        goto LABEL_20;
      }

      v15[1] = (v13 >> a5) & v10;
      v17 = vmovn_s64(vcgeq_u64(v14, xmmword_1E096E650));
      if ((vuzp1_s16(0, v17).i32[1] & 1) == 0)
      {
LABEL_21:
        if (vuzp1_s16(0, v17).i8[6])
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      }

LABEL_26:
      v15[2] = (v13 >> (2 * a5)) & v10;
      if (vuzp1_s16(0, v17).i8[6])
      {
LABEL_27:
        v15[3] = (v13 >> (3 * a5)) & v10;
        if (((v12 + 3) & 0x1C) == 4)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }

LABEL_22:
      if (((v12 + 3) & 0x1C) == 4)
      {
        goto LABEL_13;
      }

LABEL_28:
      v18 = vmovn_s64(vcgtq_u64(v14, xmmword_1E0970230));
      if (vuzp1_s16(v18, 0).u8[0])
      {
        v15[4] = (v13 >> (4 * a5)) & v10;
        if ((vuzp1_s16(v18, 0).i8[2] & 1) == 0)
        {
LABEL_30:
          v19 = vmovn_s64(vcgtq_u64(v14, xmmword_1E0971C10));
          if ((vuzp1_s16(0, v19).i32[1] & 1) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_35;
        }
      }

      else if ((vuzp1_s16(v18, 0).i8[2] & 1) == 0)
      {
        goto LABEL_30;
      }

      v15[5] = (v13 >> (5 * a5)) & v10;
      v19 = vmovn_s64(vcgtq_u64(v14, xmmword_1E0971C10));
      if ((vuzp1_s16(0, v19).i32[1] & 1) == 0)
      {
LABEL_31:
        if (vuzp1_s16(0, v19).i8[6])
        {
          goto LABEL_36;
        }

        goto LABEL_13;
      }

LABEL_35:
      v15[6] = (v13 >> (6 * a5)) & v10;
      if (vuzp1_s16(0, v19).i8[6])
      {
LABEL_36:
        v15[7] = (v13 >> (7 * a5)) & v10;
      }

LABEL_13:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = v7 & ~(-1 << a5);
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<half>(unsigned __int8 *result, unint64_t a2, short float *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = *result;
      v14 = vdupq_n_s64(v12 - 1);
      v24 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v14, xmmword_1E09700F0), vcgeq_u64(v14, xmmword_1E096E650)), vuzp1q_s32(vcgeq_u64(v14, xmmword_1E097BBE0), vcgeq_u64(v14, xmmword_1E096E670))));
      v15 = v24.i8[0];
      v16 = &a3[v9 * v11];
      v17 = v24.i8[1];
      v18 = ((v13 >> a5) & v10);
      v19 = ((v13 >> (2 * a5)) & v10);
      v20 = ((v13 >> (3 * a5)) & v10);
      v21 = ((v13 >> (4 * a5)) & v10);
      v22 = ((v13 >> (5 * a5)) & v10);
      v23 = ((v13 >> (6 * a5)) & v10);
      *v24.i16 = ((v13 >> (7 * a5)) & v10);
      if (v15)
      {
        if (v17)
        {
          v16[1] = v18;
          if (v24.i8[2])
          {
            goto LABEL_37;
          }

LABEL_22:
          if ((v24.i8[3] & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_38:
          v16[3] = v20;
          if (v24.i8[4])
          {
            goto LABEL_39;
          }

LABEL_24:
          if ((v24.i8[5] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_40:
          v16[5] = v22;
          if (v24.i8[6])
          {
            goto LABEL_41;
          }

LABEL_26:
          if (v24.i8[7])
          {
LABEL_42:
            v16[7] = *v24.i16;
          }
        }

        else
        {
          if ((v24.i8[2] & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_37:
          v16[2] = v19;
          if (v24.i8[3])
          {
            goto LABEL_38;
          }

LABEL_23:
          if ((v24.i8[4] & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_39:
          v16[4] = v21;
          if (v24.i8[5])
          {
            goto LABEL_40;
          }

LABEL_25:
          if ((v24.i8[6] & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_41:
          v16[6] = v23;
          if (v24.i8[7])
          {
            goto LABEL_42;
          }
        }

        *v16 = (v10 & v13);
        goto LABEL_14;
      }

      if (v17)
      {
        v16[1] = v18;
        if ((v24.i8[2] & 1) == 0)
        {
LABEL_30:
          if ((v24.i8[3] & 1) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_45;
        }
      }

      else if ((v24.i8[2] & 1) == 0)
      {
        goto LABEL_30;
      }

      v16[2] = v19;
      if ((v24.i8[3] & 1) == 0)
      {
LABEL_31:
        if ((v24.i8[4] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }

LABEL_45:
      v16[3] = v20;
      if ((v24.i8[4] & 1) == 0)
      {
LABEL_32:
        if ((v24.i8[5] & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_46:
      v16[4] = v21;
      if ((v24.i8[5] & 1) == 0)
      {
LABEL_33:
        if ((v24.i8[6] & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_48;
      }

LABEL_47:
      v16[5] = v22;
      if ((v24.i8[6] & 1) == 0)
      {
LABEL_34:
        if (v24.i8[7])
        {
          goto LABEL_49;
        }

        goto LABEL_14;
      }

LABEL_48:
      v16[6] = v23;
      if (v24.i8[7])
      {
LABEL_49:
        v16[7] = *v24.i16;
      }

LABEL_14:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = (v7 & ~(-1 << a5));
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<__emulated_bf16>(unsigned __int8 *result, unint64_t a2, _WORD *a3, uint64_t a4, unint64_t a5)
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

      do
      {
        v7 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v8 = (v5 >> 3) + 1;
          if (v8 < a2)
          {
            v7 |= result[v8] << (8 - (v5 & 7));
          }
        }

        *a3++ = HIWORD(COERCE_UNSIGNED_INT((v7 & ~(-1 << a5)) + (COERCE_FLOAT(COERCE_UNSIGNED_INT((v7 & ~(-1 << a5))) & 0x7F800000) * 0.0039062)));
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    do
    {
      v12 = a4 - v9 * v11;
      if (v12 >= v11)
      {
        v12 = 8 / a5;
      }

      if (v12)
      {
        v13 = *result;
        v14 = &a3[v9 * v11];
        v15 = (v10 & v13) + (COERCE_FLOAT(COERCE_UNSIGNED_INT((v10 & v13)) & 0x7F800000) * 0.0039062);
        *v14 = HIWORD(v15);
        if (v12 != 1)
        {
          v16 = ((v13 >> a5) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> a5) & v10)) & 0x7F800000) * 0.0039062);
          v14[1] = HIWORD(v16);
          if (v12 >= 3)
          {
            v17 = ((v13 >> (2 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (2 * a5)) & v10)) & 0x7F800000) * 0.0039062);
            v14[2] = HIWORD(v17);
            if (v12 != 3)
            {
              v18 = ((v13 >> (3 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (3 * a5)) & v10)) & 0x7F800000) * 0.0039062);
              v14[3] = HIWORD(v18);
              if (v12 >= 5)
              {
                v19 = ((v13 >> (4 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (4 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                v14[4] = HIWORD(v19);
                if (v12 != 5)
                {
                  v20 = ((v13 >> (5 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (5 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                  v14[5] = HIWORD(v20);
                  if (v12 >= 7)
                  {
                    v21 = ((v13 >> (6 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (6 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                    v14[6] = HIWORD(v21);
                    if (v12 != 7)
                    {
                      v22 = ((v13 >> (7 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (7 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                      v14[7] = HIWORD(v22);
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v9;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<double>(unsigned __int8 *result, unint64_t a2, double *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = *result;
      v14 = &a3[v9 * v11];
      v15 = vdupq_n_s64(v12 - 1);
      v16 = vmovn_s64(vcgeq_u64(v15, xmmword_1E09700F0));
      if (v16.i8[0])
      {
        *v14 = (v10 & v13);
        if (v16.i8[4])
        {
LABEL_23:
          v14[1] = ((v13 >> a5) & v10);
          v17 = (v12 + 1) & 0x1E;
          if (v17 == 2)
          {
            goto LABEL_13;
          }

          goto LABEL_24;
        }
      }

      else if (v16.i8[4])
      {
        goto LABEL_23;
      }

      v17 = (v12 + 1) & 0x1E;
      if (v17 == 2)
      {
        goto LABEL_13;
      }

LABEL_24:
      v18 = vmovn_s64(vcgtq_u64(v15, xmmword_1E0970220));
      if (v18.i8[0])
      {
        v14[2] = ((v13 >> (2 * a5)) & v10);
        if (v18.i8[4])
        {
LABEL_29:
          v14[3] = ((v13 >> (3 * a5)) & v10);
          if (v17 == 4)
          {
            goto LABEL_13;
          }

          goto LABEL_30;
        }
      }

      else if (v18.i8[4])
      {
        goto LABEL_29;
      }

      if (v17 == 4)
      {
        goto LABEL_13;
      }

LABEL_30:
      v19 = vmovn_s64(vcgtq_u64(v15, xmmword_1E0970230));
      if (v19.i8[0])
      {
        v14[4] = ((v13 >> (4 * a5)) & v10);
        if ((v19.i8[4] & 1) == 0)
        {
LABEL_32:
          if (v17 != 6)
          {
            goto LABEL_36;
          }

          goto LABEL_13;
        }
      }

      else if ((v19.i8[4] & 1) == 0)
      {
        goto LABEL_32;
      }

      v14[5] = ((v13 >> (5 * a5)) & v10);
      if (v17 != 6)
      {
LABEL_36:
        v20 = vmovn_s64(vcgtq_u64(v15, xmmword_1E0971C10));
        if (v20.i8[0])
        {
          v14[6] = ((v13 >> (6 * a5)) & v10);
        }

        if (v20.i8[4])
        {
          v14[7] = ((v13 >> (7 * a5)) & v10);
        }
      }

LABEL_13:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = (v7 & ~(-1 << a5));
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<complex_support::complex_fp<half,(void *)0>>(unsigned __int8 *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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

      v7 = (a3 + 2);
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
        *v7 = 0;
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
        v15 = a3 + 4 * v10 * v12;
        *v15 = (v11 & v14);
        *(v15 + 2) = 0;
        if (v13 != 1)
        {
          *(v15 + 4) = ((v14 >> a5) & v11);
          *(v15 + 6) = 0;
          if (v13 >= 3)
          {
            *(v15 + 8) = ((v14 >> (2 * a5)) & v11);
            *(v15 + 10) = 0;
            if (v13 != 3)
            {
              *(v15 + 12) = ((v14 >> (3 * a5)) & v11);
              *(v15 + 14) = 0;
              if (v13 >= 5)
              {
                *(v15 + 16) = ((v14 >> (4 * a5)) & v11);
                *(v15 + 18) = 0;
                if (v13 != 5)
                {
                  *(v15 + 20) = ((v14 >> (5 * a5)) & v11);
                  *(v15 + 22) = 0;
                  if (v13 >= 7)
                  {
                    *(v15 + 24) = ((v14 >> (6 * a5)) & v11);
                    *(v15 + 26) = 0;
                    if (v13 != 7)
                    {
                      *(v15 + 28) = ((v14 >> (7 * a5)) & v11);
                      *(v15 + 30) = 0;
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

BOOL mlir::detail::upgradeFromVersion(mlir::ForwardIterator *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a3;
  v4[1] = a2;
  return mlir::detail::walk<mlir::ForwardIterator>(a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::detail::upgradeFromVersion(mlir::Operation *,llvm::StringRef const&,mlir::DialectVersion const&)::$_0>, v4, 1) != 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::detail::upgradeFromVersion(mlir::Operation *,llvm::StringRef const&,mlir::DialectVersion const&)::$_0>(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  if (*(v5 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    Context = *(v5 + 8);
    Values = mlir::SparseElementsAttr::getValues(&Context);
    v8 = *(Values + 8);
    v9 = *(Values + 16);
    v14 = *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id && v9 == 3;
    if (v14)
    {
      if (*v8 == 28781 && v8[2] == 115)
      {
        Context = mlir::Attribute::getContext((a2 + 24));
        v43 = 0;
        v33 = *(a2 + 16);
        v35 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v34);
        v44 = v33;
        v45 = v35;
        v36 = *(a2 + 48);
        if (*(v36 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v39 = *(v36 + 8);
          mlir::SparseElementsAttr::getValues(&v39);
        }

        mlir::mps::MPSDialect::convertUnregisteredOperation(&Context, *a1, a2, &v39);
        v11 = 0;
        v6 = v39;
        v2 = v40;
        v10 = v41 ^ 1;
        v9 = 3;
        InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
        if (!InterfaceFor)
        {
          goto LABEL_16;
        }

        goto LABEL_9;
      }

      v6 = 0;
      v10 = 1;
      v9 = 3;
      v11 = 1;
      InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
      if (InterfaceFor)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = 0;
      v10 = 1;
      v11 = 1;
      InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
      if (InterfaceFor)
      {
        goto LABEL_9;
      }
    }

LABEL_16:
    v37 = 0;
    v38 = InterfaceFor;
    goto LABEL_20;
  }

  v6 = 0;
  v7 = *(v5 + 24);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = 1;
  v11 = 1;
  InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!InterfaceFor)
  {
    goto LABEL_16;
  }

LABEL_9:
  v37 = a2;
  v38 = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (a2)
  {
    v16 = a1[1];
    if (v9 == *(v16 + 8) && (!v9 || !memcmp(v8, *v16, v9)))
    {
      Context = mlir::Attribute::getContext((a2 + 24));
      v43 = 0;
      v18 = *(a2 + 16);
      v20 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v19);
      v44 = v18;
      v45 = v20;
      mlir::DowngraderInterface::downgradeToVersion(&v37, &Context, *a1);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      v6 = v39;
      v2 = v40;
      if (!v40)
      {
        return 1;
      }

      goto LABEL_22;
    }
  }

LABEL_20:
  if (((v11 | v10) & 1) == 0)
  {
    if (!v2)
    {
      return 1;
    }

LABEL_22:
    v17 = 0;
    while (1)
    {
      Context = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, v17);
      if (mlir::Value::getDefiningOp(&Context) != a2)
      {
        break;
      }

      if (v2 == ++v17)
      {
        return 1;
      }
    }

    v21 = *(a2 + 36);
    if (v21)
    {
      v22 = a2 - 16;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = 0;
      v24 = v21 - 1;
      if (v2 - 1 >= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v2 - 1;
      }

      do
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, v23);
        for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, v23); ; *i = v28)
        {
          v28 = *NextResultAtOffset;
          if (!*NextResultAtOffset)
          {
            break;
          }

          v29 = v28[1];
          if (v29)
          {
            v30 = *v28;
            *v29 = *v28;
            if (v30)
            {
              *(v30 + 8) = v29;
            }
          }

          v28[3] = i;
          v28[1] = i;
          v31 = *i;
          *v28 = *i;
          if (v31)
          {
            *(v31 + 8) = v28;
          }
        }

        v14 = v23++ == v25;
      }

      while (!v14);
    }

    mlir::Operation::erase(a2);
    return 1;
  }

  return v11;
}

uint64_t mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::UpgraderInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::UpgraderInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneResult<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OpInvariants<mlir::mps::SoftplusParametricOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::Stitchable<mlir::mps::SoftplusParametricOp>,mlir::DowngraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::UpgraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SoftplusParametricOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::UpgraderInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneResult<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OpInvariants<mlir::mps::SoftplusParametricOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::Stitchable<mlir::mps::SoftplusParametricOp>,mlir::DowngraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::UpgraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SoftplusParametricOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[145];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::detail::downgradeToVersion(mlir::Operation *,llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>> const&)::$_0>(uint64_t **a1, uint64_t a2)
{
  if (!a2)
  {
    v34 = 0;
    InterfaceFor = 0;
    return 1;
  }

  if (!mlir::OpInterface<mlir::DowngraderInterface,mlir::detail::DowngraderInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v34 = 0;
    InterfaceFor = 0;
    return 1;
  }

  v34 = a2;
  InterfaceFor = mlir::OpInterface<mlir::DowngraderInterface,mlir::detail::DowngraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!a2)
  {
    return 1;
  }

  v4 = *a1;
  v5 = *(a2 + 48);
  if (*(v5 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v33[0] = *(v5 + 8);
    Values = mlir::SparseElementsAttr::getValues(v33);
    v7 = *v4;
    v8 = *(v4 + 4);
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    Values = *(v5 + 24);
    v7 = *v4;
    v8 = *(v4 + 4);
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  v9 = (v8 - 1) & ((Values >> 4) ^ (Values >> 9));
  v10 = *(v7 + 16 * v9);
  if (v10 == Values)
  {
    goto LABEL_17;
  }

  v11 = 1;
  while (v10 != -4096)
  {
    v12 = v9 + v11++;
    v9 = v12 & (v8 - 1);
    v10 = *(v7 + 16 * v9);
    if (v10 == Values)
    {
      goto LABEL_17;
    }
  }

LABEL_16:
  v9 = v8;
LABEL_17:
  v13 = v7 + 16 * v9;
  if (v13 == **a1 + 16 * *(*a1 + 4))
  {
    return 0;
  }

  v14 = *(v13 + 8);
  v33[0] = mlir::Attribute::getContext((a2 + 24));
  v33[1] = 0;
  v15 = *(a2 + 16);
  v17 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v16);
  v33[2] = v15;
  v33[3] = v17;
  mlir::DowngraderInterface::downgradeToVersion(&v34, v33, v14);
  if (v32 != 1)
  {
    return 0;
  }

  if (v31)
  {
    v18 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, v18);
      if (mlir::Value::getDefiningOp(&NextResultAtOffset) != a2)
      {
        break;
      }

      if (v31 == ++v18)
      {
        return 1;
      }
    }

    v20 = *(a2 + 36);
    if (v20)
    {
      v21 = a2 - 16;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v31 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = 0;
      do
      {
        v24 = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v23);
        for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, v23); ; *i = v26)
        {
          v26 = *v24;
          if (!*v24)
          {
            break;
          }

          v27 = v26[1];
          if (v27)
          {
            v28 = *v26;
            *v27 = *v26;
            if (v28)
            {
              *(v28 + 8) = v27;
            }
          }

          v26[3] = i;
          v26[1] = i;
          v29 = *i;
          *v26 = *i;
          if (v29)
          {
            *(v29 + 8) = v26;
          }
        }

        ++v23;
      }

      while (v23 != v20 && v23 != v31);
    }

    mlir::Operation::erase(a2);
  }

  return 1;
}

uint64_t mlir::OpInterface<mlir::DowngraderInterface,mlir::detail::DowngraderInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::DowngraderInterface,mlir::detail::DowngraderInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[144];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

_OWORD *mlir::mps::buildConv2DDescriptor@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12, int a13, int a14, int a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  memset(v61, 0, sizeof(v61));
  v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8));
  v60 = v25;
  if (v59 && mlir::CallOpInterface::getArgOperands(&v59))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
    v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8));
    v60 = v27;
    if (!v59)
    {
      goto LABEL_8;
    }
  }

  else
  {
    ArgAttrsAttr = v61;
    v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8));
    v60 = v28;
    if (!v59)
    {
      goto LABEL_8;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(&v59))
  {
    result = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
    goto LABEL_9;
  }

LABEL_8:
  result = v61;
LABEL_9:
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 48) = a3;
  *(a9 + 120) = a13;
  *(a9 + 124) = a14;
  *(a9 + 128) = a15;
  if (a15 != 2)
  {
    if (a15 != 3)
    {
      v30 = *(a9 + 24);
      v31 = *(a9 + 32);
      v33 = a18;
      if (a14 == 1)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v31 = *ArgAttrsAttr;
    v30 = ArgAttrsAttr[1];
    *(a9 + 24) = v30;
    *(a9 + 32) = v31;
    v32 = ArgAttrsAttr[3];
    if (a19)
    {
      *(a9 + 40) = ArgAttrsAttr[2] * v32;
      v33 = a18;
      if (a14 == 1)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_17:
    *(a9 + 40) = v32;
    v33 = a18;
    if (a14 == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v31 = ArgAttrsAttr[2];
  v30 = ArgAttrsAttr[3];
  *(a9 + 24) = v30;
  *(a9 + 32) = v31;
  v32 = *ArgAttrsAttr;
  if (!a19)
  {
    goto LABEL_17;
  }

  *(a9 + 40) = ArgAttrsAttr[1] * v32;
  v33 = a18;
  if (a14 == 1)
  {
LABEL_24:
    *a9 = *(result + 8);
    *(a9 + 16) = *(result + 3);
    if (a16)
    {
      a16[1] = a5;
      a16[2] = a4;
    }

    if (a17)
    {
      v34 = 16;
      v35 = 8;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

LABEL_18:
  if (!a14)
  {
    *a9 = result[1];
    *(a9 + 16) = *(result + 1);
    if (a16)
    {
      a16[2] = a5;
      a16[3] = a4;
    }

    if (a17)
    {
      v34 = 24;
      v35 = 16;
LABEL_28:
      *(a17 + v35) = a7;
      *(a17 + v34) = a6;
    }
  }

LABEL_29:
  if (a13 <= 1)
  {
    if (a13)
    {
      v38 = 0;
      v39 = 0;
      v37 = 0;
      v36 = 0;
      *(a9 + 104) = 0u;
      *(a9 + 88) = 0u;
      if (!v33)
      {
        return result;
      }
    }

    else
    {
      v36 = a11;
      v37 = a12;
      v38 = a10;
      v39 = a8;
      *(a9 + 88) = a8;
      *(a9 + 96) = a10;
      *(a9 + 104) = a11;
      *(a9 + 112) = a12;
      if (!v33)
      {
        return result;
      }
    }

    goto LABEL_50;
  }

  v40 = v31 - 1;
  v41 = (v30 - 1) * a6 + 1;
  v42 = v40 * a7 + 1;
  v43 = *a9;
  v44 = *(a9 + 8);
  v45 = v44 % a4;
  if (!(v44 % a4))
  {
    v45 = a4;
  }

  v46 = (v41 - v45) & ~((v41 - v45) >> 63);
  if (v43 < 1)
  {
    v37 = 0;
    v36 = 0;
    *(a9 + 104) = 0;
    *(a9 + 112) = 0;
    if (v44 > 0)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v47 = v43 % a5;
  if (!v47)
  {
    v47 = a5;
  }

  v48 = (v42 - v47) & ~((v42 - v47) >> 63);
  v49 = v48 >> 1;
  v36 = v48 - (v48 >> 1);
  *(a9 + 104) = v49;
  *(a9 + 112) = v36;
  if (a13 != 4)
  {
    v37 = v36;
    v36 = v49;
    if (v44 > 0)
    {
LABEL_47:
      v39 = v46 >> 1;
      v38 = v46 - (v46 >> 1);
      *(a9 + 96) = v38;
      v51 = (a9 + 96);
      *(v51 - 1) = v39;
      v50 = v51 - 1;
      if (a13 != 4)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

LABEL_44:
    v38 = 0;
    v39 = 0;
    *(a9 + 88) = 0;
    *(a9 + 96) = 0;
    if (!v33)
    {
      return result;
    }

    goto LABEL_50;
  }

  *(a9 + 104) = v36;
  *(a9 + 112) = v49;
  if (v44 < 1)
  {
    v37 = v49;
    v38 = 0;
    v39 = 0;
    *(a9 + 88) = 0;
    *(a9 + 96) = 0;
    if (!v33)
    {
      return result;
    }

    goto LABEL_50;
  }

  v39 = v46 >> 1;
  v50 = (a9 + 88);
  v38 = v46 - (v46 >> 1);
  v51 = (a9 + 96);
  v37 = v49;
LABEL_48:
  v52 = v38;
  *v50 = v38;
  *v51 = v39;
  v38 = v39;
  v39 = v52;
LABEL_49:
  if (!v33)
  {
    return result;
  }

LABEL_50:
  if (a14)
  {
    if (a14 != 1)
    {
      return result;
    }

    v53 = 40;
    v54 = 32;
    v55 = 24;
    v56 = 16;
  }

  else
  {
    v53 = 56;
    v54 = 48;
    v55 = 40;
    v56 = 32;
  }

  *(v33 + v56) = v36;
  *(v33 + v55) = v37;
  *(v33 + v54) = v39;
  *(v33 + v53) = v38;
  return result;
}

void mlir::mps::getBroadcastGradientArgs(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v67[0] = a1;
  v67[1] = a2;
  v66[0] = a3;
  v66[1] = a4;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v66);
  v8 = v7;
  if (!mlir::CallOpInterface::getArgOperands(v67))
  {
    goto LABEL_8;
  }

  v9 = mlir::CallableOpInterface::getArgAttrsAttr(v67);
  if (v10)
  {
    v11 = 8 * v10;
    while (*v9 != 0x8000000000000000)
    {
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    mlir::CallableOpInterface::getArgAttrsAttr(v67);
    v15 = v14;
    mlir::CallableOpInterface::getArgAttrsAttr(v66);
    v17 = v16;
    v18 = mlir::CallableOpInterface::getArgAttrsAttr(v67);
    v19 = mlir::CallableOpInterface::getArgAttrsAttr(v66);
    v64 = v17;
    v65 = v15;
    v20 = v15 - v17;
    if (v15 == v17)
    {
      if (v15 >= 1)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          if (v18[v22] == 1)
          {
            goto LABEL_13;
          }

          v24 = v19[v22];
          if (v24 == -1)
          {
            v25 = a5[2];
            if (v21 >= v25)
            {
              v26 = v21 - v23;
              v27 = (v21 - v23) >> 3;
              v28 = v27 + 1;
              if ((v27 + 1) >> 61)
              {
                goto LABEL_101;
              }

              goto LABEL_22;
            }
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_13;
            }

            v25 = a5[2];
            if (v21 >= v25)
            {
              v26 = v21 - v23;
              v27 = (v21 - v23) >> 3;
              v28 = v27 + 1;
              if ((v27 + 1) >> 61)
              {
                goto LABEL_101;
              }

LABEL_22:
              v29 = v25 - v23;
              if (v29 >> 2 > v28)
              {
                v28 = v29 >> 2;
              }

              if (v29 >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v28;
              }

              if (v30)
              {
                if (v30 >> 61)
                {
                  goto LABEL_102;
                }

                v31 = operator new(8 * v30);
              }

              else
              {
                v31 = 0;
              }

              v32 = &v31[8 * v27];
              *v32 = v22;
              v21 = v32 + 8;
              memcpy(v31, v23, v26);
              a5[1] = v21;
              a5[2] = &v31[8 * v30];
              if (v23)
              {
                operator delete(v23);
              }

              v23 = v31;
              v15 = v65;
              goto LABEL_12;
            }
          }

          *v21 = v22;
          v21 += 8;
LABEL_12:
          a5[1] = v21;
LABEL_13:
          if (v15 == ++v22)
          {
            goto LABEL_99;
          }
        }
      }
    }

    else
    {
      if (v15 >= v17)
      {
        if (v20 < 1)
        {
          v45 = 0;
          v23 = 0;
        }

        else
        {
          v45 = 0;
          v46 = 0;
          v23 = 0;
          do
          {
            if (v18[v46] != 1)
            {
              v47 = a5[2];
              if (v45 < v47)
              {
                *v45++ = v46;
              }

              else
              {
                v48 = v45 - v23;
                v49 = (v45 - v23) >> 3;
                v50 = v49 + 1;
                if ((v49 + 1) >> 61)
                {
LABEL_101:
                  *a5 = v23;
                  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
                }

                v51 = v47 - v23;
                if (v51 >> 2 > v50)
                {
                  v50 = v51 >> 2;
                }

                if (v51 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v52 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v50;
                }

                if (v52)
                {
                  if (v52 >> 61)
                  {
LABEL_102:
                    *a5 = v23;
                    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
                  }

                  v53 = operator new(8 * v52);
                }

                else
                {
                  v53 = 0;
                }

                v54 = &v53[8 * v49];
                *v54 = v46;
                v45 = (v54 + 8);
                memcpy(v53, v23, v48);
                a5[1] = v45;
                a5[2] = &v53[8 * v52];
                if (v23)
                {
                  operator delete(v23);
                }

                v23 = v53;
              }

              a5[1] = v45;
            }

            ++v46;
          }

          while (v20 != v46);
        }

        *a5 = v23;
        v55 = v65;
        if (v64 >= 1)
        {
          while (1)
          {
            if (v18[v20] != 1 && *v19 == 1)
            {
              v56 = a5[2];
              if (v45 < v56)
              {
                *v45++ = v20;
              }

              else
              {
                v57 = v45 - v23;
                v58 = (v45 - v23) >> 3;
                v59 = v58 + 1;
                if ((v58 + 1) >> 61)
                {
                  goto LABEL_101;
                }

                v60 = v56 - v23;
                if (v60 >> 2 > v59)
                {
                  v59 = v60 >> 2;
                }

                if (v60 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v61 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v61 = v59;
                }

                if (v61)
                {
                  if (v61 >> 61)
                  {
                    goto LABEL_102;
                  }

                  v62 = operator new(8 * v61);
                }

                else
                {
                  v62 = 0;
                }

                v63 = &v62[8 * v58];
                *v63 = v20;
                v45 = v63 + 1;
                memcpy(v62, v23, v57);
                a5[1] = v45;
                a5[2] = &v62[8 * v61];
                if (v23)
                {
                  operator delete(v23);
                }

                v23 = v62;
                v55 = v65;
              }

              a5[1] = v45;
            }

            ++v20;
            ++v19;
            if (v20 >= v55)
            {
              goto LABEL_99;
            }
          }
        }

        goto LABEL_99;
      }

      if (v15 >= 1)
      {
        v33 = 0;
        v23 = 0;
        v34 = v64;
        v35 = v64 - v15;
        while (1)
        {
          v36 = *v18++;
          if (v36 != 1 && v19[v35] == 1)
          {
            v37 = a5[2];
            if (v33 < v37)
            {
              *v33 = v35;
              v33 += 8;
            }

            else
            {
              v38 = v33 - v23;
              v39 = (v33 - v23) >> 3;
              v40 = v39 + 1;
              if ((v39 + 1) >> 61)
              {
                goto LABEL_101;
              }

              v41 = v37 - v23;
              if (v41 >> 2 > v40)
              {
                v40 = v41 >> 2;
              }

              if (v41 >= 0x7FFFFFFFFFFFFFF8)
              {
                v42 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v42 = v40;
              }

              if (v42)
              {
                if (v42 >> 61)
                {
                  goto LABEL_102;
                }

                v43 = operator new(8 * v42);
              }

              else
              {
                v43 = 0;
              }

              v44 = &v43[8 * v39];
              *v44 = v35;
              v33 = (v44 + 1);
              memcpy(v43, v23, v38);
              a5[1] = v33;
              a5[2] = &v43[8 * v42];
              if (v23)
              {
                operator delete(v23);
              }

              v23 = v43;
              v34 = v64;
            }

            a5[1] = v33;
          }

          if (++v35 >= v34)
          {
            goto LABEL_99;
          }
        }
      }
    }

    v23 = 0;
LABEL_99:
    *a5 = v23;
    return;
  }

LABEL_6:
  v12 = mlir::CallableOpInterface::getArgAttrsAttr(v67);
  if (v13 != v8 || memcmp(v12, ArgAttrsAttr, 8 * v13))
  {
    goto LABEL_8;
  }
}

unint64_t mlir::mps::mergeDynamicDims(unint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x8000000000000000;
  }

  v2 = 8 * a2;
  v3 = 0x8000000000000000;
  do
  {
    v5 = *a1++;
    v4 = v5;
    if (v3 == 0x8000000000000000)
    {
      v3 = v4;
    }

    v2 -= 8;
  }

  while (v2);
  return v3;
}

unint64_t mlir::mps::getDataSize(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v7 = ElementTypeOrSelf;
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v2 = ElementTypeOrSelf;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2)
  {
    Value = mlir::AffineMapAttr::getValue(&v6);
    DataSize = mlir::mps::getDataSize(Value);
    return ((8 * DataSize - (8 * DataSize != 0) + 8 * (8 * DataSize != 0)) >> 2) & 0x1FFFFFFFFFFFFFFELL;
  }

  else if (mlir::Type::isIndex(&v7))
  {
    return 8;
  }

  else
  {
    return mlir::Type::getIntOrFloatBitWidth(&v7) >> 3;
  }
}

void mlir::mps::mixed_precision::defaultMixedPrecisionCheck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v7 = a5;
  v8 = a3;
  v9 = a2;
  v147 = *MEMORY[0x1E69E9840];
  v129 = 0;
  v130 = 0;
  v131 = 0;
  if (a5)
  {
    v124 = a1;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = mlir::TypeRange::dereference_iterator(a4, v14);
      v127[0] = mlir::getElementTypeOrSelf(v15);
      isF16 = mlir::Type::isF16(v127);
      isBF16 = mlir::Type::isBF16(v127);
      isF32 = mlir::Type::isF32(v127);
      v19 = *(*v127[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
      if (mlir::Type::isIntOrIndex(v127))
      {
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v129, v127, &v135);
      }

      v10 |= isF16;
      v11 |= isBF16;
      v12 |= isF32;
      v13 |= v19;
      ++v14;
    }

    while (v7 != v14);
    if (v130 >= 2 && (a7 & 1) == 0)
    {
      v128 = 257;
      mlir::Operation::emitOpError(v124, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with operands of different integer types which is not supported";
        v134 = 82;
        v20 = &v132;
        v21 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v111 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v21 = v137;
            v20 = (v137 + v111);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v20 = &v132;
            v21 = v137;
          }
        }

        v22 = &v21[24 * v138];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v144;
        v26 = __p;
        if (v144 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v144 = v24;
        operator delete(v26);
      }

      v27 = v141;
      if (v141)
      {
        v28 = v142;
        v29 = v141;
        if (v142 == v141)
        {
          goto LABEL_200;
        }

        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            operator delete[](v30);
          }
        }

        while (v28 != v27);
        goto LABEL_199;
      }

      goto LABEL_201;
    }

    v32 = v130 == 0;
    LODWORD(v7) = v10 | v12 | v11;
    if ((v7 & 1) != 0 && (a6 & 1) == 0 && v130)
    {
      v128 = 257;
      mlir::Operation::emitOpError(v124, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with both float and integer operands which is not supported";
        v134 = 78;
        v41 = &v132;
        v42 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v112 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v42 = v137;
            v41 = (v137 + v112);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v41 = &v132;
            v42 = v137;
          }
        }

        v43 = &v42[24 * v138];
        v44 = *v41;
        *(v43 + 2) = *(v41 + 2);
        *v43 = v44;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v144;
        v47 = __p;
        if (v144 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v144 = v45;
        operator delete(v47);
      }

      v27 = v141;
      if (v141)
      {
        v48 = v142;
        v29 = v141;
        if (v142 == v141)
        {
          goto LABEL_200;
        }

        do
        {
          v50 = *--v48;
          v49 = v50;
          *v48 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v48 != v27);
        goto LABEL_199;
      }

      goto LABEL_201;
    }

    a1 = v124;
    if (v130 && ((v13 ^ 1) & 1) == 0)
    {
      v128 = 257;
      mlir::Operation::emitOpError(v124, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with both complex and integer type operands which is not supported";
        v134 = 85;
        v51 = &v132;
        v52 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v113 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v52 = v137;
            v51 = (v137 + v113);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v51 = &v132;
            v52 = v137;
          }
        }

        v53 = &v52[24 * v138];
        v54 = *v51;
        *(v53 + 2) = *(v51 + 2);
        *v53 = v54;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v144;
        v57 = __p;
        if (v144 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v144 = v55;
        operator delete(v57);
      }

      v27 = v141;
      if (v141)
      {
        v58 = v142;
        v29 = v141;
        if (v142 == v141)
        {
          goto LABEL_200;
        }

        do
        {
          v60 = *--v58;
          v59 = v60;
          *v58 = 0;
          if (v60)
          {
            operator delete[](v59);
          }
        }

        while (v58 != v27);
        goto LABEL_199;
      }

      goto LABEL_201;
    }

    if (v13 & v11)
    {
      v128 = 257;
      mlir::Operation::emitOpError(v124, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with both complex and BF16 type operands which is not supported";
        v134 = 82;
        v61 = &v132;
        v62 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v115 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v62 = v137;
            v61 = (v137 + v115);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v61 = &v132;
            v62 = v137;
          }
        }

        v63 = &v62[24 * v138];
        v64 = *v61;
        *(v63 + 2) = *(v61 + 2);
        *v63 = v64;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v65 = __p;
      if (__p)
      {
        v66 = v144;
        v67 = __p;
        if (v144 != __p)
        {
          do
          {
            v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
          }

          while (v66 != v65);
          v67 = __p;
        }

        v144 = v65;
        operator delete(v67);
      }

      v27 = v141;
      if (v141)
      {
        v68 = v142;
        v29 = v141;
        if (v142 == v141)
        {
          goto LABEL_200;
        }

        do
        {
          v70 = *--v68;
          v69 = v70;
          *v68 = 0;
          if (v70)
          {
            operator delete[](v69);
          }
        }

        while (v68 != v27);
        goto LABEL_199;
      }

      goto LABEL_201;
    }

    if (v10 & v11)
    {
      v128 = 257;
      mlir::Operation::emitOpError(v124, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with both F16 and BF16 operands which is not supported";
        v134 = 73;
        v81 = &v132;
        v82 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v119 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v82 = v137;
            v81 = (v137 + v119);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v81 = &v132;
            v82 = v137;
          }
        }

        v83 = &v82[24 * v138];
        v84 = *v81;
        *(v83 + 2) = *(v81 + 2);
        *v83 = v84;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v85 = __p;
      if (__p)
      {
        v86 = v144;
        v87 = __p;
        if (v144 != __p)
        {
          do
          {
            v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
          }

          while (v86 != v85);
          v87 = __p;
        }

        v144 = v85;
        operator delete(v87);
      }

      v27 = v141;
      if (!v141)
      {
        goto LABEL_201;
      }

      v88 = v142;
      v29 = v141;
      if (v142 != v141)
      {
        do
        {
          v90 = *--v88;
          v89 = v90;
          *v88 = 0;
          if (v90)
          {
            operator delete[](v89);
          }
        }

        while (v88 != v27);
        goto LABEL_199;
      }

LABEL_200:
      v142 = v27;
      operator delete(v29);
      goto LABEL_201;
    }

    v9 = a2;
    v8 = a3;
    if (!a3)
    {
      goto LABEL_204;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    LOBYTE(v11) = 0;
    v32 = 1;
    if (!a3)
    {
      goto LABEL_204;
    }
  }

  v33 = a1;
  v34 = 0;
  if ((v32 & v7 & 1) == 0)
  {
    while (1)
    {
      v35 = mlir::TypeRange::dereference_iterator(v9, v34);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v35);
      mlir::Type::isIntOrIndex(&ElementTypeOrSelf);
      if (mlir::Type::isF16(&ElementTypeOrSelf) || mlir::Type::isF32(&ElementTypeOrSelf))
      {
        if (((v32 | v7) & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      else if (!(v32 | !mlir::Type::isBF16(&ElementTypeOrSelf) | v7 & 1))
      {
        goto LABEL_122;
      }

      if ((v10 & 1) != 0 && mlir::Type::isBF16(&ElementTypeOrSelf))
      {
        break;
      }

      if ((v11 & 1) != 0 && mlir::Type::isF16(&ElementTypeOrSelf))
      {
        goto LABEL_52;
      }

      if (v8 == ++v34)
      {
        goto LABEL_204;
      }
    }

LABEL_161:
    v128 = 257;
    mlir::Operation::emitOpError(v33, v127, &v135);
    if (v135)
    {
      v132 = 3;
      v133 = "detected operation with F16 inputs and BF16 result type which is not supported";
      v134 = 78;
      v91 = &v132;
      v92 = v137;
      if (v138 >= v139)
      {
        if (v137 <= &v132 && v137 + 24 * v138 > &v132)
        {
          v116 = &v132 - v137;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
          v92 = v137;
          v91 = (v137 + v116);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
          v91 = &v132;
          v92 = v137;
        }
      }

      v93 = &v92[24 * v138];
      v94 = *v91;
      *(v93 + 2) = *(v91 + 2);
      *v93 = v94;
      ++v138;
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
    if (v135)
    {
      mlir::InFlightDiagnostic::report(&v135);
    }

    if (v146 == 1)
    {
      if (v145 != &v146)
      {
        free(v145);
      }

      v95 = __p;
      if (__p)
      {
        v96 = v144;
        v97 = __p;
        if (v144 != __p)
        {
          do
          {
            v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
          }

          while (v96 != v95);
          v97 = __p;
        }

        v144 = v95;
        operator delete(v97);
      }

      v27 = v141;
      if (!v141)
      {
        goto LABEL_201;
      }

      v98 = v142;
      v29 = v141;
      if (v142 != v141)
      {
        do
        {
          v100 = *--v98;
          v99 = v100;
          *v98 = 0;
          if (v100)
          {
            operator delete[](v99);
          }
        }

        while (v98 != v27);
        goto LABEL_199;
      }

      goto LABEL_200;
    }

    goto LABEL_204;
  }

  while (1)
  {
    v36 = mlir::TypeRange::dereference_iterator(v9, v34);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v36);
    if (mlir::Type::isIntOrIndex(&ElementTypeOrSelf))
    {
      v128 = 257;
      mlir::Operation::emitOpError(v33, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with float inputs and integer result type which is not supported";
        v134 = 83;
        v101 = &v132;
        v102 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v118 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v102 = v137;
            v101 = (v137 + v118);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v101 = &v132;
            v102 = v137;
          }
        }

        v103 = &v102[24 * v138];
        v104 = *v101;
        *(v103 + 2) = *(v101 + 2);
        *v103 = v104;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 == 1)
      {
        if (v145 != &v146)
        {
          free(v145);
        }

        v105 = __p;
        if (__p)
        {
          v106 = v144;
          v107 = __p;
          if (v144 != __p)
          {
            do
            {
              v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
            }

            while (v106 != v105);
            v107 = __p;
          }

          v144 = v105;
          operator delete(v107);
        }

        v27 = v141;
        if (!v141)
        {
          goto LABEL_201;
        }

        v108 = v142;
        v29 = v141;
        if (v142 != v141)
        {
          do
          {
            v110 = *--v108;
            v109 = v110;
            *v108 = 0;
            if (v110)
            {
              operator delete[](v109);
            }
          }

          while (v108 != v27);
          goto LABEL_199;
        }

        goto LABEL_200;
      }

LABEL_204:
      llvm::deallocate_buffer(v129, (8 * v131));
    }

    if (!mlir::Type::isF16(&ElementTypeOrSelf) && !mlir::Type::isF32(&ElementTypeOrSelf))
    {
      break;
    }

    if (((v32 | v7) & 1) == 0)
    {
LABEL_122:
      v128 = 257;
      mlir::Operation::emitOpError(v33, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with integer inputs and float result type which is not supported";
        v134 = 83;
        v71 = &v132;
        v72 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v114 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v72 = v137;
            v71 = (v137 + v114);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v71 = &v132;
            v72 = v137;
          }
        }

        v73 = &v72[24 * v138];
        v74 = *v71;
        *(v73 + 2) = *(v71 + 2);
        *v73 = v74;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v75 = __p;
      if (__p)
      {
        v76 = v144;
        v77 = __p;
        if (v144 != __p)
        {
          do
          {
            v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
          }

          while (v76 != v75);
          v77 = __p;
        }

        v144 = v75;
        operator delete(v77);
      }

      v27 = v141;
      if (v141)
      {
        v78 = v142;
        v29 = v141;
        if (v142 == v141)
        {
          goto LABEL_200;
        }

        do
        {
          v80 = *--v78;
          v79 = v80;
          *v78 = 0;
          if (v80)
          {
            operator delete[](v79);
          }
        }

        while (v78 != v27);
LABEL_199:
        v29 = v141;
        goto LABEL_200;
      }

LABEL_201:
      if (v137 != v140)
      {
        free(v137);
      }

      goto LABEL_204;
    }

    if (v10)
    {
      goto LABEL_49;
    }

LABEL_50:
    if ((v11 & 1) != 0 && mlir::Type::isF16(&ElementTypeOrSelf))
    {
LABEL_52:
      v128 = 257;
      mlir::Operation::emitOpError(v33, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with BF16 inputs and F16 result type which is not supported";
        v134 = 78;
        v37 = &v132;
        v38 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v117 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v38 = v137;
            v37 = (v137 + v117);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v37 = &v132;
            v38 = v137;
          }
        }

        v39 = &v38[24 * v138];
        v40 = *v37;
        *(v39 + 2) = *(v37 + 2);
        *v39 = v40;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v136);
      }

      goto LABEL_204;
    }

    if (v8 == ++v34)
    {
      goto LABEL_204;
    }
  }

  mlir::Type::isBF16(&ElementTypeOrSelf);
  if ((v10 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_49:
  if (mlir::Type::isBF16(&ElementTypeOrSelf))
  {
    goto LABEL_161;
  }

  goto LABEL_50;
}

BOOL mlir::detail::verifyLoopLikeOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v252 = *MEMORY[0x1E69E9840];
  if (this)
  {
    InterfaceFor = mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(this);
    v4 = (*(InterfaceFor + 64))(InterfaceFor, this);
    v6 = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  InterfaceFor = 0;
  v4 = MEMORY[0x40](0, 0);
  v6 = v83;
  if (v83)
  {
LABEL_3:
    mlir::OpOperand::getOperandNumber(v4);
  }

LABEL_4:
  (*(InterfaceFor + 72))(InterfaceFor, this);
  if (v6 != v7)
  {
    v237[0] = "different number of inits and region iter_args: ";
    v238 = 259;
    mlir::Operation::emitOpError(this, v237, &v239);
    v58 = (*(InterfaceFor + 64))(InterfaceFor, this);
    v60 = v59;
    if (v59)
    {
      mlir::OpOperand::getOperandNumber(v58);
    }

    if (v239)
    {
      LODWORD(v232) = 5;
      size = v60;
      v61 = &v232;
      v62 = v242;
      if (v243 >= v244)
      {
        if (v242 <= &v232 && v242 + 24 * v243 > &v232)
        {
          v205 = &v232 - v242;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
          v62 = v242;
          v61 = (v242 + v205);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
          v61 = &v232;
          v62 = v242;
        }
      }

      v63 = &v62[24 * v243];
      v64 = *v61;
      *(v63 + 2) = v61[2];
      *v63 = v64;
      v65 = ++v243;
      if (v239)
      {
        LODWORD(v232) = 3;
        size = " != ";
        v234 = 4;
        v66 = &v232;
        v67 = v242;
        if (v65 >= v244)
        {
          if (v242 <= &v232 && v242 + 24 * v65 > &v232)
          {
            v207 = &v232 - v242;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v65 + 1, 24);
            v67 = v242;
            v66 = (v242 + v207);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v65 + 1, 24);
            v66 = &v232;
            v67 = v242;
          }
        }

        v68 = &v67[24 * v243];
        v69 = *v66;
        *(v68 + 2) = v66[2];
        *v68 = v69;
        ++v243;
      }
    }

    (*(InterfaceFor + 72))(InterfaceFor, this);
    if (v239)
    {
      LODWORD(v232) = 5;
      size = v70;
      v71 = &v232;
      v72 = v242;
      if (v243 >= v244)
      {
        if (v242 <= &v232 && v242 + 24 * v243 > &v232)
        {
          v206 = &v232 - v242;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
          v72 = v242;
          v71 = (v242 + v206);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
          v71 = &v232;
          v72 = v242;
        }
      }

      v73 = &v72[24 * v243];
      v74 = *v71;
      *(v73 + 2) = v71[2];
      *v73 = v74;
      ++v243;
    }

    v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
    if (v239)
    {
      mlir::InFlightDiagnostic::report(&v239);
    }

    if (v251 == 1)
    {
      if (v250 != &v251)
      {
        free(v250);
      }

      v75 = __p;
      if (__p)
      {
        v76 = v249;
        v77 = __p;
        if (v249 != __p)
        {
          do
          {
            v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
          }

          while (v76 != v75);
          v77 = __p;
        }

        v249 = v75;
        operator delete(v77);
      }

      v78 = v246;
      if (!v246)
      {
        goto LABEL_208;
      }

      v79 = v247;
      v80 = v246;
      if (v247 == v246)
      {
        goto LABEL_207;
      }

      do
      {
        v82 = *--v79;
        v81 = v82;
        *v79 = 0;
        if (v82)
        {
          operator delete[](v81);
        }
      }

      while (v79 != v78);
      goto LABEL_206;
    }

    return v51;
  }

  (*(InterfaceFor + 80))(&v239, InterfaceFor, this);
  if (v241 == 1 && v240)
  {
    mlir::detail::verifyLoopLikeOpInterface(&v239);
    if (!v237[1])
    {
      goto LABEL_11;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(v237, 0, 0);
    if (!v237[1])
    {
LABEL_11:
      (*(InterfaceFor + 88))(&v239, InterfaceFor, this);
      if (v241 != 1 || ((*(InterfaceFor + 88))(v237, InterfaceFor, this), v10 = v237[1], (*(InterfaceFor + 72))(InterfaceFor, this), v10 == v11))
      {
        (*(InterfaceFor + 80))(&v239, InterfaceFor, this);
        if (v241 == 1 && v240)
        {
          mlir::detail::verifyLoopLikeOpInterface(&v239);
        }

        else
        {
          mlir::ValueRange::ValueRange(v237, 0, 0);
        }

        v235 = *v237;
        v12 = (*(InterfaceFor + 64))(InterfaceFor, this);
        if (v13)
        {
          v14 = v13;
          OperandNumber = mlir::OpOperand::getOperandNumber(v12);
          if ((*(this + 46) & 0x80) != 0)
          {
            v16 = *(this + 9);
          }

          else
          {
            v16 = 0;
          }

          v17 = OperandNumber;
          v18 = (*(InterfaceFor + 72))(InterfaceFor, this);
          v19 = 0;
          v20 = v16 + 32 * v17 + 24;
          while (1)
          {
            v21 = *v20;
            v22 = *(*v20 + 8) & 0xFFFFFFFFFFFFFFF8;
            if (v22 != (*(*(v18 + 8 * v19) + 8) & 0xFFFFFFFFFFFFFFF8))
            {
              break;
            }

            if (*(&v235 + 1) && v22 != (*(mlir::ValueRange::dereference_iterator(&v235, v19) + 8) & 0xFFFFFFFFFFFFFFF8))
            {
              std::to_string(&v236, v19);
              v238 = 260;
              v237[0] = &v236;
              mlir::Operation::emitOpError(this, v237, &v239);
              if (v239)
              {
                LODWORD(v232) = 3;
                size = "-th region iter_arg and ";
                v234 = 24;
                v23 = &v232;
                v24 = v242;
                if (v243 >= v244)
                {
                  if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                  {
                    v216 = &v232 - v242;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                    v24 = v242;
                    v23 = (v242 + v216);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                    v23 = &v232;
                    v24 = v242;
                  }
                }

                v25 = &v24[24 * v243];
                v26 = *v23;
                *(v25 + 2) = v23[2];
                *v25 = v26;
                v27 = ++v243;
                if (v239)
                {
                  LODWORD(v232) = 5;
                  size = v19;
                  v28 = &v232;
                  v29 = v242;
                  if (v27 >= v244)
                  {
                    if (v242 <= &v232 && v242 + 24 * v27 > &v232)
                    {
                      v220 = &v232 - v242;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v27 + 1, 24);
                      v29 = v242;
                      v28 = (v242 + v220);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v27 + 1, 24);
                      v28 = &v232;
                      v29 = v242;
                    }
                  }

                  v30 = &v29[24 * v243];
                  v31 = *v28;
                  *(v30 + 2) = v28[2];
                  *v30 = v31;
                  v32 = ++v243;
                  if (v239)
                  {
                    LODWORD(v232) = 3;
                    size = "-th yielded value have different type: ";
                    v234 = 39;
                    v33 = &v232;
                    v34 = v242;
                    if (v32 >= v244)
                    {
                      if (v242 <= &v232 && v242 + 24 * v32 > &v232)
                      {
                        v223 = &v232 - v242;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v32 + 1, 24);
                        v34 = v242;
                        v33 = (v242 + v223);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v32 + 1, 24);
                        v33 = &v232;
                        v34 = v242;
                      }
                    }

                    v35 = &v34[24 * v243];
                    v36 = *v33;
                    *(v35 + 2) = v33[2];
                    *v35 = v36;
                    ++v243;
                    if (v239)
                    {
                      v37 = &v232;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(*(v18 + 8 * v19) + 8) & 0xFFFFFFFFFFFFFFF8);
                      v38 = v242;
                      if (v243 >= v244)
                      {
                        if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                        {
                          v226 = &v232 - v242;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v38 = v242;
                          v37 = (v242 + v226);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v37 = &v232;
                          v38 = v242;
                        }
                      }

                      v39 = &v38[24 * v243];
                      v40 = *v37;
                      *(v39 + 2) = v37[2];
                      *v39 = v40;
                      v41 = ++v243;
                      if (v239)
                      {
                        LODWORD(v232) = 3;
                        size = " != ";
                        v234 = 4;
                        v42 = &v232;
                        v43 = v242;
                        if (v41 >= v244)
                        {
                          if (v242 <= &v232 && v242 + 24 * v41 > &v232)
                          {
                            v229 = &v232 - v242;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v41 + 1, 24);
                            v43 = v242;
                            v42 = (v242 + v229);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v41 + 1, 24);
                            v42 = &v232;
                            v43 = v242;
                          }
                        }

                        v44 = &v43[24 * v243];
                        v45 = *v42;
                        *(v44 + 2) = v42[2];
                        *v44 = v45;
                        ++v243;
                      }
                    }
                  }
                }
              }

              v46 = mlir::ValueRange::dereference_iterator(&v235, v19);
              if (v239)
              {
                v47 = &v232;
                mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(v46 + 8) & 0xFFFFFFFFFFFFFFF8);
                v48 = v242;
                if (v243 >= v244)
                {
                  if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                  {
                    v217 = &v232 - v242;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                    v48 = v242;
                    v47 = (v242 + v217);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                    v47 = &v232;
                    v48 = v242;
                  }
                }

                v49 = &v48[24 * v243];
                v50 = *v47;
                *(v49 + 2) = v47[2];
                *v49 = v50;
                ++v243;
              }

              v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
              if (v239)
              {
                mlir::InFlightDiagnostic::report(&v239);
              }

              if (v251 != 1)
              {
                goto LABEL_175;
              }

              if (v250 != &v251)
              {
                free(v250);
              }

              v52 = __p;
              if (__p)
              {
                v53 = v249;
                v54 = __p;
                if (v249 != __p)
                {
                  do
                  {
                    v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
                  }

                  while (v53 != v52);
                  v54 = __p;
                }

                v249 = v52;
                operator delete(v54);
              }

              v55 = v246;
              if (v246)
              {
                v56 = v247;
                v57 = v246;
                if (v247 == v246)
                {
                  goto LABEL_172;
                }

                do
                {
                  v85 = *--v56;
                  v84 = v85;
                  *v56 = 0;
                  if (v85)
                  {
                    operator delete[](v84);
                  }
                }

                while (v56 != v55);
LABEL_171:
                v57 = v246;
LABEL_172:
                v247 = v55;
                operator delete(v57);
                goto LABEL_173;
              }

              goto LABEL_173;
            }

            ++v19;
            v20 += 32;
            if (v14 == v19)
            {
              goto LABEL_83;
            }
          }

          std::to_string(&v236, v19);
          v238 = 260;
          v237[0] = &v236;
          mlir::Operation::emitOpError(this, v237, &v239);
          if (v239)
          {
            LODWORD(v232) = 3;
            size = "-th init and ";
            v234 = 13;
            v113 = &v232;
            v114 = v242;
            if (v243 >= v244)
            {
              if (v242 <= &v232 && v242 + 24 * v243 > &v232)
              {
                v213 = &v232 - v242;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                v114 = v242;
                v113 = (v242 + v213);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                v113 = &v232;
                v114 = v242;
              }
            }

            v115 = &v114[24 * v243];
            v116 = *v113;
            *(v115 + 2) = v113[2];
            *v115 = v116;
            v117 = ++v243;
            if (v239)
            {
              LODWORD(v232) = 5;
              size = v19;
              v118 = &v232;
              v119 = v242;
              if (v117 >= v244)
              {
                if (v242 <= &v232 && v242 + 24 * v117 > &v232)
                {
                  v215 = &v232 - v242;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v117 + 1, 24);
                  v119 = v242;
                  v118 = (v242 + v215);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v117 + 1, 24);
                  v118 = &v232;
                  v119 = v242;
                }
              }

              v120 = &v119[24 * v243];
              v121 = *v118;
              *(v120 + 2) = v118[2];
              *v120 = v121;
              v122 = ++v243;
              if (v239)
              {
                LODWORD(v232) = 3;
                size = "-th region iter_arg have different type: ";
                v234 = 41;
                v123 = &v232;
                v124 = v242;
                if (v122 >= v244)
                {
                  if (v242 <= &v232 && v242 + 24 * v122 > &v232)
                  {
                    v219 = &v232 - v242;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v122 + 1, 24);
                    v124 = v242;
                    v123 = (v242 + v219);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v122 + 1, 24);
                    v123 = &v232;
                    v124 = v242;
                  }
                }

                v125 = &v124[24 * v243];
                v126 = *v123;
                *(v125 + 2) = v123[2];
                *v125 = v126;
                ++v243;
                if (v239)
                {
                  v127 = &v232;
                  mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
                  v128 = v242;
                  if (v243 >= v244)
                  {
                    if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                    {
                      v222 = &v232 - v242;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                      v128 = v242;
                      v127 = (v242 + v222);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                      v127 = &v232;
                      v128 = v242;
                    }
                  }

                  v129 = &v128[24 * v243];
                  v130 = *v127;
                  *(v129 + 2) = v127[2];
                  *v129 = v130;
                  v131 = ++v243;
                  if (v239)
                  {
                    LODWORD(v232) = 3;
                    size = " != ";
                    v234 = 4;
                    v132 = &v232;
                    v133 = v242;
                    if (v131 >= v244)
                    {
                      if (v242 <= &v232 && v242 + 24 * v131 > &v232)
                      {
                        v225 = &v232 - v242;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v131 + 1, 24);
                        v133 = v242;
                        v132 = (v242 + v225);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v131 + 1, 24);
                        v132 = &v232;
                        v133 = v242;
                      }
                    }

                    v134 = &v133[24 * v243];
                    v135 = *v132;
                    *(v134 + 2) = v132[2];
                    *v134 = v135;
                    ++v243;
                    if (v239)
                    {
                      v136 = &v232;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(*(v18 + 8 * v19) + 8) & 0xFFFFFFFFFFFFFFF8);
                      v137 = v242;
                      if (v243 >= v244)
                      {
                        if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                        {
                          v228 = &v232 - v242;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v137 = v242;
                          v136 = (v242 + v228);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v136 = &v232;
                          v137 = v242;
                        }
                      }

                      v138 = &v137[24 * v243];
                      v139 = *v136;
                      *(v138 + 2) = v136[2];
                      *v138 = v139;
                      ++v243;
                    }
                  }
                }
              }
            }
          }

          v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
          if (v239)
          {
            mlir::InFlightDiagnostic::report(&v239);
          }

          if (v251 != 1)
          {
            goto LABEL_175;
          }

          if (v250 != &v251)
          {
            free(v250);
          }

          v140 = __p;
          if (__p)
          {
            v141 = v249;
            v142 = __p;
            if (v249 != __p)
            {
              do
              {
                v141 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v141 - 1);
              }

              while (v141 != v140);
              v142 = __p;
            }

            v249 = v140;
            operator delete(v142);
          }

          v55 = v246;
          if (v246)
          {
            v143 = v247;
            v57 = v246;
            if (v247 == v246)
            {
              goto LABEL_172;
            }

            do
            {
              v145 = *--v143;
              v144 = v145;
              *v143 = 0;
              if (v145)
              {
                operator delete[](v144);
              }
            }

            while (v143 != v55);
            goto LABEL_171;
          }

LABEL_173:
          v183 = v242;
          if (v242 == v245)
          {
            goto LABEL_175;
          }
        }

        else
        {
          (*(InterfaceFor + 72))(InterfaceFor, this);
LABEL_83:
          (*(InterfaceFor + 88))(&v239, InterfaceFor, this);
          if (v241 != 1)
          {
            return 1;
          }

          v86 = (*(InterfaceFor + 72))(InterfaceFor, this);
          v88 = v87;
          (*(InterfaceFor + 88))(&v239, InterfaceFor, this);
          if (!v88)
          {
            return 1;
          }

          v89 = 0;
          v90 = v239;
          v91 = 8 * v88;
          while (1)
          {
            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v90, v89);
            if ((*(NextResultAtOffset + 8) ^ *(*(v86 + 8 * v89) + 8)) >= 8)
            {
              break;
            }

            ++v89;
            v91 -= 8;
            if (!v91)
            {
              return 1;
            }
          }

          v146 = NextResultAtOffset;
          std::to_string(&v236, 0);
          v238 = 260;
          v237[0] = &v236;
          mlir::Operation::emitOpError(this, v237, &v239);
          if (v239)
          {
            LODWORD(v232) = 3;
            size = "-th region iter_arg and ";
            v234 = 24;
            v147 = &v232;
            v148 = v242;
            if (v243 >= v244)
            {
              if (v242 <= &v232 && v242 + 24 * v243 > &v232)
              {
                v218 = &v232 - v242;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                v148 = v242;
                v147 = (v242 + v218);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                v147 = &v232;
                v148 = v242;
              }
            }

            v149 = &v148[24 * v243];
            v150 = *v147;
            *(v149 + 2) = v147[2];
            *v149 = v150;
            v151 = ++v243;
            if (v239)
            {
              LODWORD(v232) = 2;
              size = 0;
              v152 = &v232;
              v153 = v242;
              if (v151 >= v244)
              {
                if (v242 <= &v232 && v242 + 24 * v151 > &v232)
                {
                  v221 = &v232 - v242;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v151 + 1, 24);
                  v153 = v242;
                  v152 = (v242 + v221);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v151 + 1, 24);
                  v152 = &v232;
                  v153 = v242;
                }
              }

              v154 = &v153[24 * v243];
              v155 = *v152;
              *(v154 + 2) = v152[2];
              *v154 = v155;
              v156 = ++v243;
              if (v239)
              {
                LODWORD(v232) = 3;
                size = "-th loop result have different type: ";
                v234 = 37;
                v157 = &v232;
                v158 = v242;
                if (v156 >= v244)
                {
                  if (v242 <= &v232 && v242 + 24 * v156 > &v232)
                  {
                    v224 = &v232 - v242;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v156 + 1, 24);
                    v158 = v242;
                    v157 = (v242 + v224);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v156 + 1, 24);
                    v157 = &v232;
                    v158 = v242;
                  }
                }

                v159 = &v158[24 * v243];
                v160 = *v157;
                *(v159 + 2) = v157[2];
                *v159 = v160;
                ++v243;
                if (v239)
                {
                  v161 = &v232;
                  mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(*(v86 + 8 * v89) + 8) & 0xFFFFFFFFFFFFFFF8);
                  v162 = v242;
                  if (v243 >= v244)
                  {
                    if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                    {
                      v227 = &v232 - v242;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                      v162 = v242;
                      v161 = (v242 + v227);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                      v161 = &v232;
                      v162 = v242;
                    }
                  }

                  v163 = v146;
                  v164 = &v162[24 * v243];
                  v165 = *v161;
                  *(v164 + 2) = v161[2];
                  *v164 = v165;
                  v166 = ++v243;
                  if (v239)
                  {
                    LODWORD(v232) = 3;
                    size = " != ";
                    v234 = 4;
                    v167 = &v232;
                    v168 = v242;
                    if (v166 >= v244)
                    {
                      if (v242 <= &v232 && v242 + 24 * v166 > &v232)
                      {
                        v230 = &v232 - v242;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v166 + 1, 24);
                        v168 = v242;
                        v167 = (v242 + v230);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v166 + 1, 24);
                        v167 = &v232;
                        v168 = v242;
                      }

                      v163 = v146;
                    }

                    v169 = &v168[24 * v243];
                    v170 = *v167;
                    *(v169 + 2) = v167[2];
                    *v169 = v170;
                    ++v243;
                    if (v239)
                    {
                      v171 = &v232;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(v163 + 8) & 0xFFFFFFFFFFFFFFF8);
                      v172 = v242;
                      if (v243 >= v244)
                      {
                        if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                        {
                          v231 = &v232 - v242;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v172 = v242;
                          v171 = (v242 + v231);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v171 = &v232;
                          v172 = v242;
                        }
                      }

                      v173 = &v172[24 * v243];
                      v174 = *v171;
                      *(v173 + 2) = v171[2];
                      *v173 = v174;
                      ++v243;
                    }
                  }
                }
              }
            }
          }

          v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
          if (v239)
          {
            mlir::InFlightDiagnostic::report(&v239);
          }

          if (v251 != 1)
          {
            goto LABEL_175;
          }

          if (v250 != &v251)
          {
            free(v250);
          }

          v175 = __p;
          if (__p)
          {
            v176 = v249;
            v177 = __p;
            if (v249 != __p)
            {
              do
              {
                v176 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v176 - 1);
              }

              while (v176 != v175);
              v177 = __p;
            }

            v249 = v175;
            operator delete(v177);
          }

          v178 = v246;
          if (v246)
          {
            v179 = v247;
            v180 = v246;
            if (v247 != v246)
            {
              do
              {
                v182 = *--v179;
                v181 = v182;
                *v179 = 0;
                if (v182)
                {
                  operator delete[](v181);
                }
              }

              while (v179 != v178);
              v180 = v246;
            }

            v247 = v178;
            operator delete(v180);
          }

          v183 = v242;
          if (v242 == v245)
          {
            goto LABEL_175;
          }
        }

        free(v183);
LABEL_175:
        if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v236.__r_.__value_.__l.__data_);
        }

        return v51;
      }

      v237[0] = "different number of loop results and region iter_args: ";
      v238 = 259;
      mlir::Operation::emitOpError(this, v237, &v239);
      (*(InterfaceFor + 88))(&v236, InterfaceFor, this);
      if (v239)
      {
        LODWORD(v232) = 5;
        size = v236.__r_.__value_.__l.__size_;
        v93 = &v232;
        v94 = v242;
        if (v243 >= v244)
        {
          if (v242 <= &v232 && v242 + 24 * v243 > &v232)
          {
            v211 = &v232 - v242;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
            v94 = v242;
            v93 = (v242 + v211);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
            v93 = &v232;
            v94 = v242;
          }
        }

        v95 = &v94[24 * v243];
        v96 = *v93;
        *(v95 + 2) = v93[2];
        *v95 = v96;
        v97 = ++v243;
        if (v239)
        {
          LODWORD(v232) = 3;
          size = " != ";
          v234 = 4;
          v98 = &v232;
          v99 = v242;
          if (v97 >= v244)
          {
            if (v242 <= &v232 && v242 + 24 * v97 > &v232)
            {
              v214 = &v232 - v242;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v97 + 1, 24);
              v99 = v242;
              v98 = (v242 + v214);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v97 + 1, 24);
              v98 = &v232;
              v99 = v242;
            }
          }

          v100 = &v99[24 * v243];
          v101 = *v98;
          *(v100 + 2) = v98[2];
          *v100 = v101;
          ++v243;
        }
      }

      (*(InterfaceFor + 72))(InterfaceFor, this);
      if (v239)
      {
        LODWORD(v232) = 5;
        size = v102;
        v103 = &v232;
        v104 = v242;
        if (v243 >= v244)
        {
          if (v242 <= &v232 && v242 + 24 * v243 > &v232)
          {
            v212 = &v232 - v242;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
            v104 = v242;
            v103 = (v242 + v212);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
            v103 = &v232;
            v104 = v242;
          }
        }

        v105 = &v104[24 * v243];
        v106 = *v103;
        *(v105 + 2) = v103[2];
        *v105 = v106;
        ++v243;
      }

      v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
      if (v239)
      {
        mlir::InFlightDiagnostic::report(&v239);
      }

      if (v251 == 1)
      {
        if (v250 != &v251)
        {
          free(v250);
        }

        v107 = __p;
        if (__p)
        {
          v108 = v249;
          v109 = __p;
          if (v249 != __p)
          {
            do
            {
              v108 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v108 - 1);
            }

            while (v108 != v107);
            v109 = __p;
          }

          v249 = v107;
          operator delete(v109);
        }

        v78 = v246;
        if (!v246)
        {
          goto LABEL_208;
        }

        v110 = v247;
        v80 = v246;
        if (v247 == v246)
        {
LABEL_207:
          v247 = v78;
          operator delete(v80);
LABEL_208:
          if (v242 != v245)
          {
            free(v242);
          }

          return v51;
        }

        do
        {
          v112 = *--v110;
          v111 = v112;
          *v110 = 0;
          if (v112)
          {
            operator delete[](v111);
          }
        }

        while (v110 != v78);
LABEL_206:
        v80 = v246;
        goto LABEL_207;
      }

      return v51;
    }
  }

  (*(InterfaceFor + 72))(InterfaceFor, this);
  v9 = v8;
  (*(InterfaceFor + 80))(&v239, InterfaceFor, this);
  if (v241 == 1 && v240)
  {
    mlir::detail::verifyLoopLikeOpInterface(&v239);
    if (v9 == v237[1])
    {
      goto LABEL_11;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(v237, 0, 0);
    if (v9 == v237[1])
    {
      goto LABEL_11;
    }
  }

  v237[0] = "different number of region iter_args and yielded values: ";
  v238 = 259;
  mlir::Operation::emitOpError(this, v237, &v239);
  (*(InterfaceFor + 72))(InterfaceFor, this);
  if (v239)
  {
    LODWORD(v232) = 5;
    size = v184;
    v185 = &v232;
    v186 = v242;
    if (v243 >= v244)
    {
      if (v242 <= &v232 && v242 + 24 * v243 > &v232)
      {
        v208 = &v232 - v242;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
        v186 = v242;
        v185 = (v242 + v208);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
        v185 = &v232;
        v186 = v242;
      }
    }

    v187 = &v186[24 * v243];
    v188 = *v185;
    *(v187 + 2) = v185[2];
    *v187 = v188;
    v189 = ++v243;
    if (v239)
    {
      LODWORD(v232) = 3;
      size = " != ";
      v234 = 4;
      v190 = &v232;
      v191 = v242;
      if (v189 >= v244)
      {
        if (v242 <= &v232 && v242 + 24 * v189 > &v232)
        {
          v210 = &v232 - v242;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v189 + 1, 24);
          v191 = v242;
          v190 = (v242 + v210);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v189 + 1, 24);
          v190 = &v232;
          v191 = v242;
        }
      }

      v192 = &v191[24 * v243];
      v193 = *v190;
      *(v192 + 2) = v190[2];
      *v192 = v193;
      ++v243;
    }
  }

  (*(InterfaceFor + 80))(&v232, InterfaceFor, this);
  if (v234 == 1 && size)
  {
    mlir::detail::verifyLoopLikeOpInterface(&v232);
    if (!v239)
    {
      goto LABEL_190;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(&v236, 0, 0);
    if (!v239)
    {
      goto LABEL_190;
    }
  }

  LODWORD(v232) = 5;
  size = v236.__r_.__value_.__l.__size_;
  v194 = &v232;
  v195 = v242;
  if (v243 >= v244)
  {
    if (v242 <= &v232 && v242 + 24 * v243 > &v232)
    {
      v209 = &v232 - v242;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
      v195 = v242;
      v194 = (v242 + v209);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
      v194 = &v232;
      v195 = v242;
    }
  }

  v196 = &v195[24 * v243];
  v197 = *v194;
  *(v196 + 2) = v194[2];
  *v196 = v197;
  ++v243;
LABEL_190:
  v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
  if (v239)
  {
    mlir::InFlightDiagnostic::report(&v239);
  }

  if (v251 == 1)
  {
    if (v250 != &v251)
    {
      free(v250);
    }

    v198 = __p;
    if (__p)
    {
      v199 = v249;
      v200 = __p;
      if (v249 != __p)
      {
        do
        {
          v199 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v199 - 1);
        }

        while (v199 != v198);
        v200 = __p;
      }

      v249 = v198;
      operator delete(v200);
    }

    v78 = v246;
    if (!v246)
    {
      goto LABEL_208;
    }

    v201 = v247;
    v80 = v246;
    if (v247 == v246)
    {
      goto LABEL_207;
    }

    do
    {
      v203 = *--v201;
      v202 = v203;
      *v201 = 0;
      if (v203)
      {
        operator delete[](v202);
      }
    }

    while (v201 != v78);
    goto LABEL_206;
  }

  return v51;
}

unint64_t OUTLINED_FUNCTION_0_20(mlir::OpOperand **a1)
{
  v2 = *a1;

  return mlir::OpOperand::getOperandNumber(v2);
}

unint64_t *OUTLINED_FUNCTION_1_27@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v3;

  return mlir::ValueRange::ValueRange(v2, a2 + 32 * a1, v5);
}

mlir::anec::ANECDialect *mlir::anec::ANECDialect::ANECDialect(mlir::anec::ANECDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "anec", 4, a2, &mlir::detail::TypeIDResolver<mlir::anec::ANECDialect,void>::id);
  *v3 = &unk_1F5B2E720;
  mlir::Dialect::addOperations<mlir::anec::A11Legacy,mlir::anec::A12,mlir::anec::A13,mlir::anec::A14,mlir::anec::A15,mlir::anec::A16,mlir::anec::A17,mlir::anec::A18,mlir::anec::ArgMinMax,mlir::anec::AveragePool,mlir::anec::BatchNorm,mlir::anec::BatchToSpace,mlir::anec::Broadcast,mlir::anec::Cast,mlir::anec::Ceil,mlir::anec::ChannelToSpace,mlir::anec::ClampedRelu,mlir::anec::Concat,mlir::anec::Convolution,mlir::anec::Cos,mlir::anec::CropResize,mlir::anec::DeQuant,mlir::anec::Deconvolution,mlir::anec::Degamma,mlir::anec::Dirac,mlir::anec::ElementwiseAbs,mlir::anec::ElementwiseAdd,mlir::anec::ElementwiseDiv,mlir::anec::ElementwiseEqual,mlir::anec::ElementwiseEqualZero,mlir::anec::ElementwiseGreaterThan,mlir::anec::ElementwiseGreaterThanEqual,mlir::anec::ElementwiseGreaterThanEqualZero,mlir::anec::ElementwiseGreaterThanZero,mlir::anec::ElementwiseLessThan,mlir::anec::ElementwiseLessThanEqual,mlir::anec::ElementwiseLessThanEqualZero,mlir::anec::ElementwiseLessThanZero,mlir::anec::ElementwiseMax,mlir::anec::ElementwiseMin,mlir::anec::ElementwiseMult,mlir::anec::ElementwiseNotEqual,mlir::anec::ElementwiseNotEqualZero,mlir::anec::ElementwisePower,mlir::anec::ElementwiseSquare,mlir::anec::ElementwiseSub,mlir::anec::Elu,mlir::anec::Erf,mlir::anec::Exp2,mlir::anec::Flatten,mlir::anec::Floor,mlir::anec::GOC,mlir::anec::GatherND,mlir::anec::Gelu,mlir::anec::GlobalArgMinMax,mlir::anec::HighPrecisionSigmoid,mlir::anec::InputView,mlir::anec::InstanceNorm,mlir::anec::Invert,mlir::anec::L2NormPool,mlir::anec::LayerNorm,mlir::anec::LeakyRelu,mlir::anec::Linear,mlir::anec::Log2,mlir::anec::MatMul,mlir::anec::MaxPool,mlir::anec::NRelu,mlir::anec::Padding,mlir::anec::PixelShuffle,mlir::anec::PixelUnshuffle,mlir::anec::Quant,mlir::anec::ReduceAvg,mlir::anec::ReduceMax,mlir::anec::ReduceMin,mlir::anec::ReduceSum,mlir::anec::RegionReturn,mlir::anec::Relu,mlir::anec::Resample,mlir::anec::Reshape,mlir::anec::Resize,mlir::anec::RingBufferReader,mlir::anec::RingBufferWriter,mlir::anec::RoundNearest,mlir::anec::Rsqrt,mlir::anec::ScaledDotProductAttention,mlir::anec::ScaledElementWise,mlir::anec::Sigmoid,mlir::anec::Sign,mlir::anec::Sin,mlir::anec::Softmax,mlir::anec::SpaceToBatch,mlir::anec::SpaceToChannel,mlir::anec::Sqr,mlir::anec::Sqrt,mlir::anec::State,mlir::anec::Swish,mlir::anec::Tanh,mlir::anec::TensorBufferToTensor,mlir::anec::TensorToTensorBuffer,mlir::anec::Tile,mlir::anec::Transpose,mlir::anec::Trunc,mlir::anec::Unflatten,mlir::anec::UnrealizedConversionCast>(v3);
  return this;
}

void sub_1E034EAEC(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::anec::BoxCoordinateModeAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v19 = a1;
  Value = mlir::AffineMapAttr::getValue(&v19);
  result = mlir::Type::isSignlessInteger(&Value, 64);
  if (result)
  {
    v18 = a1;
    if (mlir::IntegerAttr::getInt(&v18))
    {
      v17 = a1;
      result = mlir::IntegerAttr::getInt(&v17);
      if (result == 1)
      {
        return result;
      }

      v16 = a1;
      if (mlir::IntegerAttr::getInt(&v16) != 2)
      {
        v15 = a1;
        if (mlir::IntegerAttr::getInt(&v15) != 3)
        {
          v14 = a1;
          if (mlir::IntegerAttr::getInt(&v14) != 4)
          {
            v13 = a1;
            if (mlir::IntegerAttr::getInt(&v13) != 5)
            {
              v12 = a1;
              if (mlir::IntegerAttr::getInt(&v12) != 6)
              {
                v11 = a1;
                if (mlir::IntegerAttr::getInt(&v11) != 7)
                {
                  v10 = a1;
                  if (mlir::IntegerAttr::getInt(&v10) != 8)
                  {
                    v9 = a1;
                    if (mlir::IntegerAttr::getInt(&v9) != 9)
                    {
                      v8 = a1;
                      if (mlir::IntegerAttr::getInt(&v8) != 10)
                      {
                        v7 = a1;
                        if (mlir::IntegerAttr::getInt(&v7) != 11)
                        {
                          v6 = a1;
                          if (mlir::IntegerAttr::getInt(&v6) != 12)
                          {
                            v5 = a1;
                            if (mlir::IntegerAttr::getInt(&v5) != 13)
                            {
                              v4 = a1;
                              if (mlir::IntegerAttr::getInt(&v4) != 14)
                              {
                                v3 = a1;
                                return mlir::IntegerAttr::getInt(&v3) == 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t mlir::anec::PaddingModeAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v12 = a1;
  Value = mlir::AffineMapAttr::getValue(&v12);
  result = mlir::Type::isSignlessInteger(&Value, 64);
  if (result)
  {
    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11))
    {
      v10 = a1;
      result = mlir::IntegerAttr::getInt(&v10);
      if (result == 1)
      {
        return result;
      }

      v9 = a1;
      if (mlir::IntegerAttr::getInt(&v9) != 2)
      {
        v8 = a1;
        if (mlir::IntegerAttr::getInt(&v8) != 3)
        {
          v7 = a1;
          if (mlir::IntegerAttr::getInt(&v7) != 4)
          {
            v6 = a1;
            if (mlir::IntegerAttr::getInt(&v6) != 5)
            {
              v5 = a1;
              if (mlir::IntegerAttr::getInt(&v5) != 6)
              {
                v4 = a1;
                if (mlir::IntegerAttr::getInt(&v4) != 7)
                {
                  v3 = a1;
                  return mlir::IntegerAttr::getInt(&v3) == 8;
                }
              }
            }
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t mlir::anec::getFamily(uint64_t a1, uint64_t a2)
{
  if (a2 != 3)
  {
    return 7;
  }

  if (*a1 == 12609 && *(a1 + 2) == 50)
  {
    return 0;
  }

  if (*a1 == 12609 && *(a1 + 2) == 51)
  {
    return 1;
  }

  if (*a1 == 12609 && *(a1 + 2) == 52)
  {
    return 2;
  }

  if (*a1 == 12609 && *(a1 + 2) == 53)
  {
    return 3;
  }

  if (*a1 == 12609 && *(a1 + 2) == 54)
  {
    return 4;
  }

  if (*a1 == 12609 && *(a1 + 2) == 55)
  {
    return 5;
  }

  if (*a1 != 12609 || *(a1 + 2) != 56)
  {
    return 7;
  }

  return 6;
}

uint64_t mlir::anec::getFamilyString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result <= 3)
  {
    if (result > 1)
    {
      a2[23] = 3;
      *a2 = 12609;
      if (result == 2)
      {
        v2 = 52;
      }

      else
      {
        v2 = 53;
      }
    }

    else
    {
      a2[23] = 3;
      *a2 = 12609;
      if (result)
      {
        v2 = 51;
      }

      else
      {
        v2 = 50;
      }
    }

    goto LABEL_15;
  }

  if (result <= 5)
  {
    a2[23] = 3;
    *a2 = 12609;
    if (result == 4)
    {
      v2 = 54;
    }

    else
    {
      v2 = 55;
    }

    goto LABEL_15;
  }

  if (result == 6)
  {
    a2[23] = 3;
    *a2 = 12609;
    v2 = 56;
LABEL_15:
    a2[2] = v2;
    a2[3] = 0;
    return result;
  }

  a2[23] = 9;
  strcpy(a2, "A11Legacy");
  return result;
}

void *mlir::Dialect::addOperations<mlir::anec::A11Legacy,mlir::anec::A12,mlir::anec::A13,mlir::anec::A14,mlir::anec::A15,mlir::anec::A16,mlir::anec::A17,mlir::anec::A18,mlir::anec::ArgMinMax,mlir::anec::AveragePool,mlir::anec::BatchNorm,mlir::anec::BatchToSpace,mlir::anec::Broadcast,mlir::anec::Cast,mlir::anec::Ceil,mlir::anec::ChannelToSpace,mlir::anec::ClampedRelu,mlir::anec::Concat,mlir::anec::Convolution,mlir::anec::Cos,mlir::anec::CropResize,mlir::anec::DeQuant,mlir::anec::Deconvolution,mlir::anec::Degamma,mlir::anec::Dirac,mlir::anec::ElementwiseAbs,mlir::anec::ElementwiseAdd,mlir::anec::ElementwiseDiv,mlir::anec::ElementwiseEqual,mlir::anec::ElementwiseEqualZero,mlir::anec::ElementwiseGreaterThan,mlir::anec::ElementwiseGreaterThanEqual,mlir::anec::ElementwiseGreaterThanEqualZero,mlir::anec::ElementwiseGreaterThanZero,mlir::anec::ElementwiseLessThan,mlir::anec::ElementwiseLessThanEqual,mlir::anec::ElementwiseLessThanEqualZero,mlir::anec::ElementwiseLessThanZero,mlir::anec::ElementwiseMax,mlir::anec::ElementwiseMin,mlir::anec::ElementwiseMult,mlir::anec::ElementwiseNotEqual,mlir::anec::ElementwiseNotEqualZero,mlir::anec::ElementwisePower,mlir::anec::ElementwiseSquare,mlir::anec::ElementwiseSub,mlir::anec::Elu,mlir::anec::Erf,mlir::anec::Exp2,mlir::anec::Flatten,mlir::anec::Floor,mlir::anec::GOC,mlir::anec::GatherND,mlir::anec::Gelu,mlir::anec::GlobalArgMinMax,mlir::anec::HighPrecisionSigmoid,mlir::anec::InputView,mlir::anec::InstanceNorm,mlir::anec::Invert,mlir::anec::L2NormPool,mlir::anec::LayerNorm,mlir::anec::LeakyRelu,mlir::anec::Linear,mlir::anec::Log2,mlir::anec::MatMul,mlir::anec::MaxPool,mlir::anec::NRelu,mlir::anec::Padding,mlir::anec::PixelShuffle,mlir::anec::PixelUnshuffle,mlir::anec::Quant,mlir::anec::ReduceAvg,mlir::anec::ReduceMax,mlir::anec::ReduceMin,mlir::anec::ReduceSum,mlir::anec::RegionReturn,mlir::anec::Relu,mlir::anec::Resample,mlir::anec::Reshape,mlir::anec::Resize,mlir::anec::RingBufferReader,mlir::anec::RingBufferWriter,mlir::anec::RoundNearest,mlir::anec::Rsqrt,mlir::anec::ScaledDotProductAttention,mlir::anec::ScaledElementWise,mlir::anec::Sigmoid,mlir::anec::Sign,mlir::anec::Sin,mlir::anec::Softmax,mlir::anec::SpaceToBatch,mlir::anec::SpaceToChannel,mlir::anec::Sqr,mlir::anec::Sqrt,mlir::anec::State,mlir::anec::Swish,mlir::anec::Tanh,mlir::anec::TensorBufferToTensor,mlir::anec::TensorToTensorBuffer,mlir::anec::Tile,mlir::anec::Transpose,mlir::anec::Trunc,mlir::anec::Unflatten,mlir::anec::UnrealizedConversionCast>(uint64_t a1)
{
  v568[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::Model(v2, a1);
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::A11Legacy::getAttributeNames(void)::attrNames, 4);
  v3 = v566;
  v566 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::A12>::Model(v4, a1);
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::A12::getAttributeNames(void)::attrNames, 4);
  v5 = v566;
  v566 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::A13>::Model(v6, a1);
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::A13::getAttributeNames(void)::attrNames, 4);
  v7 = v566;
  v566 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::A14>::Model(v8, a1);
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::A14::getAttributeNames(void)::attrNames, 4);
  v9 = v566;
  v566 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::A15>::Model(v10, a1);
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::A15::getAttributeNames(void)::attrNames, 4);
  v11 = v566;
  v566 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::A16>::Model(v12, a1);
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::A16::getAttributeNames(void)::attrNames, 4);
  v13 = v566;
  v566 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::A17>::Model(v14, a1);
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::A17::getAttributeNames(void)::attrNames, 4);
  v15 = v566;
  v566 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::A18>::Model(v16, a1);
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::A18::getAttributeNames(void)::attrNames, 4);
  v17 = v566;
  v566 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>(&v566);
  mlir::OperationName::Impl::Impl(v18, "anec.arg_min_max", 16, a1, &mlir::detail::TypeIDResolver<mlir::anec::ArgMinMax,void>::id, &v566);
  v19 = v566;
  if (v567)
  {
    v20 = 16 * v567;
    v21 = (v566 + 8);
    do
    {
      v22 = *v21;
      v21 += 2;
      free(v22);
      v20 -= 16;
    }

    while (v20);
    v19 = v566;
  }

  if (v19 != v568)
  {
    free(v19);
  }

  *v18 = &unk_1F5B2F090;
  v566 = v18;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::ArgMinMax::getAttributeNames(void)::attrNames, 5);
  v23 = v566;
  v566 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::AveragePool>::Model(v24, a1);
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::AveragePool::getAttributeNames(void)::attrNames, 4);
  v25 = v566;
  v566 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::BatchNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::BatchNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::BatchNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::BatchNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::BatchNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::BatchNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::BatchNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::BatchNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::BatchNorm>>(&v566);
  mlir::OperationName::Impl::Impl(v26, "anec.batch_norm", 15, a1, &mlir::detail::TypeIDResolver<mlir::anec::BatchNorm,void>::id, &v566);
  v27 = v566;
  if (v567)
  {
    v28 = 16 * v567;
    v29 = (v566 + 8);
    do
    {
      v30 = *v29;
      v29 += 2;
      free(v30);
      v28 -= 16;
    }

    while (v28);
    v27 = v566;
  }

  if (v27 != v568)
  {
    free(v27);
  }

  *v26 = &unk_1F5B2F220;
  v566 = v26;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::BatchNorm::getAttributeNames(void)::attrNames, 1);
  v31 = v566;
  v566 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::BatchToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::BatchToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::BatchToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::BatchToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::BatchToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::BatchToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::BatchToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::BatchToSpace>>(&v566);
  mlir::OperationName::Impl::Impl(v32, "anec.batch_to_space", 19, a1, &mlir::detail::TypeIDResolver<mlir::anec::BatchToSpace,void>::id, &v566);
  v33 = v566;
  if (v567)
  {
    v34 = 16 * v567;
    v35 = (v566 + 8);
    do
    {
      v36 = *v35;
      v35 += 2;
      free(v36);
      v34 -= 16;
    }

    while (v34);
    v33 = v566;
  }

  if (v33 != v568)
  {
    free(v33);
  }

  *v32 = &unk_1F5B2F2E8;
  v566 = v32;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::BatchToSpace::getAttributeNames(void)::attrNames, 1);
  v37 = v566;
  v566 = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::Broadcast>::Model(v38, a1);
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v39 = v566;
  v566 = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::Cast>::Model(v40, a1);
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v41 = v566;
  v566 = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>(&v566);
  mlir::OperationName::Impl::Impl(v42, "anec.ceil", 9, a1, &mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id, &v566);
  v43 = v566;
  if (v567)
  {
    v44 = 16 * v567;
    v45 = (v566 + 8);
    do
    {
      v46 = *v45;
      v45 += 2;
      free(v46);
      v44 -= 16;
    }

    while (v44);
    v43 = v566;
  }

  if (v43 != v568)
  {
    free(v43);
  }

  *v42 = &unk_1F5B2F540;
  v566 = v42;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v47 = v566;
  v566 = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ChannelToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ChannelToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ChannelToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ChannelToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ChannelToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ChannelToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ChannelToSpace>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ChannelToSpace>>(&v566);
  mlir::OperationName::Impl::Impl(v48, "anec.channel_to_space", 21, a1, &mlir::detail::TypeIDResolver<mlir::anec::ChannelToSpace,void>::id, &v566);
  v49 = v566;
  if (v567)
  {
    v50 = 16 * v567;
    v51 = (v566 + 8);
    do
    {
      v52 = *v51;
      v51 += 2;
      free(v52);
      v50 -= 16;
    }

    while (v50);
    v49 = v566;
  }

  if (v49 != v568)
  {
    free(v49);
  }

  *v48 = &unk_1F5B2F608;
  v566 = v48;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::ChannelToSpace::getAttributeNames(void)::attrNames, 1);
  v53 = v566;
  v566 = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ClampedRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ClampedRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ClampedRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ClampedRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ClampedRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ClampedRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ClampedRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ClampedRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ClampedRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ClampedRelu>>(&v566);
  mlir::OperationName::Impl::Impl(v54, "anec.clamped_relu", 17, a1, &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id, &v566);
  v55 = v566;
  if (v567)
  {
    v56 = 16 * v567;
    v57 = (v566 + 8);
    do
    {
      v58 = *v57;
      v57 += 2;
      free(v58);
      v56 -= 16;
    }

    while (v56);
    v55 = v566;
  }

  if (v55 != v568)
  {
    free(v55);
  }

  *v54 = &unk_1F5B2F6D0;
  v566 = v54;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::ClampedRelu::getAttributeNames(void)::attrNames, 2);
  v59 = v566;
  v566 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Concat>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Concat>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Concat>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Concat>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Concat>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Concat>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Concat>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Concat>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Concat>>(&v566);
  mlir::OperationName::Impl::Impl(v60, "anec.concat", 11, a1, &mlir::detail::TypeIDResolver<mlir::anec::Concat,void>::id, &v566);
  v61 = v566;
  if (v567)
  {
    v62 = 16 * v567;
    v63 = (v566 + 8);
    do
    {
      v64 = *v63;
      v63 += 2;
      free(v64);
      v62 -= 16;
    }

    while (v62);
    v61 = v566;
  }

  if (v61 != v568)
  {
    free(v61);
  }

  *v60 = &unk_1F5B2F798;
  v566 = v60;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Concat::getAttributeNames(void)::attrNames, 2);
  v65 = v566;
  v566 = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  v66 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Convolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Convolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Convolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Convolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Convolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Convolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Convolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Convolution>>(&v566);
  mlir::OperationName::Impl::Impl(v66, "anec.convolution", 16, a1, &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id, &v566);
  v67 = v566;
  if (v567)
  {
    v68 = 16 * v567;
    v69 = (v566 + 8);
    do
    {
      v70 = *v69;
      v69 += 2;
      free(v70);
      v68 -= 16;
    }

    while (v68);
    v67 = v566;
  }

  if (v67 != v568)
  {
    free(v67);
  }

  *v66 = &unk_1F5B2F860;
  v566 = v66;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Convolution::getAttributeNames(void)::attrNames, 10);
  v71 = v566;
  v566 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  v72 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Cos>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Cos>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Cos>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Cos>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Cos>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Cos>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Cos>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Cos>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Cos>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Cos>>(&v566);
  mlir::OperationName::Impl::Impl(v72, "anec.cos", 8, a1, &mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id, &v566);
  v73 = v566;
  if (v567)
  {
    v74 = 16 * v567;
    v75 = (v566 + 8);
    do
    {
      v76 = *v75;
      v75 += 2;
      free(v76);
      v74 -= 16;
    }

    while (v74);
    v73 = v566;
  }

  if (v73 != v568)
  {
    free(v73);
  }

  *v72 = &unk_1F5B2F928;
  v566 = v72;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v77 = v566;
  v566 = 0;
  if (v77)
  {
    (*(*v77 + 8))(v77);
  }

  v78 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::CropResize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::CropResize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::CropResize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::CropResize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::CropResize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::CropResize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::CropResize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::CropResize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::CropResize>>(&v566);
  mlir::OperationName::Impl::Impl(v78, "anec.crop_resize", 16, a1, &mlir::detail::TypeIDResolver<mlir::anec::CropResize,void>::id, &v566);
  v79 = v566;
  if (v567)
  {
    v80 = 16 * v567;
    v81 = (v566 + 8);
    do
    {
      v82 = *v81;
      v81 += 2;
      free(v82);
      v80 -= 16;
    }

    while (v80);
    v79 = v566;
  }

  if (v79 != v568)
  {
    free(v79);
  }

  *v78 = &unk_1F5B2F9F0;
  v566 = v78;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::CropResize::getAttributeNames(void)::attrNames, 9);
  v83 = v566;
  v566 = 0;
  if (v83)
  {
    (*(*v83 + 8))(v83);
  }

  v84 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v566);
  mlir::OperationName::Impl::Impl(v84, "anec.dequant", 12, a1, &mlir::detail::TypeIDResolver<mlir::anec::DeQuant,void>::id, &v566);
  v85 = v566;
  if (v567)
  {
    v86 = 16 * v567;
    v87 = (v566 + 8);
    do
    {
      v88 = *v87;
      v87 += 2;
      free(v88);
      v86 -= 16;
    }

    while (v86);
    v85 = v566;
  }

  if (v85 != v568)
  {
    free(v85);
  }

  *v84 = &unk_1F5B2FAB8;
  v566 = v84;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::DeQuant::getAttributeNames(void)::attrNames, 2);
  v89 = v566;
  v566 = 0;
  if (v89)
  {
    (*(*v89 + 8))(v89);
  }

  v90 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v566);
  mlir::OperationName::Impl::Impl(v90, "anec.deconvolution", 18, a1, &mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id, &v566);
  v91 = v566;
  if (v567)
  {
    v92 = 16 * v567;
    v93 = (v566 + 8);
    do
    {
      v94 = *v93;
      v93 += 2;
      free(v94);
      v92 -= 16;
    }

    while (v92);
    v91 = v566;
  }

  if (v91 != v568)
  {
    free(v91);
  }

  *v90 = &unk_1F5B2FB80;
  v566 = v90;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Deconvolution::getAttributeNames(void)::attrNames, 10);
  v95 = v566;
  v566 = 0;
  if (v95)
  {
    (*(*v95 + 8))(v95);
  }

  v96 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(&v566);
  mlir::OperationName::Impl::Impl(v96, "anec.degamma", 12, a1, &mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id, &v566);
  v97 = v566;
  if (v567)
  {
    v98 = 16 * v567;
    v99 = (v566 + 8);
    do
    {
      v100 = *v99;
      v99 += 2;
      free(v100);
      v98 -= 16;
    }

    while (v98);
    v97 = v566;
  }

  if (v97 != v568)
  {
    free(v97);
  }

  *v96 = &unk_1F5B2FC48;
  v566 = v96;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v101 = v566;
  v566 = 0;
  if (v101)
  {
    (*(*v101 + 8))(v101);
  }

  v102 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(&v566);
  mlir::OperationName::Impl::Impl(v102, "anec.dirac", 10, a1, &mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id, &v566);
  v103 = v566;
  if (v567)
  {
    v104 = 16 * v567;
    v105 = (v566 + 8);
    do
    {
      v106 = *v105;
      v105 += 2;
      free(v106);
      v104 -= 16;
    }

    while (v104);
    v103 = v566;
  }

  if (v103 != v568)
  {
    free(v103);
  }

  *v102 = &unk_1F5B2FD10;
  v566 = v102;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v107 = v566;
  v566 = 0;
  if (v107)
  {
    (*(*v107 + 8))(v107);
  }

  v108 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::anec::ElementwiseAbs>,mlir::OpTrait::OneResult<mlir::anec::ElementwiseAbs>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ElementwiseAbs>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ElementwiseAbs>,mlir::OpTrait::OneOperand<mlir::anec::ElementwiseAbs>,mlir::OpTrait::OpInvariants<mlir::anec::ElementwiseAbs>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ElementwiseAbs>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ElementwiseAbs>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ElementwiseAbs>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ElementwiseAbs>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ElementwiseAbs>,mlir::anec::ReshapeSwapInterface::Trait<mlir::anec::ElementwiseAbs>,mlir::anec::TransposeSwapInterface::Trait<mlir::anec::ElementwiseAbs>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ElementwiseAbs>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ElementwiseAbs>,mlir::InferTypeOpInterface::Trait<mlir::anec::ElementwiseAbs>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ElementwiseAbs>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ElementwiseAbs>>(&v566);
  mlir::OperationName::Impl::Impl(v108, "anec.abs", 8, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAbs,void>::id, &v566);
  v109 = v566;
  if (v567)
  {
    v110 = 16 * v567;
    v111 = (v566 + 8);
    do
    {
      v112 = *v111;
      v111 += 2;
      free(v112);
      v110 -= 16;
    }

    while (v110);
    v109 = v566;
  }

  if (v109 != v568)
  {
    free(v109);
  }

  *v108 = &unk_1F5B2FDD8;
  v566 = v108;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v113 = v566;
  v566 = 0;
  if (v113)
  {
    (*(*v113 + 8))(v113);
  }

  v114 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(&v566);
  mlir::OperationName::Impl::Impl(v114, "anec.add", 8, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id, &v566);
  v115 = v566;
  if (v567)
  {
    v116 = 16 * v567;
    v117 = (v566 + 8);
    do
    {
      v118 = *v117;
      v117 += 2;
      free(v118);
      v116 -= 16;
    }

    while (v116);
    v115 = v566;
  }

  if (v115 != v568)
  {
    free(v115);
  }

  *v114 = &unk_1F5B2FEA0;
  v566 = v114;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v119 = v566;
  v566 = 0;
  if (v119)
  {
    (*(*v119 + 8))(v119);
  }

  v120 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(&v566);
  mlir::OperationName::Impl::Impl(v120, "anec.div", 8, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseDiv,void>::id, &v566);
  v121 = v566;
  if (v567)
  {
    v122 = 16 * v567;
    v123 = (v566 + 8);
    do
    {
      v124 = *v123;
      v123 += 2;
      free(v124);
      v122 -= 16;
    }

    while (v122);
    v121 = v566;
  }

  if (v121 != v568)
  {
    free(v121);
  }

  *v120 = &unk_1F5B2FF68;
  v566 = v120;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v125 = v566;
  v566 = 0;
  if (v125)
  {
    (*(*v125 + 8))(v125);
  }

  v126 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(&v566);
  mlir::OperationName::Impl::Impl(v126, "anec.equal", 10, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqual,void>::id, &v566);
  v127 = v566;
  if (v567)
  {
    v128 = 16 * v567;
    v129 = (v566 + 8);
    do
    {
      v130 = *v129;
      v129 += 2;
      free(v130);
      v128 -= 16;
    }

    while (v128);
    v127 = v566;
  }

  if (v127 != v568)
  {
    free(v127);
  }

  *v126 = &unk_1F5B30030;
  v566 = v126;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v131 = v566;
  v566 = 0;
  if (v131)
  {
    (*(*v131 + 8))(v131);
  }

  v132 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::anec::ElementwiseEqualZero>,mlir::OpTrait::OneResult<mlir::anec::ElementwiseEqualZero>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ElementwiseEqualZero>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ElementwiseEqualZero>,mlir::OpTrait::OneOperand<mlir::anec::ElementwiseEqualZero>,mlir::OpTrait::OpInvariants<mlir::anec::ElementwiseEqualZero>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ElementwiseEqualZero>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ElementwiseEqualZero>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ElementwiseEqualZero>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ElementwiseEqualZero>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ElementwiseEqualZero>,mlir::anec::ReshapeSwapInterface::Trait<mlir::anec::ElementwiseEqualZero>,mlir::anec::TransposeSwapInterface::Trait<mlir::anec::ElementwiseEqualZero>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ElementwiseEqualZero>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ElementwiseEqualZero>,mlir::InferTypeOpInterface::Trait<mlir::anec::ElementwiseEqualZero>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ElementwiseEqualZero>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ElementwiseEqualZero>>(&v566);
  mlir::OperationName::Impl::Impl(v132, "anec.equal_zero", 15, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqualZero,void>::id, &v566);
  v133 = v566;
  if (v567)
  {
    v134 = 16 * v567;
    v135 = (v566 + 8);
    do
    {
      v136 = *v135;
      v135 += 2;
      free(v136);
      v134 -= 16;
    }

    while (v134);
    v133 = v566;
  }

  if (v133 != v568)
  {
    free(v133);
  }

  *v132 = &unk_1F5B300F8;
  v566 = v132;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v137 = v566;
  v566 = 0;
  if (v137)
  {
    (*(*v137 + 8))(v137);
  }

  v138 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(&v566);
  mlir::OperationName::Impl::Impl(v138, "anec.greater_than", 17, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThan,void>::id, &v566);
  v139 = v566;
  if (v567)
  {
    v140 = 16 * v567;
    v141 = (v566 + 8);
    do
    {
      v142 = *v141;
      v141 += 2;
      free(v142);
      v140 -= 16;
    }

    while (v140);
    v139 = v566;
  }

  if (v139 != v568)
  {
    free(v139);
  }

  *v138 = &unk_1F5B301C0;
  v566 = v138;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v143 = v566;
  v566 = 0;
  if (v143)
  {
    (*(*v143 + 8))(v143);
  }

  v144 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(&v566);
  mlir::OperationName::Impl::Impl(v144, "anec.greater_than_equal", 23, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqual,void>::id, &v566);
  v145 = v566;
  if (v567)
  {
    v146 = 16 * v567;
    v147 = (v566 + 8);
    do
    {
      v148 = *v147;
      v147 += 2;
      free(v148);
      v146 -= 16;
    }

    while (v146);
    v145 = v566;
  }

  if (v145 != v568)
  {
    free(v145);
  }

  *v144 = &unk_1F5B30288;
  v566 = v144;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v149 = v566;
  v566 = 0;
  if (v149)
  {
    (*(*v149 + 8))(v149);
  }

  v150 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::OpTrait::OneResult<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::OpTrait::OneOperand<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::OpTrait::OpInvariants<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::anec::ReshapeSwapInterface::Trait<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::anec::TransposeSwapInterface::Trait<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::InferTypeOpInterface::Trait<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ElementwiseGreaterThanEqualZero>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ElementwiseGreaterThanEqualZero>>(&v566);
  mlir::OperationName::Impl::Impl(v150, "anec.greater_than_equal_zero", 28, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqualZero,void>::id, &v566);
  v151 = v566;
  if (v567)
  {
    v152 = 16 * v567;
    v153 = (v566 + 8);
    do
    {
      v154 = *v153;
      v153 += 2;
      free(v154);
      v152 -= 16;
    }

    while (v152);
    v151 = v566;
  }

  if (v151 != v568)
  {
    free(v151);
  }

  *v150 = &unk_1F5B30350;
  v566 = v150;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v155 = v566;
  v566 = 0;
  if (v155)
  {
    (*(*v155 + 8))(v155);
  }

  v156 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::anec::ElementwiseGreaterThanZero>,mlir::OpTrait::OneResult<mlir::anec::ElementwiseGreaterThanZero>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ElementwiseGreaterThanZero>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ElementwiseGreaterThanZero>,mlir::OpTrait::OneOperand<mlir::anec::ElementwiseGreaterThanZero>,mlir::OpTrait::OpInvariants<mlir::anec::ElementwiseGreaterThanZero>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ElementwiseGreaterThanZero>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ElementwiseGreaterThanZero>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ElementwiseGreaterThanZero>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ElementwiseGreaterThanZero>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ElementwiseGreaterThanZero>,mlir::anec::ReshapeSwapInterface::Trait<mlir::anec::ElementwiseGreaterThanZero>,mlir::anec::TransposeSwapInterface::Trait<mlir::anec::ElementwiseGreaterThanZero>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ElementwiseGreaterThanZero>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ElementwiseGreaterThanZero>,mlir::InferTypeOpInterface::Trait<mlir::anec::ElementwiseGreaterThanZero>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ElementwiseGreaterThanZero>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ElementwiseGreaterThanZero>>(&v566);
  mlir::OperationName::Impl::Impl(v156, "anec.greater_than_zero", 22, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanZero,void>::id, &v566);
  v157 = v566;
  if (v567)
  {
    v158 = 16 * v567;
    v159 = (v566 + 8);
    do
    {
      v160 = *v159;
      v159 += 2;
      free(v160);
      v158 -= 16;
    }

    while (v158);
    v157 = v566;
  }

  if (v157 != v568)
  {
    free(v157);
  }

  *v156 = &unk_1F5B30418;
  v566 = v156;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v161 = v566;
  v566 = 0;
  if (v161)
  {
    (*(*v161 + 8))(v161);
  }

  v162 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(&v566);
  mlir::OperationName::Impl::Impl(v162, "anec.less_than", 14, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThan,void>::id, &v566);
  v163 = v566;
  if (v567)
  {
    v164 = 16 * v567;
    v165 = (v566 + 8);
    do
    {
      v166 = *v165;
      v165 += 2;
      free(v166);
      v164 -= 16;
    }

    while (v164);
    v163 = v566;
  }

  if (v163 != v568)
  {
    free(v163);
  }

  *v162 = &unk_1F5B304E0;
  v566 = v162;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v167 = v566;
  v566 = 0;
  if (v167)
  {
    (*(*v167 + 8))(v167);
  }

  v168 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(&v566);
  mlir::OperationName::Impl::Impl(v168, "anec.less_than_equal", 20, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqual,void>::id, &v566);
  v169 = v566;
  if (v567)
  {
    v170 = 16 * v567;
    v171 = (v566 + 8);
    do
    {
      v172 = *v171;
      v171 += 2;
      free(v172);
      v170 -= 16;
    }

    while (v170);
    v169 = v566;
  }

  if (v169 != v568)
  {
    free(v169);
  }

  *v168 = &unk_1F5B305A8;
  v566 = v168;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v173 = v566;
  v566 = 0;
  if (v173)
  {
    (*(*v173 + 8))(v173);
  }

  v174 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::anec::ElementwiseLessThanEqualZero>,mlir::OpTrait::OneResult<mlir::anec::ElementwiseLessThanEqualZero>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ElementwiseLessThanEqualZero>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ElementwiseLessThanEqualZero>,mlir::OpTrait::OneOperand<mlir::anec::ElementwiseLessThanEqualZero>,mlir::OpTrait::OpInvariants<mlir::anec::ElementwiseLessThanEqualZero>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ElementwiseLessThanEqualZero>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ElementwiseLessThanEqualZero>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ElementwiseLessThanEqualZero>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ElementwiseLessThanEqualZero>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ElementwiseLessThanEqualZero>,mlir::anec::ReshapeSwapInterface::Trait<mlir::anec::ElementwiseLessThanEqualZero>,mlir::anec::TransposeSwapInterface::Trait<mlir::anec::ElementwiseLessThanEqualZero>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ElementwiseLessThanEqualZero>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ElementwiseLessThanEqualZero>,mlir::InferTypeOpInterface::Trait<mlir::anec::ElementwiseLessThanEqualZero>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ElementwiseLessThanEqualZero>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ElementwiseLessThanEqualZero>>(&v566);
  mlir::OperationName::Impl::Impl(v174, "anec.less_than_equal_zero", 25, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqualZero,void>::id, &v566);
  v175 = v566;
  if (v567)
  {
    v176 = 16 * v567;
    v177 = (v566 + 8);
    do
    {
      v178 = *v177;
      v177 += 2;
      free(v178);
      v176 -= 16;
    }

    while (v176);
    v175 = v566;
  }

  if (v175 != v568)
  {
    free(v175);
  }

  *v174 = &unk_1F5B30670;
  v566 = v174;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v179 = v566;
  v566 = 0;
  if (v179)
  {
    (*(*v179 + 8))(v179);
  }

  v180 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::anec::ElementwiseLessThanZero>,mlir::OpTrait::OneResult<mlir::anec::ElementwiseLessThanZero>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ElementwiseLessThanZero>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ElementwiseLessThanZero>,mlir::OpTrait::OneOperand<mlir::anec::ElementwiseLessThanZero>,mlir::OpTrait::OpInvariants<mlir::anec::ElementwiseLessThanZero>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ElementwiseLessThanZero>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ElementwiseLessThanZero>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ElementwiseLessThanZero>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ElementwiseLessThanZero>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ElementwiseLessThanZero>,mlir::anec::ReshapeSwapInterface::Trait<mlir::anec::ElementwiseLessThanZero>,mlir::anec::TransposeSwapInterface::Trait<mlir::anec::ElementwiseLessThanZero>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ElementwiseLessThanZero>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ElementwiseLessThanZero>,mlir::InferTypeOpInterface::Trait<mlir::anec::ElementwiseLessThanZero>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ElementwiseLessThanZero>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ElementwiseLessThanZero>>(&v566);
  mlir::OperationName::Impl::Impl(v180, "anec.less_than_zero", 19, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanZero,void>::id, &v566);
  v181 = v566;
  if (v567)
  {
    v182 = 16 * v567;
    v183 = (v566 + 8);
    do
    {
      v184 = *v183;
      v183 += 2;
      free(v184);
      v182 -= 16;
    }

    while (v182);
    v181 = v566;
  }

  if (v181 != v568)
  {
    free(v181);
  }

  *v180 = &unk_1F5B30738;
  v566 = v180;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v185 = v566;
  v566 = 0;
  if (v185)
  {
    (*(*v185 + 8))(v185);
  }

  v186 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMax>>(&v566);
  mlir::OperationName::Impl::Impl(v186, "anec.max", 8, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMax,void>::id, &v566);
  v187 = v566;
  if (v567)
  {
    v188 = 16 * v567;
    v189 = (v566 + 8);
    do
    {
      v190 = *v189;
      v189 += 2;
      free(v190);
      v188 -= 16;
    }

    while (v188);
    v187 = v566;
  }

  if (v187 != v568)
  {
    free(v187);
  }

  *v186 = &unk_1F5B30800;
  v566 = v186;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v191 = v566;
  v566 = 0;
  if (v191)
  {
    (*(*v191 + 8))(v191);
  }

  v192 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMin>>(&v566);
  mlir::OperationName::Impl::Impl(v192, "anec.min", 8, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMin,void>::id, &v566);
  v193 = v566;
  if (v567)
  {
    v194 = 16 * v567;
    v195 = (v566 + 8);
    do
    {
      v196 = *v195;
      v195 += 2;
      free(v196);
      v194 -= 16;
    }

    while (v194);
    v193 = v566;
  }

  if (v193 != v568)
  {
    free(v193);
  }

  *v192 = &unk_1F5B308C8;
  v566 = v192;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v197 = v566;
  v566 = 0;
  if (v197)
  {
    (*(*v197 + 8))(v197);
  }

  v198 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMult>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMult>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMult>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMult>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMult>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMult>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMult>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMult>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMult>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseMult>>(&v566);
  mlir::OperationName::Impl::Impl(v198, "anec.mult", 9, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id, &v566);
  v199 = v566;
  if (v567)
  {
    v200 = 16 * v567;
    v201 = (v566 + 8);
    do
    {
      v202 = *v201;
      v201 += 2;
      free(v202);
      v200 -= 16;
    }

    while (v200);
    v199 = v566;
  }

  if (v199 != v568)
  {
    free(v199);
  }

  *v198 = &unk_1F5B30990;
  v566 = v198;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v203 = v566;
  v566 = 0;
  if (v203)
  {
    (*(*v203 + 8))(v203);
  }

  v204 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseNotEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseNotEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseNotEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseNotEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseNotEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseNotEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseNotEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseNotEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseNotEqual>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseNotEqual>>(&v566);
  mlir::OperationName::Impl::Impl(v204, "anec.not_equal", 14, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqual,void>::id, &v566);
  v205 = v566;
  if (v567)
  {
    v206 = 16 * v567;
    v207 = (v566 + 8);
    do
    {
      v208 = *v207;
      v207 += 2;
      free(v208);
      v206 -= 16;
    }

    while (v206);
    v205 = v566;
  }

  if (v205 != v568)
  {
    free(v205);
  }

  *v204 = &unk_1F5B30A58;
  v566 = v204;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v209 = v566;
  v566 = 0;
  if (v209)
  {
    (*(*v209 + 8))(v209);
  }

  v210 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::anec::ElementwiseNotEqualZero>,mlir::OpTrait::OneResult<mlir::anec::ElementwiseNotEqualZero>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ElementwiseNotEqualZero>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ElementwiseNotEqualZero>,mlir::OpTrait::OneOperand<mlir::anec::ElementwiseNotEqualZero>,mlir::OpTrait::OpInvariants<mlir::anec::ElementwiseNotEqualZero>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ElementwiseNotEqualZero>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ElementwiseNotEqualZero>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ElementwiseNotEqualZero>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ElementwiseNotEqualZero>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ElementwiseNotEqualZero>,mlir::anec::ReshapeSwapInterface::Trait<mlir::anec::ElementwiseNotEqualZero>,mlir::anec::TransposeSwapInterface::Trait<mlir::anec::ElementwiseNotEqualZero>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ElementwiseNotEqualZero>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ElementwiseNotEqualZero>,mlir::InferTypeOpInterface::Trait<mlir::anec::ElementwiseNotEqualZero>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ElementwiseNotEqualZero>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ElementwiseNotEqualZero>>(&v566);
  mlir::OperationName::Impl::Impl(v210, "anec.not_equal_zero", 19, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqualZero,void>::id, &v566);
  v211 = v566;
  if (v567)
  {
    v212 = 16 * v567;
    v213 = (v566 + 8);
    do
    {
      v214 = *v213;
      v213 += 2;
      free(v214);
      v212 -= 16;
    }

    while (v212);
    v211 = v566;
  }

  if (v211 != v568)
  {
    free(v211);
  }

  *v210 = &unk_1F5B30B20;
  v566 = v210;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v215 = v566;
  v566 = 0;
  if (v215)
  {
    (*(*v215 + 8))(v215);
  }

  v216 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwisePower>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwisePower>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwisePower>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwisePower>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwisePower>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwisePower>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwisePower>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwisePower>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwisePower>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwisePower>>(&v566);
  mlir::OperationName::Impl::Impl(v216, "anec.power", 10, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwisePower,void>::id, &v566);
  v217 = v566;
  if (v567)
  {
    v218 = 16 * v567;
    v219 = (v566 + 8);
    do
    {
      v220 = *v219;
      v219 += 2;
      free(v220);
      v218 -= 16;
    }

    while (v218);
    v217 = v566;
  }

  if (v217 != v568)
  {
    free(v217);
  }

  *v216 = &unk_1F5B30BE8;
  v566 = v216;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v221 = v566;
  v566 = 0;
  if (v221)
  {
    (*(*v221 + 8))(v221);
  }

  v222 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::anec::ElementwiseSquare>,mlir::OpTrait::OneResult<mlir::anec::ElementwiseSquare>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ElementwiseSquare>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ElementwiseSquare>,mlir::OpTrait::OneOperand<mlir::anec::ElementwiseSquare>,mlir::OpTrait::OpInvariants<mlir::anec::ElementwiseSquare>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ElementwiseSquare>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ElementwiseSquare>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ElementwiseSquare>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ElementwiseSquare>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ElementwiseSquare>,mlir::anec::ReshapeSwapInterface::Trait<mlir::anec::ElementwiseSquare>,mlir::anec::TransposeSwapInterface::Trait<mlir::anec::ElementwiseSquare>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ElementwiseSquare>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ElementwiseSquare>,mlir::InferTypeOpInterface::Trait<mlir::anec::ElementwiseSquare>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ElementwiseSquare>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ElementwiseSquare>>(&v566);
  mlir::OperationName::Impl::Impl(v222, "anec.square", 11, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSquare,void>::id, &v566);
  v223 = v566;
  if (v567)
  {
    v224 = 16 * v567;
    v225 = (v566 + 8);
    do
    {
      v226 = *v225;
      v225 += 2;
      free(v226);
      v224 -= 16;
    }

    while (v224);
    v223 = v566;
  }

  if (v223 != v568)
  {
    free(v223);
  }

  *v222 = &unk_1F5B30CB0;
  v566 = v222;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v227 = v566;
  v566 = 0;
  if (v227)
  {
    (*(*v227 + 8))(v227);
  }

  v228 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseSub>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseSub>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseSub>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseSub>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseSub>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseSub>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseSub>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseSub>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseSub>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseSub>>(&v566);
  mlir::OperationName::Impl::Impl(v228, "anec.sub", 8, a1, &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id, &v566);
  v229 = v566;
  if (v567)
  {
    v230 = 16 * v567;
    v231 = (v566 + 8);
    do
    {
      v232 = *v231;
      v231 += 2;
      free(v232);
      v230 -= 16;
    }

    while (v230);
    v229 = v566;
  }

  if (v229 != v568)
  {
    free(v229);
  }

  *v228 = &unk_1F5B30D78;
  v566 = v228;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v233 = v566;
  v566 = 0;
  if (v233)
  {
    (*(*v233 + 8))(v233);
  }

  v234 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Elu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Elu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Elu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Elu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Elu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Elu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Elu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Elu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Elu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Elu>>(&v566);
  mlir::OperationName::Impl::Impl(v234, "anec.elu", 8, a1, &mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id, &v566);
  v235 = v566;
  if (v567)
  {
    v236 = 16 * v567;
    v237 = (v566 + 8);
    do
    {
      v238 = *v237;
      v237 += 2;
      free(v238);
      v236 -= 16;
    }

    while (v236);
    v235 = v566;
  }

  if (v235 != v568)
  {
    free(v235);
  }

  *v234 = &unk_1F5B30E40;
  v566 = v234;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Elu::getAttributeNames(void)::attrNames, 1);
  v239 = v566;
  v566 = 0;
  if (v239)
  {
    (*(*v239 + 8))(v239);
  }

  v240 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Erf>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Erf>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Erf>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Erf>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Erf>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Erf>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Erf>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Erf>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Erf>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Erf>>(&v566);
  mlir::OperationName::Impl::Impl(v240, "anec.erf", 8, a1, &mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id, &v566);
  v241 = v566;
  if (v567)
  {
    v242 = 16 * v567;
    v243 = (v566 + 8);
    do
    {
      v244 = *v243;
      v243 += 2;
      free(v244);
      v242 -= 16;
    }

    while (v242);
    v241 = v566;
  }

  if (v241 != v568)
  {
    free(v241);
  }

  *v240 = &unk_1F5B30F08;
  v566 = v240;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v245 = v566;
  v566 = 0;
  if (v245)
  {
    (*(*v245 + 8))(v245);
  }

  v246 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Exp2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Exp2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Exp2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Exp2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Exp2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Exp2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Exp2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Exp2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Exp2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Exp2>>(&v566);
  mlir::OperationName::Impl::Impl(v246, "anec.exp2", 9, a1, &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id, &v566);
  v247 = v566;
  if (v567)
  {
    v248 = 16 * v567;
    v249 = (v566 + 8);
    do
    {
      v250 = *v249;
      v249 += 2;
      free(v250);
      v248 -= 16;
    }

    while (v248);
    v247 = v566;
  }

  if (v247 != v568)
  {
    free(v247);
  }

  *v246 = &unk_1F5B30FD0;
  v566 = v246;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v251 = v566;
  v566 = 0;
  if (v251)
  {
    (*(*v251 + 8))(v251);
  }

  v252 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Flatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Flatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Flatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Flatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Flatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Flatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Flatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Flatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Flatten>>(&v566);
  mlir::OperationName::Impl::Impl(v252, "anec.flatten", 12, a1, &mlir::detail::TypeIDResolver<mlir::anec::Flatten,void>::id, &v566);
  v253 = v566;
  if (v567)
  {
    v254 = 16 * v567;
    v255 = (v566 + 8);
    do
    {
      v256 = *v255;
      v255 += 2;
      free(v256);
      v254 -= 16;
    }

    while (v254);
    v253 = v566;
  }

  if (v253 != v568)
  {
    free(v253);
  }

  *v252 = &unk_1F5B31098;
  v566 = v252;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Flatten::getAttributeNames(void)::attrNames, 1);
  v257 = v566;
  v566 = 0;
  if (v257)
  {
    (*(*v257 + 8))(v257);
  }

  v258 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Floor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Floor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Floor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Floor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Floor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Floor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Floor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Floor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Floor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Floor>>(&v566);
  mlir::OperationName::Impl::Impl(v258, "anec.floor", 10, a1, &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id, &v566);
  v259 = v566;
  if (v567)
  {
    v260 = 16 * v567;
    v261 = (v566 + 8);
    do
    {
      v262 = *v261;
      v261 += 2;
      free(v262);
      v260 -= 16;
    }

    while (v260);
    v259 = v566;
  }

  if (v259 != v568)
  {
    free(v259);
  }

  *v258 = &unk_1F5B31160;
  v566 = v258;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v263 = v566;
  v566 = 0;
  if (v263)
  {
    (*(*v263 + 8))(v263);
  }

  v264 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::GOC>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::GOC>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::GOC>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::GOC>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::GOC>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::GOC>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::GOC>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::GOC>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::GOC>>(&v566);
  mlir::OperationName::Impl::Impl(v264, "anec.gain_offset_control", 24, a1, &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, &v566);
  v265 = v566;
  if (v567)
  {
    v266 = 16 * v567;
    v267 = (v566 + 8);
    do
    {
      v268 = *v267;
      v267 += 2;
      free(v268);
      v266 -= 16;
    }

    while (v266);
    v265 = v566;
  }

  if (v265 != v568)
  {
    free(v265);
  }

  *v264 = &unk_1F5B31228;
  v566 = v264;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v269 = v566;
  v566 = 0;
  if (v269)
  {
    (*(*v269 + 8))(v269);
  }

  v270 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::GatherND>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::GatherND>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::GatherND>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::GatherND>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::GatherND>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::GatherND>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::GatherND>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::GatherND>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::GatherND>>(&v566);
  mlir::OperationName::Impl::Impl(v270, "anec.gather_nd", 14, a1, &mlir::detail::TypeIDResolver<mlir::anec::GatherND,void>::id, &v566);
  v271 = v566;
  if (v567)
  {
    v272 = 16 * v567;
    v273 = (v566 + 8);
    do
    {
      v274 = *v273;
      v273 += 2;
      free(v274);
      v272 -= 16;
    }

    while (v272);
    v271 = v566;
  }

  if (v271 != v568)
  {
    free(v271);
  }

  *v270 = &unk_1F5B312F0;
  v566 = v270;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::GatherND::getAttributeNames(void)::attrNames, 1);
  v275 = v566;
  v566 = 0;
  if (v275)
  {
    (*(*v275 + 8))(v275);
  }

  v276 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Gelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Gelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Gelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Gelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Gelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Gelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Gelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Gelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Gelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Gelu>>(&v566);
  mlir::OperationName::Impl::Impl(v276, "anec.gelu", 9, a1, &mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id, &v566);
  v277 = v566;
  if (v567)
  {
    v278 = 16 * v567;
    v279 = (v566 + 8);
    do
    {
      v280 = *v279;
      v279 += 2;
      free(v280);
      v278 -= 16;
    }

    while (v278);
    v277 = v566;
  }

  if (v277 != v568)
  {
    free(v277);
  }

  *v276 = &unk_1F5B313B8;
  v566 = v276;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v281 = v566;
  v566 = 0;
  if (v281)
  {
    (*(*v281 + 8))(v281);
  }

  v282 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(&v566);
  mlir::OperationName::Impl::Impl(v282, "anec.global_arg_min_max", 23, a1, &mlir::detail::TypeIDResolver<mlir::anec::GlobalArgMinMax,void>::id, &v566);
  v283 = v566;
  if (v567)
  {
    v284 = 16 * v567;
    v285 = (v566 + 8);
    do
    {
      v286 = *v285;
      v285 += 2;
      free(v286);
      v284 -= 16;
    }

    while (v284);
    v283 = v566;
  }

  if (v283 != v568)
  {
    free(v283);
  }

  *v282 = &unk_1F5B31480;
  v566 = v282;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::GlobalArgMinMax::getAttributeNames(void)::attrNames, 2);
  v287 = v566;
  v566 = 0;
  if (v287)
  {
    (*(*v287 + 8))(v287);
  }

  v288 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(&v566);
  mlir::OperationName::Impl::Impl(v288, "anec.high_precision_sigmoid", 27, a1, &mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id, &v566);
  v289 = v566;
  if (v567)
  {
    v290 = 16 * v567;
    v291 = (v566 + 8);
    do
    {
      v292 = *v291;
      v291 += 2;
      free(v292);
      v290 -= 16;
    }

    while (v290);
    v289 = v566;
  }

  if (v289 != v568)
  {
    free(v289);
  }

  *v288 = &unk_1F5B31548;
  v566 = v288;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v293 = v566;
  v566 = 0;
  if (v293)
  {
    (*(*v293 + 8))(v293);
  }

  v294 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v566);
  mlir::OperationName::Impl::Impl(v294, "anec.input_view", 15, a1, &mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id, &v566);
  v295 = v566;
  if (v567)
  {
    v296 = 16 * v567;
    v297 = (v566 + 8);
    do
    {
      v298 = *v297;
      v297 += 2;
      free(v298);
      v296 -= 16;
    }

    while (v296);
    v295 = v566;
  }

  if (v295 != v568)
  {
    free(v295);
  }

  *v294 = &unk_1F5B31610;
  v566 = v294;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::InputView::getAttributeNames(void)::attrNames, 4);
  v299 = v566;
  v566 = 0;
  if (v299)
  {
    (*(*v299 + 8))(v299);
  }

  v300 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v566);
  mlir::OperationName::Impl::Impl(v300, "anec.instance_norm", 18, a1, &mlir::detail::TypeIDResolver<mlir::anec::InstanceNorm,void>::id, &v566);
  v301 = v566;
  if (v567)
  {
    v302 = 16 * v567;
    v303 = (v566 + 8);
    do
    {
      v304 = *v303;
      v303 += 2;
      free(v304);
      v302 -= 16;
    }

    while (v302);
    v301 = v566;
  }

  if (v301 != v568)
  {
    free(v301);
  }

  *v300 = &unk_1F5B316D8;
  v566 = v300;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::InstanceNorm::getAttributeNames(void)::attrNames, 2);
  v305 = v566;
  v566 = 0;
  if (v305)
  {
    (*(*v305 + 8))(v305);
  }

  v306 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(&v566);
  mlir::OperationName::Impl::Impl(v306, "anec.invert", 11, a1, &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id, &v566);
  v307 = v566;
  if (v567)
  {
    v308 = 16 * v567;
    v309 = (v566 + 8);
    do
    {
      v310 = *v309;
      v309 += 2;
      free(v310);
      v308 -= 16;
    }

    while (v308);
    v307 = v566;
  }

  if (v307 != v568)
  {
    free(v307);
  }

  *v306 = &unk_1F5B317A0;
  v566 = v306;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Invert::getAttributeNames(void)::attrNames, 1);
  v311 = v566;
  v566 = 0;
  if (v311)
  {
    (*(*v311 + 8))(v311);
  }

  v312 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::L2NormPool>::Model(v312, a1);
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::L2NormPool::getAttributeNames(void)::attrNames, 3);
  v313 = v566;
  v566 = 0;
  if (v313)
  {
    (*(*v313 + 8))(v313);
  }

  v314 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v566);
  mlir::OperationName::Impl::Impl(v314, "anec.layer_norm", 15, a1, &mlir::detail::TypeIDResolver<mlir::anec::LayerNorm,void>::id, &v566);
  v315 = v566;
  if (v567)
  {
    v316 = 16 * v567;
    v317 = (v566 + 8);
    do
    {
      v318 = *v317;
      v317 += 2;
      free(v318);
      v316 -= 16;
    }

    while (v316);
    v315 = v566;
  }

  if (v315 != v568)
  {
    free(v315);
  }

  *v314 = &unk_1F5B31930;
  v566 = v314;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::LayerNorm::getAttributeNames(void)::attrNames, 2);
  v319 = v566;
  v566 = 0;
  if (v319)
  {
    (*(*v319 + 8))(v319);
  }

  v320 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(&v566);
  mlir::OperationName::Impl::Impl(v320, "anec.leaky_relu", 15, a1, &mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id, &v566);
  v321 = v566;
  if (v567)
  {
    v322 = 16 * v567;
    v323 = (v566 + 8);
    do
    {
      v324 = *v323;
      v323 += 2;
      free(v324);
      v322 -= 16;
    }

    while (v322);
    v321 = v566;
  }

  if (v321 != v568)
  {
    free(v321);
  }

  *v320 = &unk_1F5B319F8;
  v566 = v320;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::LeakyRelu::getAttributeNames(void)::attrNames, 2);
  v325 = v566;
  v566 = 0;
  if (v325)
  {
    (*(*v325 + 8))(v325);
  }

  v326 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v566);
  mlir::OperationName::Impl::Impl(v326, "anec.linear", 11, a1, &mlir::detail::TypeIDResolver<mlir::anec::Linear,void>::id, &v566);
  v327 = v566;
  if (v567)
  {
    v328 = 16 * v567;
    v329 = (v566 + 8);
    do
    {
      v330 = *v329;
      v329 += 2;
      free(v330);
      v328 -= 16;
    }

    while (v328);
    v327 = v566;
  }

  if (v327 != v568)
  {
    free(v327);
  }

  *v326 = &unk_1F5B31AC0;
  v566 = v326;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Linear::getAttributeNames(void)::attrNames, 3);
  v331 = v566;
  v566 = 0;
  if (v331)
  {
    (*(*v331 + 8))(v331);
  }

  v332 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(&v566);
  mlir::OperationName::Impl::Impl(v332, "anec.log2", 9, a1, &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id, &v566);
  v333 = v566;
  if (v567)
  {
    v334 = 16 * v567;
    v335 = (v566 + 8);
    do
    {
      v336 = *v335;
      v335 += 2;
      free(v336);
      v334 -= 16;
    }

    while (v334);
    v333 = v566;
  }

  if (v333 != v568)
  {
    free(v333);
  }

  *v332 = &unk_1F5B31B88;
  v566 = v332;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Log2::getAttributeNames(void)::attrNames, 1);
  v337 = v566;
  v566 = 0;
  if (v337)
  {
    (*(*v337 + 8))(v337);
  }

  v338 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v566);
  mlir::OperationName::Impl::Impl(v338, "anec.matmul", 11, a1, &mlir::detail::TypeIDResolver<mlir::anec::MatMul,void>::id, &v566);
  v339 = v566;
  if (v567)
  {
    v340 = 16 * v567;
    v341 = (v566 + 8);
    do
    {
      v342 = *v341;
      v341 += 2;
      free(v342);
      v340 -= 16;
    }

    while (v340);
    v339 = v566;
  }

  if (v339 != v568)
  {
    free(v339);
  }

  *v338 = &unk_1F5B31C50;
  v566 = v338;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::MatMul::getAttributeNames(void)::attrNames, 1);
  v343 = v566;
  v566 = 0;
  if (v343)
  {
    (*(*v343 + 8))(v343);
  }

  v344 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::Model(v344, a1);
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::MaxPool::getAttributeNames(void)::attrNames, 3);
  v345 = v566;
  v566 = 0;
  if (v345)
  {
    (*(*v345 + 8))(v345);
  }

  v346 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(&v566);
  mlir::OperationName::Impl::Impl(v346, "anec.n_relu", 11, a1, &mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id, &v566);
  v347 = v566;
  if (v567)
  {
    v348 = 16 * v567;
    v349 = (v566 + 8);
    do
    {
      v350 = *v349;
      v349 += 2;
      free(v350);
      v348 -= 16;
    }

    while (v348);
    v347 = v566;
  }

  if (v347 != v568)
  {
    free(v347);
  }

  *v346 = &unk_1F5B31DE0;
  v566 = v346;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::NRelu::getAttributeNames(void)::attrNames, 2);
  v351 = v566;
  v566 = 0;
  if (v351)
  {
    (*(*v351 + 8))(v351);
  }

  v352 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v566);
  mlir::OperationName::Impl::Impl(v352, "anec.padding", 12, a1, &mlir::detail::TypeIDResolver<mlir::anec::Padding,void>::id, &v566);
  v353 = v566;
  if (v567)
  {
    v354 = 16 * v567;
    v355 = (v566 + 8);
    do
    {
      v356 = *v355;
      v355 += 2;
      free(v356);
      v354 -= 16;
    }

    while (v354);
    v353 = v566;
  }

  if (v353 != v568)
  {
    free(v353);
  }

  *v352 = &unk_1F5B31EA8;
  v566 = v352;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Padding::getAttributeNames(void)::attrNames, 3);
  v357 = v566;
  v566 = 0;
  if (v357)
  {
    (*(*v357 + 8))(v357);
  }

  v358 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v566);
  mlir::OperationName::Impl::Impl(v358, "anec.pixel_shuffle", 18, a1, &mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id, &v566);
  v359 = v566;
  if (v567)
  {
    v360 = 16 * v567;
    v361 = (v566 + 8);
    do
    {
      v362 = *v361;
      v361 += 2;
      free(v362);
      v360 -= 16;
    }

    while (v360);
    v359 = v566;
  }

  if (v359 != v568)
  {
    free(v359);
  }

  *v358 = &unk_1F5B31F70;
  v566 = v358;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::PixelShuffle::getAttributeNames(void)::attrNames, 1);
  v363 = v566;
  v566 = 0;
  if (v363)
  {
    (*(*v363 + 8))(v363);
  }

  v364 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v566);
  mlir::OperationName::Impl::Impl(v364, "anec.pixel_unshuffle", 20, a1, &mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id, &v566);
  v365 = v566;
  if (v567)
  {
    v366 = 16 * v567;
    v367 = (v566 + 8);
    do
    {
      v368 = *v367;
      v367 += 2;
      free(v368);
      v366 -= 16;
    }

    while (v366);
    v365 = v566;
  }

  if (v365 != v568)
  {
    free(v365);
  }

  *v364 = &unk_1F5B32038;
  v566 = v364;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::PixelUnshuffle::getAttributeNames(void)::attrNames, 1);
  v369 = v566;
  v566 = 0;
  if (v369)
  {
    (*(*v369 + 8))(v369);
  }

  v370 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v566);
  mlir::OperationName::Impl::Impl(v370, "anec.quant", 10, a1, &mlir::detail::TypeIDResolver<mlir::anec::Quant,void>::id, &v566);
  v371 = v566;
  if (v567)
  {
    v372 = 16 * v567;
    v373 = (v566 + 8);
    do
    {
      v374 = *v373;
      v373 += 2;
      free(v374);
      v372 -= 16;
    }

    while (v372);
    v371 = v566;
  }

  if (v371 != v568)
  {
    free(v371);
  }

  *v370 = &unk_1F5B32100;
  v566 = v370;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Quant::getAttributeNames(void)::attrNames, 2);
  v375 = v566;
  v566 = 0;
  if (v375)
  {
    (*(*v375 + 8))(v375);
  }

  v376 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v566);
  mlir::OperationName::Impl::Impl(v376, "anec.reduce_avg", 15, a1, &mlir::detail::TypeIDResolver<mlir::anec::ReduceAvg,void>::id, &v566);
  v377 = v566;
  if (v567)
  {
    v378 = 16 * v567;
    v379 = (v566 + 8);
    do
    {
      v380 = *v379;
      v379 += 2;
      free(v380);
      v378 -= 16;
    }

    while (v378);
    v377 = v566;
  }

  if (v377 != v568)
  {
    free(v377);
  }

  *v376 = &unk_1F5B321C8;
  v566 = v376;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::ReduceAvg::getAttributeNames(void)::attrNames, 1);
  v381 = v566;
  v566 = 0;
  if (v381)
  {
    (*(*v381 + 8))(v381);
  }

  v382 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v566);
  mlir::OperationName::Impl::Impl(v382, "anec.reduce_max", 15, a1, &mlir::detail::TypeIDResolver<mlir::anec::ReduceMax,void>::id, &v566);
  v383 = v566;
  if (v567)
  {
    v384 = 16 * v567;
    v385 = (v566 + 8);
    do
    {
      v386 = *v385;
      v385 += 2;
      free(v386);
      v384 -= 16;
    }

    while (v384);
    v383 = v566;
  }

  if (v383 != v568)
  {
    free(v383);
  }

  *v382 = &unk_1F5B32290;
  v566 = v382;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::ReduceMax::getAttributeNames(void)::attrNames, 1);
  v387 = v566;
  v566 = 0;
  if (v387)
  {
    (*(*v387 + 8))(v387);
  }

  v388 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v566);
  mlir::OperationName::Impl::Impl(v388, "anec.reduce_min", 15, a1, &mlir::detail::TypeIDResolver<mlir::anec::ReduceMin,void>::id, &v566);
  v389 = v566;
  if (v567)
  {
    v390 = 16 * v567;
    v391 = (v566 + 8);
    do
    {
      v392 = *v391;
      v391 += 2;
      free(v392);
      v390 -= 16;
    }

    while (v390);
    v389 = v566;
  }

  if (v389 != v568)
  {
    free(v389);
  }

  *v388 = &unk_1F5B32358;
  v566 = v388;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::ReduceMin::getAttributeNames(void)::attrNames, 1);
  v393 = v566;
  v566 = 0;
  if (v393)
  {
    (*(*v393 + 8))(v393);
  }

  v394 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v566);
  mlir::OperationName::Impl::Impl(v394, "anec.reduce_sum", 15, a1, &mlir::detail::TypeIDResolver<mlir::anec::ReduceSum,void>::id, &v566);
  v395 = v566;
  if (v567)
  {
    v396 = 16 * v567;
    v397 = (v566 + 8);
    do
    {
      v398 = *v397;
      v397 += 2;
      free(v398);
      v396 -= 16;
    }

    while (v396);
    v395 = v566;
  }

  if (v395 != v568)
  {
    free(v395);
  }

  *v394 = &unk_1F5B32420;
  v566 = v394;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::ReduceSum::getAttributeNames(void)::attrNames, 1);
  v399 = v566;
  v566 = 0;
  if (v399)
  {
    (*(*v399 + 8))(v399);
  }

  v400 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::Model(v400, a1);
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v401 = v566;
  v566 = 0;
  if (v401)
  {
    (*(*v401 + 8))(v401);
  }

  v402 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(&v566);
  mlir::OperationName::Impl::Impl(v402, "anec.relu", 9, a1, &mlir::detail::TypeIDResolver<mlir::anec::Relu,void>::id, &v566);
  v403 = v566;
  if (v567)
  {
    v404 = 16 * v567;
    v405 = (v566 + 8);
    do
    {
      v406 = *v405;
      v405 += 2;
      free(v406);
      v404 -= 16;
    }

    while (v404);
    v403 = v566;
  }

  if (v403 != v568)
  {
    free(v403);
  }

  *v402 = &unk_1F5B325B0;
  v566 = v402;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v407 = v566;
  v566 = 0;
  if (v407)
  {
    (*(*v407 + 8))(v407);
  }

  v408 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v566);
  mlir::OperationName::Impl::Impl(v408, "anec.resample", 13, a1, &mlir::detail::TypeIDResolver<mlir::anec::Resample,void>::id, &v566);
  v409 = v566;
  if (v567)
  {
    v410 = 16 * v567;
    v411 = (v566 + 8);
    do
    {
      v412 = *v411;
      v411 += 2;
      free(v412);
      v410 -= 16;
    }

    while (v410);
    v409 = v566;
  }

  if (v409 != v568)
  {
    free(v409);
  }

  *v408 = &unk_1F5B32678;
  v566 = v408;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Resample::getAttributeNames(void)::attrNames, 7);
  v413 = v566;
  v566 = 0;
  if (v413)
  {
    (*(*v413 + 8))(v413);
  }

  v414 = operator new(0x70uLL);
  v566 = mlir::RegisteredOperationName::Model<mlir::anec::Reshape>::Model(v414, a1);
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v415 = v566;
  v566 = 0;
  if (v415)
  {
    (*(*v415 + 8))(v415);
  }

  v416 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v566);
  mlir::OperationName::Impl::Impl(v416, "anec.resize", 11, a1, &mlir::detail::TypeIDResolver<mlir::anec::Resize,void>::id, &v566);
  v417 = v566;
  if (v567)
  {
    v418 = 16 * v567;
    v419 = (v566 + 8);
    do
    {
      v420 = *v419;
      v419 += 2;
      free(v420);
      v418 -= 16;
    }

    while (v418);
    v417 = v566;
  }

  if (v417 != v568)
  {
    free(v417);
  }

  *v416 = &unk_1F5B32808;
  v566 = v416;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Resize::getAttributeNames(void)::attrNames, 6);
  v421 = v566;
  v566 = 0;
  if (v421)
  {
    (*(*v421 + 8))(v421);
  }

  v422 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v566);
  mlir::OperationName::Impl::Impl(v422, "anec.ring_buffer_reader", 23, a1, &mlir::detail::TypeIDResolver<mlir::anec::RingBufferReader,void>::id, &v566);
  v423 = v566;
  if (v567)
  {
    v424 = 16 * v567;
    v425 = (v566 + 8);
    do
    {
      v426 = *v425;
      v425 += 2;
      free(v426);
      v424 -= 16;
    }

    while (v424);
    v423 = v566;
  }

  if (v423 != v568)
  {
    free(v423);
  }

  *v422 = &unk_1F5B328D0;
  v566 = v422;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::RingBufferReader::getAttributeNames(void)::attrNames, 3);
  v427 = v566;
  v566 = 0;
  if (v427)
  {
    (*(*v427 + 8))(v427);
  }

  v428 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v566);
  mlir::OperationName::Impl::Impl(v428, "anec.ring_buffer_writer", 23, a1, &mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id, &v566);
  v429 = v566;
  if (v567)
  {
    v430 = 16 * v567;
    v431 = (v566 + 8);
    do
    {
      v432 = *v431;
      v431 += 2;
      free(v432);
      v430 -= 16;
    }

    while (v430);
    v429 = v566;
  }

  if (v429 != v568)
  {
    free(v429);
  }

  *v428 = &unk_1F5B32998;
  v566 = v428;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::RingBufferWriter::getAttributeNames(void)::attrNames, 2);
  v433 = v566;
  v566 = 0;
  if (v433)
  {
    (*(*v433 + 8))(v433);
  }

  v434 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(&v566);
  mlir::OperationName::Impl::Impl(v434, "anec.round_nearest", 18, a1, &mlir::detail::TypeIDResolver<mlir::anec::RoundNearest,void>::id, &v566);
  v435 = v566;
  if (v567)
  {
    v436 = 16 * v567;
    v437 = (v566 + 8);
    do
    {
      v438 = *v437;
      v437 += 2;
      free(v438);
      v436 -= 16;
    }

    while (v436);
    v435 = v566;
  }

  if (v435 != v568)
  {
    free(v435);
  }

  *v434 = &unk_1F5B32A60;
  v566 = v434;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v439 = v566;
  v566 = 0;
  if (v439)
  {
    (*(*v439 + 8))(v439);
  }

  v440 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(&v566);
  mlir::OperationName::Impl::Impl(v440, "anec.r_sqrt", 11, a1, &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id, &v566);
  v441 = v566;
  if (v567)
  {
    v442 = 16 * v567;
    v443 = (v566 + 8);
    do
    {
      v444 = *v443;
      v443 += 2;
      free(v444);
      v442 -= 16;
    }

    while (v442);
    v441 = v566;
  }

  if (v441 != v568)
  {
    free(v441);
  }

  *v440 = &unk_1F5B32B28;
  v566 = v440;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Rsqrt::getAttributeNames(void)::attrNames, 1);
  v445 = v566;
  v566 = 0;
  if (v445)
  {
    (*(*v445 + 8))(v445);
  }

  v446 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v566);
  mlir::OperationName::Impl::Impl(v446, "anec.sdpa", 9, a1, &mlir::detail::TypeIDResolver<mlir::anec::ScaledDotProductAttention,void>::id, &v566);
  v447 = v566;
  if (v567)
  {
    v448 = 16 * v567;
    v449 = (v566 + 8);
    do
    {
      v450 = *v449;
      v449 += 2;
      free(v450);
      v448 -= 16;
    }

    while (v448);
    v447 = v566;
  }

  if (v447 != v568)
  {
    free(v447);
  }

  *v446 = &unk_1F5B32BF0;
  v566 = v446;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v451 = v566;
  v566 = 0;
  if (v451)
  {
    (*(*v451 + 8))(v451);
  }

  v452 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v566);
  mlir::OperationName::Impl::Impl(v452, "anec.scaled_elementwise", 23, a1, &mlir::detail::TypeIDResolver<mlir::anec::ScaledElementWise,void>::id, &v566);
  v453 = v566;
  if (v567)
  {
    v454 = 16 * v567;
    v455 = (v566 + 8);
    do
    {
      v456 = *v455;
      v455 += 2;
      free(v456);
      v454 -= 16;
    }

    while (v454);
    v453 = v566;
  }

  if (v453 != v568)
  {
    free(v453);
  }

  *v452 = &unk_1F5B32CB8;
  v566 = v452;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::ScaledElementWise::getAttributeNames(void)::attrNames, 6);
  v457 = v566;
  v566 = 0;
  if (v457)
  {
    (*(*v457 + 8))(v457);
  }

  v458 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Sigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Sigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Sigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Sigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Sigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Sigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Sigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Sigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Sigmoid>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Sigmoid>>(&v566);
  mlir::OperationName::Impl::Impl(v458, "anec.sigmoid", 12, a1, &mlir::detail::TypeIDResolver<mlir::anec::Sigmoid,void>::id, &v566);
  v459 = v566;
  if (v567)
  {
    v460 = 16 * v567;
    v461 = (v566 + 8);
    do
    {
      v462 = *v461;
      v461 += 2;
      free(v462);
      v460 -= 16;
    }

    while (v460);
    v459 = v566;
  }

  if (v459 != v568)
  {
    free(v459);
  }

  *v458 = &unk_1F5B32D80;
  v566 = v458;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v463 = v566;
  v566 = 0;
  if (v463)
  {
    (*(*v463 + 8))(v463);
  }

  v464 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Sign>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Sign>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Sign>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Sign>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Sign>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Sign>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Sign>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Sign>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Sign>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Sign>>(&v566);
  mlir::OperationName::Impl::Impl(v464, "anec.sign", 9, a1, &mlir::detail::TypeIDResolver<mlir::anec::Sign,void>::id, &v566);
  v465 = v566;
  if (v567)
  {
    v466 = 16 * v567;
    v467 = (v566 + 8);
    do
    {
      v468 = *v467;
      v467 += 2;
      free(v468);
      v466 -= 16;
    }

    while (v466);
    v465 = v566;
  }

  if (v465 != v568)
  {
    free(v465);
  }

  *v464 = &unk_1F5B32E48;
  v566 = v464;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v469 = v566;
  v566 = 0;
  if (v469)
  {
    (*(*v469 + 8))(v469);
  }

  v470 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Sin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Sin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Sin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Sin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Sin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Sin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Sin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Sin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Sin>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Sin>>(&v566);
  mlir::OperationName::Impl::Impl(v470, "anec.sin", 8, a1, &mlir::detail::TypeIDResolver<mlir::anec::Sin,void>::id, &v566);
  v471 = v566;
  if (v567)
  {
    v472 = 16 * v567;
    v473 = (v566 + 8);
    do
    {
      v474 = *v473;
      v473 += 2;
      free(v474);
      v472 -= 16;
    }

    while (v472);
    v471 = v566;
  }

  if (v471 != v568)
  {
    free(v471);
  }

  *v470 = &unk_1F5B32F10;
  v566 = v470;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v475 = v566;
  v566 = 0;
  if (v475)
  {
    (*(*v475 + 8))(v475);
  }

  v476 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Softmax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Softmax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Softmax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Softmax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Softmax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Softmax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Softmax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Softmax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Softmax>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Softmax>>(&v566);
  mlir::OperationName::Impl::Impl(v476, "anec.softmax", 12, a1, &mlir::detail::TypeIDResolver<mlir::anec::Softmax,void>::id, &v566);
  v477 = v566;
  if (v567)
  {
    v478 = 16 * v567;
    v479 = (v566 + 8);
    do
    {
      v480 = *v479;
      v479 += 2;
      free(v480);
      v478 -= 16;
    }

    while (v478);
    v477 = v566;
  }

  if (v477 != v568)
  {
    free(v477);
  }

  *v476 = &unk_1F5B32FD8;
  v566 = v476;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Softmax::getAttributeNames(void)::attrNames, 2);
  v481 = v566;
  v566 = 0;
  if (v481)
  {
    (*(*v481 + 8))(v481);
  }

  v482 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::SpaceToBatch>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::SpaceToBatch>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::SpaceToBatch>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::SpaceToBatch>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::SpaceToBatch>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::SpaceToBatch>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::SpaceToBatch>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::SpaceToBatch>>(&v566);
  mlir::OperationName::Impl::Impl(v482, "anec.space_to_batch", 19, a1, &mlir::detail::TypeIDResolver<mlir::anec::SpaceToBatch,void>::id, &v566);
  v483 = v566;
  if (v567)
  {
    v484 = 16 * v567;
    v485 = (v566 + 8);
    do
    {
      v486 = *v485;
      v485 += 2;
      free(v486);
      v484 -= 16;
    }

    while (v484);
    v483 = v566;
  }

  if (v483 != v568)
  {
    free(v483);
  }

  *v482 = &unk_1F5B330A0;
  v566 = v482;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::SpaceToBatch::getAttributeNames(void)::attrNames, 1);
  v487 = v566;
  v566 = 0;
  if (v487)
  {
    (*(*v487 + 8))(v487);
  }

  v488 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::SpaceToChannel>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::SpaceToChannel>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::SpaceToChannel>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::SpaceToChannel>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::SpaceToChannel>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::SpaceToChannel>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::SpaceToChannel>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::SpaceToChannel>>(&v566);
  mlir::OperationName::Impl::Impl(v488, "anec.space_to_channel", 21, a1, &mlir::detail::TypeIDResolver<mlir::anec::SpaceToChannel,void>::id, &v566);
  v489 = v566;
  if (v567)
  {
    v490 = 16 * v567;
    v491 = (v566 + 8);
    do
    {
      v492 = *v491;
      v491 += 2;
      free(v492);
      v490 -= 16;
    }

    while (v490);
    v489 = v566;
  }

  if (v489 != v568)
  {
    free(v489);
  }

  *v488 = &unk_1F5B33168;
  v566 = v488;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::SpaceToChannel::getAttributeNames(void)::attrNames, 1);
  v493 = v566;
  v566 = 0;
  if (v493)
  {
    (*(*v493 + 8))(v493);
  }

  v494 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Sqr>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Sqr>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Sqr>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Sqr>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Sqr>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Sqr>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Sqr>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Sqr>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Sqr>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Sqr>>(&v566);
  mlir::OperationName::Impl::Impl(v494, "anec.sqr", 8, a1, &mlir::detail::TypeIDResolver<mlir::anec::Sqr,void>::id, &v566);
  v495 = v566;
  if (v567)
  {
    v496 = 16 * v567;
    v497 = (v566 + 8);
    do
    {
      v498 = *v497;
      v497 += 2;
      free(v498);
      v496 -= 16;
    }

    while (v496);
    v495 = v566;
  }

  if (v495 != v568)
  {
    free(v495);
  }

  *v494 = &unk_1F5B33230;
  v566 = v494;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v499 = v566;
  v566 = 0;
  if (v499)
  {
    (*(*v499 + 8))(v499);
  }

  v500 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Sqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Sqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Sqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Sqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Sqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Sqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Sqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Sqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Sqrt>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Sqrt>>(&v566);
  mlir::OperationName::Impl::Impl(v500, "anec.sqrt", 9, a1, &mlir::detail::TypeIDResolver<mlir::anec::Sqrt,void>::id, &v566);
  v501 = v566;
  if (v567)
  {
    v502 = 16 * v567;
    v503 = (v566 + 8);
    do
    {
      v504 = *v503;
      v503 += 2;
      free(v504);
      v502 -= 16;
    }

    while (v502);
    v501 = v566;
  }

  if (v501 != v568)
  {
    free(v501);
  }

  *v500 = &unk_1F5B332F8;
  v566 = v500;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v505 = v566;
  v566 = 0;
  if (v505)
  {
    (*(*v505 + 8))(v505);
  }

  v506 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::State>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::State>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::State>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::State>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::State>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::State>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::State>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::State>>(&v566);
  mlir::OperationName::Impl::Impl(v506, "anec.state", 10, a1, &mlir::detail::TypeIDResolver<mlir::anec::State,void>::id, &v566);
  v507 = v566;
  if (v567)
  {
    v508 = 16 * v567;
    v509 = (v566 + 8);
    do
    {
      v510 = *v509;
      v509 += 2;
      free(v510);
      v508 -= 16;
    }

    while (v508);
    v507 = v566;
  }

  if (v507 != v568)
  {
    free(v507);
  }

  *v506 = &unk_1F5B333C0;
  v566 = v506;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v511 = v566;
  v566 = 0;
  if (v511)
  {
    (*(*v511 + 8))(v511);
  }

  v512 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Swish>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Swish>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Swish>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Swish>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Swish>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Swish>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Swish>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Swish>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Swish>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Swish>>(&v566);
  mlir::OperationName::Impl::Impl(v512, "anec.swish", 10, a1, &mlir::detail::TypeIDResolver<mlir::anec::Swish,void>::id, &v566);
  v513 = v566;
  if (v567)
  {
    v514 = 16 * v567;
    v515 = (v566 + 8);
    do
    {
      v516 = *v515;
      v515 += 2;
      free(v516);
      v514 -= 16;
    }

    while (v514);
    v513 = v566;
  }

  if (v513 != v568)
  {
    free(v513);
  }

  *v512 = &unk_1F5B33488;
  v566 = v512;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v517 = v566;
  v566 = 0;
  if (v517)
  {
    (*(*v517 + 8))(v517);
  }

  v518 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Tanh>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Tanh>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Tanh>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Tanh>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Tanh>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Tanh>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Tanh>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Tanh>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Tanh>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Tanh>>(&v566);
  mlir::OperationName::Impl::Impl(v518, "anec.tanh", 9, a1, &mlir::detail::TypeIDResolver<mlir::anec::Tanh,void>::id, &v566);
  v519 = v566;
  if (v567)
  {
    v520 = 16 * v567;
    v521 = (v566 + 8);
    do
    {
      v522 = *v521;
      v521 += 2;
      free(v522);
      v520 -= 16;
    }

    while (v520);
    v519 = v566;
  }

  if (v519 != v568)
  {
    free(v519);
  }

  *v518 = &unk_1F5B33550;
  v566 = v518;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v523 = v566;
  v566 = 0;
  if (v523)
  {
    (*(*v523 + 8))(v523);
  }

  v524 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::TensorBufferToTensor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::TensorBufferToTensor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::TensorBufferToTensor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::TensorBufferToTensor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::TensorBufferToTensor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::TensorBufferToTensor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::TensorBufferToTensor>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::TensorBufferToTensor>>(&v566);
  mlir::OperationName::Impl::Impl(v524, "anec.tensor_buffer_to_tensor", 28, a1, &mlir::detail::TypeIDResolver<mlir::anec::TensorBufferToTensor,void>::id, &v566);
  v525 = v566;
  if (v567)
  {
    v526 = 16 * v567;
    v527 = (v566 + 8);
    do
    {
      v528 = *v527;
      v527 += 2;
      free(v528);
      v526 -= 16;
    }

    while (v526);
    v525 = v566;
  }

  if (v525 != v568)
  {
    free(v525);
  }

  *v524 = &unk_1F5B33618;
  v566 = v524;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::TensorBufferToTensor::getAttributeNames(void)::attrNames, 2);
  v529 = v566;
  v566 = 0;
  if (v529)
  {
    (*(*v529 + 8))(v529);
  }

  v530 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::TensorToTensorBuffer>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::TensorToTensorBuffer>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::TensorToTensorBuffer>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::TensorToTensorBuffer>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::TensorToTensorBuffer>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::TensorToTensorBuffer>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::TensorToTensorBuffer>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::TensorToTensorBuffer>>(&v566);
  mlir::OperationName::Impl::Impl(v530, "anec.tensor_to_tensor_buffer", 28, a1, &mlir::detail::TypeIDResolver<mlir::anec::TensorToTensorBuffer,void>::id, &v566);
  v531 = v566;
  if (v567)
  {
    v532 = 16 * v567;
    v533 = (v566 + 8);
    do
    {
      v534 = *v533;
      v533 += 2;
      free(v534);
      v532 -= 16;
    }

    while (v532);
    v531 = v566;
  }

  if (v531 != v568)
  {
    free(v531);
  }

  *v530 = &unk_1F5B336E0;
  v566 = v530;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::TensorToTensorBuffer::getAttributeNames(void)::attrNames, 2);
  v535 = v566;
  v566 = 0;
  if (v535)
  {
    (*(*v535 + 8))(v535);
  }

  v536 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Tile>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Tile>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Tile>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Tile>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Tile>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Tile>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Tile>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Tile>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Tile>>(&v566);
  mlir::OperationName::Impl::Impl(v536, "anec.tile", 9, a1, &mlir::detail::TypeIDResolver<mlir::anec::Tile,void>::id, &v566);
  v537 = v566;
  if (v567)
  {
    v538 = 16 * v567;
    v539 = (v566 + 8);
    do
    {
      v540 = *v539;
      v539 += 2;
      free(v540);
      v538 -= 16;
    }

    while (v538);
    v537 = v566;
  }

  if (v537 != v568)
  {
    free(v537);
  }

  *v536 = &unk_1F5B337A8;
  v566 = v536;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Tile::getAttributeNames(void)::attrNames, 1);
  v541 = v566;
  v566 = 0;
  if (v541)
  {
    (*(*v541 + 8))(v541);
  }

  v542 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Transpose>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Transpose>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Transpose>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Transpose>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Transpose>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Transpose>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Transpose>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Transpose>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Transpose>>(&v566);
  mlir::OperationName::Impl::Impl(v542, "anec.transpose", 14, a1, &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, &v566);
  v543 = v566;
  if (v567)
  {
    v544 = 16 * v567;
    v545 = (v566 + 8);
    do
    {
      v546 = *v545;
      v545 += 2;
      free(v546);
      v544 -= 16;
    }

    while (v544);
    v543 = v566;
  }

  if (v543 != v568)
  {
    free(v543);
  }

  *v542 = &unk_1F5B33870;
  v566 = v542;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Transpose::getAttributeNames(void)::attrNames, 1);
  v547 = v566;
  v566 = 0;
  if (v547)
  {
    (*(*v547 + 8))(v547);
  }

  v548 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Trunc>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Trunc>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Trunc>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Trunc>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Trunc>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Trunc>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Trunc>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Trunc>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Trunc>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Trunc>>(&v566);
  mlir::OperationName::Impl::Impl(v548, "anec.trunc", 10, a1, &mlir::detail::TypeIDResolver<mlir::anec::Trunc,void>::id, &v566);
  v549 = v566;
  if (v567)
  {
    v550 = 16 * v567;
    v551 = (v566 + 8);
    do
    {
      v552 = *v551;
      v551 += 2;
      free(v552);
      v550 -= 16;
    }

    while (v550);
    v549 = v566;
  }

  if (v549 != v568)
  {
    free(v549);
  }

  *v548 = &unk_1F5B33938;
  v566 = v548;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  v553 = v566;
  v566 = 0;
  if (v553)
  {
    (*(*v553 + 8))(v553);
  }

  v554 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(&v566);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(&v566);
  mlir::OperationName::Impl::Impl(v554, "anec.unflatten", 14, a1, &mlir::detail::TypeIDResolver<mlir::anec::Unflatten,void>::id, &v566);
  v555 = v566;
  if (v567)
  {
    v556 = 16 * v567;
    v557 = (v566 + 8);
    do
    {
      v558 = *v557;
      v557 += 2;
      free(v558);
      v556 -= 16;
    }

    while (v556);
    v555 = v566;
  }

  if (v555 != v568)
  {
    free(v555);
  }

  *v554 = &unk_1F5B33A00;
  v566 = v554;
  mlir::RegisteredOperationName::insert(&v566, &mlir::anec::Unflatten::getAttributeNames(void)::attrNames, 2);
  v559 = v566;
  v566 = 0;
  if (v559)
  {
    (*(*v559 + 8))(v559);
  }

  v560 = operator new(0x70uLL);
  v566 = v568;
  v567 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::UnrealizedConversionCast>>(&v566);
  mlir::OperationName::Impl::Impl(v560, "anec.unrealized_conversion_cast", 31, a1, &mlir::detail::TypeIDResolver<mlir::anec::UnrealizedConversionCast,void>::id, &v566);
  v561 = v566;
  if (v567)
  {
    v562 = 16 * v567;
    v563 = (v566 + 8);
    do
    {
      v564 = *v563;
      v563 += 2;
      free(v564);
      v562 -= 16;
    }

    while (v562);
    v561 = v566;
  }

  if (v561 != v568)
  {
    free(v561);
  }

  *v560 = &unk_1F5B33AC8;
  v566 = v560;
  mlir::RegisteredOperationName::insert(&v566, 0, 0);
  result = v566;
  v566 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}