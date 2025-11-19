float mlir::copyElementsAttrData<unsigned int>(uint64_t a1, uint64_t a2, int *a3)
{
  v143[5] = *MEMORY[0x1E69E9840];
  v140 = a1;
  v141 = a2;
  Type = mlir::ElementsAttr::getType(&v140);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawData = Type;
    mlir::arith::ExtUIOp::fold();
    Type = RawData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v139[0] = Type;
  v139[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v139);
  v18 = mlir::ElementsAttr::isSplat(&v140);
  v19 = v140;
  if (mlir::DenseElementsAttr::classof(v140))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v142[0] = v20;
  if (!v20)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v142[0] = v24;
    if (v24)
    {
      RawData = mlir::mps::MPSBufferTensorAttr::getRawData(v142);
      v4 = v25;
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
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = i;
        }

        a3[i] = RawData[v27];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_39:
      for (j = 0; j != NumElements; ++j)
      {
        if (v18)
        {
          v29 = 0;
        }

        else
        {
          v29 = j;
        }

        a3[j] = RawData[v29];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_52:
      if (NumElements >= 2)
      {
        v32 = 0;
        v30 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v33 = a3 + 1;
        do
        {
          if (v18)
          {
            v34 = 0;
          }

          else
          {
            v34 = v32;
          }

          if (v18)
          {
            v35 = 0;
          }

          else
          {
            v35 = v32 + 1;
          }

          v36 = *&RawData[2 * v35];
          *(v33 - 1) = *&RawData[2 * v34];
          *v33 = v36;
          v33 += 2;
          v32 += 2;
        }

        while (v32 != v30);
        goto LABEL_221;
      }

      v30 = 0;
      do
      {
        if (v18)
        {
          v132 = 0;
        }

        else
        {
          v132 = v30;
        }

        a3[v30++] = *&RawData[2 * v132];
LABEL_221:
        ;
      }

      while (NumElements != v30);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_58:
      if (NumElements >= 2)
      {
        v39 = 0;
        v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v40 = a3 + 1;
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

          if (v18)
          {
            v42 = 0;
          }

          else
          {
            v42 = v39 + 1;
          }

          v43 = *&RawData[2 * v42];
          *(v40 - 1) = *&RawData[2 * v41];
          *v40 = v43;
          v40 += 2;
          v39 += 2;
        }

        while (v39 != v31);
        goto LABEL_227;
      }

      v31 = 0;
      do
      {
        if (v18)
        {
          v133 = 0;
        }

        else
        {
          v133 = v31;
        }

        a3[v31++] = *&RawData[2 * v133];
LABEL_227:
        ;
      }

      while (NumElements != v31);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_73:
      for (k = 0; k != NumElements; ++k)
      {
        if (v18)
        {
          v38 = 0;
        }

        else
        {
          v38 = k;
        }

        a3[k] = *&RawData[4 * v38];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_92:
      for (m = 0; m != NumElements; ++m)
      {
        if (v18)
        {
          v45 = 0;
        }

        else
        {
          v45 = m;
        }

        a3[m] = *&RawData[4 * v45];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isInteger(&isSplat, 64))
    {
      *a3 = *RawData;
      return *v22.i32;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_113:
      if (NumElements >= 2)
      {
        v61 = 0;
        v48 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v62 = (a3 + 1);
        do
        {
          if (v18)
          {
            v63 = 0;
          }

          else
          {
            v63 = v61;
          }

          if (v18)
          {
            v64 = 0;
          }

          else
          {
            v64 = v61 + 1;
          }

          v22.i16[0] = *&RawData[2 * v63];
          v65 = *&RawData[2 * v64];
          *(v62 - 1) = *v22.i16;
          *v62 = v65;
          v62 += 2;
          v61 += 2;
        }

        while (v61 != v48);
        goto LABEL_233;
      }

      v48 = 0;
      do
      {
        if (v18)
        {
          v134 = 0;
        }

        else
        {
          v134 = v48;
        }

        v22.i16[0] = *&RawData[2 * v134];
        a3[v48++] = *v22.i16;
LABEL_233:
        ;
      }

      while (NumElements != v48);
      return *v22.i32;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_125:
      if (NumElements >= 2)
      {
        v78 = 0;
        v60 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v79 = (a3 + 1);
        do
        {
          if (v18)
          {
            v80 = 0;
          }

          else
          {
            v80 = v78;
          }

          if (v18)
          {
            v81 = 0;
          }

          else
          {
            v81 = v78 + 1;
          }

          v22.i32[0] = *&RawData[4 * v80];
          v82 = *&RawData[4 * v81];
          *(v79 - 1) = *v22.i32;
          *v79 = v82;
          v79 += 2;
          v78 += 2;
        }

        while (v78 != v60);
        goto LABEL_239;
      }

      v60 = 0;
      do
      {
        if (v18)
        {
          v135 = 0;
        }

        else
        {
          v135 = v60;
        }

        v22.i32[0] = *&RawData[4 * v135];
        a3[v60++] = *v22.i32;
LABEL_239:
        ;
      }

      while (NumElements != v60);
      return *v22.i32;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      v22.i64[0] = *RawData;
      *a3 = *RawData;
      return *v22.i32;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_163;
    }

    goto LABEL_161;
  }

  RawData = mlir::DenseElementsAttr::getRawStringData(v142);
  v4 = v21;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_27:
  NumElements = mlir::ElementsAttr::getNumElements(v140, v141);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_29;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_39;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_52;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_58;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_73;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_92;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v46 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v49 = (RawData + 32);
      v50 = (a3 + 4);
      v51 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v53 = v49[-2];
        v52 = v49[-1];
        v55 = *v49;
        v54 = v49[1];
        v49 += 4;
        v22 = vuzp1q_s32(v53, v52);
        v50[-1] = v22;
        *v50 = vuzp1q_s32(v55, v54);
        v50 += 2;
        v51 -= 8;
      }

      while (v51);
      if (NumElements == v46)
      {
        return *v22.i32;
      }
    }

    else
    {
      v46 = 0;
    }

    v56 = &RawData[8 * v46];
    v57 = NumElements - v46;
    v58 = &a3[v46];
    do
    {
      v59 = *v56;
      v56 += 8;
      *v58++ = v59;
      --v57;
    }

    while (v57);
    return *v22.i32;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v47 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v66 = (RawData + 32);
      v67 = (a3 + 4);
      v68 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v70 = v66[-2];
        v69 = v66[-1];
        v72 = *v66;
        v71 = v66[1];
        v66 += 4;
        v22 = vuzp1q_s32(v70, v69);
        v67[-1] = v22;
        *v67 = vuzp1q_s32(v72, v71);
        v67 += 2;
        v68 -= 8;
      }

      while (v68);
      if (NumElements == v47)
      {
        return *v22.i32;
      }
    }

    else
    {
      v47 = 0;
    }

    v73 = &RawData[8 * v47];
    v74 = NumElements - v47;
    v75 = &a3[v47];
    do
    {
      v76 = *v73;
      v73 += 8;
      *v75++ = v76;
      --v74;
    }

    while (v74);
    return *v22.i32;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_113;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_125;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v77 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v93 = (RawData + 32);
      v94 = (a3 + 4);
      v95 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v96 = v93[-2];
        v97 = v93[-1];
        v98 = *v93;
        v99 = v93[1];
        v93 += 4;
        v22 = vuzp1q_s32(vcvtq_u64_f64(v96), vcvtq_u64_f64(v97));
        v94[-1] = v22;
        *v94 = vuzp1q_s32(vcvtq_u64_f64(v98), vcvtq_u64_f64(v99));
        v94 += 2;
        v95 -= 8;
      }

      while (v95);
      if (NumElements == v77)
      {
        return *v22.i32;
      }
    }

    else
    {
      v77 = 0;
    }

    v100 = &RawData[8 * v77];
    v101 = NumElements - v77;
    v102 = &a3[v77];
    do
    {
      v103 = *v100++;
      v22.i32[0] = LODWORD(v103);
      *v102++ = v103;
      --v101;
    }

    while (v101);
    return *v22.i32;
  }

  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_163:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned int>(RawData, v4, a3, NumElements, IntOrFloatBitWidth);
      return *v22.i32;
    }

    llvm::SmallVector<char,40u>::SmallVector(v142, NumElements);
    mlir::detail::unpackBooleanData(RawData, v4, v142[0], v142[1]);
    v84 = v142[0];
    if (NumElements < 1)
    {
      goto LABEL_195;
    }

    if (v18)
    {
      if (NumElements < 4 || v142[0] + 1 > a3 && v142[0] < &a3[NumElements])
      {
        v85 = 0;
        goto LABEL_170;
      }

      if (NumElements >= 0x20)
      {
        v109 = vld1_dup_s8(v142[0]);
        v85 = NumElements & 0x7FFFFFFFFFFFFFE0;
        v110 = vmovl_s8(v109);
        v22 = vmovl_high_s16(v110);
        v111 = vmovl_s16(*v110.i8);
        v112 = (a3 + 16);
        v113 = NumElements & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v112[-4] = v111;
          v112[-3] = v22;
          v112[-2] = v111;
          v112[-1] = v22;
          *v112 = v111;
          v112[1] = v22;
          v112[2] = v111;
          v112[3] = v22;
          v112 += 8;
          v113 -= 32;
        }

        while (v113);
        if (NumElements == v85)
        {
          goto LABEL_195;
        }

        if ((NumElements & 0x1C) == 0)
        {
LABEL_170:
          v86 = NumElements - v85;
          v87 = &a3[v85];
          do
          {
            *v87++ = *v84;
            --v86;
          }

          while (v86);
          goto LABEL_195;
        }
      }

      else
      {
        v85 = 0;
      }

      v114 = v85;
      v85 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v22 = vshrq_n_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*v84)), 0x18uLL), 0x18uLL);
      v115 = &a3[v114];
      v116 = v114 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v115++ = v22;
        v116 += 4;
      }

      while (v116);
      if (NumElements != v85)
      {
        goto LABEL_170;
      }

LABEL_195:
      if (v84 != v143)
      {
        free(v84);
      }

      return *v22.i32;
    }

    if (NumElements < 4 || v142[0] + NumElements > a3 && v142[0] < &a3[NumElements])
    {
      v104 = 0;
      goto LABEL_193;
    }

    if (NumElements >= 0x20)
    {
      v104 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v117 = (v142[0] + 16);
      v118 = (a3 + 16);
      v119 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v120 = *v117[-2].i8;
        v121 = *v117->i8;
        v122 = vmovl_s8(*v120.i8);
        v123 = vmovl_high_s8(v120);
        v124 = vmovl_s8(*v117);
        v118[-2] = vmovl_s16(*v123.i8);
        v118[-1] = vmovl_high_s16(v123);
        v125 = vmovl_high_s8(v121);
        v126 = vmovl_s16(*v125.i8);
        v118[-4] = vmovl_s16(*v122.i8);
        v118[-3] = vmovl_high_s16(v122);
        v22 = vmovl_high_s16(v125);
        v118[2] = v126;
        v118[3] = v22;
        *v118 = vmovl_s16(*v124.i8);
        v118[1] = vmovl_high_s16(v124);
        v118 += 8;
        v117 += 4;
        v119 -= 32;
      }

      while (v119);
      if (NumElements == v104)
      {
        goto LABEL_195;
      }

      if ((NumElements & 0x1C) == 0)
      {
LABEL_193:
        v105 = &v84[v104];
        v106 = NumElements - v104;
        v107 = &a3[v104];
        do
        {
          v108 = *v105++;
          *v107++ = v108;
          --v106;
        }

        while (v106);
        goto LABEL_195;
      }
    }

    else
    {
      v104 = 0;
    }

    v127 = v104;
    v104 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v128 = &v84[v127];
    v129 = &a3[v127];
    v130 = v127 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v131 = *v128;
      v128 += 4;
      v22.i32[0] = v131;
      v22 = vmovl_s16(*&vmovl_s8(*v22.i8));
      *v129++ = v22;
      v130 += 4;
    }

    while (v130);
    if (NumElements == v104)
    {
      goto LABEL_195;
    }

    goto LABEL_193;
  }

  if (NumElements < 1)
  {
    return *v22.i32;
  }

LABEL_161:
  if (NumElements >= 2)
  {
    v89 = 0;
    v83 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v90 = a3;
    do
    {
      if (v18)
      {
        v91 = 0;
      }

      else
      {
        v91 = v89;
      }

      if (v18)
      {
        v92 = 0;
      }

      else
      {
        v92 = v89 + 1;
      }

      v22.i16[0] = *&RawData[2 * v91];
      v22.i16[2] = *&RawData[2 * v92];
      *v22.i8 = vcvt_u32_f32(vshl_n_s32(*v22.i8, 0x10uLL));
      *v90 = v22.i64[0];
      v90 += 2;
      v89 += 2;
    }

    while (v89 != v83);
    goto LABEL_245;
  }

  v83 = 0;
  do
  {
    if (v18)
    {
      v136 = 0;
    }

    else
    {
      v136 = v83;
    }

    v22.i32[0] = *&RawData[2 * v136] << 16;
    a3[v83++] = *v22.i32;
LABEL_245:
    ;
  }

  while (NumElements != v83);
  return *v22.i32;
}

float mlir::copyElementsAttrData<int>(uint64_t a1, uint64_t a2, int *a3)
{
  v143[5] = *MEMORY[0x1E69E9840];
  v140 = a1;
  v141 = a2;
  Type = mlir::ElementsAttr::getType(&v140);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawData = Type;
    mlir::arith::ExtUIOp::fold();
    Type = RawData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v139[0] = Type;
  v139[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v139);
  v18 = mlir::ElementsAttr::isSplat(&v140);
  v19 = v140;
  if (mlir::DenseElementsAttr::classof(v140))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v142[0] = v20;
  if (!v20)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v142[0] = v24;
    if (v24)
    {
      RawData = mlir::mps::MPSBufferTensorAttr::getRawData(v142);
      v4 = v25;
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
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = i;
        }

        a3[i] = RawData[v27];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_39:
      for (j = 0; j != NumElements; ++j)
      {
        if (v18)
        {
          v29 = 0;
        }

        else
        {
          v29 = j;
        }

        a3[j] = RawData[v29];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_52:
      if (NumElements >= 2)
      {
        v32 = 0;
        v30 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v33 = a3 + 1;
        do
        {
          if (v18)
          {
            v34 = 0;
          }

          else
          {
            v34 = v32;
          }

          if (v18)
          {
            v35 = 0;
          }

          else
          {
            v35 = v32 + 1;
          }

          v36 = *&RawData[2 * v35];
          *(v33 - 1) = *&RawData[2 * v34];
          *v33 = v36;
          v33 += 2;
          v32 += 2;
        }

        while (v32 != v30);
        goto LABEL_221;
      }

      v30 = 0;
      do
      {
        if (v18)
        {
          v132 = 0;
        }

        else
        {
          v132 = v30;
        }

        a3[v30++] = *&RawData[2 * v132];
LABEL_221:
        ;
      }

      while (NumElements != v30);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_58:
      if (NumElements >= 2)
      {
        v39 = 0;
        v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v40 = a3 + 1;
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

          if (v18)
          {
            v42 = 0;
          }

          else
          {
            v42 = v39 + 1;
          }

          v43 = *&RawData[2 * v42];
          *(v40 - 1) = *&RawData[2 * v41];
          *v40 = v43;
          v40 += 2;
          v39 += 2;
        }

        while (v39 != v31);
        goto LABEL_227;
      }

      v31 = 0;
      do
      {
        if (v18)
        {
          v133 = 0;
        }

        else
        {
          v133 = v31;
        }

        a3[v31++] = *&RawData[2 * v133];
LABEL_227:
        ;
      }

      while (NumElements != v31);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_73:
      for (k = 0; k != NumElements; ++k)
      {
        if (v18)
        {
          v38 = 0;
        }

        else
        {
          v38 = k;
        }

        a3[k] = *&RawData[4 * v38];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_92:
      for (m = 0; m != NumElements; ++m)
      {
        if (v18)
        {
          v45 = 0;
        }

        else
        {
          v45 = m;
        }

        a3[m] = *&RawData[4 * v45];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isInteger(&isSplat, 64))
    {
      *a3 = *RawData;
      return *v22.i32;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_113:
      if (NumElements >= 2)
      {
        v61 = 0;
        v48 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v62 = a3 + 1;
        do
        {
          if (v18)
          {
            v63 = 0;
          }

          else
          {
            v63 = v61;
          }

          if (v18)
          {
            v64 = 0;
          }

          else
          {
            v64 = v61 + 1;
          }

          v22.i16[0] = *&RawData[2 * v63];
          v65 = *&RawData[2 * v64];
          *(v62 - 1) = *v22.i16;
          *v62 = v65;
          v62 += 2;
          v61 += 2;
        }

        while (v61 != v48);
        goto LABEL_233;
      }

      v48 = 0;
      do
      {
        if (v18)
        {
          v134 = 0;
        }

        else
        {
          v134 = v48;
        }

        v22.i16[0] = *&RawData[2 * v134];
        a3[v48++] = *v22.i16;
LABEL_233:
        ;
      }

      while (NumElements != v48);
      return *v22.i32;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_125:
      if (NumElements >= 2)
      {
        v78 = 0;
        v60 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v79 = a3 + 1;
        do
        {
          if (v18)
          {
            v80 = 0;
          }

          else
          {
            v80 = v78;
          }

          if (v18)
          {
            v81 = 0;
          }

          else
          {
            v81 = v78 + 1;
          }

          v22.i32[0] = *&RawData[4 * v80];
          v82 = *&RawData[4 * v81];
          *(v79 - 1) = *v22.i32;
          *v79 = v82;
          v79 += 2;
          v78 += 2;
        }

        while (v78 != v60);
        goto LABEL_239;
      }

      v60 = 0;
      do
      {
        if (v18)
        {
          v135 = 0;
        }

        else
        {
          v135 = v60;
        }

        v22.i32[0] = *&RawData[4 * v135];
        a3[v60++] = *v22.i32;
LABEL_239:
        ;
      }

      while (NumElements != v60);
      return *v22.i32;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      v22.i64[0] = *RawData;
      *a3 = *RawData;
      return *v22.i32;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_163;
    }

    goto LABEL_161;
  }

  RawData = mlir::DenseElementsAttr::getRawStringData(v142);
  v4 = v21;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_27:
  NumElements = mlir::ElementsAttr::getNumElements(v140, v141);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_29;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_39;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_52;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_58;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_73;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_92;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v46 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v49 = (RawData + 32);
      v50 = (a3 + 4);
      v51 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v53 = v49[-2];
        v52 = v49[-1];
        v55 = *v49;
        v54 = v49[1];
        v49 += 4;
        v22 = vuzp1q_s32(v53, v52);
        v50[-1] = v22;
        *v50 = vuzp1q_s32(v55, v54);
        v50 += 2;
        v51 -= 8;
      }

      while (v51);
      if (NumElements == v46)
      {
        return *v22.i32;
      }
    }

    else
    {
      v46 = 0;
    }

    v56 = &RawData[8 * v46];
    v57 = NumElements - v46;
    v58 = &a3[v46];
    do
    {
      v59 = *v56;
      v56 += 8;
      *v58++ = v59;
      --v57;
    }

    while (v57);
    return *v22.i32;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v47 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v66 = (RawData + 32);
      v67 = (a3 + 4);
      v68 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v70 = v66[-2];
        v69 = v66[-1];
        v72 = *v66;
        v71 = v66[1];
        v66 += 4;
        v22 = vuzp1q_s32(v70, v69);
        v67[-1] = v22;
        *v67 = vuzp1q_s32(v72, v71);
        v67 += 2;
        v68 -= 8;
      }

      while (v68);
      if (NumElements == v47)
      {
        return *v22.i32;
      }
    }

    else
    {
      v47 = 0;
    }

    v73 = &RawData[8 * v47];
    v74 = NumElements - v47;
    v75 = &a3[v47];
    do
    {
      v76 = *v73;
      v73 += 8;
      *v75++ = v76;
      --v74;
    }

    while (v74);
    return *v22.i32;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_113;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_125;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v77 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v93 = (RawData + 32);
      v94 = (a3 + 4);
      v95 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v96 = v93[-2];
        v97 = v93[-1];
        v98 = *v93;
        v99 = v93[1];
        v93 += 4;
        v22 = vuzp1q_s32(vcvtq_s64_f64(v96), vcvtq_s64_f64(v97));
        v94[-1] = v22;
        *v94 = vuzp1q_s32(vcvtq_s64_f64(v98), vcvtq_s64_f64(v99));
        v94 += 2;
        v95 -= 8;
      }

      while (v95);
      if (NumElements == v77)
      {
        return *v22.i32;
      }
    }

    else
    {
      v77 = 0;
    }

    v100 = &RawData[8 * v77];
    v101 = NumElements - v77;
    v102 = &a3[v77];
    do
    {
      v103 = *v100++;
      v22.i32[0] = LODWORD(v103);
      *v102++ = v103;
      --v101;
    }

    while (v101);
    return *v22.i32;
  }

  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_163:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<int>(RawData, v4, a3, NumElements, IntOrFloatBitWidth);
      return *v22.i32;
    }

    llvm::SmallVector<char,40u>::SmallVector(v142, NumElements);
    mlir::detail::unpackBooleanData(RawData, v4, v142[0], v142[1]);
    v84 = v142[0];
    if (NumElements < 1)
    {
      goto LABEL_195;
    }

    if (v18)
    {
      if (NumElements < 4 || v142[0] + 1 > a3 && v142[0] < &a3[NumElements])
      {
        v85 = 0;
        goto LABEL_170;
      }

      if (NumElements >= 0x20)
      {
        v109 = vld1_dup_s8(v142[0]);
        v85 = NumElements & 0x7FFFFFFFFFFFFFE0;
        v110 = vmovl_s8(v109);
        v22 = vmovl_high_s16(v110);
        v111 = vmovl_s16(*v110.i8);
        v112 = (a3 + 16);
        v113 = NumElements & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v112[-4] = v111;
          v112[-3] = v22;
          v112[-2] = v111;
          v112[-1] = v22;
          *v112 = v111;
          v112[1] = v22;
          v112[2] = v111;
          v112[3] = v22;
          v112 += 8;
          v113 -= 32;
        }

        while (v113);
        if (NumElements == v85)
        {
          goto LABEL_195;
        }

        if ((NumElements & 0x1C) == 0)
        {
LABEL_170:
          v86 = NumElements - v85;
          v87 = &a3[v85];
          do
          {
            *v87++ = *v84;
            --v86;
          }

          while (v86);
          goto LABEL_195;
        }
      }

      else
      {
        v85 = 0;
      }

      v114 = v85;
      v85 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v22 = vshrq_n_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*v84)), 0x18uLL), 0x18uLL);
      v115 = &a3[v114];
      v116 = v114 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v115++ = v22;
        v116 += 4;
      }

      while (v116);
      if (NumElements != v85)
      {
        goto LABEL_170;
      }

