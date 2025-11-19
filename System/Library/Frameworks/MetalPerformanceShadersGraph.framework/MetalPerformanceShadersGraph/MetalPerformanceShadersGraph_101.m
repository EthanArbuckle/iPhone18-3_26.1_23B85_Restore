void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)0>::~ConvertMatMul(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::MatMulOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::MatMulOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::MatMulOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 64);
  v33 = *(a3 + 56);
  v34 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v34 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v33, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v27 = v10;
        v28 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v27) || !mlir::CallOpInterface::getArgOperands(&v27))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

LABEL_3:
      i = v34 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v25;
    v32 = *(a3 + 64);
    v26 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v33 = 0;
      v34 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v33 = v18;
    v34 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v33) || !mlir::CallOpInterface::getArgOperands(&v33))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v33);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v83 = *(a3 + 56);
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

  v66 = v8;
  v67 = a4;
  v76 = v7;
  v77 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v74 = v9;
  v75 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v72 = v12;
  v73 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v83, 0);
  v71 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v83, 1);
  v70 = v15;
  v16 = *(a2 + 24);
  memset(v69, 0, sizeof(v69));
  memset(v68, 0, sizeof(v68));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v19 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v69);
    v87 = v20;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v21 == 2 || (v19 & 1) == 0)
    {
      if (v21 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v64 = v15;
      v28 = v78;
      mlir::TypeConverter::TypeConverter(v82, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v82);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v68);
    v85 = v22;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v23 != 2)
    {
      goto LABEL_24;
    }

    v19 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v78);
  v19 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v25 = (v67 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v67 + 8));
  if (Properties)
  {
    if (*Properties)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else
  {
    v27 = 4;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  if (v29 >= v27)
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v30;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v31 = v15;
    v33 = v32;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v32);
    LOBYTE(v85) = v34;
    v35 = v33;
    v15 = v31;
    v79 = mlir::anec::getIndexFromDim(3, v35);
    v80 = v36;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v71 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v74);
  if (v37 >= v27)
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v38;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v40 = v39;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v39);
    LOBYTE(v85) = v41;
    v79 = mlir::anec::getIndexFromDim(3, v40);
    v80 = v42;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v70 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v78))
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v43;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v44 = v15;
    v46 = v45;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v45);
    LOBYTE(v85) = v47;
    v48 = v46;
    v15 = v44;
    v79 = mlir::anec::getIndexFromDim(4, v48);
    v80 = v49;
    v71 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v78))
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v85) = v53;
    v79 = mlir::anec::getIndexFromDim(4, v52);
    v80 = v54;
    v70 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  ArgOperands = 0;
  v55 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v25, v16, &v71, &v70) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v72);
  if (v56 >= v27)
  {
    v81 = v55;
    ArgOperands = mlir::getRankPromotionTypeForANE(v72, v73);
    v87 = v57;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v59 = v58;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v58);
    LOBYTE(v85) = v60;
    v79 = mlir::anec::getIndexFromDim(3, v59);
    v80 = v61;
    v55 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  v62 = v78;
  IndexFromDim = v55;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v67, v62, ArgOperands, v87);
  return 1;
}

uint64_t mlir::anonymous namespace::matchAsConst(void *a1, char *a2)
{
  v26 = a1;
  v28 = a2;
  ArgOperands = a1;
  DefiningOp = mlir::Value::getDefiningOp(&ArgOperands);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v28, DefiningOp) & 1) != 0)
  {
    return 1;
  }

  ArgOperands = a2;
  v23 = a2 + 16;
  v24 = a2 + 32;
  v25 = a2 + 64;
  v27 = a1;
  v6 = mlir::Value::getDefiningOp(&v27);
  if (!v6)
  {
    return 0;
  }

  v21[0] = v6;
  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    return 0;
  }

  if ((*(v6 + 46) & 0x80) == 0)
  {
    return 0;
  }

  if (*(v6 + 68) != 4)
  {
    return 0;
  }

  v30 = 1;
  v28 = &v30;
  v29 = v21;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&ArgOperands, &v28);
  if (v30 != 1 || mlir::ElementsAttr::getNumElements(*(a2 + 8), *(a2 + 9)) != 1 || (mlir::getSingleFloatValue<float>(*(a2 + 8), *(a2 + 9)) & 0x7FFFFFFF) != 0)
  {
    return 0;
  }

  v27 = mlir::Value::getDefiningOp(&v26);
  ArgOperands = mlir::CallOpInterface::getArgOperands((a2 + 16));
  v23 = v7;
  v28 = mlir::CallOpInterface::getArgOperands((a2 + 32));
  v29 = v8;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v10) == 1)
  {
    v11 = mlir::CallableOpInterface::getArgAttrsAttr(&v28);
    if (mlir::ShapedType::getNumElements(v11, v12) == 1 && (mlir::mps::DequantizeLUTOp::getAxis(&v27) & 0x100000000) == 0)
    {
      return 1;
    }
  }

  if ((mlir::mps::DequantizeLUTOp::getAxis(&v27) & 0x100000000) == 0)
  {
    return 0;
  }

  v21[0] = mlir::CallOpInterface::getArgOperands(a2);
  v21[1] = v13;
  mlir::CallableOpInterface::getArgAttrsAttr(v21);
  v15 = v14;
  mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
  v17 = v16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v28);
  result = 0;
  if (v17 <= 1 && v18 <= 1)
  {
    if (v17 == 1 || v18 == 1)
    {
      Axis = mlir::mps::DequantizeLUTOp::getAxis(&v27);
      if ((Axis & 0x100000000) != 0)
      {
        return (mlir::anec::getKernelDimFromIndex(Axis, v15) & 0x1FFFFFFFFLL) == 0x100000000;
      }

      v20 = std::__throw_bad_optional_access[abi:nn200100]();
    }

    return 1;
  }

  return result;
}

