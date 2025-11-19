void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)7>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)7>::~ConvertSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v43 = *(a3 + 40);
  v6 = a2[9];
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = a2[9];
  }

  else
  {
    v8 = 0;
  }

  v37 = v7;
  v38 = v8;
  v41[0] = &v42;
  v41[1] = 0x100000000;
  v36 = 0;
  v9 = *(v6 + 56);
  v33[0] = &v36;
  __p = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v33, DefiningOp) & 1) != 0)
  {
    v11 = v36;
    mlir::CallableOpInterface::getArgAttrsAttr(&v37);
    if (mlir::getPositivePromotedAxes(v11, v12, v41, 0, 0))
    {
      v33[0] = mlir::getRankPromotionTypeForANE(v37, v38);
      v33[1] = v13;
      v14 = *(a2[9] + 88);
      __p = 0;
      *&v35 = 0;
      p_p = &__p;
      v40 = v14;
      v15 = mlir::Value::getDefiningOp(&v40);
      if (v15 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v15) & 1) != 0 && (v16 = mlir::getSingleIntValue<int>(__p, v35), (v16 & 0x100000000) != 0))
      {
        v19 = v16;
        v20 = *v41[0];
        v21.var0.var0 = *(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * v20);
        PositiveAxis = mlir::tryGetPositiveAxis(v19, v21, 0, 0, 0);
        if (v23)
        {
          v24 = PositiveAxis;
          v25 = *(a2[9] + 120);
          __p = 0;
          *&v35 = 0;
          p_p = &__p;
          v40 = v25;
          v26 = mlir::Value::getDefiningOp(&v40);
          if (v26)
          {
            if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v26))
            {
              SingleInt = mlir::getSingleIntValue<int>(__p, v35);
              if ((SingleInt & 0x100000000) != 0)
              {
                v28 = SingleInt;
                v29 = a2[3];
                v30 = mlir::ValueRange::dereference_iterator(&v43, 0);
                v31 = v28;
                matched = 1;
                mlir::ConversionPatternRewriter::replaceOp(a4, a2, v32);
                goto LABEL_14;
              }
            }
          }

          __p = operator new(0x40uLL);
          v35 = xmmword_1E09827B0;
          strcpy(__p, "failed: cannot handle a non constant length value on ANEs.");
        }

        else
        {
          __p = operator new(0x40uLL);
          v35 = xmmword_1E0982940;
          strcpy(__p, "failed: could not extract a positive value for start attribute");
        }
      }

      else
      {
        __p = operator new(0x40uLL);
        v35 = xmmword_1E09827A0;
        strcpy(__p, "failed: cannot handle a non constant start value on ANEs.");
      }
    }

    else
    {
      __p = operator new(0x38uLL);
      v35 = xmmword_1E0982900;
      strcpy(__p, "failed: could not extract positive promoted axes");
    }
  }

  else
  {
    __p = operator new(0x38uLL);
    v35 = xmmword_1E09828F0;
    strcpy(__p, "failed: cannot handle a non-constant axis on ANEs.");
  }

  matched = mlir::logMatchFailure(&__p, a2[3], a4);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_14:
  if (v41[0] != &v42)
  {
    free(v41[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)0>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)0>::~ConvertStridedSlice(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::StridedSliceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::StridedSliceOpGenericAdaptorBase::StridedSliceOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::StridedSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::StridedSliceOpGenericAdaptorBase::StridedSliceOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::StridedSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 80);
  v34 = *(a3 + 72);
  v35 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v35 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v34, i) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      i = v35 + 1;
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
    v33 = *(a3 + 80);
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
      v34 = 0;
      v35 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v34 = v18;
    v35 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v34) || !mlir::CallOpInterface::getArgOperands(&v34))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v34);
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v105 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  *&v94[0] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v78);
  v103[0] = v104;
  v103[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_158;
  }

  v101[0] = v102;
  v101[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_156;
  }

  v98 = v100;
  v99 = 0x500000000;
  {
    matched = 0;
    goto LABEL_154;
  }

  if (v99)
  {
    v10 = v98;
    v11 = 8 * v99;
    do
    {
      if (!*v10)
      {
        __p = operator new(0x28uLL);
        v94[0] = xmmword_1E0982750;
        strcpy(__p, "failed: stride must have non-zero value");
        matched = mlir::logMatchFailure(&__p, *(v78 + 24), a4);
        if (SHIBYTE(v94[0]) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_154;
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  __p = v94 + 8;
  *&v94[0] = 0x500000000;
  v96 = 0;
  v97 = 0;
  v95 = &v96;
  v12 = v78;
  Index = mlir::pdl::ResultOp::getIndex(&v78);
  {
    matched = 0;
    goto LABEL_152;
  }

  v87 = v89;
  v88 = 0x500000000;
  v91 = 0;
  v92 = 0;
  v90 = &v91;
  v14 = v78;
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v78);
  {
    matched = 0;
    goto LABEL_150;
  }

  v82 = v84;
  v83 = 0x500000000;
  v85 = 0;
  v86 = 0;
  v84[5] = &v85;
  v16 = v78;
  Groups = mlir::mps::Conv3DOp::getGroups(&v78);
  {
    matched = 0;
    goto LABEL_149;
  }

  v18 = mlir::ValueRange::dereference_iterator(&v105, 0);
  v77 = v18;
  v19 = (*(*(*(v78 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  v76[0] = mlir::getRankPromotionTypeForANE(v19, v20);
  v76[1] = v22;
  mlir::CallableOpInterface::getArgAttrsAttr(v76);
  if (v23 < 1)
  {
LABEL_113:
    if (v83 || v86)
    {
      v53 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v53)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
      }

      else
      {
        v54 = 0;
      }

      v81[0] = v53;
      v81[1] = v54;
      v79 = v80 + 8;
      *&v80[0] = 0x400000000;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v81);
      if (v56)
      {
        v57 = 0;
        v58 = &ArgAttrsAttr[v56];
        do
        {
          if (v86)
          {
            v59 = v85;
            if (v85)
            {
              v60 = &v85;
              do
              {
                if (v59[4] >= v57)
                {
                  v60 = v59;
                }

                v59 = v59[v59[4] < v57];
              }

              while (v59);
              if (v60 != &v85 && v57 >= v60[4])
              {
                goto LABEL_126;
              }
            }
          }

          else if (v83)
          {
            v61 = v82;
            v62 = 8 * v83;
            while (*v61 != v57)
            {
              ++v61;
              v62 -= 8;
              if (!v62)
              {
                goto LABEL_140;
              }
            }

            if (v62)
            {
              goto LABEL_126;
            }
          }

LABEL_140:
          v63 = *ArgAttrsAttr;
          v64 = LODWORD(v80[0]);
          if (LODWORD(v80[0]) >= DWORD1(v80[0]))
          {
            v65 = ArgAttrsAttr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v80 + 8, LODWORD(v80[0]) + 1, 8);
            ArgAttrsAttr = v65;
            v64 = LODWORD(v80[0]);
          }

          *(v79 + v64) = v63;
          ++LODWORD(v80[0]);
LABEL_126:
          ++v57;
          ++ArgAttrsAttr;
        }

        while (ArgAttrsAttr != v58);
      }

      v66 = v79;
      v67 = LODWORD(v80[0]);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
      v69 = mlir::MemRefType::get(v66, v67, ElementTypeOrSelf, 0, 0, 0);
      if (v69)
      {
        v70 = v69;
        v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
        v69 = v70;
      }

      else
      {
        v71 = 0;
      }

      v75[0] = mlir::getRankPromotionTypeForANE(v69, v71);
      v75[1] = v72;
      v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v78 + 24), v75, &v77) - 16;
      v77 = v18;
      if (v79 != v80 + 8)
      {
        free(v79);
        v18 = v77;
      }
    }

    v73 = v78;
    v81[0] = v18;
    matched = 1;
    mlir::ValueRange::ValueRange(&v79, v81, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v73, v79, *&v80[0]);
    goto LABEL_149;
  }

  v24 = 0;
  while (1)
  {
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
    v27 = *(v26 + 8 * v24);
    v28 = *(v103[0] + v24);
    v29 = *(v101[0] + v24);
    v30 = *(v98 + v24);
    v31 = v29 + v28;
    if (v29 == -1)
    {
      v31 = *(v26 + 8 * v24);
    }

    if (IsSize)
    {
      v29 = v31;
    }

    if (v97)
    {
      v32 = v96;
      if (!v96)
      {
        goto LABEL_51;
      }

      v33 = &v96;
      do
      {
        if (v32[4] >= v24)
        {
          v33 = v32;
        }

        v32 = v32[v32[4] < v24];
      }

      while (v32);
      if (v33 == &v96 || v24 < v33[4])
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!LODWORD(v94[0]))
      {
        goto LABEL_51;
      }

      v34 = __p;
      v35 = 8 * LODWORD(v94[0]);
      while (*v34 != v24)
      {
        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_51;
        }
      }

      if (!v35)
      {
LABEL_51:
        v36 = (v27 & (v28 >> 63)) + v28;
        goto LABEL_52;
      }
    }

    v36 = v27 - 1;
    if (v30 > 0)
    {
      v36 = 0;
    }

LABEL_52:
    if (v92)
    {
      v37 = v91;
      if (!v91)
      {
        goto LABEL_70;
      }

      v38 = &v91;
      do
      {
        if (v37[4] >= v24)
        {
          v38 = v37;
        }

        v37 = v37[v37[4] < v24];
      }

      while (v37);
      if (v38 == &v91 || v24 < v38[4])
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v88)
      {
        goto LABEL_70;
      }

      v39 = v87;
      v40 = 8 * v88;
      while (*v39 != v24)
      {
        ++v39;
        v40 -= 8;
        if (!v40)
        {
          goto LABEL_70;
        }
      }

      if (!v40)
      {
LABEL_70:
        v41 = (v27 & (v29 >> 63)) + v29;
        goto LABEL_71;
      }
    }

    v41 = v30 <= 0 ? -1 : *(v26 + 8 * v24);
LABEL_71:
    if (v86)
    {
      v42 = v85;
      if (!v85)
      {
        goto LABEL_79;
      }

      v43 = &v85;
      do
      {
        if (v42[4] >= v24)
        {
          v43 = v42;
        }

        v42 = v42[v42[4] < v24];
      }

      while (v42);
      if (v43 == &v85 || v24 < v43[4])
      {
LABEL_79:
        v43 = &v85;
      }

      v44 = v43 == &v85;
    }

    else
    {
      v45 = v82;
      if (v83)
      {
        v46 = 8 * v83;
        while (*v45 != v24)
        {
          ++v45;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
LABEL_85:
        v45 = &v82[v83];
      }

      v44 = v45 == &v82[v83];
    }

    if (!v44)
    {
      v41 = v36 + 1;
    }

    if (v30 >= 1 && v41 < v36 || v30 < 0 && v41 > v36)
    {
      v79 = operator new(0x40uLL);
      v80[0] = xmmword_1E0982780;
      strcpy(v79, "failed: invalid begin and end values based on stride direction.");
      goto LABEL_119;
    }

    if (v36 < 0 || v36 >= v27 || v41 < -1 || v41 > v27)
    {
      break;
    }

    v48 = vcvtps_s32_f32((v41 - v36) / v30);
    if (v41 < v36)
    {
      v49 = v41 + 1;
    }

    else
    {
      v49 = v36;
    }

    if (v48 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = -v48;
    }

    if (v50 != v27 || v30 != 1)
    {
      if (v50 != v27 && v30 < 0)
      {
        v49 = 0;
        v18 = v52 - 16;
      }

      v77 = v18;
    }

    v24 = (v24 + 1);
    mlir::CallableOpInterface::getArgAttrsAttr(v76);
    if (v24 >= v25)
    {
      goto LABEL_113;
    }
  }

  v79 = operator new(0x40uLL);
  v80[0] = xmmword_1E09827C0;
  strcpy(v79, "failed: invalid begin and/or end values of strided slice op.");
LABEL_119:
  matched = mlir::logMatchFailure(&v79, *(v78 + 24), a4);
  if (SHIBYTE(v80[0]) < 0)
  {
    operator delete(v79);
  }

LABEL_149:
  llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
LABEL_150:
  std::__tree<unsigned long long>::destroy(&v90, v91);
  if (v87 != v89)
  {
    free(v87);
  }

LABEL_152:
  std::__tree<unsigned long long>::destroy(&v95, v96);
  if (__p != v94 + 8)
  {
    free(__p);
  }

LABEL_154:
  if (v98 != v100)
  {
    free(v98);
  }

LABEL_156:
  if (v101[0] != v102)
  {
    free(v101[0]);
  }

LABEL_158:
  if (v103[0] != v104)
  {
    free(v103[0]);
  }

  return matched;
}

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)0>::promoteAxesValues(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  v22 = &v23;
  __p = a3;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v22, DefiningOp) & 1) != 0)
  {
    matched = 1;
    mlir::getIntValues<long long>(v23, v24, a5, 1);
    v12 = *(a5 + 8);
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        matched = 1;
        llvm::SmallVectorImpl<unsigned long long>::insert(a5, *a5 + 8, 1uLL, a4);
        v18 = *a5;
      }

      else
      {
        if (v12 != 3)
        {
          return matched;
        }

        Instance = mlir::ANEPropertiesRegistry::getInstance(v11);
        Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(a1 + 8));
        if (!Properties || *Properties != 1)
        {
          matched = 1;
          llvm::SmallVectorImpl<unsigned long long>::insert(a5, *a5 + 16, 1uLL, a4);
          return matched;
        }

        v18 = *a5;
        matched = 1;
      }

      llvm::SmallVectorImpl<unsigned long long>::insert(a5, v18, 1uLL, a4);
      return matched;
    }

    if (!v12)
    {
      v13 = *a5;
      v14 = a5;
      v15 = 4;
      goto LABEL_15;
    }

    if (v12 == 1)
    {
      v13 = *a5;
      v14 = a5;
      v15 = 3;
LABEL_15:
      llvm::SmallVectorImpl<unsigned long long>::insert(v14, v13, v15, a4);
      return 1;
    }
  }

  else
  {
    __p = operator new(0x28uLL);
    v21 = xmmword_1E0982950;
    strcpy(__p, "failed: axes value must be a constant");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a1);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }
  }

  return matched;
}

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)0>::getFlagsToPositivePromotedAxes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x500000000;
  if (a4 < 1)
  {
    v14 = 0;
    v13 = v27;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    for (i = 0; i < a4; v10 = ++i)
    {
      if ((a3 >> i))
      {
        if (v9 >= HIDWORD(v26))
        {
          v12 = a3;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v9 + 1, 8);
          a3 = v12;
          v9 = v26;
        }

        *(v25 + v9) = v10;
        v9 = v26 + 1;
        LODWORD(v26) = v26 + 1;
      }
    }

    v13 = v25;
    v14 = v9;
  }

  v22 = v24;
  v23 = 0x500000000;
  if (mlir::getPositivePromotedAxes(v13, v14, a4, &v22, 0, 0))
  {
    v15 = *(a5 + 64);
    *(a5 + 8) = 0;
    std::__tree<unsigned long long>::destroy(a5 + 56, v15);
    *(a5 + 64) = 0;
    *(a5 + 72) = 0;
    *(a5 + 56) = a5 + 64;
    if (v23)
    {
      v16 = v22;
      v17 = 8 * v23;
      do
      {
        llvm::SmallSet<long long,5u,std::less<long long>>::insertImpl<long long const&>(a5, v16++, &__p);
        v17 -= 8;
      }

      while (v17);
    }

    matched = 1;
  }

  else
  {
    __p = operator new(0x38uLL);
    v21 = xmmword_1E0982900;
    strcpy(__p, "failed: could not extract positive promoted axes");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a1);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }
  }

  if (v22 != v24)
  {
    free(v22);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return matched;
}