LABEL_195:
      if (v84 != v143)
      {
        free(v84);
      }

      return *v22.i32;
    }

    if (NumElements < 4 || v142[0] + NumElements > a3 && v142[0] < &a3[NumElements])
    {
      v104 = 0;
      goto LABEL_193;
    }

    if (NumElements >= 0x20)
    {
      v104 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v117 = (v142[0] + 16);
      v118 = (a3 + 16);
      v119 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v120 = *v117[-2].i8;
        v121 = *v117->i8;
        v122 = vmovl_s8(*v120.i8);
        v123 = vmovl_high_s8(v120);
        v124 = vmovl_s8(*v117);
        v118[-2] = vmovl_s16(*v123.i8);
        v118[-1] = vmovl_high_s16(v123);
        v125 = vmovl_high_s8(v121);
        v126 = vmovl_s16(*v125.i8);
        v118[-4] = vmovl_s16(*v122.i8);
        v118[-3] = vmovl_high_s16(v122);
        v22 = vmovl_high_s16(v125);
        v118[2] = v126;
        v118[3] = v22;
        *v118 = vmovl_s16(*v124.i8);
        v118[1] = vmovl_high_s16(v124);
        v118 += 8;
        v117 += 4;
        v119 -= 32;
      }

      while (v119);
      if (NumElements == v104)
      {
        goto LABEL_195;
      }

      if ((NumElements & 0x1C) == 0)
      {
LABEL_193:
        v105 = &v84[v104];
        v106 = NumElements - v104;
        v107 = &a3[v104];
        do
        {
          v108 = *v105++;
          *v107++ = v108;
          --v106;
        }

        while (v106);
        goto LABEL_195;
      }
    }

    else
    {
      v104 = 0;
    }

    v127 = v104;
    v104 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v128 = &v84[v127];
    v129 = &a3[v127];
    v130 = v127 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v131 = *v128;
      v128 += 4;
      v22.i32[0] = v131;
      v22 = vmovl_s16(*&vmovl_s8(*v22.i8));
      *v129++ = v22;
      v130 += 4;
    }

    while (v130);
    if (NumElements == v104)
    {
      goto LABEL_195;
    }

    goto LABEL_193;
  }

  if (NumElements < 1)
  {
    return *v22.i32;
  }

LABEL_161:
  if (NumElements >= 2)
  {
    v89 = 0;
    v83 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v90 = a3;
    do
    {
      if (v18)
      {
        v91 = 0;
      }

      else
      {
        v91 = v89;
      }

      if (v18)
      {
        v92 = 0;
      }

      else
      {
        v92 = v89 + 1;
      }

      v22.i16[0] = *&RawData[2 * v91];
      v22.i16[2] = *&RawData[2 * v92];
      *v22.i8 = vcvt_s32_f32(vshl_n_s32(*v22.i8, 0x10uLL));
      *v90 = v22.i64[0];
      v90 += 2;
      v89 += 2;
    }

    while (v89 != v83);
    goto LABEL_245;
  }

  v83 = 0;
  do
  {
    if (v18)
    {
      v136 = 0;
    }

    else
    {
      v136 = v83;
    }

    v22.i32[0] = *&RawData[2 * v136] << 16;
    a3[v83++] = *v22.i32;
LABEL_245:
    ;
  }

  while (NumElements != v83);
  return *v22.i32;
}

float mlir::copyElementsAttrData<unsigned long long>(uint64_t a1, uint64_t a2, int32x4_t *a3)
{
  v163[5] = *MEMORY[0x1E69E9840];
  v160 = a1;
  v161 = a2;
  Type = mlir::ElementsAttr::getType(&v160);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawData = Type;
    mlir::arith::ExtUIOp::fold();
    Type = RawData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v159[0] = Type;
  v159[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v159);
  v18 = mlir::ElementsAttr::isSplat(&v160);
  v19 = v160;
  if (mlir::DenseElementsAttr::classof(v160))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v162[0] = v20;
  if (!v20)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v162[0] = v24;
    if (v24)
    {
      RawData = mlir::mps::MPSBufferTensorAttr::getRawData(v162);
      v4 = v25;
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
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = i;
        }

        a3->i64[i] = RawData[v27];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_39:
      for (j = 0; j != NumElements; ++j)
      {
        if (v18)
        {
          v29 = 0;
        }

        else
        {
          v29 = j;
        }

        a3->i64[j] = RawData[v29];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_52:
      if (NumElements >= 2)
      {
        v32 = 0;
        v30 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v33 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v34 = 0;
          }

          else
          {
            v34 = v32;
          }

          if (v18)
          {
            v35 = 0;
          }

          else
          {
            v35 = v32 + 1;
          }

          v36 = *&RawData[2 * v35];
          *(v33 - 1) = *&RawData[2 * v34];
          *v33 = v36;
          v33 += 2;
          v32 += 2;
        }

        while (v32 != v30);
        goto LABEL_231;
      }

      v30 = 0;
      do
      {
        if (v18)
        {
          v150 = 0;
        }

        else
        {
          v150 = v30;
        }

        a3->i64[v30++] = *&RawData[2 * v150];
LABEL_231:
        ;
      }

      while (NumElements != v30);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_58:
      if (NumElements >= 2)
      {
        v38 = 0;
        v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v39 = &a3->i64[1];
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

          if (v18)
          {
            v41 = 0;
          }

          else
          {
            v41 = v38 + 1;
          }

          v42 = *&RawData[2 * v41];
          *(v39 - 1) = *&RawData[2 * v40];
          *v39 = v42;
          v39 += 2;
          v38 += 2;
        }

        while (v38 != v31);
        goto LABEL_237;
      }

      v31 = 0;
      do
      {
        if (v18)
        {
          v151 = 0;
        }

        else
        {
          v151 = v31;
        }

        a3->i64[v31++] = *&RawData[2 * v151];
LABEL_237:
        ;
      }

      while (NumElements != v31);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_73:
      if (NumElements >= 2)
      {
        v44 = 0;
        v37 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v45 = &a3->i64[1];
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

          if (v18)
          {
            v47 = 0;
          }

          else
          {
            v47 = v44 + 1;
          }

          v48 = *&RawData[4 * v47];
          *(v45 - 1) = *&RawData[4 * v46];
          *v45 = v48;
          v45 += 2;
          v44 += 2;
        }

        while (v44 != v37);
        goto LABEL_243;
      }

      v37 = 0;
      do
      {
        if (v18)
        {
          v152 = 0;
        }

        else
        {
          v152 = v37;
        }

        a3->i64[v37++] = *&RawData[4 * v152];
LABEL_243:
        ;
      }

      while (NumElements != v37);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_88:
      if (NumElements >= 2)
      {
        v59 = 0;
        v43 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v60 = &a3->i64[1];
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

          if (v18)
          {
            v62 = 0;
          }

          else
          {
            v62 = v59 + 1;
          }

          v63 = *&RawData[4 * v62];
          *(v60 - 1) = *&RawData[4 * v61];
          *v60 = v63;
          v60 += 2;
          v59 += 2;
        }

        while (v59 != v43);
        goto LABEL_249;
      }

      v43 = 0;
      do
      {
        if (v18)
        {
          v153 = 0;
        }

        else
        {
          v153 = v43;
        }

        a3->i64[v43++] = *&RawData[4 * v153];
LABEL_249:
        ;
      }

      while (NumElements != v43);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isInteger(&isSplat, 64))
    {
      a3->i64[0] = *RawData;
      return *v22.i32;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_135:
      if (NumElements >= 2)
      {
        v76 = 0;
        v74 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v77 = &a3->u64[1];
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

          if (v18)
          {
            v79 = 0;
          }

          else
          {
            v79 = v76 + 1;
          }

          v22.i16[0] = *&RawData[2 * v78];
          v80 = *&RawData[2 * v79];
          *(v77 - 1) = *v22.i16;
          *v77 = v80;
          v77 += 2;
          v76 += 2;
        }

        while (v76 != v74);
        goto LABEL_255;
      }

      v74 = 0;
      do
      {
        if (v18)
        {
          v154 = 0;
        }

        else
        {
          v154 = v74;
        }

        v22.i16[0] = *&RawData[2 * v154];
        a3->i64[v74++] = *v22.i16;
LABEL_255:
        ;
      }

      while (NumElements != v74);
      return *v22.i32;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_141:
      if (NumElements >= 2)
      {
        v82 = 0;
        v75 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v83 = &a3->u64[1];
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

          if (v18)
          {
            v85 = 0;
          }

          else
          {
            v85 = v82 + 1;
          }

          v22.i32[0] = *&RawData[4 * v84];
          v86 = *&RawData[4 * v85];
          *(v83 - 1) = *v22.i32;
          *v83 = v86;
          v83 += 2;
          v82 += 2;
        }

        while (v82 != v75);
        goto LABEL_261;
      }

      v75 = 0;
      do
      {
        if (v18)
        {
          v155 = 0;
        }

        else
        {
          v155 = v75;
        }

        v22.i32[0] = *&RawData[4 * v155];
        a3->i64[v75++] = *v22.i32;
LABEL_261:
        ;
      }

      while (NumElements != v75);
      return *v22.i32;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      v22.i64[0] = *RawData;
      a3->i64[0] = *RawData;
      return *v22.i32;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  RawData = mlir::DenseElementsAttr::getRawStringData(v162);
  v4 = v21;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_27:
  NumElements = mlir::ElementsAttr::getNumElements(v160, v161);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_29;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_39;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_52;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_58;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_73;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_88;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    if (NumElements >= 1)
    {
      v49 = 0;
      if (NumElements < 4)
      {
        goto LABEL_109;
      }

      if ((a3 - RawData) <= 0x1F)
      {
        goto LABEL_109;
      }

      v49 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v50 = (RawData + 16);
      v51 = a3 + 1;
      v52 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = v50[-1];
        v53 = *v50;
        v51[-1] = v22;
        *v51 = v53;
        v50 += 2;
        v51 += 2;
        v52 -= 4;
      }

      while (v52);
      if (NumElements != v49)
      {
LABEL_109:
        v54 = v49;
        v55 = &RawData[8 * v49];
        v56 = NumElements - v49;
        v57 = &a3->i64[v54];
        do
        {
          v58 = *v55;
          v55 += 8;
          *v57++ = v58;
          --v56;
        }

        while (v56);
      }
    }

    return *v22.i32;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    if (NumElements >= 1)
    {
      v64 = 0;
      if (NumElements < 4)
      {
        goto LABEL_128;
      }

      if ((a3 - RawData) <= 0x1F)
      {
        goto LABEL_128;
      }

      v64 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v65 = (RawData + 16);
      v66 = a3 + 1;
      v67 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = v65[-1];
        v68 = *v65;
        v66[-1] = v22;
        *v66 = v68;
        v65 += 2;
        v66 += 2;
        v67 -= 4;
      }

      while (v67);
      if (NumElements != v64)
      {
LABEL_128:
        v69 = v64;
        v70 = &RawData[8 * v64];
        v71 = NumElements - v64;
        v72 = &a3->i64[v69];
        do
        {
          v73 = *v70;
          v70 += 8;
          *v72++ = v73;
          --v71;
        }

        while (v71);
      }
    }

    return *v22.i32;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_135;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_141;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 3)
    {
      v81 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v98 = (RawData + 16);
      v99 = &a3[1];
      v100 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = vcvtq_u64_f64(v98[-1]);
        v101 = vcvtq_u64_f64(*v98);
        v99[-1] = v22;
        *v99 = v101;
        v98 += 2;
        v99 += 2;
        v100 -= 4;
      }

      while (v100);
      if (NumElements == v81)
      {
        return *v22.i32;
      }
    }

    else
    {
      v81 = 0;
    }

    v102 = v81;
    v103 = &RawData[8 * v81];
    v104 = NumElements - v81;
    v105 = &a3->i64[v102];
    do
    {
      v106 = *v103++;
      v22.i32[0] = LODWORD(v106);
      *v105++ = v106;
      --v104;
    }

    while (v104);
    return *v22.i32;
  }

  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_173:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned long long>(RawData, v4, a3, NumElements, IntOrFloatBitWidth);
      return *v22.i32;
    }

    llvm::SmallVector<char,40u>::SmallVector(v162, NumElements);
    mlir::detail::unpackBooleanData(RawData, v4, v162[0], v162[1]);
    v88 = v162[0];
    if (NumElements < 1)
    {
      goto LABEL_205;
    }

    if (v18)
    {
      if (NumElements < 4 || v162[0] + 1 > a3 && v162[0] < a3 + 8 * NumElements)
      {
        v89 = 0;
        goto LABEL_180;
      }

      if (NumElements >= 0x10)
      {
        v89 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v112 = vld1_dup_s8(v162[0]);
        v113 = vmovl_s8(v112);
        v114 = vmovl_high_s16(v113);
        v115.i64[0] = v114.i32[2];
        v115.i64[1] = v114.i32[3];
        v22 = v115;
        v115.i64[0] = v114.i32[0];
        v115.i64[1] = v114.i32[1];
        v116 = v115;
        v117 = vmovl_s16(*v113.i8);
        v115.i64[0] = v117.i32[2];
        v115.i64[1] = v117.i32[3];
        v118 = v115;
        v115.i64[0] = v117.i32[0];
        v115.i64[1] = v117.i32[1];
        v119 = v115;
        v120 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v121 = a3;
        do
        {
          *v121 = v119;
          v121[1] = v118;
          v121[2] = v116;
          v121[3] = v22;
          v121[4] = v119;
          v121[5] = v118;
          v121[6] = v116;
          v121[7] = v22;
          v121 += 8;
          v120 -= 16;
        }

        while (v120);
        if (NumElements == v89)
        {
          goto LABEL_205;
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_180:
          v90 = NumElements - v89;
          v91 = &a3->i64[v89];
          do
          {
            *v91++ = *v88;
            --v90;
          }

          while (v90);
          goto LABEL_205;
        }
      }

      else
      {
        v89 = 0;
      }

      v122 = v89;
      v123 = vdup_n_s32(*v88);
      v89 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v124.i64[0] = v123.u32[0];
      v124.i64[1] = v123.u32[1];
      v22 = vshrq_n_s64(vshlq_n_s64(v124, 0x38uLL), 0x38uLL);
      v125 = (a3 + 8 * v122);
      v126 = v122 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v125 = v22;
        v125[1] = v22;
        v125 += 2;
        v126 += 4;
      }

      while (v126);
      if (NumElements != v89)
      {
        goto LABEL_180;
      }

LABEL_205:
      if (v88 != v163)
      {
        free(v88);
      }

      return *v22.i32;
    }

    if (NumElements < 4 || v162[0] + NumElements > a3 && v162[0] < a3 + 8 * NumElements)
    {
      v107 = 0;
      goto LABEL_203;
    }

    if (NumElements >= 0x10)
    {
      v107 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v127 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v128 = a3;
      v129 = v162[0];
      do
      {
        v130 = *v129++;
        v131 = vmovl_s8(*v130.i8);
        v132 = vmovl_s16(*v131.i8);
        v133.i64[0] = v132.i32[0];
        v133.i64[1] = v132.i32[1];
        v134 = v133;
        v135 = vmovl_high_s16(v131);
        v133.i64[0] = v135.i32[0];
        v133.i64[1] = v135.i32[1];
        v136 = v133;
        v137 = vmovl_high_s8(v130);
        v138 = vmovl_high_s16(v137);
        v133.i64[0] = v138.i32[0];
        v133.i64[1] = v138.i32[1];
        v139 = v133;
        v133.i64[0] = v138.i32[2];
        v133.i64[1] = v138.i32[3];
        v128[6] = v139;
        v128[7] = v133;
        v22 = vmovl_s16(*v137.i8);
        v133.i64[0] = v22.i32[0];
        v133.i64[1] = v22.i32[1];
        v140 = v133;
        v133.i64[0] = v135.i32[2];
        v133.i64[1] = v135.i32[3];
        v141 = v133;
        v133.i64[0] = v22.i32[2];
        v133.i64[1] = v22.i32[3];
        v128[4] = v140;
        v128[5] = v133;
        v128[2] = v136;
        v128[3] = v141;
        v133.i64[0] = v132.i32[2];
        v133.i64[1] = v132.i32[3];
        v22.i64[0] = v132.i32[2];
        *v128 = v134;
        v128[1] = v133;
        v128 += 8;
        v127 -= 16;
      }

      while (v127);
      if (NumElements == v107)
      {
        goto LABEL_205;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_203:
        v108 = &v88[v107];
        v109 = NumElements - v107;
        v110 = &a3->i64[v107];
        do
        {
          v111 = *v108++;
          *v110++ = v111;
          --v109;
        }

        while (v109);
        goto LABEL_205;
      }
    }

    else
    {
      v107 = 0;
    }

    v142 = v107;
    v107 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v143 = &v88[v142];
    v144 = (a3 + 8 * v142);
    v145 = v142 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v146 = *v143;
      v143 += 4;
      v22.i32[0] = v146;
      v147 = vmovl_u16(*&vmovl_u8(*v22.i8));
      v148.i64[0] = v147.u32[0];
      v148.i64[1] = v147.u32[1];
      v149 = vshrq_n_s64(vshlq_n_s64(v148, 0x38uLL), 0x38uLL);
      v148.i64[0] = v147.u32[2];
      v148.i64[1] = v147.u32[3];
      v22 = vshrq_n_s64(vshlq_n_s64(v148, 0x38uLL), 0x38uLL);
      *v144 = v149;
      v144[1] = v22;
      v144 += 2;
      v145 += 4;
    }

    while (v145);
    if (NumElements == v107)
    {
      goto LABEL_205;
    }

    goto LABEL_203;
  }

  if (NumElements < 1)
  {
    return *v22.i32;
  }