uint64_t mlir::anonymous namespace::convertToLinear(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v100 = a12;
  v101 = a1;
  v98 = a14;
  v99 = a11;
  v96 = a16;
  v97 = a13;
  v94 = 0;
  v95 = a15;
  v93 = 0;
  if (a10)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(&v99);
    v23 = a5;
    if (v24 >= 4)
    {
      v108[0] = a5;
      *&v102 = mlir::getRankPromotionTypeForANE(v99, v100);
      *(&v102 + 1) = v25;
      mlir::CallableOpInterface::getArgAttrsAttr(&v102);
      v27 = v26;
      IndexFromDim = mlir::anec::getIndexFromDim(1, v26);
      LOBYTE(v107) = v28;
      v104 = mlir::anec::getIndexFromDim(3, v27);
      LOBYTE(v105) = v29;
      v23 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
    }

    if (!mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v101))
    {
      v108[0] = v23;
      *&v102 = mlir::getRankPromotionTypeForANE(v99, v100);
      *(&v102 + 1) = v30;
      mlir::CallableOpInterface::getArgAttrsAttr(&v102);
      v32 = v31;
      IndexFromDim = mlir::anec::getIndexFromDim(1, v31);
      LOBYTE(v107) = v33;
      v104 = mlir::anec::getIndexFromDim(4, v32);
      LOBYTE(v105) = v34;
      v23 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
    }

    a5 = a6;
    v35 = a8;
  }

  else
  {
    mlir::CallableOpInterface::getArgAttrsAttr(&v97);
    v23 = a6;
    if (v36 >= 4)
    {
      v108[0] = a6;
      *&v102 = mlir::getRankPromotionTypeForANE(v97, v98);
      *(&v102 + 1) = v37;
      mlir::CallableOpInterface::getArgAttrsAttr(&v102);
      v39 = v38;
      IndexFromDim = mlir::anec::getIndexFromDim(1, v38);
      LOBYTE(v107) = v40;
      v104 = mlir::anec::getIndexFromDim(3, v39);
      LOBYTE(v105) = v41;
      v23 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
    }

    if (mlir::mps::MatMulOp::getTransposeRhs(&v101))
    {
      v108[0] = v23;
      *&v102 = mlir::getRankPromotionTypeForANE(v97, v98);
      *(&v102 + 1) = v42;
      mlir::CallableOpInterface::getArgAttrsAttr(&v102);
      v44 = v43;
      IndexFromDim = mlir::anec::getIndexFromDim(1, v43);
      LOBYTE(v107) = v45;
      v104 = mlir::anec::getIndexFromDim(4, v44);
      LOBYTE(v105) = v46;
      v23 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
    }

    v35 = a7;
  }

  v93 = a5;
  v94 = v23;
  v47 = v35[2];
  v48 = v35[6];
  if (v47)
  {
    v49 = mlir::convertElementsAttr(v47, v35[3], 1);
    *&v102 = mlir::getElementTypeOrSelf(v35[4]);
    isSignedInteger = mlir::Type::isSignedInteger(&v102);
    IntegerType = mlir::Builder::getIntegerType((a2 + 8), 8, isSignedInteger);
    IndexFromDim = mlir::CallOpInterface::getArgOperands((v35 + 4));
    v107 = v52;
    LOBYTE(v102) = 0;
    v103 = 0;
    v53 = mlir::ShapedType::cloneWith(&IndexFromDim, &v102, IntegerType);
    v55 = mlir::rewriteElementsAttr(v35[4], v35[5], v53, v54, 1);
    Type = mlir::ElementsAttr::getType(v35);
    v57 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    *&v102 = v57;
    *(&v102 + 1) = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v102);
    v59 = (*(v93 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v59)
    {
      v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
    }

    else
    {
      v60 = 0;
    }

    IndexFromDim = v59;
    v107 = v60;
    LOBYTE(v102) = 0;
    v103 = 0;
    v64 = mlir::ShapedType::cloneWith(&IndexFromDim, &v102, isSplat);
    v66 = v65;
    *&v102 = mlir::rewriteElementsAttr(*v35, v35[1], v64, v66, 0);
    *(&v102 + 1) = v67;
    v68 = 0;
    v93 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 8), a4, &IndexFromDim, &v102) - 16;
    *&v102 = v49;
  }

  else
  {
    if (v48)
    {
      if (a9)
      {
        a8 = a7;
      }

      v61 = mlir::ElementsAttr::getType(a8);
      if (v61)
      {
        v62 = v61;
        v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v61 + 8);
        v61 = v62;
      }

      else
      {
        v63 = 0;
      }

      *&v102 = v61;
      *(&v102 + 1) = v63;
      IndexFromDim = mlir::getRankPromotionTypeForANE(v61, v63);
      v107 = v69;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
      v72 = v71;
      v73 = mlir::ElementsAttr::isSplat(&v102);
      v74 = mlir::MemRefType::get(ArgAttrsAttr, v72, v73, 0, 0, 0);
      v108[0] = v74;
      v68 = mlir::convertElementsAttr(a8[6], a8[7], 1);
      v76 = *a8;
      v75 = a8[1];
      if (v74)
      {
        v77 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v74 + 8);
      }

      else
      {
        v77 = 0;
      }

      v104 = mlir::rewriteElementsAttr(v76, v75, v74, v77, 0);
      v105 = v78;
      v93 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 8), *(v101 + 24), v108, &v104) - 16;
    }

    else
    {
      v68 = 0;
    }

    v55 = 0;
    *&v102 = 0;
  }

  IndexFromDim = v55;
  if (v48)
  {
    v79 = v68;
  }

  else
  {
    v79 = 0;
  }

  v104 = v79;
  v80 = mlir::OpBuilder::create<mlir::anec::Linear,mlir::Value &,mlir::Value &,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>((a2 + 8), a4, &v94, &v93, &v102, &IndexFromDim, &v104) - 16;
  if (a10)
  {
    v108[0] = v80;
    *&v102 = mlir::getRankPromotionTypeForANE(v95, v96);
    *(&v102 + 1) = v81;
    mlir::CallableOpInterface::getArgAttrsAttr(&v102);
    v83 = v82;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v82);
    LOBYTE(v107) = v84;
    v104 = mlir::anec::getIndexFromDim(4, v83);
    LOBYTE(v105) = v85;
    v80 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v95);
  if (v86 >= 4)
  {
    v108[0] = v80;
    *&v102 = mlir::getRankPromotionTypeForANE(v95, v96);
    *(&v102 + 1) = v87;
    mlir::CallableOpInterface::getArgAttrsAttr(&v102);
    v89 = v88;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v88);
    LOBYTE(v107) = v90;
    v104 = mlir::anec::getIndexFromDim(3, v89);
    LOBYTE(v105) = v91;
    return mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
  }

  return v80;
}

