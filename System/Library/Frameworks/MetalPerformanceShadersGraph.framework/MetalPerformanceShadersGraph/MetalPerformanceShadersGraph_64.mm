void *mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv2DDataGradientOp>::~CanonicalizeConvToMatMul(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv2DDataGradientOp>::~CanonicalizeConvToMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv2DDataGradientOp>::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v155 = *MEMORY[0x1E69E9840];
  v136[0] = a2;
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  __src = v7;
  v148 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v145 = v9;
  v146 = v10;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v7);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(v9))
  {
    goto LABEL_41;
  }

  if (!mlir::CallOpInterface::getArgOperands(&__src))
  {
    goto LABEL_41;
  }

  if ((mlir::CallOpInterface::getArgOperands(&v145) & 1) == 0)
  {
    goto LABEL_41;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&__src);
  v13 = v12;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
  if ((*(a1 + 96) & 1) == 0)
  {
    goto LABEL_41;
  }

  v16 = v15;
  v17 = ArgAttrsAttr;
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(v136) || mlir::mps::Conv3DOp::getWeightsLayout(v136) != 2 || v13 != 4 || v16 != 4 || *(v17 + 16) != 1 || *(v17 + 24) != 1 || mlir::mps::Conv3DOp::getGroups(v136) != 1)
  {
    goto LABEL_41;
  }

  v150 = &v152;
  v151 = 0x600000000;
  Strides = mlir::mps::Conv3DOp::getStrides(v136);
  if (Strides)
  {
    v19 = Strides;
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v20, &v150, 1);
  v21 = v150;
  if (v151)
  {
    v22 = 0;
    while (*&v150[v22] == 1)
    {
      v22 += 8;
      if (8 * v151 == v22)
      {
        goto LABEL_25;
      }
    }

LABEL_129:
    LOBYTE(v139) = 0;
    v144 = 0;
    if (v21 == &v152)
    {
      goto LABEL_42;
    }

    goto LABEL_130;
  }

LABEL_25:
  if (v150 != &v152)
  {
    free(v150);
  }

  v150 = &v152;
  v151 = 0x600000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v136);
  if (InputAttributeNames)
  {
    v24 = InputAttributeNames;
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v24;
  }

  else
  {
    v25 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v25, &v150, 1);
  v21 = v150;
  if (v151)
  {
    v26 = 0;
    while (*&v150[v26] == 1)
    {
      v26 += 8;
      if (8 * v151 == v26)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_129;
  }

LABEL_34:
  if (v150 != &v152)
  {
    free(v150);
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(v136);
  if ((PaddingStyle - 1) < 2 || PaddingStyle == 4)
  {
    goto LABEL_138;
  }

  if (PaddingStyle)
  {
LABEL_41:
    LOBYTE(v139) = 0;
    v144 = 0;
    goto LABEL_42;
  }

  v150 = &v152;
  v151 = 0x600000000;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v136);
  v29 = Rewriter;
  if (Rewriter)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v30 = 0;
  }

  mlir::getIntValues<unsigned long long>(v29, v30, &v150, 1);
  v21 = v150;
  if (!v151)
  {
LABEL_136:
    if (v150 != &v152)
    {
      free(v150);
    }

LABEL_138:
    v128 = *(v136[0] + 72);
    v129 = *(v128 + 24);
    v130 = *(v128 + 56);
    v139 = v129;
    v140 = v130;
    v141[0] = 1;
    LOBYTE(v142) = 0;
    v143 = 0;
    v144 = 1;
    goto LABEL_42;
  }

  v127 = 0;
  while (!*&v150[v127])
  {
    v127 += 8;
    if (8 * v151 == v127)
    {
      goto LABEL_136;
    }
  }

  LOBYTE(v139) = 0;
  v144 = 0;
  if (v150 != &v152)
  {
LABEL_130:
    free(v21);
  }

LABEL_42:
  if (v144)
  {
    v31 = v140;
    v137 = v140;
    v138 = v139;
    v32 = (*(v139 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v32)
    {
      v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
      v31 = v137;
    }

    else
    {
      v33 = 0;
    }

    v145 = v32;
    v146 = v33;
    v36 = (*(v31 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v36)
    {
      v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
    }

    else
    {
      v37 = 0;
    }

    v136[0] = v36;
    v136[1] = v37;
    mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v39 = v38;
    v41 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v42 = v40;
    __src = v149;
    v148 = 0x500000000;
    v43 = (8 * v40) >> 3;
    if (v43 < 6)
    {
      v44 = 0;
      v45 = 0;
      v46 = 8 * v40;
      if (!v40)
      {
        goto LABEL_66;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v149, v43, 4);
      v44 = v148;
      v45 = v148;
      v46 = 8 * v42;
      if (!v42)
      {
LABEL_66:
        LODWORD(v148) = v45 + (v46 >> 3);
        v63 = v141[0];
        v64 = *(mlir::CallableOpInterface::getArgAttrsAttr(v136) + 8 * v63);
        if (v64 == 0x8000000000000000)
        {
          v65 = -1;
        }

        else
        {
          v65 = v64;
        }

        v66 = __src;
        *(__src + 1) = v65;
        if (!v148)
        {
          goto LABEL_84;
        }

        v67 = (v148 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v67 >= 7)
        {
          v70 = v67 + 1;
          v71 = (v67 + 1) & 0x7FFFFFFFFFFFFFF8;
          v69 = (v66 + 4 * v71);
          v72 = v66 + 1;
          v73 = 0uLL;
          v74.i64[0] = -1;
          v74.i64[1] = -1;
          v75 = vdupq_n_s64(1uLL);
          v76 = v71;
          v77 = 0uLL;
          v78 = 0uLL;
          v79 = 0uLL;
          do
          {
            v80 = vceqq_s32(v72[-1], v74);
            v81.i64[0] = v80.u32[0];
            v81.i64[1] = v80.u32[1];
            v82 = vandq_s8(v81, v75);
            v81.i64[0] = v80.u32[2];
            v81.i64[1] = v80.u32[3];
            v83 = vandq_s8(v81, v75);
            v84 = vceqq_s32(*v72, v74);
            v81.i64[0] = v84.u32[0];
            v81.i64[1] = v84.u32[1];
            v85 = vandq_s8(v81, v75);
            v81.i64[0] = v84.u32[2];
            v81.i64[1] = v84.u32[3];
            v77 = vaddq_s64(v77, v83);
            v73 = vaddq_s64(v73, v82);
            v79 = vaddq_s64(v79, vandq_s8(v81, v75));
            v78 = vaddq_s64(v78, v85);
            v72 += 2;
            v76 -= 8;
          }

          while (v76);
          v68 = vaddvq_s64(vaddq_s64(vaddq_s64(v78, v73), vaddq_s64(v79, v77)));
          if (v70 == v71)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v68 = 0;
          v69 = v66;
        }

        v86 = (v66 + 4 * v148);
        do
        {
          v87 = v69->i32[0];
          v69 = (v69 + 4);
          if (v87 == -1)
          {
            ++v68;
          }
        }

        while (v69 != v86);
LABEL_79:
        if (v68 >= 2)
        {
          v150 = "failed: unsupported dynamic dimensions";
          v154 = 259;
          v133[0] = &v150;
          v88 = *(a3 + 16);
          if (v88 && mlir::RewriterBase::Listener::classof(v88))
          {
            (*(*v88 + 88))(v88, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DDataGradientOp &>(mlir::mps::Conv2DDataGradientOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v133);
          }

          v35 = 0;
LABEL_126:
          if (__src != v149)
          {
            free(__src);
          }

          return v35;
        }

LABEL_84:
        v150 = &v152;
        HIDWORD(v151) = 3;
        v152 = 0x300000002;
        if (v39 == 4)
        {
          v89 = 2;
        }

        else
        {
          v153 = 4;
          v89 = 3;
        }

        LODWORD(v151) = v89;
        v133[0] = v89;
        IntegerType = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
        v91 = mlir::RankedTensorType::get(v133, 1, IntegerType, 0);
        v92 = *(a2 + 24);
        if (v91)
        {
          v93 = v91;
          v94 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
          v91 = v93;
        }

        else
        {
          v94 = 0;
        }

        v135 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v94, v150, 4 * v151, 4, 1, 1);
        v133[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v92, &v135);
        v137 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a3 + 8), *(a2 + 24), &v137, v133) - 16;
        if (v150 != &v152)
        {
          free(v150);
        }

        v95 = *(a2 + 24);
        LODWORD(v150) = 0;
        LODWORD(v133[0]) = 1;
        v138 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>((a3 + 8), v95, &v138, &v150, v133) - 16;
        LODWORD(v135) = 1;
        v96 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
        v97 = mlir::RankedTensorType::get(0, 0, v96, 0);
        v98 = *(a2 + 24);
        if (v97)
        {
          v99 = v97;
          v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
          v97 = v99;
        }

        else
        {
          v100 = 0;
        }

        v133[0] = mlir::DenseElementsAttr::getFromRawBuffer(v97, v100, &v135, 4, 4, 1, 1);
        v150 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v98, v133) - 16);
        v138 = mlir::OpBuilder::create<mlir::mps::Flatten2DOp,mlir::Value &,mlir::Value &>((a3 + 8), *(a2 + 24), &v138, &v150) - 16;
        v101 = *(a2 + 24);
        LOBYTE(v150) = 0;
        v135 = (mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>((a3 + 8), v101, &v137, &v138, v141, &v150) - 16);
        if (v143 == 1)
        {
          v134 = v142;
          Loc = mlir::Value::getLoc(&v134);
          v103 = (v134[1] & 0xFFFFFFFFFFFFFFF8);
          if (v103)
          {
            v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v103 + 8);
          }

          else
          {
            v104 = 0;
          }

          v133[0] = v103;
          v133[1] = v104;
          v150 = &v152;
          v151 = 0x200000002;
          v152 = 0x1FFFFFFFFLL;
          if (mlir::CallOpInterface::getArgOperands(v133))
          {
            v105 = mlir::CallableOpInterface::getArgAttrsAttr(v133);
            if (v106)
            {
              v107 = 8 * v106;
              while (*v105 != 0x8000000000000000)
              {
                ++v105;
                v107 -= 8;
                if (!v107)
                {
                  goto LABEL_104;
                }
              }
            }

            else
            {
LABEL_104:
              v108 = mlir::CallableOpInterface::getArgAttrsAttr(v133);
              NumElements = mlir::ShapedType::getNumElements(v108, v109);
              *v150 = NumElements;
            }
          }

          v132 = 2;
          v111 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
          v112 = mlir::RankedTensorType::get(&v132, 1, v111, 0);
          if (v112)
          {
            v113 = v112;
            v114 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v112 + 8);
            v112 = v113;
          }

          else
          {
            v114 = 0;
          }

          v131 = mlir::DenseElementsAttr::getFromRawBuffer(v112, v114, v150, 4 * v151, 4, 1, 1);
          v132 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &v131);
          v134 = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), Loc, &v134, &v132) - 16);
          v131 = mlir::getElementTypeOrSelf((v135[1] & 0xFFFFFFFFFFFFFFF8));
          if (v131 != mlir::getElementTypeOrSelf((v134[1] & 0xFFFFFFFFFFFFFFF8)))
          {
            v134 = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a3 + 8), Loc, &v134, &v131) - 16);
          }

          v135 = (mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>((a3 + 8), Loc, &v135, &v134) - 16);
          if (v150 != &v152)
          {
            free(v150);
          }
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v145);
        v150 = v115;
        v116 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
        v118 = mlir::RankedTensorType::get(&v150, 1, v116, 0);
        v150 = &v152;
        v151 = 0x500000000;
        v119 = v148;
        if (!v148)
        {
          v122 = &v152;
LABEL_120:
          *v122 = *(v122 + 1);
          *(v122 + 1) = v117;
          v123 = *(a2 + 24);
          if (v118)
          {
            v124 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v118 + 8);
            v122 = v150;
          }

          else
          {
            v124 = 0;
          }

          v35 = 1;
          v134 = mlir::DenseElementsAttr::getFromRawBuffer(v118, v124, v122, 4 * v151, 4, 1, 1);
          v133[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v123, &v134);
          v135 = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), *(a2 + 24), &v135, v133) - 16);
          if (v150 != &v152)
          {
            free(v150);
          }

          LODWORD(v150) = 0;
          LODWORD(v133[0]) = 1;
          v125 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>((a3 + 8), *(a2 + 24), &v135, &v150, v133);
          (*(*a3 + 8))(a3, a2, v125);
          goto LABEL_126;
        }

        if (v148 < 6)
        {
          v121 = &v152;
          v120 = v148;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, &v152, v148, 4);
          v120 = v148;
          if (!v148)
          {
LABEL_119:
            LODWORD(v151) = v119;
            v122 = v150;
            v117 = *v150;
            goto LABEL_120;
          }

          v121 = v150;
        }

        memcpy(v121, __src, 4 * v120);
        goto LABEL_119;
      }
    }

    v47 = (__src + 4 * v44);
    v48 = (v42 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v48 >= 7)
    {
      v51 = v48 + 1;
      v52 = (v48 + 1) & 0x3FFFFFFFFFFFFFF8;
      v49 = (v41 + 8 * v52);
      v50 = &v47->i32[v52];
      v53 = v47 + 1;
      v54 = (v41 + 32);
      v55 = vnegq_f64(0);
      v56 = v52;
      do
      {
        v57 = v54[-2];
        v58 = v54[-1];
        v59 = *v54;
        v60 = v54[1];
        v54 += 4;
        v53[-1] = vorrq_s8(vuzp1q_s32(v57, v58), vuzp1q_s32(vceqq_s64(v57, v55), vceqq_s64(v58, v55)));
        *v53 = vorrq_s8(vuzp1q_s32(v59, v60), vuzp1q_s32(vceqq_s64(v59, v55), vceqq_s64(v60, v55)));
        v53 += 2;
        v56 -= 8;
      }

      while (v56);
      if (v51 == v52)
      {
LABEL_65:
        v45 = v148;
        goto LABEL_66;
      }
    }

    else
    {
      v49 = v41;
      v50 = v47;
    }

    do
    {
      v62 = *v49++;
      v61 = v62;
      if (v62 == 0x8000000000000000)
      {
        v61 = -1;
      }

      *v50++ = v61;
    }

    while (v49 != (v41 + v46));
    goto LABEL_65;
  }

  v150 = "failed: pattern did not match";
  v154 = 259;
  __src = &v150;
  v34 = *(a3 + 16);
  if (v34 && mlir::RewriterBase::Listener::classof(v34))
  {
    (*(*v34 + 88))(v34, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DDataGradientOp &>(mlir::mps::Conv2DDataGradientOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__src);
  }

  return 0;
}

void *mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv3DOp>::~CanonicalizeConvToMatMul(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv3DOp>::~CanonicalizeConvToMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::Conv3DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv3DOp>::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v153 = *MEMORY[0x1E69E9840];
  v134[0] = a2;
  v5 = *(a2 + 72);
  v6 = (*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    v5 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
  }

  __src = v6;
  v146 = v7;
  v8 = (*(*(v5 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v143 = v8;
  v144 = v9;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v6);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(v8))
  {
    goto LABEL_41;
  }

  if (!mlir::CallOpInterface::getArgOperands(&__src))
  {
    goto LABEL_41;
  }

  if ((mlir::CallOpInterface::getArgOperands(&v143) & 1) == 0)
  {
    goto LABEL_41;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&__src);
  v12 = v11;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v143);
  v15 = v14;
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(v134) != 7 || mlir::mps::Conv3DOp::getWeightsLayout(v134) != 9 || v12 != 5 || v15 != 5 || ArgAttrsAttr[2] != 1 || ArgAttrsAttr[3] != 1 || ArgAttrsAttr[4] != 1 || mlir::mps::Conv3DOp::getGroups(v134) != 1)
  {
    goto LABEL_41;
  }

  v148 = &v150;
  v149 = 0x600000000;
  Strides = mlir::mps::Conv3DOp::getStrides(v134);
  if (Strides)
  {
    v17 = Strides;
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v18, &v148, 1);
  v19 = v148;
  if (v149)
  {
    v20 = 0;
    while (*&v148[v20] == 1)
    {
      v20 += 8;
      if (8 * v149 == v20)
      {
        goto LABEL_25;
      }
    }

LABEL_129:
    LOBYTE(v137) = 0;
    v142 = 0;
    if (v19 == &v150)
    {
      goto LABEL_42;
    }

    goto LABEL_130;
  }

LABEL_25:
  if (v148 != &v150)
  {
    free(v148);
  }

  v148 = &v150;
  v149 = 0x600000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v134);
  if (InputAttributeNames)
  {
    v22 = InputAttributeNames;
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v23, &v148, 1);
  v19 = v148;
  if (v149)
  {
    v24 = 0;
    while (*&v148[v24] == 1)
    {
      v24 += 8;
      if (8 * v149 == v24)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_129;
  }

LABEL_34:
  if (v148 != &v150)
  {
    free(v148);
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(v134);
  if ((PaddingStyle - 1) < 2 || PaddingStyle == 4)
  {
    goto LABEL_138;
  }

  if (PaddingStyle)
  {
LABEL_41:
    LOBYTE(v137) = 0;
    v142 = 0;
    goto LABEL_42;
  }

  v148 = &v150;
  v149 = 0x600000000;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v134);
  v27 = Rewriter;
  if (Rewriter)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v28 = 0;
  }

  mlir::getIntValues<unsigned long long>(v27, v28, &v148, 1);
  v19 = v148;
  if (!v149)
  {
LABEL_136:
    if (v148 != &v150)
    {
      free(v148);
    }

LABEL_138:
    v126 = *(v134[0] + 72);
    v127 = *(v126 + 24);
    v128 = *(v126 + 56);
    v137 = v127;
    v138 = v128;
    v139[0] = 0;
    LOBYTE(v140) = 0;
    v141 = 0;
    v142 = 1;
    goto LABEL_42;
  }

  v125 = 0;
  while (!*&v148[v125])
  {
    v125 += 8;
    if (8 * v149 == v125)
    {
      goto LABEL_136;
    }
  }

  LOBYTE(v137) = 0;
  v142 = 0;
  if (v148 != &v150)
  {
LABEL_130:
    free(v19);
  }

LABEL_42:
  if (v142)
  {
    v29 = v138;
    v135 = v138;
    v136 = v137;
    v30 = (*(v137 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v30)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
      v29 = v135;
    }

    else
    {
      v31 = 0;
    }

    v143 = v30;
    v144 = v31;
    v34 = (*(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v34)
    {
      v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
    }

    else
    {
      v35 = 0;
    }

    v134[0] = v34;
    v134[1] = v35;
    mlir::CallableOpInterface::getArgAttrsAttr(&v143);
    v37 = v36;
    v39 = mlir::CallableOpInterface::getArgAttrsAttr(&v143);
    v40 = v38;
    __src = v147;
    v146 = 0x500000000;
    v41 = (8 * v38) >> 3;
    if (v41 < 6)
    {
      v42 = 0;
      v43 = 0;
      v44 = 8 * v38;
      if (!v38)
      {
        goto LABEL_66;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v147, v41, 4);
      v42 = v146;
      v43 = v146;
      v44 = 8 * v40;
      if (!v40)
      {
LABEL_66:
        LODWORD(v146) = v43 + (v44 >> 3);
        v61 = v139[0];
        v62 = *(mlir::CallableOpInterface::getArgAttrsAttr(v134) + 8 * v61);
        if (v62 == 0x8000000000000000)
        {
          v63 = -1;
        }

        else
        {
          v63 = v62;
        }

        v64 = __src;
        *(__src + 1) = v63;
        if (!v146)
        {
          goto LABEL_84;
        }

        v65 = (v146 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v65 >= 7)
        {
          v68 = v65 + 1;
          v69 = (v65 + 1) & 0x7FFFFFFFFFFFFFF8;
          v67 = (v64 + 4 * v69);
          v70 = v64 + 1;
          v71 = 0uLL;
          v72.i64[0] = -1;
          v72.i64[1] = -1;
          v73 = vdupq_n_s64(1uLL);
          v74 = v69;
          v75 = 0uLL;
          v76 = 0uLL;
          v77 = 0uLL;
          do
          {
            v78 = vceqq_s32(v70[-1], v72);
            v79.i64[0] = v78.u32[0];
            v79.i64[1] = v78.u32[1];
            v80 = vandq_s8(v79, v73);
            v79.i64[0] = v78.u32[2];
            v79.i64[1] = v78.u32[3];
            v81 = vandq_s8(v79, v73);
            v82 = vceqq_s32(*v70, v72);
            v79.i64[0] = v82.u32[0];
            v79.i64[1] = v82.u32[1];
            v83 = vandq_s8(v79, v73);
            v79.i64[0] = v82.u32[2];
            v79.i64[1] = v82.u32[3];
            v75 = vaddq_s64(v75, v81);
            v71 = vaddq_s64(v71, v80);
            v77 = vaddq_s64(v77, vandq_s8(v79, v73));
            v76 = vaddq_s64(v76, v83);
            v70 += 2;
            v74 -= 8;
          }

          while (v74);
          v66 = vaddvq_s64(vaddq_s64(vaddq_s64(v76, v71), vaddq_s64(v77, v75)));
          if (v68 == v69)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v66 = 0;
          v67 = v64;
        }

        v84 = (v64 + 4 * v146);
        do
        {
          v85 = v67->i32[0];
          v67 = (v67 + 4);
          if (v85 == -1)
          {
            ++v66;
          }
        }

        while (v67 != v84);
LABEL_79:
        if (v66 >= 2)
        {
          v148 = "failed: unsupported dynamic dimensions";
          v152 = 259;
          v131[0] = &v148;
          v86 = *(a3 + 16);
          if (v86 && mlir::RewriterBase::Listener::classof(v86))
          {
            (*(*v86 + 88))(v86, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv3DOp &>(mlir::mps::Conv3DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v131);
          }

          v33 = 0;
LABEL_126:
          if (__src != v147)
          {
            free(__src);
          }

          return v33;
        }

LABEL_84:
        v148 = &v150;
        HIDWORD(v149) = 3;
        v150 = 0x300000002;
        if (v37 == 4)
        {
          v87 = 2;
        }

        else
        {
          v151 = 4;
          v87 = 3;
        }

        LODWORD(v149) = v87;
        v131[0] = v87;
        IntegerType = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
        v89 = mlir::RankedTensorType::get(v131, 1, IntegerType, 0);
        v90 = *(a2 + 24);
        if (v89)
        {
          v91 = v89;
          v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
          v89 = v91;
        }

        else
        {
          v92 = 0;
        }

        v133 = mlir::DenseElementsAttr::getFromRawBuffer(v89, v92, v148, 4 * v149, 4, 1, 1);
        v131[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v90, &v133);
        v135 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a3 + 8), *(a2 + 24), &v135, v131) - 16;
        if (v148 != &v150)
        {
          free(v148);
        }

        v93 = *(a2 + 24);
        LODWORD(v148) = 0;
        LODWORD(v131[0]) = 1;
        v136 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>((a3 + 8), v93, &v136, &v148, v131) - 16;
        LODWORD(v133) = 1;
        v94 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
        v95 = mlir::RankedTensorType::get(0, 0, v94, 0);
        v96 = *(a2 + 24);
        if (v95)
        {
          v97 = v95;
          v98 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v95 + 8);
          v95 = v97;
        }

        else
        {
          v98 = 0;
        }

        v131[0] = mlir::DenseElementsAttr::getFromRawBuffer(v95, v98, &v133, 4, 4, 1, 1);
        v148 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v96, v131) - 16);
        v136 = mlir::OpBuilder::create<mlir::mps::Flatten2DOp,mlir::Value &,mlir::Value &>((a3 + 8), *(a2 + 24), &v136, &v148) - 16;
        v99 = *(a2 + 24);
        LOBYTE(v148) = 0;
        v133 = (mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>((a3 + 8), v99, &v135, &v136, v139, &v148) - 16);
        if (v141 == 1)
        {
          v132 = v140;
          Loc = mlir::Value::getLoc(&v132);
          v101 = (v132[1] & 0xFFFFFFFFFFFFFFF8);
          if (v101)
          {
            v102 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v101 + 8);
          }

          else
          {
            v102 = 0;
          }

          v131[0] = v101;
          v131[1] = v102;
          v148 = &v150;
          v149 = 0x200000002;
          v150 = 0x1FFFFFFFFLL;
          if (mlir::CallOpInterface::getArgOperands(v131))
          {
            v103 = mlir::CallableOpInterface::getArgAttrsAttr(v131);
            if (v104)
            {
              v105 = 8 * v104;
              while (*v103 != 0x8000000000000000)
              {
                ++v103;
                v105 -= 8;
                if (!v105)
                {
                  goto LABEL_104;
                }
              }
            }

            else
            {
LABEL_104:
              v106 = mlir::CallableOpInterface::getArgAttrsAttr(v131);
              NumElements = mlir::ShapedType::getNumElements(v106, v107);
              *v148 = NumElements;
            }
          }

          v130 = 2;
          v109 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
          v110 = mlir::RankedTensorType::get(&v130, 1, v109, 0);
          if (v110)
          {
            v111 = v110;
            v112 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v110 + 8);
            v110 = v111;
          }

          else
          {
            v112 = 0;
          }

          v129 = mlir::DenseElementsAttr::getFromRawBuffer(v110, v112, v148, 4 * v149, 4, 1, 1);
          v130 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &v129);
          v132 = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), Loc, &v132, &v130) - 16);
          v129 = mlir::getElementTypeOrSelf((v133[1] & 0xFFFFFFFFFFFFFFF8));
          if (v129 != mlir::getElementTypeOrSelf((v132[1] & 0xFFFFFFFFFFFFFFF8)))
          {
            v132 = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a3 + 8), Loc, &v132, &v129) - 16);
          }

          v133 = (mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>((a3 + 8), Loc, &v133, &v132) - 16);
          if (v148 != &v150)
          {
            free(v148);
          }
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v143);
        v148 = v113;
        v114 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
        v116 = mlir::RankedTensorType::get(&v148, 1, v114, 0);
        v148 = &v150;
        v149 = 0x500000000;
        v117 = v146;
        if (!v146)
        {
          v120 = &v150;
LABEL_120:
          *v120 = *(v120 + 1);
          *(v120 + 1) = v115;
          v121 = *(a2 + 24);
          if (v116)
          {
            v122 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v116 + 8);
            v120 = v148;
          }

          else
          {
            v122 = 0;
          }

          v33 = 1;
          v132 = mlir::DenseElementsAttr::getFromRawBuffer(v116, v122, v120, 4 * v149, 4, 1, 1);
          v131[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v121, &v132);
          v133 = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), *(a2 + 24), &v133, v131) - 16);
          if (v148 != &v150)
          {
            free(v148);
          }

          LODWORD(v148) = 0;
          LODWORD(v131[0]) = 1;
          v123 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>((a3 + 8), *(a2 + 24), &v133, &v148, v131);
          (*(*a3 + 8))(a3, a2, v123);
          goto LABEL_126;
        }

        if (v146 < 6)
        {
          v119 = &v150;
          v118 = v146;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v148, &v150, v146, 4);
          v118 = v146;
          if (!v146)
          {
LABEL_119:
            LODWORD(v149) = v117;
            v120 = v148;
            v115 = *v148;
            goto LABEL_120;
          }

          v119 = v148;
        }

        memcpy(v119, __src, 4 * v118);
        goto LABEL_119;
      }
    }

    v45 = (__src + 4 * v42);
    v46 = (v40 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v46 >= 7)
    {
      v49 = v46 + 1;
      v50 = (v46 + 1) & 0x3FFFFFFFFFFFFFF8;
      v47 = (v39 + 8 * v50);
      v48 = &v45->i32[v50];
      v51 = v45 + 1;
      v52 = (v39 + 32);
      v53 = vnegq_f64(0);
      v54 = v50;
      do
      {
        v55 = v52[-2];
        v56 = v52[-1];
        v57 = *v52;
        v58 = v52[1];
        v52 += 4;
        v51[-1] = vorrq_s8(vuzp1q_s32(v55, v56), vuzp1q_s32(vceqq_s64(v55, v53), vceqq_s64(v56, v53)));
        *v51 = vorrq_s8(vuzp1q_s32(v57, v58), vuzp1q_s32(vceqq_s64(v57, v53), vceqq_s64(v58, v53)));
        v51 += 2;
        v54 -= 8;
      }

      while (v54);
      if (v49 == v50)
      {
LABEL_65:
        v43 = v146;
        goto LABEL_66;
      }
    }

    else
    {
      v47 = v39;
      v48 = v45;
    }

    do
    {
      v60 = *v47++;
      v59 = v60;
      if (v60 == 0x8000000000000000)
      {
        v59 = -1;
      }

      *v48++ = v59;
    }

    while (v47 != (v39 + v44));
    goto LABEL_65;
  }

  v148 = "failed: pattern did not match";
  v152 = 259;
  __src = &v148;
  v32 = *(a3 + 16);
  if (v32 && mlir::RewriterBase::Listener::classof(v32))
  {
    (*(*v32 + 88))(v32, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv3DOp &>(mlir::mps::Conv3DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__src);
  }

  return 0;
}