LABEL_171:
  if (NumElements >= 2)
  {
    v93 = 0;
    v87 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v94 = &a3->u64[1];
    do
    {
      if (v18)
      {
        v95 = 0;
      }

      else
      {
        v95 = v93;
      }

      if (v18)
      {
        v96 = 0;
      }

      else
      {
        v96 = v93 + 1;
      }

      v22.i32[0] = *&RawData[2 * v95] << 16;
      v97 = COERCE_FLOAT(*&RawData[2 * v96] << 16);
      *(v94 - 1) = *v22.i32;
      *v94 = v97;
      v94 += 2;
      v93 += 2;
    }

    while (v93 != v87);
    goto LABEL_267;
  }

  v87 = 0;
  do
  {
    if (v18)
    {
      v156 = 0;
    }

    else
    {
      v156 = v87;
    }

    v22.i32[0] = *&RawData[2 * v156] << 16;
    a3->i64[v87++] = *v22.i32;
LABEL_267:
    ;
  }

  while (NumElements != v87);
  return *v22.i32;
}

float mlir::copyElementsAttrData<long long>(uint64_t a1, uint64_t a2, int32x4_t *a3)
{
  v163[5] = *MEMORY[0x1E69E9840];
  v160 = a1;
  v161 = a2;
  Type = mlir::ElementsAttr::getType(&v160);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawData = Type;
    mlir::arith::ExtUIOp::fold();
    Type = RawData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v159[0] = Type;
  v159[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v159);
  v18 = mlir::ElementsAttr::isSplat(&v160);
  v19 = v160;
  if (mlir::DenseElementsAttr::classof(v160))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v162[0] = v20;
  if (!v20)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v162[0] = v24;
    if (v24)
    {
      RawData = mlir::mps::MPSBufferTensorAttr::getRawData(v162);
      v4 = v25;
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
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = i;
        }

        a3->i64[i] = RawData[v27];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_39:
      for (j = 0; j != NumElements; ++j)
      {
        if (v18)
        {
          v29 = 0;
        }

        else
        {
          v29 = j;
        }

        a3->i64[j] = RawData[v29];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_52:
      if (NumElements >= 2)
      {
        v32 = 0;
        v30 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v33 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v34 = 0;
          }

          else
          {
            v34 = v32;
          }

          if (v18)
          {
            v35 = 0;
          }

          else
          {
            v35 = v32 + 1;
          }

          v36 = *&RawData[2 * v35];
          *(v33 - 1) = *&RawData[2 * v34];
          *v33 = v36;
          v33 += 2;
          v32 += 2;
        }

        while (v32 != v30);
        goto LABEL_231;
      }

      v30 = 0;
      do
      {
        if (v18)
        {
          v150 = 0;
        }

        else
        {
          v150 = v30;
        }

        a3->i64[v30++] = *&RawData[2 * v150];
LABEL_231:
        ;
      }

      while (NumElements != v30);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_58:
      if (NumElements >= 2)
      {
        v38 = 0;
        v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v39 = &a3->i64[1];
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

          if (v18)
          {
            v41 = 0;
          }

          else
          {
            v41 = v38 + 1;
          }

          v42 = *&RawData[2 * v41];
          *(v39 - 1) = *&RawData[2 * v40];
          *v39 = v42;
          v39 += 2;
          v38 += 2;
        }

        while (v38 != v31);
        goto LABEL_237;
      }

      v31 = 0;
      do
      {
        if (v18)
        {
          v151 = 0;
        }

        else
        {
          v151 = v31;
        }

        a3->i64[v31++] = *&RawData[2 * v151];
LABEL_237:
        ;
      }

      while (NumElements != v31);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_73:
      if (NumElements >= 2)
      {
        v44 = 0;
        v37 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v45 = &a3->i64[1];
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

          if (v18)
          {
            v47 = 0;
          }

          else
          {
            v47 = v44 + 1;
          }

          v48 = *&RawData[4 * v47];
          *(v45 - 1) = *&RawData[4 * v46];
          *v45 = v48;
          v45 += 2;
          v44 += 2;
        }

        while (v44 != v37);
        goto LABEL_243;
      }

      v37 = 0;
      do
      {
        if (v18)
        {
          v152 = 0;
        }

        else
        {
          v152 = v37;
        }

        a3->i64[v37++] = *&RawData[4 * v152];
LABEL_243:
        ;
      }

      while (NumElements != v37);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_88:
      if (NumElements >= 2)
      {
        v59 = 0;
        v43 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v60 = &a3->i64[1];
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

          if (v18)
          {
            v62 = 0;
          }

          else
          {
            v62 = v59 + 1;
          }

          v63 = *&RawData[4 * v62];
          *(v60 - 1) = *&RawData[4 * v61];
          *v60 = v63;
          v60 += 2;
          v59 += 2;
        }

        while (v59 != v43);
        goto LABEL_249;
      }

      v43 = 0;
      do
      {
        if (v18)
        {
          v153 = 0;
        }

        else
        {
          v153 = v43;
        }

        a3->i64[v43++] = *&RawData[4 * v153];
LABEL_249:
        ;
      }

      while (NumElements != v43);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isInteger(&isSplat, 64))
    {
      a3->i64[0] = *RawData;
      return *v22.i32;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_135:
      if (NumElements >= 2)
      {
        v76 = 0;
        v74 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v77 = &a3->i64[1];
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

          if (v18)
          {
            v79 = 0;
          }

          else
          {
            v79 = v76 + 1;
          }

          v22.i16[0] = *&RawData[2 * v78];
          v80 = *&RawData[2 * v79];
          *(v77 - 1) = *v22.i16;
          *v77 = v80;
          v77 += 2;
          v76 += 2;
        }

        while (v76 != v74);
        goto LABEL_255;
      }

      v74 = 0;
      do
      {
        if (v18)
        {
          v154 = 0;
        }

        else
        {
          v154 = v74;
        }

        v22.i16[0] = *&RawData[2 * v154];
        a3->i64[v74++] = *v22.i16;
LABEL_255:
        ;
      }

      while (NumElements != v74);
      return *v22.i32;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_141:
      if (NumElements >= 2)
      {
        v82 = 0;
        v75 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v83 = &a3->i64[1];
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

          if (v18)
          {
            v85 = 0;
          }

          else
          {
            v85 = v82 + 1;
          }

          v22.i32[0] = *&RawData[4 * v84];
          v86 = *&RawData[4 * v85];
          *(v83 - 1) = *v22.i32;
          *v83 = v86;
          v83 += 2;
          v82 += 2;
        }

        while (v82 != v75);
        goto LABEL_261;
      }

      v75 = 0;
      do
      {
        if (v18)
        {
          v155 = 0;
        }

        else
        {
          v155 = v75;
        }

        v22.i32[0] = *&RawData[4 * v155];
        a3->i64[v75++] = *v22.i32;
LABEL_261:
        ;
      }

      while (NumElements != v75);
      return *v22.i32;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      v22.i64[0] = *RawData;
      a3->i64[0] = *RawData;
      return *v22.i32;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  RawData = mlir::DenseElementsAttr::getRawStringData(v162);
  v4 = v21;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_27:
  NumElements = mlir::ElementsAttr::getNumElements(v160, v161);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_29;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_39;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_52;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_58;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_73;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_88;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    if (NumElements >= 1)
    {
      v49 = 0;
      if (NumElements < 4)
      {
        goto LABEL_109;
      }

      if ((a3 - RawData) <= 0x1F)
      {
        goto LABEL_109;
      }

      v49 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v50 = (RawData + 16);
      v51 = a3 + 1;
      v52 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = v50[-1];
        v53 = *v50;
        v51[-1] = v22;
        *v51 = v53;
        v50 += 2;
        v51 += 2;
        v52 -= 4;
      }

      while (v52);
      if (NumElements != v49)
      {
LABEL_109:
        v54 = v49;
        v55 = &RawData[8 * v49];
        v56 = NumElements - v49;
        v57 = &a3->i64[v54];
        do
        {
          v58 = *v55;
          v55 += 8;
          *v57++ = v58;
          --v56;
        }

        while (v56);
      }
    }

    return *v22.i32;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    if (NumElements >= 1)
    {
      v64 = 0;
      if (NumElements < 4)
      {
        goto LABEL_128;
      }

      if ((a3 - RawData) <= 0x1F)
      {
        goto LABEL_128;
      }

      v64 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v65 = (RawData + 16);
      v66 = a3 + 1;
      v67 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = v65[-1];
        v68 = *v65;
        v66[-1] = v22;
        *v66 = v68;
        v65 += 2;
        v66 += 2;
        v67 -= 4;
      }

      while (v67);
      if (NumElements != v64)
      {
LABEL_128:
        v69 = v64;
        v70 = &RawData[8 * v64];
        v71 = NumElements - v64;
        v72 = &a3->i64[v69];
        do
        {
          v73 = *v70;
          v70 += 8;
          *v72++ = v73;
          --v71;
        }

        while (v71);
      }
    }

    return *v22.i32;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_135;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_141;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 3)
    {
      v81 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v98 = (RawData + 16);
      v99 = &a3[1];
      v100 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = vcvtq_s64_f64(v98[-1]);
        v101 = vcvtq_s64_f64(*v98);
        v99[-1] = v22;
        *v99 = v101;
        v98 += 2;
        v99 += 2;
        v100 -= 4;
      }

      while (v100);
      if (NumElements == v81)
      {
        return *v22.i32;
      }
    }

    else
    {
      v81 = 0;
    }

    v102 = v81;
    v103 = &RawData[8 * v81];
    v104 = NumElements - v81;
    v105 = &a3->i64[v102];
    do
    {
      v106 = *v103++;
      v22.i32[0] = LODWORD(v106);
      *v105++ = v106;
      --v104;
    }

    while (v104);
    return *v22.i32;
  }

  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_173:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned long long>(RawData, v4, a3, NumElements, IntOrFloatBitWidth);
      return *v22.i32;
    }

    llvm::SmallVector<char,40u>::SmallVector(v162, NumElements);
    mlir::detail::unpackBooleanData(RawData, v4, v162[0], v162[1]);
    v88 = v162[0];
    if (NumElements < 1)
    {
      goto LABEL_205;
    }

    if (v18)
    {
      if (NumElements < 4 || v162[0] + 1 > a3 && v162[0] < a3 + 8 * NumElements)
      {
        v89 = 0;
        goto LABEL_180;
      }

      if (NumElements >= 0x10)
      {
        v89 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v112 = vld1_dup_s8(v162[0]);
        v113 = vmovl_s8(v112);
        v114 = vmovl_high_s16(v113);
        v115.i64[0] = v114.i32[2];
        v115.i64[1] = v114.i32[3];
        v22 = v115;
        v115.i64[0] = v114.i32[0];
        v115.i64[1] = v114.i32[1];
        v116 = v115;
        v117 = vmovl_s16(*v113.i8);
        v115.i64[0] = v117.i32[2];
        v115.i64[1] = v117.i32[3];
        v118 = v115;
        v115.i64[0] = v117.i32[0];
        v115.i64[1] = v117.i32[1];
        v119 = v115;
        v120 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v121 = a3;
        do
        {
          *v121 = v119;
          v121[1] = v118;
          v121[2] = v116;
          v121[3] = v22;
          v121[4] = v119;
          v121[5] = v118;
          v121[6] = v116;
          v121[7] = v22;
          v121 += 8;
          v120 -= 16;
        }

        while (v120);
        if (NumElements == v89)
        {
          goto LABEL_205;
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_180:
          v90 = NumElements - v89;
          v91 = &a3->i64[v89];
          do
          {
            *v91++ = *v88;
            --v90;
          }

          while (v90);
          goto LABEL_205;
        }
      }

      else
      {
        v89 = 0;
      }

      v122 = v89;
      v123 = vdup_n_s32(*v88);
      v89 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v124.i64[0] = v123.u32[0];
      v124.i64[1] = v123.u32[1];
      v22 = vshrq_n_s64(vshlq_n_s64(v124, 0x38uLL), 0x38uLL);
      v125 = (a3 + 8 * v122);
      v126 = v122 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v125 = v22;
        v125[1] = v22;
        v125 += 2;
        v126 += 4;
      }

      while (v126);
      if (NumElements != v89)
      {
        goto LABEL_180;
      }

LABEL_205:
      if (v88 != v163)
      {
        free(v88);
      }

      return *v22.i32;
    }

    if (NumElements < 4 || v162[0] + NumElements > a3 && v162[0] < a3 + 8 * NumElements)
    {
      v107 = 0;
      goto LABEL_203;
    }

    if (NumElements >= 0x10)
    {
      v107 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v127 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v128 = a3;
      v129 = v162[0];
      do
      {
        v130 = *v129++;
        v131 = vmovl_s8(*v130.i8);
        v132 = vmovl_s16(*v131.i8);
        v133.i64[0] = v132.i32[0];
        v133.i64[1] = v132.i32[1];
        v134 = v133;
        v135 = vmovl_high_s16(v131);
        v133.i64[0] = v135.i32[0];
        v133.i64[1] = v135.i32[1];
        v136 = v133;
        v137 = vmovl_high_s8(v130);
        v138 = vmovl_high_s16(v137);
        v133.i64[0] = v138.i32[0];
        v133.i64[1] = v138.i32[1];
        v139 = v133;
        v133.i64[0] = v138.i32[2];
        v133.i64[1] = v138.i32[3];
        v128[6] = v139;
        v128[7] = v133;
        v22 = vmovl_s16(*v137.i8);
        v133.i64[0] = v22.i32[0];
        v133.i64[1] = v22.i32[1];
        v140 = v133;
        v133.i64[0] = v135.i32[2];
        v133.i64[1] = v135.i32[3];
        v141 = v133;
        v133.i64[0] = v22.i32[2];
        v133.i64[1] = v22.i32[3];
        v128[4] = v140;
        v128[5] = v133;
        v128[2] = v136;
        v128[3] = v141;
        v133.i64[0] = v132.i32[2];
        v133.i64[1] = v132.i32[3];
        v22.i64[0] = v132.i32[2];
        *v128 = v134;
        v128[1] = v133;
        v128 += 8;
        v127 -= 16;
      }

      while (v127);
      if (NumElements == v107)
      {
        goto LABEL_205;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_203:
        v108 = &v88[v107];
        v109 = NumElements - v107;
        v110 = &a3->i64[v107];
        do
        {
          v111 = *v108++;
          *v110++ = v111;
          --v109;
        }

        while (v109);
        goto LABEL_205;
      }
    }

    else
    {
      v107 = 0;
    }

    v142 = v107;
    v107 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v143 = &v88[v142];
    v144 = (a3 + 8 * v142);
    v145 = v142 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v146 = *v143;
      v143 += 4;
      v22.i32[0] = v146;
      v147 = vmovl_u16(*&vmovl_u8(*v22.i8));
      v148.i64[0] = v147.u32[0];
      v148.i64[1] = v147.u32[1];
      v149 = vshrq_n_s64(vshlq_n_s64(v148, 0x38uLL), 0x38uLL);
      v148.i64[0] = v147.u32[2];
      v148.i64[1] = v147.u32[3];
      v22 = vshrq_n_s64(vshlq_n_s64(v148, 0x38uLL), 0x38uLL);
      *v144 = v149;
      v144[1] = v22;
      v144 += 2;
      v145 += 4;
    }

    while (v145);
    if (NumElements == v107)
    {
      goto LABEL_205;
    }

    goto LABEL_203;
  }

  if (NumElements < 1)
  {
    return *v22.i32;
  }

LABEL_171:
  if (NumElements >= 2)
  {
    v93 = 0;
    v87 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v94 = &a3->i64[1];
    do
    {
      if (v18)
      {
        v95 = 0;
      }

      else
      {
        v95 = v93;
      }

      if (v18)
      {
        v96 = 0;
      }

      else
      {
        v96 = v93 + 1;
      }

      v22.i32[0] = *&RawData[2 * v95] << 16;
      v97 = COERCE_FLOAT(*&RawData[2 * v96] << 16);
      *(v94 - 1) = *v22.i32;
      *v94 = v97;
      v94 += 2;
      v93 += 2;
    }

    while (v93 != v87);
    goto LABEL_267;
  }

  v87 = 0;
  do
  {
    if (v18)
    {
      v156 = 0;
    }

    else
    {
      v156 = v87;
    }

    v22.i32[0] = *&RawData[2 * v156] << 16;
    a3->i64[v87++] = *v22.i32;
LABEL_267:
    ;
  }

  while (NumElements != v87);
  return *v22.i32;
}