uint64_t mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::MatMul,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::MatMul::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::MatMul,void>::id)
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

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(void **a1, uint64_t a2)
{
  v8 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v8);
  if (DefiningOp)
  {
    LOBYTE(DefiningOp) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1, DefiningOp);
  }

  **a2 &= DefiningOp;
  v8 = *(*(**(a2 + 8) + 72) + 56);
  v5 = mlir::Value::getDefiningOp(&v8);
  if (v5)
  {
    LOBYTE(v5) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 1, v5);
  }

  **a2 &= v5;
  v8 = *(*(**(a2 + 8) + 72) + 88);
  v6 = mlir::Value::getDefiningOp(&v8);
  if (v6)
  {
    LOBYTE(v6) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 2, v6);
  }

  **a2 &= v6;
  v8 = *(*(**(a2 + 8) + 72) + 120);
  result = mlir::Value::getDefiningOp(&v8);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 3, result);
  }

  **a2 &= result;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Linear,mlir::Value &,mlir::Value &,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Linear,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Linear,mlir::Value &,mlir::Value &,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::anec::Linear::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Linear,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::Transpose::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
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

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)1>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)1>::~ConvertMatMul(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v83 = *(a3 + 56);
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

  v66 = v8;
  v67 = a4;
  v76 = v7;
  v77 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v74 = v9;
  v75 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v72 = v12;
  v73 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v83, 0);
  v71 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v83, 1);
  v70 = v15;
  v16 = *(a2 + 24);
  memset(v69, 0, sizeof(v69));
  memset(v68, 0, sizeof(v68));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v19 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v69);
    v87 = v20;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v21 == 2 || (v19 & 1) == 0)
    {
      if (v21 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v64 = v15;
      v28 = v78;
      mlir::TypeConverter::TypeConverter(v82, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v82);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v68);
    v85 = v22;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v23 != 2)
    {
      goto LABEL_24;
    }

    v19 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v78);
  v19 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v25 = (v67 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v67 + 8));
  if (Properties)
  {
    if (*Properties)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else
  {
    v27 = 4;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  if (v29 >= v27)
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v30;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v31 = v15;
    v33 = v32;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v32);
    LOBYTE(v85) = v34;
    v35 = v33;
    v15 = v31;
    v79 = mlir::anec::getIndexFromDim(3, v35);
    v80 = v36;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v71 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v74);
  if (v37 >= v27)
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v38;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v40 = v39;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v39);
    LOBYTE(v85) = v41;
    v79 = mlir::anec::getIndexFromDim(3, v40);
    v80 = v42;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v70 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v78))
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v43;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v44 = v15;
    v46 = v45;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v45);
    LOBYTE(v85) = v47;
    v48 = v46;
    v15 = v44;
    v79 = mlir::anec::getIndexFromDim(4, v48);
    v80 = v49;
    v71 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v78))
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v85) = v53;
    v79 = mlir::anec::getIndexFromDim(4, v52);
    v80 = v54;
    v70 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  ArgOperands = 0;
  v55 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v25, v16, &v71, &v70) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v72);
  if (v56 >= v27)
  {
    v81 = v55;
    ArgOperands = mlir::getRankPromotionTypeForANE(v72, v73);
    v87 = v57;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v59 = v58;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v58);
    LOBYTE(v85) = v60;
    v79 = mlir::anec::getIndexFromDim(3, v59);
    v80 = v61;
    v55 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  v62 = v78;
  IndexFromDim = v55;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v67, v62, ArgOperands, v87);
  return 1;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)2>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)2>::~ConvertMatMul(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v83 = *(a3 + 56);
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

  v66 = v8;
  v67 = a4;
  v76 = v7;
  v77 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v74 = v9;
  v75 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v72 = v12;
  v73 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v83, 0);
  v71 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v83, 1);
  v70 = v15;
  v16 = *(a2 + 24);
  memset(v69, 0, sizeof(v69));
  memset(v68, 0, sizeof(v68));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v19 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v69);
    v87 = v20;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v21 == 2 || (v19 & 1) == 0)
    {
      if (v21 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v64 = v15;
      v28 = v78;
      mlir::TypeConverter::TypeConverter(v82, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v82);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v68);
    v85 = v22;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v23 != 2)
    {
      goto LABEL_24;
    }

    v19 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v78);
  v19 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v25 = (v67 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v67 + 8));
  if (Properties)
  {
    if (*Properties)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else
  {
    v27 = 4;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  if (v29 >= v27)
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v30;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v31 = v15;
    v33 = v32;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v32);
    LOBYTE(v85) = v34;
    v35 = v33;
    v15 = v31;
    v79 = mlir::anec::getIndexFromDim(3, v35);
    v80 = v36;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v71 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v74);
  if (v37 >= v27)
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v38;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v40 = v39;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v39);
    LOBYTE(v85) = v41;
    v79 = mlir::anec::getIndexFromDim(3, v40);
    v80 = v42;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v70 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v78))
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v43;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v44 = v15;
    v46 = v45;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v45);
    LOBYTE(v85) = v47;
    v48 = v46;
    v15 = v44;
    v79 = mlir::anec::getIndexFromDim(4, v48);
    v80 = v49;
    v71 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v78))
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v85) = v53;
    v79 = mlir::anec::getIndexFromDim(4, v52);
    v80 = v54;
    v70 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  ArgOperands = 0;
  v55 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v25, v16, &v71, &v70) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v72);
  if (v56 >= v27)
  {
    v81 = v55;
    ArgOperands = mlir::getRankPromotionTypeForANE(v72, v73);
    v87 = v57;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v59 = v58;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v58);
    LOBYTE(v85) = v60;
    v79 = mlir::anec::getIndexFromDim(3, v59);
    v80 = v61;
    v55 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  v62 = v78;
  IndexFromDim = v55;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v67, v62, ArgOperands, v87);
  return 1;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)3>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)3>::~ConvertMatMul(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v83 = *(a3 + 56);
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

  v66 = v8;
  v67 = a4;
  v76 = v7;
  v77 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v74 = v9;
  v75 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v72 = v12;
  v73 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v83, 0);
  v71 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v83, 1);
  v70 = v15;
  v16 = *(a2 + 24);
  memset(v69, 0, sizeof(v69));
  memset(v68, 0, sizeof(v68));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v19 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v69);
    v87 = v20;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v21 == 2 || (v19 & 1) == 0)
    {
      if (v21 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v64 = v15;
      v28 = v78;
      mlir::TypeConverter::TypeConverter(v82, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v82);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v68);
    v85 = v22;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v23 != 2)
    {
      goto LABEL_24;
    }

    v19 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v78);
  v19 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v25 = (v67 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v67 + 8));
  if (Properties)
  {
    if (*Properties)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else
  {
    v27 = 4;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  if (v29 >= v27)
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v30;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v31 = v15;
    v33 = v32;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v32);
    LOBYTE(v85) = v34;
    v35 = v33;
    v15 = v31;
    v79 = mlir::anec::getIndexFromDim(3, v35);
    v80 = v36;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v71 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v74);
  if (v37 >= v27)
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v38;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v40 = v39;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v39);
    LOBYTE(v85) = v41;
    v79 = mlir::anec::getIndexFromDim(3, v40);
    v80 = v42;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v70 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v78))
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v43;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v44 = v15;
    v46 = v45;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v45);
    LOBYTE(v85) = v47;
    v48 = v46;
    v15 = v44;
    v79 = mlir::anec::getIndexFromDim(4, v48);
    v80 = v49;
    v71 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v78))
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v85) = v53;
    v79 = mlir::anec::getIndexFromDim(4, v52);
    v80 = v54;
    v70 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  ArgOperands = 0;
  v55 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v25, v16, &v71, &v70) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v72);
  if (v56 >= v27)
  {
    v81 = v55;
    ArgOperands = mlir::getRankPromotionTypeForANE(v72, v73);
    v87 = v57;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v59 = v58;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v58);
    LOBYTE(v85) = v60;
    v79 = mlir::anec::getIndexFromDim(3, v59);
    v80 = v61;
    v55 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  v62 = v78;
  IndexFromDim = v55;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v67, v62, ArgOperands, v87);
  return 1;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)4>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)4>::~ConvertMatMul(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v83 = *(a3 + 56);
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

  v66 = v8;
  v67 = a4;
  v76 = v7;
  v77 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v74 = v9;
  v75 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v72 = v12;
  v73 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v83, 0);
  v71 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v83, 1);
  v70 = v15;
  v16 = *(a2 + 24);
  memset(v69, 0, sizeof(v69));
  memset(v68, 0, sizeof(v68));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v19 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v69);
    v87 = v20;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v21 == 2 || (v19 & 1) == 0)
    {
      if (v21 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v64 = v15;
      v28 = v78;
      mlir::TypeConverter::TypeConverter(v82, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v82);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v68);
    v85 = v22;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v23 != 2)
    {
      goto LABEL_24;
    }

    v19 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v78);
  v19 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v25 = (v67 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v67 + 8));
  if (Properties)
  {
    if (*Properties)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else
  {
    v27 = 4;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  if (v29 >= v27)
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v30;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v31 = v15;
    v33 = v32;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v32);
    LOBYTE(v85) = v34;
    v35 = v33;
    v15 = v31;
    v79 = mlir::anec::getIndexFromDim(3, v35);
    v80 = v36;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v71 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v74);
  if (v37 >= v27)
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v38;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v40 = v39;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v39);
    LOBYTE(v85) = v41;
    v79 = mlir::anec::getIndexFromDim(3, v40);
    v80 = v42;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v70 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v78))
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v43;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v44 = v15;
    v46 = v45;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v45);
    LOBYTE(v85) = v47;
    v48 = v46;
    v15 = v44;
    v79 = mlir::anec::getIndexFromDim(4, v48);
    v80 = v49;
    v71 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v78))
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v85) = v53;
    v79 = mlir::anec::getIndexFromDim(4, v52);
    v80 = v54;
    v70 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  ArgOperands = 0;
  v55 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v25, v16, &v71, &v70) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v72);
  if (v56 >= v27)
  {
    v81 = v55;
    ArgOperands = mlir::getRankPromotionTypeForANE(v72, v73);
    v87 = v57;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v59 = v58;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v58);
    LOBYTE(v85) = v60;
    v79 = mlir::anec::getIndexFromDim(3, v59);
    v80 = v61;
    v55 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  v62 = v78;
  IndexFromDim = v55;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v67, v62, ArgOperands, v87);
  return 1;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)5>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)5>::~ConvertMatMul(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v83 = *(a3 + 56);
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

  v66 = v8;
  v67 = a4;
  v76 = v7;
  v77 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v74 = v9;
  v75 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v72 = v12;
  v73 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v83, 0);
  v71 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v83, 1);
  v70 = v15;
  v16 = *(a2 + 24);
  memset(v69, 0, sizeof(v69));
  memset(v68, 0, sizeof(v68));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v19 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v69);
    v87 = v20;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v21 == 2 || (v19 & 1) == 0)
    {
      if (v21 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v64 = v15;
      v28 = v78;
      mlir::TypeConverter::TypeConverter(v82, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v82);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v68);
    v85 = v22;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v23 != 2)
    {
      goto LABEL_24;
    }

    v19 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v78);
  v19 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v25 = (v67 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v67 + 8));
  if (Properties)
  {
    if (*Properties)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else
  {
    v27 = 4;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  if (v29 >= v27)
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v30;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v31 = v15;
    v33 = v32;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v32);
    LOBYTE(v85) = v34;
    v35 = v33;
    v15 = v31;
    v79 = mlir::anec::getIndexFromDim(3, v35);
    v80 = v36;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v71 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v74);
  if (v37 >= v27)
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v38;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v40 = v39;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v39);
    LOBYTE(v85) = v41;
    v79 = mlir::anec::getIndexFromDim(3, v40);
    v80 = v42;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v70 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v78))
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v43;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v44 = v15;
    v46 = v45;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v45);
    LOBYTE(v85) = v47;
    v48 = v46;
    v15 = v44;
    v79 = mlir::anec::getIndexFromDim(4, v48);
    v80 = v49;
    v71 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v78))
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v85) = v53;
    v79 = mlir::anec::getIndexFromDim(4, v52);
    v80 = v54;
    v70 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  ArgOperands = 0;
  v55 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v25, v16, &v71, &v70) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v72);
  if (v56 >= v27)
  {
    v81 = v55;
    ArgOperands = mlir::getRankPromotionTypeForANE(v72, v73);
    v87 = v57;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v59 = v58;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v58);
    LOBYTE(v85) = v60;
    v79 = mlir::anec::getIndexFromDim(3, v59);
    v80 = v61;
    v55 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  v62 = v78;
  IndexFromDim = v55;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v67, v62, ArgOperands, v87);
  return 1;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)6>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)6>::~ConvertMatMul(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v83 = *(a3 + 56);
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

  v66 = v8;
  v67 = a4;
  v76 = v7;
  v77 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v74 = v9;
  v75 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v72 = v12;
  v73 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v83, 0);
  v71 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v83, 1);
  v70 = v15;
  v16 = *(a2 + 24);
  memset(v69, 0, sizeof(v69));
  memset(v68, 0, sizeof(v68));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v19 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v69);
    v87 = v20;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v21 == 2 || (v19 & 1) == 0)
    {
      if (v21 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v64 = v15;
      v28 = v78;
      mlir::TypeConverter::TypeConverter(v82, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v82);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v68);
    v85 = v22;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v23 != 2)
    {
      goto LABEL_24;
    }

    v19 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v78);
  v19 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v25 = (v67 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v67 + 8));
  if (Properties)
  {
    if (*Properties)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else
  {
    v27 = 4;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  if (v29 >= v27)
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v30;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v31 = v15;
    v33 = v32;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v32);
    LOBYTE(v85) = v34;
    v35 = v33;
    v15 = v31;
    v79 = mlir::anec::getIndexFromDim(3, v35);
    v80 = v36;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v71 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v74);
  if (v37 >= v27)
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v38;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v40 = v39;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v39);
    LOBYTE(v85) = v41;
    v79 = mlir::anec::getIndexFromDim(3, v40);
    v80 = v42;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v70 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v78))
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v43;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v44 = v15;
    v46 = v45;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v45);
    LOBYTE(v85) = v47;
    v48 = v46;
    v15 = v44;
    v79 = mlir::anec::getIndexFromDim(4, v48);
    v80 = v49;
    v71 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v78))
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v85) = v53;
    v79 = mlir::anec::getIndexFromDim(4, v52);
    v80 = v54;
    v70 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  ArgOperands = 0;
  v55 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v25, v16, &v71, &v70) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v72);
  if (v56 >= v27)
  {
    v81 = v55;
    ArgOperands = mlir::getRankPromotionTypeForANE(v72, v73);
    v87 = v57;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v59 = v58;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v58);
    LOBYTE(v85) = v60;
    v79 = mlir::anec::getIndexFromDim(3, v59);
    v80 = v61;
    v55 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  v62 = v78;
  IndexFromDim = v55;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v67, v62, ArgOperands, v87);
  return 1;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)7>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)7>::~ConvertMatMul(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v83 = *(a3 + 56);
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

  v66 = v8;
  v67 = a4;
  v76 = v7;
  v77 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v74 = v9;
  v75 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v72 = v12;
  v73 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v83, 0);
  v71 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v83, 1);
  v70 = v15;
  v16 = *(a2 + 24);
  memset(v69, 0, sizeof(v69));
  memset(v68, 0, sizeof(v68));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v19 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v69);
    v87 = v20;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v21 == 2 || (v19 & 1) == 0)
    {
      if (v21 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v64 = v15;
      v28 = v78;
      mlir::TypeConverter::TypeConverter(v82, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v82);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v68);
    v85 = v22;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v23 != 2)
    {
      goto LABEL_24;
    }

    v19 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v78);
  v19 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v25 = (v67 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v67 + 8));
  if (Properties)
  {
    if (*Properties)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else
  {
    v27 = 4;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  if (v29 >= v27)
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v30;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v31 = v15;
    v33 = v32;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v32);
    LOBYTE(v85) = v34;
    v35 = v33;
    v15 = v31;
    v79 = mlir::anec::getIndexFromDim(3, v35);
    v80 = v36;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v71 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v74);
  if (v37 >= v27)
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v38;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v40 = v39;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v39);
    LOBYTE(v85) = v41;
    v79 = mlir::anec::getIndexFromDim(3, v40);
    v80 = v42;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
    v70 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v78))
  {
    v81 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v76, v77);
    v87 = v43;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v44 = v15;
    v46 = v45;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v45);
    LOBYTE(v85) = v47;
    v48 = v46;
    v15 = v44;
    v79 = mlir::anec::getIndexFromDim(4, v48);
    v80 = v49;
    v71 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v78))
  {
    v81 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v74, v75);
    v87 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v85) = v53;
    v79 = mlir::anec::getIndexFromDim(4, v52);
    v80 = v54;
    v70 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  ArgOperands = 0;
  v55 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v25, v16, &v71, &v70) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v72);
  if (v56 >= v27)
  {
    v81 = v55;
    ArgOperands = mlir::getRankPromotionTypeForANE(v72, v73);
    v87 = v57;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v59 = v58;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v58);
    LOBYTE(v85) = v60;
    v79 = mlir::anec::getIndexFromDim(3, v59);
    v80 = v61;
    v55 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v25, v16, &v81, &IndexFromDim, &v79) - 16;
  }

  v62 = v78;
  IndexFromDim = v55;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v67, v62, ArgOperands, v87);
  return 1;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::DegammaOp,mlir::anec::Degamma>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0E7B0;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF25614()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::DegammaOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::DegammaOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DegammaOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::DegammaOp,mlir::anec::Degamma>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Degamma,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Degamma,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Degamma,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::DiracOp,mlir::anec::Dirac>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0E820;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF26248()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::DiracOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::DiracOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DiracOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::DiracOp,mlir::anec::Dirac>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Dirac,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Dirac,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Dirac,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::GeluOp,mlir::anec::Gelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0E890;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF26E7C()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::GeluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::GeluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::GeluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::GeluOp,mlir::anec::Gelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Gelu,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Gelu,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Gelu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReluOp,mlir::anec::Relu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0E900;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF27AB0()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReluOp,mlir::anec::Relu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Relu,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Relu,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Relu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Relu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Relu,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::RoundOp,mlir::anec::RoundNearest>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0E970;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF286E4()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::RoundOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::RoundOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::RoundOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::RoundOp,mlir::anec::RoundNearest>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::RoundNearest,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::RoundNearest,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::RoundNearest,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::RoundNearest,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RoundNearest,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SquareOp,mlir::anec::ElementwiseSquare>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0E9E0;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF29318()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::SquareOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SquareOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SquareOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SquareOp,mlir::anec::ElementwiseSquare>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::ElementwiseSquare,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseSquare,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSquare,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseSquare,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSquare,void>::id)
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