void *mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv3DDataGradientOp>::~CanonicalizeConvToMatMul(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv3DDataGradientOp>::~CanonicalizeConvToMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::Conv3DDataGradientOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv3DDataGradientOp>::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v153 = *MEMORY[0x1E69E9840];
  v134[0] = a2;
  v5 = *(a2 + 72);
  v6 = (*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    v5 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
  }

  __src = v6;
  v146 = v7;
  v8 = (*(*(v5 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v143 = v8;
  v144 = v9;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v6);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(v8))
  {
    goto LABEL_41;
  }

  if (!mlir::CallOpInterface::getArgOperands(&__src))
  {
    goto LABEL_41;
  }

  if ((mlir::CallOpInterface::getArgOperands(&v143) & 1) == 0)
  {
    goto LABEL_41;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&__src);
  v12 = v11;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v143);
  v15 = v14;
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(v134) != 7 || mlir::mps::Conv3DOp::getWeightsLayout(v134) != 9 || v12 != 5 || v15 != 5 || ArgAttrsAttr[2] != 1 || ArgAttrsAttr[3] != 1 || ArgAttrsAttr[4] != 1 || mlir::mps::Conv3DOp::getGroups(v134) != 1)
  {
    goto LABEL_41;
  }

  v148 = &v150;
  v149 = 0x600000000;
  Strides = mlir::mps::Conv3DOp::getStrides(v134);
  if (Strides)
  {
    v17 = Strides;
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v18, &v148, 1);
  v19 = v148;
  if (v149)
  {
    v20 = 0;
    while (*&v148[v20] == 1)
    {
      v20 += 8;
      if (8 * v149 == v20)
      {
        goto LABEL_25;
      }
    }

LABEL_129:
    LOBYTE(v137) = 0;
    v142 = 0;
    if (v19 == &v150)
    {
      goto LABEL_42;
    }

    goto LABEL_130;
  }

LABEL_25:
  if (v148 != &v150)
  {
    free(v148);
  }

  v148 = &v150;
  v149 = 0x600000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v134);
  if (InputAttributeNames)
  {
    v22 = InputAttributeNames;
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v23, &v148, 1);
  v19 = v148;
  if (v149)
  {
    v24 = 0;
    while (*&v148[v24] == 1)
    {
      v24 += 8;
      if (8 * v149 == v24)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_129;
  }

LABEL_34:
  if (v148 != &v150)
  {
    free(v148);
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(v134);
  if ((PaddingStyle - 1) < 2 || PaddingStyle == 4)
  {
    goto LABEL_138;
  }

  if (PaddingStyle)
  {
LABEL_41:
    LOBYTE(v137) = 0;
    v142 = 0;
    goto LABEL_42;
  }

  v148 = &v150;
  v149 = 0x600000000;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v134);
  v27 = Rewriter;
  if (Rewriter)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v28 = 0;
  }

  mlir::getIntValues<unsigned long long>(v27, v28, &v148, 1);
  v19 = v148;
  if (!v149)
  {
LABEL_136:
    if (v148 != &v150)
    {
      free(v148);
    }

LABEL_138:
    v126 = *(v134[0] + 72);
    v127 = *(v126 + 24);
    v128 = *(v126 + 56);
    v137 = v127;
    v138 = v128;
    v139[0] = 1;
    LOBYTE(v140) = 0;
    v141 = 0;
    v142 = 1;
    goto LABEL_42;
  }

  v125 = 0;
  while (!*&v148[v125])
  {
    v125 += 8;
    if (8 * v149 == v125)
    {
      goto LABEL_136;
    }
  }

  LOBYTE(v137) = 0;
  v142 = 0;
  if (v148 != &v150)
  {
LABEL_130:
    free(v19);
  }

LABEL_42:
  if (v142)
  {
    v29 = v138;
    v135 = v138;
    v136 = v137;
    v30 = (*(v137 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v30)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
      v29 = v135;
    }

    else
    {
      v31 = 0;
    }

    v143 = v30;
    v144 = v31;
    v34 = (*(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v34)
    {
      v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
    }

    else
    {
      v35 = 0;
    }

    v134[0] = v34;
    v134[1] = v35;
    mlir::CallableOpInterface::getArgAttrsAttr(&v143);
    v37 = v36;
    v39 = mlir::CallableOpInterface::getArgAttrsAttr(&v143);
    v40 = v38;
    __src = v147;
    v146 = 0x500000000;
    v41 = (8 * v38) >> 3;
    if (v41 < 6)
    {
      v42 = 0;
      v43 = 0;
      v44 = 8 * v38;
      if (!v38)
      {
        goto LABEL_66;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v147, v41, 4);
      v42 = v146;
      v43 = v146;
      v44 = 8 * v40;
      if (!v40)
      {
LABEL_66:
        LODWORD(v146) = v43 + (v44 >> 3);
        v61 = v139[0];
        v62 = *(mlir::CallableOpInterface::getArgAttrsAttr(v134) + 8 * v61);
        if (v62 == 0x8000000000000000)
        {
          v63 = -1;
        }

        else
        {
          v63 = v62;
        }

        v64 = __src;
        *(__src + 1) = v63;
        if (!v146)
        {
          goto LABEL_84;
        }

        v65 = (v146 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v65 >= 7)
        {
          v68 = v65 + 1;
          v69 = (v65 + 1) & 0x7FFFFFFFFFFFFFF8;
          v67 = (v64 + 4 * v69);
          v70 = v64 + 1;
          v71 = 0uLL;
          v72.i64[0] = -1;
          v72.i64[1] = -1;
          v73 = vdupq_n_s64(1uLL);
          v74 = v69;
          v75 = 0uLL;
          v76 = 0uLL;
          v77 = 0uLL;
          do
          {
            v78 = vceqq_s32(v70[-1], v72);
            v79.i64[0] = v78.u32[0];
            v79.i64[1] = v78.u32[1];
            v80 = vandq_s8(v79, v73);
            v79.i64[0] = v78.u32[2];
            v79.i64[1] = v78.u32[3];
            v81 = vandq_s8(v79, v73);
            v82 = vceqq_s32(*v70, v72);
            v79.i64[0] = v82.u32[0];
            v79.i64[1] = v82.u32[1];
            v83 = vandq_s8(v79, v73);
            v79.i64[0] = v82.u32[2];
            v79.i64[1] = v82.u32[3];
            v75 = vaddq_s64(v75, v81);
            v71 = vaddq_s64(v71, v80);
            v77 = vaddq_s64(v77, vandq_s8(v79, v73));
            v76 = vaddq_s64(v76, v83);
            v70 += 2;
            v74 -= 8;
          }

          while (v74);
          v66 = vaddvq_s64(vaddq_s64(vaddq_s64(v76, v71), vaddq_s64(v77, v75)));
          if (v68 == v69)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v66 = 0;
          v67 = v64;
        }

        v84 = (v64 + 4 * v146);
        do
        {
          v85 = v67->i32[0];
          v67 = (v67 + 4);
          if (v85 == -1)
          {
            ++v66;
          }
        }

        while (v67 != v84);
LABEL_79:
        if (v66 >= 2)
        {
          v148 = "failed: unsupported dynamic dimensions";
          v152 = 259;
          v131[0] = &v148;
          v86 = *(a3 + 16);
          if (v86 && mlir::RewriterBase::Listener::classof(v86))
          {
            (*(*v86 + 88))(v86, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv3DDataGradientOp &>(mlir::mps::Conv3DDataGradientOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v131);
          }

          v33 = 0;
LABEL_126:
          if (__src != v147)
          {
            free(__src);
          }

          return v33;
        }

LABEL_84:
        v148 = &v150;
        HIDWORD(v149) = 3;
        v150 = 0x300000002;
        if (v37 == 4)
        {
          v87 = 2;
        }

        else
        {
          v151 = 4;
          v87 = 3;
        }

        LODWORD(v149) = v87;
        v131[0] = v87;
        IntegerType = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
        v89 = mlir::RankedTensorType::get(v131, 1, IntegerType, 0);
        v90 = *(a2 + 24);
        if (v89)
        {
          v91 = v89;
          v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
          v89 = v91;
        }

        else
        {
          v92 = 0;
        }

        v133 = mlir::DenseElementsAttr::getFromRawBuffer(v89, v92, v148, 4 * v149, 4, 1, 1);
        v131[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v90, &v133);
        v135 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a3 + 8), *(a2 + 24), &v135, v131) - 16;
        if (v148 != &v150)
        {
          free(v148);
        }

        v93 = *(a2 + 24);
        LODWORD(v148) = 0;
        LODWORD(v131[0]) = 1;
        v136 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>((a3 + 8), v93, &v136, &v148, v131) - 16;
        LODWORD(v133) = 1;
        v94 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
        v95 = mlir::RankedTensorType::get(0, 0, v94, 0);
        v96 = *(a2 + 24);
        if (v95)
        {
          v97 = v95;
          v98 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v95 + 8);
          v95 = v97;
        }

        else
        {
          v98 = 0;
        }

        v131[0] = mlir::DenseElementsAttr::getFromRawBuffer(v95, v98, &v133, 4, 4, 1, 1);
        v148 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v96, v131) - 16);
        v136 = mlir::OpBuilder::create<mlir::mps::Flatten2DOp,mlir::Value &,mlir::Value &>((a3 + 8), *(a2 + 24), &v136, &v148) - 16;
        v99 = *(a2 + 24);
        LOBYTE(v148) = 0;
        v133 = (mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>((a3 + 8), v99, &v135, &v136, v139, &v148) - 16);
        if (v141 == 1)
        {
          v132 = v140;
          Loc = mlir::Value::getLoc(&v132);
          v101 = (v132[1] & 0xFFFFFFFFFFFFFFF8);
          if (v101)
          {
            v102 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v101 + 8);
          }

          else
          {
            v102 = 0;
          }

          v131[0] = v101;
          v131[1] = v102;
          v148 = &v150;
          v149 = 0x200000002;
          v150 = 0x1FFFFFFFFLL;
          if (mlir::CallOpInterface::getArgOperands(v131))
          {
            v103 = mlir::CallableOpInterface::getArgAttrsAttr(v131);
            if (v104)
            {
              v105 = 8 * v104;
              while (*v103 != 0x8000000000000000)
              {
                ++v103;
                v105 -= 8;
                if (!v105)
                {
                  goto LABEL_104;
                }
              }
            }

            else
            {
LABEL_104:
              v106 = mlir::CallableOpInterface::getArgAttrsAttr(v131);
              NumElements = mlir::ShapedType::getNumElements(v106, v107);
              *v148 = NumElements;
            }
          }

          v130 = 2;
          v109 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
          v110 = mlir::RankedTensorType::get(&v130, 1, v109, 0);
          if (v110)
          {
            v111 = v110;
            v112 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v110 + 8);
            v110 = v111;
          }

          else
          {
            v112 = 0;
          }

          v129 = mlir::DenseElementsAttr::getFromRawBuffer(v110, v112, v148, 4 * v149, 4, 1, 1);
          v130 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &v129);
          v132 = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), Loc, &v132, &v130) - 16);
          v129 = mlir::getElementTypeOrSelf((v133[1] & 0xFFFFFFFFFFFFFFF8));
          if (v129 != mlir::getElementTypeOrSelf((v132[1] & 0xFFFFFFFFFFFFFFF8)))
          {
            v132 = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a3 + 8), Loc, &v132, &v129) - 16);
          }

          v133 = (mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>((a3 + 8), Loc, &v133, &v132) - 16);
          if (v148 != &v150)
          {
            free(v148);
          }
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v143);
        v148 = v113;
        v114 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
        v116 = mlir::RankedTensorType::get(&v148, 1, v114, 0);
        v148 = &v150;
        v149 = 0x500000000;
        v117 = v146;
        if (!v146)
        {
          v120 = &v150;
LABEL_120:
          *v120 = *(v120 + 1);
          *(v120 + 1) = v115;
          v121 = *(a2 + 24);
          if (v116)
          {
            v122 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v116 + 8);
            v120 = v148;
          }

          else
          {
            v122 = 0;
          }

          v33 = 1;
          v132 = mlir::DenseElementsAttr::getFromRawBuffer(v116, v122, v120, 4 * v149, 4, 1, 1);
          v131[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v121, &v132);
          v133 = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), *(a2 + 24), &v133, v131) - 16);
          if (v148 != &v150)
          {
            free(v148);
          }

          LODWORD(v148) = 0;
          LODWORD(v131[0]) = 1;
          v123 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>((a3 + 8), *(a2 + 24), &v133, &v148, v131);
          (*(*a3 + 8))(a3, a2, v123);
          goto LABEL_126;
        }

        if (v146 < 6)
        {
          v119 = &v150;
          v118 = v146;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v148, &v150, v146, 4);
          v118 = v146;
          if (!v146)
          {
LABEL_119:
            LODWORD(v149) = v117;
            v120 = v148;
            v115 = *v148;
            goto LABEL_120;
          }

          v119 = v148;
        }

        memcpy(v119, __src, 4 * v118);
        goto LABEL_119;
      }
    }

    v45 = (__src + 4 * v42);
    v46 = (v40 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v46 >= 7)
    {
      v49 = v46 + 1;
      v50 = (v46 + 1) & 0x3FFFFFFFFFFFFFF8;
      v47 = (v39 + 8 * v50);
      v48 = &v45->i32[v50];
      v51 = v45 + 1;
      v52 = (v39 + 32);
      v53 = vnegq_f64(0);
      v54 = v50;
      do
      {
        v55 = v52[-2];
        v56 = v52[-1];
        v57 = *v52;
        v58 = v52[1];
        v52 += 4;
        v51[-1] = vorrq_s8(vuzp1q_s32(v55, v56), vuzp1q_s32(vceqq_s64(v55, v53), vceqq_s64(v56, v53)));
        *v51 = vorrq_s8(vuzp1q_s32(v57, v58), vuzp1q_s32(vceqq_s64(v57, v53), vceqq_s64(v58, v53)));
        v51 += 2;
        v54 -= 8;
      }

      while (v54);
      if (v49 == v50)
      {
LABEL_65:
        v43 = v146;
        goto LABEL_66;
      }
    }

    else
    {
      v47 = v39;
      v48 = v45;
    }

    do
    {
      v60 = *v47++;
      v59 = v60;
      if (v60 == 0x8000000000000000)
      {
        v59 = -1;
      }

      *v48++ = v59;
    }

    while (v47 != (v39 + v44));
    goto LABEL_65;
  }

  v148 = "failed: pattern did not match";
  v152 = 259;
  __src = &v148;
  v32 = *(a3 + 16);
  if (v32 && mlir::RewriterBase::Listener::classof(v32))
  {
    (*(*v32 + 88))(v32, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv3DDataGradientOp &>(mlir::mps::Conv3DDataGradientOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__src);
  }

  return 0;
}