__int16 mlir::copyElementsAttrData<half>@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, short float *a3@<X2>)
{
  v154[5] = *MEMORY[0x1E69E9840];
  v151 = a1;
  v152 = a2;
  Type = mlir::ElementsAttr::getType(&v151);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawStringData = Type;
    mlir::arith::ExtUIOp::fold();
    Type = RawStringData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v150[0] = Type;
  v150[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v150);
  v18 = mlir::ElementsAttr::isSplat(&v151);
  v19 = v151;
  if (mlir::DenseElementsAttr::classof(v151))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v153[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v153);
    v4 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v151, v152);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_39;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_52;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_58;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_73;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_88;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_103;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_118;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      v67 = 0;
      if (NumElements < 4 || (a3 - RawStringData) < 0x20)
      {
        goto LABEL_190;
      }

      if (NumElements >= 0x10)
      {
        v67 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v85 = (RawStringData + 16);
        v86 = (a3 + 8);
        v87 = NumElements & 0x7FFFFFFFFFFFFFF0;
        do
        {
          _Q0 = v85[-1];
          v88 = *v85;
          v86[-1] = _Q0;
          *v86 = v88;
          v85 += 2;
          v86 += 2;
          v87 -= 16;
        }

        while (v87);
        if (NumElements == v67)
        {
          return _Q0.i16[0];
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_190:
          v94 = v67;
          v95 = &RawStringData[2 * v67];
          v96 = NumElements - v67;
          v97 = &a3[v94];
          do
          {
            v98 = *v95;
            v95 += 2;
            _Q0.i16[0] = v98;
            *v97++ = v98;
            --v96;
          }

          while (v96);
          return _Q0.i16[0];
        }
      }

      else
      {
        v67 = 0;
      }

      v89 = v67;
      v67 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v90 = &RawStringData[2 * v89];
      v91 = &a3[v89];
      v92 = v89 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        v93 = *v90;
        v90 += 8;
        _Q0.i16[0] = v93;
        *v91 = v93;
        v91 += 4;
        v92 += 4;
      }

      while (v92);
      if (NumElements == v67)
      {
        return _Q0.i16[0];
      }

      goto LABEL_190;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_150;
    }

    if (!mlir::Type::isF64(&isSplat))
    {
      if (!mlir::Type::isBF16(&isSplat))
      {
        goto LABEL_173;
      }

      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_171;
    }

    if (NumElements < 1)
    {
      return _Q0.i16[0];
    }

    if (NumElements == 1)
    {
      v74 = 0;
      goto LABEL_220;
    }

    if (NumElements >= 0x10)
    {
      v74 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v110 = (RawStringData + 64);
      v111 = (a3 + 8);
      v112 = NumElements & 0x7FFFFFFFFFFFFFF0;
      do
      {
        _Q0 = vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(v110[-4]), v110[-3])), vcvtx_hight_f32_f64(vcvtx_f32_f64(v110[-2]), v110[-1]));
        v113 = vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(*v110), v110[1])), vcvtx_hight_f32_f64(vcvtx_f32_f64(v110[2]), v110[3]));
        v111[-1] = _Q0;
        *v111 = v113;
        v110 += 8;
        v111 += 2;
        v112 -= 16;
      }

      while (v112);
      if (NumElements == v74)
      {
        return _Q0.i16[0];
      }

      if ((NumElements & 0xE) == 0)
      {
LABEL_220:
        v119 = &RawStringData[8 * v74];
        v120 = NumElements - v74;
        v121 = &a3[v74];
        do
        {
          v122 = *v119;
          v119 += 8;
          _Q0.i64[0] = v122;
          __asm { FCVT            H0, D0 }

          *v121++ = *_Q0.i16;
          --v120;
        }

        while (v120);
        return _Q0.i16[0];
      }
    }

    else
    {
      v74 = 0;
    }

    v114 = v74;
    v74 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v115 = &RawStringData[8 * v114];
    v116 = &a3[v114];
    v117 = v114 - (NumElements & 0x7FFFFFFFFFFFFFFELL);
    do
    {
      v118 = *v115++;
      _Q0.i64[1] = *&v118.f64[1];
      *_Q0.f32 = vcvtx_f32_f64(v118);
      _Q0.i32[0] = vcvt_f16_f32(_Q0).u32[0];
      *v116 = _Q0.i32[0];
      v116 += 2;
      v117 += 2;
    }

    while (v117);
    if (NumElements == v74)
    {
      return _Q0.i16[0];
    }

    goto LABEL_220;
  }

  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  v153[0] = v24;
  if (v24)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v153);
    v4 = v25;
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
    for (i = 0; i != NumElements; ++i)
    {
      if (v18)
      {
        v27 = 0;
      }

      else
      {
        v27 = i;
      }

      _Q0.i8[0] = RawStringData[v27];
      *_Q0.i16 = _Q0.u16[0];
      a3[i] = *_Q0.i16;
    }

    return _Q0.i16[0];
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    for (j = 0; j != NumElements; ++j)
    {
      if (v18)
      {
        v29 = 0;
      }

      else
      {
        v29 = j;
      }

      _Q0.i8[0] = RawStringData[v29];
      _Q0.i64[0] = vmovl_s8(*_Q0.f32).u64[0];
      *_Q0.i16 = _Q0.i16[0];
      a3[j] = *_Q0.i16;
    }

    return _Q0.i16[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    if (NumElements >= 2)
    {
      v32 = 0;
      v30 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v33 = a3 + 1;
      do
      {
        if (v18)
        {
          v34 = 0;
        }

        else
        {
          v34 = v32;
        }

        if (v18)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32 + 1;
        }

        *_Q0.i16 = *&RawStringData[2 * v34];
        v36 = *&RawStringData[2 * v35];
        *(v33 - 1) = *_Q0.i16;
        *v33 = v36;
        v33 += 2;
        v32 += 2;
      }

      while (v32 != v30);
      goto LABEL_247;
    }

    v30 = 0;
    do
    {
      if (v18)
      {
        v140 = 0;
      }

      else
      {
        v140 = v30;
      }

      *_Q0.i16 = *&RawStringData[2 * v140];
      a3[v30++] = *_Q0.i16;
LABEL_247:
      ;
    }

    while (NumElements != v30);
    return _Q0.i16[0];
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_58:
    if (NumElements >= 2)
    {
      v38 = 0;
      v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v39 = a3 + 1;
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

        if (v18)
        {
          v41 = 0;
        }

        else
        {
          v41 = v38 + 1;
        }

        *_Q0.i16 = *&RawStringData[2 * v40];
        v42 = *&RawStringData[2 * v41];
        *(v39 - 1) = *_Q0.i16;
        *v39 = v42;
        v39 += 2;
        v38 += 2;
      }

      while (v38 != v31);
      goto LABEL_253;
    }

    v31 = 0;
    do
    {
      if (v18)
      {
        v141 = 0;
      }

      else
      {
        v141 = v31;
      }

      *_Q0.i16 = *&RawStringData[2 * v141];
      a3[v31++] = *_Q0.i16;
LABEL_253:
      ;
    }

    while (NumElements != v31);
    return _Q0.i16[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_73:
    if (NumElements >= 2)
    {
      v44 = 0;
      v37 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v45 = a3 + 1;
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

        v47 = *&RawStringData[4 * v46];
        if (v18)
        {
          v48 = 0;
        }

        else
        {
          v48 = v44 + 1;
        }

        _Q0.f32[0] = v47;
        _S1 = *&RawStringData[4 * v48];
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
        }

        *(v45 - 1) = _Q0.i16[0];
        *v45 = LOWORD(_S1);
        v45 += 2;
        v44 += 2;
      }

      while (v44 != v37);
      goto LABEL_259;
    }

    v37 = 0;
    do
    {
      if (v18)
      {
        v142 = 0;
      }

      else
      {
        v142 = v37;
      }

      _Q0.f32[0] = *&RawStringData[4 * v142];
      __asm { FCVT            H0, S0 }

      a3[v37++] = *_Q0.i16;
LABEL_259:
      ;
    }

    while (NumElements != v37);
    return _Q0.i16[0];
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_88:
    if (NumElements >= 2)
    {
      v55 = 0;
      v43 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v56 = a3 + 1;
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

        v58 = *&RawStringData[4 * v57];
        if (v18)
        {
          v59 = 0;
        }

        else
        {
          v59 = v55 + 1;
        }

        _Q0.f32[0] = v58;
        _S1 = *&RawStringData[4 * v59];
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
        }

        *(v56 - 1) = _Q0.i16[0];
        *v56 = LOWORD(_S1);
        v56 += 2;
        v55 += 2;
      }

      while (v55 != v43);
      goto LABEL_265;
    }

    v43 = 0;
    do
    {
      if (v18)
      {
        v143 = 0;
      }

      else
      {
        v143 = v43;
      }

      _Q0.f32[0] = *&RawStringData[4 * v143];
      __asm { FCVT            H0, S0 }

      a3[v43++] = *_Q0.i16;
LABEL_265:
      ;
    }

    while (NumElements != v43);
    return _Q0.i16[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_103:
    if (NumElements >= 2)
    {
      v62 = 0;
      v54 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v63 = a3 + 1;
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

        if (v18)
        {
          v65 = 0;
        }

        else
        {
          v65 = v62 + 1;
        }

        _Q0.f32[0] = *&RawStringData[8 * v64];
        _S1 = *&RawStringData[8 * v65];
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
        }

        *(v63 - 1) = _Q0.i16[0];
        *v63 = LOWORD(_S1);
        v63 += 2;
        v62 += 2;
      }

      while (v62 != v54);
      goto LABEL_271;
    }

    v54 = 0;
    do
    {
      if (v18)
      {
        v144 = 0;
      }

      else
      {
        v144 = v54;
      }

      _Q0.f32[0] = *&RawStringData[8 * v144];
      __asm { FCVT            H0, S0 }

      a3[v54++] = *_Q0.i16;
LABEL_271:
      ;
    }

    while (NumElements != v54);
    return _Q0.i16[0];
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_118:
    if (NumElements >= 2)
    {
      v68 = 0;
      v61 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v69 = a3 + 1;
      do
      {
        if (v18)
        {
          v70 = 0;
        }

        else
        {
          v70 = v68;
        }

        if (v18)
        {
          v71 = 0;
        }

        else
        {
          v71 = v68 + 1;
        }

        _Q0.f32[0] = *&RawStringData[8 * v70];
        _S1 = *&RawStringData[8 * v71];
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
        }

        *(v69 - 1) = _Q0.i16[0];
        *v69 = LOWORD(_S1);
        v69 += 2;
        v68 += 2;
      }

      while (v68 != v61);
      goto LABEL_277;
    }

    v61 = 0;
    do
    {
      if (v18)
      {
        v145 = 0;
      }

      else
      {
        v145 = v61;
      }

      _Q0.f32[0] = *&RawStringData[8 * v145];
      __asm { FCVT            H0, S0 }

      a3[v61++] = *_Q0.i16;
LABEL_277:
      ;
    }

    while (NumElements != v61);
    return _Q0.i16[0];
  }

  if (mlir::Type::isF16(&isSplat))
  {
    _Q0.i16[0] = *RawStringData;
    *a3 = *RawStringData;
    return _Q0.i16[0];
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_150:
    if (NumElements >= 2)
    {
      v75 = 0;
      v73 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v76 = a3 + 1;
      do
      {
        if (v18)
        {
          v77 = 0;
        }

        else
        {
          v77 = v75;
        }

        if (v18)
        {
          v78 = 0;
        }

        else
        {
          v78 = v75 + 1;
        }

        _Q0.i32[0] = *&RawStringData[4 * v77];
        _S1 = *&RawStringData[4 * v78];
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
        }

        *(v76 - 1) = _Q0.i16[0];
        *v76 = _S1;
        v76 += 2;
        v75 += 2;
      }

      while (v75 != v73);
      goto LABEL_283;
    }

    v73 = 0;
    do
    {
      if (v18)
      {
        v146 = 0;
      }

      else
      {
        v146 = v73;
      }

      _Q0.i32[0] = *&RawStringData[4 * v146];
      __asm { FCVT            H0, S0 }

      a3[v73++] = *_Q0.i16;
LABEL_283:
      ;
    }

    while (NumElements != v73);
    return _Q0.i16[0];
  }

  if (mlir::Type::isF64(&isSplat))
  {
    _Q0.i64[0] = *RawStringData;
    __asm { FCVT            H0, D0 }

    *a3 = *_Q0.i16;
    return _Q0.i16[0];
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_173:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<half>(RawStringData, v4, a3, NumElements, IntOrFloatBitWidth);
      return _Q0.i16[0];
    }

    llvm::SmallVector<char,40u>::SmallVector(v153, NumElements);
    mlir::detail::unpackBooleanData(RawStringData, v4, v153[0], v153[1]);
    v81 = v153[0];
    if (NumElements < 1)
    {
      goto LABEL_211;
    }

    if (v18)
    {
      if (NumElements < 4 || v153[0] + 1 > a3 && v153[0] < &a3[NumElements])
      {
        v82 = 0;
        goto LABEL_180;
      }

      if (NumElements >= 0x20)
      {
        v82 = NumElements & 0x7FFFFFFFFFFFFFE0;
        v123 = vld1_dup_s8(v153[0]);
        _Q0 = vcvtq_f16_s16(vmovl_s8(v123));
        v124 = (a3 + 16);
        v125 = NumElements & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v124[-2] = _Q0;
          v124[-1] = _Q0;
          *v124 = _Q0;
          v124[1] = _Q0;
          v124 += 4;
          v125 -= 32;
        }

        while (v125);
        if (NumElements == v82)
        {
          goto LABEL_211;
        }

        if ((NumElements & 0x1C) == 0)
        {
LABEL_180:
          v83 = NumElements - v82;
          v84 = &a3[v82];
          do
          {
            _Q0.i8[0] = *v81;
            _Q0.i64[0] = vmovl_s8(*_Q0.f32).u64[0];
            *_Q0.i16 = _Q0.i16[0];
            *v84++ = *_Q0.i16;
            --v83;
          }

          while (v83);
          goto LABEL_211;
        }
      }

      else
      {
        v82 = 0;
      }

      v126 = v82;
      v82 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      *_Q0.f32 = vcvt_f16_s16(vshr_n_s16(vshl_n_s16(vdup_n_s16(*v81), 8uLL), 8uLL));
      v127 = &a3[v126];
      v128 = v126 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v127 = _Q0.i64[0];
        v127 += 4;
        v128 += 4;
      }

      while (v128);
      if (NumElements != v82)
      {
        goto LABEL_180;
      }

LABEL_211:
      if (v81 != v154)
      {
        free(v81);
      }

      return _Q0.i16[0];
    }

    if (NumElements < 4 || v153[0] + NumElements > a3 && v153[0] < &a3[NumElements])
    {
      v105 = 0;
      goto LABEL_209;
    }

    if (NumElements >= 0x20)
    {
      v105 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v129 = (v153[0] + 16);
      v130 = (a3 + 16);
      v131 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v132 = *v129[-2].i8;
        v133 = vcvtq_f16_s16(vmovl_s8(*v129));
        v134 = vmovl_high_s8(*v129->i8);
        v130[-2] = vcvtq_f16_s16(vmovl_s8(*v132.i8));
        v130[-1] = vcvtq_f16_s16(vmovl_high_s8(v132));
        _Q0 = vcvtq_f16_s16(v134);
        *v130 = v133;
        v130[1] = _Q0;
        v130 += 4;
        v129 += 4;
        v131 -= 32;
      }

      while (v131);
      if (NumElements == v105)
      {
        goto LABEL_211;
      }

      if ((NumElements & 0x1C) == 0)
      {
LABEL_209:
        v106 = &v81[v105];
        v107 = NumElements - v105;
        v108 = &a3[v105];
        do
        {
          v109 = *v106++;
          *_Q0.i16 = v109;
          *v108++ = v109;
          --v107;
        }

        while (v107);
        goto LABEL_211;
      }
    }

    else
    {
      v105 = 0;
    }

    v135 = v105;
    v105 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v136 = &v81[v135];
    v137 = &a3[v135];
    v138 = v135 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v139 = *v136++;
      _Q0.i32[0] = v139;
      *_Q0.f32 = vcvt_f16_s16(*&vmovl_s8(*_Q0.f32));
      *v137 = _Q0.i64[0];
      v137 += 4;
      v138 += 4;
    }

    while (v138);
    if (NumElements == v105)
    {
      goto LABEL_211;
    }

    goto LABEL_209;
  }

LABEL_171:
  if (NumElements >= 2)
  {
    v100 = 0;
    v80 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v101 = a3 + 1;
    do
    {
      if (v18)
      {
        v102 = 0;
      }

      else
      {
        v102 = v100;
      }

      if (v18)
      {
        v103 = 0;
      }

      else
      {
        v103 = v100 + 1;
      }

      _Q0.i32[0] = *&RawStringData[2 * v102] << 16;
      _S1 = *&RawStringData[2 * v103] << 16;
      __asm
      {
        FCVT            H0, S0
        FCVT            H1, S1
      }

      *(v101 - 1) = _Q0.i16[0];
      *v101 = _S1;
      v101 += 2;
      v100 += 2;
    }

    while (v100 != v80);
    goto LABEL_289;
  }

  v80 = 0;
  do
  {
    if (v18)
    {
      v147 = 0;
    }

    else
    {
      v147 = v80;
    }

    _Q0.i32[0] = *&RawStringData[2 * v147] << 16;
    __asm { FCVT            H0, S0 }

    a3[v80++] = *_Q0.i16;
LABEL_289:
    ;
  }

  while (NumElements != v80);
  return _Q0.i16[0];
}

void mlir::copyElementsAttrData<__emulated_bf16>(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v95[5] = *MEMORY[0x1E69E9840];
  v92 = a1;
  v93 = a2;
  Type = mlir::ElementsAttr::getType(&v92);
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
  v91[0] = Type;
  v91[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v91);
  v18 = mlir::ElementsAttr::isSplat(&v92);
  RawStringData = v92;
  if (mlir::DenseElementsAttr::classof(v92))
  {
    v20 = RawStringData;
  }

  else
  {
    v20 = 0;
  }

  v94[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v94);
    v3 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v92, v93);
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

LABEL_78:
      if (NumElements >= 2)
      {
        v46 = 0;
        v38 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v47 = a3 + 1;
        do
        {
          if (v18)
          {
            v48 = 0;
          }

          else
          {
            v48 = v46;
          }

          if (v18)
          {
            v49 = 0;
          }

          else
          {
            v49 = v46 + 1;
          }

          v50 = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v49] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v49]) & 0xFF800000) * 0.0039062)));
          *(v47 - 1) = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v48] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v48]) & 0xFF800000) * 0.0039062)));
          *v47 = v50;
          v47 += 2;
          v46 += 2;
        }

        while (v46 != v38);
        if (NumElements == v38)
        {
          return;
        }
      }

      else
      {
        v38 = 0;
      }

      do
      {
        if (v18)
        {
          v51 = 0;
        }

        else
        {
          v51 = v38;
        }

        a3[v38++] = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v51] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v51]) & 0xFF800000) * 0.0039062)));
      }

      while (NumElements != v38);
      return;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

LABEL_98:
      if (NumElements >= 2)
      {
        v53 = 0;
        v45 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v54 = a3 + 1;
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

          if (v18)
          {
            v56 = 0;
          }

          else
          {
            v56 = v53 + 1;
          }

          v57 = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v56] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v56]) & 0x7F800000) * 0.0039062)));
          *(v54 - 1) = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v55] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v55]) & 0x7F800000) * 0.0039062)));
          *v54 = v57;
          v54 += 2;
          v53 += 2;
        }

        while (v53 != v45);
        if (NumElements == v45)
        {
          return;
        }
      }

      else
      {
        v45 = 0;
      }

      do
      {
        if (v18)
        {
          v58 = 0;
        }

        else
        {
          v58 = v45;
        }

        a3[v45++] = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v58] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v58]) & 0x7F800000) * 0.0039062)));
      }

      while (NumElements != v45);
      return;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

LABEL_118:
      if (NumElements >= 2)
      {
        v68 = 0;
        v52 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v69 = a3 + 1;
        do
        {
          if (v18)
          {
            v70 = 0;
          }

          else
          {
            v70 = v68;
          }

          if (v18)
          {
            v71 = 0;
          }

          else
          {
            v71 = v68 + 1;
          }

          v72 = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v71] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v71]) & 0xFF800000) * 0.0039062)));
          *(v69 - 1) = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v70] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v70]) & 0xFF800000) * 0.0039062)));
          *v69 = v72;
          v69 += 2;
          v68 += 2;
        }

        while (v68 != v52);
        if (NumElements == v52)
        {
          return;
        }
      }

      else
      {
        v52 = 0;
      }

      do
      {
        if (v18)
        {
          v73 = 0;
        }

        else
        {
          v73 = v52;
        }

        a3[v52++] = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v73] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v73]) & 0xFF800000) * 0.0039062)));
      }

      while (NumElements != v52);
      return;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_138;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_162;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_172;
    }

    if (!mlir::Type::isBF16(&isSplat))
    {
LABEL_188:
      if (mlir::Type::isInteger(&isSplat, 1))
      {
        llvm::SmallVector<char,40u>::SmallVector(v94, NumElements);
        mlir::detail::unpackBooleanData(RawStringData, v3, v94[0], v94[1]);
        v86 = v94[0];
        if (NumElements >= 1)
        {
          for (i = 0; i != NumElements; ++i)
          {
            if (v18)
            {
              v88 = 0;
            }

            else
            {
              v88 = i;
            }

            v85.i8[0] = v86[v88];
            v85 = vmovl_s16(*&vmovl_s8(v85)).u64[0];
            *v85.i32 = v85.i32[0] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(v85.i32[0]) & 0xFF800000) * 0.0039062);
            a3[i] = v85.i16[1];
          }
        }

        if (v86 != v95)
        {
          free(v86);
        }
      }

      else
      {
        mlir::Type::getIntOrFloatBitWidth(&isSplat);
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
        mlir::detail::unpackQuantizedData<__emulated_bf16>(RawStringData, v3, a3, NumElements, IntOrFloatBitWidth);
      }

      return;
    }

    if (NumElements < 1)
    {
      return;
    }