uint64_t llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(uint64_t a1)
{
  std::__tree<unsigned long long>::destroy(a1 + 56, *(a1 + 64));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

void llvm::SmallSet<long long,5u,std::less<long long>>::insertImpl<long long const&>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 72))
  {
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *a2;
    if (!v15)
    {
      goto LABEL_22;
    }

    v17 = 8 * v15;
    v18 = 8 * v15;
    v8 = *a1;
    while (*v8 != v16)
    {
      ++v8;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_21;
      }
    }

    if (v18)
    {
      v19 = 0;
      v13 = 1;
      goto LABEL_26;
    }

LABEL_21:
    if (v15 <= 4)
    {
LABEL_22:
      if (v15 >= *(a1 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v15 + 1, 8);
        v15 = *(a1 + 8);
        v14 = *a1;
      }

      v14[v15] = v16;
      v20 = *(a1 + 8) + 1;
      *(a1 + 8) = v20;
      v8 = (*a1 + 8 * v20 - 8);
      v13 = 1;
      goto LABEL_25;
    }

    v6 = (a1 + 64);
    do
    {
      v23 = std::__tree<long long>::__find_equal<long long>((a1 + 56), (a1 + 64), &v34, &v33, v14);
      if (!*v23)
      {
        v24 = v23;
        v25 = operator new(0x28uLL);
        v25[4] = *v14;
        v26 = v34;
        *v25 = 0;
        v25[1] = 0;
        v25[2] = v26;
        *v24 = v25;
        v27 = **(a1 + 56);
        if (v27)
        {
          *(a1 + 56) = v27;
          v22 = *v24;
        }

        else
        {
          v22 = v25;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 64), v22);
        ++*(a1 + 72);
      }

      ++v14;
      v17 -= 8;
    }

    while (v17);
    *(a1 + 8) = 0;
    v28 = *(a1 + 64);
    v8 = (a1 + 64);
    v29 = *a2;
    if (v28)
    {
      while (1)
      {
        while (1)
        {
          v8 = v28;
          v30 = v28[4];
          if (v29 >= v30)
          {
            break;
          }

          v28 = *v8;
          v6 = v8;
          if (!*v8)
          {
            goto LABEL_41;
          }
        }

        if (v30 >= v29)
        {
          break;
        }

        v28 = v8[1];
        if (!v28)
        {
          v6 = v8 + 1;
          goto LABEL_41;
        }
      }

      v13 = 0;
      goto LABEL_25;
    }

LABEL_41:
    v31 = v8;
    v8 = operator new(0x28uLL);
    v8[4] = v29;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v31;
    *v6 = v8;
    v32 = **(a1 + 56);
    v12 = v8;
    if (!v32)
    {
LABEL_12:
      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 64), v12);
      v13 = 0;
      ++*(a1 + 72);
LABEL_25:
      v19 = 1;
      goto LABEL_26;
    }

    *(a1 + 56) = v32;
LABEL_11:
    v12 = *v6;
    goto LABEL_12;
  }

  v6 = (a1 + 64);
  v5 = *(a1 + 64);
  v7 = *a2;
  if (!v5)
  {
    v8 = (a1 + 64);
LABEL_9:
    v10 = v8;
    v8 = operator new(0x28uLL);
    v8[4] = v7;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v10;
    *v6 = v8;
    v11 = **(a1 + 56);
    v12 = v8;
    if (!v11)
    {
      goto LABEL_12;
    }

    *(a1 + 56) = v11;
    goto LABEL_11;
  }

  while (1)
  {
    while (1)
    {
      v8 = v5;
      v9 = v5[4];
      if (v7 >= v9)
      {
        break;
      }

      v5 = *v8;
      v6 = v8;
      if (!*v8)
      {
        goto LABEL_9;
      }
    }

    if (v9 >= v7)
    {
      break;
    }

    v5 = v8[1];
    if (!v5)
    {
      v6 = v8 + 1;
      goto LABEL_9;
    }
  }

  v13 = 0;
  v19 = 0;
LABEL_26:
  *(a3 + 8) = v13;
  *a3 = v8;
  *(a3 + 16) = v19;
}

void *std::__tree<long long>::__find_equal<long long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
    }

    else
    {
      v19 = a1 + 1;
    }

LABEL_25:
    *a3 = v19;
    return v5;
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
      }

      else
      {
        v23 = a1 + 1;
      }

LABEL_41:
      *a3 = v23;
      return v5;
    }
  }
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)1>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)1>::~ConvertStridedSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v105 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  *&v94[0] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v78);
  v103[0] = v104;
  v103[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_158;
  }

  v101[0] = v102;
  v101[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_156;
  }

  v98 = v100;
  v99 = 0x500000000;
  {
    matched = 0;
    goto LABEL_154;
  }

  if (v99)
  {
    v10 = v98;
    v11 = 8 * v99;
    do
    {
      if (!*v10)
      {
        __p = operator new(0x28uLL);
        v94[0] = xmmword_1E0982750;
        strcpy(__p, "failed: stride must have non-zero value");
        matched = mlir::logMatchFailure(&__p, *(v78 + 24), a4);
        if (SHIBYTE(v94[0]) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_154;
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  __p = v94 + 8;
  *&v94[0] = 0x500000000;
  v96 = 0;
  v97 = 0;
  v95 = &v96;
  v12 = v78;
  Index = mlir::pdl::ResultOp::getIndex(&v78);
  {
    matched = 0;
    goto LABEL_152;
  }

  v87 = v89;
  v88 = 0x500000000;
  v91 = 0;
  v92 = 0;
  v90 = &v91;
  v14 = v78;
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v78);
  {
    matched = 0;
    goto LABEL_150;
  }

  v82 = v84;
  v83 = 0x500000000;
  v85 = 0;
  v86 = 0;
  v84[5] = &v85;
  v16 = v78;
  Groups = mlir::mps::Conv3DOp::getGroups(&v78);
  {
    matched = 0;
    goto LABEL_149;
  }

  v18 = mlir::ValueRange::dereference_iterator(&v105, 0);
  v77 = v18;
  v19 = (*(*(*(v78 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  v76[0] = mlir::getRankPromotionTypeForANE(v19, v20);
  v76[1] = v22;
  mlir::CallableOpInterface::getArgAttrsAttr(v76);
  if (v23 < 1)
  {
LABEL_113:
    if (v83 || v86)
    {
      v53 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v53)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
      }

      else
      {
        v54 = 0;
      }

      v81[0] = v53;
      v81[1] = v54;
      v79 = v80 + 8;
      *&v80[0] = 0x400000000;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v81);
      if (v56)
      {
        v57 = 0;
        v58 = &ArgAttrsAttr[v56];
        do
        {
          if (v86)
          {
            v59 = v85;
            if (v85)
            {
              v60 = &v85;
              do
              {
                if (v59[4] >= v57)
                {
                  v60 = v59;
                }

                v59 = v59[v59[4] < v57];
              }

              while (v59);
              if (v60 != &v85 && v57 >= v60[4])
              {
                goto LABEL_126;
              }
            }
          }

          else if (v83)
          {
            v61 = v82;
            v62 = 8 * v83;
            while (*v61 != v57)
            {
              ++v61;
              v62 -= 8;
              if (!v62)
              {
                goto LABEL_140;
              }
            }

            if (v62)
            {
              goto LABEL_126;
            }
          }

LABEL_140:
          v63 = *ArgAttrsAttr;
          v64 = LODWORD(v80[0]);
          if (LODWORD(v80[0]) >= DWORD1(v80[0]))
          {
            v65 = ArgAttrsAttr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v80 + 8, LODWORD(v80[0]) + 1, 8);
            ArgAttrsAttr = v65;
            v64 = LODWORD(v80[0]);
          }

          *(v79 + v64) = v63;
          ++LODWORD(v80[0]);
LABEL_126:
          ++v57;
          ++ArgAttrsAttr;
        }

        while (ArgAttrsAttr != v58);
      }

      v66 = v79;
      v67 = LODWORD(v80[0]);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
      v69 = mlir::MemRefType::get(v66, v67, ElementTypeOrSelf, 0, 0, 0);
      if (v69)
      {
        v70 = v69;
        v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
        v69 = v70;
      }

      else
      {
        v71 = 0;
      }

      v75[0] = mlir::getRankPromotionTypeForANE(v69, v71);
      v75[1] = v72;
      v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v78 + 24), v75, &v77) - 16;
      v77 = v18;
      if (v79 != v80 + 8)
      {
        free(v79);
        v18 = v77;
      }
    }

    v73 = v78;
    v81[0] = v18;
    matched = 1;
    mlir::ValueRange::ValueRange(&v79, v81, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v73, v79, *&v80[0]);
    goto LABEL_149;
  }

  v24 = 0;
  while (1)
  {
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
    v27 = *(v26 + 8 * v24);
    v28 = *(v103[0] + v24);
    v29 = *(v101[0] + v24);
    v30 = *(v98 + v24);
    v31 = v29 + v28;
    if (v29 == -1)
    {
      v31 = *(v26 + 8 * v24);
    }

    if (IsSize)
    {
      v29 = v31;
    }

    if (v97)
    {
      v32 = v96;
      if (!v96)
      {
        goto LABEL_51;
      }

      v33 = &v96;
      do
      {
        if (v32[4] >= v24)
        {
          v33 = v32;
        }

        v32 = v32[v32[4] < v24];
      }

      while (v32);
      if (v33 == &v96 || v24 < v33[4])
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!LODWORD(v94[0]))
      {
        goto LABEL_51;
      }

      v34 = __p;
      v35 = 8 * LODWORD(v94[0]);
      while (*v34 != v24)
      {
        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_51;
        }
      }

      if (!v35)
      {
LABEL_51:
        v36 = (v27 & (v28 >> 63)) + v28;
        goto LABEL_52;
      }
    }

    v36 = v27 - 1;
    if (v30 > 0)
    {
      v36 = 0;
    }

LABEL_52:
    if (v92)
    {
      v37 = v91;
      if (!v91)
      {
        goto LABEL_70;
      }

      v38 = &v91;
      do
      {
        if (v37[4] >= v24)
        {
          v38 = v37;
        }

        v37 = v37[v37[4] < v24];
      }

      while (v37);
      if (v38 == &v91 || v24 < v38[4])
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v88)
      {
        goto LABEL_70;
      }

      v39 = v87;
      v40 = 8 * v88;
      while (*v39 != v24)
      {
        ++v39;
        v40 -= 8;
        if (!v40)
        {
          goto LABEL_70;
        }
      }

      if (!v40)
      {
LABEL_70:
        v41 = (v27 & (v29 >> 63)) + v29;
        goto LABEL_71;
      }
    }

    v41 = v30 <= 0 ? -1 : *(v26 + 8 * v24);
LABEL_71:
    if (v86)
    {
      v42 = v85;
      if (!v85)
      {
        goto LABEL_79;
      }

      v43 = &v85;
      do
      {
        if (v42[4] >= v24)
        {
          v43 = v42;
        }

        v42 = v42[v42[4] < v24];
      }

      while (v42);
      if (v43 == &v85 || v24 < v43[4])
      {
LABEL_79:
        v43 = &v85;
      }

      v44 = v43 == &v85;
    }

    else
    {
      v45 = v82;
      if (v83)
      {
        v46 = 8 * v83;
        while (*v45 != v24)
        {
          ++v45;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
LABEL_85:
        v45 = &v82[v83];
      }

      v44 = v45 == &v82[v83];
    }

    if (!v44)
    {
      v41 = v36 + 1;
    }

    if (v30 >= 1 && v41 < v36 || v30 < 0 && v41 > v36)
    {
      v79 = operator new(0x40uLL);
      v80[0] = xmmword_1E0982780;
      strcpy(v79, "failed: invalid begin and end values based on stride direction.");
      goto LABEL_119;
    }

    if (v36 < 0 || v36 >= v27 || v41 < -1 || v41 > v27)
    {
      break;
    }

    v48 = vcvtps_s32_f32((v41 - v36) / v30);
    if (v41 < v36)
    {
      v49 = v41 + 1;
    }

    else
    {
      v49 = v36;
    }

    if (v48 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = -v48;
    }

    if (v50 != v27 || v30 != 1)
    {
      if (v50 != v27 && v30 < 0)
      {
        v49 = 0;
        v18 = v52 - 16;
      }

      v77 = v18;
    }

    v24 = (v24 + 1);
    mlir::CallableOpInterface::getArgAttrsAttr(v76);
    if (v24 >= v25)
    {
      goto LABEL_113;
    }
  }

  v79 = operator new(0x40uLL);
  v80[0] = xmmword_1E09827C0;
  strcpy(v79, "failed: invalid begin and/or end values of strided slice op.");
LABEL_119:
  matched = mlir::logMatchFailure(&v79, *(v78 + 24), a4);
  if (SHIBYTE(v80[0]) < 0)
  {
    operator delete(v79);
  }

LABEL_149:
  llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
LABEL_150:
  std::__tree<unsigned long long>::destroy(&v90, v91);
  if (v87 != v89)
  {
    free(v87);
  }

LABEL_152:
  std::__tree<unsigned long long>::destroy(&v95, v96);
  if (__p != v94 + 8)
  {
    free(__p);
  }

LABEL_154:
  if (v98 != v100)
  {
    free(v98);
  }

LABEL_156:
  if (v101[0] != v102)
  {
    free(v101[0]);
  }