void *mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::BiasAddOp>::~CanonicalizeConvToMatMul(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::BiasAddOp>::~CanonicalizeConvToMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::BiasAddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::BiasAddOp>::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v188 = *MEMORY[0x1E69E9840];
  v169[0] = a2;
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(v169))
  {
    goto LABEL_2;
  }

  v176 = *(*(v169[0] + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v176);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    goto LABEL_58;
  }

  v170[0] = DefiningOp;
  v9 = *(DefiningOp + 72);
  v10 = (*(*(v9 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = DefiningOp;
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v9 = *(v11 + 72);
  }

  else
  {
    v12 = 0;
  }

  v183 = v10;
  v184 = v12;
  v13 = (*(*(v9 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8) : 0;
  __src = v13;
  v174 = v14;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v10);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(v13))
  {
    goto LABEL_58;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v183))
  {
    goto LABEL_58;
  }

  if (!mlir::CallOpInterface::getArgOperands(&__src))
  {
    goto LABEL_58;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v183);
  v17 = v16;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__src);
  if (*(a1 + 96) != 1)
  {
    goto LABEL_58;
  }

  v20 = ArgAttrsAttr;
  v21 = v19;
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(v170) || mlir::mps::Conv3DOp::getWeightsLayout(v170) != 2 || v17 != 4 || v21 != 4 || *(v20 + 16) != 1 || *(v20 + 24) != 1 || mlir::mps::Conv3DOp::getGroups(v170) != 1)
  {
    goto LABEL_58;
  }

  v176 = v178;
  v177 = 0x600000000;
  Strides = mlir::mps::Conv3DOp::getStrides(v170);
  v23 = Strides;
  if (Strides)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v24 = 0;
  }

  mlir::getIntValues<unsigned long long>(v23, v24, &v176, 1);
  v25 = v176;
  if (v177)
  {
    v26 = 0;
    while (*(v176 + v26) == 1)
    {
      v26 += 8;
      if (8 * v177 == v26)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_56;
  }

LABEL_32:
  if (v176 != v178)
  {
    free(v176);
  }

  v176 = v178;
  v177 = 0x600000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v170);
  v28 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v29 = 0;
  }

  mlir::getIntValues<unsigned long long>(v28, v29, &v176, 1);
  v25 = v176;
  if (v177)
  {
    v30 = 0;
    while (*(v176 + v30) == 1)
    {
      v30 += 8;
      if (8 * v177 == v30)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_56;
  }

LABEL_41:
  if (v176 != v178)
  {
    free(v176);
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(v170);
  if ((PaddingStyle - 1) < 2 || PaddingStyle == 4)
  {
LABEL_55:
    v36 = 0;
    v37 = *(v170[0] + 72);
    v38 = *(v37 + 24);
    v39 = *(v37 + 56);
    goto LABEL_108;
  }

  if (!PaddingStyle)
  {
    v176 = v178;
    v177 = 0x600000000;
    Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v170);
    v33 = Rewriter;
    if (Rewriter)
    {
      v34 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
    }

    else
    {
      v34 = 0;
    }

    mlir::getIntValues<unsigned long long>(v33, v34, &v176, 1);
    v25 = v176;
    if (v177)
    {
      v35 = 0;
      while (!*(v176 + v35))
      {
        v35 += 8;
        if (8 * v177 == v35)
        {
          goto LABEL_53;
        }
      }

LABEL_56:
      if (v25 != v178)
      {
        free(v25);
      }

      goto LABEL_58;
    }

LABEL_53:
    if (v176 != v178)
    {
      free(v176);
    }

    goto LABEL_55;
  }

LABEL_58:
  v176 = *(*(v169[0] + 72) + 24);
  v40 = mlir::Value::getDefiningOp(&v176);
  if (!v40 || *(*(v40 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id || ((v170[0] = v40, v41 = *(v40 + 72), (v42 = (*(*(v41 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) == 0) ? (v44 = 0) : (v43 = v40, v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8), v41 = *(v43 + 72)), (v183 = v42, v184 = v44, (v45 = (*(*(v41 + 56) + 8) & 0xFFFFFFFFFFFFFFF8)) == 0) ? (v46 = 0) : (v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8)), (__src = v45, v174 = v46, v47 = mlir::getElementTypeOrSelf(v42), v47 != mlir::getElementTypeOrSelf(v45)) || !mlir::CallOpInterface::getArgOperands(&v183) || !mlir::CallOpInterface::getArgOperands(&__src) || (mlir::CallableOpInterface::getArgAttrsAttr(&v183), v49 = v48, v50 = mlir::CallableOpInterface::getArgAttrsAttr(&__src), *(a1 + 96) != 1) || (v52 = v50, v53 = v51, mlir::mps::MaterializeSparseTensorOp::getStorageType(v170)) || mlir::mps::Conv3DOp::getWeightsLayout(v170) != 2 || v49 != 4 || v53 != 4 || *(v52 + 16) != 1 || *(v52 + 24) != 1 || mlir::mps::Conv3DOp::getGroups(v170) != 1))
  {
LABEL_2:
    v176 = "failed: pattern did not match";
    v180 = 259;
    v183 = &v176;
    v6 = *(a3 + 16);
    if (v6)
    {
      if (mlir::RewriterBase::Listener::classof(v6))
      {
        (*(*v6 + 88))(v6, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::BiasAddOp &>(mlir::mps::BiasAddOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v183);
      }
    }

    return 0;
  }

  v176 = v178;
  v177 = 0x600000000;
  v54 = mlir::mps::Conv3DOp::getStrides(v170);
  v55 = v54;
  if (v54)
  {
    v56 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v54 + 8);
  }

  else
  {
    v56 = 0;
  }

  mlir::getIntValues<unsigned long long>(v55, v56, &v176, 1);
  v57 = v176;
  if (v177)
  {
    v58 = 0;
    while (*(v176 + v58) == 1)
    {
      v58 += 8;
      if (8 * v177 == v58)
      {
        goto LABEL_84;
      }
    }

    goto LABEL_110;
  }

LABEL_84:
  if (v176 != v178)
  {
    free(v176);
  }

  v176 = v178;
  v177 = 0x600000000;
  v59 = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v170);
  v60 = v59;
  if (v59)
  {
    v61 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v59 + 8);
  }

  else
  {
    v61 = 0;
  }

  mlir::getIntValues<unsigned long long>(v60, v61, &v176, 1);
  v57 = v176;
  if (v177)
  {
    v62 = 0;
    while (*(v176 + v62) == 1)
    {
      v62 += 8;
      if (8 * v177 == v62)
      {
        goto LABEL_93;
      }
    }

    goto LABEL_110;
  }

LABEL_93:
  if (v176 != v178)
  {
    free(v176);
  }

  v63 = mlir::mps::Conv3DOp::getPaddingStyle(v170);
  if ((v63 - 1) >= 2 && v63 != 4)
  {
    if (v63)
    {
      goto LABEL_2;
    }

    v176 = v178;
    v177 = 0x600000000;
    v64 = mlir::pdl_interp::RecordMatchOp::getRewriter(v170);
    v65 = v64;
    if (v64)
    {
      v66 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v64 + 8);
    }

    else
    {
      v66 = 0;
    }

    mlir::getIntValues<unsigned long long>(v65, v66, &v176, 1);
    v57 = v176;
    if (v177)
    {
      v67 = 0;
      while (!*(v176 + v67))
      {
        v67 += 8;
        if (8 * v177 == v67)
        {
          goto LABEL_105;
        }
      }

LABEL_110:
      if (v57 != v178)
      {
        free(v57);
      }

      goto LABEL_2;
    }

LABEL_105:
    if (v176 != v178)
    {
      free(v176);
    }
  }

  v68 = *(v170[0] + 72);
  v38 = *(v68 + 24);
  v39 = *(v68 + 56);
  v36 = 1;
LABEL_108:
  v69 = (*(*(*(v169[0] + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v69)
  {
    v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
  }

  else
  {
    v70 = 0;
  }

  v183 = v69;
  v184 = v70;
  if ((mlir::CallOpInterface::getArgOperands(&v183) & 1) == 0)
  {
    goto LABEL_2;
  }

  v71 = *(*(v169[0] + 72) + 56);
  v176 = v38;
  v177 = v39;
  v178[0] = v36;
  v179 = v71;
  LOBYTE(v180) = 1;
  v182[0] = v166[0];
  *(v182 + 3) = *(v166 + 3);
  v181 = 1;
  v171 = v39;
  v172 = v38;
  v72 = (v38[1] & 0xFFFFFFFFFFFFFFF8);
  if (v72)
  {
    v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
    v39 = v171;
  }

  else
  {
    v73 = 0;
  }

  v170[0] = v72;
  v170[1] = v73;
  v74 = (*(v39 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v74)
  {
    v75 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v74 + 8);
  }

  else
  {
    v75 = 0;
  }

  v169[0] = v74;
  v169[1] = v75;
  mlir::CallableOpInterface::getArgAttrsAttr(v170);
  v77 = v76;
  v78 = mlir::CallableOpInterface::getArgAttrsAttr(v170);
  v80 = v79;
  __src = v175;
  v174 = 0x500000000;
  v81 = (8 * v79) >> 3;
  if (v81 < 6)
  {
    v82 = 0;
    v83 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v175, v81, 4);
    v82 = v174;
    v83 = v174;
  }

  if (v80)
  {
    v84 = (__src + 4 * v82);
    v85 = (v80 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v85 >= 7)
    {
      v88 = v85 + 1;
      v89 = (v85 + 1) & 0x3FFFFFFFFFFFFFF8;
      v86 = (v78 + 8 * v89);
      v87 = &v84->i32[v89];
      v90 = v84 + 1;
      v91 = (v78 + 32);
      v92 = vnegq_f64(0);
      v93 = v89;
      do
      {
        v94 = v91[-2];
        v95 = v91[-1];
        v96 = *v91;
        v97 = v91[1];
        v91 += 4;
        v90[-1] = vorrq_s8(vuzp1q_s32(v94, v95), vuzp1q_s32(vceqq_s64(v94, v92), vceqq_s64(v95, v92)));
        *v90 = vorrq_s8(vuzp1q_s32(v96, v97), vuzp1q_s32(vceqq_s64(v96, v92), vceqq_s64(v97, v92)));
        v90 += 2;
        v93 -= 8;
      }

      while (v93);
      if (v88 == v89)
      {
LABEL_132:
        v83 = v174;
        goto LABEL_133;
      }
    }

    else
    {
      v86 = v78;
      v87 = v84;
    }

    do
    {
      v99 = *v86++;
      v98 = v99;
      if (v99 == 0x8000000000000000)
      {
        v98 = -1;
      }

      *v87++ = v98;
    }

    while (v86 != (v78 + 8 * v80));
    goto LABEL_132;
  }

LABEL_133:
  LODWORD(v174) = v83 + v80;
  v100 = v178[0];
  v101 = *(mlir::CallableOpInterface::getArgAttrsAttr(v169) + 8 * v100);
  if (v101 == 0x8000000000000000)
  {
    v102 = -1;
  }

  else
  {
    v102 = v101;
  }

  v103 = __src;
  *(__src + 1) = v102;
  if (!v174)
  {
LABEL_151:
    v183 = &v185;
    HIDWORD(v184) = 3;
    v185 = 0x300000002;
    if (v77 == 4)
    {
      v127 = 2;
    }

    else
    {
      v186 = 4;
      v127 = 3;
    }

    LODWORD(v184) = v127;
    v166[0] = v127;
    IntegerType = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
    v129 = mlir::RankedTensorType::get(v166, 1, IntegerType, 0);
    v130 = v129;
    v131 = *(a2 + 24);
    if (v129)
    {
      v132 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v129 + 8);
    }

    else
    {
      v132 = 0;
    }

    v168 = mlir::DenseElementsAttr::getFromRawBuffer(v130, v132, v183, 4 * v184, 4, 1, 1);
    v166[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v131, &v168);
    v171 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a3 + 8), *(a2 + 24), &v171, v166) - 16;
    if (v183 != &v185)
    {
      free(v183);
    }

    v133 = *(a2 + 24);
    LODWORD(v183) = 0;
    LODWORD(v166[0]) = 1;
    v172 = (mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>((a3 + 8), v133, &v172, &v183, v166) - 16);
    LODWORD(v168) = 1;
    v134 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
    v135 = mlir::RankedTensorType::get(0, 0, v134, 0);
    v136 = v135;
    v137 = *(a2 + 24);
    if (v135)
    {
      v138 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
    }

    else
    {
      v138 = 0;
    }

    v166[0] = mlir::DenseElementsAttr::getFromRawBuffer(v136, v138, &v168, 4, 4, 1, 1);
    v183 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v137, v166) - 16);
    v172 = (mlir::OpBuilder::create<mlir::mps::Flatten2DOp,mlir::Value &,mlir::Value &>((a3 + 8), *(a2 + 24), &v172, &v183) - 16);
    v139 = *(a2 + 24);
    LOBYTE(v183) = 0;
    v168 = (mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>((a3 + 8), v139, &v171, &v172, v178, &v183) - 16);
    if (v180 == 1)
    {
      v167 = v179;
      Loc = mlir::Value::getLoc(&v167);
      v141 = (v167[1] & 0xFFFFFFFFFFFFFFF8);
      if (v141)
      {
        v142 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v141 + 8);
      }

      else
      {
        v142 = 0;
      }

      v166[0] = v141;
      v166[1] = v142;
      v183 = &v185;
      v184 = 0x200000002;
      v185 = 0x1FFFFFFFFLL;
      if (mlir::CallOpInterface::getArgOperands(v166))
      {
        v143 = mlir::CallableOpInterface::getArgAttrsAttr(v166);
        if (v144)
        {
          v145 = 8 * v144;
          while (*v143 != 0x8000000000000000)
          {
            ++v143;
            v145 -= 8;
            if (!v145)
            {
              goto LABEL_171;
            }
          }
        }

        else
        {
LABEL_171:
          v146 = mlir::CallableOpInterface::getArgAttrsAttr(v166);
          NumElements = mlir::ShapedType::getNumElements(v146, v147);
          *v183 = NumElements;
        }
      }

      v165 = 2;
      v149 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
      v150 = mlir::RankedTensorType::get(&v165, 1, v149, 0);
      v151 = v150;
      if (v150)
      {
        v152 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
      }

      else
      {
        v152 = 0;
      }

      v164 = mlir::DenseElementsAttr::getFromRawBuffer(v151, v152, v183, 4 * v184, 4, 1, 1);
      v165 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &v164);
      v167 = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), Loc, &v167, &v165) - 16);
      v164 = mlir::getElementTypeOrSelf((v168[1] & 0xFFFFFFFFFFFFFFF8));
      if (v164 != mlir::getElementTypeOrSelf((v167[1] & 0xFFFFFFFFFFFFFFF8)))
      {
        v167 = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a3 + 8), Loc, &v167, &v164) - 16);
      }

      v168 = (mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>((a3 + 8), Loc, &v168, &v167) - 16);
      if (v183 != &v185)
      {
        free(v183);
      }
    }

    mlir::CallableOpInterface::getArgAttrsAttr(v170);
    v183 = v153;
    v154 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
    v156 = mlir::RankedTensorType::get(&v183, 1, v154, 0);
    v183 = &v185;
    v184 = 0x500000000;
    v157 = v174;
    if (!v174)
    {
      v160 = &v185;
LABEL_187:
      *v160 = *(v160 + 1);
      *(v160 + 1) = v155;
      v161 = *(a2 + 24);
      if (v156)
      {
        v162 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v156 + 8);
        v160 = v183;
      }

      else
      {
        v162 = 0;
      }

      v126 = 1;
      v167 = mlir::DenseElementsAttr::getFromRawBuffer(v156, v162, v160, 4 * v184, 4, 1, 1);
      v166[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v161, &v167);
      v168 = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), *(a2 + 24), &v168, v166) - 16);
      if (v183 != &v185)
      {
        free(v183);
      }

      LODWORD(v183) = 0;
      LODWORD(v166[0]) = 1;
      v163 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>((a3 + 8), *(a2 + 24), &v168, &v183, v166);
      (*(*a3 + 8))(a3, a2, v163);
      goto LABEL_193;
    }

    if (v174 < 6)
    {
      v159 = &v185;
      v158 = v174;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, &v185, v174, 4);
      v158 = v174;
      if (!v174)
      {
LABEL_186:
        LODWORD(v184) = v157;
        v160 = v183;
        v155 = *v183;
        goto LABEL_187;
      }

      v159 = v183;
    }

    memcpy(v159, __src, 4 * v158);
    goto LABEL_186;
  }

  v104 = (v174 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v104 >= 7)
  {
    v107 = v104 + 1;
    v108 = (v104 + 1) & 0x7FFFFFFFFFFFFFF8;
    v106 = (v103 + 4 * v108);
    v109 = v103 + 1;
    v110 = 0uLL;
    v111.i64[0] = -1;
    v111.i64[1] = -1;
    v112 = vdupq_n_s64(1uLL);
    v113 = v108;
    v114 = 0uLL;
    v115 = 0uLL;
    v116 = 0uLL;
    do
    {
      v117 = vceqq_s32(v109[-1], v111);
      v118.i64[0] = v117.u32[0];
      v118.i64[1] = v117.u32[1];
      v119 = vandq_s8(v118, v112);
      v118.i64[0] = v117.u32[2];
      v118.i64[1] = v117.u32[3];
      v120 = vandq_s8(v118, v112);
      v121 = vceqq_s32(*v109, v111);
      v118.i64[0] = v121.u32[0];
      v118.i64[1] = v121.u32[1];
      v122 = vandq_s8(v118, v112);
      v118.i64[0] = v121.u32[2];
      v118.i64[1] = v121.u32[3];
      v114 = vaddq_s64(v114, v120);
      v110 = vaddq_s64(v110, v119);
      v116 = vaddq_s64(v116, vandq_s8(v118, v112));
      v115 = vaddq_s64(v115, v122);
      v109 += 2;
      v113 -= 8;
    }

    while (v113);
    v105 = vaddvq_s64(vaddq_s64(vaddq_s64(v115, v110), vaddq_s64(v116, v114)));
    if (v107 == v108)
    {
      goto LABEL_146;
    }
  }

  else
  {
    v105 = 0;
    v106 = v103;
  }

  v123 = (v103 + 4 * v174);
  do
  {
    v124 = v106->i32[0];
    v106 = (v106 + 4);
    if (v124 == -1)
    {
      ++v105;
    }
  }

  while (v106 != v123);
LABEL_146:
  if (v105 < 2)
  {
    goto LABEL_151;
  }

  v183 = "failed: unsupported dynamic dimensions";
  v187 = 259;
  v166[0] = &v183;
  v125 = *(a3 + 16);
  if (v125 && mlir::RewriterBase::Listener::classof(v125))
  {
    (*(*v125 + 88))(v125, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::BiasAddOp &>(mlir::mps::BiasAddOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v166);
  }

  v126 = 0;
LABEL_193:
  if (__src != v175)
  {
    free(__src);
  }

  return v126;
}

void *mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::AddOp>::~CanonicalizeConvToMatMul(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::AddOp>::~CanonicalizeConvToMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::AddOp>::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v252 = *MEMORY[0x1E69E9840];
  v230 = 0;
  v231 = 0;
  v229 = 0;
  __src = &v231;
  v237 = &v230;
  v238[0] = 0;
  p_src = &__src;
  v248 = &v229;
  LOBYTE(v249) = 0;
  LOBYTE(v250) = 0;
  if (mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(&p_src, a2))
  {
    v6 = v238[0];
    v225[0] = v238[0];
    v7 = *(v238[0] + 72);
    v8 = (*(*(v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
      v7 = *(v6 + 72);
    }

    else
    {
      v9 = 0;
    }

    v234 = v8;
    v235 = v9;
    v10 = (*(*(v7 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v10)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    }

    else
    {
      v11 = 0;
    }

    v232 = v10;
    v233 = v11;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v8);
    if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(v10))
    {
      if (mlir::CallOpInterface::getArgOperands(&v234))
      {
        if (mlir::CallOpInterface::getArgOperands(&v232))
        {
          mlir::CallableOpInterface::getArgAttrsAttr(&v234);
          v14 = v13;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v232);
          if (*(a1 + 96) == 1)
          {
            v17 = ArgAttrsAttr;
            v18 = v16;
            if (!mlir::mps::MaterializeSparseTensorOp::getStorageType(v225) && mlir::mps::Conv3DOp::getWeightsLayout(v225) == 2 && v14 == 4 && v18 == 4 && *(v17 + 16) == 1 && *(v17 + 24) == 1 && mlir::mps::Conv3DOp::getGroups(v225) == 1)
            {
              v239 = &v241;
              v240 = 0x600000000;
              Strides = mlir::mps::Conv3DOp::getStrides(v225);
              if (Strides)
              {
                v20 = Strides;
                v21 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
                Strides = v20;
              }

              else
              {
                v21 = 0;
              }

              mlir::getIntValues<unsigned long long>(Strides, v21, &v239, 1);
              v22 = v239;
              if (v240)
              {
                v23 = 0;
                while (*(v239 + v23) == 1)
                {
                  v23 += 8;
                  if (8 * v240 == v23)
                  {
                    goto LABEL_26;
                  }
                }

                goto LABEL_50;
              }

LABEL_26:
              if (v239 != &v241)
              {
                free(v239);
              }

              v239 = &v241;
              v240 = 0x600000000;
              InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v225);
              if (InputAttributeNames)
              {
                v25 = InputAttributeNames;
                v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
                InputAttributeNames = v25;
              }

              else
              {
                v26 = 0;
              }

              mlir::getIntValues<unsigned long long>(InputAttributeNames, v26, &v239, 1);
              v22 = v239;
              if (v240)
              {
                v27 = 0;
                while (*(v239 + v27) == 1)
                {
                  v27 += 8;
                  if (8 * v240 == v27)
                  {
                    goto LABEL_35;
                  }
                }

                goto LABEL_50;
              }

LABEL_35:
              if (v239 != &v241)
              {
                free(v239);
              }

              PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(v225);
              if ((PaddingStyle - 1) < 2 || PaddingStyle == 4)
              {
LABEL_49:
                v33 = 0;
                v34 = v225[0][9];
                v35 = *(v34 + 24);
                v36 = *(v34 + 56);
                v37 = v229;
                v38 = -3;
                goto LABEL_155;
              }

              if (!PaddingStyle)
              {
                v239 = &v241;
                v240 = 0x600000000;
                Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v225);
                if (Rewriter)
                {
                  v30 = Rewriter;
                  v31 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
                  Rewriter = v30;
                }

                else
                {
                  v31 = 0;
                }

                mlir::getIntValues<unsigned long long>(Rewriter, v31, &v239, 1);
                v22 = v239;
                if (v240)
                {
                  v32 = 0;
                  while (!*(v239 + v32))
                  {
                    v32 += 8;
                    if (8 * v240 == v32)
                    {
                      goto LABEL_47;
                    }
                  }

LABEL_50:
                  if (v22 != &v241)
                  {
                    free(v22);
                  }

                  goto LABEL_52;
                }

LABEL_47:
                if (v239 != &v241)
                {
                  free(v239);
                }

                goto LABEL_49;
              }
            }
          }
        }
      }
    }

LABEL_52:
    LODWORD(v226) = *v228;
    *(&v226 + 3) = *&v228[3];
    LODWORD(v224) = *v227;
    *(&v224 + 3) = *&v227[3];
  }

  v230 = 0;
  v231 = 0;
  v229 = 0;
  __src = &v231;
  v237 = &v230;
  v238[0] = 0;
  p_src = &__src;
  v248 = &v229;
  LOBYTE(v249) = 0;
  LOBYTE(v250) = 0;
  if ((mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DDataGradientOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(&p_src, a2) & 1) == 0)
  {
    goto LABEL_105;
  }

  v39 = v238[0];
  v225[0] = v238[0];
  v40 = *(v238[0] + 72);
  v41 = (*(*(v40 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v41)
  {
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    v40 = *(v39 + 72);
  }

  else
  {
    v42 = 0;
  }

  v234 = v41;
  v235 = v42;
  v43 = (*(*(v40 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v43)
  {
    v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
  }

  else
  {
    v44 = 0;
  }

  v232 = v43;
  v233 = v44;
  v45 = mlir::getElementTypeOrSelf(v41);
  if (v45 == mlir::getElementTypeOrSelf(v43))
  {
    if (mlir::CallOpInterface::getArgOperands(&v234))
    {
      if (mlir::CallOpInterface::getArgOperands(&v232))
      {
        mlir::CallableOpInterface::getArgAttrsAttr(&v234);
        v47 = v46;
        v48 = mlir::CallableOpInterface::getArgAttrsAttr(&v232);
        if (*(a1 + 96) == 1)
        {
          v50 = v48;
          v51 = v49;
          if (!mlir::mps::MaterializeSparseTensorOp::getStorageType(v225) && mlir::mps::Conv3DOp::getWeightsLayout(v225) == 2 && v47 == 4 && v51 == 4 && *(v50 + 16) == 1 && *(v50 + 24) == 1 && mlir::mps::Conv3DOp::getGroups(v225) == 1)
          {
            v239 = &v241;
            v240 = 0x600000000;
            v52 = mlir::mps::Conv3DOp::getStrides(v225);
            if (v52)
            {
              v53 = v52;
              v54 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v52 + 8);
              v52 = v53;
            }

            else
            {
              v54 = 0;
            }

            mlir::getIntValues<unsigned long long>(v52, v54, &v239, 1);
            v55 = v239;
            if (v240)
            {
              v56 = 0;
              while (*(v239 + v56) == 1)
              {
                v56 += 8;
                if (8 * v240 == v56)
                {
                  goto LABEL_78;
                }
              }

              goto LABEL_102;
            }

LABEL_78:
            if (v239 != &v241)
            {
              free(v239);
            }

            v239 = &v241;
            v240 = 0x600000000;
            v57 = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v225);
            if (v57)
            {
              v58 = v57;
              v59 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v57 + 8);
              v57 = v58;
            }

            else
            {
              v59 = 0;
            }

            mlir::getIntValues<unsigned long long>(v57, v59, &v239, 1);
            v55 = v239;
            if (v240)
            {
              v60 = 0;
              while (*(v239 + v60) == 1)
              {
                v60 += 8;
                if (8 * v240 == v60)
                {
                  goto LABEL_87;
                }
              }

              goto LABEL_102;
            }

LABEL_87:
            if (v239 != &v241)
            {
              free(v239);
            }

            v61 = mlir::mps::Conv3DOp::getPaddingStyle(v225);
            if ((v61 - 1) < 2 || v61 == 4)
            {
LABEL_101:
              v66 = v225[0][9];
              v35 = *(v66 + 24);
              v36 = *(v66 + 56);
              v37 = v229;
              v33 = 1;
              v38 = -3;
              goto LABEL_155;
            }

            if (!v61)
            {
              v239 = &v241;
              v240 = 0x600000000;
              v62 = mlir::pdl_interp::RecordMatchOp::getRewriter(v225);
              if (v62)
              {
                v63 = v62;
                v64 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v62 + 8);
                v62 = v63;
              }

              else
              {
                v64 = 0;
              }

              mlir::getIntValues<unsigned long long>(v62, v64, &v239, 1);
              v55 = v239;
              if (v240)
              {
                v65 = 0;
                while (!*(v239 + v65))
                {
                  v65 += 8;
                  if (8 * v240 == v65)
                  {
                    goto LABEL_99;
                  }
                }

LABEL_102:
                if (v55 != &v241)
                {
                  free(v55);
                }

                goto LABEL_104;
              }

LABEL_99:
              if (v239 != &v241)
              {
                free(v239);
              }

              goto LABEL_101;
            }
          }
        }
      }
    }
  }

LABEL_104:
  LODWORD(v226) = *v228;
  *(&v226 + 3) = *&v228[3];
  LODWORD(v224) = *v227;
  *(&v224 + 3) = *&v227[3];
LABEL_105:
  v230 = 0;
  v231 = 0;
  v229 = 0;
  __src = &v231;
  v237 = &v230;
  v238[0] = 0;
  p_src = &__src;
  v248 = &v229;
  LOBYTE(v249) = 0;
  LOBYTE(v250) = 0;
  if ((mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv3DOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(&p_src, a2) & 1) == 0)
  {
    goto LABEL_250;
  }

  v67 = v238[0];
  v225[0] = v238[0];
  v68 = *(v238[0] + 72);
  v69 = (*(*(v68 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v69)
  {
    v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
    v68 = *(v67 + 72);
  }

  else
  {
    v70 = 0;
  }

  v234 = v69;
  v235 = v70;
  v71 = (*(*(v68 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v71)
  {
    v72 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
  }

  else
  {
    v72 = 0;
  }

  v232 = v71;
  v233 = v72;
  v73 = mlir::getElementTypeOrSelf(v69);
  if (v73 != mlir::getElementTypeOrSelf(v71))
  {
    goto LABEL_249;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v234))
  {
    goto LABEL_249;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v232))
  {
    goto LABEL_249;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v234);
  v75 = v74;
  v76 = mlir::CallableOpInterface::getArgAttrsAttr(&v232);
  v78 = v77;
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(v225) != 7 || mlir::mps::Conv3DOp::getWeightsLayout(v225) != 9 || v75 != 5 || v78 != 5 || v76[2] != 1 || v76[3] != 1 || v76[4] != 1 || mlir::mps::Conv3DOp::getGroups(v225) != 1)
  {
    goto LABEL_249;
  }

  v239 = &v241;
  v240 = 0x600000000;
  v79 = mlir::mps::Conv3DOp::getStrides(v225);
  if (v79)
  {
    v80 = v79;
    v81 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v79 + 8);
    v79 = v80;
  }

  else
  {
    v81 = 0;
  }

  mlir::getIntValues<unsigned long long>(v79, v81, &v239, 1);
  v82 = v239;
  if (v240)
  {
    v83 = 0;
    while (*(v239 + v83) == 1)
    {
      v83 += 8;
      if (8 * v240 == v83)
      {
        goto LABEL_130;
      }
    }

    goto LABEL_247;
  }