LABEL_182:
    for (j = 0; j != NumElements; ++j)
    {
      if (v18)
      {
        v82 = 0;
      }

      else
      {
        v82 = j;
      }

      LODWORD(v83) = *&RawStringData[2 * v82] << 16;
      v84 = v83 + (COERCE_FLOAT(LODWORD(v83) & 0xFF800000) * 0.0039062);
      a3[j] = HIWORD(v84);
    }

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

  v94[0] = v24;
  if (v24)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v94);
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
    for (k = 0; k != NumElements; ++k)
    {
      if (v18)
      {
        v27 = 0;
      }

      else
      {
        v27 = k;
      }

      LOBYTE(v22) = RawStringData[v27];
      v22 = LODWORD(v22) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(LODWORD(v22)) & 0x7F800000) * 0.0039062);
      a3[k] = HIWORD(v22);
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    for (m = 0; m != NumElements; ++m)
    {
      if (v18)
      {
        v30 = 0;
      }

      else
      {
        v30 = m;
      }

      v28.i8[0] = RawStringData[v30];
      v28 = vmovl_s16(*&vmovl_s8(v28)).u64[0];
      *v28.i32 = v28.i32[0] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(v28.i32[0]) & 0xFF800000) * 0.0039062);
      a3[m] = v28.i16[1];
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    for (n = 0; n != NumElements; ++n)
    {
      if (v18)
      {
        v33 = 0;
      }

      else
      {
        v33 = n;
      }

      LOWORD(v31) = *&RawStringData[2 * v33];
      v31 = LODWORD(v31) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(LODWORD(v31)) & 0x7F800000) * 0.0039062);
      a3[n] = HIWORD(v31);
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_62:
    for (ii = 0; ii != NumElements; ++ii)
    {
      if (v18)
      {
        v36 = 0;
      }

      else
      {
        v36 = ii;
      }

      v34.i16[0] = *&RawStringData[2 * v36];
      v34 = vmovl_s16(v34).u64[0];
      *v34.i32 = v34.i32[0] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(v34.i32[0]) & 0xFF800000) * 0.0039062);
      a3[ii] = v34.i16[1];
    }

    return;
  }

  if (!mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
      goto LABEL_78;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      NumElements = 1;
      goto LABEL_98;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      NumElements = 1;
      goto LABEL_118;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_138:
      for (jj = 0; jj != NumElements; ++jj)
      {
        if (v18)
        {
          v60 = 0;
        }

        else
        {
          v60 = jj;
        }

        _H0 = *&RawStringData[2 * v60];
        __asm { FCVT            S0, H0 }

        v67 = _S0 + (COERCE_FLOAT(LODWORD(_S0) & 0xFF800000) * 0.0039062);
        a3[jj] = HIWORD(v67);
      }

      return;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_162:
      for (kk = 0; kk != NumElements; ++kk)
      {
        if (v18)
        {
          v75 = 0;
        }

        else
        {
          v75 = kk;
        }

        v76 = *&RawStringData[4 * v75] + (COERCE_FLOAT(*&RawStringData[4 * v75] & 0xFF800000) * 0.0039062);
        a3[kk] = HIWORD(v76);
      }

      return;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      NumElements = 1;
LABEL_172:
      for (mm = 0; mm != NumElements; ++mm)
      {
        if (v18)
        {
          v78 = 0;
        }

        else
        {
          v78 = mm;
        }

        v79 = *&RawStringData[8 * v78];
        v80 = v79 + (COERCE_FLOAT(LODWORD(v79) & 0xFF800000) * 0.0039062);
        a3[mm] = HIWORD(v80);
      }

      return;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_188;
    }

    goto LABEL_182;
  }

  NumElements = 1;
LABEL_72:
  if (NumElements < 2)
  {
    for (nn = 0; nn != NumElements; ++nn)
    {
LABEL_89:
      if (v18)
      {
        v44 = 0;
      }

      else
      {
        v44 = nn;
      }

      a3[nn] = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v44] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v44]) & 0x7F800000) * 0.0039062)));
    }

    return;
  }

  v39 = 0;
  nn = NumElements & 0x7FFFFFFFFFFFFFFELL;
  v40 = a3 + 1;
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

    if (v18)
    {
      v42 = 0;
    }

    else
    {
      v42 = v39 + 1;
    }

    v43 = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v42] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v42]) & 0x7F800000) * 0.0039062)));
    *(v40 - 1) = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v41] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v41]) & 0x7F800000) * 0.0039062)));
    *v40 = v43;
    v40 += 2;
    v39 += 2;
  }

  while (v39 != nn);
  if (NumElements != nn)
  {
    goto LABEL_89;
  }
}

float32_t mlir::copyElementsAttrData<float>(uint64_t a1, uint64_t a2, float *a3)
{
  v152[5] = *MEMORY[0x1E69E9840];
  v149 = a1;
  v150 = a2;
  Type = mlir::ElementsAttr::getType(&v149);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawStringData = Type;
    mlir::arith::ExtUIOp::fold();
    Type = RawStringData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v148[0] = Type;
  v148[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v148);
  v18 = mlir::ElementsAttr::isSplat(&v149);
  v19 = v149;
  if (mlir::DenseElementsAttr::classof(v149))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v151[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v151);
    v4 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v149, v150);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_39;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_52;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_58;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_73;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_88;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_103;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_118;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_133;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements >= 1)
      {
        v67 = 0;
        if (NumElements < 8)
        {
          goto LABEL_153;
        }

        if ((a3 - RawStringData) <= 0x1F)
        {
          goto LABEL_153;
        }

        v67 = NumElements & 0x7FFFFFFFFFFFFFF8;
        v68 = (RawStringData + 16);
        v69 = (a3 + 4);
        v70 = NumElements & 0x7FFFFFFFFFFFFFF8;
        do
        {
          _Q0 = v68[-1];
          v71 = *v68;
          v69[-1] = _Q0;
          *v69 = v71;
          v68 += 2;
          v69 += 2;
          v70 -= 8;
        }

        while (v70);
        if (NumElements != v67)
        {
LABEL_153:
          v72 = v67;
          v73 = &RawStringData[4 * v67];
          v74 = NumElements - v67;
          v75 = &a3[v72];
          do
          {
            v76 = *v73;
            v73 += 4;
            _Q0.i32[0] = v76;
            *v75++ = v76;
            --v74;
          }

          while (v74);
        }
      }

      return _Q0.f32[0];
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_169;
    }

    if (!mlir::Type::isBF16(&isSplat))
    {
LABEL_187:
      if (!mlir::Type::isInteger(&isSplat, 1))
      {
        mlir::Type::getIntOrFloatBitWidth(&isSplat);
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
        mlir::detail::unpackQuantizedData<float>(RawStringData, v4, a3, NumElements, IntOrFloatBitWidth);
        return _Q0.f32[0];
      }

      llvm::SmallVector<char,40u>::SmallVector(v151, NumElements);
      mlir::detail::unpackBooleanData(RawStringData, v4, v151[0], v151[1]);
      v96 = v151[0];
      if (NumElements < 1)
      {
        goto LABEL_206;
      }

      if (v18)
      {
        if (NumElements < 4 || v151[0] + 1 > a3 && v151[0] < &a3[NumElements])
        {
          v97 = 0;
          goto LABEL_194;
        }

        if (NumElements >= 0x10)
        {
          v97 = NumElements & 0x7FFFFFFFFFFFFFF0;
          v122 = vld1_dup_s8(v151[0]);
          _Q0 = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(v122, 8uLL), 8uLL)));
          v123 = NumElements & 0x7FFFFFFFFFFFFFF0;
          v124 = a3;
          do
          {
            *v124 = _Q0;
            v124[1] = _Q0;
            v124[2] = _Q0;
            v124[3] = _Q0;
            v124 += 4;
            v123 -= 16;
          }

          while (v123);
          if (NumElements == v97)
          {
            goto LABEL_206;
          }

          if ((NumElements & 0xC) == 0)
          {
LABEL_194:
            v98 = NumElements - v97;
            v99 = &a3[v97];
            do
            {
              _Q0.i8[0] = *v96;
              _Q0.i64[0] = vmovl_s16(*&vmovl_s8(*_Q0.f32)).u64[0];
              _Q0.f32[0] = _Q0.i32[0];
              *v99++ = _Q0.f32[0];
              --v98;
            }

            while (v98);
            goto LABEL_206;
          }
        }

        else
        {
          v97 = 0;
        }

        v125 = v97;
        v97 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        _Q0 = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vdup_n_s16(*v96), 8uLL), 8uLL)));
        v126 = &a3[v125];
        v127 = v125 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
        do
        {
          *v126++ = _Q0;
          v127 += 4;
        }

        while (v127);
        if (NumElements != v97)
        {
          goto LABEL_194;
        }

LABEL_206:
        if (v96 != v152)
        {
          free(v96);
        }

        return _Q0.f32[0];
      }

      if (NumElements < 4 || v151[0] + NumElements > a3 && v151[0] < &a3[NumElements])
      {
        v101 = 0;
        goto LABEL_204;
      }

      if (NumElements >= 0x10)
      {
        v101 = NumElements & 0x7FFFFFFFFFFFFFF0;
        _Q0.i32[0] = 218103807;
        v95 = xmmword_1E09845A0;
        v128 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v129 = a3;
        v130 = v151[0];
        do
        {
          v131 = *v130++;
          v129[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v131, xmmword_1E09845A0), 0x18uLL);
          v129[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v131, xmmword_1E0984590), 0x18uLL);
          *v129 = vcvtq_n_f32_s32(vqtbl1q_s8(v131, xmmword_1E09845C0), 0x18uLL);
          v129[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v131, xmmword_1E09845B0), 0x18uLL);
          v129 += 4;
          v128 -= 16;
        }

        while (v128);
        if (NumElements == v101)
        {
          goto LABEL_206;
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_204:
          v102 = &v96[v101];
          v103 = NumElements - v101;
          v104 = &a3[v101];
          do
          {
            v105 = *v102++;
            _Q0.f32[0] = v105;
            *v104++ = v105;
            --v103;
          }

          while (v103);
          goto LABEL_206;
        }
      }

      else
      {
        v101 = 0;
      }

      v132 = v101;
      v101 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v133 = &v96[v132];
      v134 = &a3[v132];
      v135 = v132 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      _Q0.i32[0] = 0xFFFFFF;
      do
      {
        v136 = *v133++;
        v95.i32[0] = v136;
        v95 = vcvtq_n_f32_s32(vqtbl1q_s8(v95, xmmword_1E09845C0), 0x18uLL);
        *v134++ = v95;
        v135 += 4;
      }

      while (v135);
      if (NumElements == v101)
      {
        goto LABEL_206;
      }

      goto LABEL_204;
    }

    if (NumElements < 1)
    {
      return _Q0.f32[0];
    }

    if (NumElements < 4)
    {
      v89 = 0;
      goto LABEL_215;
    }

    if (NumElements >= 0x10)
    {
      v89 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v106 = (RawStringData + 16);
      v107 = (a3 + 8);
      v108 = NumElements & 0x7FFFFFFFFFFFFFF0;
      do
      {
        _Q0 = *v106[-2].i8;
        _Q1 = *v106->i8;
        v111 = vshll_n_s16(*&_Q0, 0x10uLL);
        __asm { SHLL2           V0.4S, V0.8H, #0x10 }

        v112 = vshll_n_s16(*v106, 0x10uLL);
        __asm { SHLL2           V1.4S, V1.8H, #0x10 }

        v107[-2] = v111;
        v107[-1] = _Q0;
        *v107 = v112;
        v107[1] = _Q1;
        v107 += 4;
        v106 += 4;
        v108 -= 16;
      }

      while (v108);
      if (NumElements == v89)
      {
        return _Q0.f32[0];
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_215:
        v118 = &RawStringData[2 * v89];
        v119 = NumElements - v89;
        v120 = &a3[v89];
        do
        {
          v121 = *v118;
          v118 += 2;
          *v120++ = v121 << 16;
          --v119;
        }

        while (v119);
        return _Q0.f32[0];
      }
    }

    else
    {
      v89 = 0;
    }

    v113 = v89;
    v89 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v114 = &RawStringData[2 * v113];
    v115 = &a3[v113];
    v116 = v113 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v117 = *v114++;
      _Q0 = vshll_n_s16(v117, 0x10uLL);
      *v115++ = _Q0;
      v116 += 4;
    }

    while (v116);
    if (NumElements == v89)
    {
      return _Q0.f32[0];
    }

    goto LABEL_215;
  }

  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  v151[0] = v24;
  if (v24)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v151);
    v4 = v25;
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
    for (i = 0; i != NumElements; ++i)
    {
      if (v18)
      {
        v27 = 0;
      }

      else
      {
        v27 = i;
      }

      _Q0.i8[0] = RawStringData[v27];
      _Q0.f32[0] = _Q0.u32[0];
      a3[i] = _Q0.f32[0];
    }

    return _Q0.f32[0];
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    for (j = 0; j != NumElements; ++j)
    {
      if (v18)
      {
        v29 = 0;
      }

      else
      {
        v29 = j;
      }

      _Q0.i8[0] = RawStringData[v29];
      _Q0.i64[0] = vmovl_s16(*&vmovl_s8(*_Q0.f32)).u64[0];
      _Q0.f32[0] = _Q0.i32[0];
      a3[j] = _Q0.f32[0];
    }

    return _Q0.f32[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    if (NumElements >= 2)
    {
      v34 = 0;
      v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v35 = a3 + 1;
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

        if (v18)
        {
          v37 = 0;
        }

        else
        {
          v37 = v34 + 1;
        }

        _Q0.i16[0] = *&RawStringData[2 * v36];
        _Q0.f32[0] = _Q0.u32[0];
        LOWORD(v30) = *&RawStringData[2 * v37];
        v30 = LODWORD(v30);
        *(v35 - 1) = _Q0.f32[0];
        *v35 = v30;
        v35 += 2;
        v34 += 2;
      }

      while (v34 != v31);
      goto LABEL_242;
    }

    v31 = 0;
    do
    {
      if (v18)
      {
        v137 = 0;
      }

      else
      {
        v137 = v31;
      }

      _Q0.i16[0] = *&RawStringData[2 * v137];
      _Q0.f32[0] = _Q0.u32[0];
      a3[v31++] = _Q0.f32[0];
LABEL_242:
      ;
    }

    while (NumElements != v31);
    return _Q0.f32[0];
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_58:
    if (NumElements >= 2)
    {
      v39 = 0;
      v33 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v40 = a3 + 1;
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

        _Q0.i16[0] = *&RawStringData[2 * v41];
        if (v18)
        {
          v42 = 0;
        }

        else
        {
          v42 = v39 + 1;
        }

        _Q0.i64[0] = vmovl_s16(*_Q0.f32).u64[0];
        _Q0.f32[0] = _Q0.i32[0];
        v32.i16[0] = *&RawStringData[2 * v42];
        v32 = vmovl_s16(v32).u64[0];
        *v32.i32 = v32.i32[0];
        *(v40 - 1) = _Q0.i32[0];
        *v40 = v32.i32[0];
        v40 += 2;
        v39 += 2;
      }

      while (v39 != v33);
      goto LABEL_248;
    }

    v33 = 0;
    do
    {
      if (v18)
      {
        v138 = 0;
      }

      else
      {
        v138 = v33;
      }

      _Q0.i16[0] = *&RawStringData[2 * v138];
      _Q0.i64[0] = vmovl_s16(*_Q0.f32).u64[0];
      _Q0.f32[0] = _Q0.i32[0];
      a3[v33++] = _Q0.f32[0];
LABEL_248:
      ;
    }

    while (NumElements != v33);
    return _Q0.f32[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_73:
    if (NumElements >= 2)
    {
      v44 = 0;
      v38 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v45 = a3 + 1;
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

        if (v18)
        {
          v47 = 0;
        }

        else
        {
          v47 = v44 + 1;
        }

        _Q0.f32[0] = *&RawStringData[4 * v46];
        v48 = *&RawStringData[4 * v47];
        *(v45 - 1) = _Q0.f32[0];
        *v45 = v48;
        v45 += 2;
        v44 += 2;
      }

      while (v44 != v38);
      goto LABEL_254;
    }

    v38 = 0;
    do
    {
      if (v18)
      {
        v139 = 0;
      }

      else
      {
        v139 = v38;
      }

      _Q0.f32[0] = *&RawStringData[4 * v139];
      a3[v38++] = _Q0.f32[0];
LABEL_254:
      ;
    }

    while (NumElements != v38);
    return _Q0.f32[0];
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_88:
    if (NumElements >= 2)
    {
      v50 = 0;
      v43 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v51 = a3 + 1;
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

        if (v18)
        {
          v53 = 0;
        }

        else
        {
          v53 = v50 + 1;
        }

        _Q0.f32[0] = *&RawStringData[4 * v52];
        v54 = *&RawStringData[4 * v53];
        *(v51 - 1) = _Q0.f32[0];
        *v51 = v54;
        v51 += 2;
        v50 += 2;
      }

      while (v50 != v43);
      goto LABEL_260;
    }

    v43 = 0;
    do
    {
      if (v18)
      {
        v140 = 0;
      }

      else
      {
        v140 = v43;
      }

      _Q0.f32[0] = *&RawStringData[4 * v140];
      a3[v43++] = _Q0.f32[0];
LABEL_260:
      ;
    }

    while (NumElements != v43);
    return _Q0.f32[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_103:
    if (NumElements >= 2)
    {
      v56 = 0;
      v49 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v57 = a3 + 1;
      do
      {
        if (v18)
        {
          v58 = 0;
        }

        else
        {
          v58 = v56;
        }

        if (v18)
        {
          v59 = 0;
        }

        else
        {
          v59 = v56 + 1;
        }

        _Q0.f32[0] = *&RawStringData[8 * v58];
        v60 = *&RawStringData[8 * v59];
        *(v57 - 1) = _Q0.f32[0];
        *v57 = v60;
        v57 += 2;
        v56 += 2;
      }

      while (v56 != v49);
      goto LABEL_266;
    }

    v49 = 0;
    do
    {
      if (v18)
      {
        v141 = 0;
      }

      else
      {
        v141 = v49;
      }

      _Q0.f32[0] = *&RawStringData[8 * v141];
      a3[v49++] = _Q0.f32[0];
LABEL_266:
      ;
    }

    while (NumElements != v49);
    return _Q0.f32[0];
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_118:
    if (NumElements >= 2)
    {
      v62 = 0;
      v55 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v63 = a3 + 1;
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

        if (v18)
        {
          v65 = 0;
        }

        else
        {
          v65 = v62 + 1;
        }

        _Q0.f32[0] = *&RawStringData[8 * v64];
        v66 = *&RawStringData[8 * v65];
        *(v63 - 1) = _Q0.f32[0];
        *v63 = v66;
        v63 += 2;
        v62 += 2;
      }

      while (v62 != v55);
      goto LABEL_272;
    }

    v55 = 0;
    do
    {
      if (v18)
      {
        v142 = 0;
      }

      else
      {
        v142 = v55;
      }

      _Q0.f32[0] = *&RawStringData[8 * v142];
      a3[v55++] = _Q0.f32[0];
LABEL_272:
      ;
    }

    while (NumElements != v55);
    return _Q0.f32[0];
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_133:
    if (NumElements >= 2)
    {
      v77 = 0;
      v61 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v78 = a3 + 1;
      do
      {
        if (v18)
        {
          v79 = 0;
        }

        else
        {
          v79 = v77;
        }

        if (v18)
        {
          v80 = 0;
        }

        else
        {
          v80 = v77 + 1;
        }

        _H0 = *&RawStringData[2 * v79];
        _H1 = *&RawStringData[2 * v80];
        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
        }

        *(v78 - 1) = _Q0.i32[0];
        *v78 = _S1;
        v78 += 2;
        v77 += 2;
      }

      while (v77 != v61);
      goto LABEL_278;
    }

    v61 = 0;
    do
    {
      if (v18)
      {
        v143 = 0;
      }

      else
      {
        v143 = v61;
      }

      _H0 = *&RawStringData[2 * v143];
      __asm { FCVT            S0, H0 }

      a3[v61++] = _Q0.f32[0];
LABEL_278:
      ;
    }

    while (NumElements != v61);
    return _Q0.f32[0];
  }

  if (mlir::Type::isF32(&isSplat))
  {
    _Q0.i32[0] = *RawStringData;
    *a3 = *RawStringData;
    return _Q0.f32[0];
  }

  if (!mlir::Type::isF64(&isSplat))
  {
    if (mlir::Type::isBF16(&isSplat))
    {
      *a3 = *RawStringData << 16;
      return _Q0.f32[0];
    }

    NumElements = 1;
    goto LABEL_187;
  }

  NumElements = 1;