LABEL_158:
  if (v103[0] != v104)
  {
    free(v103[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)2>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)2>::~ConvertStridedSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v105 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  *&v94[0] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v78);
  v103[0] = v104;
  v103[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_158;
  }

  v101[0] = v102;
  v101[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_156;
  }

  v98 = v100;
  v99 = 0x500000000;
  {
    matched = 0;
    goto LABEL_154;
  }

  if (v99)
  {
    v10 = v98;
    v11 = 8 * v99;
    do
    {
      if (!*v10)
      {
        __p = operator new(0x28uLL);
        v94[0] = xmmword_1E0982750;
        strcpy(__p, "failed: stride must have non-zero value");
        matched = mlir::logMatchFailure(&__p, *(v78 + 24), a4);
        if (SHIBYTE(v94[0]) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_154;
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  __p = v94 + 8;
  *&v94[0] = 0x500000000;
  v96 = 0;
  v97 = 0;
  v95 = &v96;
  v12 = v78;
  Index = mlir::pdl::ResultOp::getIndex(&v78);
  {
    matched = 0;
    goto LABEL_152;
  }

  v87 = v89;
  v88 = 0x500000000;
  v91 = 0;
  v92 = 0;
  v90 = &v91;
  v14 = v78;
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v78);
  {
    matched = 0;
    goto LABEL_150;
  }

  v82 = v84;
  v83 = 0x500000000;
  v85 = 0;
  v86 = 0;
  v84[5] = &v85;
  v16 = v78;
  Groups = mlir::mps::Conv3DOp::getGroups(&v78);
  {
    matched = 0;
    goto LABEL_149;
  }

  v18 = mlir::ValueRange::dereference_iterator(&v105, 0);
  v77 = v18;
  v19 = (*(*(*(v78 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  v76[0] = mlir::getRankPromotionTypeForANE(v19, v20);
  v76[1] = v22;
  mlir::CallableOpInterface::getArgAttrsAttr(v76);
  if (v23 < 1)
  {
LABEL_113:
    if (v83 || v86)
    {
      v53 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v53)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
      }

      else
      {
        v54 = 0;
      }

      v81[0] = v53;
      v81[1] = v54;
      v79 = v80 + 8;
      *&v80[0] = 0x400000000;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v81);
      if (v56)
      {
        v57 = 0;
        v58 = &ArgAttrsAttr[v56];
        do
        {
          if (v86)
          {
            v59 = v85;
            if (v85)
            {
              v60 = &v85;
              do
              {
                if (v59[4] >= v57)
                {
                  v60 = v59;
                }

                v59 = v59[v59[4] < v57];
              }

              while (v59);
              if (v60 != &v85 && v57 >= v60[4])
              {
                goto LABEL_126;
              }
            }
          }

          else if (v83)
          {
            v61 = v82;
            v62 = 8 * v83;
            while (*v61 != v57)
            {
              ++v61;
              v62 -= 8;
              if (!v62)
              {
                goto LABEL_140;
              }
            }

            if (v62)
            {
              goto LABEL_126;
            }
          }

LABEL_140:
          v63 = *ArgAttrsAttr;
          v64 = LODWORD(v80[0]);
          if (LODWORD(v80[0]) >= DWORD1(v80[0]))
          {
            v65 = ArgAttrsAttr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v80 + 8, LODWORD(v80[0]) + 1, 8);
            ArgAttrsAttr = v65;
            v64 = LODWORD(v80[0]);
          }

          *(v79 + v64) = v63;
          ++LODWORD(v80[0]);
LABEL_126:
          ++v57;
          ++ArgAttrsAttr;
        }

        while (ArgAttrsAttr != v58);
      }

      v66 = v79;
      v67 = LODWORD(v80[0]);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
      v69 = mlir::MemRefType::get(v66, v67, ElementTypeOrSelf, 0, 0, 0);
      if (v69)
      {
        v70 = v69;
        v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
        v69 = v70;
      }

      else
      {
        v71 = 0;
      }

      v75[0] = mlir::getRankPromotionTypeForANE(v69, v71);
      v75[1] = v72;
      v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v78 + 24), v75, &v77) - 16;
      v77 = v18;
      if (v79 != v80 + 8)
      {
        free(v79);
        v18 = v77;
      }
    }

    v73 = v78;
    v81[0] = v18;
    matched = 1;
    mlir::ValueRange::ValueRange(&v79, v81, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v73, v79, *&v80[0]);
    goto LABEL_149;
  }

  v24 = 0;
  while (1)
  {
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
    v27 = *(v26 + 8 * v24);
    v28 = *(v103[0] + v24);
    v29 = *(v101[0] + v24);
    v30 = *(v98 + v24);
    v31 = v29 + v28;
    if (v29 == -1)
    {
      v31 = *(v26 + 8 * v24);
    }

    if (IsSize)
    {
      v29 = v31;
    }

    if (v97)
    {
      v32 = v96;
      if (!v96)
      {
        goto LABEL_51;
      }

      v33 = &v96;
      do
      {
        if (v32[4] >= v24)
        {
          v33 = v32;
        }

        v32 = v32[v32[4] < v24];
      }

      while (v32);
      if (v33 == &v96 || v24 < v33[4])
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!LODWORD(v94[0]))
      {
        goto LABEL_51;
      }

      v34 = __p;
      v35 = 8 * LODWORD(v94[0]);
      while (*v34 != v24)
      {
        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_51;
        }
      }

      if (!v35)
      {
LABEL_51:
        v36 = (v27 & (v28 >> 63)) + v28;
        goto LABEL_52;
      }
    }

    v36 = v27 - 1;
    if (v30 > 0)
    {
      v36 = 0;
    }

LABEL_52:
    if (v92)
    {
      v37 = v91;
      if (!v91)
      {
        goto LABEL_70;
      }

      v38 = &v91;
      do
      {
        if (v37[4] >= v24)
        {
          v38 = v37;
        }

        v37 = v37[v37[4] < v24];
      }

      while (v37);
      if (v38 == &v91 || v24 < v38[4])
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v88)
      {
        goto LABEL_70;
      }

      v39 = v87;
      v40 = 8 * v88;
      while (*v39 != v24)
      {
        ++v39;
        v40 -= 8;
        if (!v40)
        {
          goto LABEL_70;
        }
      }

      if (!v40)
      {
LABEL_70:
        v41 = (v27 & (v29 >> 63)) + v29;
        goto LABEL_71;
      }
    }

    v41 = v30 <= 0 ? -1 : *(v26 + 8 * v24);
LABEL_71:
    if (v86)
    {
      v42 = v85;
      if (!v85)
      {
        goto LABEL_79;
      }

      v43 = &v85;
      do
      {
        if (v42[4] >= v24)
        {
          v43 = v42;
        }

        v42 = v42[v42[4] < v24];
      }

      while (v42);
      if (v43 == &v85 || v24 < v43[4])
      {
LABEL_79:
        v43 = &v85;
      }

      v44 = v43 == &v85;
    }

    else
    {
      v45 = v82;
      if (v83)
      {
        v46 = 8 * v83;
        while (*v45 != v24)
        {
          ++v45;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
LABEL_85:
        v45 = &v82[v83];
      }

      v44 = v45 == &v82[v83];
    }

    if (!v44)
    {
      v41 = v36 + 1;
    }

    if (v30 >= 1 && v41 < v36 || v30 < 0 && v41 > v36)
    {
      v79 = operator new(0x40uLL);
      v80[0] = xmmword_1E0982780;
      strcpy(v79, "failed: invalid begin and end values based on stride direction.");
      goto LABEL_119;
    }

    if (v36 < 0 || v36 >= v27 || v41 < -1 || v41 > v27)
    {
      break;
    }

    v48 = vcvtps_s32_f32((v41 - v36) / v30);
    if (v41 < v36)
    {
      v49 = v41 + 1;
    }

    else
    {
      v49 = v36;
    }

    if (v48 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = -v48;
    }

    if (v50 != v27 || v30 != 1)
    {
      if (v50 != v27 && v30 < 0)
      {
        v49 = 0;
        v18 = v52 - 16;
      }

      v77 = v18;
    }

    ++v24;
    mlir::CallableOpInterface::getArgAttrsAttr(v76);
    if (v24 >= v25)
    {
      goto LABEL_113;
    }
  }

  v79 = operator new(0x40uLL);
  v80[0] = xmmword_1E09827C0;
  strcpy(v79, "failed: invalid begin and/or end values of strided slice op.");
LABEL_119:
  matched = mlir::logMatchFailure(&v79, *(v78 + 24), a4);
  if (SHIBYTE(v80[0]) < 0)
  {
    operator delete(v79);
  }

LABEL_149:
  llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
LABEL_150:
  std::__tree<unsigned long long>::destroy(&v90, v91);
  if (v87 != v89)
  {
    free(v87);
  }

LABEL_152:
  std::__tree<unsigned long long>::destroy(&v95, v96);
  if (__p != v94 + 8)
  {
    free(__p);
  }

LABEL_154:
  if (v98 != v100)
  {
    free(v98);
  }

LABEL_156:
  if (v101[0] != v102)
  {
    free(v101[0]);
  }

LABEL_158:
  if (v103[0] != v104)
  {
    free(v103[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)3>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)3>::~ConvertStridedSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v105 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  *&v94[0] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v78);
  v103[0] = v104;
  v103[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_158;
  }

  v101[0] = v102;
  v101[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_156;
  }

  v98 = v100;
  v99 = 0x500000000;
  {
    matched = 0;
    goto LABEL_154;
  }

  if (v99)
  {
    v10 = v98;
    v11 = 8 * v99;
    do
    {
      if (!*v10)
      {
        __p = operator new(0x28uLL);
        v94[0] = xmmword_1E0982750;
        strcpy(__p, "failed: stride must have non-zero value");
        matched = mlir::logMatchFailure(&__p, *(v78 + 24), a4);
        if (SHIBYTE(v94[0]) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_154;
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  __p = v94 + 8;
  *&v94[0] = 0x500000000;
  v96 = 0;
  v97 = 0;
  v95 = &v96;
  v12 = v78;
  Index = mlir::pdl::ResultOp::getIndex(&v78);
  {
    matched = 0;
    goto LABEL_152;
  }

  v87 = v89;
  v88 = 0x500000000;
  v91 = 0;
  v92 = 0;
  v90 = &v91;
  v14 = v78;
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v78);
  {
    matched = 0;
    goto LABEL_150;
  }

  v82 = v84;
  v83 = 0x500000000;
  v85 = 0;
  v86 = 0;
  v84[5] = &v85;
  v16 = v78;
  Groups = mlir::mps::Conv3DOp::getGroups(&v78);
  {
    matched = 0;
    goto LABEL_149;
  }

  v18 = mlir::ValueRange::dereference_iterator(&v105, 0);
  v77 = v18;
  v19 = (*(*(*(v78 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  v76[0] = mlir::getRankPromotionTypeForANE(v19, v20);
  v76[1] = v22;
  mlir::CallableOpInterface::getArgAttrsAttr(v76);
  if (v23 < 1)
  {
LABEL_113:
    if (v83 || v86)
    {
      v53 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v53)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
      }

      else
      {
        v54 = 0;
      }

      v81[0] = v53;
      v81[1] = v54;
      v79 = v80 + 8;
      *&v80[0] = 0x400000000;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v81);
      if (v56)
      {
        v57 = 0;
        v58 = &ArgAttrsAttr[v56];
        do
        {
          if (v86)
          {
            v59 = v85;
            if (v85)
            {
              v60 = &v85;
              do
              {
                if (v59[4] >= v57)
                {
                  v60 = v59;
                }

                v59 = v59[v59[4] < v57];
              }

              while (v59);
              if (v60 != &v85 && v57 >= v60[4])
              {
                goto LABEL_126;
              }
            }
          }

          else if (v83)
          {
            v61 = v82;
            v62 = 8 * v83;
            while (*v61 != v57)
            {
              ++v61;
              v62 -= 8;
              if (!v62)
              {
                goto LABEL_140;
              }
            }

            if (v62)
            {
              goto LABEL_126;
            }
          }

LABEL_140:
          v63 = *ArgAttrsAttr;
          v64 = LODWORD(v80[0]);
          if (LODWORD(v80[0]) >= DWORD1(v80[0]))
          {
            v65 = ArgAttrsAttr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v80 + 8, LODWORD(v80[0]) + 1, 8);
            ArgAttrsAttr = v65;
            v64 = LODWORD(v80[0]);
          }

          *(v79 + v64) = v63;
          ++LODWORD(v80[0]);
LABEL_126:
          ++v57;
          ++ArgAttrsAttr;
        }

        while (ArgAttrsAttr != v58);
      }

      v66 = v79;
      v67 = LODWORD(v80[0]);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
      v69 = mlir::MemRefType::get(v66, v67, ElementTypeOrSelf, 0, 0, 0);
      if (v69)
      {
        v70 = v69;
        v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
        v69 = v70;
      }

      else
      {
        v71 = 0;
      }

      v75[0] = mlir::getRankPromotionTypeForANE(v69, v71);
      v75[1] = v72;
      v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v78 + 24), v75, &v77) - 16;
      v77 = v18;
      if (v79 != v80 + 8)
      {
        free(v79);
        v18 = v77;
      }
    }

    v73 = v78;
    v81[0] = v18;
    matched = 1;
    mlir::ValueRange::ValueRange(&v79, v81, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v73, v79, *&v80[0]);
    goto LABEL_149;
  }

  v24 = 0;
  while (1)
  {
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
    v27 = *(v26 + 8 * v24);
    v28 = *(v103[0] + v24);
    v29 = *(v101[0] + v24);
    v30 = *(v98 + v24);
    v31 = v29 + v28;
    if (v29 == -1)
    {
      v31 = *(v26 + 8 * v24);
    }

    if (IsSize)
    {
      v29 = v31;
    }

    if (v97)
    {
      v32 = v96;
      if (!v96)
      {
        goto LABEL_51;
      }

      v33 = &v96;
      do
      {
        if (v32[4] >= v24)
        {
          v33 = v32;
        }

        v32 = v32[v32[4] < v24];
      }

      while (v32);
      if (v33 == &v96 || v24 < v33[4])
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!LODWORD(v94[0]))
      {
        goto LABEL_51;
      }

      v34 = __p;
      v35 = 8 * LODWORD(v94[0]);
      while (*v34 != v24)
      {
        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_51;
        }
      }

      if (!v35)
      {
LABEL_51:
        v36 = (v27 & (v28 >> 63)) + v28;
        goto LABEL_52;
      }
    }

    v36 = v27 - 1;
    if (v30 > 0)
    {
      v36 = 0;
    }