LABEL_130:
  if (v239 != &v241)
  {
    free(v239);
  }

  v239 = &v241;
  v240 = 0x600000000;
  v84 = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v225);
  if (v84)
  {
    v85 = v84;
    v86 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v84 + 8);
    v84 = v85;
  }

  else
  {
    v86 = 0;
  }

  mlir::getIntValues<unsigned long long>(v84, v86, &v239, 1);
  v82 = v239;
  if (v240)
  {
    v87 = 0;
    while (*(v239 + v87) == 1)
    {
      v87 += 8;
      if (8 * v240 == v87)
      {
        goto LABEL_139;
      }
    }

    goto LABEL_247;
  }

LABEL_139:
  if (v239 != &v241)
  {
    free(v239);
  }

  v88 = mlir::mps::Conv3DOp::getPaddingStyle(v225);
  if ((v88 - 1) >= 2 && v88 != 4)
  {
    if (!v88)
    {
      v239 = &v241;
      v240 = 0x600000000;
      v89 = mlir::pdl_interp::RecordMatchOp::getRewriter(v225);
      if (v89)
      {
        v90 = v89;
        v91 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v89 + 8);
        v89 = v90;
      }

      else
      {
        v91 = 0;
      }

      mlir::getIntValues<unsigned long long>(v89, v91, &v239, 1);
      v82 = v239;
      if (v240)
      {
        v92 = 0;
        while (!*(v239 + v92))
        {
          v92 += 8;
          if (8 * v240 == v92)
          {
            goto LABEL_151;
          }
        }

LABEL_247:
        if (v82 != &v241)
        {
          free(v82);
        }

        goto LABEL_249;
      }

LABEL_151:
      if (v239 != &v241)
      {
        free(v239);
      }

      goto LABEL_153;
    }

LABEL_249:
    LODWORD(v226) = *v228;
    *(&v226 + 3) = *&v228[3];
    LODWORD(v224) = *v227;
    *(&v224 + 3) = *&v227[3];
LABEL_250:
    v230 = 0;
    v231 = 0;
    v229 = 0;
    __src = &v231;
    v237 = &v230;
    v238[0] = 0;
    p_src = &__src;
    v248 = &v229;
    LOBYTE(v249) = 0;
    LOBYTE(v250) = 0;
    if ((mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv3DDataGradientOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(&p_src, a2) & 1) == 0 || ((v194 = v238[0], v225[0] = v238[0], v195 = *(v238[0] + 72), (v196 = (*(*(v195 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) == 0) ? (v197 = 0) : (v197 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v196 + 8), v195 = *(v194 + 72)), (v234 = v196, v235 = v197, (v198 = (*(*(v195 + 56) + 8) & 0xFFFFFFFFFFFFFFF8)) == 0) ? (v199 = 0) : (v199 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v198 + 8)), (v232 = v198, v233 = v199, v200 = mlir::getElementTypeOrSelf(v196), v200 != mlir::getElementTypeOrSelf(v198)) || !mlir::CallOpInterface::getArgOperands(&v234) || !mlir::CallOpInterface::getArgOperands(&v232) || (mlir::CallableOpInterface::getArgAttrsAttr(&v234), v202 = v201, v203 = mlir::CallableOpInterface::getArgAttrsAttr(&v232), v205 = v204, mlir::mps::MaterializeSparseTensorOp::getStorageType(v225) != 7) || mlir::mps::Conv3DOp::getWeightsLayout(v225) != 9 || v202 != 5 || v205 != 5 || v203[2] != 1 || v203[3] != 1 || v203[4] != 1 || mlir::mps::Conv3DOp::getGroups(v225) != 1))
    {
LABEL_301:
      v239 = "failed: pattern did not match";
      LOWORD(v244) = 259;
      p_src = &v239;
      v221 = *(a3 + 16);
      if (v221 && mlir::RewriterBase::Listener::classof(v221))
      {
        (*(*v221 + 88))(v221, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::AddOp &>(mlir::mps::AddOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &p_src);
      }

      return 0;
    }

    v239 = &v241;
    v240 = 0x600000000;
    v206 = mlir::mps::Conv3DOp::getStrides(v225);
    v207 = v206;
    if (v206)
    {
      v208 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v206 + 8);
    }

    else
    {
      v208 = 0;
    }

    mlir::getIntValues<unsigned long long>(v207, v208, &v239, 1);
    v209 = v239;
    if (v240)
    {
      v210 = 0;
      while (*(v239 + v210) == 1)
      {
        v210 += 8;
        if (8 * v240 == v210)
        {
          goto LABEL_275;
        }
      }

      goto LABEL_299;
    }

LABEL_275:
    if (v239 != &v241)
    {
      free(v239);
    }

    v239 = &v241;
    v240 = 0x600000000;
    v211 = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v225);
    v212 = v211;
    if (v211)
    {
      v213 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v211 + 8);
    }

    else
    {
      v213 = 0;
    }

    mlir::getIntValues<unsigned long long>(v212, v213, &v239, 1);
    v209 = v239;
    if (v240)
    {
      v214 = 0;
      while (*(v239 + v214) == 1)
      {
        v214 += 8;
        if (8 * v240 == v214)
        {
          goto LABEL_284;
        }
      }

      goto LABEL_299;
    }

LABEL_284:
    if (v239 != &v241)
    {
      free(v239);
    }

    v215 = mlir::mps::Conv3DOp::getPaddingStyle(v225);
    if ((v215 - 1) >= 2 && v215 != 4)
    {
      if (v215)
      {
        goto LABEL_301;
      }

      v239 = &v241;
      v240 = 0x600000000;
      v216 = mlir::pdl_interp::RecordMatchOp::getRewriter(v225);
      v217 = v216;
      if (v216)
      {
        v218 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v216 + 8);
      }

      else
      {
        v218 = 0;
      }

      mlir::getIntValues<unsigned long long>(v217, v218, &v239, 1);
      v209 = v239;
      if (v240)
      {
        v219 = 0;
        while (!*(v239 + v219))
        {
          v219 += 8;
          if (8 * v240 == v219)
          {
            goto LABEL_296;
          }
        }

LABEL_299:
        if (v209 != &v241)
        {
          free(v209);
        }

        goto LABEL_301;
      }

LABEL_296:
      if (v239 != &v241)
      {
        free(v239);
      }
    }

    v220 = v225[0][9];
    v35 = *(v220 + 24);
    v36 = *(v220 + 56);
    v37 = v229;
    v33 = 1;
    goto LABEL_154;
  }

LABEL_153:
  v33 = 0;
  v93 = v225[0][9];
  v35 = *(v93 + 24);
  v36 = *(v93 + 56);
  v37 = v229;
LABEL_154:
  v38 = -4;
LABEL_155:
  v94 = (v37[1] & 0xFFFFFFFFFFFFFFF8);
  if (v94)
  {
    v95 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v94 + 8);
  }

  else
  {
    v95 = 0;
  }

  p_src = v94;
  v248 = v95;
  if (!mlir::CallOpInterface::getArgOperands(&p_src))
  {
    goto LABEL_301;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&p_src);
  v97 = v96 + v38;
  if (v97 < 0)
  {
    goto LABEL_301;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&p_src);
  if (v98)
  {
    v99 = 0;
    while (v97 == v99 || *(mlir::CallableOpInterface::getArgAttrsAttr(&p_src) + 8 * v99) == 1)
    {
      ++v99;
      mlir::CallableOpInterface::getArgAttrsAttr(&p_src);
      if (v99 == v100)
      {
        goto LABEL_166;
      }
    }

    goto LABEL_301;
  }

LABEL_166:
  v239 = v35;
  v240 = v36;
  v241 = v33;
  *v242 = v226;
  *&v242[3] = *(&v226 + 3);
  v243 = v37;
  LOBYTE(v244) = 1;
  *(&v244 + 1) = v224;
  HIDWORD(v244) = *(&v224 + 3);
  v245 = 1;
  *&v246[3] = *(&v223 + 3);
  *v246 = v223;
  v101 = v36;
  v230 = v36;
  v231 = v35;
  v102 = (v35[1] & 0xFFFFFFFFFFFFFFF8);
  if (v102)
  {
    v103 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v102 + 8);
    v101 = v230;
  }

  else
  {
    v103 = 0;
  }

  v234 = v102;
  v235 = v103;
  v104 = (*(v101 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v104)
  {
    v105 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
  }

  else
  {
    v105 = 0;
  }

  v232 = v104;
  v233 = v105;
  mlir::CallableOpInterface::getArgAttrsAttr(&v234);
  v107 = v106;
  v109 = mlir::CallableOpInterface::getArgAttrsAttr(&v234);
  v110 = v108;
  __src = v238;
  v237 = 0x500000000;
  v111 = (8 * v108) >> 3;
  if (v111 < 6)
  {
    v112 = 0;
    v113 = 0;
    v114 = 8 * v108;
    if (!v108)
    {
      goto LABEL_185;
    }

LABEL_176:
    v115 = (__src + 4 * v112);
    v116 = (v110 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v116 >= 7)
    {
      v119 = v116 + 1;
      v120 = (v116 + 1) & 0x3FFFFFFFFFFFFFF8;
      v117 = (v109 + 8 * v120);
      v118 = &v115->i32[v120];
      v121 = v115 + 1;
      v122 = (v109 + 32);
      v123 = vnegq_f64(0);
      v124 = v120;
      do
      {
        v125 = v122[-2];
        v126 = v122[-1];
        v127 = *v122;
        v128 = v122[1];
        v122 += 4;
        v121[-1] = vorrq_s8(vuzp1q_s32(v125, v126), vuzp1q_s32(vceqq_s64(v125, v123), vceqq_s64(v126, v123)));
        *v121 = vorrq_s8(vuzp1q_s32(v127, v128), vuzp1q_s32(vceqq_s64(v127, v123), vceqq_s64(v128, v123)));
        v121 += 2;
        v124 -= 8;
      }

      while (v124);
      if (v119 == v120)
      {
LABEL_184:
        v113 = v237;
        goto LABEL_185;
      }
    }

    else
    {
      v117 = v109;
      v118 = v115;
    }

    do
    {
      v130 = *v117++;
      v129 = v130;
      if (v130 == 0x8000000000000000)
      {
        v129 = -1;
      }

      *v118++ = v129;
    }

    while (v117 != (v109 + v114));
    goto LABEL_184;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v238, v111, 4);
  v112 = v237;
  v113 = v237;
  v114 = 8 * v110;
  if (v110)
  {
    goto LABEL_176;
  }

LABEL_185:
  LODWORD(v237) = v113 + (v114 >> 3);
  v131 = v241;
  v132 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v232) + 8 * v131);
  if (v132 == 0x8000000000000000)
  {
    v133 = -1;
  }

  else
  {
    v133 = v132;
  }

  v134 = __src;
  *(__src + 1) = v133;
  if (!v237)
  {
LABEL_203:
    p_src = &v249;
    HIDWORD(v248) = 3;
    v249 = 0x300000002;
    if (v107 == 4)
    {
      v158 = 2;
    }

    else
    {
      v250 = 4;
      v158 = 3;
    }

    LODWORD(v248) = v158;
    v225[0] = v158;
    IntegerType = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
    v160 = mlir::RankedTensorType::get(v225, 1, IntegerType, 0);
    v161 = *(a2 + 24);
    if (v160)
    {
      v162 = v160;
      v163 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v160 + 8);
      v160 = v162;
    }

    else
    {
      v163 = 0;
    }

    v229 = mlir::DenseElementsAttr::getFromRawBuffer(v160, v163, p_src, 4 * v248, 4, 1, 1);
    v225[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v161, &v229);
    v230 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a3 + 8), *(a2 + 24), &v230, v225) - 16;
    if (p_src != &v249)
    {
      free(p_src);
    }

    v164 = *(a2 + 24);
    LODWORD(p_src) = 0;
    LODWORD(v225[0]) = 1;
    v231 = (mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>((a3 + 8), v164, &v231, &p_src, v225) - 16);
    LODWORD(v229) = 1;
    v165 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
    v166 = mlir::RankedTensorType::get(0, 0, v165, 0);
    v167 = *(a2 + 24);
    if (v166)
    {
      v168 = v166;
      v169 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v166 + 8);
      v166 = v168;
    }

    else
    {
      v169 = 0;
    }

    v225[0] = mlir::DenseElementsAttr::getFromRawBuffer(v166, v169, &v229, 4, 4, 1, 1);
    p_src = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v167, v225) - 16);
    v231 = (mlir::OpBuilder::create<mlir::mps::Flatten2DOp,mlir::Value &,mlir::Value &>((a3 + 8), *(a2 + 24), &v231, &p_src) - 16);
    v170 = *(a2 + 24);
    LOBYTE(p_src) = 0;
    v229 = (mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>((a3 + 8), v170, &v230, &v231, &v241, &p_src) - 16);
    if (v244 == 1)
    {
      v226 = v243;
      Loc = mlir::Value::getLoc(&v226);
      v172 = (v226[1] & 0xFFFFFFFFFFFFFFF8);
      if (v172)
      {
        v173 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v172 + 8);
      }

      else
      {
        v173 = 0;
      }

      v225[0] = v172;
      v225[1] = v173;
      p_src = &v249;
      v248 = 0x200000002;
      v249 = 0x1FFFFFFFFLL;
      if (mlir::CallOpInterface::getArgOperands(v225))
      {
        v174 = mlir::CallableOpInterface::getArgAttrsAttr(v225);
        if (v175)
        {
          v176 = 8 * v175;
          while (*v174 != 0x8000000000000000)
          {
            ++v174;
            v176 -= 8;
            if (!v176)
            {
              goto LABEL_223;
            }
          }
        }

        else
        {
LABEL_223:
          v177 = mlir::CallableOpInterface::getArgAttrsAttr(v225);
          NumElements = mlir::ShapedType::getNumElements(v177, v178);
          *p_src = NumElements;
        }
      }

      v224 = 2;
      v180 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
      v181 = mlir::RankedTensorType::get(&v224, 1, v180, 0);
      if (v181)
      {
        v182 = v181;
        v183 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v181 + 8);
        v181 = v182;
      }

      else
      {
        v183 = 0;
      }

      v223 = mlir::DenseElementsAttr::getFromRawBuffer(v181, v183, p_src, 4 * v248, 4, 1, 1);
      v224 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &v223);
      v226 = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), Loc, &v226, &v224) - 16);
      v223 = mlir::getElementTypeOrSelf((v229[1] & 0xFFFFFFFFFFFFFFF8));
      if (v223 != mlir::getElementTypeOrSelf((v226[1] & 0xFFFFFFFFFFFFFFF8)))
      {
        v226 = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a3 + 8), Loc, &v226, &v223) - 16);
      }

      v229 = (mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>((a3 + 8), Loc, &v229, &v226) - 16);
      if (p_src != &v249)
      {
        free(p_src);
      }
    }

    mlir::CallableOpInterface::getArgAttrsAttr(&v234);
    p_src = v184;
    v185 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
    v186 = mlir::RankedTensorType::get(&p_src, 1, v185, 0);
    p_src = &v249;
    v248 = 0x500000000;
    v187 = v237;
    if (!v237)
    {
      v190 = &v249;
LABEL_239:
      *v190 = vrev64_s32(*v190);
      v191 = *(a2 + 24);
      if (v186)
      {
        v192 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v186 + 8);
        v190 = p_src;
      }

      else
      {
        v192 = 0;
      }

      v157 = 1;
      v226 = mlir::DenseElementsAttr::getFromRawBuffer(v186, v192, v190, 4 * v248, 4, 1, 1);
      v225[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v191, &v226);
      v229 = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), *(a2 + 24), &v229, v225) - 16);
      if (p_src != &v249)
      {
        free(p_src);
      }

      LODWORD(p_src) = 0;
      LODWORD(v225[0]) = 1;
      v193 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>((a3 + 8), *(a2 + 24), &v229, &p_src, v225);
      (*(*a3 + 8))(a3, a2, v193);
      goto LABEL_245;
    }

    if (v237 < 6)
    {
      v189 = &v249;
      v188 = v237;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&p_src, &v249, v237, 4);
      v188 = v237;
      if (!v237)
      {
LABEL_238:
        LODWORD(v248) = v187;
        v190 = p_src;
        goto LABEL_239;
      }

      v189 = p_src;
    }

    memcpy(v189, __src, 4 * v188);
    goto LABEL_238;
  }

  v135 = (v237 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v135 >= 7)
  {
    v138 = v135 + 1;
    v139 = (v135 + 1) & 0x7FFFFFFFFFFFFFF8;
    v137 = (v134 + 4 * v139);
    v140 = v134 + 1;
    v141 = 0uLL;
    v142.i64[0] = -1;
    v142.i64[1] = -1;
    v143 = vdupq_n_s64(1uLL);
    v144 = v139;
    v145 = 0uLL;
    v146 = 0uLL;
    v147 = 0uLL;
    do
    {
      v148 = vceqq_s32(v140[-1], v142);
      v149.i64[0] = v148.u32[0];
      v149.i64[1] = v148.u32[1];
      v150 = vandq_s8(v149, v143);
      v149.i64[0] = v148.u32[2];
      v149.i64[1] = v148.u32[3];
      v151 = vandq_s8(v149, v143);
      v152 = vceqq_s32(*v140, v142);
      v149.i64[0] = v152.u32[0];
      v149.i64[1] = v152.u32[1];
      v153 = vandq_s8(v149, v143);
      v149.i64[0] = v152.u32[2];
      v149.i64[1] = v152.u32[3];
      v145 = vaddq_s64(v145, v151);
      v141 = vaddq_s64(v141, v150);
      v147 = vaddq_s64(v147, vandq_s8(v149, v143));
      v146 = vaddq_s64(v146, v153);
      v140 += 2;
      v144 -= 8;
    }

    while (v144);
    v136 = vaddvq_s64(vaddq_s64(vaddq_s64(v146, v141), vaddq_s64(v147, v145)));
    if (v138 == v139)
    {
      goto LABEL_198;
    }
  }

  else
  {
    v136 = 0;
    v137 = v134;
  }

  v154 = (v134 + 4 * v237);
  do
  {
    v155 = v137->i32[0];
    v137 = (v137 + 4);
    if (v155 == -1)
    {
      ++v136;
    }
  }

  while (v137 != v154);
LABEL_198:
  if (v136 < 2)
  {
    goto LABEL_203;
  }

  p_src = "failed: unsupported dynamic dimensions";
  v251 = 259;
  v225[0] = &p_src;
  v156 = *(a3 + 16);
  if (v156 && mlir::RewriterBase::Listener::classof(v156))
  {
    (*(*v156 + 88))(v156, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::AddOp &>(mlir::mps::AddOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v225);
  }

  v157 = 0;
LABEL_245:
  if (__src != v238)
  {
    free(__src);
  }

  return v157;
}

void mlir::mps::anonymous namespace::Canonicalize1x1ConvToMatMul::~Canonicalize1x1ConvToMatMul(mlir::mps::_anonymous_namespace_::Canonicalize1x1ConvToMatMul *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

void mlir::mps::anonymous namespace::Canonicalize1x1ConvToMatMul::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v47 = *MEMORY[0x1E69E9840];
  v41 = a2;
  v5 = *(a2 + 72);
  v6 = (*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    v5 = *(v4 + 72);
  }

  else
  {
    v7 = 0;
  }

  v40[0] = v6;
  v40[1] = v7;
  v8 = (*(*(v5 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v39[0] = v8;
  v39[1] = v9;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v6);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(v8))
  {
    v19 = "failed: Element types did not match";
    v46 = 259;
LABEL_23:
    v42 = &v43;
    v43 = v19;
    v20 = *(a3 + 16);
    if (v20 && mlir::RewriterBase::Listener::classof(v20))
    {
      (*(*v20 + 88))(v20, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(mlir::mps::Conv2DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v42);
    }

    return;
  }

  if (!mlir::CallOpInterface::getArgOperands(v40) || (mlir::CallOpInterface::getArgOperands(v39) & 1) == 0)
  {
    v19 = "failed: Ranks did not match";
LABEL_22:
    v46 = 259;
    v4 = v41;
    goto LABEL_23;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v40);
  v12 = v11;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v39);
  v15 = v14;
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v41) != 1 || mlir::mps::Conv3DOp::getWeightsLayout(&v41) != 3 || v12 != 4 || v15 != 4 || *ArgAttrsAttr != 1 || ArgAttrsAttr[1] != 1)
  {
    v19 = "failed";
    goto LABEL_22;
  }

  if (mlir::mps::Conv3DOp::getGroups(&v41) != 1)
  {
    goto LABEL_56;
  }

  v43 = v45;
  v44 = 0x600000000;
  Strides = mlir::mps::Conv3DOp::getStrides(&v41);
  if (Strides)
  {
    v17 = Strides;
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v17;
  }

  else
  {
    v18 = 0;
  }

  v21 = 1;
  mlir::getIntValues<unsigned long long>(Strides, v18, &v43, 1);
  v22 = v43;
  if (v44)
  {
    v23 = 0;
    while (*(v43 + v23) == 1)
    {
      v23 += 8;
      if (8 * v44 == v23)
      {
        v21 = 1;
        goto LABEL_35;
      }
    }

    mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(a3, &v41, "failed");
    v21 = 0;
    v22 = v43;
  }

LABEL_35:
  if (v22 != v45)
  {
    free(v22);
  }

  if (!v21)
  {
    return;
  }

  v43 = v45;
  v44 = 0x600000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v41);
  if (InputAttributeNames)
  {
    v25 = InputAttributeNames;
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = 1;
  mlir::getIntValues<unsigned long long>(InputAttributeNames, v26, &v43, 1);
  v28 = v43;
  if (v44)
  {
    v29 = 0;
    while (*(v43 + v29) == 1)
    {
      v29 += 8;
      if (8 * v44 == v29)
      {
        v27 = 1;
        goto LABEL_48;
      }
    }

    mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(a3, &v41, "failed");
    v27 = 0;
    v28 = v43;
  }

LABEL_48:
  if (v28 != v45)
  {
    free(v28);
  }

  if (!v27)
  {
    return;
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v41);
  if ((PaddingStyle - 1) < 2 || PaddingStyle == 4)
  {
LABEL_67:
    v37 = *(v41 + 72);
    v38 = *(v37 + 24);
    v42 = *(v37 + 56);
    v43 = v38;
    mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::MatMulOp,mlir::Value,mlir::Value>(a3, v41, &v43, &v42);
    return;
  }

  if (PaddingStyle)
  {
LABEL_56:
    mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(a3, &v41, "failed");
    return;
  }

  v43 = v45;
  v44 = 0x600000000;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v41);
  v32 = Rewriter;
  if (Rewriter)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v33 = 0;
  }

  v34 = 1;
  mlir::getIntValues<unsigned long long>(v32, v33, &v43, 1);
  v35 = v43;
  if (v44)
  {
    v36 = 0;
    while (!*(v43 + v36))
    {
      v36 += 8;
      if (8 * v44 == v36)
      {
        v34 = 1;
        goto LABEL_64;
      }
    }

    mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(a3, &v41, "failed");
    v34 = 0;
    v35 = v43;
  }

LABEL_64:
  if (v35 != v45)
  {
    free(v35);
  }

  if (v34)
  {
    goto LABEL_67;
  }
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::MatMulOp,mlir::Value,mlir::Value>(mlir::BoolAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &>(a1 + 1, *(a2 + 24), a3, a4);
  (*(*a1 + 1))(a1, a2, v6);
  return v6;
}

