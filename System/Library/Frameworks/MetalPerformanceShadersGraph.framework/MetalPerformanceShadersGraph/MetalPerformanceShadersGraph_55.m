uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertConvolutionInterface<mlir::mps::Conv3DDataGradientOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, int a4, mlir::UnitAttr **a5)
{
  v167[5] = *MEMORY[0x1E69E9840];
  v143 = a2;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  if (!a3)
  {
    goto LABEL_11;
  }

  if (StorageType <= 6)
  {
    if (StorageType)
    {
      if (StorageType != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    if (a3 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (StorageType != 8)
  {
    if (StorageType != 7)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (a3 == 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v10 = 0;
  if (!a4)
  {
    return v10;
  }

  if (WeightsLayout > 8)
  {
    if (WeightsLayout == 10)
    {
      goto LABEL_54;
    }

    if (WeightsLayout != 9)
    {
      return v10;
    }
  }

  else if (WeightsLayout != 2)
  {
    if (WeightsLayout != 3)
    {
      return v10;
    }

LABEL_54:
    if (a4 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (a4 != 2)
  {
    return 0;
  }

LABEL_19:
  v11 = *(*(v143 + 48) + 16);
  v15 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v19 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id;
  v20 = v15 && v19;
  v21 = !v15 || !v19;
  v22 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  v23 = v22;
  if (a3)
  {
    if (v22 <= 0xA)
    {
      if (((1 << v22) & 0xC) != 0)
      {
        v24 = a3 == 1;
        v25 = 2;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x180) != 0)
      {
        v24 = a3 == 1;
        v25 = 7;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x600) != 0)
      {
        v24 = a3 == 1;
        v25 = 9;
LABEL_60:
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 + 1;
        }

        goto LABEL_64;
      }
    }

    v26 = a3 != 1;
  }

  else
  {
    v26 = v22;
  }

LABEL_64:
  v27 = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  v142 = v27;
  if (!a4)
  {
    goto LABEL_76;
  }

  if (v27 > 0xA)
  {
    goto LABEL_75;
  }

  if (((1 << v27) & 0xC) != 0)
  {
    v28 = a4 == 1;
    v29 = 2;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x180) != 0)
  {
    v28 = a4 == 1;
    v29 = 7;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x600) == 0)
  {
LABEL_75:
    v27 = a4 != 1;
    goto LABEL_76;
  }

  v28 = a4 == 1;
  v29 = 9;
LABEL_72:
  if (v28)
  {
    v27 = v29;
  }

  else
  {
    v27 = v29 + 1;
  }

LABEL_76:
  v141 = v27;
  v135 = v15;
  if (v23 == v26)
  {
    v157 = &v160;
    v30 = 5;
    v159 = 5;
    if (v23 <= 3)
    {
      v31 = xmmword_1E0970050;
LABEL_79:
      v160 = v31;
      v30 = 4;
      goto LABEL_97;
    }

    v161 = 4;
    v160 = xmmword_1E097BCC0;
  }

  else
  {
    v157 = &v160;
    v159 = 5;
    if (v26 <= 6)
    {
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v31 = xmmword_1E097BC80;
        }

        else
        {
          v31 = xmmword_1E097BC90;
        }
      }

      else if (v26)
      {
        v31 = xmmword_1E097BCB0;
      }

      else
      {
        v31 = xmmword_1E097BCA0;
      }

      goto LABEL_79;
    }

    if (v26 > 8)
    {
      if (v26 == 9)
      {
        v161 = 2;
        v32 = &xmmword_1E097BD10;
      }

      else
      {
        v161 = 0;
        v32 = &xmmword_1E097BCFC;
      }
    }

    else if (v26 == 7)
    {
      v161 = 3;
      v32 = &xmmword_1E097BCE8;
    }

    else
    {
      v161 = 1;
      v32 = &xmmword_1E097BCD4;
    }

    v160 = *v32;
    v30 = 5;
  }

LABEL_97:
  v158 = v30;
  v138 = &v157;
  v139 = &v142;
  v140 = &v141;
  v137[0] = a5;
  v137[1] = &v143;
  v137[2] = &v138;
  v33 = *(*(v143 + 72) + 24);
  v34 = *(v143 + 24);
  v165 = v167;
  HIDWORD(v166) = 5;
  memcpy(v167, &v160, 4 * v30);
  LODWORD(v166) = v30;
  if (v165 != v167)
  {
    free(v165);
  }

  v37 = *(v143 + 72);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    *v38 = *v37;
    if (v39)
    {
      *(v39 + 8) = v37[1];
    }
  }

  v37[3] = v35;
  v37[1] = v35;
  v40 = *v35;
  *v37 = *v35;
  if (v40)
  {
    *(v40 + 8) = v37;
  }

  *v35 = v37;
  v41 = *(v143 + 72);
  v42 = v41 + 4;
  v43 = v41[5];
  if (v43)
  {
    v44 = *v42;
    *v43 = *v42;
    if (v44)
    {
      *(v44 + 8) = v41[5];
    }
  }

  v41[7] = v36;
  v41[5] = v36;
  v45 = *v36;
  v41[4] = *v36;
  if (v45)
  {
    *(v45 + 8) = v42;
  }

  *v36 = v42;
  Context = mlir::Attribute::getContext((v143 + 24));
  v47 = mlir::mps::TensorDataLayoutAttr::get(Context, v26);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 64) = v47;
  v48 = mlir::Attribute::getContext((v143 + 24));
  v49 = mlir::mps::TensorDataLayoutAttr::get(v48, v141);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 112) = v49;
  Strides = mlir::mps::Conv3DOp::getStrides(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 104) = v51;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 72) = v53;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 80) = v55;
  v56 = v143;
  if (v21)
  {
    v57 = v138;
    v58 = &v155;
    __dst = &v155;
    v154 = 0x500000000;
    if (v138 == &__dst)
    {
      v59 = 0;
      goto LABEL_141;
    }

    v59 = *(v138 + 2);
    if (!v59)
    {
      goto LABEL_141;
    }

    if (v59 < 6)
    {
      v60 = *(v138 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v155, *(v138 + 2), 4);
      v60 = *(v57 + 2);
      if (!v60)
      {
LABEL_130:
        LODWORD(v154) = v59;
        v58 = __dst;
        goto LABEL_141;
      }

      v58 = __dst;
    }

    memcpy(v58, *v57, 4 * v60);
    goto LABEL_130;
  }

  v61 = *v139;
  v62 = *v140;
  if (*v139 == *v140)
  {
    v58 = &v155;
    __dst = &v155;
    v59 = 5;
    HIDWORD(v154) = 5;
    if (v61 > 3)
    {
      v156 = 4;
      v155 = xmmword_1E097BCC0;
      goto LABEL_140;
    }

    v63 = xmmword_1E0970050;
  }

  else
  {
    v58 = &v155;
    __dst = &v155;
    HIDWORD(v154) = 5;
    if (v62 > 6)
    {
      if (v62 > 8)
      {
        if (v62 == 9)
        {
          v156 = 2;
          v64 = &xmmword_1E097BD10;
        }

        else
        {
          v156 = 0;
          v64 = &xmmword_1E097BCFC;
        }
      }

      else if (v62 == 7)
      {
        v156 = 3;
        v64 = &xmmword_1E097BCE8;
      }

      else
      {
        v156 = 1;
        v64 = &xmmword_1E097BCD4;
      }

      v155 = *v64;
      v59 = 5;
      goto LABEL_140;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v63 = xmmword_1E097BC80;
      }

      else
      {
        v63 = xmmword_1E097BC90;
      }
    }

    else if (v62)
    {
      v63 = xmmword_1E097BCB0;
    }

    else
    {
      v63 = xmmword_1E097BCA0;
    }
  }

  v155 = v63;
  v59 = 4;
LABEL_140:
  LODWORD(v154) = v59;
LABEL_141:
  v65 = v142;
  if (v21)
  {
    v66 = v26;
  }

  else
  {
    v66 = v141;
  }

  if (v21)
  {
    v65 = v23;
  }

  if (v66 == v65)
  {
    v148 = &v151;
    v67 = 5;
    v150 = 5;
    if (v66 <= 3)
    {
      v68 = xmmword_1E0970050;
LABEL_149:
      v151 = v68;
      v67 = 4;
      goto LABEL_167;
    }

    v152 = 4;
    v151 = xmmword_1E097BCC0;
  }

  else
  {
    v148 = &v151;
    v150 = 5;
    if (v65 <= 6)
    {
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v68 = xmmword_1E097BC80;
        }

        else
        {
          v68 = xmmword_1E097BC90;
        }
      }

      else if (v65)
      {
        v68 = xmmword_1E097BCB0;
      }

      else
      {
        v68 = xmmword_1E097BCA0;
      }

      goto LABEL_149;
    }

    if (v65 > 8)
    {
      if (v65 == 9)
      {
        v152 = 2;
        v69 = &xmmword_1E097BD10;
      }

      else
      {
        v152 = 0;
        v69 = &xmmword_1E097BCFC;
      }
    }

    else if (v65 == 7)
    {
      v152 = 3;
      v69 = &xmmword_1E097BCE8;
    }

    else
    {
      v152 = 1;
      v69 = &xmmword_1E097BCD4;
    }

    v151 = *v69;
    v67 = 5;
  }

LABEL_167:
  v149 = v67;
  if (*(v56 + 36))
  {
    v70 = v56 - 16;
  }

  else
  {
    v70 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0);
  v147 = NextResultAtOffset;
  v72 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v72)
  {
    v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
  }

  else
  {
    v73 = 0;
  }

  v146[0] = v72;
  v146[1] = v73;
  if (mlir::CallOpInterface::getArgOperands(v146))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v146);
    v165 = v167;
    v166 = 0x500000000;
    v76 = v75;
    if (v75 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v75, 8);
    }

    if (v59)
    {
      v77 = 4 * v59;
      do
      {
        v78 = *v58;
        v79 = *(mlir::CallableOpInterface::getArgAttrsAttr(v146) + 8 * v78);
        v80 = v166;
        if (v166 >= HIDWORD(v166))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v166 + 1, 8);
          v80 = v166;
        }

        v165->i64[v80] = v79;
        v81 = v166 + 1;
        LODWORD(v166) = v166 + 1;
        v58 = (v58 + 4);
        v77 -= 4;
      }

      while (v77);
    }

    else
    {
      v81 = v166;
    }

    v162 = v146[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v162, v165, v81);
    if (!v135 || (*(v56 + 46) & 0x80) == 0 || *(v56 + 68) != 3)
    {
      goto LABEL_213;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v56 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v162 = v76;
      v89 = mlir::Attribute::getContext((v56 + 24));
      v90 = mlir::IntegerType::get(v89, 64, 1u);
      v91 = mlir::RankedTensorType::get(&v162, 1, v90, 0);
      if (v91)
      {
        v92 = v91;
        v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
        v91 = v92;
      }

      else
      {
        v93 = 0;
      }

      v117 = *(v56 + 24);
      v162 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v93, v165, 8 * v166, 8, 1, 1);
      v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v117, &v162);
LABEL_207:
      v118 = (v115 - 16);
      v119 = *(v56 + 72);
      v120 = v119 + 8;
      v121 = v119[9];
      if (v121)
      {
        v122 = *v120;
        *v121 = *v120;
        if (v122)
        {
          *(v122 + 8) = v119[9];
        }
      }

      v119[11] = v118;
      v119[9] = v118;
      v123 = *v118;
      v119[8] = *v118;
      if (v123)
      {
        *(v123 + 8) = v120;
      }

      *v118 = v120;
LABEL_213:
      if (v165 != v167)
      {
        free(v165);
      }

      goto LABEL_215;
    }

    v82 = v165;
    v83 = v166;
    v162 = v76;
    v84 = mlir::Attribute::getContext((v56 + 24));
    v85 = mlir::IntegerType::get(v84, 32, 1u);
    v86 = mlir::RankedTensorType::get(&v162, 1, v85, 0);
    v87 = v86;
    if (v86)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
    }

    else
    {
      v88 = 0;
    }

    v94 = *(v56 + 24);
    v162 = v164;
    v163 = 0x500000000;
    v136 = v94;
    if (v83 < 6)
    {
      if (!v83)
      {
        v114 = 0;
        v99 = v164;
LABEL_203:
        LODWORD(v163) = v114 + v83;
        v144 = mlir::DenseElementsAttr::getFromRawBuffer(v87, v88, v99, 4 * (v114 + v83), 4, 1, 1);
        v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v136, &v144);
        if (v162 != v164)
        {
          v116 = v115;
          free(v162);
          v115 = v116;
        }

        goto LABEL_207;
      }

      v98 = 0;
      v99 = v164;
    }

    else
    {
      v95 = v87;
      v96 = v82;
      v97 = v88;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v164, v83, 4);
      v88 = v97;
      v82 = v96;
      v87 = v95;
      v98 = v163;
      v99 = v162;
    }

    v100 = &v99[4 * v98];
    v101 = (v83 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v101 >= 7)
    {
      v104 = v101 + 1;
      v105 = (v101 + 1) & 0x3FFFFFFFFFFFFFF8;
      v102 = (v100 + 4 * v105);
      v103 = &v82->i8[8 * v105];
      v106 = v82 + 2;
      v107 = v100 + 1;
      v108 = v105;
      do
      {
        v110 = v106[-2];
        v109 = v106[-1];
        v112 = *v106;
        v111 = v106[1];
        v106 += 4;
        v107[-1] = vuzp1q_s32(v110, v109);
        *v107 = vuzp1q_s32(v112, v111);
        v107 += 2;
        v108 -= 8;
      }

      while (v108);
      if (v104 == v105)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v102 = v100;
      v103 = v82;
    }

    do
    {
      v113 = *v103;
      v103 += 8;
      v102->i32[0] = v113;
      v102 = (v102 + 4);
    }

    while (v103 != v82 + 8 * v83);
LABEL_202:
    v114 = v163;
    goto LABEL_203;
  }

LABEL_215:
  v124 = *(v56 + 16);
  v125 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v56, v74) + 8);
  a5[3] = v124;
  a5[4] = v125;
  if (NextResultAtOffset != v165)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v165);
    if (mlir::CallOpInterface::getArgOperands(v146))
    {
      v128 = v165;
    }

    else
    {
      v129 = *(DefiningOp + 16);
      v130 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v127) + 8);
      a5[3] = v129;
      a5[4] = v130;
      v131 = *(v56 + 24);
      v162 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v132 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v131, &v165, &v162, &ElementTypeOrSelf);
      if (*(v132 + 36))
      {
        v133 = v132 - 16;
      }

      else
      {
        v133 = 0;
      }

      v128 = mlir::detail::OpResultImpl::getNextResultAtOffset(v133, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v147, v128, DefiningOp);
  }

  if (v148 != &v151)
  {
    free(v148);
  }

  if (__dst != &v155)
  {
    free(__dst);
  }

  if (v157 != &v160)
  {
    free(v157);
  }

  return 1;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertConvolutionInterface<mlir::mps::Conv3DWeightsGradientOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, int a4, mlir::UnitAttr **a5)
{
  v167[5] = *MEMORY[0x1E69E9840];
  v143 = a2;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  if (!a3)
  {
    goto LABEL_11;
  }

  if (StorageType <= 6)
  {
    if (StorageType)
    {
      if (StorageType != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    if (a3 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (StorageType != 8)
  {
    if (StorageType != 7)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (a3 == 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v10 = 0;
  if (!a4)
  {
    return v10;
  }

  if (WeightsLayout > 8)
  {
    if (WeightsLayout == 10)
    {
      goto LABEL_54;
    }

    if (WeightsLayout != 9)
    {
      return v10;
    }
  }

  else if (WeightsLayout != 2)
  {
    if (WeightsLayout != 3)
    {
      return v10;
    }

LABEL_54:
    if (a4 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (a4 != 2)
  {
    return 0;
  }

LABEL_19:
  v11 = *(*(v143 + 48) + 16);
  v15 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v19 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id;
  v20 = v15 && v19;
  v21 = !v15 || !v19;
  v22 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  v23 = v22;
  if (a3)
  {
    if (v22 <= 0xA)
    {
      if (((1 << v22) & 0xC) != 0)
      {
        v24 = a3 == 1;
        v25 = 2;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x180) != 0)
      {
        v24 = a3 == 1;
        v25 = 7;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x600) != 0)
      {
        v24 = a3 == 1;
        v25 = 9;
LABEL_60:
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 + 1;
        }

        goto LABEL_64;
      }
    }

    v26 = a3 != 1;
  }

  else
  {
    v26 = v22;
  }

LABEL_64:
  v27 = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  v142 = v27;
  if (!a4)
  {
    goto LABEL_76;
  }

  if (v27 > 0xA)
  {
    goto LABEL_75;
  }

  if (((1 << v27) & 0xC) != 0)
  {
    v28 = a4 == 1;
    v29 = 2;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x180) != 0)
  {
    v28 = a4 == 1;
    v29 = 7;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x600) == 0)
  {
LABEL_75:
    v27 = a4 != 1;
    goto LABEL_76;
  }

  v28 = a4 == 1;
  v29 = 9;
LABEL_72:
  if (v28)
  {
    v27 = v29;
  }

  else
  {
    v27 = v29 + 1;
  }

LABEL_76:
  v141 = v27;
  v135 = v15;
  if (v23 == v26)
  {
    v157 = &v160;
    v30 = 5;
    v159 = 5;
    if (v23 <= 3)
    {
      v31 = xmmword_1E0970050;
LABEL_79:
      v160 = v31;
      v30 = 4;
      goto LABEL_97;
    }

    v161 = 4;
    v160 = xmmword_1E097BCC0;
  }

  else
  {
    v157 = &v160;
    v159 = 5;
    if (v26 <= 6)
    {
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v31 = xmmword_1E097BC80;
        }

        else
        {
          v31 = xmmword_1E097BC90;
        }
      }

      else if (v26)
      {
        v31 = xmmword_1E097BCB0;
      }

      else
      {
        v31 = xmmword_1E097BCA0;
      }

      goto LABEL_79;
    }

    if (v26 > 8)
    {
      if (v26 == 9)
      {
        v161 = 2;
        v32 = &xmmword_1E097BD10;
      }

      else
      {
        v161 = 0;
        v32 = &xmmword_1E097BCFC;
      }
    }

    else if (v26 == 7)
    {
      v161 = 3;
      v32 = &xmmword_1E097BCE8;
    }

    else
    {
      v161 = 1;
      v32 = &xmmword_1E097BCD4;
    }

    v160 = *v32;
    v30 = 5;
  }

LABEL_97:
  v158 = v30;
  v138 = &v157;
  v139 = &v142;
  v140 = &v141;
  v137[0] = a5;
  v137[1] = &v143;
  v137[2] = &v138;
  v33 = *(*(v143 + 72) + 24);
  v34 = *(v143 + 24);
  v165 = v167;
  HIDWORD(v166) = 5;
  memcpy(v167, &v160, 4 * v30);
  LODWORD(v166) = v30;
  if (v165 != v167)
  {
    free(v165);
  }

  v37 = *(v143 + 72);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    *v38 = *v37;
    if (v39)
    {
      *(v39 + 8) = v37[1];
    }
  }

  v37[3] = v35;
  v37[1] = v35;
  v40 = *v35;
  *v37 = *v35;
  if (v40)
  {
    *(v40 + 8) = v37;
  }

  *v35 = v37;
  v41 = *(v143 + 72);
  v42 = v41 + 4;
  v43 = v41[5];
  if (v43)
  {
    v44 = *v42;
    *v43 = *v42;
    if (v44)
    {
      *(v44 + 8) = v41[5];
    }
  }

  v41[7] = v36;
  v41[5] = v36;
  v45 = *v36;
  v41[4] = *v36;
  if (v45)
  {
    *(v45 + 8) = v42;
  }

  *v36 = v42;
  Context = mlir::Attribute::getContext((v143 + 24));
  v47 = mlir::mps::TensorDataLayoutAttr::get(Context, v26);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 64) = v47;
  v48 = mlir::Attribute::getContext((v143 + 24));
  v49 = mlir::mps::TensorDataLayoutAttr::get(v48, v141);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 112) = v49;
  Strides = mlir::mps::Conv3DOp::getStrides(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 104) = v51;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 72) = v53;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 80) = v55;
  v56 = v143;
  if (v21)
  {
    v57 = v138;
    v58 = &v155;
    __dst = &v155;
    v154 = 0x500000000;
    if (v138 == &__dst)
    {
      v59 = 0;
      goto LABEL_141;
    }

    v59 = *(v138 + 2);
    if (!v59)
    {
      goto LABEL_141;
    }

    if (v59 < 6)
    {
      v60 = *(v138 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v155, *(v138 + 2), 4);
      v60 = *(v57 + 2);
      if (!v60)
      {
LABEL_130:
        LODWORD(v154) = v59;
        v58 = __dst;
        goto LABEL_141;
      }

      v58 = __dst;
    }

    memcpy(v58, *v57, 4 * v60);
    goto LABEL_130;
  }

  v61 = *v139;
  v62 = *v140;
  if (*v139 == *v140)
  {
    v58 = &v155;
    __dst = &v155;
    v59 = 5;
    HIDWORD(v154) = 5;
    if (v61 > 3)
    {
      v156 = 4;
      v155 = xmmword_1E097BCC0;
      goto LABEL_140;
    }

    v63 = xmmword_1E0970050;
  }

  else
  {
    v58 = &v155;
    __dst = &v155;
    HIDWORD(v154) = 5;
    if (v62 > 6)
    {
      if (v62 > 8)
      {
        if (v62 == 9)
        {
          v156 = 2;
          v64 = &xmmword_1E097BD10;
        }

        else
        {
          v156 = 0;
          v64 = &xmmword_1E097BCFC;
        }
      }

      else if (v62 == 7)
      {
        v156 = 3;
        v64 = &xmmword_1E097BCE8;
      }

      else
      {
        v156 = 1;
        v64 = &xmmword_1E097BCD4;
      }

      v155 = *v64;
      v59 = 5;
      goto LABEL_140;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v63 = xmmword_1E097BC80;
      }

      else
      {
        v63 = xmmword_1E097BC90;
      }
    }

    else if (v62)
    {
      v63 = xmmword_1E097BCB0;
    }

    else
    {
      v63 = xmmword_1E097BCA0;
    }
  }

  v155 = v63;
  v59 = 4;
LABEL_140:
  LODWORD(v154) = v59;