LABEL_52:
    if (v92)
    {
      v37 = v91;
      if (!v91)
      {
        goto LABEL_70;
      }

      v38 = &v91;
      do
      {
        if (v37[4] >= v24)
        {
          v38 = v37;
        }

        v37 = v37[v37[4] < v24];
      }

      while (v37);
      if (v38 == &v91 || v24 < v38[4])
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v88)
      {
        goto LABEL_70;
      }

      v39 = v87;
      v40 = 8 * v88;
      while (*v39 != v24)
      {
        ++v39;
        v40 -= 8;
        if (!v40)
        {
          goto LABEL_70;
        }
      }

      if (!v40)
      {
LABEL_70:
        v41 = (v27 & (v29 >> 63)) + v29;
        goto LABEL_71;
      }
    }

    v41 = v30 <= 0 ? -1 : *(v26 + 8 * v24);
LABEL_71:
    if (v86)
    {
      v42 = v85;
      if (!v85)
      {
        goto LABEL_79;
      }

      v43 = &v85;
      do
      {
        if (v42[4] >= v24)
        {
          v43 = v42;
        }

        v42 = v42[v42[4] < v24];
      }

      while (v42);
      if (v43 == &v85 || v24 < v43[4])
      {
LABEL_79:
        v43 = &v85;
      }

      v44 = v43 == &v85;
    }

    else
    {
      v45 = v82;
      if (v83)
      {
        v46 = 8 * v83;
        while (*v45 != v24)
        {
          ++v45;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
LABEL_85:
        v45 = &v82[v83];
      }

      v44 = v45 == &v82[v83];
    }

    if (!v44)
    {
      v41 = v36 + 1;
    }

    if (v30 >= 1 && v41 < v36 || v30 < 0 && v41 > v36)
    {
      v79 = operator new(0x40uLL);
      v80[0] = xmmword_1E0982780;
      strcpy(v79, "failed: invalid begin and end values based on stride direction.");
      goto LABEL_119;
    }

    if (v36 < 0 || v36 >= v27 || v41 < -1 || v41 > v27)
    {
      break;
    }

    v48 = vcvtps_s32_f32((v41 - v36) / v30);
    if (v41 < v36)
    {
      v49 = v41 + 1;
    }

    else
    {
      v49 = v36;
    }

    if (v48 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = -v48;
    }

    if (v50 != v27 || v30 != 1)
    {
      if (v50 != v27 && v30 < 0)
      {
        v49 = 0;
        v18 = v52 - 16;
      }

      v77 = v18;
    }

    ++v24;
    mlir::CallableOpInterface::getArgAttrsAttr(v76);
    if (v24 >= v25)
    {
      goto LABEL_113;
    }
  }

  v79 = operator new(0x40uLL);
  v80[0] = xmmword_1E09827C0;
  strcpy(v79, "failed: invalid begin and/or end values of strided slice op.");
LABEL_119:
  matched = mlir::logMatchFailure(&v79, *(v78 + 24), a4);
  if (SHIBYTE(v80[0]) < 0)
  {
    operator delete(v79);
  }

LABEL_149:
  llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
LABEL_150:
  std::__tree<unsigned long long>::destroy(&v90, v91);
  if (v87 != v89)
  {
    free(v87);
  }

LABEL_152:
  std::__tree<unsigned long long>::destroy(&v95, v96);
  if (__p != v94 + 8)
  {
    free(__p);
  }

LABEL_154:
  if (v98 != v100)
  {
    free(v98);
  }

LABEL_156:
  if (v101[0] != v102)
  {
    free(v101[0]);
  }

LABEL_158:
  if (v103[0] != v104)
  {
    free(v103[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)4>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)4>::~ConvertStridedSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v105 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  *&v94[0] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v78);
  v103[0] = v104;
  v103[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_158;
  }

  v101[0] = v102;
  v101[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_156;
  }

  v98 = v100;
  v99 = 0x500000000;
  {
    matched = 0;
    goto LABEL_154;
  }

  if (v99)
  {
    v10 = v98;
    v11 = 8 * v99;
    do
    {
      if (!*v10)
      {
        __p = operator new(0x28uLL);
        v94[0] = xmmword_1E0982750;
        strcpy(__p, "failed: stride must have non-zero value");
        matched = mlir::logMatchFailure(&__p, *(v78 + 24), a4);
        if (SHIBYTE(v94[0]) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_154;
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  __p = v94 + 8;
  *&v94[0] = 0x500000000;
  v96 = 0;
  v97 = 0;
  v95 = &v96;
  v12 = v78;
  Index = mlir::pdl::ResultOp::getIndex(&v78);
  {
    matched = 0;
    goto LABEL_152;
  }

  v87 = v89;
  v88 = 0x500000000;
  v91 = 0;
  v92 = 0;
  v90 = &v91;
  v14 = v78;
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v78);
  {
    matched = 0;
    goto LABEL_150;
  }

  v82 = v84;
  v83 = 0x500000000;
  v85 = 0;
  v86 = 0;
  v84[5] = &v85;
  v16 = v78;
  Groups = mlir::mps::Conv3DOp::getGroups(&v78);
  {
    matched = 0;
    goto LABEL_149;
  }

  v18 = mlir::ValueRange::dereference_iterator(&v105, 0);
  v77 = v18;
  v19 = (*(*(*(v78 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  v76[0] = mlir::getRankPromotionTypeForANE(v19, v20);
  v76[1] = v22;
  mlir::CallableOpInterface::getArgAttrsAttr(v76);
  if (v23 < 1)
  {
LABEL_113:
    if (v83 || v86)
    {
      v53 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v53)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
      }

      else
      {
        v54 = 0;
      }

      v81[0] = v53;
      v81[1] = v54;
      v79 = v80 + 8;
      *&v80[0] = 0x400000000;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v81);
      if (v56)
      {
        v57 = 0;
        v58 = &ArgAttrsAttr[v56];
        do
        {
          if (v86)
          {
            v59 = v85;
            if (v85)
            {
              v60 = &v85;
              do
              {
                if (v59[4] >= v57)
                {
                  v60 = v59;
                }

                v59 = v59[v59[4] < v57];
              }

              while (v59);
              if (v60 != &v85 && v57 >= v60[4])
              {
                goto LABEL_126;
              }
            }
          }

          else if (v83)
          {
            v61 = v82;
            v62 = 8 * v83;
            while (*v61 != v57)
            {
              ++v61;
              v62 -= 8;
              if (!v62)
              {
                goto LABEL_140;
              }
            }

            if (v62)
            {
              goto LABEL_126;
            }
          }

LABEL_140:
          v63 = *ArgAttrsAttr;
          v64 = LODWORD(v80[0]);
          if (LODWORD(v80[0]) >= DWORD1(v80[0]))
          {
            v65 = ArgAttrsAttr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v80 + 8, LODWORD(v80[0]) + 1, 8);
            ArgAttrsAttr = v65;
            v64 = LODWORD(v80[0]);
          }

          *(v79 + v64) = v63;
          ++LODWORD(v80[0]);
LABEL_126:
          ++v57;
          ++ArgAttrsAttr;
        }

        while (ArgAttrsAttr != v58);
      }

      v66 = v79;
      v67 = LODWORD(v80[0]);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
      v69 = mlir::MemRefType::get(v66, v67, ElementTypeOrSelf, 0, 0, 0);
      if (v69)
      {
        v70 = v69;
        v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
        v69 = v70;
      }

      else
      {
        v71 = 0;
      }

      v75[0] = mlir::getRankPromotionTypeForANE(v69, v71);
      v75[1] = v72;
      v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v78 + 24), v75, &v77) - 16;
      v77 = v18;
      if (v79 != v80 + 8)
      {
        free(v79);
        v18 = v77;
      }
    }

    v73 = v78;
    v81[0] = v18;
    matched = 1;
    mlir::ValueRange::ValueRange(&v79, v81, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v73, v79, *&v80[0]);
    goto LABEL_149;
  }

  v24 = 0;
  while (1)
  {
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
    v27 = *(v26 + 8 * v24);
    v28 = *(v103[0] + v24);
    v29 = *(v101[0] + v24);
    v30 = *(v98 + v24);
    v31 = v29 + v28;
    if (v29 == -1)
    {
      v31 = *(v26 + 8 * v24);
    }

    if (IsSize)
    {
      v29 = v31;
    }

    if (v97)
    {
      v32 = v96;
      if (!v96)
      {
        goto LABEL_51;
      }

      v33 = &v96;
      do
      {
        if (v32[4] >= v24)
        {
          v33 = v32;
        }

        v32 = v32[v32[4] < v24];
      }

      while (v32);
      if (v33 == &v96 || v24 < v33[4])
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!LODWORD(v94[0]))
      {
        goto LABEL_51;
      }

      v34 = __p;
      v35 = 8 * LODWORD(v94[0]);
      while (*v34 != v24)
      {
        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_51;
        }
      }

      if (!v35)
      {
LABEL_51:
        v36 = (v27 & (v28 >> 63)) + v28;
        goto LABEL_52;
      }
    }

    v36 = v27 - 1;
    if (v30 > 0)
    {
      v36 = 0;
    }

LABEL_52:
    if (v92)
    {
      v37 = v91;
      if (!v91)
      {
        goto LABEL_70;
      }

      v38 = &v91;
      do
      {
        if (v37[4] >= v24)
        {
          v38 = v37;
        }

        v37 = v37[v37[4] < v24];
      }

      while (v37);
      if (v38 == &v91 || v24 < v38[4])
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v88)
      {
        goto LABEL_70;
      }

      v39 = v87;
      v40 = 8 * v88;
      while (*v39 != v24)
      {
        ++v39;
        v40 -= 8;
        if (!v40)
        {
          goto LABEL_70;
        }
      }

      if (!v40)
      {
LABEL_70:
        v41 = (v27 & (v29 >> 63)) + v29;
        goto LABEL_71;
      }
    }

    v41 = v30 <= 0 ? -1 : *(v26 + 8 * v24);
LABEL_71:
    if (v86)
    {
      v42 = v85;
      if (!v85)
      {
        goto LABEL_79;
      }

      v43 = &v85;
      do
      {
        if (v42[4] >= v24)
        {
          v43 = v42;
        }

        v42 = v42[v42[4] < v24];
      }

      while (v42);
      if (v43 == &v85 || v24 < v43[4])
      {
LABEL_79:
        v43 = &v85;
      }

      v44 = v43 == &v85;
    }

    else
    {
      v45 = v82;
      if (v83)
      {
        v46 = 8 * v83;
        while (*v45 != v24)
        {
          ++v45;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
LABEL_85:
        v45 = &v82[v83];
      }

      v44 = v45 == &v82[v83];
    }

    if (!v44)
    {
      v41 = v36 + 1;
    }

    if (v30 >= 1 && v41 < v36 || v30 < 0 && v41 > v36)
    {
      v79 = operator new(0x40uLL);
      v80[0] = xmmword_1E0982780;
      strcpy(v79, "failed: invalid begin and end values based on stride direction.");
      goto LABEL_119;
    }

    if (v36 < 0 || v36 >= v27 || v41 < -1 || v41 > v27)
    {
      break;
    }

    v48 = vcvtps_s32_f32((v41 - v36) / v30);
    if (v41 < v36)
    {
      v49 = v41 + 1;
    }

    else
    {
      v49 = v36;
    }

    if (v48 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = -v48;
    }

    if (v50 != v27 || v30 != 1)
    {
      if (v50 != v27 && v30 < 0)
      {
        v49 = 0;
        v18 = v52 - 16;
      }

      v77 = v18;
    }

    ++v24;
    mlir::CallableOpInterface::getArgAttrsAttr(v76);
    if (v24 >= v25)
    {
      goto LABEL_113;
    }
  }

  v79 = operator new(0x40uLL);
  v80[0] = xmmword_1E09827C0;
  strcpy(v79, "failed: invalid begin and/or end values of strided slice op.");
LABEL_119:
  matched = mlir::logMatchFailure(&v79, *(v78 + 24), a4);
  if (SHIBYTE(v80[0]) < 0)
  {
    operator delete(v79);
  }

LABEL_149:
  llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
LABEL_150:
  std::__tree<unsigned long long>::destroy(&v90, v91);
  if (v87 != v89)
  {
    free(v87);
  }

LABEL_152:
  std::__tree<unsigned long long>::destroy(&v95, v96);
  if (__p != v94 + 8)
  {
    free(__p);
  }

LABEL_154:
  if (v98 != v100)
  {
    free(v98);
  }

LABEL_156:
  if (v101[0] != v102)
  {
    free(v101[0]);
  }