LABEL_169:
  if (NumElements >= 2)
  {
    v90 = 0;
    v88 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v91 = a3 + 1;
    do
    {
      if (v18)
      {
        v92 = 0;
      }

      else
      {
        v92 = v90;
      }

      if (v18)
      {
        v93 = 0;
      }

      else
      {
        v93 = v90 + 1;
      }

      _Q0.f32[0] = *&RawStringData[8 * v92];
      v94 = *&RawStringData[8 * v93];
      *(v91 - 1) = _Q0.f32[0];
      *v91 = v94;
      v91 += 2;
      v90 += 2;
    }

    while (v90 != v88);
    goto LABEL_284;
  }

  v88 = 0;
  do
  {
    if (v18)
    {
      v145 = 0;
    }

    else
    {
      v145 = v88;
    }

    _Q0.f32[0] = *&RawStringData[8 * v145];
    a3[v88++] = _Q0.f32[0];
LABEL_284:
    ;
  }

  while (NumElements != v88);
  return _Q0.f32[0];
}

float64_t mlir::copyElementsAttrData<double>(uint64_t a1, uint64_t a2, double *a3)
{
  v181[5] = *MEMORY[0x1E69E9840];
  v178 = a1;
  v179 = a2;
  Type = mlir::ElementsAttr::getType(&v178);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawData = Type;
    mlir::arith::ExtUIOp::fold();
    Type = RawData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v177[0] = Type;
  v177[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v177);
  v18 = mlir::ElementsAttr::isSplat(&v178);
  v19 = v178;
  if (mlir::DenseElementsAttr::classof(v178))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v180[0] = v20;
  if (!v20)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v180[0] = v24;
    if (v24)
    {
      RawData = mlir::mps::MPSBufferTensorAttr::getRawData(v180);
      v4 = v25;
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
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = i;
        }

        LOBYTE(_Q0.f64[0]) = RawData[v27];
        _Q0.f64[0] = *&_Q0.f64[0];
        a3[i] = _Q0.f64[0];
      }

      return _Q0.f64[0];
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_39:
      for (j = 0; j != NumElements; ++j)
      {
        if (v18)
        {
          v29 = 0;
        }

        else
        {
          v29 = j;
        }

        _Q0.f64[0] = RawData[v29];
        a3[j] = _Q0.f64[0];
      }

      return _Q0.f64[0];
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_52:
      if (NumElements >= 2)
      {
        v34 = 0;
        v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v35 = a3 + 1;
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

          if (v18)
          {
            v37 = 0;
          }

          else
          {
            v37 = v34 + 1;
          }

          LOWORD(_Q0.f64[0]) = *&RawData[2 * v36];
          _Q0.f64[0] = *&_Q0.f64[0];
          LOWORD(v30) = *&RawData[2 * v37];
          v30 = *&v30;
          *(v35 - 1) = _Q0.f64[0];
          *v35 = v30;
          v35 += 2;
          v34 += 2;
        }

        while (v34 != v31);
        goto LABEL_238;
      }

      v31 = 0;
      do
      {
        if (v18)
        {
          v165 = 0;
        }

        else
        {
          v165 = v31;
        }

        LOWORD(_Q0.f64[0]) = *&RawData[2 * v165];
        _Q0.f64[0] = *&_Q0.f64[0];
        a3[v31++] = _Q0.f64[0];
LABEL_238:
        ;
      }

      while (NumElements != v31);
      return _Q0.f64[0];
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_58:
      if (NumElements >= 2)
      {
        v40 = 0;
        v33 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v41 = a3 + 1;
        do
        {
          if (v18)
          {
            v42 = 0;
          }

          else
          {
            v42 = v40;
          }

          if (v18)
          {
            v43 = 0;
          }

          else
          {
            v43 = v40 + 1;
          }

          LOWORD(_Q0.f64[0]) = *&RawData[2 * v42];
          _Q0.f64[0] = vmovl_s16(*&_Q0.f64[0]).i32[0];
          LOWORD(v32) = *&RawData[2 * v43];
          v32 = vmovl_s16(*&v32).i32[0];
          *(v41 - 1) = _Q0.f64[0];
          *v41 = v32;
          v41 += 2;
          v40 += 2;
        }

        while (v40 != v33);
        goto LABEL_244;
      }

      v33 = 0;
      do
      {
        if (v18)
        {
          v166 = 0;
        }

        else
        {
          v166 = v33;
        }

        LOWORD(_Q0.f64[0]) = *&RawData[2 * v166];
        _Q0.f64[0] = vmovl_s16(*&_Q0.f64[0]).i32[0];
        a3[v33++] = _Q0.f64[0];
LABEL_244:
        ;
      }

      while (NumElements != v33);
      return _Q0.f64[0];
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_73:
      if (NumElements >= 2)
      {
        v45 = 0;
        v39 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v46 = a3 + 1;
        do
        {
          if (v18)
          {
            v47 = 0;
          }

          else
          {
            v47 = v45;
          }

          if (v18)
          {
            v48 = 0;
          }

          else
          {
            v48 = v45 + 1;
          }

          LODWORD(_Q0.f64[0]) = *&RawData[4 * v47];
          _Q0.f64[0] = *&_Q0.f64[0];
          LODWORD(v38) = *&RawData[4 * v48];
          v38 = *&v38;
          *(v46 - 1) = _Q0.f64[0];
          *v46 = v38;
          v46 += 2;
          v45 += 2;
        }

        while (v45 != v39);
        goto LABEL_250;
      }

      v39 = 0;
      do
      {
        if (v18)
        {
          v167 = 0;
        }

        else
        {
          v167 = v39;
        }

        LODWORD(_Q0.f64[0]) = *&RawData[4 * v167];
        _Q0.f64[0] = *&_Q0.f64[0];
        a3[v39++] = _Q0.f64[0];
LABEL_250:
        ;
      }

      while (NumElements != v39);
      return _Q0.f64[0];
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_88:
      if (NumElements >= 2)
      {
        v50 = 0;
        v44 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v51 = a3 + 1;
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

          v53 = *&RawData[4 * v52];
          if (v18)
          {
            v54 = 0;
          }

          else
          {
            v54 = v50 + 1;
          }

          _Q0.f64[0] = v53;
          v55 = *&RawData[4 * v54];
          *(v51 - 1) = _Q0.f64[0];
          *v51 = v55;
          v51 += 2;
          v50 += 2;
        }

        while (v50 != v44);
        goto LABEL_256;
      }

      v44 = 0;
      do
      {
        if (v18)
        {
          v168 = 0;
        }

        else
        {
          v168 = v44;
        }

        _Q0.f64[0] = *&RawData[4 * v168];
        a3[v44++] = _Q0.f64[0];
LABEL_256:
        ;
      }

      while (NumElements != v44);
      return _Q0.f64[0];
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      NumElements = 1;
LABEL_103:
      if (NumElements >= 2)
      {
        v57 = 0;
        v49 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v58 = a3 + 1;
        do
        {
          if (v18)
          {
            v59 = 0;
          }

          else
          {
            v59 = v57;
          }

          if (v18)
          {
            v60 = 0;
          }

          else
          {
            v60 = v57 + 1;
          }

          _Q0.f64[0] = *&RawData[8 * v59];
          v61 = *&RawData[8 * v60];
          *(v58 - 1) = _Q0.f64[0];
          *v58 = v61;
          v58 += 2;
          v57 += 2;
        }

        while (v57 != v49);
        goto LABEL_262;
      }

      v49 = 0;
      do
      {
        if (v18)
        {
          v169 = 0;
        }

        else
        {
          v169 = v49;
        }

        _Q0.f64[0] = *&RawData[8 * v169];
        a3[v49++] = _Q0.f64[0];
LABEL_262:
        ;
      }

      while (NumElements != v49);
      return _Q0.f64[0];
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      NumElements = 1;
LABEL_118:
      if (NumElements >= 2)
      {
        v63 = 0;
        v56 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v64 = a3 + 1;
        do
        {
          if (v18)
          {
            v65 = 0;
          }

          else
          {
            v65 = v63;
          }

          if (v18)
          {
            v66 = 0;
          }

          else
          {
            v66 = v63 + 1;
          }

          _Q0.f64[0] = *&RawData[8 * v65];
          v67 = *&RawData[8 * v66];
          *(v64 - 1) = _Q0.f64[0];
          *v64 = v67;
          v64 += 2;
          v63 += 2;
        }

        while (v63 != v56);
        goto LABEL_268;
      }

      v56 = 0;
      do
      {
        if (v18)
        {
          v170 = 0;
        }

        else
        {
          v170 = v56;
        }

        _Q0.f64[0] = *&RawData[8 * v170];
        a3[v56++] = _Q0.f64[0];
LABEL_268:
        ;
      }

      while (NumElements != v56);
      return _Q0.f64[0];
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_133:
      if (NumElements >= 2)
      {
        v69 = 0;
        v62 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v70 = a3 + 1;
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

          if (v18)
          {
            v72 = 0;
          }

          else
          {
            v72 = v69 + 1;
          }

          _H0 = *&RawData[2 * v71];
          _H1 = *&RawData[2 * v72];
          __asm
          {
            FCVT            D0, H0
            FCVT            D1, H1
          }

          *(v70 - 1) = *&_Q0.f64[0];
          *v70 = _D1;
          v70 += 2;
          v69 += 2;
        }

        while (v69 != v62);
        goto LABEL_274;
      }

      v62 = 0;
      do
      {
        if (v18)
        {
          v171 = 0;
        }

        else
        {
          v171 = v62;
        }

        _H0 = *&RawData[2 * v171];
        __asm { FCVT            D0, H0 }

        a3[v62++] = _Q0.f64[0];
LABEL_274:
        ;
      }

      while (NumElements != v62);
      return _Q0.f64[0];
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_148:
      if (NumElements >= 2)
      {
        v90 = 0;
        v68 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v91 = a3 + 1;
        do
        {
          if (v18)
          {
            v92 = 0;
          }

          else
          {
            v92 = v90;
          }

          if (v18)
          {
            v93 = 0;
          }

          else
          {
            v93 = v90 + 1;
          }

          _Q0.f64[0] = *&RawData[4 * v92];
          v94 = *&RawData[4 * v93];
          *(v91 - 1) = _Q0.f64[0];
          *v91 = v94;
          v91 += 2;
          v90 += 2;
        }

        while (v90 != v68);
        goto LABEL_280;
      }

      v68 = 0;
      do
      {
        if (v18)
        {
          v173 = 0;
        }

        else
        {
          v173 = v68;
        }

        _Q0.f64[0] = *&RawData[4 * v173];
        a3[v68++] = _Q0.f64[0];
LABEL_280:
        ;
      }

      while (NumElements != v68);
      return _Q0.f64[0];
    }

    if (mlir::Type::isF64(&isSplat))
    {
      _Q0.f64[0] = *RawData;
      *a3 = *RawData;
      return _Q0.f64[0];
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_186;
    }

    goto LABEL_184;
  }

  RawData = mlir::DenseElementsAttr::getRawStringData(v180);
  v4 = v21;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_27:
  NumElements = mlir::ElementsAttr::getNumElements(v178, v179);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_29;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_39;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_52;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_58;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_73;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_88;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_103;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_118;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_133;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_148;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements >= 1)
    {
      v80 = 0;
      if (NumElements < 4)
      {
        goto LABEL_168;
      }

      if ((a3 - RawData) <= 0x1F)
      {
        goto LABEL_168;
      }

      v80 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v81 = (RawData + 16);
      v82 = (a3 + 2);
      v83 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        _Q0 = v81[-1];
        v84 = *v81;
        v82[-1] = _Q0;
        *v82 = v84;
        v81 += 2;
        v82 += 2;
        v83 -= 4;
      }

      while (v83);
      if (NumElements != v80)
      {
LABEL_168:
        v85 = v80;
        v86 = &RawData[8 * v80];
        v87 = NumElements - v80;
        v88 = &a3[v85];
        do
        {
          v89 = *v86;
          v86 += 8;
          _Q0.f64[0] = v89;
          *v88++ = v89;
          --v87;
        }

        while (v87);
      }
    }

    return _Q0.f64[0];
  }

  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_186:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<double>(RawData, v4, a3, NumElements, IntOrFloatBitWidth);
      return _Q0.f64[0];
    }

    llvm::SmallVector<char,40u>::SmallVector(v180, NumElements);
    mlir::detail::unpackBooleanData(RawData, v4, v180[0], v180[1]);
    v96 = v180[0];
    if (NumElements < 1)
    {
      goto LABEL_212;
    }

    if (v18)
    {
      if (NumElements < 4 || v180[0] + 1 > a3 && v180[0] < &a3[NumElements])
      {
        v97 = 0;
        goto LABEL_193;
      }

      if (NumElements >= 0x10)
      {
        v97 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v110 = vld1_dup_s8(v180[0]);
        v111.i32[0] = v110.u8[6];
        v111.i32[1] = v110.u8[7];
        v112 = vshr_n_s32(vshl_n_s32(v111, 0x18uLL), 0x18uLL);
        v113.i64[0] = v112.i32[0];
        v113.i64[1] = v112.i32[1];
        _Q0 = vcvtq_f64_s64(v113);
        v114.i32[0] = v110.u8[4];
        v114.i32[1] = v110.u8[5];
        v115 = vshr_n_s32(vshl_n_s32(v114, 0x18uLL), 0x18uLL);
        v113.i64[0] = v115.i32[0];
        v113.i64[1] = v115.i32[1];
        v116.i32[0] = v110.u8[2];
        v116.i32[1] = v110.u8[3];
        v117 = vcvtq_f64_s64(v113);
        v118 = vshr_n_s32(vshl_n_s32(v116, 0x18uLL), 0x18uLL);
        v113.i64[0] = v118.i32[0];
        v113.i64[1] = v118.i32[1];
        v119 = vcvtq_f64_s64(v113);
        v120.i32[0] = v110.u8[0];
        v120.i32[1] = v110.u8[1];
        v121 = vshr_n_s32(vshl_n_s32(v120, 0x18uLL), 0x18uLL);
        v113.i64[0] = v121.i32[0];
        v113.i64[1] = v121.i32[1];
        v122 = vcvtq_f64_s64(v113);
        v123 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v124 = a3;
        do
        {
          *v124 = v122;
          v124[1] = v119;
          v124[2] = v117;
          v124[3] = _Q0;
          v124[4] = v122;
          v124[5] = v119;
          v124[6] = v117;
          v124[7] = _Q0;
          v124 += 8;
          v123 -= 16;
        }

        while (v123);
        if (NumElements == v97)
        {
          goto LABEL_212;
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_193:
          v98 = NumElements - v97;
          v99 = &a3[v97];
          do
          {
            _Q0.f64[0] = *v96;
            *v99++ = _Q0.f64[0];
            --v98;
          }

          while (v98);
          goto LABEL_212;
        }
      }

      else
      {
        v97 = 0;
      }

      v125 = v97;
      v97 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v126 = vshr_n_s32(vshl_n_s32(vdup_n_s32(*v96), 0x18uLL), 0x18uLL);
      v127.i64[0] = v126.i32[0];
      v127.i64[1] = v126.i32[1];
      _Q0 = vcvtq_f64_s64(v127);
      v128 = &a3[v125];
      v129 = v125 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v128 = _Q0;
        v128[1] = _Q0;
        v128 += 2;
        v129 += 4;
      }

      while (v129);
      if (NumElements != v97)
      {
        goto LABEL_193;
      }