LABEL_141:
  v65 = v142;
  if (v21)
  {
    v66 = v26;
  }

  else
  {
    v66 = v141;
  }

  if (v21)
  {
    v65 = v23;
  }

  if (v66 == v65)
  {
    v148 = &v151;
    v67 = 5;
    v150 = 5;
    if (v66 <= 3)
    {
      v68 = xmmword_1E0970050;
LABEL_149:
      v151 = v68;
      v67 = 4;
      goto LABEL_167;
    }

    v152 = 4;
    v151 = xmmword_1E097BCC0;
  }

  else
  {
    v148 = &v151;
    v150 = 5;
    if (v65 <= 6)
    {
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v68 = xmmword_1E097BC80;
        }

        else
        {
          v68 = xmmword_1E097BC90;
        }
      }

      else if (v65)
      {
        v68 = xmmword_1E097BCB0;
      }

      else
      {
        v68 = xmmword_1E097BCA0;
      }

      goto LABEL_149;
    }

    if (v65 > 8)
    {
      if (v65 == 9)
      {
        v152 = 2;
        v69 = &xmmword_1E097BD10;
      }

      else
      {
        v152 = 0;
        v69 = &xmmword_1E097BCFC;
      }
    }

    else if (v65 == 7)
    {
      v152 = 3;
      v69 = &xmmword_1E097BCE8;
    }

    else
    {
      v152 = 1;
      v69 = &xmmword_1E097BCD4;
    }

    v151 = *v69;
    v67 = 5;
  }

LABEL_167:
  v149 = v67;
  if (*(v56 + 36))
  {
    v70 = v56 - 16;
  }

  else
  {
    v70 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0);
  v147 = NextResultAtOffset;
  v72 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v72)
  {
    v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
  }

  else
  {
    v73 = 0;
  }

  v146[0] = v72;
  v146[1] = v73;
  if (mlir::CallOpInterface::getArgOperands(v146))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v146);
    v165 = v167;
    v166 = 0x500000000;
    v76 = v75;
    if (v75 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v75, 8);
    }

    if (v59)
    {
      v77 = 4 * v59;
      do
      {
        v78 = *v58;
        v79 = *(mlir::CallableOpInterface::getArgAttrsAttr(v146) + 8 * v78);
        v80 = v166;
        if (v166 >= HIDWORD(v166))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v166 + 1, 8);
          v80 = v166;
        }

        v165->i64[v80] = v79;
        v81 = v166 + 1;
        LODWORD(v166) = v166 + 1;
        v58 = (v58 + 4);
        v77 -= 4;
      }

      while (v77);
    }

    else
    {
      v81 = v166;
    }

    v162 = v146[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v162, v165, v81);
    if (!v135 || (*(v56 + 46) & 0x80) == 0 || *(v56 + 68) != 3)
    {
      goto LABEL_213;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v56 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v162 = v76;
      v89 = mlir::Attribute::getContext((v56 + 24));
      v90 = mlir::IntegerType::get(v89, 64, 1u);
      v91 = mlir::RankedTensorType::get(&v162, 1, v90, 0);
      if (v91)
      {
        v92 = v91;
        v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
        v91 = v92;
      }

      else
      {
        v93 = 0;
      }

      v117 = *(v56 + 24);
      v162 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v93, v165, 8 * v166, 8, 1, 1);
      v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v117, &v162);
LABEL_207:
      v118 = (v115 - 16);
      v119 = *(v56 + 72);
      v120 = v119 + 8;
      v121 = v119[9];
      if (v121)
      {
        v122 = *v120;
        *v121 = *v120;
        if (v122)
        {
          *(v122 + 8) = v119[9];
        }
      }

      v119[11] = v118;
      v119[9] = v118;
      v123 = *v118;
      v119[8] = *v118;
      if (v123)
      {
        *(v123 + 8) = v120;
      }

      *v118 = v120;
LABEL_213:
      if (v165 != v167)
      {
        free(v165);
      }

      goto LABEL_215;
    }

    v82 = v165;
    v83 = v166;
    v162 = v76;
    v84 = mlir::Attribute::getContext((v56 + 24));
    v85 = mlir::IntegerType::get(v84, 32, 1u);
    v86 = mlir::RankedTensorType::get(&v162, 1, v85, 0);
    v87 = v86;
    if (v86)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
    }

    else
    {
      v88 = 0;
    }

    v94 = *(v56 + 24);
    v162 = v164;
    v163 = 0x500000000;
    v136 = v94;
    if (v83 < 6)
    {
      if (!v83)
      {
        v114 = 0;
        v99 = v164;
LABEL_203:
        LODWORD(v163) = v114 + v83;
        v144 = mlir::DenseElementsAttr::getFromRawBuffer(v87, v88, v99, 4 * (v114 + v83), 4, 1, 1);
        v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v136, &v144);
        if (v162 != v164)
        {
          v116 = v115;
          free(v162);
          v115 = v116;
        }

        goto LABEL_207;
      }

      v98 = 0;
      v99 = v164;
    }

    else
    {
      v95 = v87;
      v96 = v82;
      v97 = v88;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v164, v83, 4);
      v88 = v97;
      v82 = v96;
      v87 = v95;
      v98 = v163;
      v99 = v162;
    }

    v100 = &v99[4 * v98];
    v101 = (v83 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v101 >= 7)
    {
      v104 = v101 + 1;
      v105 = (v101 + 1) & 0x3FFFFFFFFFFFFFF8;
      v102 = (v100 + 4 * v105);
      v103 = &v82->i8[8 * v105];
      v106 = v82 + 2;
      v107 = v100 + 1;
      v108 = v105;
      do
      {
        v110 = v106[-2];
        v109 = v106[-1];
        v112 = *v106;
        v111 = v106[1];
        v106 += 4;
        v107[-1] = vuzp1q_s32(v110, v109);
        *v107 = vuzp1q_s32(v112, v111);
        v107 += 2;
        v108 -= 8;
      }

      while (v108);
      if (v104 == v105)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v102 = v100;
      v103 = v82;
    }

    do
    {
      v113 = *v103;
      v103 += 8;
      v102->i32[0] = v113;
      v102 = (v102 + 4);
    }

    while (v103 != v82 + 8 * v83);
LABEL_202:
    v114 = v163;
    goto LABEL_203;
  }

LABEL_215:
  v124 = *(v56 + 16);
  v125 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v56, v74) + 8);
  a5[3] = v124;
  a5[4] = v125;
  if (NextResultAtOffset != v165)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v165);
    if (mlir::CallOpInterface::getArgOperands(v146))
    {
      v128 = v165;
    }

    else
    {
      v129 = *(DefiningOp + 16);
      v130 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v127) + 8);
      a5[3] = v129;
      a5[4] = v130;
      v131 = *(v56 + 24);
      v162 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v132 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v131, &v165, &v162, &ElementTypeOrSelf);
      if (*(v132 + 36))
      {
        v133 = v132 - 16;
      }

      else
      {
        v133 = 0;
      }

      v128 = mlir::detail::OpResultImpl::getNextResultAtOffset(v133, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v147, v128, DefiningOp);
  }

  if (v148 != &v151)
  {
    free(v148);
  }

  if (__dst != &v155)
  {
    free(__dst);
  }

  if (v157 != &v160)
  {
    free(v157);
  }

  return 1;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertConvolutionInterface<mlir::mps::DepthwiseConv2DOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, int a4, mlir::UnitAttr **a5)
{
  v167[5] = *MEMORY[0x1E69E9840];
  v143 = a2;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v143);
  if (!a3)
  {
    goto LABEL_11;
  }

  if (StorageType <= 6)
  {
    if (StorageType)
    {
      if (StorageType != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    if (a3 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (StorageType != 8)
  {
    if (StorageType != 7)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (a3 == 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v10 = 0;
  if (!a4)
  {
    return v10;
  }

  if (PaddingStyle > 8)
  {
    if (PaddingStyle == 10)
    {
      goto LABEL_54;
    }

    if (PaddingStyle != 9)
    {
      return v10;
    }
  }

  else if (PaddingStyle != 2)
  {
    if (PaddingStyle != 3)
    {
      return v10;
    }

LABEL_54:
    if (a4 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (a4 != 2)
  {
    return 0;
  }

LABEL_19:
  v11 = *(*(v143 + 48) + 16);
  v15 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v19 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id;
  v20 = v15 && v19;
  v21 = !v15 || !v19;
  v22 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  v23 = v22;
  if (a3)
  {
    if (v22 <= 0xA)
    {
      if (((1 << v22) & 0xC) != 0)
      {
        v24 = a3 == 1;
        v25 = 2;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x180) != 0)
      {
        v24 = a3 == 1;
        v25 = 7;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x600) != 0)
      {
        v24 = a3 == 1;
        v25 = 9;
LABEL_60:
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 + 1;
        }

        goto LABEL_64;
      }
    }

    v26 = a3 != 1;
  }

  else
  {
    v26 = v22;
  }

LABEL_64:
  v27 = mlir::mps::StencilOp::getPaddingStyle(&v143);
  v142 = v27;
  if (!a4)
  {
    goto LABEL_76;
  }

  if (v27 > 0xA)
  {
    goto LABEL_75;
  }

  if (((1 << v27) & 0xC) != 0)
  {
    v28 = a4 == 1;
    v29 = 2;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x180) != 0)
  {
    v28 = a4 == 1;
    v29 = 7;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x600) == 0)
  {
LABEL_75:
    v27 = a4 != 1;
    goto LABEL_76;
  }

  v28 = a4 == 1;
  v29 = 9;
LABEL_72:
  if (v28)
  {
    v27 = v29;
  }

  else
  {
    v27 = v29 + 1;
  }

LABEL_76:
  v141 = v27;
  v135 = v15;
  if (v23 == v26)
  {
    v157 = &v160;
    v30 = 5;
    v159 = 5;
    if (v23 <= 3)
    {
      v31 = xmmword_1E0970050;
LABEL_79:
      v160 = v31;
      v30 = 4;
      goto LABEL_97;
    }

    v161 = 4;
    v160 = xmmword_1E097BCC0;
  }

  else
  {
    v157 = &v160;
    v159 = 5;
    if (v26 <= 6)
    {
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v31 = xmmword_1E097BC80;
        }

        else
        {
          v31 = xmmword_1E097BC90;
        }
      }

      else if (v26)
      {
        v31 = xmmword_1E097BCB0;
      }

      else
      {
        v31 = xmmword_1E097BCA0;
      }

      goto LABEL_79;
    }

    if (v26 > 8)
    {
      if (v26 == 9)
      {
        v161 = 2;
        v32 = &xmmword_1E097BD10;
      }

      else
      {
        v161 = 0;
        v32 = &xmmword_1E097BCFC;
      }
    }

    else if (v26 == 7)
    {
      v161 = 3;
      v32 = &xmmword_1E097BCE8;
    }

    else
    {
      v161 = 1;
      v32 = &xmmword_1E097BCD4;
    }

    v160 = *v32;
    v30 = 5;
  }

LABEL_97:
  v158 = v30;
  v138 = &v157;
  v139 = &v142;
  v140 = &v141;
  v137[0] = a5;
  v137[1] = &v143;
  v137[2] = &v138;
  v33 = *(*(v143 + 72) + 24);
  v34 = *(v143 + 24);
  v165 = v167;
  HIDWORD(v166) = 5;
  memcpy(v167, &v160, 4 * v30);
  LODWORD(v166) = v30;
  if (v165 != v167)
  {
    free(v165);
  }

  v37 = *(v143 + 72);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    *v38 = *v37;
    if (v39)
    {
      *(v39 + 8) = v37[1];
    }
  }

  v37[3] = v35;
  v37[1] = v35;
  v40 = *v35;
  *v37 = *v35;
  if (v40)
  {
    *(v40 + 8) = v37;
  }

  *v35 = v37;
  v41 = *(v143 + 72);
  v42 = v41 + 4;
  v43 = v41[5];
  if (v43)
  {
    v44 = *v42;
    *v43 = *v42;
    if (v44)
    {
      *(v44 + 8) = v41[5];
    }
  }

  v41[7] = v36;
  v41[5] = v36;
  v45 = *v36;
  v41[4] = *v36;
  if (v45)
  {
    *(v45 + 8) = v42;
  }

  *v36 = v42;
  Context = mlir::Attribute::getContext((v143 + 24));
  v47 = mlir::mps::TensorDataLayoutAttr::get(Context, v26);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 64) = v47;
  v48 = mlir::Attribute::getContext((v143 + 24));
  v49 = mlir::mps::TensorDataLayoutAttr::get(v48, v141);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 104) = v49;
  Strides = mlir::mps::ColToImOp::getStrides(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 96) = v51;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 72) = v53;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 80) = v55;
  v56 = v143;
  if (v21)
  {
    v57 = v138;
    v58 = &v155;
    __dst = &v155;
    v154 = 0x500000000;
    if (v138 == &__dst)
    {
      v59 = 0;
      goto LABEL_141;
    }

    v59 = *(v138 + 2);
    if (!v59)
    {
      goto LABEL_141;
    }

    if (v59 < 6)
    {
      v60 = *(v138 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v155, *(v138 + 2), 4);
      v60 = *(v57 + 2);
      if (!v60)
      {
LABEL_130:
        LODWORD(v154) = v59;
        v58 = __dst;
        goto LABEL_141;
      }

      v58 = __dst;
    }

    memcpy(v58, *v57, 4 * v60);
    goto LABEL_130;
  }

  v61 = *v139;
  v62 = *v140;
  if (*v139 == *v140)
  {
    v58 = &v155;
    __dst = &v155;
    v59 = 5;
    HIDWORD(v154) = 5;
    if (v61 > 3)
    {
      v156 = 4;
      v155 = xmmword_1E097BCC0;
      goto LABEL_140;
    }

    v63 = xmmword_1E0970050;
  }

  else
  {
    v58 = &v155;
    __dst = &v155;
    HIDWORD(v154) = 5;
    if (v62 > 6)
    {
      if (v62 > 8)
      {
        if (v62 == 9)
        {
          v156 = 2;
          v64 = &xmmword_1E097BD10;
        }

        else
        {
          v156 = 0;
          v64 = &xmmword_1E097BCFC;
        }
      }

      else if (v62 == 7)
      {
        v156 = 3;
        v64 = &xmmword_1E097BCE8;
      }

      else
      {
        v156 = 1;
        v64 = &xmmword_1E097BCD4;
      }

      v155 = *v64;
      v59 = 5;
      goto LABEL_140;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v63 = xmmword_1E097BC80;
      }

      else
      {
        v63 = xmmword_1E097BC90;
      }
    }

    else if (v62)
    {
      v63 = xmmword_1E097BCB0;
    }

    else
    {
      v63 = xmmword_1E097BCA0;
    }
  }

  v155 = v63;
  v59 = 4;
LABEL_140:
  LODWORD(v154) = v59;
LABEL_141:
  v65 = v142;
  if (v21)
  {
    v66 = v26;
  }

  else
  {
    v66 = v141;
  }

  if (v21)
  {
    v65 = v23;
  }

  if (v66 == v65)
  {
    v148 = &v151;
    v67 = 5;
    v150 = 5;
    if (v66 <= 3)
    {
      v68 = xmmword_1E0970050;
LABEL_149:
      v151 = v68;
      v67 = 4;
      goto LABEL_167;
    }

    v152 = 4;
    v151 = xmmword_1E097BCC0;
  }

  else
  {
    v148 = &v151;
    v150 = 5;
    if (v65 <= 6)
    {
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v68 = xmmword_1E097BC80;
        }

        else
        {
          v68 = xmmword_1E097BC90;
        }
      }

      else if (v65)
      {
        v68 = xmmword_1E097BCB0;
      }

      else
      {
        v68 = xmmword_1E097BCA0;
      }

      goto LABEL_149;
    }

    if (v65 > 8)
    {
      if (v65 == 9)
      {
        v152 = 2;
        v69 = &xmmword_1E097BD10;
      }

      else
      {
        v152 = 0;
        v69 = &xmmword_1E097BCFC;
      }
    }

    else if (v65 == 7)
    {
      v152 = 3;
      v69 = &xmmword_1E097BCE8;
    }

    else
    {
      v152 = 1;
      v69 = &xmmword_1E097BCD4;
    }

    v151 = *v69;
    v67 = 5;
  }

LABEL_167:
  v149 = v67;
  if (*(v56 + 36))
  {
    v70 = v56 - 16;
  }

  else
  {
    v70 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0);
  v147 = NextResultAtOffset;
  v72 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v72)
  {
    v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
  }

  else
  {
    v73 = 0;
  }

  v146[0] = v72;
  v146[1] = v73;
  if (mlir::CallOpInterface::getArgOperands(v146))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v146);
    v165 = v167;
    v166 = 0x500000000;
    v76 = v75;
    if (v75 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v75, 8);
    }

    if (v59)
    {
      v77 = 4 * v59;
      do
      {
        v78 = *v58;
        v79 = *(mlir::CallableOpInterface::getArgAttrsAttr(v146) + 8 * v78);
        v80 = v166;
        if (v166 >= HIDWORD(v166))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v166 + 1, 8);
          v80 = v166;
        }

        v165->i64[v80] = v79;
        v81 = v166 + 1;
        LODWORD(v166) = v166 + 1;
        v58 = (v58 + 4);
        v77 -= 4;
      }

      while (v77);
    }

    else
    {
      v81 = v166;
    }

    v162 = v146[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v162, v165, v81);
    if (!v135 || (*(v56 + 46) & 0x80) == 0 || *(v56 + 68) != 3)
    {
      goto LABEL_213;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v56 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v162 = v76;
      v89 = mlir::Attribute::getContext((v56 + 24));
      v90 = mlir::IntegerType::get(v89, 64, 1u);
      v91 = mlir::RankedTensorType::get(&v162, 1, v90, 0);
      if (v91)
      {
        v92 = v91;
        v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
        v91 = v92;
      }

      else
      {
        v93 = 0;
      }

      v117 = *(v56 + 24);
      v162 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v93, v165, 8 * v166, 8, 1, 1);
      v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v117, &v162);
LABEL_207:
      v118 = (v115 - 16);
      v119 = *(v56 + 72);
      v120 = v119 + 8;
      v121 = v119[9];
      if (v121)
      {
        v122 = *v120;
        *v121 = *v120;
        if (v122)
        {
          *(v122 + 8) = v119[9];
        }
      }

      v119[11] = v118;
      v119[9] = v118;
      v123 = *v118;
      v119[8] = *v118;
      if (v123)
      {
        *(v123 + 8) = v120;
      }

      *v118 = v120;
LABEL_213:
      if (v165 != v167)
      {
        free(v165);
      }

      goto LABEL_215;
    }

    v82 = v165;
    v83 = v166;
    v162 = v76;
    v84 = mlir::Attribute::getContext((v56 + 24));
    v85 = mlir::IntegerType::get(v84, 32, 1u);
    v86 = mlir::RankedTensorType::get(&v162, 1, v85, 0);
    v87 = v86;
    if (v86)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
    }

    else
    {
      v88 = 0;
    }

    v94 = *(v56 + 24);
    v162 = v164;
    v163 = 0x500000000;
    v136 = v94;
    if (v83 < 6)
    {
      if (!v83)
      {
        v114 = 0;
        v99 = v164;
LABEL_203:
        LODWORD(v163) = v114 + v83;
        v144 = mlir::DenseElementsAttr::getFromRawBuffer(v87, v88, v99, 4 * (v114 + v83), 4, 1, 1);
        v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v136, &v144);
        if (v162 != v164)
        {
          v116 = v115;
          free(v162);
          v115 = v116;
        }

        goto LABEL_207;
      }

      v98 = 0;
      v99 = v164;
    }

    else
    {
      v95 = v87;
      v96 = v82;
      v97 = v88;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v164, v83, 4);
      v88 = v97;
      v82 = v96;
      v87 = v95;
      v98 = v163;
      v99 = v162;
    }

    v100 = &v99[4 * v98];
    v101 = (v83 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v101 >= 7)
    {
      v104 = v101 + 1;
      v105 = (v101 + 1) & 0x3FFFFFFFFFFFFFF8;
      v102 = (v100 + 4 * v105);
      v103 = &v82->i8[8 * v105];
      v106 = v82 + 2;
      v107 = v100 + 1;
      v108 = v105;
      do
      {
        v110 = v106[-2];
        v109 = v106[-1];
        v112 = *v106;
        v111 = v106[1];
        v106 += 4;
        v107[-1] = vuzp1q_s32(v110, v109);
        *v107 = vuzp1q_s32(v112, v111);
        v107 += 2;
        v108 -= 8;
      }

      while (v108);
      if (v104 == v105)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v102 = v100;
      v103 = v82;
    }

    do
    {
      v113 = *v103;
      v103 += 8;
      v102->i32[0] = v113;
      v102 = (v102 + 4);
    }

    while (v103 != v82 + 8 * v83);
LABEL_202:
    v114 = v163;
    goto LABEL_203;
  }