LABEL_158:
  if (v103[0] != v104)
  {
    free(v103[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)5>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)5>::~ConvertStridedSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v105 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  *&v94[0] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v78);
  v103[0] = v104;
  v103[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_158;
  }

  v101[0] = v102;
  v101[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_156;
  }

  v98 = v100;
  v99 = 0x500000000;
  {
    matched = 0;
    goto LABEL_154;
  }

  if (v99)
  {
    v10 = v98;
    v11 = 8 * v99;
    do
    {
      if (!*v10)
      {
        __p = operator new(0x28uLL);
        v94[0] = xmmword_1E0982750;
        strcpy(__p, "failed: stride must have non-zero value");
        matched = mlir::logMatchFailure(&__p, *(v78 + 24), a4);
        if (SHIBYTE(v94[0]) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_154;
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  __p = v94 + 8;
  *&v94[0] = 0x500000000;
  v96 = 0;
  v97 = 0;
  v95 = &v96;
  v12 = v78;
  Index = mlir::pdl::ResultOp::getIndex(&v78);
  {
    matched = 0;
    goto LABEL_152;
  }

  v87 = v89;
  v88 = 0x500000000;
  v91 = 0;
  v92 = 0;
  v90 = &v91;
  v14 = v78;
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v78);
  {
    matched = 0;
    goto LABEL_150;
  }

  v82 = v84;
  v83 = 0x500000000;
  v85 = 0;
  v86 = 0;
  v84[5] = &v85;
  v16 = v78;
  Groups = mlir::mps::Conv3DOp::getGroups(&v78);
  {
    matched = 0;
    goto LABEL_149;
  }

  v18 = mlir::ValueRange::dereference_iterator(&v105, 0);
  v77 = v18;
  v19 = (*(*(*(v78 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  v76[0] = mlir::getRankPromotionTypeForANE(v19, v20);
  v76[1] = v22;
  mlir::CallableOpInterface::getArgAttrsAttr(v76);
  if (v23 < 1)
  {
LABEL_113:
    if (v83 || v86)
    {
      v53 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v53)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
      }

      else
      {
        v54 = 0;
      }

      v81[0] = v53;
      v81[1] = v54;
      v79 = v80 + 8;
      *&v80[0] = 0x400000000;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v81);
      if (v56)
      {
        v57 = 0;
        v58 = &ArgAttrsAttr[v56];
        do
        {
          if (v86)
          {
            v59 = v85;
            if (v85)
            {
              v60 = &v85;
              do
              {
                if (v59[4] >= v57)
                {
                  v60 = v59;
                }

                v59 = v59[v59[4] < v57];
              }

              while (v59);
              if (v60 != &v85 && v57 >= v60[4])
              {
                goto LABEL_126;
              }
            }
          }

          else if (v83)
          {
            v61 = v82;
            v62 = 8 * v83;
            while (*v61 != v57)
            {
              ++v61;
              v62 -= 8;
              if (!v62)
              {
                goto LABEL_140;
              }
            }

            if (v62)
            {
              goto LABEL_126;
            }
          }

LABEL_140:
          v63 = *ArgAttrsAttr;
          v64 = LODWORD(v80[0]);
          if (LODWORD(v80[0]) >= DWORD1(v80[0]))
          {
            v65 = ArgAttrsAttr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v80 + 8, LODWORD(v80[0]) + 1, 8);
            ArgAttrsAttr = v65;
            v64 = LODWORD(v80[0]);
          }

          *(v79 + v64) = v63;
          ++LODWORD(v80[0]);
LABEL_126:
          ++v57;
          ++ArgAttrsAttr;
        }

        while (ArgAttrsAttr != v58);
      }

      v66 = v79;
      v67 = LODWORD(v80[0]);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
      v69 = mlir::MemRefType::get(v66, v67, ElementTypeOrSelf, 0, 0, 0);
      if (v69)
      {
        v70 = v69;
        v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
        v69 = v70;
      }

      else
      {
        v71 = 0;
      }

      v75[0] = mlir::getRankPromotionTypeForANE(v69, v71);
      v75[1] = v72;
      v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v78 + 24), v75, &v77) - 16;
      v77 = v18;
      if (v79 != v80 + 8)
      {
        free(v79);
        v18 = v77;
      }
    }

    v73 = v78;
    v81[0] = v18;
    matched = 1;
    mlir::ValueRange::ValueRange(&v79, v81, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v73, v79, *&v80[0]);
    goto LABEL_149;
  }

  v24 = 0;
  while (1)
  {
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
    v27 = *(v26 + 8 * v24);
    v28 = *(v103[0] + v24);
    v29 = *(v101[0] + v24);
    v30 = *(v98 + v24);
    v31 = v29 + v28;
    if (v29 == -1)
    {
      v31 = *(v26 + 8 * v24);
    }

    if (IsSize)
    {
      v29 = v31;
    }

    if (v97)
    {
      v32 = v96;
      if (!v96)
      {
        goto LABEL_51;
      }

      v33 = &v96;
      do
      {
        if (v32[4] >= v24)
        {
          v33 = v32;
        }

        v32 = v32[v32[4] < v24];
      }

      while (v32);
      if (v33 == &v96 || v24 < v33[4])
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!LODWORD(v94[0]))
      {
        goto LABEL_51;
      }

      v34 = __p;
      v35 = 8 * LODWORD(v94[0]);
      while (*v34 != v24)
      {
        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_51;
        }
      }

      if (!v35)
      {
LABEL_51:
        v36 = (v27 & (v28 >> 63)) + v28;
        goto LABEL_52;
      }
    }

    v36 = v27 - 1;
    if (v30 > 0)
    {
      v36 = 0;
    }

LABEL_52:
    if (v92)
    {
      v37 = v91;
      if (!v91)
      {
        goto LABEL_70;
      }

      v38 = &v91;
      do
      {
        if (v37[4] >= v24)
        {
          v38 = v37;
        }

        v37 = v37[v37[4] < v24];
      }

      while (v37);
      if (v38 == &v91 || v24 < v38[4])
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v88)
      {
        goto LABEL_70;
      }

      v39 = v87;
      v40 = 8 * v88;
      while (*v39 != v24)
      {
        ++v39;
        v40 -= 8;
        if (!v40)
        {
          goto LABEL_70;
        }
      }

      if (!v40)
      {
LABEL_70:
        v41 = (v27 & (v29 >> 63)) + v29;
        goto LABEL_71;
      }
    }

    v41 = v30 <= 0 ? -1 : *(v26 + 8 * v24);
LABEL_71:
    if (v86)
    {
      v42 = v85;
      if (!v85)
      {
        goto LABEL_79;
      }

      v43 = &v85;
      do
      {
        if (v42[4] >= v24)
        {
          v43 = v42;
        }

        v42 = v42[v42[4] < v24];
      }

      while (v42);
      if (v43 == &v85 || v24 < v43[4])
      {
LABEL_79:
        v43 = &v85;
      }

      v44 = v43 == &v85;
    }

    else
    {
      v45 = v82;
      if (v83)
      {
        v46 = 8 * v83;
        while (*v45 != v24)
        {
          ++v45;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
LABEL_85:
        v45 = &v82[v83];
      }

      v44 = v45 == &v82[v83];
    }

    if (!v44)
    {
      v41 = v36 + 1;
    }

    if (v30 >= 1 && v41 < v36 || v30 < 0 && v41 > v36)
    {
      v79 = operator new(0x40uLL);
      v80[0] = xmmword_1E0982780;
      strcpy(v79, "failed: invalid begin and end values based on stride direction.");
      goto LABEL_119;
    }

    if (v36 < 0 || v36 >= v27 || v41 < -1 || v41 > v27)
    {
      break;
    }

    v48 = vcvtps_s32_f32((v41 - v36) / v30);
    if (v41 < v36)
    {
      v49 = v41 + 1;
    }

    else
    {
      v49 = v36;
    }

    if (v48 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = -v48;
    }

    if (v50 != v27 || v30 != 1)
    {
      if (v50 != v27 && v30 < 0)
      {
        v49 = 0;
        v18 = v52 - 16;
      }

      v77 = v18;
    }

    ++v24;
    mlir::CallableOpInterface::getArgAttrsAttr(v76);
    if (v24 >= v25)
    {
      goto LABEL_113;
    }
  }

  v79 = operator new(0x40uLL);
  v80[0] = xmmword_1E09827C0;
  strcpy(v79, "failed: invalid begin and/or end values of strided slice op.");
LABEL_119:
  matched = mlir::logMatchFailure(&v79, *(v78 + 24), a4);
  if (SHIBYTE(v80[0]) < 0)
  {
    operator delete(v79);
  }

LABEL_149:
  llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
LABEL_150:
  std::__tree<unsigned long long>::destroy(&v90, v91);
  if (v87 != v89)
  {
    free(v87);
  }

LABEL_152:
  std::__tree<unsigned long long>::destroy(&v95, v96);
  if (__p != v94 + 8)
  {
    free(__p);
  }

LABEL_154:
  if (v98 != v100)
  {
    free(v98);
  }

LABEL_156:
  if (v101[0] != v102)
  {
    free(v101[0]);
  }

LABEL_158:
  if (v103[0] != v104)
  {
    free(v103[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)6>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)6>::~ConvertStridedSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v105 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  *&v94[0] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v78);
  v103[0] = v104;
  v103[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_158;
  }

  v101[0] = v102;
  v101[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_156;
  }

  v98 = v100;
  v99 = 0x500000000;
  {
    matched = 0;
    goto LABEL_154;
  }

  if (v99)
  {
    v10 = v98;
    v11 = 8 * v99;
    do
    {
      if (!*v10)
      {
        __p = operator new(0x28uLL);
        v94[0] = xmmword_1E0982750;
        strcpy(__p, "failed: stride must have non-zero value");
        matched = mlir::logMatchFailure(&__p, *(v78 + 24), a4);
        if (SHIBYTE(v94[0]) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_154;
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  __p = v94 + 8;
  *&v94[0] = 0x500000000;
  v96 = 0;
  v97 = 0;
  v95 = &v96;
  v12 = v78;
  Index = mlir::pdl::ResultOp::getIndex(&v78);
  {
    matched = 0;
    goto LABEL_152;
  }

  v87 = v89;
  v88 = 0x500000000;
  v91 = 0;
  v92 = 0;
  v90 = &v91;
  v14 = v78;
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v78);
  {
    matched = 0;
    goto LABEL_150;
  }

  v82 = v84;
  v83 = 0x500000000;
  v85 = 0;
  v86 = 0;
  v84[5] = &v85;
  v16 = v78;
  Groups = mlir::mps::Conv3DOp::getGroups(&v78);
  {
    matched = 0;
    goto LABEL_149;
  }

  v18 = mlir::ValueRange::dereference_iterator(&v105, 0);
  v77 = v18;
  v19 = (*(*(*(v78 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  v76[0] = mlir::getRankPromotionTypeForANE(v19, v20);
  v76[1] = v22;
  mlir::CallableOpInterface::getArgAttrsAttr(v76);
  if (v23 < 1)
  {
LABEL_113:
    if (v83 || v86)
    {
      v53 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v53)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
      }

      else
      {
        v54 = 0;
      }

      v81[0] = v53;
      v81[1] = v54;
      v79 = v80 + 8;
      *&v80[0] = 0x400000000;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v81);
      if (v56)
      {
        v57 = 0;
        v58 = &ArgAttrsAttr[v56];
        do
        {
          if (v86)
          {
            v59 = v85;
            if (v85)
            {
              v60 = &v85;
              do
              {
                if (v59[4] >= v57)
                {
                  v60 = v59;
                }

                v59 = v59[v59[4] < v57];
              }

              while (v59);
              if (v60 != &v85 && v57 >= v60[4])
              {
                goto LABEL_126;
              }
            }
          }

          else if (v83)
          {
            v61 = v82;
            v62 = 8 * v83;
            while (*v61 != v57)
            {
              ++v61;
              v62 -= 8;
              if (!v62)
              {
                goto LABEL_140;
              }
            }

            if (v62)
            {
              goto LABEL_126;
            }
          }

LABEL_140:
          v63 = *ArgAttrsAttr;
          v64 = LODWORD(v80[0]);
          if (LODWORD(v80[0]) >= DWORD1(v80[0]))
          {
            v65 = ArgAttrsAttr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v80 + 8, LODWORD(v80[0]) + 1, 8);
            ArgAttrsAttr = v65;
            v64 = LODWORD(v80[0]);
          }

          *(v79 + v64) = v63;
          ++LODWORD(v80[0]);
LABEL_126:
          ++v57;
          ++ArgAttrsAttr;
        }

        while (ArgAttrsAttr != v58);
      }

      v66 = v79;
      v67 = LODWORD(v80[0]);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
      v69 = mlir::MemRefType::get(v66, v67, ElementTypeOrSelf, 0, 0, 0);
      if (v69)
      {
        v70 = v69;
        v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
        v69 = v70;
      }

      else
      {
        v71 = 0;
      }

      v75[0] = mlir::getRankPromotionTypeForANE(v69, v71);
      v75[1] = v72;
      v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v78 + 24), v75, &v77) - 16;
      v77 = v18;
      if (v79 != v80 + 8)
      {
        free(v79);
        v18 = v77;
      }
    }

    v73 = v78;
    v81[0] = v18;
    matched = 1;
    mlir::ValueRange::ValueRange(&v79, v81, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v73, v79, *&v80[0]);
    goto LABEL_149;
  }

  v24 = 0;
  while (1)
  {
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
    v27 = *(v26 + 8 * v24);
    v28 = *(v103[0] + v24);
    v29 = *(v101[0] + v24);
    v30 = *(v98 + v24);
    v31 = v29 + v28;
    if (v29 == -1)
    {
      v31 = *(v26 + 8 * v24);
    }

    if (IsSize)
    {
      v29 = v31;
    }

    if (v97)
    {
      v32 = v96;
      if (!v96)
      {
        goto LABEL_51;
      }

      v33 = &v96;
      do
      {
        if (v32[4] >= v24)
        {
          v33 = v32;
        }

        v32 = v32[v32[4] < v24];
      }

      while (v32);
      if (v33 == &v96 || v24 < v33[4])
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!LODWORD(v94[0]))
      {
        goto LABEL_51;
      }

      v34 = __p;
      v35 = 8 * LODWORD(v94[0]);
      while (*v34 != v24)
      {
        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_51;
        }
      }

      if (!v35)
      {
LABEL_51:
        v36 = (v27 & (v28 >> 63)) + v28;
        goto LABEL_52;
      }
    }

    v36 = v27 - 1;
    if (v30 > 0)
    {
      v36 = 0;
    }

LABEL_52:
    if (v92)
    {
      v37 = v91;
      if (!v91)
      {
        goto LABEL_70;
      }

      v38 = &v91;
      do
      {
        if (v37[4] >= v24)
        {
          v38 = v37;
        }

        v37 = v37[v37[4] < v24];
      }

      while (v37);
      if (v38 == &v91 || v24 < v38[4])
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v88)
      {
        goto LABEL_70;
      }

      v39 = v87;
      v40 = 8 * v88;
      while (*v39 != v24)
      {
        ++v39;
        v40 -= 8;
        if (!v40)
        {
          goto LABEL_70;
        }
      }

      if (!v40)
      {
LABEL_70:
        v41 = (v27 & (v29 >> 63)) + v29;
        goto LABEL_71;
      }
    }

    v41 = v30 <= 0 ? -1 : *(v26 + 8 * v24);
LABEL_71:
    if (v86)
    {
      v42 = v85;
      if (!v85)
      {
        goto LABEL_79;
      }

      v43 = &v85;
      do
      {
        if (v42[4] >= v24)
        {
          v43 = v42;
        }

        v42 = v42[v42[4] < v24];
      }

      while (v42);
      if (v43 == &v85 || v24 < v43[4])
      {
LABEL_79:
        v43 = &v85;
      }

      v44 = v43 == &v85;
    }

    else
    {
      v45 = v82;
      if (v83)
      {
        v46 = 8 * v83;
        while (*v45 != v24)
        {
          ++v45;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
LABEL_85:
        v45 = &v82[v83];
      }

      v44 = v45 == &v82[v83];
    }

    if (!v44)
    {
      v41 = v36 + 1;
    }

    if (v30 >= 1 && v41 < v36 || v30 < 0 && v41 > v36)
    {
      v79 = operator new(0x40uLL);
      v80[0] = xmmword_1E0982780;
      strcpy(v79, "failed: invalid begin and end values based on stride direction.");
      goto LABEL_119;
    }

    if (v36 < 0 || v36 >= v27 || v41 < -1 || v41 > v27)
    {
      break;
    }

    v48 = vcvtps_s32_f32((v41 - v36) / v30);
    if (v41 < v36)
    {
      v49 = v41 + 1;
    }

    else
    {
      v49 = v36;
    }

    if (v48 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = -v48;
    }

    if (v50 != v27 || v30 != 1)
    {
      if (v50 != v27 && v30 < 0)
      {
        v49 = 0;
        v18 = v52 - 16;
      }

      v77 = v18;
    }

    ++v24;
    mlir::CallableOpInterface::getArgAttrsAttr(v76);
    if (v24 >= v25)
    {
      goto LABEL_113;
    }
  }

  v79 = operator new(0x40uLL);
  v80[0] = xmmword_1E09827C0;
  strcpy(v79, "failed: invalid begin and/or end values of strided slice op.");