LABEL_212:
      if (v96 != v181)
      {
        free(v96);
      }

      return _Q0.f64[0];
    }

    if (NumElements < 4 || v180[0] + NumElements > a3 && v180[0] < &a3[NumElements])
    {
      v105 = 0;
      goto LABEL_210;
    }

    if (NumElements >= 0x10)
    {
      v105 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v130 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v131 = a3;
      v132 = v180[0];
      do
      {
        v133 = *v132++;
        v134 = vextq_s8(v133, v133, 8uLL).u64[0];
        v135.i32[0] = v134;
        v135.i32[1] = BYTE1(v134);
        v136 = vshr_n_s32(vshl_n_s32(v135, 0x18uLL), 0x18uLL);
        v137.i64[0] = v136.i32[0];
        v137.i64[1] = v136.i32[1];
        _Q0 = vcvtq_f64_s64(v137);
        v138.i32[0] = BYTE2(v134);
        v138.i32[1] = BYTE3(v134);
        v139 = vshr_n_s32(vshl_n_s32(v138, 0x18uLL), 0x18uLL);
        v137.i64[0] = v139.i32[0];
        v137.i64[1] = v139.i32[1];
        v140 = v137;
        v141.i32[0] = BYTE4(v134);
        v141.i32[1] = BYTE5(v134);
        v142 = vshr_n_s32(vshl_n_s32(v141, 0x18uLL), 0x18uLL);
        v137.i64[0] = v142.i32[0];
        v137.i64[1] = v142.i32[1];
        v143.i32[0] = BYTE6(v134);
        v143.i32[1] = HIBYTE(v134);
        v144 = vcvtq_f64_s64(v137);
        v145 = vshr_n_s32(vshl_n_s32(v143, 0x18uLL), 0x18uLL);
        v137.i64[0] = v145.i32[0];
        v137.i64[1] = v145.i32[1];
        v146 = vcvtq_f64_s64(v137);
        v143.i32[0] = v133.u8[0];
        v143.i32[1] = v133.u8[1];
        v147 = vshr_n_s32(vshl_n_s32(v143, 0x18uLL), 0x18uLL);
        v137.i64[0] = v147.i32[0];
        v137.i64[1] = v147.i32[1];
        v148 = vcvtq_f64_s64(v137);
        v149.i32[0] = v133.u8[2];
        v149.i32[1] = v133.u8[3];
        v150 = vshr_n_s32(vshl_n_s32(v149, 0x18uLL), 0x18uLL);
        v151.i32[0] = v133.u8[4];
        v151.i32[1] = v133.u8[5];
        v152 = vshr_n_s32(vshl_n_s32(v151, 0x18uLL), 0x18uLL);
        v137.i64[0] = v152.i32[0];
        v137.i64[1] = v152.i32[1];
        v153.i32[0] = v133.u8[6];
        v153.i32[1] = v133.u8[7];
        v154 = vcvtq_f64_s64(v137);
        v155 = vshr_n_s32(vshl_n_s32(v153, 0x18uLL), 0x18uLL);
        v137.i64[0] = v155.i32[0];
        v137.i64[1] = v155.i32[1];
        v131[2] = v154;
        v131[3] = vcvtq_f64_s64(v137);
        v137.i64[0] = v150.i32[0];
        v137.i64[1] = v150.i32[1];
        *v131 = v148;
        v131[1] = vcvtq_f64_s64(v137);
        v131[6] = v144;
        v131[7] = v146;
        v131[4] = _Q0;
        v131[5] = vcvtq_f64_s64(v140);
        v131 += 8;
        v130 -= 16;
      }

      while (v130);
      if (NumElements == v105)
      {
        goto LABEL_212;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_210:
        v106 = &v96[v105];
        v107 = NumElements - v105;
        v108 = &a3[v105];
        do
        {
          v109 = *v106++;
          _Q0.f64[0] = v109;
          *v108++ = v109;
          --v107;
        }

        while (v107);
        goto LABEL_212;
      }
    }

    else
    {
      v105 = 0;
    }

    v156 = v105;
    v105 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v157 = &v96[v156];
    v158 = &a3[v156];
    v159 = v156 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v160 = *v157;
      v157 += 4;
      LODWORD(_Q0.f64[0]) = v160;
      v161 = vmovl_u16(*&vmovl_u8(*&_Q0.f64[0]));
      v162 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v161, v161, 8uLL), 0x18uLL), 0x18uLL);
      v163.i64[0] = v162.i32[0];
      v163.i64[1] = v162.i32[1];
      v164 = vcvtq_f64_s64(v163);
      *v161.i8 = vshr_n_s32(vshl_n_s32(*v161.i8, 0x18uLL), 0x18uLL);
      v163.i64[0] = v161.i32[0];
      v163.i64[1] = v161.i32[1];
      _Q0 = vcvtq_f64_s64(v163);
      *v158 = _Q0;
      v158[1] = v164;
      v158 += 2;
      v159 += 4;
    }

    while (v159);
    if (NumElements == v105)
    {
      goto LABEL_212;
    }

    goto LABEL_210;
  }

  if (NumElements < 1)
  {
    return _Q0.f64[0];
  }

LABEL_184:
  if (NumElements >= 2)
  {
    v101 = 0;
    v95 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v102 = a3;
    do
    {
      if (v18)
      {
        v103 = 0;
      }

      else
      {
        v103 = v101;
      }

      if (v18)
      {
        v104 = 0;
      }

      else
      {
        v104 = v101 + 1;
      }

      LOWORD(_Q0.f64[0]) = *&RawData[2 * v103];
      WORD2(_Q0.f64[0]) = *&RawData[2 * v104];
      _Q0 = vcvtq_f64_f32(vshl_n_s32(*&_Q0.f64[0], 0x10uLL));
      *v102++ = _Q0;
      v101 += 2;
    }

    while (v101 != v95);
    goto LABEL_286;
  }

  v95 = 0;
  do
  {
    if (v18)
    {
      v174 = 0;
    }

    else
    {
      v174 = v95;
    }

    _Q0.f64[0] = COERCE_FLOAT(*&RawData[2 * v174] << 16);
    a3[v95++] = _Q0.f64[0];
LABEL_286:
    ;
  }

  while (NumElements != v95);
  return _Q0.f64[0];
}

{
  v188[5] = *MEMORY[0x1E69E9840];
  v185 = a1;
  v186 = a2;
  Type = mlir::ElementsAttr::getType(&v185);
  v5 = Type;
  if (Type)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  else
  {
    v6 = 0;
  }

  v184[0] = v5;
  v184[1] = v6;
  isSplat = mlir::ElementsAttr::isSplat(v184);
  v7 = mlir::ElementsAttr::isSplat(&v185);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v185);
  v10 = v9;
  if ((v7 & 1) == 0)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v185, v186);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return _Q0.f64[0];
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return _Q0.f64[0];
      }

      goto LABEL_19;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return _Q0.f64[0];
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return _Q0.f64[0];
      }

      goto LABEL_35;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return _Q0.f64[0];
      }

      goto LABEL_50;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return _Q0.f64[0];
      }

      goto LABEL_65;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return _Q0.f64[0];
      }

      goto LABEL_80;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return _Q0.f64[0];
      }

      if (NumElements > 3)
      {
        v43 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        v56 = (ElementsAttrRawData + 16);
        v57 = (a3 + 2);
        v58 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          _Q0 = vcvtq_f64_s64(v56[-1]);
          v59 = vcvtq_f64_s64(*v56);
          v57[-1] = _Q0;
          *v57 = v59;
          v56 += 2;
          v57 += 2;
          v58 -= 4;
        }

        while (v58);
        if (NumElements == v43)
        {
          return _Q0.f64[0];
        }
      }

      else
      {
        v43 = 0;
      }

      v60 = v43;
      v61 = &ElementsAttrRawData[8 * v43];
      v62 = NumElements - v43;
      v63 = &a3[v60];
      do
      {
        v64 = *v61++;
        _Q0.f64[0] = v64;
        *v63++ = v64;
        --v62;
      }

      while (v62);
      return _Q0.f64[0];
    }

    if (!mlir::Type::isF16(&isSplat))
    {
      if (mlir::Type::isF32(&isSplat))
      {
        if (NumElements < 1)
        {
          return _Q0.f64[0];
        }

        if (NumElements > 7)
        {
          v55 = NumElements & 0x7FFFFFFFFFFFFFF8;
          v100 = (ElementsAttrRawData + 16);
          v101 = (a3 + 4);
          v102 = NumElements & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v103 = *v100[-2].f32;
            v104 = vcvtq_f64_f32(*v103.f32);
            _Q0 = vcvt_hight_f64_f32(v103);
            v105 = vcvtq_f64_f32(*v100);
            v106 = vcvt_hight_f64_f32(*v100->f32);
            v101[-2] = v104;
            v101[-1] = _Q0;
            *v101 = v105;
            v101[1] = v106;
            v101 += 4;
            v100 += 4;
            v102 -= 8;
          }

          while (v102);
          if (NumElements == v55)
          {
            return _Q0.f64[0];
          }
        }

        else
        {
          v55 = 0;
        }

        v107 = NumElements - v55;
        v108 = &a3[v55];
        v109 = &ElementsAttrRawData[4 * v55];
        do
        {
          v110 = *v109++;
          _Q0.f64[0] = v110;
          *v108++ = v110;
          --v107;
        }

        while (v107);
        return _Q0.f64[0];
      }

      if (mlir::Type::isF64(&isSplat))
      {
        if (NumElements >= 1)
        {
          v65 = 0;
          if (NumElements < 4)
          {
            goto LABEL_133;
          }

          if ((a3 - ElementsAttrRawData) <= 0x1F)
          {
            goto LABEL_133;
          }

          v65 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
          v66 = (ElementsAttrRawData + 16);
          v67 = (a3 + 2);
          v68 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            _Q0 = v66[-1];
            v69 = *v66;
            v67[-1] = _Q0;
            *v67 = v69;
            v66 += 2;
            v67 += 2;
            v68 -= 4;
          }

          while (v68);
          if (NumElements != v65)
          {
LABEL_133:
            v70 = NumElements - v65;
            v71 = 8 * v65;
            v72 = &a3[v65];
            v73 = &ElementsAttrRawData[v71];
            do
            {
              v74 = *v73;
              v73 += 8;
              _Q0.f64[0] = v74;
              *v72++ = v74;
              --v70;
            }

            while (v70);
          }
        }

        return _Q0.f64[0];
      }

      if (!mlir::Type::isBF16(&isSplat))
      {
        goto LABEL_144;
      }

      if (NumElements < 1)
      {
        return _Q0.f64[0];
      }

      goto LABEL_142;
    }

    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    if (NumElements == 1)
    {
      v54 = 0;
      goto LABEL_161;
    }

    if (NumElements >= 0x10)
    {
      v54 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v80 = (ElementsAttrRawData + 16);
      v81 = (a3 + 8);
      v82 = NumElements & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v83 = *v80[-2].i8;
        v84 = *v80->i8;
        v85 = vcvtq_f32_f16(*v83.i8);
        v86 = vcvt_hight_f32_f16(v83);
        v87 = vcvtq_f32_f16(*v80);
        v81[-2] = vcvtq_f64_f32(*v86.f32);
        v81[-1] = vcvt_hight_f64_f32(v86);
        v88 = vcvt_hight_f32_f16(v84);
        v89 = vcvtq_f64_f32(*v88.f32);
        v81[-4] = vcvtq_f64_f32(*v85.f32);
        v81[-3] = vcvt_hight_f64_f32(v85);
        _Q0 = vcvt_hight_f64_f32(v88);
        v81[2] = v89;
        v81[3] = _Q0;
        *v81 = vcvtq_f64_f32(*v87.f32);
        v81[1] = vcvt_hight_f64_f32(v87);
        v81 += 8;
        v80 += 4;
        v82 -= 16;
      }

      while (v82);
      if (NumElements == v54)
      {
        return _Q0.f64[0];
      }

      if ((NumElements & 0xE) == 0)
      {
LABEL_161:
        v95 = &ElementsAttrRawData[2 * v54];
        v96 = NumElements - v54;
        v97 = &a3[v54];
        do
        {
          v98 = *v95;
          v95 += 2;
          _H0 = v98;
          __asm { FCVT            D0, H0 }

          *v97++ = _Q0.f64[0];
          --v96;
        }

        while (v96);
        return _Q0.f64[0];
      }
    }

    else
    {
      v54 = 0;
    }

    v90 = v54;
    v54 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v91 = &ElementsAttrRawData[2 * v90];
    v92 = &a3[v90];
    v93 = v90 - (NumElements & 0x7FFFFFFFFFFFFFFELL);
    do
    {
      v94 = *v91;
      v91 += 4;
      LODWORD(_Q0.f64[0]) = v94;
      _Q0 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_Q0.f64[0]));
      *v92++ = _Q0;
      v93 += 2;
    }

    while (v93);
    if (NumElements == v54)
    {
      return _Q0.f64[0];
    }

    goto LABEL_161;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_9:
    for (i = 0; i != NumElements; ++i)
    {
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = i;
      }

      LOBYTE(_Q0.f64[0]) = ElementsAttrRawData[v14];
      _Q0.f64[0] = *&_Q0.f64[0];
      a3[i] = _Q0.f64[0];
    }

    return _Q0.f64[0];
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_19:
    for (j = 0; j != NumElements; ++j)
    {
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = j;
      }

      _Q0.f64[0] = ElementsAttrRawData[v16];
      a3[j] = _Q0.f64[0];
    }

    return _Q0.f64[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_29:
    if (NumElements >= 2)
    {
      v21 = 0;
      v18 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v22 = a3 + 1;
      do
      {
        if (v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v21;
        }

        if (v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v21 + 1;
        }

        LOWORD(_Q0.f64[0]) = *&ElementsAttrRawData[2 * v23];
        _Q0.f64[0] = *&_Q0.f64[0];
        LOWORD(v17) = *&ElementsAttrRawData[2 * v24];
        v17 = *&v17;
        *(v22 - 1) = _Q0.f64[0];
        *v22 = v17;
        v22 += 2;
        v21 += 2;
      }

      while (v21 != v18);
      goto LABEL_212;
    }

    v18 = 0;
    do
    {
      if (v7)
      {
        v176 = 0;
      }

      else
      {
        v176 = v18;
      }

      LOWORD(_Q0.f64[0]) = *&ElementsAttrRawData[2 * v176];
      _Q0.f64[0] = *&_Q0.f64[0];
      a3[v18++] = _Q0.f64[0];
LABEL_212:
      ;
    }

    while (NumElements != v18);
    return _Q0.f64[0];
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_35:
    if (NumElements >= 2)
    {
      v27 = 0;
      v20 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v28 = a3 + 1;
      do
      {
        if (v7)
        {
          v29 = 0;
        }

        else
        {
          v29 = v27;
        }

        if (v7)
        {
          v30 = 0;
        }

        else
        {
          v30 = v27 + 1;
        }

        LOWORD(_Q0.f64[0]) = *&ElementsAttrRawData[2 * v29];
        _Q0.f64[0] = vmovl_s16(*&_Q0.f64[0]).i32[0];
        LOWORD(v19) = *&ElementsAttrRawData[2 * v30];
        v19 = vmovl_s16(*&v19).i32[0];
        *(v28 - 1) = _Q0.f64[0];
        *v28 = v19;
        v28 += 2;
        v27 += 2;
      }

      while (v27 != v20);
      goto LABEL_218;
    }

    v20 = 0;
    do
    {
      if (v7)
      {
        v177 = 0;
      }

      else
      {
        v177 = v20;
      }

      LOWORD(_Q0.f64[0]) = *&ElementsAttrRawData[2 * v177];
      _Q0.f64[0] = vmovl_s16(*&_Q0.f64[0]).i32[0];
      a3[v20++] = _Q0.f64[0];
LABEL_218:
      ;
    }

    while (NumElements != v20);
    return _Q0.f64[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_50:
    if (NumElements >= 2)
    {
      v32 = 0;
      v26 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v33 = a3 + 1;
      do
      {
        if (v7)
        {
          v34 = 0;
        }

        else
        {
          v34 = v32;
        }

        if (v7)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32 + 1;
        }

        LODWORD(_Q0.f64[0]) = *&ElementsAttrRawData[4 * v34];
        _Q0.f64[0] = *&_Q0.f64[0];
        LODWORD(v25) = *&ElementsAttrRawData[4 * v35];
        v25 = *&v25;
        *(v33 - 1) = _Q0.f64[0];
        *v33 = v25;
        v33 += 2;
        v32 += 2;
      }

      while (v32 != v26);
      goto LABEL_224;
    }

    v26 = 0;
    do
    {
      if (v7)
      {
        v178 = 0;
      }

      else
      {
        v178 = v26;
      }

      LODWORD(_Q0.f64[0]) = *&ElementsAttrRawData[4 * v178];
      _Q0.f64[0] = *&_Q0.f64[0];
      a3[v26++] = _Q0.f64[0];
LABEL_224:
      ;
    }

    while (NumElements != v26);
    return _Q0.f64[0];
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_65:
    if (NumElements >= 2)
    {
      v37 = 0;
      v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v38 = a3 + 1;
      do
      {
        if (v7)
        {
          v39 = 0;
        }

        else
        {
          v39 = v37;
        }

        v40 = *&ElementsAttrRawData[4 * v39];
        if (v7)
        {
          v41 = 0;
        }

        else
        {
          v41 = v37 + 1;
        }

        _Q0.f64[0] = v40;
        v42 = *&ElementsAttrRawData[4 * v41];
        *(v38 - 1) = _Q0.f64[0];
        *v38 = v42;
        v38 += 2;
        v37 += 2;
      }

      while (v37 != v31);
      goto LABEL_230;
    }

    v31 = 0;
    do
    {
      if (v7)
      {
        v179 = 0;
      }

      else
      {
        v179 = v31;
      }

      _Q0.f64[0] = *&ElementsAttrRawData[4 * v179];
      a3[v31++] = _Q0.f64[0];
LABEL_230:
      ;
    }

    while (NumElements != v31);
    return _Q0.f64[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_80:
    if (NumElements >= 2)
    {
      v44 = 0;
      v36 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v45 = a3 + 1;
      do
      {
        if (v7)
        {
          v46 = 0;
        }

        else
        {
          v46 = v44;
        }

        if (v7)
        {
          v47 = 0;
        }

        else
        {
          v47 = v44 + 1;
        }

        _Q0.f64[0] = *&ElementsAttrRawData[8 * v46];
        v48 = *&ElementsAttrRawData[8 * v47];
        *(v45 - 1) = _Q0.f64[0];
        *v45 = v48;
        v45 += 2;
        v44 += 2;
      }

      while (v44 != v36);
      goto LABEL_236;
    }

    v36 = 0;
    do
    {
      if (v7)
      {
        v180 = 0;
      }

      else
      {
        v180 = v36;
      }

      _Q0.f64[0] = *&ElementsAttrRawData[8 * v180];
      a3[v36++] = _Q0.f64[0];
LABEL_236:
      ;
    }

    while (NumElements != v36);
    return _Q0.f64[0];
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    _Q0.f64[0] = *ElementsAttrRawData;
    *a3 = _Q0.f64[0];
    return _Q0.f64[0];
  }

  if (mlir::Type::isF16(&isSplat))
  {
    _H0 = *ElementsAttrRawData;
    __asm { FCVT            D0, H0 }

    *a3 = _Q0.f64[0];
    return _Q0.f64[0];
  }

  if (mlir::Type::isF32(&isSplat))
  {
    _Q0.f64[0] = *ElementsAttrRawData;
    *a3 = _Q0.f64[0];
    return _Q0.f64[0];
  }

  if (mlir::Type::isF64(&isSplat))
  {
    _Q0.f64[0] = *ElementsAttrRawData;
    *a3 = *ElementsAttrRawData;
    return _Q0.f64[0];
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_144:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<double>(ElementsAttrRawData, v10, a3, NumElements, IntOrFloatBitWidth);
      return _Q0.f64[0];
    }

    llvm::SmallVector<char,40u>::SmallVector(v187, NumElements);
    mlir::detail::unpackBooleanData(ElementsAttrRawData, v10, v187[0], v187[1]);
    v76 = v187[0];
    if (NumElements < 1)
    {
      goto LABEL_186;
    }

    if (v7)
    {
      if (NumElements < 4 || v187[0] + 1 > a3 && v187[0] < &a3[NumElements])
      {
        v77 = 0;
        goto LABEL_151;
      }

      if (NumElements >= 0x10)
      {
        v77 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v121 = vld1_dup_s8(v187[0]);
        v122.i32[0] = v121.u8[6];
        v122.i32[1] = v121.u8[7];
        v123 = vshr_n_s32(vshl_n_s32(v122, 0x18uLL), 0x18uLL);
        v124.i64[0] = v123.i32[0];
        v124.i64[1] = v123.i32[1];
        _Q0 = vcvtq_f64_s64(v124);
        v125.i32[0] = v121.u8[4];
        v125.i32[1] = v121.u8[5];
        v126 = vshr_n_s32(vshl_n_s32(v125, 0x18uLL), 0x18uLL);
        v124.i64[0] = v126.i32[0];
        v124.i64[1] = v126.i32[1];
        v127.i32[0] = v121.u8[2];
        v127.i32[1] = v121.u8[3];
        v128 = vcvtq_f64_s64(v124);
        v129 = vshr_n_s32(vshl_n_s32(v127, 0x18uLL), 0x18uLL);
        v124.i64[0] = v129.i32[0];
        v124.i64[1] = v129.i32[1];
        v130 = vcvtq_f64_s64(v124);
        v131.i32[0] = v121.u8[0];
        v131.i32[1] = v121.u8[1];
        v132 = vshr_n_s32(vshl_n_s32(v131, 0x18uLL), 0x18uLL);
        v124.i64[0] = v132.i32[0];
        v124.i64[1] = v132.i32[1];
        v133 = vcvtq_f64_s64(v124);
        v134 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v135 = a3;
        do
        {
          *v135 = v133;
          v135[1] = v130;
          v135[2] = v128;
          v135[3] = _Q0;
          v135[4] = v133;
          v135[5] = v130;
          v135[6] = v128;
          v135[7] = _Q0;
          v135 += 8;
          v134 -= 16;
        }

        while (v134);
        if (NumElements == v77)
        {
          goto LABEL_186;
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_151:
          v78 = NumElements - v77;
          v79 = &a3[v77];
          do
          {
            _Q0.f64[0] = *v76;
            *v79++ = _Q0.f64[0];
            --v78;
          }

          while (v78);
          goto LABEL_186;
        }
      }

      else
      {
        v77 = 0;
      }

      v136 = v77;
      v77 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v137 = vshr_n_s32(vshl_n_s32(vdup_n_s32(*v76), 0x18uLL), 0x18uLL);
      v138.i64[0] = v137.i32[0];
      v138.i64[1] = v137.i32[1];
      _Q0 = vcvtq_f64_s64(v138);
      v139 = &a3[v136];
      v140 = v136 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v139 = _Q0;
        v139[1] = _Q0;
        v139 += 2;
        v140 += 4;
      }

      while (v140);
      if (NumElements != v77)
      {
        goto LABEL_151;
      }

LABEL_186:
      if (v76 != v188)
      {
        free(v76);
      }

      return _Q0.f64[0];
    }

    if (NumElements < 4 || v187[0] + NumElements > a3 && v187[0] < &a3[NumElements])
    {
      v116 = 0;
      goto LABEL_184;
    }

    if (NumElements >= 0x10)
    {
      v116 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v141 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v142 = a3;
      v143 = v187[0];
      do
      {
        v144 = *v143++;
        v145 = vextq_s8(v144, v144, 8uLL).u64[0];
        v146.i32[0] = v145;
        v146.i32[1] = BYTE1(v145);
        v147 = vshr_n_s32(vshl_n_s32(v146, 0x18uLL), 0x18uLL);
        v148.i64[0] = v147.i32[0];
        v148.i64[1] = v147.i32[1];
        _Q0 = vcvtq_f64_s64(v148);
        v149.i32[0] = BYTE2(v145);
        v149.i32[1] = BYTE3(v145);
        v150 = vshr_n_s32(vshl_n_s32(v149, 0x18uLL), 0x18uLL);
        v148.i64[0] = v150.i32[0];
        v148.i64[1] = v150.i32[1];
        v151 = v148;
        v152.i32[0] = BYTE4(v145);
        v152.i32[1] = BYTE5(v145);
        v153 = vshr_n_s32(vshl_n_s32(v152, 0x18uLL), 0x18uLL);
        v148.i64[0] = v153.i32[0];
        v148.i64[1] = v153.i32[1];
        v154.i32[0] = BYTE6(v145);
        v154.i32[1] = HIBYTE(v145);
        v155 = vcvtq_f64_s64(v148);
        v156 = vshr_n_s32(vshl_n_s32(v154, 0x18uLL), 0x18uLL);
        v148.i64[0] = v156.i32[0];
        v148.i64[1] = v156.i32[1];
        v157 = vcvtq_f64_s64(v148);
        v154.i32[0] = v144.u8[0];
        v154.i32[1] = v144.u8[1];
        v158 = vshr_n_s32(vshl_n_s32(v154, 0x18uLL), 0x18uLL);
        v148.i64[0] = v158.i32[0];
        v148.i64[1] = v158.i32[1];
        v159 = vcvtq_f64_s64(v148);
        v160.i32[0] = v144.u8[2];
        v160.i32[1] = v144.u8[3];
        v161 = vshr_n_s32(vshl_n_s32(v160, 0x18uLL), 0x18uLL);
        v162.i32[0] = v144.u8[4];
        v162.i32[1] = v144.u8[5];
        v163 = vshr_n_s32(vshl_n_s32(v162, 0x18uLL), 0x18uLL);
        v148.i64[0] = v163.i32[0];
        v148.i64[1] = v163.i32[1];
        v164.i32[0] = v144.u8[6];
        v164.i32[1] = v144.u8[7];
        v165 = vcvtq_f64_s64(v148);
        v166 = vshr_n_s32(vshl_n_s32(v164, 0x18uLL), 0x18uLL);
        v148.i64[0] = v166.i32[0];
        v148.i64[1] = v166.i32[1];
        v142[2] = v165;
        v142[3] = vcvtq_f64_s64(v148);
        v148.i64[0] = v161.i32[0];
        v148.i64[1] = v161.i32[1];
        *v142 = v159;
        v142[1] = vcvtq_f64_s64(v148);
        v142[6] = v155;
        v142[7] = v157;
        v142[4] = _Q0;
        v142[5] = vcvtq_f64_s64(v151);
        v142 += 8;
        v141 -= 16;
      }

      while (v141);
      if (NumElements == v116)
      {
        goto LABEL_186;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_184:
        v117 = NumElements - v116;
        v118 = &a3[v116];
        v119 = &v76[v116];
        do
        {
          v120 = *v119++;
          _Q0.f64[0] = v120;
          *v118++ = v120;
          --v117;
        }

        while (v117);
        goto LABEL_186;
      }
    }

    else
    {
      v116 = 0;
    }

    v167 = v116;
    v116 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v168 = &v76[v167];
    v169 = &a3[v167];
    v170 = v167 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v171 = *v168;
      v168 += 4;
      LODWORD(_Q0.f64[0]) = v171;
      v172 = vmovl_u16(*&vmovl_u8(*&_Q0.f64[0]));
      v173 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v172, v172, 8uLL), 0x18uLL), 0x18uLL);
      v174.i64[0] = v173.i32[0];
      v174.i64[1] = v173.i32[1];
      v175 = vcvtq_f64_s64(v174);
      *v172.i8 = vshr_n_s32(vshl_n_s32(*v172.i8, 0x18uLL), 0x18uLL);
      v174.i64[0] = v172.i32[0];
      v174.i64[1] = v172.i32[1];
      _Q0 = vcvtq_f64_s64(v174);
      *v169 = _Q0;
      v169[1] = v175;
      v169 += 2;
      v170 += 4;
    }

    while (v170);
    if (NumElements == v116)
    {
      goto LABEL_186;
    }

    goto LABEL_184;
  }