LABEL_215:
  v124 = *(v56 + 16);
  v125 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v56, v74) + 8);
  a5[3] = v124;
  a5[4] = v125;
  if (NextResultAtOffset != v165)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v165);
    if (mlir::CallOpInterface::getArgOperands(v146))
    {
      v128 = v165;
    }

    else
    {
      v129 = *(DefiningOp + 16);
      v130 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v127) + 8);
      a5[3] = v129;
      a5[4] = v130;
      v131 = *(v56 + 24);
      v162 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v132 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v131, &v165, &v162, &ElementTypeOrSelf);
      if (*(v132 + 36))
      {
        v133 = v132 - 16;
      }

      else
      {
        v133 = 0;
      }

      v128 = mlir::detail::OpResultImpl::getNextResultAtOffset(v133, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v147, v128, DefiningOp);
  }

  if (v148 != &v151)
  {
    free(v148);
  }

  if (__dst != &v155)
  {
    free(__dst);
  }

  if (v157 != &v160)
  {
    free(v157);
  }

  return 1;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertConvolutionInterface<mlir::mps::DepthwiseConv2DDataGradientOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, int a4, mlir::UnitAttr **a5)
{
  v167[5] = *MEMORY[0x1E69E9840];
  v143 = a2;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v143);
  if (!a3)
  {
    goto LABEL_11;
  }

  if (StorageType <= 6)
  {
    if (StorageType)
    {
      if (StorageType != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    if (a3 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (StorageType != 8)
  {
    if (StorageType != 7)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (a3 == 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v10 = 0;
  if (!a4)
  {
    return v10;
  }

  if (PaddingStyle > 8)
  {
    if (PaddingStyle == 10)
    {
      goto LABEL_54;
    }

    if (PaddingStyle != 9)
    {
      return v10;
    }
  }

  else if (PaddingStyle != 2)
  {
    if (PaddingStyle != 3)
    {
      return v10;
    }

LABEL_54:
    if (a4 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (a4 != 2)
  {
    return 0;
  }

LABEL_19:
  v11 = *(*(v143 + 48) + 16);
  v15 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v19 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id;
  v20 = v15 && v19;
  v21 = !v15 || !v19;
  v22 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  v23 = v22;
  if (a3)
  {
    if (v22 <= 0xA)
    {
      if (((1 << v22) & 0xC) != 0)
      {
        v24 = a3 == 1;
        v25 = 2;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x180) != 0)
      {
        v24 = a3 == 1;
        v25 = 7;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x600) != 0)
      {
        v24 = a3 == 1;
        v25 = 9;
LABEL_60:
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 + 1;
        }

        goto LABEL_64;
      }
    }

    v26 = a3 != 1;
  }

  else
  {
    v26 = v22;
  }

LABEL_64:
  v27 = mlir::mps::StencilOp::getPaddingStyle(&v143);
  v142 = v27;
  if (!a4)
  {
    goto LABEL_76;
  }

  if (v27 > 0xA)
  {
    goto LABEL_75;
  }

  if (((1 << v27) & 0xC) != 0)
  {
    v28 = a4 == 1;
    v29 = 2;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x180) != 0)
  {
    v28 = a4 == 1;
    v29 = 7;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x600) == 0)
  {
LABEL_75:
    v27 = a4 != 1;
    goto LABEL_76;
  }

  v28 = a4 == 1;
  v29 = 9;
LABEL_72:
  if (v28)
  {
    v27 = v29;
  }

  else
  {
    v27 = v29 + 1;
  }

LABEL_76:
  v141 = v27;
  v135 = v15;
  if (v23 == v26)
  {
    v157 = &v160;
    v30 = 5;
    v159 = 5;
    if (v23 <= 3)
    {
      v31 = xmmword_1E0970050;
LABEL_79:
      v160 = v31;
      v30 = 4;
      goto LABEL_97;
    }

    v161 = 4;
    v160 = xmmword_1E097BCC0;
  }

  else
  {
    v157 = &v160;
    v159 = 5;
    if (v26 <= 6)
    {
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v31 = xmmword_1E097BC80;
        }

        else
        {
          v31 = xmmword_1E097BC90;
        }
      }

      else if (v26)
      {
        v31 = xmmword_1E097BCB0;
      }

      else
      {
        v31 = xmmword_1E097BCA0;
      }

      goto LABEL_79;
    }

    if (v26 > 8)
    {
      if (v26 == 9)
      {
        v161 = 2;
        v32 = &xmmword_1E097BD10;
      }

      else
      {
        v161 = 0;
        v32 = &xmmword_1E097BCFC;
      }
    }

    else if (v26 == 7)
    {
      v161 = 3;
      v32 = &xmmword_1E097BCE8;
    }

    else
    {
      v161 = 1;
      v32 = &xmmword_1E097BCD4;
    }

    v160 = *v32;
    v30 = 5;
  }

LABEL_97:
  v158 = v30;
  v138 = &v157;
  v139 = &v142;
  v140 = &v141;
  v137[0] = a5;
  v137[1] = &v143;
  v137[2] = &v138;
  v33 = *(*(v143 + 72) + 24);
  v34 = *(v143 + 24);
  v165 = v167;
  HIDWORD(v166) = 5;
  memcpy(v167, &v160, 4 * v30);
  LODWORD(v166) = v30;
  if (v165 != v167)
  {
    free(v165);
  }

  v37 = *(v143 + 72);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    *v38 = *v37;
    if (v39)
    {
      *(v39 + 8) = v37[1];
    }
  }

  v37[3] = v35;
  v37[1] = v35;
  v40 = *v35;
  *v37 = *v35;
  if (v40)
  {
    *(v40 + 8) = v37;
  }

  *v35 = v37;
  v41 = *(v143 + 72);
  v42 = v41 + 4;
  v43 = v41[5];
  if (v43)
  {
    v44 = *v42;
    *v43 = *v42;
    if (v44)
    {
      *(v44 + 8) = v41[5];
    }
  }

  v41[7] = v36;
  v41[5] = v36;
  v45 = *v36;
  v41[4] = *v36;
  if (v45)
  {
    *(v45 + 8) = v42;
  }

  *v36 = v42;
  Context = mlir::Attribute::getContext((v143 + 24));
  v47 = mlir::mps::TensorDataLayoutAttr::get(Context, v26);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 64) = v47;
  v48 = mlir::Attribute::getContext((v143 + 24));
  v49 = mlir::mps::TensorDataLayoutAttr::get(v48, v141);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 104) = v49;
  Strides = mlir::mps::ColToImOp::getStrides(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 96) = v51;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 72) = v53;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 80) = v55;
  v56 = v143;
  if (v21)
  {
    v57 = v138;
    v58 = &v155;
    __dst = &v155;
    v154 = 0x500000000;
    if (v138 == &__dst)
    {
      v59 = 0;
      goto LABEL_141;
    }

    v59 = *(v138 + 2);
    if (!v59)
    {
      goto LABEL_141;
    }

    if (v59 < 6)
    {
      v60 = *(v138 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v155, *(v138 + 2), 4);
      v60 = *(v57 + 2);
      if (!v60)
      {
LABEL_130:
        LODWORD(v154) = v59;
        v58 = __dst;
        goto LABEL_141;
      }

      v58 = __dst;
    }

    memcpy(v58, *v57, 4 * v60);
    goto LABEL_130;
  }

  v61 = *v139;
  v62 = *v140;
  if (*v139 == *v140)
  {
    v58 = &v155;
    __dst = &v155;
    v59 = 5;
    HIDWORD(v154) = 5;
    if (v61 > 3)
    {
      v156 = 4;
      v155 = xmmword_1E097BCC0;
      goto LABEL_140;
    }

    v63 = xmmword_1E0970050;
  }

  else
  {
    v58 = &v155;
    __dst = &v155;
    HIDWORD(v154) = 5;
    if (v62 > 6)
    {
      if (v62 > 8)
      {
        if (v62 == 9)
        {
          v156 = 2;
          v64 = &xmmword_1E097BD10;
        }

        else
        {
          v156 = 0;
          v64 = &xmmword_1E097BCFC;
        }
      }

      else if (v62 == 7)
      {
        v156 = 3;
        v64 = &xmmword_1E097BCE8;
      }

      else
      {
        v156 = 1;
        v64 = &xmmword_1E097BCD4;
      }

      v155 = *v64;
      v59 = 5;
      goto LABEL_140;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v63 = xmmword_1E097BC80;
      }

      else
      {
        v63 = xmmword_1E097BC90;
      }
    }

    else if (v62)
    {
      v63 = xmmword_1E097BCB0;
    }

    else
    {
      v63 = xmmword_1E097BCA0;
    }
  }

  v155 = v63;
  v59 = 4;
LABEL_140:
  LODWORD(v154) = v59;
LABEL_141:
  v65 = v142;
  if (v21)
  {
    v66 = v26;
  }

  else
  {
    v66 = v141;
  }

  if (v21)
  {
    v65 = v23;
  }

  if (v66 == v65)
  {
    v148 = &v151;
    v67 = 5;
    v150 = 5;
    if (v66 <= 3)
    {
      v68 = xmmword_1E0970050;
LABEL_149:
      v151 = v68;
      v67 = 4;
      goto LABEL_167;
    }

    v152 = 4;
    v151 = xmmword_1E097BCC0;
  }

  else
  {
    v148 = &v151;
    v150 = 5;
    if (v65 <= 6)
    {
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v68 = xmmword_1E097BC80;
        }

        else
        {
          v68 = xmmword_1E097BC90;
        }
      }

      else if (v65)
      {
        v68 = xmmword_1E097BCB0;
      }

      else
      {
        v68 = xmmword_1E097BCA0;
      }

      goto LABEL_149;
    }

    if (v65 > 8)
    {
      if (v65 == 9)
      {
        v152 = 2;
        v69 = &xmmword_1E097BD10;
      }

      else
      {
        v152 = 0;
        v69 = &xmmword_1E097BCFC;
      }
    }

    else if (v65 == 7)
    {
      v152 = 3;
      v69 = &xmmword_1E097BCE8;
    }

    else
    {
      v152 = 1;
      v69 = &xmmword_1E097BCD4;
    }

    v151 = *v69;
    v67 = 5;
  }

LABEL_167:
  v149 = v67;
  if (*(v56 + 36))
  {
    v70 = v56 - 16;
  }

  else
  {
    v70 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0);
  v147 = NextResultAtOffset;
  v72 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v72)
  {
    v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
  }

  else
  {
    v73 = 0;
  }

  v146[0] = v72;
  v146[1] = v73;
  if (mlir::CallOpInterface::getArgOperands(v146))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v146);
    v165 = v167;
    v166 = 0x500000000;
    v76 = v75;
    if (v75 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v75, 8);
    }

    if (v59)
    {
      v77 = 4 * v59;
      do
      {
        v78 = *v58;
        v79 = *(mlir::CallableOpInterface::getArgAttrsAttr(v146) + 8 * v78);
        v80 = v166;
        if (v166 >= HIDWORD(v166))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v166 + 1, 8);
          v80 = v166;
        }

        v165->i64[v80] = v79;
        v81 = v166 + 1;
        LODWORD(v166) = v166 + 1;
        v58 = (v58 + 4);
        v77 -= 4;
      }

      while (v77);
    }

    else
    {
      v81 = v166;
    }

    v162 = v146[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v162, v165, v81);
    if (!v135 || (*(v56 + 46) & 0x80) == 0 || *(v56 + 68) != 3)
    {
      goto LABEL_213;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v56 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v162 = v76;
      v89 = mlir::Attribute::getContext((v56 + 24));
      v90 = mlir::IntegerType::get(v89, 64, 1u);
      v91 = mlir::RankedTensorType::get(&v162, 1, v90, 0);
      if (v91)
      {
        v92 = v91;
        v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
        v91 = v92;
      }

      else
      {
        v93 = 0;
      }

      v117 = *(v56 + 24);
      v162 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v93, v165, 8 * v166, 8, 1, 1);
      v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v117, &v162);
LABEL_207:
      v118 = (v115 - 16);
      v119 = *(v56 + 72);
      v120 = v119 + 8;
      v121 = v119[9];
      if (v121)
      {
        v122 = *v120;
        *v121 = *v120;
        if (v122)
        {
          *(v122 + 8) = v119[9];
        }
      }

      v119[11] = v118;
      v119[9] = v118;
      v123 = *v118;
      v119[8] = *v118;
      if (v123)
      {
        *(v123 + 8) = v120;
      }

      *v118 = v120;
LABEL_213:
      if (v165 != v167)
      {
        free(v165);
      }

      goto LABEL_215;
    }

    v82 = v165;
    v83 = v166;
    v162 = v76;
    v84 = mlir::Attribute::getContext((v56 + 24));
    v85 = mlir::IntegerType::get(v84, 32, 1u);
    v86 = mlir::RankedTensorType::get(&v162, 1, v85, 0);
    v87 = v86;
    if (v86)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
    }

    else
    {
      v88 = 0;
    }

    v94 = *(v56 + 24);
    v162 = v164;
    v163 = 0x500000000;
    v136 = v94;
    if (v83 < 6)
    {
      if (!v83)
      {
        v114 = 0;
        v99 = v164;
LABEL_203:
        LODWORD(v163) = v114 + v83;
        v144 = mlir::DenseElementsAttr::getFromRawBuffer(v87, v88, v99, 4 * (v114 + v83), 4, 1, 1);
        v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v136, &v144);
        if (v162 != v164)
        {
          v116 = v115;
          free(v162);
          v115 = v116;
        }

        goto LABEL_207;
      }

      v98 = 0;
      v99 = v164;
    }

    else
    {
      v95 = v87;
      v96 = v82;
      v97 = v88;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v164, v83, 4);
      v88 = v97;
      v82 = v96;
      v87 = v95;
      v98 = v163;
      v99 = v162;
    }

    v100 = &v99[4 * v98];
    v101 = (v83 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v101 >= 7)
    {
      v104 = v101 + 1;
      v105 = (v101 + 1) & 0x3FFFFFFFFFFFFFF8;
      v102 = (v100 + 4 * v105);
      v103 = &v82->i8[8 * v105];
      v106 = v82 + 2;
      v107 = v100 + 1;
      v108 = v105;
      do
      {
        v110 = v106[-2];
        v109 = v106[-1];
        v112 = *v106;
        v111 = v106[1];
        v106 += 4;
        v107[-1] = vuzp1q_s32(v110, v109);
        *v107 = vuzp1q_s32(v112, v111);
        v107 += 2;
        v108 -= 8;
      }

      while (v108);
      if (v104 == v105)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v102 = v100;
      v103 = v82;
    }

    do
    {
      v113 = *v103;
      v103 += 8;
      v102->i32[0] = v113;
      v102 = (v102 + 4);
    }

    while (v103 != v82 + 8 * v83);
LABEL_202:
    v114 = v163;
    goto LABEL_203;
  }

LABEL_215:
  v124 = *(v56 + 16);
  v125 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v56, v74) + 8);
  a5[3] = v124;
  a5[4] = v125;
  if (NextResultAtOffset != v165)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v165);
    if (mlir::CallOpInterface::getArgOperands(v146))
    {
      v128 = v165;
    }

    else
    {
      v129 = *(DefiningOp + 16);
      v130 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v127) + 8);
      a5[3] = v129;
      a5[4] = v130;
      v131 = *(v56 + 24);
      v162 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v132 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v131, &v165, &v162, &ElementTypeOrSelf);
      if (*(v132 + 36))
      {
        v133 = v132 - 16;
      }

      else
      {
        v133 = 0;
      }

      v128 = mlir::detail::OpResultImpl::getNextResultAtOffset(v133, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v147, v128, DefiningOp);
  }

  if (v148 != &v151)
  {
    free(v148);
  }

  if (__dst != &v155)
  {
    free(__dst);
  }

  if (v157 != &v160)
  {
    free(v157);
  }

  return 1;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertConvolutionInterface<mlir::mps::DepthwiseConv2DWeightsGradientOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, int a4, mlir::UnitAttr **a5)
{
  v167[5] = *MEMORY[0x1E69E9840];
  v143 = a2;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v143);
  if (!a3)
  {
    goto LABEL_11;
  }

  if (StorageType <= 6)
  {
    if (StorageType)
    {
      if (StorageType != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    if (a3 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (StorageType != 8)
  {
    if (StorageType != 7)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (a3 == 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v10 = 0;
  if (!a4)
  {
    return v10;
  }

  if (PaddingStyle > 8)
  {
    if (PaddingStyle == 10)
    {
      goto LABEL_54;
    }

    if (PaddingStyle != 9)
    {
      return v10;
    }
  }

  else if (PaddingStyle != 2)
  {
    if (PaddingStyle != 3)
    {
      return v10;
    }

LABEL_54:
    if (a4 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (a4 != 2)
  {
    return 0;
  }

LABEL_19:
  v11 = *(*(v143 + 48) + 16);
  v15 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v19 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id;
  v20 = v15 && v19;
  v21 = !v15 || !v19;
  v22 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  v23 = v22;
  if (a3)
  {
    if (v22 <= 0xA)
    {
      if (((1 << v22) & 0xC) != 0)
      {
        v24 = a3 == 1;
        v25 = 2;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x180) != 0)
      {
        v24 = a3 == 1;
        v25 = 7;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x600) != 0)
      {
        v24 = a3 == 1;
        v25 = 9;
LABEL_60:
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 + 1;
        }

        goto LABEL_64;
      }
    }

    v26 = a3 != 1;
  }

  else
  {
    v26 = v22;
  }

LABEL_64:
  v27 = mlir::mps::StencilOp::getPaddingStyle(&v143);
  v142 = v27;
  if (!a4)
  {
    goto LABEL_76;
  }

  if (v27 > 0xA)
  {
    goto LABEL_75;
  }

  if (((1 << v27) & 0xC) != 0)
  {
    v28 = a4 == 1;
    v29 = 2;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x180) != 0)
  {
    v28 = a4 == 1;
    v29 = 7;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x600) == 0)
  {
LABEL_75:
    v27 = a4 != 1;
    goto LABEL_76;
  }

  v28 = a4 == 1;
  v29 = 9;
LABEL_72:
  if (v28)
  {
    v27 = v29;
  }

  else
  {
    v27 = v29 + 1;
  }

LABEL_76:
  v141 = v27;
  v135 = v15;
  if (v23 == v26)
  {
    v157 = &v160;
    v30 = 5;
    v159 = 5;
    if (v23 <= 3)
    {
      v31 = xmmword_1E0970050;
LABEL_79:
      v160 = v31;
      v30 = 4;
      goto LABEL_97;
    }

    v161 = 4;
    v160 = xmmword_1E097BCC0;
  }

  else
  {
    v157 = &v160;
    v159 = 5;
    if (v26 <= 6)
    {
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v31 = xmmword_1E097BC80;
        }

        else
        {
          v31 = xmmword_1E097BC90;
        }
      }

      else if (v26)
      {
        v31 = xmmword_1E097BCB0;
      }

      else
      {
        v31 = xmmword_1E097BCA0;
      }

      goto LABEL_79;
    }

    if (v26 > 8)
    {
      if (v26 == 9)
      {
        v161 = 2;
        v32 = &xmmword_1E097BD10;
      }

      else
      {
        v161 = 0;
        v32 = &xmmword_1E097BCFC;
      }
    }

    else if (v26 == 7)
    {
      v161 = 3;
      v32 = &xmmword_1E097BCE8;
    }

    else
    {
      v161 = 1;
      v32 = &xmmword_1E097BCD4;
    }

    v160 = *v32;
    v30 = 5;
  }

LABEL_97:
  v158 = v30;
  v138 = &v157;
  v139 = &v142;
  v140 = &v141;
  v137[0] = a5;
  v137[1] = &v143;
  v137[2] = &v138;
  v33 = *(*(v143 + 72) + 24);
  v34 = *(v143 + 24);
  v165 = v167;
  HIDWORD(v166) = 5;
  memcpy(v167, &v160, 4 * v30);
  LODWORD(v166) = v30;
  if (v165 != v167)
  {
    free(v165);
  }

  v37 = *(v143 + 72);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    *v38 = *v37;
    if (v39)
    {
      *(v39 + 8) = v37[1];
    }
  }

  v37[3] = v35;
  v37[1] = v35;
  v40 = *v35;
  *v37 = *v35;
  if (v40)
  {
    *(v40 + 8) = v37;
  }

  *v35 = v37;
  v41 = *(v143 + 72);
  v42 = v41 + 4;
  v43 = v41[5];
  if (v43)
  {
    v44 = *v42;
    *v43 = *v42;
    if (v44)
    {
      *(v44 + 8) = v41[5];
    }
  }

  v41[7] = v36;
  v41[5] = v36;
  v45 = *v36;
  v41[4] = *v36;
  if (v45)
  {
    *(v45 + 8) = v42;
  }

  *v36 = v42;
  Context = mlir::Attribute::getContext((v143 + 24));
  v47 = mlir::mps::TensorDataLayoutAttr::get(Context, v26);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 64) = v47;
  v48 = mlir::Attribute::getContext((v143 + 24));
  v49 = mlir::mps::TensorDataLayoutAttr::get(v48, v141);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 104) = v49;
  Strides = mlir::mps::ColToImOp::getStrides(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 96) = v51;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 72) = v53;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 80) = v55;
  v56 = v143;
  if (v21)
  {
    v57 = v138;
    v58 = &v155;
    __dst = &v155;
    v154 = 0x500000000;
    if (v138 == &__dst)
    {
      v59 = 0;
      goto LABEL_141;
    }

    v59 = *(v138 + 2);
    if (!v59)
    {
      goto LABEL_141;
    }

    if (v59 < 6)
    {
      v60 = *(v138 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v155, *(v138 + 2), 4);
      v60 = *(v57 + 2);
      if (!v60)
      {
LABEL_130:
        LODWORD(v154) = v59;
        v58 = __dst;
        goto LABEL_141;
      }

      v58 = __dst;
    }

    memcpy(v58, *v57, 4 * v60);
    goto LABEL_130;
  }

  v61 = *v139;
  v62 = *v140;
  if (*v139 == *v140)
  {
    v58 = &v155;
    __dst = &v155;
    v59 = 5;
    HIDWORD(v154) = 5;
    if (v61 > 3)
    {
      v156 = 4;
      v155 = xmmword_1E097BCC0;
      goto LABEL_140;
    }

    v63 = xmmword_1E0970050;
  }

  else
  {
    v58 = &v155;
    __dst = &v155;
    HIDWORD(v154) = 5;
    if (v62 > 6)
    {
      if (v62 > 8)
      {
        if (v62 == 9)
        {
          v156 = 2;
          v64 = &xmmword_1E097BD10;
        }

        else
        {
          v156 = 0;
          v64 = &xmmword_1E097BCFC;
        }
      }

      else if (v62 == 7)
      {
        v156 = 3;
        v64 = &xmmword_1E097BCE8;
      }

      else
      {
        v156 = 1;
        v64 = &xmmword_1E097BCD4;
      }

      v155 = *v64;
      v59 = 5;
      goto LABEL_140;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v63 = xmmword_1E097BC80;
      }

      else
      {
        v63 = xmmword_1E097BC90;
      }
    }

    else if (v62)
    {
      v63 = xmmword_1E097BCB0;
    }

    else
    {
      v63 = xmmword_1E097BCA0;
    }
  }

  v155 = v63;
  v59 = 4;
LABEL_140:
  LODWORD(v154) = v59;
LABEL_141:
  v65 = v142;
  if (v21)
  {
    v66 = v26;
  }

  else
  {
    v66 = v141;
  }

  if (v21)
  {
    v65 = v23;
  }

  if (v66 == v65)
  {
    v148 = &v151;
    v67 = 5;
    v150 = 5;
    if (v66 <= 3)
    {
      v68 = xmmword_1E0970050;
LABEL_149:
      v151 = v68;
      v67 = 4;
      goto LABEL_167;
    }

    v152 = 4;
    v151 = xmmword_1E097BCC0;
  }

  else
  {
    v148 = &v151;
    v150 = 5;
    if (v65 <= 6)
    {
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v68 = xmmword_1E097BC80;
        }

        else
        {
          v68 = xmmword_1E097BC90;
        }
      }

      else if (v65)
      {
        v68 = xmmword_1E097BCB0;
      }

      else
      {
        v68 = xmmword_1E097BCA0;
      }

      goto LABEL_149;
    }

    if (v65 > 8)
    {
      if (v65 == 9)
      {
        v152 = 2;
        v69 = &xmmword_1E097BD10;
      }

      else
      {
        v152 = 0;
        v69 = &xmmword_1E097BCFC;
      }
    }

    else if (v65 == 7)
    {
      v152 = 3;
      v69 = &xmmword_1E097BCE8;
    }

    else
    {
      v152 = 1;
      v69 = &xmmword_1E097BCD4;
    }

    v151 = *v69;
    v67 = 5;
  }