LABEL_119:
  matched = mlir::logMatchFailure(&v79, *(v78 + 24), a4);
  if (SHIBYTE(v80[0]) < 0)
  {
    operator delete(v79);
  }

LABEL_149:
  llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
LABEL_150:
  std::__tree<unsigned long long>::destroy(&v90, v91);
  if (v87 != v89)
  {
    free(v87);
  }

LABEL_152:
  std::__tree<unsigned long long>::destroy(&v95, v96);
  if (__p != v94 + 8)
  {
    free(__p);
  }

LABEL_154:
  if (v98 != v100)
  {
    free(v98);
  }

LABEL_156:
  if (v101[0] != v102)
  {
    free(v101[0]);
  }

LABEL_158:
  if (v103[0] != v104)
  {
    free(v103[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)7>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)7>::~ConvertStridedSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v105 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  *&v94[0] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v78);
  v103[0] = v104;
  v103[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_158;
  }

  v101[0] = v102;
  v101[1] = 0x500000000;
  {
    matched = 0;
    goto LABEL_156;
  }

  v98 = v100;
  v99 = 0x500000000;
  {
    matched = 0;
    goto LABEL_154;
  }

  if (v99)
  {
    v10 = v98;
    v11 = 8 * v99;
    do
    {
      if (!*v10)
      {
        __p = operator new(0x28uLL);
        v94[0] = xmmword_1E0982750;
        strcpy(__p, "failed: stride must have non-zero value");
        matched = mlir::logMatchFailure(&__p, *(v78 + 24), a4);
        if (SHIBYTE(v94[0]) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_154;
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  __p = v94 + 8;
  *&v94[0] = 0x500000000;
  v96 = 0;
  v97 = 0;
  v95 = &v96;
  v12 = v78;
  Index = mlir::pdl::ResultOp::getIndex(&v78);
  {
    matched = 0;
    goto LABEL_152;
  }

  v87 = v89;
  v88 = 0x500000000;
  v91 = 0;
  v92 = 0;
  v90 = &v91;
  v14 = v78;
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v78);
  {
    matched = 0;
    goto LABEL_150;
  }

  v82 = v84;
  v83 = 0x500000000;
  v85 = 0;
  v86 = 0;
  v84[5] = &v85;
  v16 = v78;
  Groups = mlir::mps::Conv3DOp::getGroups(&v78);
  {
    matched = 0;
    goto LABEL_149;
  }

  v18 = mlir::ValueRange::dereference_iterator(&v105, 0);
  v77 = v18;
  v19 = (*(*(*(v78 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  v76[0] = mlir::getRankPromotionTypeForANE(v19, v20);
  v76[1] = v22;
  mlir::CallableOpInterface::getArgAttrsAttr(v76);
  if (v23 < 1)
  {
LABEL_113:
    if (v83 || v86)
    {
      v53 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v53)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
      }

      else
      {
        v54 = 0;
      }

      v81[0] = v53;
      v81[1] = v54;
      v79 = v80 + 8;
      *&v80[0] = 0x400000000;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v81);
      if (v56)
      {
        v57 = 0;
        v58 = &ArgAttrsAttr[v56];
        do
        {
          if (v86)
          {
            v59 = v85;
            if (v85)
            {
              v60 = &v85;
              do
              {
                if (v59[4] >= v57)
                {
                  v60 = v59;
                }

                v59 = v59[v59[4] < v57];
              }

              while (v59);
              if (v60 != &v85 && v57 >= v60[4])
              {
                goto LABEL_126;
              }
            }
          }

          else if (v83)
          {
            v61 = v82;
            v62 = 8 * v83;
            while (*v61 != v57)
            {
              ++v61;
              v62 -= 8;
              if (!v62)
              {
                goto LABEL_140;
              }
            }

            if (v62)
            {
              goto LABEL_126;
            }
          }

LABEL_140:
          v63 = *ArgAttrsAttr;
          v64 = LODWORD(v80[0]);
          if (LODWORD(v80[0]) >= DWORD1(v80[0]))
          {
            v65 = ArgAttrsAttr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v80 + 8, LODWORD(v80[0]) + 1, 8);
            ArgAttrsAttr = v65;
            v64 = LODWORD(v80[0]);
          }

          *(v79 + v64) = v63;
          ++LODWORD(v80[0]);
LABEL_126:
          ++v57;
          ++ArgAttrsAttr;
        }

        while (ArgAttrsAttr != v58);
      }

      v66 = v79;
      v67 = LODWORD(v80[0]);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
      v69 = mlir::MemRefType::get(v66, v67, ElementTypeOrSelf, 0, 0, 0);
      if (v69)
      {
        v70 = v69;
        v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
        v69 = v70;
      }

      else
      {
        v71 = 0;
      }

      v75[0] = mlir::getRankPromotionTypeForANE(v69, v71);
      v75[1] = v72;
      v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v78 + 24), v75, &v77) - 16;
      v77 = v18;
      if (v79 != v80 + 8)
      {
        free(v79);
        v18 = v77;
      }
    }

    v73 = v78;
    v81[0] = v18;
    matched = 1;
    mlir::ValueRange::ValueRange(&v79, v81, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v73, v79, *&v80[0]);
    goto LABEL_149;
  }

  v24 = 0;
  while (1)
  {
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
    v27 = *(v26 + 8 * v24);
    v28 = *(v103[0] + v24);
    v29 = *(v101[0] + v24);
    v30 = *(v98 + v24);
    v31 = v29 + v28;
    if (v29 == -1)
    {
      v31 = *(v26 + 8 * v24);
    }

    if (IsSize)
    {
      v29 = v31;
    }

    if (v97)
    {
      v32 = v96;
      if (!v96)
      {
        goto LABEL_51;
      }

      v33 = &v96;
      do
      {
        if (v32[4] >= v24)
        {
          v33 = v32;
        }

        v32 = v32[v32[4] < v24];
      }

      while (v32);
      if (v33 == &v96 || v24 < v33[4])
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!LODWORD(v94[0]))
      {
        goto LABEL_51;
      }

      v34 = __p;
      v35 = 8 * LODWORD(v94[0]);
      while (*v34 != v24)
      {
        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_51;
        }
      }

      if (!v35)
      {
LABEL_51:
        v36 = (v27 & (v28 >> 63)) + v28;
        goto LABEL_52;
      }
    }

    v36 = v27 - 1;
    if (v30 > 0)
    {
      v36 = 0;
    }

LABEL_52:
    if (v92)
    {
      v37 = v91;
      if (!v91)
      {
        goto LABEL_70;
      }

      v38 = &v91;
      do
      {
        if (v37[4] >= v24)
        {
          v38 = v37;
        }

        v37 = v37[v37[4] < v24];
      }

      while (v37);
      if (v38 == &v91 || v24 < v38[4])
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v88)
      {
        goto LABEL_70;
      }

      v39 = v87;
      v40 = 8 * v88;
      while (*v39 != v24)
      {
        ++v39;
        v40 -= 8;
        if (!v40)
        {
          goto LABEL_70;
        }
      }

      if (!v40)
      {
LABEL_70:
        v41 = (v27 & (v29 >> 63)) + v29;
        goto LABEL_71;
      }
    }

    v41 = v30 <= 0 ? -1 : *(v26 + 8 * v24);
LABEL_71:
    if (v86)
    {
      v42 = v85;
      if (!v85)
      {
        goto LABEL_79;
      }

      v43 = &v85;
      do
      {
        if (v42[4] >= v24)
        {
          v43 = v42;
        }

        v42 = v42[v42[4] < v24];
      }

      while (v42);
      if (v43 == &v85 || v24 < v43[4])
      {
LABEL_79:
        v43 = &v85;
      }

      v44 = v43 == &v85;
    }

    else
    {
      v45 = v82;
      if (v83)
      {
        v46 = 8 * v83;
        while (*v45 != v24)
        {
          ++v45;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
LABEL_85:
        v45 = &v82[v83];
      }

      v44 = v45 == &v82[v83];
    }

    if (!v44)
    {
      v41 = v36 + 1;
    }

    if (v30 >= 1 && v41 < v36 || v30 < 0 && v41 > v36)
    {
      v79 = operator new(0x40uLL);
      v80[0] = xmmword_1E0982780;
      strcpy(v79, "failed: invalid begin and end values based on stride direction.");
      goto LABEL_119;
    }

    if (v36 < 0 || v36 >= v27 || v41 < -1 || v41 > v27)
    {
      break;
    }

    v48 = vcvtps_s32_f32((v41 - v36) / v30);
    if (v41 < v36)
    {
      v49 = v41 + 1;
    }

    else
    {
      v49 = v36;
    }

    if (v48 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = -v48;
    }

    if (v50 != v27 || v30 != 1)
    {
      if (v50 != v27 && v30 < 0)
      {
        v49 = 0;
        v18 = v52 - 16;
      }

      v77 = v18;
    }

    ++v24;
    mlir::CallableOpInterface::getArgAttrsAttr(v76);
    if (v24 >= v25)
    {
      goto LABEL_113;
    }
  }

  v79 = operator new(0x40uLL);
  v80[0] = xmmword_1E09827C0;
  strcpy(v79, "failed: invalid begin and/or end values of strided slice op.");
LABEL_119:
  matched = mlir::logMatchFailure(&v79, *(v78 + 24), a4);
  if (SHIBYTE(v80[0]) < 0)
  {
    operator delete(v79);
  }

LABEL_149:
  llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
LABEL_150:
  std::__tree<unsigned long long>::destroy(&v90, v91);
  if (v87 != v89)
  {
    free(v87);
  }

LABEL_152:
  std::__tree<unsigned long long>::destroy(&v95, v96);
  if (__p != v94 + 8)
  {
    free(__p);
  }

LABEL_154:
  if (v98 != v100)
  {
    free(v98);
  }

LABEL_156:
  if (v101[0] != v102)
  {
    free(v101[0]);
  }

LABEL_158:
  if (v103[0] != v104)
  {
    free(v103[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)0>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)0>::~ConvertReverse(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReverseOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReverseOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReverseOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)1>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)1>::~ConvertReverse(void *__p)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)2>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)2>::~ConvertReverse(void *__p)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)3>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)3>::~ConvertReverse(void *__p)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)4>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)4>::~ConvertReverse(void *__p)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)5>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)5>::~ConvertReverse(void *__p)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)6>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)6>::~ConvertReverse(void *__p)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)7>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)7>::~ConvertReverse(void *__p)
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

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)0>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)0>::~ConvertCrop(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CropOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CropOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::CropOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
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

  v34 = v7;
  v35 = v8;
  v9 = *(v6 + 56);
  mlir::CallableOpInterface::getArgAttrsAttr(&v34);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  if ((v12 & 1) == 0)
  {
    __p = operator new(0x30uLL);
    v39 = xmmword_1E0982960;
    strcpy(__p, "could not extract positive promoted axes");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return result;
    }

    v16 = result;
    operator delete(__p);
    return v16;
  }

  __p = &v39 + 8;
  *&v39 = 0x100000000;
  if (SortedUniquePromotedPositiveAxesAttr)
  {
    v13 = SortedUniquePromotedPositiveAxesAttr;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
    SortedUniquePromotedPositiveAxesAttr = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, &__p, 1);
  v33[0] = mlir::getRankPromotionTypeForANE(v34, v35);
  v33[1] = v17;
  v18 = *(*(a2 + 72) + 88);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v18;
  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) == 0)
  {
    v32 = 0;
    v31 = 0;
    goto LABEL_18;
  }

  SingleInt = mlir::getSingleIntValue<int>(v29, v30);
  v31 = SingleInt;
  v32 = BYTE4(SingleInt);
  if ((SingleInt & 0x100000000) == 0)
  {
LABEL_18:
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E09827E0;
    strcpy(v29, "failed: cannot handle a non constant amount_before value on ANEs.");
LABEL_19:
    result = mlir::logMatchFailure(&v29, *(a2 + 24), a4);
    if (SHIBYTE(v30) < 0)
    {
      v25 = result;
      operator delete(v29);
      result = v25;
    }

    goto LABEL_21;
  }

  v21 = SingleInt;
  v22 = *(*(a2 + 72) + 120);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v22;
  v23 = mlir::Value::getDefiningOp(&v37);
  if (!v23 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, v23) & 1) == 0 || (v24 = mlir::getSingleIntValue<int>(v29, v30), (v24 & 0x100000000) == 0))
  {
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E0982670;
    strcpy(v29, "failed: cannot handle a non constant amount_after value on ANEs.");
    goto LABEL_19;
  }

  v26 = *__p;
  v29 = (*(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * v26) - (v24 + v21));
  v27 = *(a2 + 24);
  v37 = mlir::ValueRange::dereference_iterator(&v40, 0);
  v36 = *__p;
  v28 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v27, &v37, &v36, &v31, &v29);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v28);
  result = 1;
LABEL_21:
  if (__p == &v39 + 8)
  {
    return result;
  }

  v16 = result;
  free(__p);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::InputView::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id)
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

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)1>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)1>::~ConvertCrop(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
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

  v34 = v7;
  v35 = v8;
  v9 = *(v6 + 56);
  mlir::CallableOpInterface::getArgAttrsAttr(&v34);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  if ((v12 & 1) == 0)
  {
    __p = operator new(0x30uLL);
    v39 = xmmword_1E0982960;
    strcpy(__p, "could not extract positive promoted axes");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return result;
    }

    v16 = result;
    operator delete(__p);
    return v16;
  }

  __p = &v39 + 8;
  *&v39 = 0x100000000;
  if (SortedUniquePromotedPositiveAxesAttr)
  {
    v13 = SortedUniquePromotedPositiveAxesAttr;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
    SortedUniquePromotedPositiveAxesAttr = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, &__p, 1);
  v33[0] = mlir::getRankPromotionTypeForANE(v34, v35);
  v33[1] = v17;
  v18 = *(*(a2 + 72) + 88);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v18;
  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) == 0)
  {
    v32 = 0;
    v31 = 0;
    goto LABEL_18;
  }

  SingleInt = mlir::getSingleIntValue<int>(v29, v30);
  v31 = SingleInt;
  v32 = BYTE4(SingleInt);
  if ((SingleInt & 0x100000000) == 0)
  {
LABEL_18:
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E09827E0;
    strcpy(v29, "failed: cannot handle a non constant amount_before value on ANEs.");
LABEL_19:
    result = mlir::logMatchFailure(&v29, *(a2 + 24), a4);
    if (SHIBYTE(v30) < 0)
    {
      v25 = result;
      operator delete(v29);
      result = v25;
    }

    goto LABEL_21;
  }

  v21 = SingleInt;
  v22 = *(*(a2 + 72) + 120);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v22;
  v23 = mlir::Value::getDefiningOp(&v37);
  if (!v23 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, v23) & 1) == 0 || (v24 = mlir::getSingleIntValue<int>(v29, v30), (v24 & 0x100000000) == 0))
  {
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E0982670;
    strcpy(v29, "failed: cannot handle a non constant amount_after value on ANEs.");
    goto LABEL_19;
  }

  v26 = *__p;
  v29 = (*(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * v26) - (v24 + v21));
  v27 = *(a2 + 24);
  v37 = mlir::ValueRange::dereference_iterator(&v40, 0);
  v36 = *__p;
  v28 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v27, &v37, &v36, &v31, &v29);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v28);
  result = 1;