void mlir::anonymous namespace::ConvertSquareA13Minus::~ConvertSquareA13Minus(mlir::_anonymous_namespace_::ConvertSquareA13Minus *this)
{
  *this = &unk_1F5B0E9E0;
  v2 = *(this + 16);
  v3 = *(this + 34);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(this + 16);
  }

  if (v2 != (this + 144))
  {
    free(v2);
  }

  v7 = *(this + 30);
  v8 = *(this + 13);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(this + 13);
    v10 = (32 * *(this + 30));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF29F4C()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

void mlir::anonymous namespace::ConvertSquareA14Plus::~ConvertSquareA14Plus(mlir::_anonymous_namespace_::ConvertSquareA14Plus *this)
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

uint64_t mlir::anonymous namespace::ConvertSquareA14Plus::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::StringAttr **a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v37 = &v39;
  v38 = 0x100000000;
  if (v6 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, &v39, v6, 8);
    v8 = v38;
    v9 = v37;
    RankPromotionTypeForANE = v7;
    v41 = 0;
    goto LABEL_5;
  }

  RankPromotionTypeForANE = v7;
  v41 = 0;
  if (v6)
  {
    v8 = 0;
    v9 = &v39;
LABEL_5:
    v10 = 0;
    v11 = &v9[v8];
    do
    {
      *v11++ = mlir::ValueRange::dereference_iterator(&RankPromotionTypeForANE, v10);
      v10 = v41 + 1;
      v41 = v10;
    }

    while (v10 != v6);
    v12 = v38;
    v13 = v37;
    goto LABEL_8;
  }

  v12 = 0;
  v13 = &v39;