LABEL_167:
  v149 = v67;
  if (*(v56 + 36))
  {
    v70 = v56 - 16;
  }

  else
  {
    v70 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0);
  v147 = NextResultAtOffset;
  v72 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v72)
  {
    v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
  }

  else
  {
    v73 = 0;
  }

  v146[0] = v72;
  v146[1] = v73;
  if (mlir::CallOpInterface::getArgOperands(v146))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v146);
    v165 = v167;
    v166 = 0x500000000;
    v76 = v75;
    if (v75 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v75, 8);
    }

    if (v59)
    {
      v77 = 4 * v59;
      do
      {
        v78 = *v58;
        v79 = *(mlir::CallableOpInterface::getArgAttrsAttr(v146) + 8 * v78);
        v80 = v166;
        if (v166 >= HIDWORD(v166))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v166 + 1, 8);
          v80 = v166;
        }

        v165->i64[v80] = v79;
        v81 = v166 + 1;
        LODWORD(v166) = v166 + 1;
        v58 = (v58 + 4);
        v77 -= 4;
      }

      while (v77);
    }

    else
    {
      v81 = v166;
    }

    v162 = v146[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v162, v165, v81);
    if (!v135 || (*(v56 + 46) & 0x80) == 0 || *(v56 + 68) != 3)
    {
      goto LABEL_213;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v56 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v162 = v76;
      v89 = mlir::Attribute::getContext((v56 + 24));
      v90 = mlir::IntegerType::get(v89, 64, 1u);
      v91 = mlir::RankedTensorType::get(&v162, 1, v90, 0);
      if (v91)
      {
        v92 = v91;
        v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
        v91 = v92;
      }

      else
      {
        v93 = 0;
      }

      v117 = *(v56 + 24);
      v162 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v93, v165, 8 * v166, 8, 1, 1);
      v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v117, &v162);
LABEL_207:
      v118 = (v115 - 16);
      v119 = *(v56 + 72);
      v120 = v119 + 8;
      v121 = v119[9];
      if (v121)
      {
        v122 = *v120;
        *v121 = *v120;
        if (v122)
        {
          *(v122 + 8) = v119[9];
        }
      }

      v119[11] = v118;
      v119[9] = v118;
      v123 = *v118;
      v119[8] = *v118;
      if (v123)
      {
        *(v123 + 8) = v120;
      }

      *v118 = v120;
LABEL_213:
      if (v165 != v167)
      {
        free(v165);
      }

      goto LABEL_215;
    }

    v82 = v165;
    v83 = v166;
    v162 = v76;
    v84 = mlir::Attribute::getContext((v56 + 24));
    v85 = mlir::IntegerType::get(v84, 32, 1u);
    v86 = mlir::RankedTensorType::get(&v162, 1, v85, 0);
    v87 = v86;
    if (v86)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
    }

    else
    {
      v88 = 0;
    }

    v94 = *(v56 + 24);
    v162 = v164;
    v163 = 0x500000000;
    v136 = v94;
    if (v83 < 6)
    {
      if (!v83)
      {
        v114 = 0;
        v99 = v164;
LABEL_203:
        LODWORD(v163) = v114 + v83;
        v144 = mlir::DenseElementsAttr::getFromRawBuffer(v87, v88, v99, 4 * (v114 + v83), 4, 1, 1);
        v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v136, &v144);
        if (v162 != v164)
        {
          v116 = v115;
          free(v162);
          v115 = v116;
        }

        goto LABEL_207;
      }

      v98 = 0;
      v99 = v164;
    }

    else
    {
      v95 = v87;
      v96 = v82;
      v97 = v88;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v164, v83, 4);
      v88 = v97;
      v82 = v96;
      v87 = v95;
      v98 = v163;
      v99 = v162;
    }

    v100 = &v99[4 * v98];
    v101 = (v83 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v101 >= 7)
    {
      v104 = v101 + 1;
      v105 = (v101 + 1) & 0x3FFFFFFFFFFFFFF8;
      v102 = (v100 + 4 * v105);
      v103 = &v82->i8[8 * v105];
      v106 = v82 + 2;
      v107 = v100 + 1;
      v108 = v105;
      do
      {
        v110 = v106[-2];
        v109 = v106[-1];
        v112 = *v106;
        v111 = v106[1];
        v106 += 4;
        v107[-1] = vuzp1q_s32(v110, v109);
        *v107 = vuzp1q_s32(v112, v111);
        v107 += 2;
        v108 -= 8;
      }

      while (v108);
      if (v104 == v105)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v102 = v100;
      v103 = v82;
    }

    do
    {
      v113 = *v103;
      v103 += 8;
      v102->i32[0] = v113;
      v102 = (v102 + 4);
    }

    while (v103 != v82 + 8 * v83);
LABEL_202:
    v114 = v163;
    goto LABEL_203;
  }

LABEL_215:
  v124 = *(v56 + 16);
  v125 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v56, v74) + 8);
  a5[3] = v124;
  a5[4] = v125;
  if (NextResultAtOffset != v165)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v165);
    if (mlir::CallOpInterface::getArgOperands(v146))
    {
      v128 = v165;
    }

    else
    {
      v129 = *(DefiningOp + 16);
      v130 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v127) + 8);
      a5[3] = v129;
      a5[4] = v130;
      v131 = *(v56 + 24);
      v162 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v132 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v131, &v165, &v162, &ElementTypeOrSelf);
      if (*(v132 + 36))
      {
        v133 = v132 - 16;
      }

      else
      {
        v133 = 0;
      }

      v128 = mlir::detail::OpResultImpl::getNextResultAtOffset(v133, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v147, v128, DefiningOp);
  }

  if (v148 != &v151)
  {
    free(v148);
  }

  if (__dst != &v155)
  {
    free(__dst);
  }

  if (v157 != &v160)
  {
    free(v157);
  }

  return 1;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertDepthwise3DConvolutionInterface<mlir::mps::DepthwiseConv3DOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, uint64_t a4, mlir::UnitAttr **a5)
{
  v181 = *MEMORY[0x1E69E9840];
  v164 = a2;
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

  v163[0] = v9;
  v163[1] = v10;
  v11 = (*(*(v8 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v162[0] = v11;
  v162[1] = v12;
  if (*(a2 + 36))
  {
    v13 = a2 - 16;
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

  v161[0] = v14;
  v161[1] = v15;
  v16 = *(*(a2 + 48) + 16);
  v20 = v16 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v23 = !v20 || v16 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id;
  v24 = v163;
  if (v23 || v16 == &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id)
  {
    if ((mlir::CallOpInterface::getArgOperands(v163) & 1) == 0)
    {
      v24 = v161;
      if (!mlir::CallOpInterface::getArgOperands(v161))
      {
        return 0;
      }
    }

    v26 = 0;
    v27 = 1;
  }

  else
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(v163);
    if ((ArgOperands & 1) == 0)
    {
      v24 = v162;
      if ((mlir::CallOpInterface::getArgOperands(v162) & 1) == 0)
      {
        return 0;
      }
    }

    v27 = 0;
    v26 = 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v24);
  v160 = v29;
  if (v29 == -1)
  {
    return 0;
  }

  ChannelAxis = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v164);
  PositiveAxis = mlir::getPositiveAxis(ChannelAxis, v160);
  v32 = 0;
  v33 = v160;
  v158 = PositiveAxis - (v160 != 4);
  v159 = PositiveAxis;
  if (!a3)
  {
    return v32;
  }

  v34 = v160 & 0xFFFFFFFE;
  if ((v160 & 0xFFFFFFFE) != 4)
  {
    return v32;
  }

  if (v160 == 4)
  {
    v35 = PositiveAxis + 1;
  }

  else
  {
    v35 = PositiveAxis;
  }

  if (a3 == 1)
  {
    v34 = 1;
  }

  if (v35 == v34)
  {
    return 0;
  }

  if (a3 == 1)
  {
    v37 = v160 != 4;
  }

  else
  {
    v37 = v160 - 1;
  }

  if (a3 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 3;
  }

  v156 = v38;
  v157 = v37;
  v151 = &v160;
  v152 = &v159;
  v153 = &v157;
  v154 = &v158;
  v155 = &v156;
  v150[0] = a5;
  v150[1] = &v164;
  v150[2] = &v151;
  v39 = *(*(v164 + 72) + 24);
  v40 = *(v164 + 24);
  v178 = v180;
  HIDWORD(v179) = 5;
  v41 = PositiveAxis;
  bzero(v180, 4 * v160);
  v42 = 0;
  v43 = 0;
  LODWORD(v179) = v33;
  do
  {
    if (v43 == v41)
    {
      ++v43;
    }

    if (v42 == v37)
    {
      ++v42;
    }

    v180[v42++] = v43++;
  }

  while (v43 != v33 && v42 != v33);
  v180[v37] = v41;
  if (v178 != v180)
  {
    free(v178);
  }

  v47 = *(v164 + 72);
  v48 = v47[1];
  if (v48)
  {
    v49 = *v47;
    *v48 = *v47;
    if (v49)
    {
      *(v49 + 8) = v47[1];
    }
  }

  v47[3] = v45;
  v47[1] = v45;
  v50 = *v45;
  *v47 = *v45;
  if (v50)
  {
    *(v50 + 8) = v47;
  }

  *v45 = v47;
  v51 = *(v164 + 72);
  v52 = v51 + 4;
  v53 = v51[5];
  if (v53)
  {
    v54 = *v52;
    *v53 = *v52;
    if (v54)
    {
      *(v54 + 8) = v51[5];
    }
  }

  v51[7] = v46;
  v51[5] = v46;
  v55 = *v46;
  v51[4] = *v46;
  if (v55)
  {
    *(v55 + 8) = v52;
  }

  *v46 = v52;
  Context = mlir::Attribute::getContext((v164 + 24));
  v57 = mlir::IntegerType::get(Context, 32, 1u);
  v58 = mlir::IntegerAttr::get(v57, v157);
  *(v164 + 16 * ((*(v164 + 44) >> 23) & 1) + 64) = v58;
  v59 = v164;
  v60 = "pEEE";
  if (v27)
  {
    v61 = *v151;
    v62 = *v152;
    v63 = *v153;
    v64 = v174;
    v172 = v174;
    v173 = 0x500000000;
    if (!v61)
    {
      *(v174 + v63) = v62;
      v69 = v173;
      goto LABEL_114;
    }

    if (v61 < 6)
    {
      v65 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v172, v174, v61, 4);
      v60 = "N4mlir23RegisteredOperationName5ModelINS_6memref7StoreOpEEE" + 55;
      v65 = v173;
      v64 = v172;
    }

    if (v61 != v65)
    {
      bzero(&v64[v65], 4 * (v61 - v65));
      v60 = "pEEE";
    }

    v70 = 0;
    v71 = 0;
    LODWORD(v173) = v61;
    do
    {
      if (v71 == v62)
      {
        ++v71;
      }

      if (v70 == v63)
      {
        ++v70;
      }

      v64[v70++] = v71++;
    }

    while (v71 != v61 && v70 != v61);
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v62 = *v154;
    v63 = *v155;
    v64 = v174;
    v172 = v174;
    v174[0] = 0;
    v174[1] = 0;
    v173 = 0x500000004;
    do
    {
      if (v67 == v62)
      {
        ++v67;
      }

      if (v66 == v63)
      {
        ++v66;
      }

      *(v174 + v66++) = v67++;
    }

    while (v67 != 4 && v66 != 4);
  }

  v64[v63] = v62;
  v69 = v173;
  if (v27)
  {
LABEL_114:
    v73 = v159;
    v74 = v160;
    v75 = v157;
    v76 = v171;
    v169 = v171;
    v170 = *(v60 + 394);
    if (v160)
    {
      if (v160 < 6)
      {
        v77 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v171, v160, 4);
        v77 = v170;
        v76 = v169;
      }

      if (v74 != v77)
      {
        bzero(v76 + 4 * v77, 4 * (v74 - v77));
      }

      v81 = 0;
      v82 = 0;
      LODWORD(v170) = v74;
      do
      {
        if (v82 == v75)
        {
          ++v82;
        }

        if (v81 == v73)
        {
          ++v81;
        }

        *(v76 + v81++) = v82++;
      }

      while (v82 != v74 && v81 != v74);
    }

    goto LABEL_141;
  }

  v78 = 0;
  v79 = 0;
  v75 = v156;
  v73 = v158;
  v76 = v171;
  v169 = v171;
  v171[0] = 0;
  v171[1] = 0;
  v170 = 0x500000004;
  do
  {
    if (v79 == v75)
    {
      ++v79;
    }

    if (v78 == v73)
    {
      ++v78;
    }

    *(v171 + v78++) = v79++;
  }

  while (v79 != 4 && v78 != 4);
LABEL_141:
  *(v76 + v73) = v75;
  v84 = v170;
  if (*(v59 + 36))
  {
    v85 = v59 - 16;
  }

  else
  {
    v85 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v85, 0);
  v168 = NextResultAtOffset;
  v87 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v87)
  {
    v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v87 + 8);
  }

  else
  {
    v88 = 0;
  }

  v167[0] = v87;
  v167[1] = v88;
  if (mlir::CallOpInterface::getArgOperands(v167))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v167);
    v178 = v180;
    v179 = 0x500000000;
    v91 = v90;
    if (v90 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v180, v90, 8);
    }

    if (v69)
    {
      v92 = 4 * v69;
      do
      {
        v93 = *v64;
        v94 = *(mlir::CallableOpInterface::getArgAttrsAttr(v167) + 8 * v93);
        v95 = v179;
        if (v179 >= HIDWORD(v179))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v180, v179 + 1, 8);
          v95 = v179;
        }

        v178->i64[v95] = v94;
        v96 = v179 + 1;
        LODWORD(v179) = v179 + 1;
        ++v64;
        v92 -= 4;
      }

      while (v92);
    }

    else
    {
      v96 = v179;
    }

    v175 = v167[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v175, v178, v96);
    if (!v20 || (*(v59 + 46) & 0x80) == 0 || *(v59 + 68) != 3)
    {
      goto LABEL_187;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v59 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v175 = v91;
      v104 = mlir::Attribute::getContext((v59 + 24));
      v105 = mlir::IntegerType::get(v104, 64, 1u);
      v106 = mlir::RankedTensorType::get(&v175, 1, v105, 0);
      if (v106)
      {
        v107 = v106;
        v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v106 + 8);
        v106 = v107;
      }

      else
      {
        v108 = 0;
      }

      v133 = *(v59 + 24);
      v175 = mlir::DenseElementsAttr::getFromRawBuffer(v106, v108, v178, 8 * v179, 8, 1, 1);
      v131 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v133, &v175);
LABEL_181:
      v134 = (v131 - 16);
      v135 = *(v59 + 72);
      v136 = v135 + 8;
      v137 = v135[9];
      if (v137)
      {
        v138 = *v136;
        *v137 = *v136;
        if (v138)
        {
          *(v138 + 8) = v135[9];
        }
      }

      v135[11] = v134;
      v135[9] = v134;
      v139 = *v134;
      v135[8] = *v134;
      if (v139)
      {
        *(v139 + 8) = v136;
      }

      *v134 = v136;
LABEL_187:
      if (v178 != v180)
      {
        free(v178);
      }

      goto LABEL_189;
    }

    v97 = v178;
    v98 = v179;
    v175 = v91;
    v99 = mlir::Attribute::getContext((v59 + 24));
    v100 = mlir::IntegerType::get(v99, 32, 1u);
    v101 = mlir::RankedTensorType::get(&v175, 1, v100, 0);
    v102 = v101;
    if (v101)
    {
      v103 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v101 + 8);
    }

    else
    {
      v103 = 0;
    }

    v109 = *(v59 + 24);
    v175 = v177;
    v176 = 0x500000000;
    if (v98 < 6)
    {
      if (!v98)
      {
        v130 = 0;
        v115 = v177;
LABEL_177:
        LODWORD(v176) = v130 + v98;
        v165 = mlir::DenseElementsAttr::getFromRawBuffer(v102, v103, v115, 4 * (v130 + v98), 4, 1, 1);
        v131 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v109, &v165);
        if (v175 != v177)
        {
          v132 = v131;
          free(v175);
          v131 = v132;
        }

        goto LABEL_181;
      }

      v114 = 0;
      v115 = v177;
    }

    else
    {
      v110 = v102;
      v111 = v97;
      v112 = v109;
      v113 = v103;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v175, v177, v98, 4);
      v103 = v113;
      v109 = v112;
      v97 = v111;
      v102 = v110;
      v114 = v176;
      v115 = v175;
    }

    v116 = &v115[4 * v114];
    v117 = (v98 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v117 >= 7)
    {
      v120 = v117 + 1;
      v121 = (v117 + 1) & 0x3FFFFFFFFFFFFFF8;
      v118 = (v116 + 4 * v121);
      v119 = &v97->i8[8 * v121];
      v122 = v97 + 2;
      v123 = v116 + 1;
      v124 = v121;
      do
      {
        v126 = v122[-2];
        v125 = v122[-1];
        v128 = *v122;
        v127 = v122[1];
        v122 += 4;
        v123[-1] = vuzp1q_s32(v126, v125);
        *v123 = vuzp1q_s32(v128, v127);
        v123 += 2;
        v124 -= 8;
      }

      while (v124);
      if (v120 == v121)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v118 = v116;
      v119 = v97;
    }

    do
    {
      v129 = *v119;
      v119 += 8;
      v118->i32[0] = v129;
      v118 = (v118 + 4);
    }

    while (v119 != v97 + 8 * v98);
LABEL_176:
    v130 = v176;
    goto LABEL_177;
  }

LABEL_189:
  v140 = *(v59 + 16);
  v141 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v59, v89) + 8);
  a5[3] = v140;
  a5[4] = v141;
  if (NextResultAtOffset != v178)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v178);
    if (mlir::CallOpInterface::getArgOperands(v167))
    {
      v144 = v178;
    }

    else
    {
      v145 = *(DefiningOp + 16);
      v146 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v143) + 8);
      a5[3] = v145;
      a5[4] = v146;
      v147 = *(v59 + 24);
      v175 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v148 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v147, &v178, &v175, &ElementTypeOrSelf);
      if (*(v148 + 36))
      {
        v149 = v148 - 16;
      }

      else
      {
        v149 = 0;
      }

      v144 = mlir::detail::OpResultImpl::getNextResultAtOffset(v149, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v168, v144, DefiningOp);
  }

  if (v169 != v171)
  {
    free(v169);
  }

  if (v172 != v174)
  {
    free(v172);
  }

  return 1;
}

uint64_t mlir::mps::anonymous namespace::ConvertDepthwise3DConvolutionInterface<mlir::mps::DepthwiseConv3DOp>::convertLayout(mlir::Operation *,mlir::mps::LayoutConversionType,mlir::mps::LayoutConversionType,mlir::RewriterBase &)const::{lambda(mlir::Value,BOOL)#1}::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v27[3] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(**(a1 + 8) + 24);
  if (a3)
  {
    v8 = **v6;
    v9 = *v6[1];
    v10 = *v6[2];
    v11 = v27;
    v25 = v27;
    v26 = 0x500000000;
    if (!v8)
    {
      goto LABEL_29;
    }

    v12 = v7;
    v13 = v5;
    if (v8 < 6)
    {
      v14 = 0;
      v15 = v8;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v8, 4);
      v14 = v26;
      v11 = v25;
      v15 = v8 - v26;
      if (v8 == v26)
      {
LABEL_19:
        v20 = 0;
        v21 = 0;
        LODWORD(v26) = v8;
        v5 = v13;
        v7 = v12;
        do
        {
          if (v21 == v9)
          {
            ++v21;
          }

          if (v20 == v10)
          {
            ++v20;
          }

          *(v11 + v20++) = v21++;
        }

        while (v21 != v8 && v20 != v8);
        goto LABEL_29;
      }
    }

    v19 = v11;
    bzero(v11 + 4 * v14, 4 * v15);
    v11 = v19;
    goto LABEL_19;
  }

  v16 = 0;
  v17 = 0;
  v9 = *v6[3];
  v10 = *v6[4];
  v11 = v27;
  v25 = v27;
  v27[0] = 0;
  v27[1] = 0;
  v26 = 0x500000004;
  do
  {
    if (v17 == v9)
    {
      ++v17;
    }

    if (v16 == v10)
    {
      ++v16;
    }

    *(v27 + v16++) = v17++;
  }

  while (v17 != 4 && v16 != 4);