LABEL_21:
  if (__p == &v39 + 8)
  {
    return result;
  }

  v16 = result;
  free(__p);
  return v16;
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)2>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)2>::~ConvertCrop(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
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

  v34 = v7;
  v35 = v8;
  v9 = *(v6 + 56);
  mlir::CallableOpInterface::getArgAttrsAttr(&v34);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  if ((v12 & 1) == 0)
  {
    __p = operator new(0x30uLL);
    v39 = xmmword_1E0982960;
    strcpy(__p, "could not extract positive promoted axes");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return result;
    }

    v16 = result;
    operator delete(__p);
    return v16;
  }

  __p = &v39 + 8;
  *&v39 = 0x100000000;
  if (SortedUniquePromotedPositiveAxesAttr)
  {
    v13 = SortedUniquePromotedPositiveAxesAttr;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
    SortedUniquePromotedPositiveAxesAttr = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, &__p, 1);
  v33[0] = mlir::getRankPromotionTypeForANE(v34, v35);
  v33[1] = v17;
  v18 = *(*(a2 + 72) + 88);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v18;
  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) == 0)
  {
    v32 = 0;
    v31 = 0;
    goto LABEL_18;
  }

  SingleInt = mlir::getSingleIntValue<int>(v29, v30);
  v31 = SingleInt;
  v32 = BYTE4(SingleInt);
  if ((SingleInt & 0x100000000) == 0)
  {
LABEL_18:
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E09827E0;
    strcpy(v29, "failed: cannot handle a non constant amount_before value on ANEs.");
LABEL_19:
    result = mlir::logMatchFailure(&v29, *(a2 + 24), a4);
    if (SHIBYTE(v30) < 0)
    {
      v25 = result;
      operator delete(v29);
      result = v25;
    }

    goto LABEL_21;
  }

  v21 = SingleInt;
  v22 = *(*(a2 + 72) + 120);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v22;
  v23 = mlir::Value::getDefiningOp(&v37);
  if (!v23 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, v23) & 1) == 0 || (v24 = mlir::getSingleIntValue<int>(v29, v30), (v24 & 0x100000000) == 0))
  {
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E0982670;
    strcpy(v29, "failed: cannot handle a non constant amount_after value on ANEs.");
    goto LABEL_19;
  }

  v26 = *__p;
  v29 = (*(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * v26) - (v24 + v21));
  v27 = *(a2 + 24);
  v37 = mlir::ValueRange::dereference_iterator(&v40, 0);
  v36 = *__p;
  v28 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v27, &v37, &v36, &v31, &v29);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v28);
  result = 1;
LABEL_21:
  if (__p == &v39 + 8)
  {
    return result;
  }

  v16 = result;
  free(__p);
  return v16;
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)3>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)3>::~ConvertCrop(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
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

  v34 = v7;
  v35 = v8;
  v9 = *(v6 + 56);
  mlir::CallableOpInterface::getArgAttrsAttr(&v34);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  if ((v12 & 1) == 0)
  {
    __p = operator new(0x30uLL);
    v39 = xmmword_1E0982960;
    strcpy(__p, "could not extract positive promoted axes");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return result;
    }

    v16 = result;
    operator delete(__p);
    return v16;
  }

  __p = &v39 + 8;
  *&v39 = 0x100000000;
  if (SortedUniquePromotedPositiveAxesAttr)
  {
    v13 = SortedUniquePromotedPositiveAxesAttr;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
    SortedUniquePromotedPositiveAxesAttr = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, &__p, 1);
  v33[0] = mlir::getRankPromotionTypeForANE(v34, v35);
  v33[1] = v17;
  v18 = *(*(a2 + 72) + 88);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v18;
  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) == 0)
  {
    v32 = 0;
    v31 = 0;
    goto LABEL_18;
  }

  SingleInt = mlir::getSingleIntValue<int>(v29, v30);
  v31 = SingleInt;
  v32 = BYTE4(SingleInt);
  if ((SingleInt & 0x100000000) == 0)
  {
LABEL_18:
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E09827E0;
    strcpy(v29, "failed: cannot handle a non constant amount_before value on ANEs.");
LABEL_19:
    result = mlir::logMatchFailure(&v29, *(a2 + 24), a4);
    if (SHIBYTE(v30) < 0)
    {
      v25 = result;
      operator delete(v29);
      result = v25;
    }

    goto LABEL_21;
  }

  v21 = SingleInt;
  v22 = *(*(a2 + 72) + 120);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v22;
  v23 = mlir::Value::getDefiningOp(&v37);
  if (!v23 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, v23) & 1) == 0 || (v24 = mlir::getSingleIntValue<int>(v29, v30), (v24 & 0x100000000) == 0))
  {
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E0982670;
    strcpy(v29, "failed: cannot handle a non constant amount_after value on ANEs.");
    goto LABEL_19;
  }

  v26 = *__p;
  v29 = (*(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * v26) - (v24 + v21));
  v27 = *(a2 + 24);
  v37 = mlir::ValueRange::dereference_iterator(&v40, 0);
  v36 = *__p;
  v28 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v27, &v37, &v36, &v31, &v29);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v28);
  result = 1;
LABEL_21:
  if (__p == &v39 + 8)
  {
    return result;
  }

  v16 = result;
  free(__p);
  return v16;
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)4>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)4>::~ConvertCrop(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
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

  v34 = v7;
  v35 = v8;
  v9 = *(v6 + 56);
  mlir::CallableOpInterface::getArgAttrsAttr(&v34);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  if ((v12 & 1) == 0)
  {
    __p = operator new(0x30uLL);
    v39 = xmmword_1E0982960;
    strcpy(__p, "could not extract positive promoted axes");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return result;
    }

    v16 = result;
    operator delete(__p);
    return v16;
  }

  __p = &v39 + 8;
  *&v39 = 0x100000000;
  if (SortedUniquePromotedPositiveAxesAttr)
  {
    v13 = SortedUniquePromotedPositiveAxesAttr;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
    SortedUniquePromotedPositiveAxesAttr = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, &__p, 1);
  v33[0] = mlir::getRankPromotionTypeForANE(v34, v35);
  v33[1] = v17;
  v18 = *(*(a2 + 72) + 88);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v18;
  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) == 0)
  {
    v32 = 0;
    v31 = 0;
    goto LABEL_18;
  }

  SingleInt = mlir::getSingleIntValue<int>(v29, v30);
  v31 = SingleInt;
  v32 = BYTE4(SingleInt);
  if ((SingleInt & 0x100000000) == 0)
  {
LABEL_18:
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E09827E0;
    strcpy(v29, "failed: cannot handle a non constant amount_before value on ANEs.");
LABEL_19:
    result = mlir::logMatchFailure(&v29, *(a2 + 24), a4);
    if (SHIBYTE(v30) < 0)
    {
      v25 = result;
      operator delete(v29);
      result = v25;
    }

    goto LABEL_21;
  }

  v21 = SingleInt;
  v22 = *(*(a2 + 72) + 120);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v22;
  v23 = mlir::Value::getDefiningOp(&v37);
  if (!v23 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, v23) & 1) == 0 || (v24 = mlir::getSingleIntValue<int>(v29, v30), (v24 & 0x100000000) == 0))
  {
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E0982670;
    strcpy(v29, "failed: cannot handle a non constant amount_after value on ANEs.");
    goto LABEL_19;
  }

  v26 = *__p;
  v29 = (*(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * v26) - (v24 + v21));
  v27 = *(a2 + 24);
  v37 = mlir::ValueRange::dereference_iterator(&v40, 0);
  v36 = *__p;
  v28 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v27, &v37, &v36, &v31, &v29);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v28);
  result = 1;
LABEL_21:
  if (__p == &v39 + 8)
  {
    return result;
  }

  v16 = result;
  free(__p);
  return v16;
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)5>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)5>::~ConvertCrop(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
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

  v34 = v7;
  v35 = v8;
  v9 = *(v6 + 56);
  mlir::CallableOpInterface::getArgAttrsAttr(&v34);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  if ((v12 & 1) == 0)
  {
    __p = operator new(0x30uLL);
    v39 = xmmword_1E0982960;
    strcpy(__p, "could not extract positive promoted axes");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return result;
    }

    v16 = result;
    operator delete(__p);
    return v16;
  }

  __p = &v39 + 8;
  *&v39 = 0x100000000;
  if (SortedUniquePromotedPositiveAxesAttr)
  {
    v13 = SortedUniquePromotedPositiveAxesAttr;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
    SortedUniquePromotedPositiveAxesAttr = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, &__p, 1);
  v33[0] = mlir::getRankPromotionTypeForANE(v34, v35);
  v33[1] = v17;
  v18 = *(*(a2 + 72) + 88);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v18;
  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) == 0)
  {
    v32 = 0;
    v31 = 0;
    goto LABEL_18;
  }

  SingleInt = mlir::getSingleIntValue<int>(v29, v30);
  v31 = SingleInt;
  v32 = BYTE4(SingleInt);
  if ((SingleInt & 0x100000000) == 0)
  {
LABEL_18:
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E09827E0;
    strcpy(v29, "failed: cannot handle a non constant amount_before value on ANEs.");
LABEL_19:
    result = mlir::logMatchFailure(&v29, *(a2 + 24), a4);
    if (SHIBYTE(v30) < 0)
    {
      v25 = result;
      operator delete(v29);
      result = v25;
    }

    goto LABEL_21;
  }

  v21 = SingleInt;
  v22 = *(*(a2 + 72) + 120);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v22;
  v23 = mlir::Value::getDefiningOp(&v37);
  if (!v23 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, v23) & 1) == 0 || (v24 = mlir::getSingleIntValue<int>(v29, v30), (v24 & 0x100000000) == 0))
  {
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E0982670;
    strcpy(v29, "failed: cannot handle a non constant amount_after value on ANEs.");
    goto LABEL_19;
  }

  v26 = *__p;
  v29 = (*(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * v26) - (v24 + v21));
  v27 = *(a2 + 24);
  v37 = mlir::ValueRange::dereference_iterator(&v40, 0);
  v36 = *__p;
  v28 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v27, &v37, &v36, &v31, &v29);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v28);
  result = 1;
LABEL_21:
  if (__p == &v39 + 8)
  {
    return result;
  }

  v16 = result;
  free(__p);
  return v16;
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)6>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)6>::~ConvertCrop(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
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

  v34 = v7;
  v35 = v8;
  v9 = *(v6 + 56);
  mlir::CallableOpInterface::getArgAttrsAttr(&v34);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  if ((v12 & 1) == 0)
  {
    __p = operator new(0x30uLL);
    v39 = xmmword_1E0982960;
    strcpy(__p, "could not extract positive promoted axes");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return result;
    }

    v16 = result;
    operator delete(__p);
    return v16;
  }

  __p = &v39 + 8;
  *&v39 = 0x100000000;
  if (SortedUniquePromotedPositiveAxesAttr)
  {
    v13 = SortedUniquePromotedPositiveAxesAttr;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
    SortedUniquePromotedPositiveAxesAttr = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, &__p, 1);
  v33[0] = mlir::getRankPromotionTypeForANE(v34, v35);
  v33[1] = v17;
  v18 = *(*(a2 + 72) + 88);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v18;
  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) == 0)
  {
    v32 = 0;
    v31 = 0;
    goto LABEL_18;
  }

  SingleInt = mlir::getSingleIntValue<int>(v29, v30);
  v31 = SingleInt;
  v32 = BYTE4(SingleInt);
  if ((SingleInt & 0x100000000) == 0)
  {
LABEL_18:
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E09827E0;
    strcpy(v29, "failed: cannot handle a non constant amount_before value on ANEs.");
LABEL_19:
    result = mlir::logMatchFailure(&v29, *(a2 + 24), a4);
    if (SHIBYTE(v30) < 0)
    {
      v25 = result;
      operator delete(v29);
      result = v25;
    }

    goto LABEL_21;
  }

  v21 = SingleInt;
  v22 = *(*(a2 + 72) + 120);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v22;
  v23 = mlir::Value::getDefiningOp(&v37);
  if (!v23 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, v23) & 1) == 0 || (v24 = mlir::getSingleIntValue<int>(v29, v30), (v24 & 0x100000000) == 0))
  {
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E0982670;
    strcpy(v29, "failed: cannot handle a non constant amount_after value on ANEs.");
    goto LABEL_19;
  }

  v26 = *__p;
  v29 = (*(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * v26) - (v24 + v21));
  v27 = *(a2 + 24);
  v37 = mlir::ValueRange::dereference_iterator(&v40, 0);
  v36 = *__p;
  v28 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v27, &v37, &v36, &v31, &v29);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v28);
  result = 1;