LABEL_142:
  if (NumElements >= 2)
  {
    v112 = 0;
    v75 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v113 = a3;
    do
    {
      if (v7)
      {
        v114 = 0;
      }

      else
      {
        v114 = v112;
      }

      if (v7)
      {
        v115 = 0;
      }

      else
      {
        v115 = v112 + 1;
      }

      LOWORD(_Q0.f64[0]) = *&ElementsAttrRawData[2 * v114];
      WORD2(_Q0.f64[0]) = *&ElementsAttrRawData[2 * v115];
      _Q0 = vcvtq_f64_f32(vshl_n_s32(*&_Q0.f64[0], 0x10uLL));
      *v113++ = _Q0;
      v112 += 2;
    }

    while (v112 != v75);
    goto LABEL_242;
  }

  v75 = 0;
  do
  {
    if (v7)
    {
      v181 = 0;
    }

    else
    {
      v181 = v75;
    }

    _Q0.f64[0] = COERCE_FLOAT(*&ElementsAttrRawData[2 * v181] << 16);
    a3[v75++] = _Q0.f64[0];
LABEL_242:
    ;
  }

  while (NumElements != v75);
  return _Q0.f64[0];
}

void mlir::copyElementsAttrData<char>(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v117[5] = *MEMORY[0x1E69E9840];
  v114 = a1;
  v115 = a2;
  Type = mlir::ElementsAttr::getType(&v114);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawStringData = Type;
    mlir::arith::ExtUIOp::fold();
    Type = RawStringData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v113[0] = Type;
  v113[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v113);
  v18 = mlir::ElementsAttr::isSplat(&v114);
  v19 = v114;
  if (mlir::DenseElementsAttr::classof(v114))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v116[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v116);
    v4 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v114, v115);
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

      if (NumElements < 8 || &RawStringData[8 * NumElements] > a3 && &a3[NumElements] > RawStringData)
      {
        v37 = 0;
        goto LABEL_97;
      }

      if (NumElements >= 0x20)
      {
        v37 = NumElements & 0x7FFFFFFFFFFFFFE0;
        v56 = (RawStringData + 128);
        v57 = a3 + 16;
        v58 = NumElements & 0x7FFFFFFFFFFFFFE0;
        do
        {
          *&v59 = vqtbl4q_s8(v56[-2], xmmword_1E0999910).u64[0];
          *&v60 = vqtbl4q_s8(*v56, xmmword_1E0999910).u64[0];
          *(&v59 + 1) = vqtbl4q_s8(v56[-1], xmmword_1E0999910).u64[0];
          *(&v60 + 1) = vqtbl4q_s8(v56[1], xmmword_1E0999910).u64[0];
          *(v57 - 1) = v59;
          *v57 = v60;
          v56 += 4;
          v57 += 2;
          v58 -= 32;
        }

        while (v58);
        if (NumElements == v37)
        {
          return;
        }

        if ((NumElements & 0x18) == 0)
        {
LABEL_97:
          v38 = &RawStringData[8 * v37];
          v39 = NumElements - v37;
          v40 = &a3[v37];
          do
          {
            v41 = *v38;
            v38 += 8;
            *v40++ = v41;
            --v39;
          }

          while (v39);
          return;
        }
      }

      else
      {
        v37 = 0;
      }

      v61 = v37;
      v37 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v62 = &RawStringData[8 * v61];
      v63 = &a3[v61];
      v64 = v61 - (NumElements & 0x7FFFFFFFFFFFFFF8);
      do
      {
        *v63 = vqtbl4q_s8(*v62, xmmword_1E0999920).u64[0];
        v63 += 8;
        ++v62;
        v64 += 8;
      }

      while (v64);
      if (NumElements == v37)
      {
        return;
      }

      goto LABEL_97;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      if (NumElements < 8 || &RawStringData[8 * NumElements] > a3 && &a3[NumElements] > RawStringData)
      {
        v42 = 0;
        goto LABEL_106;
      }

      if (NumElements >= 0x20)
      {
        v42 = NumElements & 0x7FFFFFFFFFFFFFE0;
        v70 = (RawStringData + 128);
        v71 = a3 + 16;
        v72 = NumElements & 0x7FFFFFFFFFFFFFE0;
        do
        {
          *&v73 = vqtbl4q_s8(v70[-2], xmmword_1E0999910).u64[0];
          *&v74 = vqtbl4q_s8(*v70, xmmword_1E0999910).u64[0];
          *(&v73 + 1) = vqtbl4q_s8(v70[-1], xmmword_1E0999910).u64[0];
          *(&v74 + 1) = vqtbl4q_s8(v70[1], xmmword_1E0999910).u64[0];
          *(v71 - 1) = v73;
          *v71 = v74;
          v70 += 4;
          v71 += 2;
          v72 -= 32;
        }

        while (v72);
        if (NumElements == v42)
        {
          return;
        }

        if ((NumElements & 0x18) == 0)
        {
LABEL_106:
          v43 = &RawStringData[8 * v42];
          v44 = NumElements - v42;
          v45 = &a3[v42];
          do
          {
            v46 = *v43;
            v43 += 8;
            *v45++ = v46;
            --v44;
          }

          while (v44);
          return;
        }
      }

      else
      {
        v42 = 0;
      }

      v75 = v42;
      v42 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v76 = &RawStringData[8 * v75];
      v77 = &a3[v75];
      v78 = v75 - (NumElements & 0x7FFFFFFFFFFFFFF8);
      do
      {
        *v77 = vqtbl4q_s8(*v76, xmmword_1E0999920).u64[0];
        v77 += 8;
        ++v76;
        v78 += 8;
      }

      while (v78);
      if (NumElements == v42)
      {
        return;
      }

      goto LABEL_106;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_113;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_123;
    }

    if (!mlir::Type::isF64(&isSplat))
    {
      if (!mlir::Type::isBF16(&isSplat))
      {
        goto LABEL_162;
      }

      if (NumElements < 1)
      {
        return;
      }

LABEL_156:
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v66 = 0;
        }

        else
        {
          v66 = i;
        }

        a3[i] = COERCE_FLOAT(*&RawStringData[2 * v66] << 16);
      }

      return;
    }

    if (NumElements < 1)
    {
      return;
    }

    if (NumElements < 4 || &RawStringData[8 * NumElements] > a3 && &a3[NumElements] > RawStringData)
    {
      v51 = 0;
      goto LABEL_139;
    }

    if (NumElements >= 0x10)
    {
      v51 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v81 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v82 = a3;
      v83 = RawStringData;
      do
      {
        *v82++ = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(*v83), vcvtq_s64_f64(v83[1])), vuzp1q_s32(vcvtq_s64_f64(v83[2]), vcvtq_s64_f64(v83[3]))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(v83[4]), vcvtq_s64_f64(v83[5])), vuzp1q_s32(vcvtq_s64_f64(v83[6]), vcvtq_s64_f64(v83[7]))));
        v83 += 8;
        v81 -= 16;
      }

      while (v81);
      if (NumElements == v51)
      {
        return;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_139:
        v52 = &RawStringData[8 * v51];
        v53 = NumElements - v51;
        v54 = &a3[v51];
        do
        {
          v55 = *v52++;
          *v54++ = v55;
          --v53;
        }

        while (v53);
        return;
      }
    }

    else
    {
      v51 = 0;
    }

    v84 = v51;
    v51 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v85 = &RawStringData[8 * v84];
    v86 = &a3[v84];
    v87 = v84 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v88 = *v85;
      v89 = v85[1];
      v85 += 2;
      *&v88.f64[0] = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v88), vcvtq_s64_f64(v89)));
      *v86 = vuzp1_s8(*&v88.f64[0], *&v88.f64[0]).u32[0];
      v86 += 4;
      v87 += 4;
    }

    while (v87);
    if (NumElements == v51)
    {
      return;
    }

    goto LABEL_139;
  }

  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  v116[0] = v23;
  if (v23)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v116);
    v4 = v24;
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
    for (j = 0; j != NumElements; ++j)
    {
      if (v18)
      {
        v26 = 0;
      }

      else
      {
        v26 = j;
      }

      a3[j] = RawStringData[v26];
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    for (k = 0; k != NumElements; ++k)
    {
      if (v18)
      {
        v28 = 0;
      }

      else
      {
        v28 = k;
      }

      a3[k] = RawStringData[v28];
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    for (m = 0; m != NumElements; ++m)
    {
      if (v18)
      {
        v30 = 0;
      }

      else
      {
        v30 = m;
      }

      a3[m] = *&RawStringData[2 * v30];
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_62:
    for (n = 0; n != NumElements; ++n)
    {
      if (v18)
      {
        v32 = 0;
      }

      else
      {
        v32 = n;
      }

      a3[n] = *&RawStringData[2 * v32];
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_72:
    for (ii = 0; ii != NumElements; ++ii)
    {
      if (v18)
      {
        v34 = 0;
      }

      else
      {
        v34 = ii;
      }

      a3[ii] = *&RawStringData[4 * v34];
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_82:
    for (jj = 0; jj != NumElements; ++jj)
    {
      if (v18)
      {
        v36 = 0;
      }

      else
      {
        v36 = jj;
      }

      a3[jj] = *&RawStringData[4 * v36];
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isInteger(&isSplat, 64))
  {
    *a3 = *RawStringData;
    return;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_113:
    for (kk = 0; kk != NumElements; ++kk)
    {
      if (v18)
      {
        v48 = 0;
      }

      else
      {
        v48 = kk;
      }

      a3[kk] = *&RawStringData[2 * v48];
    }

    return;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_123:
    for (mm = 0; mm != NumElements; ++mm)
    {
      if (v18)
      {
        v50 = 0;
      }

      else
      {
        v50 = mm;
      }

      a3[mm] = *&RawStringData[4 * v50];
    }

    return;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    *a3 = *RawStringData;
    return;
  }

  NumElements = 1;
  if (mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_156;
  }

LABEL_162:
  if (!mlir::Type::isInteger(&isSplat, 1))
  {
    mlir::Type::getIntOrFloatBitWidth(&isSplat);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
    mlir::detail::unpackQuantizedData<unsigned char>(RawStringData, v4, a3, NumElements, IntOrFloatBitWidth);
    return;
  }

  llvm::SmallVector<char,40u>::SmallVector(v116, NumElements);
  mlir::detail::unpackBooleanData(RawStringData, v4, v116[0], v116[1]);
  v67 = v116[0];
  if (NumElements < 1)
  {
    goto LABEL_211;
  }

  if ((v18 & 1) == 0)
  {
    v80 = 0;
    if (NumElements < 8 || (a3 - v116[0]) < 0x20)
    {
      goto LABEL_209;
    }

    if (NumElements >= 0x20)
    {
      v80 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v99 = (v116[0] + 16);
      v100 = a3 + 16;
      v101 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v102 = *v99;
        *(v100 - 1) = *(v99 - 1);
        *v100 = v102;
        v99 += 2;
        v100 += 2;
        v101 -= 32;
      }

      while (v101);
      if (NumElements == v80)
      {
        goto LABEL_211;
      }

      if ((NumElements & 0x18) == 0)
      {
LABEL_209:
        v108 = &v67[v80];
        v109 = NumElements - v80;
        v110 = &a3[v80];
        do
        {
          v111 = *v108++;
          *v110++ = v111;
          --v109;
        }

        while (v109);
        goto LABEL_211;
      }
    }

    else
    {
      v80 = 0;
    }

    v103 = v80;
    v80 = NumElements & 0x7FFFFFFFFFFFFFF8;
    v104 = &v67[v103];
    v105 = &a3[v103];
    v106 = v103 - (NumElements & 0x7FFFFFFFFFFFFFF8);
    do
    {
      v107 = *v104;
      v104 += 8;
      *v105 = v107;
      v105 += 8;
      v106 += 8;
    }

    while (v106);
    if (NumElements == v80)
    {
      goto LABEL_211;
    }

    goto LABEL_209;
  }

  v68 = *v116[0];
  if (NumElements < 8)
  {
    v69 = 0;
    goto LABEL_199;
  }

  if (NumElements >= 0x20)
  {
    v69 = NumElements & 0x7FFFFFFFFFFFFFE0;
    v90 = vdupq_n_s8(v68);
    v91 = (a3 + 16);
    v92 = NumElements & 0x7FFFFFFFFFFFFFE0;
    do
    {
      v91[-1] = v90;
      *v91 = v90;
      v91 += 2;
      v92 -= 32;
    }

    while (v92);
    if (NumElements == v69)
    {
      goto LABEL_211;
    }

    if ((NumElements & 0x18) == 0)
    {
LABEL_199:
      v97 = NumElements - v69;
      v98 = &a3[v69];
      do
      {
        *v98++ = v68;
        --v97;
      }

      while (v97);
      goto LABEL_211;
    }
  }

  else
  {
    v69 = 0;
  }

  v93 = v69;
  v69 = NumElements & 0x7FFFFFFFFFFFFFF8;
  v94 = vdup_n_s8(v68);
  v95 = &a3[v93];
  v96 = v93 - (NumElements & 0x7FFFFFFFFFFFFFF8);
  do
  {
    *v95++ = v94;
    v96 += 8;
  }

  while (v96);
  if (NumElements != v69)
  {
    goto LABEL_199;
  }

LABEL_211:
  if (v67 != v117)
  {
    free(v67);
  }
}