LABEL_29:
  *(v11 + v10) = v9;
  if (v25 != v27)
  {
    v24 = result;
    free(v25);
    return v24;
  }

  return result;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertDepthwise3DConvolutionInterface<mlir::mps::DepthwiseConv3DDataGradientOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, uint64_t a4, mlir::UnitAttr **a5)
{
  v181 = *MEMORY[0x1E69E9840];
  v164 = a2;
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

  v163[0] = v9;
  v163[1] = v10;
  v11 = (*(*(v8 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v162[0] = v11;
  v162[1] = v12;
  if (*(a2 + 36))
  {
    v13 = a2 - 16;
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

  v161[0] = v14;
  v161[1] = v15;
  v16 = *(*(a2 + 48) + 16);
  v20 = v16 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v23 = !v20 || v16 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id;
  v24 = v163;
  if (v23 || v16 == &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id)
  {
    if ((mlir::CallOpInterface::getArgOperands(v163) & 1) == 0)
    {
      v24 = v161;
      if (!mlir::CallOpInterface::getArgOperands(v161))
      {
        return 0;
      }
    }

    v26 = 0;
    v27 = 1;
  }

  else
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(v163);
    if ((ArgOperands & 1) == 0)
    {
      v24 = v162;
      if ((mlir::CallOpInterface::getArgOperands(v162) & 1) == 0)
      {
        return 0;
      }
    }

    v27 = 0;
    v26 = 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v24);
  v160 = v29;
  if (v29 == -1)
  {
    return 0;
  }

  ChannelAxis = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v164);
  PositiveAxis = mlir::getPositiveAxis(ChannelAxis, v160);
  v32 = 0;
  v33 = v160;
  v158 = PositiveAxis - (v160 != 4);
  v159 = PositiveAxis;
  if (!a3)
  {
    return v32;
  }

  v34 = v160 & 0xFFFFFFFE;
  if ((v160 & 0xFFFFFFFE) != 4)
  {
    return v32;
  }

  if (v160 == 4)
  {
    v35 = PositiveAxis + 1;
  }

  else
  {
    v35 = PositiveAxis;
  }

  if (a3 == 1)
  {
    v34 = 1;
  }

  if (v35 == v34)
  {
    return 0;
  }

  if (a3 == 1)
  {
    v37 = v160 != 4;
  }

  else
  {
    v37 = v160 - 1;
  }

  if (a3 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 3;
  }

  v156 = v38;
  v157 = v37;
  v151 = &v160;
  v152 = &v159;
  v153 = &v157;
  v154 = &v158;
  v155 = &v156;
  v150[0] = a5;
  v150[1] = &v164;
  v150[2] = &v151;
  v39 = *(*(v164 + 72) + 24);
  v40 = *(v164 + 24);
  v178 = v180;
  HIDWORD(v179) = 5;
  v41 = PositiveAxis;
  bzero(v180, 4 * v160);
  v42 = 0;
  v43 = 0;
  LODWORD(v179) = v33;
  do
  {
    if (v43 == v41)
    {
      ++v43;
    }

    if (v42 == v37)
    {
      ++v42;
    }

    v180[v42++] = v43++;
  }

  while (v43 != v33 && v42 != v33);
  v180[v37] = v41;
  if (v178 != v180)
  {
    free(v178);
  }

  v47 = *(v164 + 72);
  v48 = v47[1];
  if (v48)
  {
    v49 = *v47;
    *v48 = *v47;
    if (v49)
    {
      *(v49 + 8) = v47[1];
    }
  }

  v47[3] = v45;
  v47[1] = v45;
  v50 = *v45;
  *v47 = *v45;
  if (v50)
  {
    *(v50 + 8) = v47;
  }

  *v45 = v47;
  v51 = *(v164 + 72);
  v52 = v51 + 4;
  v53 = v51[5];
  if (v53)
  {
    v54 = *v52;
    *v53 = *v52;
    if (v54)
    {
      *(v54 + 8) = v51[5];
    }
  }

  v51[7] = v46;
  v51[5] = v46;
  v55 = *v46;
  v51[4] = *v46;
  if (v55)
  {
    *(v55 + 8) = v52;
  }

  *v46 = v52;
  Context = mlir::Attribute::getContext((v164 + 24));
  v57 = mlir::IntegerType::get(Context, 32, 1u);
  v58 = mlir::IntegerAttr::get(v57, v157);
  *(v164 + 16 * ((*(v164 + 44) >> 23) & 1) + 64) = v58;
  v59 = v164;
  v60 = "pEEE";
  if (v27)
  {
    v61 = *v151;
    v62 = *v152;
    v63 = *v153;
    v64 = v174;
    v172 = v174;
    v173 = 0x500000000;
    if (!v61)
    {
      *(v174 + v63) = v62;
      v69 = v173;
      goto LABEL_114;
    }

    if (v61 < 6)
    {
      v65 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v172, v174, v61, 4);
      v60 = "N4mlir23RegisteredOperationName5ModelINS_6memref7StoreOpEEE" + 55;
      v65 = v173;
      v64 = v172;
    }

    if (v61 != v65)
    {
      bzero(&v64[v65], 4 * (v61 - v65));
      v60 = "pEEE";
    }

    v70 = 0;
    v71 = 0;
    LODWORD(v173) = v61;
    do
    {
      if (v71 == v62)
      {
        ++v71;
      }

      if (v70 == v63)
      {
        ++v70;
      }

      v64[v70++] = v71++;
    }

    while (v71 != v61 && v70 != v61);
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v62 = *v154;
    v63 = *v155;
    v64 = v174;
    v172 = v174;
    v174[0] = 0;
    v174[1] = 0;
    v173 = 0x500000004;
    do
    {
      if (v67 == v62)
      {
        ++v67;
      }

      if (v66 == v63)
      {
        ++v66;
      }

      *(v174 + v66++) = v67++;
    }

    while (v67 != 4 && v66 != 4);
  }

  v64[v63] = v62;
  v69 = v173;
  if (v27)
  {
LABEL_114:
    v73 = v159;
    v74 = v160;
    v75 = v157;
    v76 = v171;
    v169 = v171;
    v170 = *(v60 + 394);
    if (v160)
    {
      if (v160 < 6)
      {
        v77 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v171, v160, 4);
        v77 = v170;
        v76 = v169;
      }

      if (v74 != v77)
      {
        bzero(v76 + 4 * v77, 4 * (v74 - v77));
      }

      v81 = 0;
      v82 = 0;
      LODWORD(v170) = v74;
      do
      {
        if (v82 == v75)
        {
          ++v82;
        }

        if (v81 == v73)
        {
          ++v81;
        }

        *(v76 + v81++) = v82++;
      }

      while (v82 != v74 && v81 != v74);
    }

    goto LABEL_141;
  }

  v78 = 0;
  v79 = 0;
  v75 = v156;
  v73 = v158;
  v76 = v171;
  v169 = v171;
  v171[0] = 0;
  v171[1] = 0;
  v170 = 0x500000004;
  do
  {
    if (v79 == v75)
    {
      ++v79;
    }

    if (v78 == v73)
    {
      ++v78;
    }

    *(v171 + v78++) = v79++;
  }

  while (v79 != 4 && v78 != 4);
LABEL_141:
  *(v76 + v73) = v75;
  v84 = v170;
  if (*(v59 + 36))
  {
    v85 = v59 - 16;
  }

  else
  {
    v85 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v85, 0);
  v168 = NextResultAtOffset;
  v87 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v87)
  {
    v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v87 + 8);
  }

  else
  {
    v88 = 0;
  }

  v167[0] = v87;
  v167[1] = v88;
  if (mlir::CallOpInterface::getArgOperands(v167))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v167);
    v178 = v180;
    v179 = 0x500000000;
    v91 = v90;
    if (v90 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v180, v90, 8);
    }

    if (v69)
    {
      v92 = 4 * v69;
      do
      {
        v93 = *v64;
        v94 = *(mlir::CallableOpInterface::getArgAttrsAttr(v167) + 8 * v93);
        v95 = v179;
        if (v179 >= HIDWORD(v179))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v180, v179 + 1, 8);
          v95 = v179;
        }

        v178->i64[v95] = v94;
        v96 = v179 + 1;
        LODWORD(v179) = v179 + 1;
        ++v64;
        v92 -= 4;
      }

      while (v92);
    }

    else
    {
      v96 = v179;
    }

    v175 = v167[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v175, v178, v96);
    if (!v20 || (*(v59 + 46) & 0x80) == 0 || *(v59 + 68) != 3)
    {
      goto LABEL_187;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v59 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v175 = v91;
      v104 = mlir::Attribute::getContext((v59 + 24));
      v105 = mlir::IntegerType::get(v104, 64, 1u);
      v106 = mlir::RankedTensorType::get(&v175, 1, v105, 0);
      if (v106)
      {
        v107 = v106;
        v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v106 + 8);
        v106 = v107;
      }

      else
      {
        v108 = 0;
      }

      v133 = *(v59 + 24);
      v175 = mlir::DenseElementsAttr::getFromRawBuffer(v106, v108, v178, 8 * v179, 8, 1, 1);
      v131 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v133, &v175);
LABEL_181:
      v134 = (v131 - 16);
      v135 = *(v59 + 72);
      v136 = v135 + 8;
      v137 = v135[9];
      if (v137)
      {
        v138 = *v136;
        *v137 = *v136;
        if (v138)
        {
          *(v138 + 8) = v135[9];
        }
      }

      v135[11] = v134;
      v135[9] = v134;
      v139 = *v134;
      v135[8] = *v134;
      if (v139)
      {
        *(v139 + 8) = v136;
      }

      *v134 = v136;
LABEL_187:
      if (v178 != v180)
      {
        free(v178);
      }

      goto LABEL_189;
    }

    v97 = v178;
    v98 = v179;
    v175 = v91;
    v99 = mlir::Attribute::getContext((v59 + 24));
    v100 = mlir::IntegerType::get(v99, 32, 1u);
    v101 = mlir::RankedTensorType::get(&v175, 1, v100, 0);
    v102 = v101;
    if (v101)
    {
      v103 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v101 + 8);
    }

    else
    {
      v103 = 0;
    }

    v109 = *(v59 + 24);
    v175 = v177;
    v176 = 0x500000000;
    if (v98 < 6)
    {
      if (!v98)
      {
        v130 = 0;
        v115 = v177;
LABEL_177:
        LODWORD(v176) = v130 + v98;
        v165 = mlir::DenseElementsAttr::getFromRawBuffer(v102, v103, v115, 4 * (v130 + v98), 4, 1, 1);
        v131 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v109, &v165);
        if (v175 != v177)
        {
          v132 = v131;
          free(v175);
          v131 = v132;
        }

        goto LABEL_181;
      }

      v114 = 0;
      v115 = v177;
    }

    else
    {
      v110 = v102;
      v111 = v97;
      v112 = v109;
      v113 = v103;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v175, v177, v98, 4);
      v103 = v113;
      v109 = v112;
      v97 = v111;
      v102 = v110;
      v114 = v176;
      v115 = v175;
    }

    v116 = &v115[4 * v114];
    v117 = (v98 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v117 >= 7)
    {
      v120 = v117 + 1;
      v121 = (v117 + 1) & 0x3FFFFFFFFFFFFFF8;
      v118 = (v116 + 4 * v121);
      v119 = &v97->i8[8 * v121];
      v122 = v97 + 2;
      v123 = v116 + 1;
      v124 = v121;
      do
      {
        v126 = v122[-2];
        v125 = v122[-1];
        v128 = *v122;
        v127 = v122[1];
        v122 += 4;
        v123[-1] = vuzp1q_s32(v126, v125);
        *v123 = vuzp1q_s32(v128, v127);
        v123 += 2;
        v124 -= 8;
      }

      while (v124);
      if (v120 == v121)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v118 = v116;
      v119 = v97;
    }

    do
    {
      v129 = *v119;
      v119 += 8;
      v118->i32[0] = v129;
      v118 = (v118 + 4);
    }

    while (v119 != v97 + 8 * v98);
LABEL_176:
    v130 = v176;
    goto LABEL_177;
  }

LABEL_189:
  v140 = *(v59 + 16);
  v141 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v59, v89) + 8);
  a5[3] = v140;
  a5[4] = v141;
  if (NextResultAtOffset != v178)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v178);
    if (mlir::CallOpInterface::getArgOperands(v167))
    {
      v144 = v178;
    }

    else
    {
      v145 = *(DefiningOp + 16);
      v146 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v143) + 8);
      a5[3] = v145;
      a5[4] = v146;
      v147 = *(v59 + 24);
      v175 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v148 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v147, &v178, &v175, &ElementTypeOrSelf);
      if (*(v148 + 36))
      {
        v149 = v148 - 16;
      }

      else
      {
        v149 = 0;
      }

      v144 = mlir::detail::OpResultImpl::getNextResultAtOffset(v149, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v168, v144, DefiningOp);
  }

  if (v169 != v171)
  {
    free(v169);
  }

  if (v172 != v174)
  {
    free(v172);
  }

  return 1;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertDepthwise3DConvolutionInterface<mlir::mps::DepthwiseConv3DWeightsGradientOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, uint64_t a4, mlir::UnitAttr **a5)
{
  v181 = *MEMORY[0x1E69E9840];
  v164 = a2;
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

  v163[0] = v9;
  v163[1] = v10;
  v11 = (*(*(v8 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v162[0] = v11;
  v162[1] = v12;
  if (*(a2 + 36))
  {
    v13 = a2 - 16;
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

  v161[0] = v14;
  v161[1] = v15;
  v16 = *(*(a2 + 48) + 16);
  v20 = v16 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v23 = !v20 || v16 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id;
  v24 = v163;
  if (v23 || v16 == &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id)
  {
    if ((mlir::CallOpInterface::getArgOperands(v163) & 1) == 0)
    {
      v24 = v161;
      if (!mlir::CallOpInterface::getArgOperands(v161))
      {
        return 0;
      }
    }

    v26 = 0;
    v27 = 1;
  }

  else
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(v163);
    if ((ArgOperands & 1) == 0)
    {
      v24 = v162;
      if ((mlir::CallOpInterface::getArgOperands(v162) & 1) == 0)
      {
        return 0;
      }
    }

    v27 = 0;
    v26 = 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v24);
  v160 = v29;
  if (v29 == -1)
  {
    return 0;
  }

  ChannelAxis = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v164);
  PositiveAxis = mlir::getPositiveAxis(ChannelAxis, v160);
  v32 = 0;
  v33 = v160;
  v158 = PositiveAxis - (v160 != 4);
  v159 = PositiveAxis;
  if (!a3)
  {
    return v32;
  }

  v34 = v160 & 0xFFFFFFFE;
  if ((v160 & 0xFFFFFFFE) != 4)
  {
    return v32;
  }

  if (v160 == 4)
  {
    v35 = PositiveAxis + 1;
  }

  else
  {
    v35 = PositiveAxis;
  }

  if (a3 == 1)
  {
    v34 = 1;
  }

  if (v35 == v34)
  {
    return 0;
  }

  if (a3 == 1)
  {
    v37 = v160 != 4;
  }

  else
  {
    v37 = v160 - 1;
  }

  if (a3 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 3;
  }

  v156 = v38;
  v157 = v37;
  v151 = &v160;
  v152 = &v159;
  v153 = &v157;
  v154 = &v158;
  v155 = &v156;
  v150[0] = a5;
  v150[1] = &v164;
  v150[2] = &v151;
  v39 = *(*(v164 + 72) + 24);
  v40 = *(v164 + 24);
  v178 = v180;
  HIDWORD(v179) = 5;
  v41 = PositiveAxis;
  bzero(v180, 4 * v160);
  v42 = 0;
  v43 = 0;
  LODWORD(v179) = v33;
  do
  {
    if (v43 == v41)
    {
      ++v43;
    }

    if (v42 == v37)
    {
      ++v42;
    }

    v180[v42++] = v43++;
  }

  while (v43 != v33 && v42 != v33);
  v180[v37] = v41;
  if (v178 != v180)
  {
    free(v178);
  }

  v47 = *(v164 + 72);
  v48 = v47[1];
  if (v48)
  {
    v49 = *v47;
    *v48 = *v47;
    if (v49)
    {
      *(v49 + 8) = v47[1];
    }
  }

  v47[3] = v45;
  v47[1] = v45;
  v50 = *v45;
  *v47 = *v45;
  if (v50)
  {
    *(v50 + 8) = v47;
  }

  *v45 = v47;
  v51 = *(v164 + 72);
  v52 = v51 + 4;
  v53 = v51[5];
  if (v53)
  {
    v54 = *v52;
    *v53 = *v52;
    if (v54)
    {
      *(v54 + 8) = v51[5];
    }
  }

  v51[7] = v46;
  v51[5] = v46;
  v55 = *v46;
  v51[4] = *v46;
  if (v55)
  {
    *(v55 + 8) = v52;
  }

  *v46 = v52;
  Context = mlir::Attribute::getContext((v164 + 24));
  v57 = mlir::IntegerType::get(Context, 32, 1u);
  v58 = mlir::IntegerAttr::get(v57, v157);
  *(v164 + 16 * ((*(v164 + 44) >> 23) & 1) + 64) = v58;
  v59 = v164;
  v60 = "pEEE";
  if (v27)
  {
    v61 = *v151;
    v62 = *v152;
    v63 = *v153;
    v64 = v174;
    v172 = v174;
    v173 = 0x500000000;
    if (!v61)
    {
      *(v174 + v63) = v62;
      v69 = v173;
      goto LABEL_114;
    }

    if (v61 < 6)
    {
      v65 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v172, v174, v61, 4);
      v60 = "N4mlir23RegisteredOperationName5ModelINS_6memref7StoreOpEEE" + 55;
      v65 = v173;
      v64 = v172;
    }

    if (v61 != v65)
    {
      bzero(&v64[v65], 4 * (v61 - v65));
      v60 = "pEEE";
    }

    v70 = 0;
    v71 = 0;
    LODWORD(v173) = v61;
    do
    {
      if (v71 == v62)
      {
        ++v71;
      }

      if (v70 == v63)
      {
        ++v70;
      }

      v64[v70++] = v71++;
    }

    while (v71 != v61 && v70 != v61);
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v62 = *v154;
    v63 = *v155;
    v64 = v174;
    v172 = v174;
    v174[0] = 0;
    v174[1] = 0;
    v173 = 0x500000004;
    do
    {
      if (v67 == v62)
      {
        ++v67;
      }

      if (v66 == v63)
      {
        ++v66;
      }

      *(v174 + v66++) = v67++;
    }

    while (v67 != 4 && v66 != 4);
  }

  v64[v63] = v62;
  v69 = v173;
  if (v27)
  {
LABEL_114:
    v73 = v159;
    v74 = v160;
    v75 = v157;
    v76 = v171;
    v169 = v171;
    v170 = *(v60 + 394);
    if (v160)
    {
      if (v160 < 6)
      {
        v77 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v171, v160, 4);
        v77 = v170;
        v76 = v169;
      }

      if (v74 != v77)
      {
        bzero(v76 + 4 * v77, 4 * (v74 - v77));
      }

      v81 = 0;
      v82 = 0;
      LODWORD(v170) = v74;
      do
      {
        if (v82 == v75)
        {
          ++v82;
        }

        if (v81 == v73)
        {
          ++v81;
        }

        *(v76 + v81++) = v82++;
      }

      while (v82 != v74 && v81 != v74);
    }

    goto LABEL_141;
  }

  v78 = 0;
  v79 = 0;
  v75 = v156;
  v73 = v158;
  v76 = v171;
  v169 = v171;
  v171[0] = 0;
  v171[1] = 0;
  v170 = 0x500000004;
  do
  {
    if (v79 == v75)
    {
      ++v79;
    }

    if (v78 == v73)
    {
      ++v78;
    }

    *(v171 + v78++) = v79++;
  }

  while (v79 != 4 && v78 != 4);
LABEL_141:
  *(v76 + v73) = v75;
  v84 = v170;
  if (*(v59 + 36))
  {
    v85 = v59 - 16;
  }

  else
  {
    v85 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v85, 0);
  v168 = NextResultAtOffset;
  v87 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v87)
  {
    v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v87 + 8);
  }

  else
  {
    v88 = 0;
  }

  v167[0] = v87;
  v167[1] = v88;
  if (mlir::CallOpInterface::getArgOperands(v167))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v167);
    v178 = v180;
    v179 = 0x500000000;
    v91 = v90;
    if (v90 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v180, v90, 8);
    }

    if (v69)
    {
      v92 = 4 * v69;
      do
      {
        v93 = *v64;
        v94 = *(mlir::CallableOpInterface::getArgAttrsAttr(v167) + 8 * v93);
        v95 = v179;
        if (v179 >= HIDWORD(v179))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v180, v179 + 1, 8);
          v95 = v179;
        }

        v178->i64[v95] = v94;
        v96 = v179 + 1;
        LODWORD(v179) = v179 + 1;
        ++v64;
        v92 -= 4;
      }

      while (v92);
    }

    else
    {
      v96 = v179;
    }

    v175 = v167[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v175, v178, v96);
    if (!v20 || (*(v59 + 46) & 0x80) == 0 || *(v59 + 68) != 3)
    {
      goto LABEL_187;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v59 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v175 = v91;
      v104 = mlir::Attribute::getContext((v59 + 24));
      v105 = mlir::IntegerType::get(v104, 64, 1u);
      v106 = mlir::RankedTensorType::get(&v175, 1, v105, 0);
      if (v106)
      {
        v107 = v106;
        v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v106 + 8);
        v106 = v107;
      }

      else
      {
        v108 = 0;
      }

      v133 = *(v59 + 24);
      v175 = mlir::DenseElementsAttr::getFromRawBuffer(v106, v108, v178, 8 * v179, 8, 1, 1);
      v131 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v133, &v175);
LABEL_181:
      v134 = (v131 - 16);
      v135 = *(v59 + 72);
      v136 = v135 + 8;
      v137 = v135[9];
      if (v137)
      {
        v138 = *v136;
        *v137 = *v136;
        if (v138)
        {
          *(v138 + 8) = v135[9];
        }
      }

      v135[11] = v134;
      v135[9] = v134;
      v139 = *v134;
      v135[8] = *v134;
      if (v139)
      {
        *(v139 + 8) = v136;
      }

      *v134 = v136;
LABEL_187:
      if (v178 != v180)
      {
        free(v178);
      }

      goto LABEL_189;
    }

    v97 = v178;
    v98 = v179;
    v175 = v91;
    v99 = mlir::Attribute::getContext((v59 + 24));
    v100 = mlir::IntegerType::get(v99, 32, 1u);
    v101 = mlir::RankedTensorType::get(&v175, 1, v100, 0);
    v102 = v101;
    if (v101)
    {
      v103 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v101 + 8);
    }

    else
    {
      v103 = 0;
    }

    v109 = *(v59 + 24);
    v175 = v177;
    v176 = 0x500000000;
    if (v98 < 6)
    {
      if (!v98)
      {
        v130 = 0;
        v115 = v177;
LABEL_177:
        LODWORD(v176) = v130 + v98;
        v165 = mlir::DenseElementsAttr::getFromRawBuffer(v102, v103, v115, 4 * (v130 + v98), 4, 1, 1);
        v131 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v109, &v165);
        if (v175 != v177)
        {
          v132 = v131;
          free(v175);
          v131 = v132;
        }

        goto LABEL_181;
      }

      v114 = 0;
      v115 = v177;
    }

    else
    {
      v110 = v102;
      v111 = v97;
      v112 = v109;
      v113 = v103;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v175, v177, v98, 4);
      v103 = v113;
      v109 = v112;
      v97 = v111;
      v102 = v110;
      v114 = v176;
      v115 = v175;
    }

    v116 = &v115[4 * v114];
    v117 = (v98 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v117 >= 7)
    {
      v120 = v117 + 1;
      v121 = (v117 + 1) & 0x3FFFFFFFFFFFFFF8;
      v118 = (v116 + 4 * v121);
      v119 = &v97->i8[8 * v121];
      v122 = v97 + 2;
      v123 = v116 + 1;
      v124 = v121;
      do
      {
        v126 = v122[-2];
        v125 = v122[-1];
        v128 = *v122;
        v127 = v122[1];
        v122 += 4;
        v123[-1] = vuzp1q_s32(v126, v125);
        *v123 = vuzp1q_s32(v128, v127);
        v123 += 2;
        v124 -= 8;
      }

      while (v124);
      if (v120 == v121)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v118 = v116;
      v119 = v97;
    }

    do
    {
      v129 = *v119;
      v119 += 8;
      v118->i32[0] = v129;
      v118 = (v118 + 4);
    }

    while (v119 != v97 + 8 * v98);
LABEL_176:
    v130 = v176;
    goto LABEL_177;
  }