void mlir::mps::anonymous namespace::CanonicalizeHigherRankTensorToMPSKernelSizeTensor::~CanonicalizeHigherRankTensorToMPSKernelSizeTensor(mlir::mps::_anonymous_namespace_::CanonicalizeHigherRankTensorToMPSKernelSizeTensor *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::RandomUniformOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeHigherRankTensorToMPSKernelSizeTensor::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43[6] = *MEMORY[0x1E69E9840];
  v37 = a2 - 16;
  mlir::Value::getLoc(&v37);
  v5 = (*(v37 + 8) & 0xFFFFFFFFFFFFFFF8);
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
  mlir::CallableOpInterface::getArgAttrsAttr(v36);
  if (v7 < 5)
  {
    return 0;
  }

  v35 = *(*(a2 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v35);
  v41 = v43;
  v42 = 0x600000000;
  v38 = v40;
  v39 = 0x600000000;
  mlir::CallableOpInterface::getArgAttrsAttr(v36);
  if (v10 >= 1)
  {
    for (i = 0; i < v16; ++i)
    {
      v12 = *(mlir::CallableOpInterface::getArgAttrsAttr(v36) + 8 * i);
      if (i > 3)
      {
        v41[3] *= v12;
      }

      else
      {
        v13 = v42;
        if (v42 >= HIDWORD(v42))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v42 + 1, 8);
          v13 = v42;
        }

        v41[v13] = v12;
        LODWORD(v42) = v42 + 1;
      }

      v14 = *(mlir::CallableOpInterface::getArgAttrsAttr(v36) + 8 * i);
      v15 = v39;
      if (v39 >= HIDWORD(v39))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v40, v39 + 1, 8);
        v15 = v39;
      }

      *(v38 + v15) = v14;
      LODWORD(v39) = v39 + 1;
      mlir::CallableOpInterface::getArgAttrsAttr(v36);
    }
  }

  v17 = *(a3 + 24);
  v32 = *(a3 + 8);
  v33 = v17;
  SI64TensorAttr = mlir::getSI64TensorAttr(&v32, v41, v42);
  Loc = mlir::Value::getLoc(&v35);
  v31 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &SI64TensorAttr) - 16;
  (**a3)(a3, DefiningOp, &v31, 1);
  v19 = v41;
  v20 = v42;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v37);
  v30 = mlir::RankedTensorType::get(v19, v20, ElementTypeOrSelf, 0);
  v22 = *(a2 + 24);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v23 = *(a2 + 72);
    v24 = *(a2 + 68);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  *&v32 = v23;
  *(&v32 + 1) = v24;
  v28[0] = mlir::Operation::getAttrDictionary(a2);
  v28[0] = mlir::ArrayAttr::getValue(v28);
  v28[1] = v25;
  v29 = mlir::OpBuilder::create<mlir::mps::RandomUniformOp,mlir::RankedTensorType &,mlir::OperandRange,llvm::ArrayRef<mlir::NamedAttribute>>((a3 + 8), v22, &v30, &v32, v28);
  v26 = *(a3 + 24);
  v32 = *(a3 + 8);
  v33 = v26;
  v28[0] = mlir::getSI64TensorAttr(&v32, v38, v39);
  *&v32 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), *(a2 + 24), v28);
  v27 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::mps::RandomUniformOp &,mlir::mps::ConstantOp &>((a3 + 8), *(a2 + 24), &v29, &v32) - 16;
  (**a3)(a3, a2, &v27, 1);
  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::RandomUniformOp,mlir::RankedTensorType &,mlir::OperandRange,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RandomUniformOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::RandomUniformOp,mlir::RankedTensorType &,mlir::OperandRange,llvm::ArrayRef<mlir::NamedAttribute>>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, a3, 1uLL);
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::mps::RandomUniformOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::RandomUniformOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::mps::RandomUniformOp &,mlir::mps::ConstantOp &>(mlir::UnitAttr **a1, uint64_t a2, void *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value,mlir::UnitAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ReshapeOp::build(a1, v17, *a3 - 16, *a4 - 16, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{

  return mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &,mlir::BoolAttr &,mlir::BoolAttr &>((v27 + 8), v28, &a17, &a27, &a9, &a10);
}

uint64_t OUTLINED_FUNCTION_7_10@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(a4 + 8 * a1) = v22;
  ++a5;

  return mlir::OpBuilder::create<mlir::mps::CreateComplexOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((v20 + 8), v21, &a4, &a20, &a10);
}

uint64_t OUTLINED_FUNCTION_11_9()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

void OUTLINED_FUNCTION_13_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  a17 = *(**(v18 - 160) + 24);

  mlir::Builder::getFusedLoc((v17 + 8), &a17, 1, 0);
}

void OUTLINED_FUNCTION_19_8(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a26, v26, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_34_5@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);

  return mlir::getElementTypeOrSelf(v2);
}

uint64_t OUTLINED_FUNCTION_35_3()
{

  return mlir::Builder::getBoolAttr((v0 + 8), 0);
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1, StringRef a2)
{
  a2.var1 = 13;

  return mlir::DictionaryAttr::get((v2 + 56), a2);
}

uint64_t OUTLINED_FUNCTION_37_3(uint64_t a1, StringRef a2)
{
  a2.var1 = 13;

  return mlir::Operation::getInherentAttr(v2, a2);
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1)
{
  *(v1 - 88) = a1;

  return mlir::ArrayAttr::getValue((v1 - 88));
}