LABEL_8:
  LODWORD(v38) = v12 + v6;
  v35[0] = *v13;
  v35[1] = v35[0];
  mlir::ValueRange::ValueRange(&v36, v35, 2uLL);
  v43 = v36;
  v42 = 261;
  RankPromotionTypeForANE = "mul";
  v41 = 3;
  StringAttr = mlir::Builder::getStringAttr(a4 + 1, &RankPromotionTypeForANE);
  F32FloatAttr = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v14);
  v32 = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v15);
  v31 = mlir::Builder::getF32FloatAttr(a4 + 1, 0.0, v16);
  BoolAttr = mlir::Builder::getBoolAttr(a4 + 1, 0);
  v29 = mlir::Builder::getBoolAttr(a4 + 1, 0);
  if (*(a2 + 36))
  {
    v17 = a2 - 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v18)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
  v41 = v20;
  isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
  if (mlir::Type::isSignlessInteger(&isSplat, 1))
  {
    isSplat = mlir::Builder::getIntegerType(a4 + 1, 8, 1);
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v27 = mlir::MemRefType::get(ArgAttrsAttr, v22, isSplat, 0, 0, 0);
  v26 = mlir::ValueRange::dereference_iterator(&v43, 0);
  v25 = mlir::ValueRange::dereference_iterator(&v43, 1);
  v23 = mlir::OpBuilder::create<mlir::anec::ScaledElementWise,mlir::MemRefType &,mlir::Value,mlir::Value,mlir::StringAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::BoolAttr &,mlir::BoolAttr &>((a4 + 1), *(a2 + 24), &v27, &v26, &v25, &StringAttr, &F32FloatAttr, &v32, &v31, &BoolAttr, &v29);
  (*(*a4 + 1))(a4, a2, v23);
  if (v37 != &v39)
  {
    free(v37);
  }

  return 1;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SquareRootOp,mlir::anec::Sqrt>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0EB30;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF2A434()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::SquareRootOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SquareRootOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SquareRootOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SquareRootOp,mlir::anec::Sqrt>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Sqrt,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Sqrt,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Sqrt,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Sqrt,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Sqrt,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SwishOp,mlir::anec::Swish>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0EBA0;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF2B068()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::SwishOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SwishOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SwishOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SwishOp,mlir::anec::Swish>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Swish,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Swish,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Swish,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Swish,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Swish,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::TanhOp,mlir::anec::Tanh>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0EC10;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF2BC9C()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::TanhOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::TanhOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::TanhOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::TanhOp,mlir::anec::Tanh>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Tanh,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Tanh,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Tanh,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Tanh,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Tanh,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqual>::~ConvertBinaryCompare(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqual>::~ConvertBinaryCompare(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::EqualToOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::EqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::EqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqual>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_26;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (!v15)
  {
    v18 = 0;
    if (v25 >= 0x41)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (v18)
    {
      goto LABEL_22;
    }

LABEL_26:
    v20 = mlir::OpBuilder::create<mlir::anec::ElementwiseEqual,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v26);
    ((*a4)[1])(a4, a2, v20);
    matched = 1;
    goto LABEL_27;
  }

  if (v25 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_26;
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 < 0x41)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (!__p)
  {
    goto LABEL_21;
  }

  operator delete[](__p);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_22:
  __p = operator new(0x48uLL);
  v25 = xmmword_1E0982730;
  strcpy(__p, "failed: ConvertBinaryCompare expects the second operand to be non-zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_27:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

uint64_t mlir::detail::constant_int_op_binder_any_splat::match(mlir::detail::constant_int_op_binder_any_splat *this, mlir::Operation *a2)
{
  v20 = 0;
  v22 = &v20;
  result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v22, a2);
  if (result)
  {
    v5 = *(*(*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v7 = *this;
      v8 = v20;
      v9 = *(*v20 + 136);
      result = v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
      if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v8 = 0;
      }

      v21[0] = v8;
      if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        mlir::IntegerAttr::getValue(v21, &v22);
        if (*(v7 + 8) >= 0x41u && *v7)
        {
          operator delete[](*v7);
        }

        *v7 = v22;
        *(v7 + 8) = v23;
        return 1;
      }
    }

    else
    {
      v10 = v20;
      if (mlir::DenseElementsAttr::classof(v20))
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      v22 = v12;
      if (v12)
      {
        v12 = mlir::DenseElementsAttr::isSplat(&v22) ? v10 : 0;
        v19 = v12;
        if (v12)
        {
          v13 = *this;
          mlir::ArrayAttr::getValue(&v19);
          mlir::NamedAttribute::NamedAttribute(&v22, v19, 0);
          this = v19;
          NumElements = mlir::DenseElementsAttr::getNumElements(&v19);
          mlir::NamedAttribute::NamedAttribute(v21, this, NumElements);
          v15 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v22);
          v16 = *(*v15 + 136);
          v17 = v16 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
          LODWORD(this) = v16 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
          if (v16 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v18 = v15;
          }

          else
          {
            v18 = 0;
          }

          v21[0] = v18;
          if (v17)
          {
            mlir::IntegerAttr::getValue(v21, &v22);
            if (*(v13 + 8) >= 0x41u)
            {
              if (*v13)
              {
                operator delete[](*v13);
              }
            }

            *v13 = v22;
            *(v13 + 8) = v23;
          }

          LODWORD(v12) = 1;
        }
      }

      return v12 & this;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseEqual,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqual,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseEqual,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqual,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqualZero>::~ConvertBinaryCompareToZero(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqualZero>::~ConvertBinaryCompareToZero(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqualZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (v15)
  {
    if (v25 >= 0x41)
    {
      if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
      {
        if (__p)
        {
          operator delete[](__p);
        }

        goto LABEL_24;
      }

      v17 = __p;
    }

    else
    {
      v17 = &__p;
    }

    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = 0;
    if (v25 < 0x41)
    {
      goto LABEL_20;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }

LABEL_20:
  if (v18)
  {
    v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::Value>(a4 + 1, *(a2 + 24), v26);
    (*(*a4 + 8))(a4, a2, v19);
    matched = 1;
    goto LABEL_26;
  }

LABEL_24:
  __p = operator new(0x50uLL);
  v25 = xmmword_1E0982740;
  strcpy(__p, "failed: ConvertBinaryCompareToZero expects the second operand to be zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqual>::~ConvertBinaryCompare(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqual>::~ConvertBinaryCompare(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::NotEqualToOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::NotEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::NotEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqual>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_26;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (!v15)
  {
    v18 = 0;
    if (v25 >= 0x41)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (v18)
    {
      goto LABEL_22;
    }

LABEL_26:
    v20 = mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqual,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v26);
    ((*a4)[1])(a4, a2, v20);
    matched = 1;
    goto LABEL_27;
  }

  if (v25 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_26;
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 < 0x41)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (!__p)
  {
    goto LABEL_21;
  }

  operator delete[](__p);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_22:
  __p = operator new(0x48uLL);
  v25 = xmmword_1E0982730;
  strcpy(__p, "failed: ConvertBinaryCompare expects the second operand to be non-zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_27:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqual,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqual,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqual,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqual,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqualZero>::~ConvertBinaryCompareToZero(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqualZero>::~ConvertBinaryCompareToZero(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqualZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (v15)
  {
    if (v25 >= 0x41)
    {
      if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
      {
        if (__p)
        {
          operator delete[](__p);
        }

        goto LABEL_24;
      }

      v17 = __p;
    }

    else
    {
      v17 = &__p;
    }

    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = 0;
    if (v25 < 0x41)
    {
      goto LABEL_20;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }

LABEL_20:
  if (v18)
  {
    v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqualZero,mlir::Value>(a4 + 1, *(a2 + 24), v26);
    ((*a4)[1])(a4, a2, v19);
    matched = 1;
    goto LABEL_26;
  }

LABEL_24:
  __p = operator new(0x50uLL);
  v25 = xmmword_1E0982740;
  strcpy(__p, "failed: ConvertBinaryCompareToZero expects the second operand to be zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThan>::~ConvertBinaryCompare(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThan>::~ConvertBinaryCompare(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::GreaterThanOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::GreaterThanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::GreaterThanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThan>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_26;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (!v15)
  {
    v18 = 0;
    if (v25 >= 0x41)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (v18)
    {
      goto LABEL_22;
    }

LABEL_26:
    v20 = mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThan,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v26);
    ((*a4)[1])(a4, a2, v20);
    matched = 1;
    goto LABEL_27;
  }

  if (v25 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_26;
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 < 0x41)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (!__p)
  {
    goto LABEL_21;
  }

  operator delete[](__p);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_22:
  __p = operator new(0x48uLL);
  v25 = xmmword_1E0982730;
  strcpy(__p, "failed: ConvertBinaryCompare expects the second operand to be non-zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_27:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThan,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThan,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThan,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThan,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThanZero>::~ConvertBinaryCompareToZero(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThanZero>::~ConvertBinaryCompareToZero(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThanZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (v15)
  {
    if (v25 >= 0x41)
    {
      if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
      {
        if (__p)
        {
          operator delete[](__p);
        }

        goto LABEL_24;
      }

      v17 = __p;
    }

    else
    {
      v17 = &__p;
    }

    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = 0;
    if (v25 < 0x41)
    {
      goto LABEL_20;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }

LABEL_20:
  if (v18)
  {
    v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanZero,mlir::Value &>(a4 + 1, *(a2 + 24), v26);
    ((*a4)[1])(a4, a2, v19);
    matched = 1;
    goto LABEL_26;
  }

LABEL_24:
  __p = operator new(0x50uLL);
  v25 = xmmword_1E0982740;
  strcpy(__p, "failed: ConvertBinaryCompareToZero expects the second operand to be zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanZero,mlir::Value &>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanZero,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseGreaterThanEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanZero,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqual>::~ConvertBinaryCompare(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqual>::~ConvertBinaryCompare(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::GreaterThanOrEqualToOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}