LABEL_189:
  v140 = *(v59 + 16);
  v141 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v59, v89) + 8);
  a5[3] = v140;
  a5[4] = v141;
  if (NextResultAtOffset != v178)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v178);
    if (mlir::CallOpInterface::getArgOperands(v167))
    {
      v144 = v178;
    }

    else
    {
      v145 = *(DefiningOp + 16);
      v146 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v143) + 8);
      a5[3] = v145;
      a5[4] = v146;
      v147 = *(v59 + 24);
      v175 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v148 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v147, &v178, &v175, &ElementTypeOrSelf);
      if (*(v148 + 36))
      {
        v149 = v148 - 16;
      }

      else
      {
        v149 = 0;
      }

      v144 = mlir::detail::OpResultImpl::getNextResultAtOffset(v149, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v168, v144, DefiningOp);
  }

  if (v169 != v171)
  {
    free(v169);
  }

  if (v172 != v174)
  {
    free(v172);
  }

  return 1;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertPoolingInterface<mlir::mps::PoolAvgOp>>::convertLayout(uint64_t a1, uint64_t a2, __int32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10)
{
  v117[5] = *MEMORY[0x1E69E9840];
  v100 = a2;
  v103 = a2;
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v103);
  v16 = "pEEE";
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&WindowSizes, 8, 1, 0))
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&WindowSizes);
    isSplat = mlir::DenseElementsAttr::isSplat(&WindowSizes);
    mlir::ArrayAttr::getValue(&WindowSizes);
    NumElements = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
    v11 = NumElements;
    v115 = v117;
    v116 = 0x500000000;
    if (NumElements < 6)
    {
      v19 = 0;
      v21 = 0;
      v20 = v117;
      if (!NumElements)
      {
        goto LABEL_12;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v117, NumElements, 8);
      v19 = v116;
      v20 = v115;
    }
  }

  else
  {
    v19 = 0;
    RawStringData = 0;
    v20 = v117;
    v115 = v117;
    v116 = 0x500000000;
  }

  v22 = 0;
  v23 = &v20[v19];
  do
  {
    if (isSplat)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22;
    }

    v23[v22++] = *(RawStringData + 8 * v24);
  }

  while (v11 != v22);
  v21 = v19 + v11;
LABEL_12:
  LODWORD(v116) = v21;
  WindowSizes = mlir::mps::Conv3DOp::getStrides(&v103);
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&WindowSizes, 8, 1, 0))
  {
    v25 = mlir::DenseElementsAttr::getRawStringData(&WindowSizes);
    LOBYTE(v11) = mlir::DenseElementsAttr::isSplat(&WindowSizes);
    mlir::ArrayAttr::getValue(&WindowSizes);
    v26 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
    v12 = v26;
    v112 = v114;
    v113 = 0x500000000;
    if (v26 < 6)
    {
      v27 = 0;
      v29 = 0;
      v28 = v114;
      if (!v26)
      {
        goto LABEL_23;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v112, v114, v26, 8);
      v27 = v113;
      v28 = v112;
    }
  }

  else
  {
    v27 = 0;
    v25 = 0;
    v28 = v114;
    v112 = v114;
    v113 = 0x500000000;
  }

  v30 = 0;
  v31 = &v28[8 * v27];
  do
  {
    if (v11)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30;
    }

    *&v31[8 * v30++] = *(v25 + 8 * v32);
  }

  while (v12 != v30);
  v29 = v27 + v12;
LABEL_23:
  LODWORD(v113) = v29;
  WindowSizes = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v103);
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&WindowSizes, 8, 1, 0))
  {
    v33 = mlir::DenseElementsAttr::getRawStringData(&WindowSizes);
    LOBYTE(v12) = mlir::DenseElementsAttr::isSplat(&WindowSizes);
    mlir::ArrayAttr::getValue(&WindowSizes);
    v34 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
    v13 = v34;
    v109 = v111;
    v110 = 0x500000000;
    if (v34 < 6)
    {
      v35 = 0;
      v37 = 0;
      v36 = v111;
      if (!v34)
      {
        goto LABEL_34;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v111, v34, 8);
      v35 = v110;
      v36 = v109;
    }
  }

  else
  {
    v35 = 0;
    v33 = 0;
    v36 = v111;
    v109 = v111;
    v110 = 0x500000000;
  }

  v38 = 0;
  v39 = &v36[8 * v35];
  do
  {
    if (v12)
    {
      v40 = 0;
    }

    else
    {
      v40 = v38;
    }

    *&v39[8 * v38++] = *(v33 + 8 * v40);
  }

  while (v13 != v38);
  v37 = v35 + v13;
LABEL_34:
  LODWORD(v110) = v37;
  WindowSizes = &v108[2];
  *v108 = 0xA00000000;
  mlir::mps::StencilOp::getOffsets(&v103);
  if (v44)
  {
    Offsets = mlir::mps::StencilOp::getOffsets(&v103);
    v102 = v45;
    if ((v45 & 1) == 0)
    {
      goto LABEL_136;
    }

    if (mlir::DenseElementsAttr::isValidIntOrFloat(&Offsets, 8, 1, 0))
    {
      v46 = mlir::DenseElementsAttr::getRawStringData(&Offsets);
      LOBYTE(v13) = mlir::DenseElementsAttr::isSplat(&Offsets);
      mlir::ArrayAttr::getValue(&Offsets);
      v47 = mlir::DenseElementsAttr::getNumElements(&Offsets);
      v16 = v47;
      __s2 = &v105[8];
      *v105 = 0xA00000000;
      if (v47 < 0xB)
      {
        v48 = 0;
        v50 = 0;
        v49 = &v105[8];
        if (!v47)
        {
          goto LABEL_47;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__s2, &v105[8], v47, 8);
        v48 = *v105;
        v49 = __s2;
      }
    }

    else
    {
      v48 = 0;
      v46 = 0;
      v49 = &v105[8];
      __s2 = &v105[8];
      *v105 = 0xA00000000;
    }

    v51 = 0;
    v52 = &v49[8 * v48];
    do
    {
      if (v13)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      *&v52[8 * v51++] = *(v46 + 8 * v53);
    }

    while (v16 != v51);
    v50 = v48 + v16;
LABEL_47:
    *v105 = v50;
    llvm::SmallVectorImpl<unsigned long long>::operator=(&WindowSizes, &__s2);
    if (__s2 != &v105[8])
    {
      free(__s2);
    }
  }

  if (v116 != 4)
  {
    v55 = 0;
    v56 = 0;
    goto LABEL_88;
  }

  *v105 = 4;
  *&v105[8] = 4;
  *&v105[16] = 0;
  __s2 = &v105[16];
  if (*v115 != 1 || *v112 != 1 || *v109 != 1)
  {
    goto LABEL_57;
  }

  if (mlir::mps::Conv3DOp::getPaddingStyle(&v103))
  {
    v54 = 0;
    goto LABEL_58;
  }

  if (!*WindowSizes)
  {
    v54 = *(WindowSizes + 1) != 0;
  }

  else
  {
LABEL_57:
    v54 = 1;
  }

LABEL_58:
  *__s2 = v54;
  if (v115[1] != 1 || v112[1] != 1 || *(v109 + 1) != 1)
  {
    goto LABEL_64;
  }

  if (mlir::mps::Conv3DOp::getPaddingStyle(&v103))
  {
    v57 = 0;
    goto LABEL_65;
  }

  if (!*(WindowSizes + 2))
  {
    v57 = *(WindowSizes + 3) != 0;
  }

  else
  {
LABEL_64:
    v57 = 1;
  }

LABEL_65:
  *(__s2 + 1) = v57;
  if (v115[2] != 1 || v112[2] != 1 || *(v109 + 2) != 1)
  {
    goto LABEL_71;
  }

  if (mlir::mps::Conv3DOp::getPaddingStyle(&v103))
  {
    v58 = 0;
    goto LABEL_72;
  }

  if (!*(WindowSizes + 4))
  {
    v58 = *(WindowSizes + 5) != 0;
  }

  else
  {
LABEL_71:
    v58 = 1;
  }

LABEL_72:
  *(__s2 + 2) = v58;
  if (v115[3] != 1 || v112[3] != 1 || *(v109 + 3) != 1)
  {
    goto LABEL_79;
  }

  if (mlir::mps::Conv3DOp::getPaddingStyle(&v103))
  {
    v59 = __s2;
    *(__s2 + 3) = 0;
    if ((*v59 & 1) == 0)
    {
      goto LABEL_85;
    }

LABEL_81:
    v55 = 0;
    v56 = 0;
    goto LABEL_86;
  }

  if (!*(WindowSizes + 6))
  {
    v60 = *(WindowSizes + 7) != 0;
  }

  else
  {
LABEL_79:
    v60 = 1;
  }

  v59 = __s2;
  *(__s2 + 3) = v60;
  if (*v59)
  {
    goto LABEL_81;
  }

  if (v60)
  {
    if (v59[1] != 1)
    {
      v56 = 0;
      v55 = 0x100000000;
      goto LABEL_86;
    }

    goto LABEL_81;
  }

LABEL_85:
  v55 = 0x100000000;
  v56 = 1;
LABEL_86:
  if (v59 != &v105[16])
  {
    free(v59);
  }

LABEL_88:
  if (WindowSizes != &v108[2])
  {
    free(WindowSizes);
  }

  if (v109 != v111)
  {
    free(v109);
  }

  if (v112 != v114)
  {
    free(v112);
  }

  if (v115 != v117)
  {
    free(v115);
  }

  if ((v55 & 0x100000000) == 0 || !a3)
  {
    return 0;
  }

  v61 = v56 | v55;
  if ((v56 | v55) == 1)
  {
    if (a3 != 1)
    {
      return 0;
    }
  }

  else if (a3 != 2)
  {
    return 0;
  }

  v41.i32[0] = 1;
  v42.i32[0] = a3;
  v63 = vbsl_s8(vdup_lane_s32(vmvn_s8(vceq_s32(v42, v41)), 0), 0x300000002, 0x100000003);
  v64 = a3 != 1;
  v42.i32[0] = v56 | v55;
  v43.i32[0] = v64;
  v65 = vbsl_s8(vdup_lane_s32(vceq_s32(v43, v42), 0), 0x200000001, v63);
  WindowSizes = &v108[2];
  *&v108[1] = 5;
  if (a3 == 1)
  {
    v66 = 2;
  }

  else
  {
    v66 = 1;
  }

  if (v64 == v61)
  {
    v66 = 3;
  }

  *&v108[3] = v65;
  v108[5] = v66;
  v108[0] = 4;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v100);
  v103 = 0;
  mlir::mps::StencilOp::getOffsets(&v100);
  if ((v71 & 1) == 0)
  {
    goto LABEL_110;
  }

  v72 = mlir::mps::StencilOp::getOffsets(&v100);
  if ((v73 & 1) == 0)
  {
LABEL_136:
    v90 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::OpBuilder::create<mlir::mps::PoolAvgOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL>(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10);
  }

LABEL_110:
  v68.i32[0] = v56 | v55;
  v69.i32[0] = a3 != 1;
  v70.i32[0] = 1;
  v74 = vbsl_s8(vdup_lane_s32(vceq_s32(v69, v68), 0), 0x200000001, vbsl_s8(vdup_lane_s32(vceq_s32(v68, v70), 0), 0x300000002, 0x100000003));
  Strides = mlir::mps::Conv3DOp::getStrides(&v100);
  v76 = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v100);
  v77 = *(v100 + 24);
  LODWORD(__s2) = mlir::mps::Conv3DOp::getPaddingStyle(&v100);
  LOBYTE(v115) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v100);
  LOBYTE(v112) = mlir::mps::GRUOp::getResetAfter(&v100);
  v78 = mlir::OpBuilder::create<mlir::mps::PoolAvgOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL>((a5 + 8), v77, &v109, &v98, &v99, &Offsets, &__s2, &v103, &v115, &v112);
  __s2 = &v105[8];
  *&v105[4] = 5;
  if (v61 == 1)
  {
    v79 = 1;
  }

  else
  {
    v79 = 2;
  }

  if (v64 == v61)
  {
    v79 = 3;
  }

  *&v105[12] = v74;
  v106 = v79;
  *v105 = 4;
  v115 = v117;
  v116 = 0x200000000;
  v80 = *(v78 + 36);
  if (v80)
  {
    v81 = v78 - 16;
  }

  else
  {
    v81 = 0;
  }

  if (v80)
  {
    for (i = 0; i != v80; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v81, i);
      v85 = v116;
      if (v116 >= HIDWORD(v116))
      {
        v87 = v84;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v117, v116 + 1, 8);
        v84 = v87;
        v85 = v116;
      }

      v115[v85] = v84;
      v86 = (v116 + 1);
      LODWORD(v116) = v116 + 1;
    }

    v88 = v115;
  }

  else
  {
    v86 = 0;
    v88 = v117;
  }

  v89 = v100;
  mlir::ValueRange::ValueRange(&v112, v88, v86);
  (**a5)(a5, v89, v112, v113);
  if (v115 != v117)
  {
    free(v115);
  }

  if (__s2 != &v105[8])
  {
    free(__s2);
  }

  if (WindowSizes != &v108[2])
  {
    free(WindowSizes);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PoolAvgOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7, uint64_t *a8, char *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolAvgOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PoolAvgOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyleAttr,mlir::DenseIntElementsAttr&,mlir::UnitAttr,mlir::UnitAttr>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mps::PoolAvgOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolAvgOp,void>::id)
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

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertPoolingInterface<mlir::mps::PoolMaxOp>>::convertLayout(uint64_t a1, uint64_t a2, __int32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, unsigned int *a11, uint64_t *a12)
{
  v124[5] = *MEMORY[0x1E69E9840];
  v107 = a2;
  if (*(a2 + 36))
  {
    v19 = a2 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 1);
  if (*mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0))
  {
    return 0;
  }

  v110 = a2;
  WindowSizes = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v110);
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&WindowSizes, 8, 1, 0))
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&WindowSizes);
    isSplat = mlir::DenseElementsAttr::isSplat(&WindowSizes);
    mlir::ArrayAttr::getValue(&WindowSizes);
    NumElements = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
    v13 = NumElements;
    v23 = v124;
    v122 = v124;
    v123 = 0x500000000;
    if (NumElements < 6)
    {
      v24 = 0;
      v26 = 0;
      v25 = v124;
      if (!NumElements)
      {
        goto LABEL_16;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v124, NumElements, 8);
      v24 = v123;
      v25 = v122;
    }
  }

  else
  {
    v24 = 0;
    RawStringData = 0;
    v25 = v124;
    v122 = v124;
    v123 = 0x500000000;
    v23 = v124;
  }

  v27 = 0;
  v28 = &v25[v24];
  do
  {
    if (isSplat)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    v28[v27++] = *(RawStringData + 8 * v29);
  }

  while (v13 != v27);
  v26 = v24 + v13;
LABEL_16:
  LODWORD(v123) = v26;
  WindowSizes = mlir::mps::PoolMaxGradientOp::getStrides(&v110);
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&WindowSizes, 8, 1, 0))
  {
    v30 = mlir::DenseElementsAttr::getRawStringData(&WindowSizes);
    LOBYTE(v13) = mlir::DenseElementsAttr::isSplat(&WindowSizes);
    mlir::ArrayAttr::getValue(&WindowSizes);
    v31 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
    v14 = v31;
    v119 = v121;
    v120 = 0x500000000;
    if (v31 < 6)
    {
      v32 = 0;
      v34 = 0;
      v33 = v121;
      if (!v31)
      {
        goto LABEL_27;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v121, v31, 8);
      v32 = v120;
      v33 = v119;
    }
  }

  else
  {
    v32 = 0;
    v30 = 0;
    v33 = v121;
    v119 = v121;
    v120 = 0x500000000;
  }

  v35 = 0;
  v36 = &v33[8 * v32];
  do
  {
    if (v13)
    {
      v37 = 0;
    }

    else
    {
      v37 = v35;
    }

    *&v36[8 * v35++] = *(v30 + 8 * v37);
  }

  while (v14 != v35);
  v34 = v32 + v14;
LABEL_27:
  LODWORD(v120) = v34;
  WindowSizes = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v110);
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&WindowSizes, 8, 1, 0))
  {
    v38 = mlir::DenseElementsAttr::getRawStringData(&WindowSizes);
    LOBYTE(v14) = mlir::DenseElementsAttr::isSplat(&WindowSizes);
    mlir::ArrayAttr::getValue(&WindowSizes);
    v39 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
    v15 = v39;
    v116 = v118;
    v117 = 0x500000000;
    if (v39 < 6)
    {
      v40 = 0;
      v42 = 0;
      v41 = v118;
      if (!v39)
      {
        goto LABEL_38;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v118, v39, 8);
      v40 = v117;
      v41 = v116;
    }
  }

  else
  {
    v40 = 0;
    v38 = 0;
    v41 = v118;
    v116 = v118;
    v117 = 0x500000000;
  }

  v43 = 0;
  v44 = &v41[8 * v40];
  do
  {
    if (v14)
    {
      v45 = 0;
    }

    else
    {
      v45 = v43;
    }

    *&v44[8 * v43++] = *(v38 + 8 * v45);
  }

  while (v15 != v43);
  v42 = v40 + v15;
LABEL_38:
  LODWORD(v117) = v42;
  WindowSizes = &v115[2];
  *v115 = 0xA00000000;
  mlir::mps::StencilOp::getOffsets(&v110);
  if (v49)
  {
    Offsets = mlir::mps::StencilOp::getOffsets(&v110);
    v109 = v50;
    if ((v50 & 1) == 0)
    {
      goto LABEL_140;
    }

    if (mlir::DenseElementsAttr::isValidIntOrFloat(&Offsets, 8, 1, 0))
    {
      v51 = mlir::DenseElementsAttr::getRawStringData(&Offsets);
      LOBYTE(v15) = mlir::DenseElementsAttr::isSplat(&Offsets);
      mlir::ArrayAttr::getValue(&Offsets);
      v52 = mlir::DenseElementsAttr::getNumElements(&Offsets);
      v23 = v52;
      __s2 = &v112[8];
      *v112 = 0xA00000000;
      if (v52 < 0xB)
      {
        v53 = 0;
        v55 = 0;
        v54 = &v112[8];
        if (!v52)
        {
          goto LABEL_51;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__s2, &v112[8], v52, 8);
        v53 = *v112;
        v54 = __s2;
      }
    }

    else
    {
      v53 = 0;
      v51 = 0;
      v54 = &v112[8];
      __s2 = &v112[8];
      *v112 = 0xA00000000;
    }

    v56 = 0;
    v57 = &v54[8 * v53];
    do
    {
      if (v15)
      {
        v58 = 0;
      }

      else
      {
        v58 = v56;
      }

      *&v57[8 * v56] = *(v51 + 8 * v58);
      v56 = (v56 + 1);
    }

    while (v23 != v56);
    v55 = v53 + v23;
LABEL_51:
    *v112 = v55;
    llvm::SmallVectorImpl<unsigned long long>::operator=(&WindowSizes, &__s2);
    if (__s2 != &v112[8])
    {
      free(__s2);
    }
  }

  if (v123 != 4)
  {
    v60 = 0;
    v61 = 0;
    goto LABEL_92;
  }

  *v112 = 4;
  *&v112[8] = 4;
  *&v112[16] = 0;
  __s2 = &v112[16];
  if (*v122 != 1 || *v119 != 1 || *v116 != 1)
  {
    goto LABEL_61;
  }

  if (mlir::mps::Conv3DOp::getWeightsLayout(&v110))
  {
    v59 = 0;
    goto LABEL_62;
  }

  if (!*WindowSizes)
  {
    v59 = WindowSizes[1] != 0;
  }

  else
  {
LABEL_61:
    v59 = 1;
  }

LABEL_62:
  *__s2 = v59;
  if (v122[1] != 1 || v119[1] != 1 || v116[1] != 1)
  {
    goto LABEL_68;
  }

  if (mlir::mps::Conv3DOp::getWeightsLayout(&v110))
  {
    v62 = 0;
    goto LABEL_69;
  }

  if (!WindowSizes[2])
  {
    v62 = WindowSizes[3] != 0;
  }

  else
  {
LABEL_68:
    v62 = 1;
  }

LABEL_69:
  *(__s2 + 1) = v62;
  if (v122[2] != 1 || v119[2] != 1 || v116[2] != 1)
  {
    goto LABEL_75;
  }

  if (mlir::mps::Conv3DOp::getWeightsLayout(&v110))
  {
    v63 = 0;
    goto LABEL_76;
  }

  if (!WindowSizes[4])
  {
    v63 = WindowSizes[5] != 0;
  }

  else
  {
LABEL_75:
    v63 = 1;
  }

LABEL_76:
  *(__s2 + 2) = v63;
  if (v122[3] != 1 || v119[3] != 1 || v116[3] != 1)
  {
    goto LABEL_83;
  }

  if (mlir::mps::Conv3DOp::getWeightsLayout(&v110))
  {
    v64 = __s2;
    *(__s2 + 3) = 0;
    if ((*v64 & 1) == 0)
    {
      goto LABEL_89;
    }

LABEL_85:
    v60 = 0;
    v61 = 0;
    goto LABEL_90;
  }

  if (!WindowSizes[6])
  {
    v65 = WindowSizes[7] != 0;
  }

  else
  {
LABEL_83:
    v65 = 1;
  }

  v64 = __s2;
  *(__s2 + 3) = v65;
  if (*v64)
  {
    goto LABEL_85;
  }

  if (v65)
  {
    if (v64[1] != 1)
    {
      v61 = 0;
      v60 = 0x100000000;
      goto LABEL_90;
    }

    goto LABEL_85;
  }

LABEL_89:
  v60 = 0x100000000;
  v61 = 1;
LABEL_90:
  if (v64 != &v112[16])
  {
    free(v64);
  }

LABEL_92:
  if (WindowSizes != &v115[2])
  {
    free(WindowSizes);
  }

  if (v116 != v118)
  {
    free(v116);
  }

  if (v119 != v121)
  {
    free(v119);
  }

  if (v122 != v124)
  {
    free(v122);
  }

  if ((v60 & 0x100000000) == 0 || !a3)
  {
    return 0;
  }

  v66 = v61 | v60;
  if ((v61 | v60) == 1)
  {
    if (a3 != 1)
    {
      return 0;
    }
  }

  else if (a3 != 2)
  {
    return 0;
  }

  v46.i32[0] = 1;
  v47.i32[0] = a3;
  v68 = vbsl_s8(vdup_lane_s32(vmvn_s8(vceq_s32(v47, v46)), 0), 0x300000002, 0x100000003);
  v69 = a3 != 1;
  v47.i32[0] = v61 | v60;
  v48.i32[0] = v69;
  v70 = vbsl_s8(vdup_lane_s32(vceq_s32(v48, v47), 0), 0x200000001, v68);
  WindowSizes = &v115[2];
  *&v115[1] = 5;
  if (a3 == 1)
  {
    v71 = 2;
  }

  else
  {
    v71 = 1;
  }

  if (v69 == v66)
  {
    v71 = 3;
  }

  *&v115[3] = v70;
  v115[5] = v71;
  v115[0] = 4;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v107);
  v110 = 0;
  mlir::mps::StencilOp::getOffsets(&v107);
  if ((v76 & 1) == 0)
  {
    goto LABEL_114;
  }

  v77 = mlir::mps::StencilOp::getOffsets(&v107);
  if ((v78 & 1) == 0)
  {
LABEL_140:
    v95 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::OpBuilder::create<mlir::mps::PoolMaxOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL,mlir::mps::PoolIndicesMode,mlir::TypeAttr>(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12);
  }