uint64_t mlir::mps::StitchingPass::runOnRegionForOp(mlir::mps::BaseFusableCoreOps **this, mlir::Operation *a2)
{
  v40[0] = mlir::Attribute::getContext((a2 + 24));
  memset(&v40[1], 0, 24);
  v37 = *(a2 + 11) & 0x7FFFFF;
  if (v37)
  {
    v4 = 0;
    v5 = a2 + 64;
    do
    {
      v38 = v4;
      v6 = (&v5[16 * ((*(a2 + 11) >> 23) & 1) + 7 + ((*(a2 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 24 * v4;
      for (i = *(v6 + 8); i != v6; i = *(i + 8))
      {
        v8 = i - 8;
        if (!i)
        {
          v8 = 0;
        }

        v9 = (v8 + 32);
        v10 = *(v8 + 40);
        if (v10 != (v8 + 32))
        {
          do
          {
            while (1)
            {
              v13 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v10, v3);
              {
                goto LABEL_23;
              }

              ParentOp = *(v13 + 16);
              if (ParentOp)
              {
                ParentOp = mlir::Block::getParentOp(ParentOp);
              }

              if (ParentOp != a2)
              {
                goto LABEL_23;
              }

              v16 = *(v13 + 44);
              if ((v16 & 0x7FFFFF) != 0 && *(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
              {
                if ((mlir::mps::StitchingPass::runOnRegionForOp(this, v13) & 1) == 0)
                {
                  return 0;
                }

                v16 = *(v13 + 44);
              }

              if ((v16 & 0x800000) != 0 && (v17 = *(v13 + 68), v17))
              {
                v18 = (*(v13 + 72) + 24);
                while (1)
                {
                  *&v43[0] = *v18;
                  DefiningOp = mlir::Value::getDefiningOp(v43);
                  if (DefiningOp)
                  {
                    {
                      break;
                    }
                  }

                  v18 += 4;
                  if (!--v17)
                  {
                    goto LABEL_54;
                  }
                }
              }

              else
              {
LABEL_54:
                v31 = *(v13 + 36);
                v32 = v13 - 16;
                if (!v31)
                {
                  v32 = 0;
                }

                *&v41[0] = v32;
                *(&v41[0] + 1) = v31;
                mlir::ResultRange::getUses(v41, v43);
                v34 = v44;
                v35 = v45;
                v42 = v44;
                v41[0] = v43[0];
                v41[1] = v43[1];
                if (v44 == v45)
                {
                  goto LABEL_23;
                }

                {
                  mlir::ResultRange::UseIterator::operator++(v41);
                  v34 = v42;
                  if (v42 == v35)
                  {
                    goto LABEL_23;
                  }
                }
              }

              v22 = v10[1];
              v23 = *(v6 + 8);
              if (v23)
              {
                v24 = v23 - 8;
              }

              else
              {
                v24 = 0;
              }

              if (v22 == (v24 + 32))
              {
LABEL_48:
                v26 = 0;
              }

              else
              {
                v25 = v10[1];
                while (1)
                {
                  v26 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v25, v21);
                  {
                    break;
                  }

                  v25 = v25[1];
                  v28 = *(v6 + 8);
                  if (v28)
                  {
                    v29 = v28 - 8;
                  }

                  else
                  {
                    v29 = 0;
                  }

                  if (v25 == (v29 + 32))
                  {
                    goto LABEL_48;
                  }
                }
              }

              v30 = mlir::mps::BaseFusableCoreOps::fuseCoreOps(this[43], v13, v40);
              if ((v3 & 1) == 0)
              {
                return 0;
              }

              v10 = v30;
              if (v30)
              {
                break;
              }

              v10 = *v22;
LABEL_23:
              v10 = v10[1];
              if (v10 == v9)
              {
                goto LABEL_10;
              }
            }

            if (!v26)
            {
              goto LABEL_23;
            }

            v10 = *(*v26 + 8);
          }

          while (v10 != v9);
        }

LABEL_10:
        v11 = *v9;
        while (v11 != v9)
        {
          v12 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v11, v3);
          v11 = *v11;
          {
          }

          if (((*(**(v12 + 48) + 32))(*(v12 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0 && !mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v12))
          {
            {
            }

            if (((*(**(v12 + 48) + 32))(*(v12 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0 && *(v12 + 36) && !*(v12 - 16))
            {
              mlir::Operation::erase(v12);
            }
          }
        }
      }

      v4 = v38 + 1;
      v5 = a2 + 64;
    }

    while (v38 + 1 != v37);
  }

  return 1;
}

uint64_t mlir::mps::anonymous namespace::isStitchable(mlir::mps::_anonymous_namespace_ *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  {
  }

  result = (*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id, a3);
  if (!result)
  {
    return result;
  }

  v76[0] = 0;
  v76[1] = 0;
  v83 = v76;
  if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v83, this))
  {
    return mlir::ElementsAttr::isSplat(v76);
  }

  if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id)
  {
    v80 = *(*(this + 9) + 56);
    v83 = v80;
    DefiningOp = mlir::Value::getDefiningOp(&v83);
    if (!DefiningOp)
    {
      goto LABEL_126;
    }

    {
      v75 = DefiningOp;
      DefiningOp = v75;
    }

    if (((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
LABEL_126:
      v10 = mlir::Value::getDefiningOp(&v80);
      if (v10)
      {
        {
          return 0;
        }
      }
    }
  }

  v6 = *(*(this + 6) + 16);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::mps::GetCoordOp,void>::id)
  {
    mlir::mps::GetCoordOpAdaptor::GetCoordOpAdaptor();
    v80 = v86;
    v81 = 1;
    v80 = mlir::ValueRange::offset_base(&v80, 1);
    v81 = 0;
    v12 = mlir::ValueRange::dereference_iterator(&v80, 0);
    v80 = 0;
    v81 = 0;
    v78[0] = &v80;
    v87 = v12;
    v13 = mlir::Value::getDefiningOp(&v87);
    if (!v13 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v78, v13) & 1) == 0)
    {
      return 0;
    }

    SingleInt = mlir::getSingleIntValue<long long>(v80, v81);
    result = 0;
    if ((v15 & 1) != 0 && SingleInt >= -4)
    {
      v80 = v82;
      v81 = 0x400000000;
      v87 = v86;
      v88 = 0;
      v16 = mlir::ValueRange::dereference_iterator(&v87, 0);
      if (mlir::matchConstantWithIntVector<long long>(v16, &v80))
      {
        v17 = v81;
        if (SingleInt < 0)
        {
          v17 = 0;
        }

        result = (SingleInt - v17) > 0xFFFFFFFFFFFFFFFBLL;
      }

      else
      {
        result = 0;
      }

      if (v80 != v82)
      {
        v51 = result;
        free(v80);
        return v51;
      }
    }

    return result;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::mps::DepthToSpace2DOp,void>::id)
  {
    v18 = (*(*(*(this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v18)
    {
      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v80 = v18;
    v81 = v19;
    result = mlir::CallOpInterface::getArgOperands(&v80);
    if (!result)
    {
      return result;
    }

    mlir::CallableOpInterface::getArgAttrsAttr(&v80);
    v23 = v22;
    v24 = 0;
    while (1)
    {
      v25 = *(this + 9);
      if (v24 == 1)
      {
        v31 = v25[7];
      }

      else
      {
        if (!v24)
        {
          v26 = v25[11];
          v83 = 0;
          v84 = 0;
          v78[0] = &v83;
          v87 = v26;
          v27 = mlir::Value::getDefiningOp(&v87);
          if (v27)
          {
            if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v78, v27))
            {
              goto LABEL_40;
            }

LABEL_47:
            v29 = 0;
            LOBYTE(v27) = 0;
            goto LABEL_48;
          }

          goto LABEL_46;
        }

        v31 = v25[15];
      }

      v83 = 0;
      v84 = 0;
      v78[0] = &v83;
      v87 = v31;
      v27 = mlir::Value::getDefiningOp(&v87);
      if (v27)
      {
        if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v78, v27))
        {
LABEL_40:
          v28 = mlir::getSingleIntValue<long long>(v83, v84);
          v29 = v28 & 0xFFFFFFFFFFFFFF00;
          v30 = v28;
          goto LABEL_49;
        }

        goto LABEL_47;
      }

LABEL_46:
      v29 = 0;
LABEL_48:
      v30 = 0;
LABEL_49:
      v32 = v30 | v29;
      result = 0;
      if ((v27 & 1) == 0 || v32 < -4)
      {
        return result;
      }

      if ((mlir::getPositiveAxis(v32, v23) - v23) <= 0xFFFFFFFFFFFFFFFBLL)
      {
        return 0;
      }

      if (++v24 == 3)
      {
        return 1;
      }
    }
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::mps::SpaceToDepth2DOp,void>::id)
  {
    v20 = (*(*(*(this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
    }

    else
    {
      v21 = 0;
    }

    v80 = v20;
    v81 = v21;
    result = mlir::CallOpInterface::getArgOperands(&v80);
    if (!result)
    {
      return result;
    }

    mlir::CallableOpInterface::getArgAttrsAttr(&v80);
    v34 = v33;
    v35 = 0;
    while (1)
    {
      v36 = *(this + 9);
      if (v35 == 1)
      {
        v42 = v36[7];
      }

      else
      {
        if (!v35)
        {
          v37 = v36[11];
          v83 = 0;
          v84 = 0;
          v78[0] = &v83;
          v87 = v37;
          v38 = mlir::Value::getDefiningOp(&v87);
          if (v38)
          {
            if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v78, v38))
            {
              goto LABEL_61;
            }

LABEL_68:
            v40 = 0;
            LOBYTE(v38) = 0;
            goto LABEL_69;
          }

          goto LABEL_67;
        }

        v42 = v36[15];
      }

      v83 = 0;
      v84 = 0;
      v78[0] = &v83;
      v87 = v42;
      v38 = mlir::Value::getDefiningOp(&v87);
      if (v38)
      {
        if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v78, v38))
        {
LABEL_61:
          v39 = mlir::getSingleIntValue<long long>(v83, v84);
          v40 = v39 & 0xFFFFFFFFFFFFFF00;
          v41 = v39;
          goto LABEL_70;
        }

        goto LABEL_68;
      }

LABEL_67:
      v40 = 0;
LABEL_69:
      v41 = 0;
LABEL_70:
      v43 = v41 | v40;
      result = 0;
      if ((v38 & 1) == 0 || v43 < -4)
      {
        return result;
      }

      if ((mlir::getPositiveAxis(v43, v34) - v34) <= 0xFFFFFFFFFFFFFFFBLL)
      {
        return 0;
      }

      if (++v35 == 3)
      {
        return 1;
      }
    }
  }

  if (!a2 || !*(a2 + 9))
  {
    return 1;
  }

  v79 = this;
  v7 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v87 = v7;
  v88 = v8;
  v44 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v44)
  {
    v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
  }

  else
  {
    v45 = 0;
  }

  v78[0] = v44;
  v78[1] = v45;
  result = mlir::CallOpInterface::getArgOperands(&v87);
  if (!result)
  {
    return result;
  }

  result = mlir::CallOpInterface::getArgOperands(v78);
  if (!result)
  {
    return result;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v87);
  v48 = v47;
  v49 = mlir::CallableOpInterface::getArgAttrsAttr(v78);
  if (v48 != v50 || memcmp(ArgAttrsAttr, v49, 8 * v48))
  {
    return 0;
  }

  if (mlir::CallOpInterface::getArgOperands(&v87))
  {
    v52 = mlir::CallableOpInterface::getArgAttrsAttr(&v87);
    if (v53)
    {
      v54 = 8 * v53;
      while (*v52 != 0x8000000000000000)
      {
        ++v52;
        v54 -= 8;
        if (!v54)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_99;
    }

LABEL_93:
    if (!mlir::CallOpInterface::getArgOperands(v78))
    {
      goto LABEL_99;
    }

    v55 = mlir::CallableOpInterface::getArgAttrsAttr(v78);
    if (v56)
    {
      v57 = v55;
      v58 = 8 * v56;
      result = 1;
      while (*v57 != 0x8000000000000000)
      {
        ++v57;
        v58 -= 8;
        if (!v58)
        {
          return result;
        }
      }

      goto LABEL_99;
    }

    return 1;
  }

LABEL_99:
  {
  }

  if ((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  v59 = v79;
  {
  }

  if ((*(**(v59 + 6) + 32))(*(v59 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  v60 = v79;
  {
  }

  result = (*(**(v60 + 6) + 32))(*(v60 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v61 = v79;
    mlir::Operation::getOperandTypes(v79, &v83);
    v62 = v85 - v84;
    if (v85 == v84)
    {
      return 0;
    }

    if (v62 >= 2)
    {
      v65 = 0;
      v66 = 0;
      v64 = v84 + (v62 & 0xFFFFFFFFFFFFFFFELL);
      v67 = &v83[4 * v84 + 7];
      v68 = v62 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v69 = *(v67 - 4);
        v70 = *v67;
        v67 += 8;
        v71 = *(v70 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v87 == (*(v69 + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          ++v65;
        }

        if (v87 == v71)
        {
          ++v66;
        }

        v68 -= 2;
      }

      while (v68);
      v63 = v66 + v65;
      if (v62 == (v62 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_122:
        if (v63)
        {
          v77 = 1;
          mlir::Operation::getOperandTypes(v61, &v83);
          v80 = &v87;
          v81 = &v77;
          v82[0] = &v79;
        }

        return 0;
      }
    }

    else
    {
      v63 = 0;
      v64 = v84;
    }

    v72 = v85 - v64;
    v73 = &v83[4 * v64 + 3];
    do
    {
      v74 = *v73;
      v73 += 4;
      if (v87 == (*(v74 + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        ++v63;
      }

      --v72;
    }

    while (v72);
    goto LABEL_122;
  }

  return result;
}

uint64_t **mlir::mps::BaseFusableCoreOps::fuseCoreOps(mlir::mps::BaseFusableCoreOps *this, mlir::Operation *a2, mlir::OpBuilder *a3)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 17);
    if (v6)
    {
      v7 = 0;
      v8 = (*(a2 + 9) + 24);
      do
      {
        v12 = (**this)(this, a2, v7);
        if ((v12 & 0x100) == 0)
        {
          return 0;
        }

        if (!v12)
        {
          v53 = *v8;
          DefiningOp = mlir::Value::getDefiningOp(&v53);
          v53 = *v8;
          v14 = mlir::Value::getDefiningOp(&v53);
          if (!v14)
          {
            goto LABEL_85;
          }

          if ((atomic_load_explicit(v9, memory_order_acquire) & 1) == 0)
          {
            v52 = v14;
            v14 = v52;
          }

          if (((*(**(v14 + 48) + 32))(*(v14 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
          {
LABEL_85:
            {
              v17 = v9;
              v18 = *(DefiningOp + 2);
              v19 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v16) + 8);
              *(a3 + 2) = v18;
              *(a3 + 3) = v19;
              UnknownLoc = mlir::Builder::getUnknownLoc(a3, v20);
              v53 = *v8;
              v22 = (mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::Value>(a3, UnknownLoc, &v53) - 16);
              v59 = v22;
              v58 = *v8;
              v23 = mlir::Value::getDefiningOp(&v59);
              v53 = &v57;
              v54 = &v57;
              v56 = 0;
              v55 = 0x100000001;
              v57 = v23;
              mlir::Value::replaceAllUsesExcept(&v58, v22, &v53);
              if (v54 != v53)
              {
                free(v54);
              }

              v10 = mlir::Value::getDefiningOp(&v59);
              mlir::mps::BaseFusableCoreOps::fuseCoreOps(this, v10, a3);
              v9 = v17;
              if ((v11 & 1) == 0)
              {
                return 0;
              }
            }
          }
        }

        ++v7;
        v8 += 4;
      }

      while (v6 != v7);
    }
  }

  v24 = *(*(a2 + 6) + 16);
  v38 = v24 == &mlir::detail::TypeIDResolver<mlir::mps::RealToHermiteanFFTOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps_spi::RMSNormOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::FastFourierTransformOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::StencilOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mpsx::QuantizedMatMulOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMinOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::IdentityOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id;
  if (v38 || mlir::mps::BaseFusableCoreOps::fuseCoreOps(mlir::Operation *,mlir::OpBuilder &)::$_0::operator()(a2))
  {
    v40 = (*(*this + 8))(this, a2);
    if ((v40 & 0x100) == 0)
    {
      return 0;
    }

    if (v40)
    {
      if (v53)
      {
        v41 = v53[24];
        if (v41)
        {
          return v41;
        }

        goto LABEL_64;
      }

LABEL_80:
      return 0;
    }
  }

LABEL_64:
  v42 = *(a2 + 2);
  v43 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v39);
  *(a3 + 2) = v42;
  *(a3 + 3) = v43;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v44 = *(a2 + 17);
    if (v44)
    {
      v41 = 0;
      for (i = (*(a2 + 9) + 24); ; i += 4)
      {
        v53 = *i;
        v46 = mlir::Value::getDefiningOp(&v53);
        if (v46)
        {
          v48 = v46;
          {
            v53 = *i;
            v49 = mlir::Value::getDefiningOp(&v53);
            if (!v49)
            {
              goto LABEL_75;
            }

            {
              v50 = v49;
              v49 = v50;
            }

            if (((*(**(v49 + 48) + 32))(*(v49 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
            {
LABEL_75:
              if (!v53)
              {
                goto LABEL_80;
              }

              if (*(v48 + 2) == *(a2 + 2))
              {
                v41 = v53[24];
              }
            }
          }
        }

        if (!--v44)
        {
          return v41;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::mps::StitchingPass::runOnOperation(mlir::mps::StitchingPass *this)
{
  v2 = *(this + 5);
  v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
  if ((v2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v2 & 0xFFFFFFFFFFFFFFF8);
  }

  result = mlir::mps::StitchingPass::runOnRegionForOp(this, v3);
  if ((result & 1) == 0)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

uint64_t mlir::mps::BaseFusableCoreOps::fuseCoreOps(mlir::Operation *,mlir::OpBuilder &)::$_0::operator()(mlir::Operation *a1)
{
  if (*(*(a1 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v5[1] = v1;
  v5[2] = v2;
  v5[0] = a1;
  FusionType = mlir::mpsx::FusionOp::getFusionType(v5);
  return (FusionType < 4) & FusionType;
}

uint64_t *mlir::mps::anonymous namespace::StitchedRegion::get@<X0>(mlir::UnknownLoc **this@<X0>, mlir::OpBuilder *a2@<X1>, mlir::Operation *a3@<X2>, mlir::mps::BaseFusableCoreOps *a4@<X3>, void *a5@<X8>)
{
  v5 = a4;
  v10 = operator new(0xD8uLL);
  *v10 = this;
  *(v10 + 2) = 0;
  *(v10 + 3) = a2;
  *(v10 + 4) = 0;
  v10[40] = v5;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 20) = 1065353216;
  *(v10 + 18) = 0;
  *(v10 + 19) = 0;
  *(v10 + 40) = 0;
  *(v10 + 21) = 0;
  *(v10 + 22) = 0;
  *(v10 + 46) = 0;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 34) = 0;
  *(v10 + 25) = a3;
  *(v10 + 52) = 1;
  v35 = v10;
  {
    v19 = *(v10 + 3);
    if (v10[40] == 1)
    {
      *(v10 + 4) = v19;
      if (v18)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v31.var0.var0 = 1;
      mlir::emitOptionalError<char const(&)[66]>(v19[3], v31, "A non stitchable core asked to create a stitched region, invalid\n");
    }

LABEL_18:
    *a5 = 0;
  }

  *(v10 + 4) = *(v10 + 3);
  if ((v15 & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = StitchedOp;
  UnknownLoc = mlir::Builder::getUnknownLoc(this, v15);
  v33 = v16 - 16;
  v34 = (mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::Value>(this, UnknownLoc, &v33) - 16);
  mlir::Value::getDefiningOp(&v34);
LABEL_6:
  v21 = *(v10 + 2);
  v23 = *(v21 + 40);
  v22 = *(v21 + 44);
  LOBYTE(v33) = 0;
  v24 = ((v21 + 16 * ((v22 >> 23) & 1) + ((v22 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v23;
  v34 = &v33;
  for (i = *(v24 + 8); i != v24; i = *(i + 8))
  {
    v26 = i - 8;
    if (!i)
    {
      v26 = 0;
    }

    v27 = *(v26 + 40);
    v28 = v26 + 32;
    if (v27 != v26 + 32)
    {
      do
      {
        v29 = *(v27 + 8);
        v30 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v27, v18);
        v27 = v29;
      }

      while (v29 != v28);
    }
  }

  v34 = (MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(*(v10 + 1) + 32), v18) - 16);
  if ((v33 & 1) == 0)
  {
    v34 = (mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::Value>(this, *(*(v10 + 24) + 24), &v34) - 16);
  }

  mlir::OpBuilder::create<mlir::mpsx::ReturnStitchedOp,mlir::Value &>(this, *(*(v10 + 24) + 24), &v34);
  *(*(v10 + 24) - 8) = v34[1] & 0xFFFFFFFFFFFFFFF8 | *(*(v10 + 24) - 8) & 7;
  v35 = 0;
  *a5 = v10;
}

uint64_t *std::unique_ptr<mlir::mps::anonymous namespace::StitchedRegion>::~unique_ptr[abi:nn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    llvm::deallocate_buffer(*(v1 + 168), (16 * *(v1 + 184)));
  }

  return result;
}

void mlir::mps::createStitchingPass(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x168uLL);
  v6 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  mlir::mps::StitchingPass::StitchingPass(v4, &v6);
  v5 = *(&v6 + 1);
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  *a2 = v4;
}

void mlir::mps::StitchingPass::~StitchingPass(mlir::mps::StitchingPass *this)
{
  *this = &unk_1F5B00510;
  v2 = *(this + 44);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_1F5B01A70;
  mlir::detail::PassOptions::~PassOptions((this + 152));
  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  if (*(this + 120) == 1)
  {
    v4 = *(this + 8);
    if (v4 != *(this + 7))
    {
      free(v4);
    }
  }
}

{
  *this = &unk_1F5B00510;
  v2 = *(this + 44);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_1F5B01A70;
  v3 = *(this + 39);
  if (v3)
  {
    *(this + 40) = v3;
    operator delete(v3);
  }

  if (*(this + 73))
  {
    v4 = *(this + 72);
    if (v4)
    {
      v5 = 0;
      do
      {
        v6 = *(*(this + 35) + v5);
        if (v6 != -8 && v6 != 0)
        {
          llvm::deallocate_buffer(v6, (*v6 + 17));
        }

        v5 += 8;
      }

      while (8 * v4 != v5);
    }
  }

  free(*(this + 35));
  v8 = *(this + 29);
  if (v8 != this + 248)
  {
    free(v8);
  }

  v9 = *(this + 23);
  if (v9 != this + 200)
  {
    free(v9);
  }

  v10 = *(this + 16);
  if (v10)
  {
    *(this + 17) = v10;
    operator delete(v10);
  }

  if (*(this + 120) == 1)
  {
    v11 = *(this + 8);
    if (v11 != *(this + 7))
    {
      free(v11);
    }
  }

  operator delete(this);
}

void *mlir::mps::MPSStitchingBase<mlir::mps::StitchingPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5AFAEA8;
  v4 = v3;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v3);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

_OWORD *mlir::mps::MPSStitchingBase<mlir::mps::StitchingPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x168uLL);
  v5 = *(a1 + 8);
  result[1] = *(a1 + 16);
  *(result + 4) = *(a1 + 32);
  *(result + 1) = v5;
  *(result + 40) = 0;
  *(result + 120) = 0;
  result[8] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  *(result + 22) = 0;
  *(result + 23) = result + 200;
  *(result + 24) = 0x400000000;
  *(result + 29) = result + 248;
  *(result + 30) = 0x400000000;
  *(result + 35) = 0;
  *(result + 36) = 0;
  *(result + 74) = 0;
  *(result + 75) = 16;
  result[19] = 0u;
  result[20] = 0u;
  *result = &unk_1F5B00510;
  v7 = *(a1 + 344);
  v6 = *(a1 + 352);
  *(result + 42) = 0;
  *(result + 43) = v7;
  *(result + 44) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::Stitchable<Empty>]";
  v6 = 82;
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

uint64_t llvm::all_of<mlir::ValueTypeRange<mlir::OperandRange>,mlir::mps::anonymous namespace::checkCompatibleShapes(mlir::Operation *,mlir::Operation *)::{lambda(mlir::Type)#2}>(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  if (v2 == v3)
  {
    return 1;
  }

  v5 = *a1;
  v6 = *a2;
  v31 = a1[3];
  v32 = *(a2 + 8);
  v7 = *(a2 + 16);
  v30 = *a1;
LABEL_6:
  v8 = (*(*(v5 + 32 * v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*v6 == v8 && *v32 == 1)
  {
    *v32 = 0;
    goto LABEL_5;
  }

  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v33[0] = v8;
  v33[1] = v9;
  if (mlir::CallOpInterface::getArgOperands(v33))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v33);
    v11 = v10;
    mlir::CallableOpInterface::getArgAttrsAttr(v6);
    if (v11 <= v12)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v33);
      v14 = v13;
      mlir::CallableOpInterface::getArgAttrsAttr(v6);
      if (v15 >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      if (!v16)
      {
        goto LABEL_5;
      }

      v17 = 0;
      v18 = 0;
      while (1)
      {
        mlir::CallableOpInterface::getArgAttrsAttr(v6);
        v20 = *(mlir::CallableOpInterface::getArgAttrsAttr(v6) + 8 * (v19 + ~v18));
        mlir::CallableOpInterface::getArgAttrsAttr(v33);
        v22 = *(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * (v21 + ~v18));
        if (v20 == 0x8000000000000000)
        {
          if (v22 == 0x8000000000000000)
          {
            v23 = *v7;
            if (*(*v7 + 47) && (v34.var0 = "__no_dynamic_broadcast", v34.var1 = 22, InherentAttr = mlir::Operation::getInherentAttr(*v7, v34), (v25 & 1) != 0))
            {
              v26 = InherentAttr != 0;
            }

            else
            {
              v35.var0 = "__no_dynamic_broadcast";
              v35.var1 = 22;
              v26 = mlir::DictionaryAttr::contains((v23 + 56), v35);
            }

            v17 |= v26 ^ 1;
            goto LABEL_38;
          }

LABEL_29:
          v29 = v20 == 0x8000000000000000 && v22 != 1;
          v17 |= v29;
LABEL_38:
          if (++v18 == v16)
          {
            v5 = v30;
            v3 = v31;
            if (v17)
            {
              return 0;
            }

LABEL_5:
            if (++v2 == v3)
            {
              return 1;
            }

            goto LABEL_6;
          }
        }

        else
        {
          if (v20 != 1 || v22 == 1)
          {
            goto LABEL_29;
          }

          ++v18;
          v17 = 1;
          if (v18 == v16)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::StitchedRegion::createStitchedOp(mlir::mps::_anonymous_namespace_::StitchedRegion *this, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *this;
  v4 = *(this + 4);
  v5 = *(v4 + 16);
  v6 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v4, a2) + 8);
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  UnknownLoc = mlir::Builder::getUnknownLoc(*this, v7);
  F32Type = mlir::Builder::getF32Type(*this, v9);
  v28 = mlir::UnrankedTensorType::get(F32Type);
  v27 = mlir::OpBuilder::create<mlir::mpsx::StitchedOp,mlir::UnrankedTensorType &>(*this, UnknownLoc, &v28) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v27);
  *(this + 24) = DefiningOp;
  *(this + 14) = 0;
  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
  {
    v12 = DefiningOp;
  }

  else
  {
    v12 = 0;
  }

  *(this + 2) = v12;
  v13 = ((v12 + 16 * ((*(v12 + 44) >> 23) & 1) + ((*(v12 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v12 + 40);
  v14 = *this;
  mlir::ValueRange::ValueRange(&__p, 0, 0);
  Block = mlir::OpBuilder::createBlock(v14, v13, 0, __p, v30, 0, 0);
  *(this + 1) = Block;
  v16 = *this;
  *(v16 + 16) = Block;
  *(v16 + 24) = Block + 2;
  v17 = *(this + 4);
  v18 = *(v17 + 36);
  v19 = (v17 - 16);
  if (!v18)
  {
    v19 = 0;
  }

  __p = v19;
  v30 = v18;
  mlir::ResultRange::replaceAllUsesWith(&__p, *(this + 24));
  __p = operator new(0x80uLL);
  v30 = __p;
  v31 = __p + 128;
  if (*(this + 40) == 1)
  {
    if ((v21 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v24 = *this;
    v25 = *(this + 1);
    *(v24 + 16) = v25;
    *(v24 + 24) = v25 + 32;
    v22 = __p;
    if (!__p)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  result = 0;
  v22 = __p;
  if (__p)
  {
LABEL_12:
    v30 = v22;
    v26 = result;
    operator delete(v22);
    return v26;
  }

  return result;
}

mlir::Operation *mlir::mps::anonymous namespace::StitchedRegion::recurseUses(mlir::Operation *this, mlir::Operation *a2, mlir::Operation **a3)
{
  v3 = *(*(this + 6) + 16);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::SpaceToDepth2DOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::mps::DepthToSpace2DOp,void>::id)
  {
    return this;
  }

  v5 = this;
  v6 = *(this - 2);
  if (!v6)
  {
    return this;
  }

  LOBYTE(v8) = 1;
  v9 = *(this - 2);
  do
  {
    v10 = v9[2];
    v12 = *(v10 + 2);
    if (!v12)
    {
      ParentOp = 0;
      this = *(v5 + 2);
      if (!this)
      {
        goto LABEL_7;
      }

LABEL_12:
      this = mlir::Block::getParentOp(this);
      goto LABEL_7;
    }

    ParentOp = mlir::Block::getParentOp(v12);
    this = *(v5 + 2);
    if (this)
    {
      goto LABEL_12;
    }

LABEL_7:
    v8 = (ParentOp == this) & v8 & isStitchable;
    v9 = *v9;
  }

  while (v9);
  if (!v8)
  {
    return this;
  }

  v14 = *(v6 + 16);
  if (!this)
  {
    v16 = 0;
    v17 = *v6;
    if (*v6)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v20 = v14;
  v16 = v20;
  v17 = *v6;
  if (!*v6)
  {
LABEL_21:
    v18 = 1;
    goto LABEL_22;
  }

LABEL_16:
  v18 = 1;
  do
  {
    v19 = v17[2];
    if (this)
    {
      v20 = v19;
      v18 &= v20 == v16;
    }

    v17 = *v17;
  }

  while (v17);
LABEL_22:
  if (v18)
  {
    if (v16)
    {
      *a2 = v16;
    }
  }

  return this;
}

BOOL mlir::emitOptionalError<char const(&)[66]>(mlir *a1, Location a2, const char *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = a3;
    v21 = strlen(a3);
    v4 = &v19;
    v5 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v18 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v5 = v23;
        v4 = (v23 + v18);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = &v19;
        v5 = v23;
      }
    }

    v6 = &v5[24 * v24];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v24;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v30;
      v11 = __p;
      if (v30 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v30 = v9;
      operator delete(v11);
    }

    v12 = v27;
    if (v27)
    {
      v13 = v28;
      v14 = v27;
      if (v28 != v27)
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
        v14 = v27;
      }

      v28 = v12;
      operator delete(v14);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v8;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::ReturnStitchedOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::ReturnStitchedOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::memref::DeallocOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mpsx::StitchedOp,mlir::UnrankedTensorType &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::StitchedOp,mlir::UnrankedTensorType &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mpsx::StitchedOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
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

uint64_t mlir::mps::anonymous namespace::StitchedRegion::recursePrefixes(uint64_t a1, uint64_t a2, char **a3, mlir::Operation *a4, uint64_t a5)
{
  v11 = a2 - 16;
  v10 = *(a2 - 16);
  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = 0;
  do
  {
    ParentOp = *(v10[2] + 16);
    if (ParentOp)
    {
      ParentOp = mlir::Block::getParentOp(ParentOp);
    }

    if (ParentOp != *(a1 + 192))
    {
      ++v12;
    }

    v10 = *v10;
  }

  while (v10);
  if (!v12)
  {
LABEL_11:
    if (a4)
    {
      mlir::Operation::moveBefore(a2, a4);
    }

    else
    {
      mlir::Operation::moveBefore(a2, *(a1 + 8), (*(a1 + 8) + 32));
    }

    DefiningOp = a2;
    if ((*(a2 + 46) & 0x80) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_29;
  }

  v14 = *a1;
  if (a4)
  {
    v15 = *(a4 + 2);
    v16 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a4, a2);
  }

  else
  {
    v15 = *(a1 + 8);
    v16 = (v15 + 4);
  }

  v14[2] = v15;
  v14[3] = v16;
  v18 = *(a1 + 120);
  v19 = *(a1 + 136);
  if (v19)
  {
    v20 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
    v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v20 >> 47) ^ v20);
    v22 = (v19 - 1) & (-348639895 * ((v21 >> 47) ^ v21));
    v23 = *(v18 + 16 * v22);
    if (v23 == v11)
    {
LABEL_19:
      if (v22 != v19)
      {
        v81[0] = *(v18 + 16 * v22 + 8);
        if (v81[0])
        {
          DefiningOp = mlir::Value::getDefiningOp(v81);
          if ((*(DefiningOp + 46) & 0x80) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
      v24 = 1;
      while (v23 != -4096)
      {
        v25 = v22 + v24++;
        v22 = v25 & (v19 - 1);
        v23 = *(v18 + 16 * v22);
        if (v23 == v11)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v26 = mlir::OpBuilder::clone(*a1, a2, (a1 + 120));
  DefiningOp = v26;
  v27 = *(a2 - 16);
  if (v27)
  {
    if ((*(DefiningOp + 46) & 0x80) == 0)
    {
      goto LABEL_63;
    }
  }

  else if ((*(v26 + 46) & 0x80) == 0)
  {
LABEL_63:
    v52 = *(a2 + 16);
    if (v52)
    {
      mlir::Block::getParentOp(v52);
    }

    v53 = 0;
    v81[0] = 0;
    v81[1] = 0;
    v82 = 0;
    v54 = *a3;
    v55 = a3[1];
    v83 = v81;
    if ((v55 - v54) >> 3 < 129)
    {
LABEL_69:
    }

    else
    {
      v56 = MEMORY[0x1E69E5398];
      v57 = (v55 - v54) >> 3;
      while (1)
      {
        v58 = operator new(8 * v57, v56);
        if (v58)
        {
          break;
        }

        v53 = v57 >> 1;
        v59 = v57 > 1;
        v57 >>= 1;
        if (!v59)
        {
          goto LABEL_69;
        }
      }

      v60 = v58;
      operator delete(v60);
    }

    v62 = *a3;
    for (i = a3[1]; ; i = a3[1])
    {
      if (i == v62)
      {
LABEL_98:
        mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(v81);
      }

      v80 = *(i - 1);
      a3[1] = i - 8;
      v63 = mlir::Value::getDefiningOp(&v80);
      if (!v63)
      {
        break;
      }

      v65 = v63;
      v66 = *(v63 + 16);
      if (v66)
      {
        v66 = mlir::Block::getParentOp(v66);
      }

      if (v66 != *(a1 + 192))
      {
        if (v65 != a5 && !isStitchable)
        {
          break;
        }

        if ((*(v65 + 46) & 0x80) != 0 && (v69 = *(v65 + 68), v69))
        {
          v70 = 0;
          v71 = *(a1 + 192);
          v72 = (*(v65 + 72) + 24);
          do
          {
            v83 = *v72;
            v73 = mlir::Value::getDefiningOp(&v83);
            if (!v73)
            {
              goto LABEL_85;
            }

            v74 = *(v73 + 16);
            if (v74)
            {
              v74 = mlir::Block::getParentOp(v74);
            }

            if (v74 != v71)
            {
LABEL_85:
              ++v70;
            }

            v72 += 4;
            --v69;
          }

          while (v69);
        }

        else
        {
          v70 = 0;
        }

        if (v70 <= 1)
        {
          v75 = 1;
        }

        else
        {
          v75 = v70;
        }

        v76 = v75 + *(a1 + 208) - 1;
        if (v76 <= 21)
        {
          *(a1 + 208) = v76;
          if ((v77 & 1) == 0)
          {
            goto LABEL_98;
          }
        }
      }

LABEL_72:
      v62 = *a3;
    }

    std::__hash_table<mlir::Value,std::hash<mlir::Value>,std::equal_to<mlir::Value>,std::allocator<mlir::Value>>::__emplace_unique_key_args<mlir::Value,mlir::Value const&>(a1 + 48, &v80, &v80);
    if (v68)
    {
      std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a1 + 88, &v80);
    }

    goto LABEL_72;
  }

LABEL_29:
  v28 = *(DefiningOp + 68);
  if (!v28)
  {
    goto LABEL_63;
  }

  v29 = 0;
  v30 = *(DefiningOp + 72);
  while (DefiningOp != a5)
  {
LABEL_36:
    v32 = v30 + 32 * v29;
    v35 = *(v32 + 24);
    v34 = (v32 + 24);
    v33 = v35;
    v36 = *(a1 + 136);
    if (!v36)
    {
      goto LABEL_44;
    }

    v37 = *(a1 + 120);
    v38 = 0x9DDFEA08EB382D69 * ((8 * v33 - 0xAE502812AA7333) ^ HIDWORD(v33));
    v39 = 0x9DDFEA08EB382D69 * (HIDWORD(v33) ^ (v38 >> 47) ^ v38);
    v40 = (-348639895 * ((v39 >> 47) ^ v39)) & (v36 - 1);
    v41 = *(v37 + 16 * v40);
    if (v41 != v33)
    {
      v50 = 1;
      while (v41 != -4096)
      {
        v51 = v40 + v50++;
        v40 = v51 & (v36 - 1);
        v41 = *(v37 + 16 * v40);
        if (v41 == v33)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_44;
    }

LABEL_38:
    if (v40 == v36)
    {
      goto LABEL_44;
    }

    v42 = *(v37 + 16 * v40 + 8);
    if (!v42)
    {
      goto LABEL_44;
    }

    v43 = *(DefiningOp + 16);
    if (v43)
    {
      v43 = mlir::Block::getParentOp(v43);
    }

    if (v43 != *(a1 + 192))
    {
      v33 = *v34;
LABEL_44:
      v81[0] = v33;
      if (mlir::Value::getDefiningOp(v81))
      {
        v44 = *a3;
        v45 = a3[1];
        if (*a3 != v45)
        {
          while (*v44 != *v34)
          {
            v44 += 8;
            if (v44 == v45)
            {
              goto LABEL_31;
            }
          }
        }

        if (v44 == v45)
        {
LABEL_31:
          v81[0] = *v34;
          std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a3, v81);
        }
      }

      goto LABEL_32;
    }

    v46 = (*(DefiningOp + 72) + 32 * v29);
    v47 = v46[1];
    if (v47)
    {
      v48 = *v46;
      *v47 = *v46;
      if (v48)
      {
        *(v48 + 8) = v46[1];
      }
    }

    v46[3] = v42;
    v46[1] = v42;
    v49 = *v42;
    *v46 = *v42;
    if (v49)
    {
      *(v49 + 8) = v46;
    }

    *v42 = v46;
LABEL_32:
    if (++v29 == v28)
    {
      goto LABEL_63;
    }
  }

  v31 = (***(a1 + 200))(*(a1 + 200), a5, v29);
  if ((v31 & 0x100) != 0)
  {
    if (!v31)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  return 0;
}

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::mps::anonymous namespace::StitchedRegion::recursePrefixes(mlir::Operation *,std::vector<mlir::Value> &,mlir::Operation *,mlir::Operation *)::$_0 &,std::__wrap_iter<mlir::Value*>>(char *a1, char *a2, mlir::DominanceInfo **a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = a1;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v62 = *a1;
      v63 = v9;
      DefiningOp = mlir::Value::getDefiningOp(&v63);
      v11 = mlir::Value::getDefiningOp(&v62);
      if (mlir::DominanceInfo::properlyDominatesImpl(*a3, DefiningOp, v11, 1))
      {
        v13 = v8->n128_u64[0];
        v8->n128_u64[0] = *(a2 - 1);
        *(a2 - 1) = v13;
      }
    }

    else if (a4 > 128)
    {
      v26 = a5;
      v27 = a4 >> 1;
      v28 = &a1[8 * (a4 >> 1)];
      v29 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v32 = &v26[8 * v27];
        v33 = v32;
        v34 = v8;
        v35 = &v26[8 * a4];
        do
        {
          if (v33 == v35)
          {
            if (v26 == v32)
            {
              return v12.n128_f64[0];
            }

            v52 = v32 - v26 - 8;
            if (v52 >= 0x38)
            {
              if ((v8 - v26) >= 0x20)
              {
                v54 = v34 + 1;
                v55 = (v52 >> 3) + 1;
                v56 = 8 * (v55 & 0x3FFFFFFFFFFFFFFCLL);
                v53 = &v26[v56];
                v34 = (v34 + v56);
                v57 = (v26 + 16);
                v58 = v55 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v12 = v57[-1];
                  v59 = *v57;
                  v54[-1] = v12;
                  *v54 = v59;
                  v54 += 2;
                  v57 += 2;
                  v58 -= 4;
                }

                while (v58);
                if (v55 == (v55 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v12.n128_f64[0];
                }
              }

              else
              {
                v53 = v26;
              }
            }

            else
            {
              v53 = v26;
            }

            do
            {
              v60 = *v53;
              v53 += 8;
              v34->n128_u64[0] = v60;
              v34 = (v34 + 8);
            }

            while (v53 != v32);
            return v12.n128_f64[0];
          }

          v36 = v33;
          v37 = *v33;
          v62 = *v26;
          v63 = v37;
          v38 = mlir::Value::getDefiningOp(&v63);
          v39 = mlir::Value::getDefiningOp(&v62);
          v40 = mlir::DominanceInfo::properlyDominatesImpl(*a3, v38, v39, 1);
          if (v40)
          {
            v41 = v36;
          }

          else
          {
            v41 = v26;
          }

          if (v40)
          {
            v42 = 0;
          }

          else
          {
            v42 = 8;
          }

          v26 += v42;
          if (v40)
          {
            v43 = 1;
          }

          else
          {
            v43 = 0;
          }

          v33 = &v36[v43];
          v34->n128_u64[0] = *v41;
          v34 = (v34 + 8);
          v8 = (v8 + 8);
        }

        while (v26 != v32);
        if (v33 != v35)
        {
          v44 = v35 - v36 - v43 * 8 - 8;
          if (v44 <= 0x57)
          {
            goto LABEL_54;
          }

          if ((v8 - v36 - v43 * 8) < 0x20)
          {
            goto LABEL_54;
          }

          v45 = v34 + 1;
          v46 = (v44 >> 3) + 1;
          v47 = 8 * (v46 & 0x3FFFFFFFFFFFFFFCLL);
          v33 = (v33 + v47);
          v34 = (v34 + v47);
          v48 = &v36[v43 + 2];
          v49 = v46 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v12 = *(v48 - 1);
            v50 = *v48;
            v45[-1] = v12;
            *v45 = v50;
            v45 += 2;
            v48 += 4;
            v49 -= 4;
          }

          while (v49);
          if (v46 != (v46 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_54:
            do
            {
              v51 = *v33++;
              v34->n128_u64[0] = v51;
              v34 = (v34 + 8);
            }

            while (v33 != v35);
          }
        }
      }

      else
      {
      }
    }

    else if (a1 != a2)
    {
      v14 = a1 + 8;
      if (a1 + 8 != a2)
      {
        v15 = 0;
        v16 = a1;
        do
        {
          v18 = *v16;
          v16 = v14;
          v19 = *v14;
          v62 = v18;
          v63 = v19;
          v20 = mlir::Value::getDefiningOp(&v63);
          v21 = mlir::Value::getDefiningOp(&v62);
          if (mlir::DominanceInfo::properlyDominatesImpl(*a3, v20, v21, 1))
          {
            v22 = *v16;
            v23 = v15;
            do
            {
              *(&v8->n128_u64[1] + v23) = *(v8->n128_u64 + v23);
              if (!v23)
              {
                v17 = v8;
                goto LABEL_11;
              }

              v62 = *(&v8->n128_i64[-1] + v23);
              v63 = v22;
              v24 = mlir::Value::getDefiningOp(&v63);
              v25 = mlir::Value::getDefiningOp(&v62);
              v23 -= 8;
            }

            while ((mlir::DominanceInfo::properlyDominatesImpl(*a3, v24, v25, 1) & 1) != 0);
            v17 = &v8->n128_i8[v23 + 8];
LABEL_11:
            v17->n128_u64[0] = v22;
          }

          v14 = v16 + 8;
          v15 += 8;
        }

        while (v16 + 8 != a2);
      }
    }
  }

  return v12.n128_f64[0];
}

char *std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::mps::anonymous namespace::StitchedRegion::recursePrefixes(mlir::Operation *,std::vector<mlir::Value> &,mlir::Operation *,mlir::Operation *)::$_0 &,std::__wrap_iter<mlir::Value*>>(char *result, char *a2, mlir::DominanceInfo **a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v6 = result;
    if (a4 == 1)
    {
LABEL_9:
      *v5 = *v6;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v9 = a2 - 8;
      v60 = *result;
      v61 = v10;
      DefiningOp = mlir::Value::getDefiningOp(&v61);
      v12 = mlir::Value::getDefiningOp(&v60);
      result = mlir::DominanceInfo::properlyDominatesImpl(*a3, DefiningOp, v12, 1);
      if (result)
      {
        v13 = v9;
      }

      else
      {
        v13 = v6;
      }

      *v5++ = *v13;
      if (!result)
      {
        v6 = v9;
      }

      goto LABEL_9;
    }

    if (a4 > 8)
    {
      v28 = a4 >> 1;
      v29 = 8 * (a4 >> 1);
      v30 = &result[v29];
      v32 = v5;
      v33 = &v6[v29];
      do
      {
        if (v33 == a2)
        {
          if (v6 == v30)
          {
            return result;
          }

          v51 = v30 - v6 - 8;
          if (v51 >= 0x38)
          {
            if ((v32 - v6) >= 0x20)
            {
              v53 = v5 + 2;
              v54 = (v51 >> 3) + 1;
              v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
              v5 = (v5 + v55);
              v52 = &v6[v55];
              v56 = (v6 + 16);
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
              v52 = v6;
            }
          }

          else
          {
            v52 = v6;
          }

          do
          {
            v59 = *v52;
            v52 += 8;
            *v5++ = v59;
          }

          while (v52 != v30);
          return result;
        }

        v34 = v33;
        v35 = *v33;
        v60 = *v6;
        v61 = v35;
        v36 = mlir::Value::getDefiningOp(&v61);
        v37 = mlir::Value::getDefiningOp(&v60);
        result = mlir::DominanceInfo::properlyDominatesImpl(*a3, v36, v37, 1);
        if (result)
        {
          v38 = v34;
        }

        else
        {
          v38 = v6;
        }

        if (result)
        {
          v39 = 8;
        }

        else
        {
          v39 = 0;
        }

        v33 = &v34[v39];
        if (result)
        {
          v40 = 0;
        }

        else
        {
          v40 = 8;
        }

        v6 += v40;
        *v5++ = *v38;
        v32 += 8;
      }

      while (v6 != v30);
      if (v33 != a2)
      {
        v41 = a2 - v34 - v39 - 8;
        if (v41 < 0x58)
        {
          goto LABEL_53;
        }

        if ((v32 - v34 - v39) < 0x20)
        {
          goto LABEL_53;
        }

        v42 = 0;
        v43 = (v41 >> 3) + 1;
        v44 = v43 & 0x3FFFFFFFFFFFFFFCLL;
        v45 = &v5[v44];
        v33 += v44 * 8;
        v46 = &v34[v39 + 16];
        v47 = v43 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v48 = &v5[v42];
          v49 = *v46;
          *v48 = *(v46 - 1);
          *(v48 + 1) = v49;
          v46 += 2;
          v42 += 4;
          v47 -= 4;
        }

        while (v47);
        v5 = v45;
        if (v43 != (v43 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_53:
          do
          {
            v50 = *v33;
            v33 += 8;
            *v5++ = v50;
          }

          while (v33 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v14 = result + 8;
      *a5 = *result;
      if (result + 8 != a2)
      {
        v15 = 0;
        v16 = a5;
        do
        {
          v18 = v16;
          v19 = *v16++;
          v20 = *v14;
          v60 = v19;
          v61 = v20;
          v21 = mlir::Value::getDefiningOp(&v61);
          v22 = mlir::Value::getDefiningOp(&v60);
          result = mlir::DominanceInfo::properlyDominatesImpl(*a3, v21, v22, 1);
          v23 = v16;
          if (result)
          {
            v18[1] = *v18;
            v23 = v5;
            if (v18 != v5)
            {
              v24 = v15;
              while (1)
              {
                v23 = (v5 + v24);
                v25 = *v14;
                v60 = *(v5 + v24 - 8);
                v61 = v25;
                v26 = mlir::Value::getDefiningOp(&v61);
                v27 = mlir::Value::getDefiningOp(&v60);
                result = mlir::DominanceInfo::properlyDominatesImpl(*a3, v26, v27, 1);
                if (!result)
                {
                  break;
                }

                *v23 = *(v23 - 1);
                v24 -= 8;
                if (!v24)
                {
                  v23 = v5;
                  break;
                }
              }
            }
          }

          v17 = *v14;
          v14 += 8;
          *v23 = v17;
          v15 += 8;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,mlir::mps::anonymous namespace::StitchedRegion::recursePrefixes(mlir::Operation *,std::vector<mlir::Value> &,mlir::Operation *,mlir::Operation *)::$_0 &,std::__wrap_iter<mlir::Value*>>(__n128 *a1, __n128 *a2, char *a3, mlir::DominanceInfo **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v130 = a6;
  if (!a6)
  {
    return result;
  }

  while (v130 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v15 = 0;
    v16 = -a5;
    while (1)
    {
      v17 = a2->n128_u64[0];
      v131 = a1->n128_i64[v15 / 8];
      v132 = v17;
      DefiningOp = mlir::Value::getDefiningOp(&v132);
      v19 = mlir::Value::getDefiningOp(&v131);
      if (mlir::DominanceInfo::properlyDominatesImpl(*a4, DefiningOp, v19, 1))
      {
        break;
      }

      v15 += 8;
      if (__CFADD__(v16++, 1))
      {
        return result;
      }
    }

    v22 = -v16;
    v23 = (a1 + v15);
    v24 = v130;
    v127 = a1;
    v128 = a4;
    v129 = a8;
    v126 = (a1 + v15);
    if (-v16 >= v130)
    {
      if (v16 == -1)
      {
        v106 = a1->n128_u64[v15 / 8];
        a1->n128_u64[v15 / 8] = a2->n128_u64[0];
        a2->n128_u64[0] = v106;
        return result;
      }

      v37 = v22 / 2;
      v28 = (a1 + 8 * (v22 / 2) + v15);
      v26 = a2;
      if (a2 != a3)
      {
        v123 = v22 / 2;
        v125 = a7;
        v38 = *v128;
        v39 = (a3 - a2) >> 3;
        v26 = a2;
        do
        {
          v40 = &v26->n128_u64[v39 >> 1];
          v42 = *v40;
          v41 = (v40 + 1);
          v131 = v28->n128_u64[0];
          v132 = v42;
          v43 = mlir::Value::getDefiningOp(&v132);
          v44 = mlir::Value::getDefiningOp(&v131);
          v45 = mlir::DominanceInfo::properlyDominatesImpl(v38, v43, v44, 1);
          if (v45)
          {
            v39 += ~(v39 >> 1);
          }

          else
          {
            v39 >>= 1;
          }

          if (v45)
          {
            v26 = v41;
          }
        }

        while (v39);
        a7 = v125;
        v24 = v130;
        v37 = v123;
      }

      v25 = (v26 - a2) >> 3;
    }

    else
    {
      v25 = v130 / 2;
      v26 = (a2 + 8 * (v130 / 2));
      v27 = a2 - a1;
      v28 = a2;
      v29 = v27 - v15;
      if (v29)
      {
        v124 = a3;
        v30 = v29 >> 3;
        v28 = v23;
        do
        {
          v31 = &v28->n128_i64[v30 >> 1];
          v32 = v26->n128_u64[0];
          v34 = *v31;
          v33 = (v31 + 1);
          v131 = v34;
          v132 = v32;
          v35 = mlir::Value::getDefiningOp(&v132);
          v36 = mlir::Value::getDefiningOp(&v131);
          if (mlir::DominanceInfo::properlyDominatesImpl(*v128, v35, v36, 1))
          {
            v30 >>= 1;
          }

          else
          {
            v28 = v33;
            v30 += ~(v30 >> 1);
          }
        }

        while (v30);
        a3 = v124;
        v24 = v130;
        v25 = v130 / 2;
      }

      v37 = (v28 - v127 - v15) >> 3;
    }

    v46 = v26;
    v47 = a2 - v28;
    if (a2 != v28)
    {
      v46 = v28;
      if (a2 != v26)
      {
        if (&v28->n128_i8[8] == a2)
        {
          v48 = v28->n128_u64[0];
          v49 = v26 - a2;
          v50 = a2;
          v51 = v26 - a2;
          v52 = v37;
          v53 = v25;
          memmove(v28, v50, v51);
          v25 = v53;
          v37 = v52;
          v24 = v130;
          v46 = (v28 + v49);
          v46->n128_u64[0] = v48;
        }

        else if (&a2->n128_i8[8] == v26)
        {
          v54 = v26[-1].n128_i64[1];
          v46 = &v28->n128_i8[8];
          if (&v26[-1].n128_i8[8] != v28)
          {
            v55 = v37;
            v56 = v25;
            memmove(&v28->n128_i8[8], v28, &v26[-1].n128_i8[8] - v28);
            v25 = v56;
            v37 = v55;
            v24 = v130;
          }

          v28->n128_u64[0] = v54;
        }

        else
        {
          v57 = v47 >> 3;
          v58 = (v26 - a2) >> 3;
          if (v47 >> 3 == v58)
          {
            v59 = &v28->n128_i8[8];
            v60 = &a2->n128_i8[8];
            do
            {
              v61 = v59[-1].n128_i64[1];
              v59[-1].n128_u64[1] = v60[-1].n128_u64[1];
              v60[-1].n128_u64[1] = v61;
              if (v59 == a2)
              {
                break;
              }

              v59 = (v59 + 8);
              v62 = v60 == v26;
              v60 = (v60 + 8);
            }

            while (!v62);
            v46 = a2;
          }

          else
          {
            v63 = v47 >> 3;
            do
            {
              v64 = v63;
              v63 = v58;
              v58 = v64 % v58;
            }

            while (v58);
            v65 = (v28 + 8 * v63);
            do
            {
              v67 = v65[-1].n128_u64[1];
              v65 = (v65 - 8);
              v66 = v67;
              v68 = (v65 + v47);
              v69 = v65;
              do
              {
                v70 = v68;
                v69->n128_u64[0] = v68->n128_u64[0];
                v71 = (v26 - v68) >> 3;
                v72 = __OFSUB__(v57, v71);
                v74 = v57 - v71;
                v73 = (v74 < 0) ^ v72;
                v68 = (v28 + 8 * v74);
                if (v73)
                {
                  v68 = (v70 + 8 * v57);
                }

                v69 = v70;
              }

              while (v68 != v65);
              v70->n128_u64[0] = v66;
            }

            while (v65 != v28);
            v46 = (v28 + v26 - a2);
          }
        }
      }
    }

    a5 = -(v37 + v16);
    v75 = v24 - v25;
    if (v37 + v25 >= v24 - (v37 + v25) - v16)
    {
      v76 = v26;
      v77 = a3;
      a4 = v128;
      v78 = v37;
      v79 = v25;
      a2 = v28;
      v75 = v79;
      a5 = v78;
      a3 = v46;
      a1 = v126;
    }

    else
    {
      a1 = v46;
      a2 = v26;
      a4 = v128;
    }

    v130 = v75;
    a8 = v129;
    if (!v75)
    {
      return result;
    }
  }

  if (a5 <= v130)
  {
    if (a2 != a1)
    {
      v89 = a2 - a1 - 8;
      v90 = a7;
      v91 = a1;
      if (v89 < 0x18)
      {
        goto LABEL_112;
      }

      v90 = a7;
      v91 = a1;
      if ((a7 - a1) <= 0x1F)
      {
        goto LABEL_112;
      }

      v92 = (v89 >> 3) + 1;
      v93 = 8 * (v92 & 0x3FFFFFFFFFFFFFFCLL);
      v90 = &a7[v93];
      v91 = (a1 + v93);
      v94 = a1 + 1;
      v95 = (a7 + 16);
      v96 = v92 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v97 = *v94;
        v95[-1] = v94[-1];
        *v95 = v97;
        v94 += 2;
        v95 += 2;
        v96 -= 4;
      }

      while (v96);
      if (v92 != (v92 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_112:
        do
        {
          v98 = v91->n128_u64[0];
          v91 = (v91 + 8);
          *v90 = v98;
          v90 += 8;
        }

        while (v91 != a2);
      }

      while (a2 != a3)
      {
        v99 = a2->n128_u64[0];
        v131 = *a7;
        v132 = v99;
        v100 = mlir::Value::getDefiningOp(&v132);
        v101 = mlir::Value::getDefiningOp(&v131);
        v102 = mlir::DominanceInfo::properlyDominatesImpl(*a4, v100, v101, 1);
        if (v102)
        {
          v103 = a2;
        }

        else
        {
          v103 = a7;
        }

        if (v102)
        {
          v104 = 8;
        }

        else
        {
          v104 = 0;
        }

        a2 = (a2 + v104);
        if (v102)
        {
          v105 = 0;
        }

        else
        {
          v105 = 8;
        }

        a7 += v105;
        a1->n128_u64[0] = *v103;
        a1 = (a1 + 8);
        if (a7 == v90)
        {
          return result;
        }
      }

      memmove(a1, a7, v90 - a7);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v80 = a3 - a2 - 8;
  if (v80 < 0x18)
  {
    v81 = a7;
    v82 = a2;
  }

  else
  {
    v81 = a7;
    v82 = a2;
    if ((a7 - a2) > 0x1F)
    {
      v83 = (v80 >> 3) + 1;
      v84 = 8 * (v83 & 0x3FFFFFFFFFFFFFFCLL);
      v81 = &a7[v84];
      v82 = (a2 + v84);
      v85 = a2 + 1;
      v86 = (a7 + 16);
      v87 = v83 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v85[-1];
        v88 = *v85;
        v86[-1] = result;
        *v86 = v88;
        v85 += 2;
        v86 += 2;
        v87 -= 4;
      }

      while (v87);
      if (v83 == (v83 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_89;
      }
    }
  }

  do
  {
    v107 = v82->n128_u64[0];
    v82 = (v82 + 8);
    *v81 = v107;
    v81 += 8;
  }

  while (v82 != a3);
LABEL_89:
  v108 = a3;
  while (a2 != a1)
  {
    v109 = *(v81 - 1);
    v131 = a2[-1].n128_i64[1];
    v132 = v109;
    v110 = mlir::Value::getDefiningOp(&v132);
    v111 = mlir::Value::getDefiningOp(&v131);
    v112 = mlir::DominanceInfo::properlyDominatesImpl(*a4, v110, v111, 1);
    if (v112)
    {
      v113 = a2;
    }

    else
    {
      v113 = v81;
    }

    if (v112)
    {
      a2 = (a2 - 8);
    }

    else
    {
      v81 -= 8;
    }

    *(a3 - 1) = *(v113 - 1);
    a3 -= 8;
    v108 -= 8;
    if (v81 == a7)
    {
      return result;
    }
  }

  if (v81 != a7)
  {
    v114 = v81 - a7 - 8;
    if (v114 < 0x48 || (v81 - v108) < 0x20)
    {
      v115 = v81;
LABEL_103:
      v116 = a3 - 8;
      do
      {
        v117 = *(v115 - 1);
        v115 -= 8;
        *v116 = v117;
        v116 -= 8;
      }

      while (v115 != a7);
      return result;
    }

    v118 = (a3 - 16);
    v119 = (v114 >> 3) + 1;
    v120 = 8 * (v119 & 0x3FFFFFFFFFFFFFFCLL);
    v115 = &v81[-v120];
    a3 -= v120;
    v121 = (v81 - 16);
    v122 = v119 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v121;
      v118[-1] = v121[-1];
      *v118 = result;
      v118 -= 2;
      v121 -= 2;
      v122 -= 4;
    }

    while (v122);
    if (v119 != (v119 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_103;
    }
  }

  return result;
}

void *std::__hash_table<mlir::Value,std::hash<mlir::Value>,std::equal_to<mlir::Value>,std::allocator<mlir::Value>>::__emplace_unique_key_args<mlir::Value,mlir::Value const&>(uint64_t a1, void *a2, void *a3)
{
  v6 = HIDWORD(*a2);
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (result = *v11; result; result = *result)
      {
        v13 = result[1];
        if (v13 == v8)
        {
          if (result[2] == *a2)
          {
            return result;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  result = operator new(0x18uLL);
  *result = 0;
  result[1] = v8;
  result[2] = *a3;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      prime = v18;
    }

    else
    {
      prime = v17;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      v20 = result;
      prime = std::__next_prime(prime);
      result = v20;
      v9 = *(a1 + 8);
    }

    if (prime > v9)
    {
      goto LABEL_30;
    }

    if (prime < v9)
    {
      v22 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v9 < 3 || (v23 = vcnt_s8(v9), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
      {
        v25 = result;
        v26 = prime;
        v27 = std::__next_prime(v22);
        prime = v26;
        v22 = v27;
        result = v25;
      }

      else
      {
        v24 = 1 << -__clz(v22 - 1);
        if (v22 >= 2)
        {
          v22 = v24;
        }
      }

      if (prime <= v22)
      {
        prime = v22;
      }

      if (prime < v9)
      {
LABEL_30:
        v21 = result;
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
        result = v21;
      }
    }

    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v28 = *a1;
  v29 = *(*a1 + 8 * v3);
  if (v29)
  {
    *result = *v29;
LABEL_55:
    *v29 = result;
    goto LABEL_56;
  }

  *result = *(a1 + 16);
  *(a1 + 16) = result;
  *(v28 + 8 * v3) = a1 + 16;
  if (*result)
  {
    v30 = *(*result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v30 >= v9)
      {
        v30 %= v9;
      }
    }

    else
    {
      v30 &= v9 - 1;
    }

    v29 = (*a1 + 8 * v30);
    goto LABEL_55;
  }

LABEL_56:
  ++*(a1 + 24);
  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mps::anonymous namespace::StitchedRegion::get(mlir::OpBuilder &,mlir::Operation *,mlir::mps::BaseFusableCoreOps *,BOOL)::$_0>(_BYTE **a1, mlir::mps::_anonymous_namespace_ *this, mlir::Operation *a3)
{
  if ((result & 1) == 0)
  {
    **a1 = 1;
  }

  return result;
}

uint64_t mlir::mps::StitchingPass::StitchingPass(uint64_t result, uint64_t a2)
{
  *(result + 8) = &mlir::mps::MPSStitchingBase<mlir::mps::StitchingPass>::resolveTypeID(void)::id;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 120) = 0;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 128) = 0u;
  *(result + 176) = 0;
  *(result + 184) = result + 200;
  *(result + 192) = 0x400000000;
  *(result + 232) = result + 248;
  *(result + 240) = 0x400000000;
  *(result + 280) = 0;
  *(result + 288) = 0;
  *(result + 296) = 0x1000000000;
  *(result + 304) = 0u;
  *(result + 320) = 0u;
  *(result + 336) = 0;
  *result = &unk_1F5B00510;
  *(result + 344) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (!*(result + 344))
  {
    v2 = result;
    v3 = operator new(0x20uLL);
    result = v2;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = &unk_1F5B00580;
    v3[3] = &unk_1F5B005B8;
    v4 = *(v2 + 352);
    *(v2 + 344) = v3 + 3;
    *(v2 + 352) = v3;
    if (v4)
    {
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        return v2;
      }
    }
  }

  return result;
}

void std::__shared_ptr_emplace<mlir::mps::DefaultFusableCoreOps>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B00580;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t mlir::mps::DefaultFusableCoreOps::isCoreOperandStitchable(mlir::mps::DefaultFusableCoreOps *this, mlir::Operation *a2, int a3)
{
  v3 = *(*(a2 + 6) + 16);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id || a3 < 1)
  {
    return 257;
  }

  else
  {
    return 256;
  }
}

uint64_t mlir::mps::anonymous namespace::TypeInferencePass::inferTypes(mlir::mps::_anonymous_namespace_::TypeInferencePass *this, mlir::Operation *a2)
{
  v112[4] = *MEMORY[0x1E69E9840];
  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  }

  if ((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v95 = 0uLL;
    if ((*(this + 46) & 0x80) != 0)
    {
      v3 = *(this + 9);
      v4 = *(this + 17);
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    *&v111 = v3;
    *(&v111 + 1) = v4;
    mlir::OperandRange::getTypes(&v111, &v98);
    v5 = *(&v98 + 1);
    v6 = v100;
    if (*(&v98 + 1) != v100)
    {
      v7 = v98;
      do
      {
        v20 = (*(*(v7 + 32 * v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v20)
        {
          v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        else
        {
          v21 = 0;
        }

        *&v111 = v20;
        *(&v111 + 1) = v21;
        if (mlir::CallOpInterface::getArgOperands(&v111))
        {
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v111);
          if (!v23)
          {
LABEL_32:
            v95 = v111;
            break;
          }

          v24 = 8 * v23;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_32;
            }
          }
        }

        if (!v95 || (mlir::CallOpInterface::getArgOperands(&v95) & 1) == 0 && mlir::CallOpInterface::getArgOperands(&v111))
        {
          v95 = v111;
        }

        v5 = v5 + 1;
      }

      while (v5 != v6);
    }

    if (!mlir::CallOpInterface::getArgOperands(&v95))
    {
      goto LABEL_60;
    }

    if (mlir::CallOpInterface::getArgOperands(&v95))
    {
      v25 = mlir::CallableOpInterface::getArgAttrsAttr(&v95);
      if (!v26)
      {
        goto LABEL_60;
      }

      v27 = 8 * v26;
      while (*v25 != 0x8000000000000000)
      {
        ++v25;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_60;
        }
      }
    }

    mlir::CallableOpInterface::getArgAttrsAttr(&v95);
    v39 = v38;
    v40 = mlir::CallableOpInterface::getArgAttrsAttr(&v95);
    v42 = v41;
    *&v111 = v112;
    *(&v111 + 1) = 0x400000000;
    if (v39)
    {
    }

    if ((*(this + 46) & 0x80) != 0)
    {
      v43 = *(this + 9);
      v44 = *(this + 17);
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *&v98 = v43;
    *(&v98 + 1) = v44;
    mlir::OperandRange::getTypes(&v98, &v108);
    v45 = v109;
    v46 = v110;
    if (v109 == v110)
    {
LABEL_54:
      v47 = v111;
      v48 = DWORD2(v111);
      isSplat = mlir::ElementsAttr::isSplat(&v95);
      v50 = mlir::RankedTensorType::get(v47, v48, isSplat, 0);
      v51 = v50;
      if (v50)
      {
        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v50 + 8);
      }

      *&v95 = v51;
      *(&v95 + 1) = v50;
      v52 = 1;
      goto LABEL_57;
    }

    v59 = v108;
    v93 = vnegq_f64(0);
    while (1)
    {
      v60 = (*(*(v59 + 32 * v45 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v60)
      {
        v61 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
      }

      else
      {
        v61 = 0;
      }

      v94[0] = v60;
      v94[1] = v61;
      if (mlir::CallOpInterface::getArgOperands(v94))
      {
        v62 = mlir::CallableOpInterface::getArgAttrsAttr(v94);
        if (v42 != v63)
        {
          v96[0] = "input shapes are incompatible";
          v97 = 259;
          mlir::Operation::emitOpError(this, v96, &v98);
          v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
          if (v98)
          {
            mlir::InFlightDiagnostic::report(&v98);
          }

          if (v107 == 1)
          {
            if (v106 != &v107)
            {
              free(v106);
            }

            v85 = __p;
            if (__p)
            {
              v86 = v105;
              v87 = __p;
              if (v105 != __p)
              {
                do
                {
                  v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
                }

                while (v86 != v85);
                v87 = __p;
              }

              v105 = v85;
              operator delete(v87);
            }

            v88 = v102;
            if (v102)
            {
              v89 = v103;
              v90 = v102;
              if (v103 != v102)
              {
                do
                {
                  v92 = *--v89;
                  v91 = v92;
                  *v89 = 0;
                  if (v92)
                  {
                    operator delete[](v91);
                  }
                }

                while (v89 != v88);
                v90 = v102;
              }

              v103 = v88;
              operator delete(v90);
            }

            if (v100 != &v101)
            {
              free(v100);
            }
          }

          v52 = 0;
LABEL_57:
          if (v111 != v112)
          {
            free(v111);
          }

          if (v52)
          {
LABEL_60:
            v53 = *(this + 9);
            if (v53)
            {
              v54 = this - 16;
            }

            else
            {
              v54 = 0;
            }

            if (v53)
            {
              for (i = 0; i != v53; ++i)
              {
                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v54, i);
                *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | v95;
              }
            }

            return 1;
          }

          return v51;
        }

        if (v39)
        {
          v64 = v111;
          if (v39 <= 3)
          {
            v65 = 0;
LABEL_80:
            v66 = v39 - v65;
            v67 = 8 * v65;
            v68 = (v40 + 8 * v65);
            v69 = (v62 + v67);
            v70 = (v64 + v67);
            do
            {
              v72 = *v68++;
              v71 = v72;
              v74 = *v69++;
              v73 = v74;
              if (v74 != 0x8000000000000000 && v71 == 0x8000000000000000)
              {
                v71 = v73;
              }

              *v70++ = v71;
              --v66;
            }

            while (v66);
            goto LABEL_71;
          }

          v65 = 0;
          if ((v111 - v40) < 0x20)
          {
            goto LABEL_80;
          }

          if ((v111 - v62) < 0x20)
          {
            goto LABEL_80;
          }

          v76 = (v62 + 16);
          v77 = (v111 + 16);
          v78 = v39 & 0xFFFFFFFFFFFFFFFCLL;
          v79 = (v40 + 16);
          do
          {
            v80 = vbslq_s8(vornq_s8(vceqq_s64(*v76, v93), vceqq_s64(*v79, v93)), *v79, *v76);
            v77[-1] = vbslq_s8(vornq_s8(vceqq_s64(v76[-1], v93), vceqq_s64(v79[-1], v93)), v79[-1], v76[-1]);
            *v77 = v80;
            v79 += 2;
            v76 += 2;
            v77 += 2;
            v78 -= 4;
          }

          while (v78);
          v65 = v39 & 0xFFFFFFFFFFFFFFFCLL;
          if (v39 != (v39 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_80;
          }
        }
      }

LABEL_71:
      if (++v45 == v46)
      {
        goto LABEL_54;
      }
    }
  }

  if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v8 = this;
  }

  else
  {
    v8 = 0;
  }

  v96[0] = v8;
  if (v8)
  {
    v9 = *(v8 + 9);
    v10 = v8 - 16;
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
    *&v111 = mlir::mps::ConstantOp::getAsAttribute(v96);
    *(&v111 + 1) = v13;
    *&v98 = mlir::CallOpInterface::getArgOperands(&v111);
    *(&v98 + 1) = v14;
    v15 = mlir::CallableOpInterface::getArgAttrsAttr(&v98);
    v17 = v16;
    v18 = (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v18)
    {
      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    *&v111 = v18;
    *(&v111 + 1) = v19;
    *&v98 = v15;
    *(&v98 + 1) = v17;
    v51 = 1;
    v99 = 1;
    v57 = mlir::ElementsAttr::isSplat(&v111);
    *(v12 + 8) = *(v12 + 8) & 7 | mlir::ShapedType::cloneWith(&v111, &v98, v57);
    return v51;
  }

  if (mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor(this))
  {
    *&v111 = this;
    *(&v111 + 1) = mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor(this);
    if (this)
    {
      *&v98 = &v99;
      *(&v98 + 1) = 0x200000000;
      Context = mlir::Attribute::getContext((this + 24));
      v30 = *(this + 3);
      if ((*(this + 46) & 0x80) != 0)
      {
        v31 = *(this + 9);
        v32 = *(this + 17);
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      mlir::ValueRange::ValueRange(v96, v31, v32);
      AttrDictionary = mlir::Operation::getAttrDictionary(this);
      v34 = *(this + 11);
      if (HIBYTE(*(this + 11)))
      {
        v35 = this + 16 * ((v34 >> 23) & 1) + 64;
      }

      else
      {
        v35 = 0;
      }

      v36 = v34 & 0x7FFFFF;
      if ((v34 & 0x7FFFFF) != 0)
      {
        v37 = ((this + 16 * ((v34 >> 23) & 1) + ((v34 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
      }

      else
      {
        v37 = 0;
        v36 = 0;
      }

      mlir::ValueRange::ValueRange(&v108, v37, v36);
      v51 = mlir::InferTypeOpInterface::inferReturnTypes(&v111, Context, v30, 1, v96[0], v96[1], AttrDictionary, v35);
      if (v51)
      {
        v81 = v98;
        if (*(this + 9))
        {
          *(this - 1) = *(this - 1) & 7 | *v98;
          if (*(this + 9) >= 2u)
          {
            *(this - 3) = *(this - 3) & 7 | *(v81 + 1);
            if (*(this + 9) >= 3u)
            {
              *(this - 5) = *(this - 5) & 7 | *(v81 + 2);
              if (*(this + 9) >= 4u)
              {
                *(this - 7) = *(this - 7) & 7 | *(v81 + 3);
                if (*(this + 9) >= 5u)
                {
                  *(this - 9) = *(this - 9) & 7 | *(v81 + 4);
                  v82 = *(this + 9);
                  if (v82 >= 6)
                  {
                    *(this - 11) = *(this - 11) & 7 | *(v81 + 5);
                    if (v82 != 6)
                    {
                      v83 = (this - 112);
                      v84 = 6;
                      do
                      {
                        *v83 = *v83 & 7 | *&v81[8 * v84];
                        v83 -= 3;
                        ++v84;
                      }

                      while (v84 < *(this + 9));
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
        v81 = v98;
      }

      if (v81 != &v99)
      {
        free(v81);
      }

      return v51;
    }
  }

  else
  {
    v111 = 0uLL;
  }

  if (*(*(this + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    return 1;
  }
}

uint64_t mlir::mps::createTypeInferencePass@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x228uLL);
  bzero(v3 + 4, 0x208uLL);
  v3[2] = "func.func";
  v3[3] = 9;
  *(v3 + 32) = 1;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  v3[22] = 0;
  v3[23] = v3 + 25;
  *(v3 + 49) = 4;
  v3[29] = v3 + 31;
  *(v3 + 61) = 4;
  v3[35] = 0;
  v3[36] = 0;
  v3[37] = 0x1000000000;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  v3[42] = 0;
  *v3 = &unk_1F5B00658;
  *&v7 = "Enable folding.";
  *(&v7 + 1) = 15;
  v5 = 1;
  v6 = &v5;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v3 + 43), v3 + 19, "fold", 4, &v7, &v6);
  v3[43] = &unk_1F5AFB130;
  v3[67] = &unk_1F5AFB1B0;
  *v3 = &unk_1F5B005E8;
  *a1 = v3;
  return result;
}

uint64_t mlir::mps::anonymous namespace::TypeInferencePass::inferTypes(uint64_t a1, uint64_t a2)
{
  v76[4] = *MEMORY[0x1E69E9840];
  v61 = a1;
  v2 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  result = mlir::Block::getTerminator(v3, a2);
  if (result)
  {
    v5 = result;
    v6 = *(*(result + 48) + 16);
    if (v6 == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    if (v6 != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      return 0;
    }

    FunctionType = mlir::func::FuncOp::getFunctionType(&v61);
    Results = mlir::FunctionType::getResults(&FunctionType);
    v10 = v9;
    if ((*(v5 + 46) & 0x80) != 0)
    {
      v11 = *(v5 + 72);
      v12 = *(v5 + 68);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v74 = v11;
    v75 = v12;
    mlir::OperandRange::getTypes(&v74, &FunctionType);
    v74 = v76;
    v75 = 0x400000000;
    v13 = FunctionType;
    v14 = v65;
    v15 = v66;
    v16 = (v66 - v65);
    if ((v66 - v65) < 5)
    {
      v17 = 0;
      v18 = 0;
      if (v66 == v65)
      {
        goto LABEL_19;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v76, v66 - v65, 8);
      v17 = v75;
      v18 = v75;
      if (v15 == v14)
      {
        goto LABEL_19;
      }
    }

    v19 = &v74[v17];
    v20 = (v13 + 32 * v14 + 24);
    v21 = v16;
    do
    {
      v22 = *v20;
      v20 += 4;
      *v19++ = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
      --v21;
    }

    while (v21);
    v18 = v75;
LABEL_19:
    LODWORD(v75) = v18 + v16;
    if ((*(v5 + 46) & 0x80) != 0)
    {
      if (v10 == *(v7 + 68))
      {
LABEL_21:
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v24 = *(Results + 8 * i);
            v25 = v74[i];
            if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8))
            {
              v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
              v59 = v25;
              v60 = v26;
              if (v25)
              {
                if (!mlir::CallOpInterface::getArgOperands(&v59))
                {
                  continue;
                }

                ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
                if (v28)
                {
                  v29 = 8 * v28;
                  while (*ArgAttrsAttr != 0x8000000000000000)
                  {
                    ++ArgAttrsAttr;
                    v29 -= 8;
                    if (!v29)
                    {
                      goto LABEL_33;
                    }
                  }

                  continue;
                }
              }
            }

            else
            {
              v59 = 0;
              v60 = 0;
            }

LABEL_33:
            if (!mlir::verifyCompatibleShape(v24, v25))
            {
              v62[0] = "incompatible shapes for return types";
              v63 = 259;
              mlir::OpState::emitOpError(&v61, v62, &FunctionType);
              result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&FunctionType);
              v31 = result;
              if (FunctionType)
              {
                mlir::InFlightDiagnostic::report(&FunctionType);
                result = v31;
              }

              if (v73 != 1)
              {
                goto LABEL_93;
              }

              if (v72 != &v73)
              {
                free(v72);
              }

              v46 = __p;
              if (__p)
              {
                v47 = v71;
                v48 = __p;
                if (v71 != __p)
                {
                  do
                  {
                    v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
                  }

                  while (v47 != v46);
                  v48 = __p;
                }

                v71 = v46;
                operator delete(v48);
              }

              v35 = v68;
              result = v31;
              if (!v68)
              {
                goto LABEL_91;
              }

              v49 = v69;
              v37 = v68;
              if (v69 == v68)
              {
                goto LABEL_90;
              }

              do
              {
                v51 = *--v49;
                v50 = v51;
                *v49 = 0;
                if (v51)
                {
                  operator delete[](v50);
                }
              }

              while (v49 != v35);
LABEL_89:
              v37 = v68;
              goto LABEL_90;
            }

            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v24);
            if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(v25))
            {
              v62[0] = "element types for the function type and return op differ";
              v63 = 259;
              mlir::OpState::emitOpError(&v61, v62, &FunctionType);
              result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&FunctionType);
              v31 = result;
              if (FunctionType)
              {
                mlir::InFlightDiagnostic::report(&FunctionType);
                result = v31;
              }

              if (v73 != 1)
              {
                goto LABEL_93;
              }

              if (v72 != &v73)
              {
                free(v72);
              }

              v32 = __p;
              if (__p)
              {
                v33 = v71;
                v34 = __p;
                if (v71 != __p)
                {
                  do
                  {
                    v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
                  }

                  while (v33 != v32);
                  v34 = __p;
                }

                v71 = v32;
                operator delete(v34);
              }

              v35 = v68;
              result = v31;
              if (!v68)
              {
                goto LABEL_91;
              }

              v36 = v69;
              v37 = v68;
              if (v69 == v68)
              {
                goto LABEL_90;
              }

              do
              {
                v39 = *--v36;
                v38 = v39;
                *v36 = 0;
                if (v39)
                {
                  operator delete[](v38);
                }
              }

              while (v36 != v35);
              goto LABEL_89;
            }
          }
        }

        Context = mlir::Attribute::getContext((v61 + 24));
        v59 = mlir::func::FuncOp::getFunctionType(&v61);
        Inputs = mlir::FunctionType::getInputs(&v59);
        mlir::ValueRange::ValueRange(&FunctionType, Inputs, v42);
        mlir::ValueRange::ValueRange(v62, v74, v75);
        v43 = mlir::FunctionType::get(Context, FunctionType, v65, v62[0], v62[1]);
        v44 = v61;
        if (v61)
        {
          InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v61);
        }

        else
        {
          InterfaceFor = 0;
        }

        mlir::function_interface_impl::setFunctionType(v44, InterfaceFor, v43);
        result = 1;
        goto LABEL_93;
      }
    }

    else if (!v10)
    {
      goto LABEL_21;
    }

    v62[0] = "number of types for the function type and return op differ";
    v63 = 259;
    mlir::OpState::emitOpError(&v61, v62, &FunctionType);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&FunctionType);
    v31 = result;
    if (FunctionType)
    {
      mlir::InFlightDiagnostic::report(&FunctionType);
      result = v31;
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v71;
        v54 = __p;
        if (v71 != __p)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v71 = v52;
        operator delete(v54);
      }

      v35 = v68;
      result = v31;
      if (v68)
      {
        v55 = v69;
        v37 = v68;
        if (v69 != v68)
        {
          do
          {
            v57 = *--v55;
            v56 = v57;
            *v55 = 0;
            if (v57)
            {
              operator delete[](v56);
            }
          }

          while (v55 != v35);
          goto LABEL_89;
        }

LABEL_90:
        v69 = v35;
        operator delete(v37);
        result = v31;
      }

LABEL_91:
      if (v66 != &v67)
      {
        free(v66);
        result = v31;
      }
    }

LABEL_93:
    if (v74 != v76)
    {
      v58 = result;
      free(v74);
      return v58;
    }
  }

  return result;
}

void mlir::mps::anonymous namespace::TypeInferencePass::~TypeInferencePass(mlir::mps::_anonymous_namespace_::TypeInferencePass *this)
{
  *this = &unk_1F5B00658;
  *(this + 43) = &unk_1F5B3E720;
  v2 = this + 504;
  v3 = *(this + 66);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 43) = &unk_1F5B3E1D8;
  v4 = *(this + 55);
  if (v4 != *(this + 54))
  {
    free(v4);
  }

  v5 = *(this + 51);
  if (v5 != this + 424)
  {
    free(v5);
  }

  *this = &unk_1F5B01A70;
  v6 = *(this + 39);
  if (v6)
  {
    *(this + 40) = v6;
    operator delete(v6);
  }

  if (*(this + 73))
  {
    v7 = *(this + 72);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = *(*(this + 35) + v8);
        if (v9 != -8 && v9 != 0)
        {
          llvm::deallocate_buffer(v9, (*v9 + 17));
        }

        v8 += 8;
      }

      while (8 * v7 != v8);
    }
  }

  free(*(this + 35));
  v11 = *(this + 29);
  if (v11 != this + 248)
  {
    free(v11);
  }

  v12 = *(this + 23);
  if (v12 != this + 200)
  {
    free(v12);
  }

  v13 = *(this + 16);
  if (v13)
  {
    *(this + 17) = v13;
    operator delete(v13);
  }

  if (*(this + 120) == 1)
  {
    v14 = *(this + 8);
    if (v14 != *(this + 7))
    {
      free(v14);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::mps::anonymous namespace::TypeInferencePass::runOnOperation(mlir::mps::_anonymous_namespace_::TypeInferencePass *this)
{
  v1 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v13 = this;
  v12 = v1;
  FunctionType = mlir::func::FuncOp::getFunctionType(&v12);
  result = mlir::FunctionType::getResults(&FunctionType);
  if (!v3)
  {
    return result;
  }

  v4 = result;
  v5 = &result[v3];
  while (1)
  {
    v6 = *v4;
    if (*v4)
    {
      while (1)
      {
        v7 = *(*v6 + 136);
        {
          mlir::mps::isRegionMemrefRegionPassCompatible();
        }

        if (v7 != mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
        {
          break;
        }

        v6 = v6[1];
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v8 = v6;
    }

    else
    {
LABEL_9:
      v8 = 0;
    }

    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    if (!result)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_3;
    }

    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v13 = v6;
    v14 = result;
    if (v6)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v13))
      {
      }

      result = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
      if (v9)
      {
        break;
      }
    }

LABEL_3:
    if (++v4 == v5)
    {
      return result;
    }
  }

  v10 = 8 * v9;
  while (*result != 0x8000000000000000)
  {
    ++result;
    v10 -= 8;
    if (!v10)
    {
      goto LABEL_3;
    }
  }
}

uint64_t mlir::mps::MPSTypeInferenceBase<mlir::mps::anonymous namespace::TypeInferencePass>::clonePass@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x228uLL);
  v2[2] = "func.func";
  v2[3] = 9;
  *(v2 + 32) = 1;
  *(v2 + 40) = 0;
  *(v2 + 120) = 0;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  v2[22] = 0;
  v2[23] = v2 + 25;
  v2[24] = 0x400000000;
  v2[29] = v2 + 31;
  v2[30] = 0x400000000;
  v2[35] = 0;
  v2[36] = 0;
  v2[37] = 0x1000000000;
  v2[42] = 0;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  *v2 = &unk_1F5B00658;
  *&v6 = "Enable folding.";
  *(&v6 + 1) = 15;
  v4 = 1;
  v5 = &v4;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v2 + 43), v2 + 19, "fold", 4, &v6, &v5);
  v2[43] = &unk_1F5AFB130;
  v2[67] = &unk_1F5AFB1B0;
  *v2 = &unk_1F5B005E8;
  *a1 = v2;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mps::anonymous namespace::TypeInferencePass::runOnOperation(void)::$_0>(uint64_t *a1, uint64_t a2)
{
  v69[4] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 36);
  v5 = (a2 - 16);
  if (!v4)
  {
    v5 = 0;
  }

  v46 = v5;
  v47 = v4;
  mlir::OperandRange::getTypes(&v46, &v57);
  v6 = v58;
  v7 = v59;
  if (v58 == v59)
  {
    goto LABEL_45;
  }

  v8 = v57;
  while (1)
  {
    v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v6) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      while (1)
      {
        v10 = *(*v9 + 136);
        {
          mlir::mps::isRegionMemrefRegionPassCompatible();
        }

        if (v10 != mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
        {
          break;
        }

        v9 = *(v9 + 1);
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      v11 = v9;
    }

    else
    {
LABEL_11:
      v11 = 0;
    }

    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8))
    {
      v46 = 0;
      v47 = 0;
      goto LABEL_5;
    }

    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    v46 = v9;
    v47 = v12;
    if (v9)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v46))
      {
        goto LABEL_23;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v46);
      if (v13)
      {
        break;
      }
    }

LABEL_5:
    if (++v6 == v7)
    {
      goto LABEL_45;
    }
  }

  v15 = 8 * v13;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_5;
    }
  }

LABEL_23:
  {
    v46 = "failed to fold or infer return types";
    LOWORD(v50) = 259;
    mlir::Operation::emitOpError(a2, &v46, &v57);
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

      v16 = __p;
      if (__p)
      {
        v17 = v64;
        v18 = __p;
        if (v64 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v64 = v16;
        operator delete(v18);
      }

      v19 = v61;
      if (v61)
      {
        v20 = v62;
        v21 = v61;
        if (v62 != v61)
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
          v21 = v61;
        }

        v62 = v19;
        operator delete(v21);
      }

      if (v59 != &v60)
      {
        free(v59);
      }
    }

    *(v3 + 40) |= 4uLL;
  }

LABEL_45:
  if (*(v3 + 472) == 1)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v24 = *(a2 + 72);
      v25 = *(a2 + 68);
      v67 = v69;
      v68 = 0x400000000;
      if (v25 < 5)
      {
        if (v25)
        {
          v26 = 0;
          v27 = v69;
          goto LABEL_51;
        }

        v41 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, v25, 8);
        v26 = v68;
        v27 = v67;
LABEL_51:
        v28 = &v27[v26];
        if (v25 >= 0xD && (v28 >= v24 + 32 * v25 || v24 + 24 >= &v27[v26 + v25]))
        {
          v30 = v25 & 3;
          if ((v25 & 3) == 0)
          {
            v30 = 4;
          }

          v29 = v25 - v30;
          v31 = &v28[v29];
          v32 = (v24 + 88);
          v33 = (v28 + 2);
          v34 = v29;
          do
          {
            v35 = v32 - 8;
            v36 = vld4q_f64(v35);
            v37 = vld4q_f64(v32);
            *(v33 - 1) = v36;
            *v33 = v37;
            v32 += 16;
            v33 += 2;
            v34 -= 4;
          }

          while (v34);
          v28 = v31;
        }

        else
        {
          v29 = 0;
        }

        v38 = v25 - v29;
        v39 = (v24 + 32 * v29 + 24);
        do
        {
          v40 = *v39;
          v39 += 4;
          *v28++ = v40;
          --v38;
        }

        while (v38);
        v41 = v68;
      }
    }

    else
    {
      LODWORD(v25) = 0;
      v41 = 0;
      v67 = v69;
      HIDWORD(v68) = 4;
    }

    LODWORD(v68) = v41 + v25;
    v56 = &v67;
    v55 = 1;
    v54 = &unk_1F5B006C8;
    Context = mlir::Attribute::getContext((a2 + 24));
    v44 = mlir::UnknownLoc::get(Context, v43);
    v47 = 0;
    v48 = 0;
    v46 = v44;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    mlir::DialectInterfaceCollection<mlir::DialectFoldInterface>::DialectInterfaceCollection(v53, Context);
    v53[8] = Context;
    v53[9] = &v54;
    v53[10] = 0;
    v53[11] = 0;
    v53[7] = &unk_1F5AFAFF0;
    mlir::OperationFolder::tryToFold(&v46, a2, 0);
    mlir::OperationFolder::~OperationFolder(&v46, v45);
  }
}

void mlir::mps::anonymous namespace::TypeInferencePass::fold(mlir::Operation *)::$_0::operator()(uint64_t a1)
{
  v1 = v21;
  v17 = v21;
  v18 = v21;
  v19 = 4;
  v20 = 0;
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    v4 = *v2;
    v5 = &(*v2)[v3];
    while (1)
    {
      v16 = *v4;
      if (mlir::Value::getDefiningOp(&v16) && !*v16)
      {
        DefiningOp = mlir::Value::getDefiningOp(&v16);
        if (v18 != v17)
        {
          goto LABEL_3;
        }

        v7 = HIDWORD(v19);
        if (HIDWORD(v19))
        {
          v8 = 8 * HIDWORD(v19);
          v9 = v17;
          while (*v9 != DefiningOp)
          {
            ++v9;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_12;
            }
          }

          goto LABEL_4;
        }

LABEL_12:
        if (HIDWORD(v19) < v19)
        {
          ++HIDWORD(v19);
          v17[v7] = DefiningOp;
        }

        else
        {
LABEL_3:
          llvm::SmallPtrSetImplBase::insert_imp_big(&v17, DefiningOp);
        }
      }

LABEL_4:
      if (++v4 == v5)
      {
        v1 = v17;
        v10 = v18;
        v11 = v19;
        LODWORD(v3) = HIDWORD(v19);
        goto LABEL_16;
      }
    }
  }

  v11 = 4;
  v10 = v21;
LABEL_16:
  if (v10 == v1)
  {
    v3 = v3;
  }

  else
  {
    v3 = v11;
  }

  v12 = v10;
  if (v3)
  {
    v13 = 8 * v3;
    v12 = v10;
    while (*v12 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v12;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_32;
      }
    }
  }

  v14 = &v10[v3];
  if (v12 != v14)
  {
    do
    {
      v15 = *v12++;
      mlir::Operation::erase(v15);
      for (; v12 != v14; ++v12)
      {
        if (*v12 < 0xFFFFFFFFFFFFFFFELL)
        {
          break;
        }
      }
    }

    while (v12 != v14);
    v1 = v17;
    v10 = v18;
  }

LABEL_32:
  if (v10 != v1)
  {
    free(v10);
  }
}