LABEL_21:
  if (__p == &v39 + 8)
  {
    return result;
  }

  v16 = result;
  free(__p);
  return v16;
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)7>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)7>::~ConvertCrop(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
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

  v34 = v7;
  v35 = v8;
  v9 = *(v6 + 56);
  mlir::CallableOpInterface::getArgAttrsAttr(&v34);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  if ((v12 & 1) == 0)
  {
    __p = operator new(0x30uLL);
    v39 = xmmword_1E0982960;
    strcpy(__p, "could not extract positive promoted axes");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return result;
    }

    v16 = result;
    operator delete(__p);
    return v16;
  }

  __p = &v39 + 8;
  *&v39 = 0x100000000;
  if (SortedUniquePromotedPositiveAxesAttr)
  {
    v13 = SortedUniquePromotedPositiveAxesAttr;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
    SortedUniquePromotedPositiveAxesAttr = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, &__p, 1);
  v33[0] = mlir::getRankPromotionTypeForANE(v34, v35);
  v33[1] = v17;
  v18 = *(*(a2 + 72) + 88);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v18;
  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) == 0)
  {
    v32 = 0;
    v31 = 0;
    goto LABEL_18;
  }

  SingleInt = mlir::getSingleIntValue<int>(v29, v30);
  v31 = SingleInt;
  v32 = BYTE4(SingleInt);
  if ((SingleInt & 0x100000000) == 0)
  {
LABEL_18:
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E09827E0;
    strcpy(v29, "failed: cannot handle a non constant amount_before value on ANEs.");
LABEL_19:
    result = mlir::logMatchFailure(&v29, *(a2 + 24), a4);
    if (SHIBYTE(v30) < 0)
    {
      v25 = result;
      operator delete(v29);
      result = v25;
    }

    goto LABEL_21;
  }

  v21 = SingleInt;
  v22 = *(*(a2 + 72) + 120);
  v29 = 0;
  *&v30 = 0;
  v36 = &v29;
  v37 = v22;
  v23 = mlir::Value::getDefiningOp(&v37);
  if (!v23 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, v23) & 1) == 0 || (v24 = mlir::getSingleIntValue<int>(v29, v30), (v24 & 0x100000000) == 0))
  {
    v29 = operator new(0x48uLL);
    v30 = xmmword_1E0982670;
    strcpy(v29, "failed: cannot handle a non constant amount_after value on ANEs.");
    goto LABEL_19;
  }

  v26 = *__p;
  v29 = (*(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * v26) - (v24 + v21));
  v27 = *(a2 + 24);
  v37 = mlir::ValueRange::dereference_iterator(&v40, 0);
  v36 = *__p;
  v28 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v27, &v37, &v36, &v31, &v29);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v28);
  result = 1;
LABEL_21:
  if (__p == &v39 + 8)
  {
    return result;
  }

  v16 = result;
  free(__p);
  return v16;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::CosOp,mlir::anec::Cos>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B12950;
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

void *sub_1DFF754D8()
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

uint64_t mlir::OpConversionPattern<mlir::mps::CosOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CosOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::CosOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::CosOp,mlir::anec::Cos>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v51 = mlir::OpBuilder::create<mlir::anec::Cos,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
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

uint64_t mlir::OpBuilder::create<mlir::anec::Cos,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Cos,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SinOp,mlir::anec::Sin>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B129C0;
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

void *sub_1DFF7610C()
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

uint64_t mlir::OpConversionPattern<mlir::mps::SinOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SinOp,mlir::anec::Sin>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v51 = mlir::OpBuilder::create<mlir::anec::Sin,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
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

uint64_t mlir::OpBuilder::create<mlir::anec::Sin,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Sin,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Sin,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Sin,void>::id)
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

void *mlir::anonymous namespace::FoldOperation<mlir::mps::IdentityOp>::~FoldOperation(void *a1)
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

void mlir::anonymous namespace::FoldOperation<mlir::mps::IdentityOp>::~FoldOperation(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::IdentityOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::IdentityOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::IdentityOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertNormalization::~ConvertNormalization(mlir::_anonymous_namespace_::ConvertNormalization *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::NormalizationOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::NormalizationOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::NormalizationOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 56);
  v32 = *(a3 + 48);
  v33 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v33 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v32, i) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      i = v33 + 1;
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
    v26 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v32 = v18;
    v33 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v32) || !mlir::CallOpInterface::getArgOperands(&v32))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v32);
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

uint64_t mlir::anonymous namespace::ConvertNormalization::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v44 = a2;
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  v47 = a2;
  v51 = v7;
  v52[0] = v8;
  v9 = (*(mlir::ValueRange::dereference_iterator(&v51, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  *&v55 = v9;
  *(&v55 + 1) = v10;
  mlir::CallableOpInterface::getArgAttrsAttr(&v55);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v11);
  if (v13)
  {
    v14 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v55) + 8 * IndexFromDim);
    v15 = v52[0];
    RankPromotionTypeForANE = mlir::ValueRange::offset_base(&v51, 1);
    v54 = 0;
    v16 = v15 - 1;
    if (v15 == 1)
    {
LABEL_16:
      *&v55 = v7;
      *(&v55 + 1) = v8;
      mlir::mps::InstanceNormOp::getEpsilon(&v47, &v51);
      v26 = (*(mlir::ValueRange::dereference_iterator(&v55, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v26)
      {
        v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
      }

      else
      {
        v27 = 0;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v26, v27);
      v54 = v34;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
      v37 = v36;
      isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
      mlir::MemRefType::get(ArgAttrsAttr, v37, isSplat, 0, 0, 0);
      v39 = v47;
      v48[0] = mlir::ValueRange::dereference_iterator(&v55, 0);
      v49 = mlir::ValueRange::dereference_iterator(&v55, 1);
      v46 = mlir::ValueRange::dereference_iterator(&v55, 2);
      v45 = mlir::ValueRange::dereference_iterator(&v55, 3);
      v50 = mlir::ValueRange::dereference_iterator(&v55, 4);
      v40 = mlir::OpBuilder::create<mlir::anec::BatchNorm,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::Value,llvm::APFloat &>(a4 + 1, *(v39 + 24), v48, &v49, &v46, &v45, &v50, &v51);
      v41 = (*(*a4 + 1))(a4, v39, v40);
      v42 = v52[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v41) != v42)
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v52);
        return 1;
      }

LABEL_24:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v52);
      return 1;
    }

    v17 = 0;
    while (1)
    {
      v49 = mlir::ValueRange::dereference_iterator(&RankPromotionTypeForANE, v17);
      DefiningOp = mlir::Value::getDefiningOp(&v49);
      if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
      {
        break;
      }

      v19 = (*(v49 + 8) & 0xFFFFFFFFFFFFFFF8);
      v20 = v19 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8) : 0;
      v48[0] = v19;
      v48[1] = v20;
      v21 = mlir::CallableOpInterface::getArgAttrsAttr(v48);
      if (mlir::ShapedType::getNumElements(v21, v22) != v14)
      {
        break;
      }

      mlir::CallableOpInterface::getArgAttrsAttr(v48);
      v24 = mlir::anec::getIndexFromDim(1, v23);
      if ((v25 & 1) == 0 || *(mlir::CallableOpInterface::getArgAttrsAttr(v48) + 8 * v24) != v14)
      {
        break;
      }

      v17 = v54 + 1;
      v54 = v17;
      if (v17 == v16)
      {
        goto LABEL_16;
      }
    }
  }

  v55 = *(a3 + 48);
  v48[0] = mlir::ValueRange::dereference_iterator(&v55, 0);
  v49 = mlir::ValueRange::dereference_iterator(&v55, 1);
  v47 = mlir::ValueRange::dereference_iterator(&v55, 2);
  v46 = mlir::ValueRange::dereference_iterator(&v55, 3);
  v45 = mlir::ValueRange::dereference_iterator(&v55, 4);
  v48[0] = mlir::OpBuilder::create<mlir::anec::ElementwiseSub,mlir::Value &,mlir::Value &>(a4 + 1, *(a2 + 24), v48, &v49) - 16;
  Epsilon = mlir::mps::InstanceNormOp::getEpsilon(&v44, &v51);
  v29 = llvm::APFloatBase::IEEEhalf(Epsilon);
  LOBYTE(RankPromotionTypeForANE) = 0;
  llvm::APFloat::convert(&v51, v29, 1, &RankPromotionTypeForANE);
  v47 = mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::Value &,llvm::APFloat &>(a4 + 1, *(v44 + 24), &v47, &v51) - 16;
  v48[0] = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>(a4 + 1, *(v44 + 24), v48, &v47) - 16;
  v48[0] = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>(a4 + 1, *(v44 + 24), v48, &v46) - 16;
  v30 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::Value &,mlir::Value &>(a4 + 1, *(v44 + 24), v48, &v45);
  v31 = v44;
  v50 = v30 - 16;
  mlir::ValueRange::ValueRange(&RankPromotionTypeForANE, &v50, 1uLL);
  v32 = mlir::ConversionPatternRewriter::replaceOp(a4, v31, RankPromotionTypeForANE, v54);
  v33 = v52[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
  {
    goto LABEL_24;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(v52);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseSub,mlir::Value &,mlir::Value &>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::Value &,llvm::APFloat &>(mlir::Float16Type **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::Value &,llvm::APFloat &>(v24, v21, v20);
  }

  mlir::OperationState::OperationState(v24, a2, v9);
  v11 = *a3;
  v13 = *(a4 + 8);
  v12 = (a4 + 8);
  v15 = llvm::APFloatBase::PPCDoubleDouble(v14);
  if (v15 == v13)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v23, v12);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v23, v12);
  }

  mlir::anec::Rsqrt::build(a1, v24, v11, v22);
  if (v15 == v23[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v23);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v23);
  }

  v16 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v17;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::Value &,mlir::Value &>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::BatchNorm,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::Value,llvm::APFloat &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v36[38] = *MEMORY[0x1E69E9840];
  v31 = a2;
  Context = mlir::Attribute::getContext(&v31);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::BatchNorm,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::BatchNorm,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::Value,llvm::APFloat &>(v36, v33, v32);
  }

  mlir::OperationState::OperationState(v36, a2, v17);
  v19 = *a3;
  v20 = *a4;
  v21 = *a5;
  v22 = *a6;
  v23 = *a7;
  v25 = *(a8 + 8);
  v24 = (a8 + 8);
  v27 = llvm::APFloatBase::PPCDoubleDouble(v26);
  if (v27 == v25)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v35, v24);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v35, v24);
  }

  mlir::anec::BatchNorm::build(a1, v36, v19, v20, v21, v22, v23, v34);
  if (v27 == v35[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v35);
  }

  v28 = mlir::OpBuilder::create(a1, v36);
  if (*(*(v28 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::BatchNorm,void>::id)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  mlir::OperationState::~OperationState(v36);
  return v29;
}

void mlir::anonymous namespace::ConvertReductionVariance::~ConvertReductionVariance(mlir::_anonymous_namespace_::ConvertReductionVariance *this)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionVarianceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 56);
  v32 = *(a3 + 48);
  v33 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v33 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v32, i) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      i = v33 + 1;
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
    v26 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v32 = v18;
    v33 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v32) || !mlir::CallOpInterface::getArgOperands(&v32))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v32);
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

uint64_t mlir::anonymous namespace::ConvertReductionVariance::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49[2] = *MEMORY[0x1E69E9840];
  v43 = a2;
  v7 = *(a3 + 56);
  v49[0] = *(a3 + 48);
  v6 = v49[0];
  v49[1] = v7;
  mlir::TypeConverter::TypeConverter(v48, *(a1 + 96));
  v42 = v8;
  if ((v8 & 1) == 0)
  {
    __p = operator new(0x20uLL);
    v47 = xmmword_1E097BD70;
    strcpy(__p, "failed to convert operand axes");
    mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(__p);
    }

LABEL_36:
    mlir::TypeConverter::~TypeConverter(v48);
  }

  v40 = mlir::ValueRange::dereference_iterator(v49, 0);
  v9 = (v40[1] & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v39[0] = mlir::getRankPromotionTypeForANE(v9, v10);
  v39[1] = v11;
  v38 = mlir::OpBuilder::create<mlir::anec::ReduceAvg,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), *(a2 + 24), &v40, &v41) - 16;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v43))
  {
    if (*(v43 + 36))
    {
      v12 = v43 - 16;
    }

    else
    {
      v12 = 0;
    }

    v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v13)
    {
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
    }

    else
    {
      v14 = 0;
    }
  }

  v40 = (mlir::OpBuilder::create<mlir::anec::ElementwiseSub,mlir::Value &,mlir::Value &>((a4 + 8), *(v43 + 24), &v40, &v38) - 16);
  v40 = (mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>((a4 + 8), *(v43 + 24), &v40, &v40) - 16);
  v40 = (mlir::OpBuilder::create<mlir::anec::ReduceSum,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), *(v43 + 24), &v40, &v41) - 16);
  if (v42)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&__p, v41, 0);
    v15 = v41;
    NumElements = mlir::DenseElementsAttr::getNumElements(&v41);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v44, v15, NumElements);
    if (*(&v47 + 1) != v45)
    {
      v17 = 1;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&__p, &v36);
        if (v37 >= 0x41)
        {
          v18 = v36;
        }

        else
        {
          v18 = &v36;
        }

        v19 = *v18;
        v20 = *(mlir::CallableOpInterface::getArgAttrsAttr(v39) + 8 * v19);
        if (v37 >= 0x41 && v36)
        {
          operator delete[](v36);
        }

        v17 *= v20;
        ++*(&v47 + 1);
      }

      while (*(&v47 + 1) != v45);
      if (v17 != 1)
      {
        v21 = llvm::detail::IEEEFloat::IEEEFloat(v44, 1.0 / (v17 + -1.0));
        v22 = llvm::APFloatBase::IEEEdouble(v21);
        llvm::APFloat::Storage::Storage(&v47, v44, v22);
        llvm::detail::IEEEFloat::~IEEEFloat(v44);
        v24 = llvm::APFloatBase::IEEEhalf(v23);
        LOBYTE(v44[0]) = 0;
        llvm::APFloat::convert(&__p, v24, 1, v44);
        if (*(v43 + 36))
        {
          v25 = v43 - 16;
        }

        else
        {
          v25 = 0;
        }

        v26 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v26)
        {
          v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
        }

        else
        {
          v27 = 0;
        }

        RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v26, v27);
        v44[0] = mlir::DenseElementsAttr::get(RankPromotionTypeForANE, v29, &__p, 1);
        v36 = mlir::TypeConverter::convertType(v48, RankPromotionTypeForANE);
        v35 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a4 + 8), *(v43 + 24), &v36, v44);
        v30 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), *(v43 + 24), &v40, &v35);
        v40 = (v30 - 16);
        v31 = v47;
        if (llvm::APFloatBase::PPCDoubleDouble(v30) == v31)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v47);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v47);
        }
      }
    }

    v32 = v43;
    v44[0] = v40;
    mlir::ValueRange::ValueRange(&__p, v44, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v32, __p, v47);
    goto LABEL_36;
  }

  v33 = std::__throw_bad_optional_access[abi:nn200100]();
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)0>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)0>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionArgMinOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionArgMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionArgMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 56);
  v32 = *(a3 + 48);
  v33 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v33 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v32, i) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      i = v33 + 1;
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
    v26 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v32 = v18;
    v33 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v32) || !mlir::CallOpInterface::getArgOperands(&v32))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v32);
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