LABEL_114:
  v73.i32[0] = v61 | v60;
  v74.i32[0] = a3 != 1;
  v75.i32[0] = 1;
  v79 = vbsl_s8(vdup_lane_s32(vceq_s32(v74, v73), 0), 0x200000001, vbsl_s8(vdup_lane_s32(vceq_s32(v73, v75), 0), 0x300000002, 0x100000003));
  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v107);
  v81 = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v107);
  v82 = *(v107 + 24);
  LODWORD(v122) = mlir::mps::Conv3DOp::getWeightsLayout(&v107);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v107);
  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v107);
  LODWORD(v119) = mlir::mps::Conv3DOp::getPaddingStyle(&v107);
  __s2 = *(v107 + 16 * ((*(v107 + 44) >> 23) & 1) + 104);
  v83 = mlir::OpBuilder::create<mlir::mps::PoolMaxOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL,mlir::mps::PoolIndicesMode,mlir::TypeAttr>((a5 + 8), v82, &v116, &v105, &v106, &Offsets, &v122, &v110, &InferredResultTypes, &ResetAfter, &v119, &__s2);
  __s2 = &v112[8];
  *&v112[4] = 5;
  if (v66 == 1)
  {
    v84 = 1;
  }

  else
  {
    v84 = 2;
  }

  if (v69 == v66)
  {
    v84 = 3;
  }

  *&v112[12] = v79;
  v113 = v84;
  *v112 = 4;
  v122 = v124;
  v123 = 0x200000000;
  v85 = *(v83 + 36);
  if (v85)
  {
    v86 = v83 - 16;
  }

  else
  {
    v86 = 0;
  }

  if (v85)
  {
    for (i = 0; i != v85; ++i)
    {
      v88 = mlir::detail::OpResultImpl::getNextResultAtOffset(v86, i);
      v90 = v123;
      if (v123 >= HIDWORD(v123))
      {
        v92 = v89;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v124, v123 + 1, 8);
        v89 = v92;
        v90 = v123;
      }

      v122[v90] = v89;
      v91 = (v123 + 1);
      LODWORD(v123) = v123 + 1;
    }

    v93 = v122;
  }

  else
  {
    v91 = 0;
    v93 = v124;
  }

  v94 = v107;
  mlir::ValueRange::ValueRange(&v119, v93, v91);
  (**a5)(a5, v94, v119, v120);
  if (v122 != v124)
  {
    free(v122);
  }

  if (__s2 != &v112[8])
  {
    free(__s2);
  }

  if (WindowSizes != &v115[2])
  {
    free(WindowSizes);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PoolMaxOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL,mlir::mps::PoolIndicesMode,mlir::TypeAttr>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7, uint64_t *a8, char *a9, char *a10, unsigned int *a11, uint64_t *a12)
{
  v29[38] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v21 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolMaxOp,void>::id, Context);
  if ((v22 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PoolMaxOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL,mlir::mps::PoolIndicesMode,mlir::TypeAttr>(v29, v28, v27);
  }

  mlir::OperationState::OperationState(v29, a2, v21);
  mlir::mps::PoolMaxOp::build(a1, v29, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12);
  v23 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolMaxOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v24;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertPoolingInterface<mlir::mps::PoolL2NormOp>>::convertLayout(uint64_t a1, uint64_t a2, __int32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10)
{
  v117[5] = *MEMORY[0x1E69E9840];
  v100 = a2;
  v103 = a2;
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v103);
  v16 = "pEEE";
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&WindowSizes, 8, 1, 0))
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&WindowSizes);
    isSplat = mlir::DenseElementsAttr::isSplat(&WindowSizes);
    mlir::ArrayAttr::getValue(&WindowSizes);
    NumElements = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
    v11 = NumElements;
    v115 = v117;
    v116 = 0x500000000;
    if (NumElements < 6)
    {
      v19 = 0;
      v21 = 0;
      v20 = v117;
      if (!NumElements)
      {
        goto LABEL_12;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v117, NumElements, 8);
      v19 = v116;
      v20 = v115;
    }
  }

  else
  {
    v19 = 0;
    RawStringData = 0;
    v20 = v117;
    v115 = v117;
    v116 = 0x500000000;
  }

  v22 = 0;
  v23 = &v20[v19];
  do
  {
    if (isSplat)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22;
    }

    v23[v22++] = *(RawStringData + 8 * v24);
  }

  while (v11 != v22);
  v21 = v19 + v11;
LABEL_12:
  LODWORD(v116) = v21;
  WindowSizes = mlir::mps::Conv3DOp::getStrides(&v103);
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&WindowSizes, 8, 1, 0))
  {
    v25 = mlir::DenseElementsAttr::getRawStringData(&WindowSizes);
    LOBYTE(v11) = mlir::DenseElementsAttr::isSplat(&WindowSizes);
    mlir::ArrayAttr::getValue(&WindowSizes);
    v26 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
    v12 = v26;
    v112 = v114;
    v113 = 0x500000000;
    if (v26 < 6)
    {
      v27 = 0;
      v29 = 0;
      v28 = v114;
      if (!v26)
      {
        goto LABEL_23;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v112, v114, v26, 8);
      v27 = v113;
      v28 = v112;
    }
  }

  else
  {
    v27 = 0;
    v25 = 0;
    v28 = v114;
    v112 = v114;
    v113 = 0x500000000;
  }

  v30 = 0;
  v31 = &v28[8 * v27];
  do
  {
    if (v11)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30;
    }

    *&v31[8 * v30++] = *(v25 + 8 * v32);
  }

  while (v12 != v30);
  v29 = v27 + v12;
LABEL_23:
  LODWORD(v113) = v29;
  WindowSizes = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v103);
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&WindowSizes, 8, 1, 0))
  {
    v33 = mlir::DenseElementsAttr::getRawStringData(&WindowSizes);
    LOBYTE(v12) = mlir::DenseElementsAttr::isSplat(&WindowSizes);
    mlir::ArrayAttr::getValue(&WindowSizes);
    v34 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
    v13 = v34;
    v109 = v111;
    v110 = 0x500000000;
    if (v34 < 6)
    {
      v35 = 0;
      v37 = 0;
      v36 = v111;
      if (!v34)
      {
        goto LABEL_34;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v111, v34, 8);
      v35 = v110;
      v36 = v109;
    }
  }

  else
  {
    v35 = 0;
    v33 = 0;
    v36 = v111;
    v109 = v111;
    v110 = 0x500000000;
  }

  v38 = 0;
  v39 = &v36[8 * v35];
  do
  {
    if (v12)
    {
      v40 = 0;
    }

    else
    {
      v40 = v38;
    }

    *&v39[8 * v38++] = *(v33 + 8 * v40);
  }

  while (v13 != v38);
  v37 = v35 + v13;
LABEL_34:
  LODWORD(v110) = v37;
  WindowSizes = &v108[2];
  *v108 = 0xA00000000;
  mlir::mps::StencilOp::getOffsets(&v103);
  if (v44)
  {
    Offsets = mlir::mps::StencilOp::getOffsets(&v103);
    v102 = v45;
    if ((v45 & 1) == 0)
    {
      goto LABEL_136;
    }

    if (mlir::DenseElementsAttr::isValidIntOrFloat(&Offsets, 8, 1, 0))
    {
      v46 = mlir::DenseElementsAttr::getRawStringData(&Offsets);
      LOBYTE(v13) = mlir::DenseElementsAttr::isSplat(&Offsets);
      mlir::ArrayAttr::getValue(&Offsets);
      v47 = mlir::DenseElementsAttr::getNumElements(&Offsets);
      v16 = v47;
      __s2 = &v105[8];
      *v105 = 0xA00000000;
      if (v47 < 0xB)
      {
        v48 = 0;
        v50 = 0;
        v49 = &v105[8];
        if (!v47)
        {
          goto LABEL_47;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__s2, &v105[8], v47, 8);
        v48 = *v105;
        v49 = __s2;
      }
    }

    else
    {
      v48 = 0;
      v46 = 0;
      v49 = &v105[8];
      __s2 = &v105[8];
      *v105 = 0xA00000000;
    }

    v51 = 0;
    v52 = &v49[8 * v48];
    do
    {
      if (v13)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      *&v52[8 * v51++] = *(v46 + 8 * v53);
    }

    while (v16 != v51);
    v50 = v48 + v16;
LABEL_47:
    *v105 = v50;
    llvm::SmallVectorImpl<unsigned long long>::operator=(&WindowSizes, &__s2);
    if (__s2 != &v105[8])
    {
      free(__s2);
    }
  }

  if (v116 != 4)
  {
    v55 = 0;
    v56 = 0;
    goto LABEL_88;
  }

  *v105 = 4;
  *&v105[8] = 4;
  *&v105[16] = 0;
  __s2 = &v105[16];
  if (*v115 != 1 || *v112 != 1 || *v109 != 1)
  {
    goto LABEL_57;
  }

  if (mlir::mps::Conv3DOp::getPaddingStyle(&v103))
  {
    v54 = 0;
    goto LABEL_58;
  }

  if (!*WindowSizes)
  {
    v54 = *(WindowSizes + 1) != 0;
  }

  else
  {
LABEL_57:
    v54 = 1;
  }

LABEL_58:
  *__s2 = v54;
  if (v115[1] != 1 || v112[1] != 1 || *(v109 + 1) != 1)
  {
    goto LABEL_64;
  }

  if (mlir::mps::Conv3DOp::getPaddingStyle(&v103))
  {
    v57 = 0;
    goto LABEL_65;
  }

  if (!*(WindowSizes + 2))
  {
    v57 = *(WindowSizes + 3) != 0;
  }

  else
  {
LABEL_64:
    v57 = 1;
  }

LABEL_65:
  *(__s2 + 1) = v57;
  if (v115[2] != 1 || v112[2] != 1 || *(v109 + 2) != 1)
  {
    goto LABEL_71;
  }

  if (mlir::mps::Conv3DOp::getPaddingStyle(&v103))
  {
    v58 = 0;
    goto LABEL_72;
  }

  if (!*(WindowSizes + 4))
  {
    v58 = *(WindowSizes + 5) != 0;
  }

  else
  {
LABEL_71:
    v58 = 1;
  }

LABEL_72:
  *(__s2 + 2) = v58;
  if (v115[3] != 1 || v112[3] != 1 || *(v109 + 3) != 1)
  {
    goto LABEL_79;
  }

  if (mlir::mps::Conv3DOp::getPaddingStyle(&v103))
  {
    v59 = __s2;
    *(__s2 + 3) = 0;
    if ((*v59 & 1) == 0)
    {
      goto LABEL_85;
    }

LABEL_81:
    v55 = 0;
    v56 = 0;
    goto LABEL_86;
  }

  if (!*(WindowSizes + 6))
  {
    v60 = *(WindowSizes + 7) != 0;
  }

  else
  {
LABEL_79:
    v60 = 1;
  }

  v59 = __s2;
  *(__s2 + 3) = v60;
  if (*v59)
  {
    goto LABEL_81;
  }

  if (v60)
  {
    if (v59[1] != 1)
    {
      v56 = 0;
      v55 = 0x100000000;
      goto LABEL_86;
    }

    goto LABEL_81;
  }

LABEL_85:
  v55 = 0x100000000;
  v56 = 1;
LABEL_86:
  if (v59 != &v105[16])
  {
    free(v59);
  }

LABEL_88:
  if (WindowSizes != &v108[2])
  {
    free(WindowSizes);
  }

  if (v109 != v111)
  {
    free(v109);
  }

  if (v112 != v114)
  {
    free(v112);
  }

  if (v115 != v117)
  {
    free(v115);
  }

  if ((v55 & 0x100000000) == 0 || !a3)
  {
    return 0;
  }

  v61 = v56 | v55;
  if ((v56 | v55) == 1)
  {
    if (a3 != 1)
    {
      return 0;
    }
  }

  else if (a3 != 2)
  {
    return 0;
  }

  v41.i32[0] = 1;
  v42.i32[0] = a3;
  v63 = vbsl_s8(vdup_lane_s32(vmvn_s8(vceq_s32(v42, v41)), 0), 0x300000002, 0x100000003);
  v64 = a3 != 1;
  v42.i32[0] = v56 | v55;
  v43.i32[0] = v64;
  v65 = vbsl_s8(vdup_lane_s32(vceq_s32(v43, v42), 0), 0x200000001, v63);
  WindowSizes = &v108[2];
  *&v108[1] = 5;
  if (a3 == 1)
  {
    v66 = 2;
  }

  else
  {
    v66 = 1;
  }

  if (v64 == v61)
  {
    v66 = 3;
  }

  *&v108[3] = v65;
  v108[5] = v66;
  v108[0] = 4;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v100);
  v103 = 0;
  mlir::mps::StencilOp::getOffsets(&v100);
  if ((v71 & 1) == 0)
  {
    goto LABEL_110;
  }

  v72 = mlir::mps::StencilOp::getOffsets(&v100);
  if ((v73 & 1) == 0)
  {
LABEL_136:
    v90 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::OpBuilder::create<mlir::mps::PoolL2NormOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL>(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10);
  }

LABEL_110:
  v68.i32[0] = v56 | v55;
  v69.i32[0] = a3 != 1;
  v70.i32[0] = 1;
  v74 = vbsl_s8(vdup_lane_s32(vceq_s32(v69, v68), 0), 0x200000001, vbsl_s8(vdup_lane_s32(vceq_s32(v68, v70), 0), 0x300000002, 0x100000003));
  Strides = mlir::mps::Conv3DOp::getStrides(&v100);
  v76 = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v100);
  v77 = *(v100 + 24);
  LODWORD(__s2) = mlir::mps::Conv3DOp::getPaddingStyle(&v100);
  LOBYTE(v115) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v100);
  LOBYTE(v112) = mlir::mps::GRUOp::getResetAfter(&v100);
  v78 = mlir::OpBuilder::create<mlir::mps::PoolL2NormOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL>((a5 + 8), v77, &v109, &v98, &v99, &Offsets, &__s2, &v103, &v115, &v112);
  __s2 = &v105[8];
  *&v105[4] = 5;
  if (v61 == 1)
  {
    v79 = 1;
  }

  else
  {
    v79 = 2;
  }

  if (v64 == v61)
  {
    v79 = 3;
  }

  *&v105[12] = v74;
  v106 = v79;
  *v105 = 4;
  v115 = v117;
  v116 = 0x200000000;
  v80 = *(v78 + 36);
  if (v80)
  {
    v81 = v78 - 16;
  }

  else
  {
    v81 = 0;
  }

  if (v80)
  {
    for (i = 0; i != v80; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v81, i);
      v85 = v116;
      if (v116 >= HIDWORD(v116))
      {
        v87 = v84;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v117, v116 + 1, 8);
        v84 = v87;
        v85 = v116;
      }

      v115[v85] = v84;
      v86 = (v116 + 1);
      LODWORD(v116) = v116 + 1;
    }

    v88 = v115;
  }

  else
  {
    v86 = 0;
    v88 = v117;
  }

  v89 = v100;
  mlir::ValueRange::ValueRange(&v112, v88, v86);
  (**a5)(a5, v89, v112, v113);
  if (v115 != v117)
  {
    free(v115);
  }

  if (__s2 != &v105[8])
  {
    free(__s2);
  }

  if (WindowSizes != &v108[2])
  {
    free(WindowSizes);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PoolL2NormOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7, uint64_t *a8, char *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolL2NormOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PoolL2NormOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyleAttr,mlir::DenseIntElementsAttr&,mlir::UnitAttr,mlir::UnitAttr>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mps::PoolL2NormOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolL2NormOp,void>::id)
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

void mlir::DialectRegistry::addExtension<mlir::mps::MPSDialect>(void (*)(mlir::MLIRContext *,mlir::mps::MPSDialect *))::Extension::~Extension(mlir::DialectExtensionBase *a1)
{
  mlir::DialectExtensionBase::~DialectExtensionBase(a1);

  operator delete(v1);
}

void mlir::DialectExtension<BOOL mlir::DialectRegistry::addExtension<mlir::mps::MPSDialect>(void (*)(mlir::MLIRContext *,mlir::mps::MPSDialect *))::Extension,mlir::mps::MPSDialect>::clone(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x50uLL);
  v5 = v4;
  *v4 = &unk_1F5AF7ED0;
  v6 = v4 + 3;
  v4[1] = v4 + 3;
  v7 = (v4 + 1);
  v4[2] = 0x300000000;
  if (v4 != a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      if (v8 < 4)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 1), v6, *(a1 + 16), 16);
        v9 = *(a1 + 16);
        if (!v9)
        {
LABEL_8:
          *(v5 + 4) = v8;
          goto LABEL_9;
        }

        v6 = *v7;
      }

      memcpy(v6, *(a1 + 8), 16 * v9);
      goto LABEL_8;
    }
  }

LABEL_9:
  *v5 = &unk_1F5AFC818;
  v5[9] = *(a1 + 72);
  *a2 = v5;
}

void mlir::mps::getFilePathsInModule(mlir::mps *this@<X0>, uint64_t a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = 0x2000000000;
  v10 = &v7;
  v11 = &v10;
  mlir::detail::walk<mlir::ForwardIterator>(this, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_120getFilesUsedInModuleES3_E3__0NSB_18ReadDataFromFileOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v11, 1);
  if (HIDWORD(v8) && v8)
  {
    v4 = 0;
    do
    {
      v5 = *(v7 + v4);
      if (v5 != -8 && v5 != 0)
      {
        llvm::deallocate_buffer(*(v5 + 8), (8 * *(v5 + 24)));
      }

      v4 += 8;
    }

    while (8 * v8 != v4);
  }

  free(v7);
}

void mlir::mps::anonymous namespace::getStringMapKeys(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a2 + 16;
  *(a2 + 8) = 0x200000000;
  v4 = *(a1 + 12);
  if (v4 >= 3)
  {
    llvm::SmallVectorTemplateBase<std::string,false>::grow(a2, v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
      ;
    }
  }

  else
  {
    i = *a1;
  }

  v8 = *a1 + 8 * v5;
  if (i != v8)
  {
    v9 = *i;
    while (1)
    {
      v12 = *v9;
      v10 = v9 + 4;
      v11 = v12;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      if (v11 >= 0x17)
      {
        break;
      }

      HIBYTE(v24) = v11;
      v13 = __dst;
      if (v11)
      {
        goto LABEL_22;
      }

LABEL_23:
      *(v13 + v11) = 0;
      v15 = *(a2 + 8);
      v16 = *a2;
      if (v15 >= *(a2 + 12))
      {
        if (v16 <= __dst && v16 + 24 * v15 > __dst)
        {
          v22 = __dst - v16;
          llvm::SmallVectorTemplateBase<std::string,false>::grow(a2, v15 + 1);
          v16 = *a2;
          v17 = &v22[*a2];
          goto LABEL_25;
        }

        llvm::SmallVectorTemplateBase<std::string,false>::grow(a2, v15 + 1);
        v16 = *a2;
      }

      v17 = __dst;
LABEL_25:
      v18 = v16 + 24 * *(a2 + 8);
      v19 = *v17;
      *(v18 + 16) = v17[2];
      *v18 = v19;
      v17[1] = 0;
      v17[2] = 0;
      *v17 = 0;
      ++*(a2 + 8);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__dst[0]);
      }

      do
      {
        v20 = i[1];
        ++i;
        v9 = v20;
        if (v20)
        {
          v21 = v9 + 1 == 0;
        }

        else
        {
          v21 = 1;
        }
      }

      while (v21);
      if (i == v8)
      {
        return;
      }
    }

    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    __dst[1] = v11;
    v24 = v14 | 0x8000000000000000;
    __dst[0] = v13;
LABEL_22:
    memmove(v13, v10, v11);
    goto LABEL_23;
  }
}

uint64_t mlir::mps::anonymous namespace::mangleAndCopyFilesToNewBasePath(mlir *a1, const void *a2, std::string::size_type a3, const void *a4, std::string::size_type a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v145 = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    return 1;
  }

  v9 = a6;
  v10 = a5;
  v13 = a2;
  v14 = a1;
  v124 = (a6 + 24 * a7);
  if ((a3 | 7) == 0x17)
  {
    v15 = 25;
  }

  else
  {
    v15 = (a3 | 7) + 1;
  }

  __sz = v15;
  v119 = v15 | 0x8000000000000000;
  __val = 0;
  if ((a5 | 7) == 0x17)
  {
    v16 = 25;
  }

  else
  {
    v16 = (a5 | 7) + 1;
  }

  v117 = v16;
  v116 = v16 | 0x8000000000000000;
  while (1)
  {
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v131, *v9, *(v9 + 1));
    }

    else
    {
      v17 = *v9;
      v131.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&v131.__r_.__value_.__l.__data_ = v17;
    }

    memset(&v130, 0, sizeof(v130));
    size = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
    if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v131;
    }

    else
    {
      v19 = v131.__r_.__value_.__r.__words[0];
    }

    if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v131.__r_.__value_.__l.__size_;
    }

    std::string::append[abi:nn200100]<char const*,0>(&v130.__pn_, v19, (v19 + size));
    if (a3)
    {
      if (v13)
      {
        if (a3 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_260;
        }

        if (a3 >= 0x17)
        {
          p_dst = operator new(__sz);
          __dst.__r_.__value_.__l.__size_ = a3;
          __dst.__r_.__value_.__r.__words[2] = v119;
          __dst.__r_.__value_.__r.__words[0] = p_dst;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = a3;
          p_dst = &__dst;
        }

        memmove(p_dst, v13, a3);
        p_dst->__r_.__value_.__s.__data_[a3] = 0;
      }

      else
      {
        memset(&__dst, 0, sizeof(__dst));
      }

      __p.__pn_ = __dst;
      std::__fs::filesystem::operator/[abi:nn200100](&v130, &__p, &pn);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v130.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v130.__pn_.__r_.__value_.__l.__data_, v130.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v130.__pn_;
    }

    std::__fs::filesystem::__status(&pn, 0);
    if (__p.__pn_.__r_.__value_.__s.__data_[0] == 255 || !__p.__pn_.__r_.__value_.__s.__data_[0])
    {
      mlir::emitError(v14, v21, &__p);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&__p, "could not find file at path ");
      v23 = v22;
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v128, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
        if (!*v23)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v128 = pn;
        if (!*v22)
        {
LABEL_35:
          v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
          if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v128.__r_.__value_.__l.__data_);
          }

          v123 = v24;
          if (__p.__pn_.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&__p);
          }

          if (v144[0] != 1)
          {
            goto LABEL_91;
          }

          if (v143 != v144)
          {
            free(v143);
          }

          v25 = v141;
          if (v141)
          {
            v26 = v142;
            v27 = v141;
            if (v142 != v141)
            {
              do
              {
                v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
              }

              while (v26 != v25);
              v27 = v141;
            }

            v142 = v25;
            operator delete(v27);
          }

          v28 = v139;
          if (!v139)
          {
LABEL_89:
            if (v135 != v138)
            {
              free(v135);
            }

LABEL_91:
            v54 = 0;
            goto LABEL_92;
          }

          v29 = v140;
          v30 = v139;
          if (v140 == v139)
          {
LABEL_88:
            v140 = v28;
            operator delete(v30);
            goto LABEL_89;
          }

          do
          {
            v32 = *--v29;
            v31 = v32;
            *v29 = 0;
            if (v32)
            {
              operator delete[](v31);
            }
          }

          while (v29 != v28);
LABEL_87:
          v30 = v139;
          goto LABEL_88;
        }
      }

      v133 = 260;
      __dst.__r_.__value_.__r.__words[0] = &v128;
      mlir::Diagnostic::operator<<((v23 + 1), &__dst);
      goto LABEL_35;
    }

    std::__fs::filesystem::__status(&pn, 0);
    if (__p.__pn_.__r_.__value_.__s.__data_[0] == 2)
    {
      mlir::emitError(v14, v33, &__p);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&__p, "could not copy file at path ");
      v35 = v34;
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v128, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
        if (!*v35)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v128 = pn;
        if (!*v34)
        {
          goto LABEL_69;
        }
      }

      v133 = 260;
      __dst.__r_.__value_.__r.__words[0] = &v128;
      mlir::Diagnostic::operator<<(v35 + 8, &__dst);
      if (*v35)
      {
        v40 = v35 + 24;
        v41 = *(v35 + 24);
        LODWORD(__dst.__r_.__value_.__l.__data_) = 3;
        __dst.__r_.__value_.__l.__size_ = " as it is a directory";
        __dst.__r_.__value_.__r.__words[2] = 21;
        v42 = *(v35 + 32);
        if (v42 >= *(v35 + 36))
        {
          if (v41 <= &__dst && v41 + 24 * v42 > &__dst)
          {
            v111 = &__dst - v41;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v40, v35 + 40, v42 + 1, 24);
            v41 = *(v35 + 24);
            v43 = &v111[v41];
            goto LABEL_68;
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod(v40, v35 + 40, v42 + 1, 24);
          v41 = *(v35 + 24);
        }

        v43 = &__dst;
LABEL_68:
        v44 = v41 + 24 * *(v35 + 32);
        v45 = *&v43->__r_.__value_.__l.__data_;
        *(v44 + 16) = *(&v43->__r_.__value_.__l + 2);
        *v44 = v45;
        ++*(v35 + 32);
      }

LABEL_69:
      v46 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        v47 = v46;
        operator delete(v128.__r_.__value_.__l.__data_);
        v46 = v47;
      }

      v123 = v46;
      v14 = a1;
      if (__p.__pn_.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&__p);
      }

      if (v144[0] != 1)
      {
        goto LABEL_91;
      }

      if (v143 != v144)
      {
        free(v143);
      }

      v48 = v141;
      if (v141)
      {
        v49 = v142;
        v50 = v141;
        if (v142 != v141)
        {
          do
          {
            v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
          }

          while (v49 != v48);
          v50 = v141;
        }

        v142 = v48;
        operator delete(v50);
      }

      v28 = v139;
      if (!v139)
      {
        goto LABEL_89;
      }

      v51 = v140;
      v30 = v139;
      if (v140 == v139)
      {
        goto LABEL_88;
      }

      do
      {
        v53 = *--v51;
        v52 = v53;
        *v51 = 0;
        if (v53)
        {
          operator delete[](v52);
        }
      }

      while (v51 != v28);
      goto LABEL_87;
    }

    memset(&v128, 0, sizeof(v128));
    if (a8)
    {
      std::to_string(&v127, __val);
      v36 = std::string::append(&v127, "_");
      v37 = v36->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::__fs::filesystem::path::__filename(&v130);
      if (v38.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_260;
      }

      if (v38.__size_ >= 0x17)
      {
        v56 = a4;
        v57 = v10;
        v58 = a8;
        if ((v38.__size_ | 7) == 0x17)
        {
          v59 = 25;
        }

        else
        {
          v59 = (v38.__size_ | 7) + 1;
        }

        p_p = operator new(v59);
        v60 = v59 | 0x8000000000000000;
        a8 = v58;
        v10 = v57;
        a4 = v56;
        v14 = a1;
        __p.__pn_.__r_.__value_.__l.__size_ = v38.__size_;
        __p.__pn_.__r_.__value_.__r.__words[2] = v60;
        __p.__pn_.__r_.__value_.__r.__words[0] = p_p;
      }

      else
      {
        *(&__p.__pn_.__r_.__value_.__s + 23) = v38.__size_;
        p_p = &__p;
        if (!v38.__size_)
        {
LABEL_111:
          p_p->__pn_.__r_.__value_.__s.__data_[v38.__size_] = 0;
          v61 = __p.__pn_.__r_.__value_.__l.__size_;
          v62 = __p.__pn_.__r_.__value_.__r.__words[0];
          LODWORD(v125.__pn_.__r_.__value_.__l.__data_) = __p.__pn_.__r_.__value_.__r.__words[2];
          *(v125.__pn_.__r_.__value_.__r.__words + 3) = *(&__p.__pn_.__r_.__value_.__r.__words[2] + 3);
          v63 = SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v126, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
            v64 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
            v61 = v126.__r_.__value_.__l.__size_;
            v65 = v126.__r_.__value_.__r.__words[0];
          }

          else
          {
            v64 = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
            *&v126.__r_.__value_.__l.__data_ = *&__p.__pn_.__r_.__value_.__l.__data_;
            LODWORD(v126.__r_.__value_.__r.__words[2]) = v125.__pn_.__r_.__value_.__l.__data_;
            *(&v126.__r_.__value_.__r.__words[2] + 3) = *(v125.__pn_.__r_.__value_.__r.__words + 3);
            *(&v126.__r_.__value_.__s + 23) = *(&__p.__pn_.__r_.__value_.__s + 23);
            v65 = __p.__pn_.__r_.__value_.__r.__words[0];
          }

          v13 = a2;
          if ((v64 & 0x80u) == 0)
          {
            v66 = &v126;
          }

          else
          {
            v66 = v65;
          }

          if ((v64 & 0x80u) == 0)
          {
            v61 = v64;
          }

          v67 = std::string::append(&__dst, v66, v61);
          v68 = v67->__r_.__value_.__r.__words[2];
          *&__p.__pn_.__r_.__value_.__l.__data_ = *&v67->__r_.__value_.__l.__data_;
          __p.__pn_.__r_.__value_.__r.__words[2] = v68;
          v67->__r_.__value_.__l.__size_ = 0;
          v67->__r_.__value_.__r.__words[2] = 0;
          v67->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v126.__r_.__value_.__l.__data_);
            if ((v63 & 0x80000000) == 0)
            {
LABEL_121:
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_122;
              }

LABEL_145:
              operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_122:
              if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v127.__r_.__value_.__l.__data_);
              }

              if (v10 > 0x7FFFFFFFFFFFFFF7)
              {
LABEL_260:
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              if (v10 >= 0x17)
              {
                v69 = operator new(v117);
                v126.__r_.__value_.__l.__size_ = v10;
                v126.__r_.__value_.__r.__words[2] = v116;
                v126.__r_.__value_.__r.__words[0] = v69;
              }

              else
              {
                *(&v126.__r_.__value_.__s + 23) = v10;
                v69 = &v126;
                if (!v10)
                {
LABEL_130:
                  v69[v10] = 0;
                  v127 = v126;
                  memset(&v126, 0, sizeof(v126));
                  memset(&v125, 0, sizeof(v125));
                  v70 = SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
                  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v71 = &__p;
                  }

                  else
                  {
                    v71 = __p.__pn_.__r_.__value_.__r.__words[0];
                  }

                  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v70 = __p.__pn_.__r_.__value_.__l.__size_;
                  }

                  std::string::append[abi:nn200100]<char const*,0>(&v125.__pn_, &v71->__pn_, (&v71->__pn_ + v70));
                  std::__fs::filesystem::operator/[abi:nn200100](&v125, &v127, &__dst);
                  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v128.__r_.__value_.__l.__data_);
                  }

                  v128 = __dst;
                  *(&__dst.__r_.__value_.__s + 23) = 0;
                  __dst.__r_.__value_.__s.__data_[0] = 0;
                  if (SHIBYTE(v125.__pn_.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v125.__pn_.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_139:
                      if ((SHIBYTE(v126.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_140:
                        __dst.__r_.__value_.__r.__words[0] = &v131;
                        v72 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a8, &v131, &std::piecewise_construct, &__dst);
                        std::string::operator=((v72 + 40), &__p.__pn_);
                        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
                        }

                        ++__val;
                        goto LABEL_165;
                      }

LABEL_148:
                      operator delete(v126.__r_.__value_.__l.__data_);
                      goto LABEL_140;
                    }
                  }

                  else if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_139;
                  }

                  operator delete(v127.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v126.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_140;
                  }

                  goto LABEL_148;
                }
              }

              memmove(v69, a4, v10);
              goto LABEL_130;
            }
          }

          else if ((v63 & 0x80000000) == 0)
          {
            goto LABEL_121;
          }

          operator delete(v62);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_122;
          }

          goto LABEL_145;
        }
      }

      memmove(p_p, v38.__data_, v38.__size_);
      goto LABEL_111;
    }

    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_260;
    }

    if (v10 >= 0x17)
    {
      v55 = operator new(v117);
      v127.__r_.__value_.__l.__size_ = v10;
      v127.__r_.__value_.__r.__words[2] = v116;
      v127.__r_.__value_.__r.__words[0] = v55;
LABEL_150:
      memmove(v55, a4, v10);
      goto LABEL_151;
    }

    *(&v127.__r_.__value_.__s + 23) = v10;
    v55 = &v127;
    if (v10)
    {
      goto LABEL_150;
    }

LABEL_151:
    *(v55 + v10) = 0;
    __dst = v127;
    memset(&v127, 0, sizeof(v127));
    v73 = std::__fs::filesystem::path::__filename(&v130);
    if (v73.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_260;
    }

    if (v73.__size_ >= 0x17)
    {
      if ((v73.__size_ | 7) == 0x17)
      {
        v75 = 25;
      }

      else
      {
        v75 = (v73.__size_ | 7) + 1;
      }

      v74 = operator new(v75);
      v76 = v75 | 0x8000000000000000;
      a8 = 0;
      v14 = a1;
      __p.__pn_.__r_.__value_.__l.__size_ = v73.__size_;
      __p.__pn_.__r_.__value_.__r.__words[2] = v76;
      __p.__pn_.__r_.__value_.__r.__words[0] = v74;
LABEL_159:
      memmove(v74, v73.__data_, v73.__size_);
      goto LABEL_160;
    }

    *(&__p.__pn_.__r_.__value_.__s + 23) = v73.__size_;
    v74 = &__p;
    if (v73.__size_)
    {
      goto LABEL_159;
    }

LABEL_160:
    v74->__pn_.__r_.__value_.__s.__data_[v73.__size_] = 0;
    v126 = __p.__pn_;
    std::__fs::filesystem::operator/[abi:nn200100](&v126, &__dst, &__p);
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    v128 = __p.__pn_;
    *(&__p.__pn_.__r_.__value_.__s + 23) = 0;
    __p.__pn_.__r_.__value_.__s.__data_[0] = 0;
    v13 = a2;
    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v126.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_164:
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_182;
        }

        goto LABEL_165;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_164;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_182:
      operator delete(v127.__r_.__value_.__l.__data_);
    }

LABEL_165:
    std::__fs::filesystem::__status(&v128, 0);
    if (__p.__pn_.__r_.__value_.__s.__data_[0] && __p.__pn_.__r_.__value_.__s.__data_[0] != 255)
    {
      mlir::emitError(v14, v77, &__p);
      if (__p.__pn_.__r_.__value_.__r.__words[0])
      {
        LODWORD(__dst.__r_.__value_.__l.__data_) = 3;
        __dst.__r_.__value_.__l.__size_ = "file at path ";
        __dst.__r_.__value_.__r.__words[2] = 13;
        v81 = v135;
        if (v136 >= v137)
        {
          if (v135 <= &__dst && v135 + 24 * v136 > &__dst)
          {
            v112 = &__dst - v135;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
            v81 = v135;
            v82 = (v135 + v112);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
            v82 = &__dst;
            v81 = v135;
          }
        }

        else
        {
          v82 = &__dst;
        }

        v83 = &v81[24 * v136];
        v84 = *&v82->__r_.__value_.__l.__data_;
        *(v83 + 2) = *(&v82->__r_.__value_.__l + 2);
        *v83 = v84;
        ++v136;
      }

      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v127, v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__l.__size_);
        if (!__p.__pn_.__r_.__value_.__r.__words[0])
        {
          goto LABEL_218;
        }
      }

      else
      {
        v127 = v128;
        if (!__p.__pn_.__r_.__value_.__r.__words[0])
        {
          goto LABEL_218;
        }
      }

      v133 = 260;
      __dst.__r_.__value_.__r.__words[0] = &v127;
      mlir::Diagnostic::operator<<(&__p.__pn_.__r_.__value_.__l.__size_, &__dst);
      if (__p.__pn_.__r_.__value_.__r.__words[0])
      {
        LODWORD(__dst.__r_.__value_.__l.__data_) = 3;
        __dst.__r_.__value_.__l.__size_ = " already exists";
        __dst.__r_.__value_.__r.__words[2] = 15;
        v100 = v135;
        if (v136 >= v137)
        {
          if (v135 <= &__dst && v135 + 24 * v136 > &__dst)
          {
            v114 = &__dst - v135;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
            v100 = v135;
            v101 = (v135 + v114);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
            v101 = &__dst;
            v100 = v135;
          }
        }

        else
        {
          v101 = &__dst;
        }

        v102 = &v100[24 * v136];
        v103 = *&v101->__r_.__value_.__l.__data_;
        *(v102 + 2) = *(&v101->__r_.__value_.__l + 2);
        *v102 = v103;
        ++v136;
      }

LABEL_218:
      v104 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }

      v123 = v104;
      if (__p.__pn_.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&__p);
      }

      if (v144[0] == 1)
      {
        if (v143 != v144)
        {
          free(v143);
        }

        v105 = v141;
        if (v141)
        {
          v106 = v142;
          v107 = v141;
          if (v142 != v141)
          {
            do
            {
              v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
            }

            while (v106 != v105);
            v107 = v141;
          }

          v142 = v105;
          operator delete(v107);
        }

        v95 = v139;
        if (!v139)
        {
          goto LABEL_238;
        }

        v108 = v140;
        v97 = v139;
        if (v140 == v139)
        {
          goto LABEL_237;
        }

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

        while (v108 != v95);
        goto LABEL_236;
      }

LABEL_240:
      v54 = 0;
      if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_241;
    }

    if (!std::__fs::filesystem::__copy_file(&pn, &v128, 0, 0))
    {
      mlir::emitError(v14, v78, &__p);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&__p, "could not copy from ");
      v80 = v79;
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v127, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
        if (!*v80)
        {
          goto LABEL_188;
        }
      }

      else
      {
        v127 = pn;
        if (!*v79)
        {
LABEL_188:
          if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v126, v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__l.__size_);
            if (!*v80)
            {
LABEL_191:
              v91 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
              if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v126.__r_.__value_.__l.__data_);
              }

              v14 = a1;
              if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v127.__r_.__value_.__l.__data_);
              }

              v123 = v91;
              if (__p.__pn_.__r_.__value_.__r.__words[0])
              {
                mlir::InFlightDiagnostic::report(&__p);
              }

              if (v144[0] == 1)
              {
                if (v143 != v144)
                {
                  free(v143);
                }

                v92 = v141;
                if (v141)
                {
                  v93 = v142;
                  v94 = v141;
                  if (v142 != v141)
                  {
                    do
                    {
                      v93 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v93 - 1);
                    }

                    while (v93 != v92);
                    v94 = v141;
                  }

                  v142 = v92;
                  operator delete(v94);
                }

                v95 = v139;
                if (!v139)
                {
                  goto LABEL_238;
                }

                v96 = v140;
                v97 = v139;
                if (v140 == v139)
                {
LABEL_237:
                  v140 = v95;
                  operator delete(v97);
LABEL_238:
                  if (v135 != v138)
                  {
                    free(v135);
                  }

                  goto LABEL_240;
                }

                do
                {
                  v99 = *--v96;
                  v98 = v99;
                  *v96 = 0;
                  if (v99)
                  {
                    operator delete[](v98);
                  }
                }

                while (v96 != v95);
LABEL_236:
                v97 = v139;
                goto LABEL_237;
              }

              goto LABEL_240;
            }
          }

          else
          {
            v126 = v128;
            if (!*v80)
            {
              goto LABEL_191;
            }
          }

          v133 = 260;
          __dst.__r_.__value_.__r.__words[0] = &v126;
          mlir::Diagnostic::operator<<(v80 + 8, &__dst);
          goto LABEL_191;
        }
      }

      v133 = 260;
      __dst.__r_.__value_.__r.__words[0] = &v127;
      mlir::Diagnostic::operator<<(v80 + 8, &__dst);
      if (!*v80)
      {
        goto LABEL_188;
      }

      v85 = v80 + 24;
      v86 = *(v80 + 24);
      LODWORD(__dst.__r_.__value_.__l.__data_) = 3;
      __dst.__r_.__value_.__l.__size_ = " to ";
      __dst.__r_.__value_.__r.__words[2] = 4;
      v87 = *(v80 + 32);
      if (v87 >= *(v80 + 36))
      {
        if (v86 <= &__dst && v86 + 24 * v87 > &__dst)
        {
          v113 = &__dst - v86;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v85, v80 + 40, v87 + 1, 24);
          v86 = *(v80 + 24);
          v88 = &v113[v86];
          goto LABEL_187;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(v85, v80 + 40, v87 + 1, 24);
        v86 = *(v80 + 24);
      }

      v88 = &__dst;
LABEL_187:
      v89 = v86 + 24 * *(v80 + 32);
      v90 = *&v88->__r_.__value_.__l.__data_;
      *(v89 + 16) = *(&v88->__r_.__value_.__l + 2);
      *v89 = v90;
      ++*(v80 + 32);
      goto LABEL_188;
    }

    v54 = 1;
    if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_241:
    operator delete(v128.__r_.__value_.__l.__data_);
LABEL_92:
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v130.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_94:
        if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_99;
      }
    }

    else if ((SHIBYTE(v130.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

    operator delete(v130.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_95:
      if ((v54 & 1) == 0)
      {
        return v123;
      }

      goto LABEL_100;
    }

LABEL_99:
    operator delete(v131.__r_.__value_.__l.__data_);
    if ((v54 & 1) == 0)
    {
      return v123;
    }

LABEL_100:
    v9 = (v9 + 24);
    if (v9 == v124)
    {
      return 1;
    }
  }
}

void mlir::mps::createCopyDataFilesPass(const std::string *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x348uLL);
  *(v4 + 2) = "builtin.module";
  *(v4 + 3) = 14;
  v4[32] = 1;
  v4[40] = 0;
  v4[120] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 37) = 0x1000000000;
  *(v4 + 42) = 0;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *v4 = &unk_1F5AFC8C0;
  *&v9 = "(Optional) If set, all the relative paths will use this as the base path.";
  *(&v9 + 1) = 73;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 344), v4 + 152, "current-base-path", 17, &v9);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v9 = "All files will be copied to this path and will be referred to relatievly to this path.";
  *(&v9 + 1) = 86;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 592), v4 + 152, "new-base-path", 13, &v9);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *v4 = &unk_1F5AFC850;
  std::string::operator=((v4 + 472), a1);
  v5 = *(v4 + 71);
  if (v5 && ((*(*v5 + 48))(v5, a1), std::string::operator=(v4 + 30, a1 + 1), (v6 = *(v4 + 102)) != 0))
  {
    (*(*v6 + 48))(v6, a1 + 1);
    *a2 = v4;
  }

  else
  {
    v7 = std::__throw_bad_function_call[abi:nn200100]();
    llvm::SmallVectorTemplateBase<std::string,false>::grow(v7, v8);
  }
}

void llvm::SmallVectorTemplateBase<std::string,false>::grow(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v17);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 24 * v7;
    v9 = v5;
    do
    {
      v10 = *v6;
      *(v9 + 16) = v6[2];
      *v9 = v10;
      v9 += 24;
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      v6 += 3;
      v8 -= 24;
    }

    while (v8);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v6[3 * v11 - 1] + 7;
      v13 = -24 * v11;
      v14 = v12;
      do
      {
        v15 = *v14;
        v14 -= 24;
        if (v15 < 0)
        {
          operator delete(*(v12 - 23));
        }

        v12 = v14;
        v13 += 24;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v16 = v17;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v16;
}

llvm::StringMapImpl ***_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_120getFilesUsedInModuleES3_E3__0NSB_18ReadDataFromFileOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(llvm::StringMapImpl ***result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
    {
      v14 = v2;
      v15 = v3;
      v4 = *result;
      v12 = a2;
      v5 = *v4;
      Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v12);
      v8 = v7;
      v10 = llvm::StringMapImpl::hash(Name, v7, v9);
      v11 = llvm::StringMap<llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>,llvm::MallocAllocator>::try_emplace_with_hash<>(v5, Name, v8, v10);
      return llvm::DenseMapBase<llvm::DenseMap<mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>,mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>::try_emplace<llvm::detail::DenseSetEmpty&>((*v11 + 1), &v12, v13);
    }
  }

  return result;
}

size_t **llvm::StringMap<llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer(a3 + 33, 8uLL);
  v12 = buffer;
  v13 = (buffer + 4);
  if (a3)
  {
    memcpy(buffer + 4, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}