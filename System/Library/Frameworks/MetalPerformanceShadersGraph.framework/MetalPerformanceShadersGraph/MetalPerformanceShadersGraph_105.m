uint64_t mlir::anonymous namespace::getANECTransposeAttrFromPermutes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v16 = v18;
  v17 = 0x500000000;
  if (a3)
  {
    v5 = 0;
    v6 = 8 * a3;
    do
    {
      if (v5 != *(a2 + 8 * v5))
      {
        v14 = *(a2 + 8 * v5);
        v15 = v5;
        llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v16, v16 + 8 * v17, &v14, &v16);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
    v7 = v17 >> 1;
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = 2;
  IntegerType = mlir::Builder::getIntegerType((a1 + 8), 64, 0);
  v9 = mlir::RankedTensorType::get(&v14, 2, IntegerType, 0);
  if (v9)
  {
    v10 = v9;
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v9 = v10;
  }

  else
  {
    v11 = 0;
  }

  result = mlir::DenseElementsAttr::getFromRawBuffer(v9, v11, v16, 8 * v17, 8, 1, 0);
  if (v16 != v18)
  {
    v13 = result;
    free(v16);
    return v13;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::GatherND,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GatherND,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GatherND,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::GatherND::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GatherND,void>::id)
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

void mlir::OpBuilder::createOrFold<mlir::mps::CastOp,mlir::Value &,mlir::FloatType>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a3;
  Context = mlir::Attribute::getContext(&v28);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a3, v11);
  mlir::mps::CastOp::build(a1, v31, *a4, *a5);
  v14 = mlir::Operation::create(v31, v13);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(a1 + 24);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v15 + 32, v14);
    v18 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v17);
    v19 = *v16;
    *v18 = *v16;
    v18[1] = v16;
    *(v19 + 8) = v18;
    *v16 = v18;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v20);
  }

  if ((mlir::OpBuilder::tryFold(a1, v14, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v14);
    goto LABEL_20;
  }

  v21 = v14[9];
  if (v21)
  {
    v22 = (v14 - 4);
  }

  else
  {
    v22 = 0;
  }

  *(a2 + 8) = 0;
  if (v21 <= *(a2 + 12))
  {
    if (!v21)
    {
      v26 = 0;
      goto LABEL_17;
    }

    v23 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v21, 8);
    v23 = *(a2 + 8);
  }

  v24 = 0;
  v25 = *a2 + 8 * v23;
  do
  {
    *(v25 + 8 * v24) = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, v24);
    ++v24;
  }

  while (v21 != v24);
  v26 = *(a2 + 8);
LABEL_17:
  *(a2 + 8) = v26 + v21;
  if (*(a1 + 16))
  {
    v27 = *(a1 + 8);
    if (v27)
    {
      (*(*v27 + 16))(v27, v14, 0, 0);
    }
  }

LABEL_20:
  mlir::OperationState::~OperationState(v31);
}

uint64_t mlir::OpBuilder::create<mlir::anec::Reshape,mlir::ShapedType,mlir::anec::GatherND &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id)
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

void mlir::anonymous namespace::ConvertGather::~ConvertGather(mlir::_anonymous_namespace_::ConvertGather *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::GatherOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::GatherOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::GatherOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertGather::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, void **a3, mlir::Float16Type **a4)
{
  v102 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 72);
  v8 = (*(*(v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v7 = *(a2 + 72);
  }

  else
  {
    v9 = 0;
  }

  v84[0] = v8;
  v84[1] = v9;
  v10 = (*(*(v7 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v83[0] = v10;
  v83[1] = v11;
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
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

  v82[0] = v13;
  v82[1] = v14;
  BatchDims = mlir::mps::detail::GatherOpGenericAdaptorBase::getBatchDims(a3);
  __p = a3[7];
  *&v87[0] = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v87[0] = 0;
  v81 = mlir::ValueRange::dereference_iterator(&__p, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v81);
  if (mlir::mps::getElementBitWidth(ElementTypeOrSelf) >= 9 && !mlir::Type::isF16(&ElementTypeOrSelf))
  {
    v17 = (*(v81 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v17)
    {
      v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    }

    else
    {
      v18 = 0;
    }

    v91 = v17;
    v92 = v18;
    F16Type = mlir::Builder::getF16Type(a4 + 1, v16);
    LOBYTE(__p) = 0;
    BYTE8(v87[0]) = 0;
    mlir::ShapedType::cloneWith(&v91, &__p, F16Type);
    v20 = *(a2 + 24);
    v91 = mlir::Builder::getF16Type(a4 + 1, v21);
    __p = v87 + 8;
    *&v87[0] = 0x100000000;
    mlir::OpBuilder::createOrFold<mlir::mps::CastOp,mlir::Value &,mlir::FloatType>((a4 + 1), &__p, v20, &v81, &v91);
    v22 = *__p;
    if (__p != v87 + 8)
    {
      free(__p);
    }

    v81 = v22;
  }

  v79 = 0;
  __p = a3[7];
  *&v87[0] = 2;
  __p = mlir::ValueRange::offset_base(&__p, 2);
  *&v87[0] = 0;
  v23 = mlir::ValueRange::dereference_iterator(&__p, 0);
  v91 = &v79;
  __p = v23;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v91, DefiningOp) & 1) != 0)
  {
    v97 = &v99;
    v98 = 0x100000000;
    v25 = v79;
    if (v79)
    {
      v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v79 + 8);
    }

    else
    {
      v26 = 0;
    }

    mlir::getIntValues<long long>(v25, v26, &v97, 1);
    v94 = &v96;
    v95 = 0x100000000;
    v28 = v97;
    v29 = v98;
    mlir::CallableOpInterface::getArgAttrsAttr(v84);
    if (mlir::getPositiveAxes(v28, v29, v30, &v94, 0, 0, 0))
    {
      if (v95 == 1)
      {
        v74 = *v94;
        mlir::CallableOpInterface::getArgAttrsAttr(v84);
        v73 = v31;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v84);
        v34 = v33;
        v91 = v93;
        v92 = 0x500000000;
        v35 = (8 * v33) >> 3;
        if (v35 < 6)
        {
          v36 = 0;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v35, 8);
          v36 = v92;
        }

        if (v34)
        {
          memcpy(&v91[v36], ArgAttrsAttr, 8 * v34);
          v36 = v92;
        }

        LODWORD(v92) = v36 + v34;
        mlir::CallableOpInterface::getArgAttrsAttr(v83);
        if (v37)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v83);
        }

        else
        {
          v38 = 1;
        }

        llvm::SmallVectorImpl<unsigned long long>::insert(&v91, &v91[*v94], v38 + ~BatchDims, 1uLL);
        v39 = (5 - v92) & ~((5 - v92) >> 63);
        if (v92 <= 4)
        {
          llvm::SmallVectorImpl<unsigned long long>::insert(&v91, v91, (5 - v92) & ~((5 - v92) >> 63), 1uLL);
        }

        v88 = v90;
        v40 = v91;
        v41 = &v91[BatchDims + v39];
        v89 = 0x500000000;
        v42 = 8 * BatchDims + 8 * v39;
        if ((v42 >> 3) < 6)
        {
          v43 = 0;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v90, v42 >> 3, 8);
          v43 = v89;
        }

        if (v40 != v41)
        {
          memcpy(v88 + 8 * v43, v40, v42);
          v43 = v89;
        }

        v44 = v43 + (v42 >> 3);
        LODWORD(v89) = v44;
        if (*v94 - BatchDims >= 1)
        {
          llvm::SmallVectorImpl<unsigned long long>::insert(&v88, v88 + 8 * v44, *v94 - BatchDims, 1uLL);
        }

        v45 = mlir::CallableOpInterface::getArgAttrsAttr(v83);
        v47 = v46;
        __p = v87 + 8;
        *&v87[0] = 0x600000000;
        v48 = (8 * v46) >> 3;
        if (v48 < 7)
        {
          v49 = 0;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v87 + 8, v48, 8);
          v49 = v87[0];
        }

        if (v47)
        {
          memcpy(__p + 8 * v49, v45, 8 * v47);
          v49 = v87[0];
        }

        v50 = v49 + v47;
        LODWORD(v87[0]) = v50;
        if (!v50)
        {
          if (DWORD1(v87[0]))
          {
            v51 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v87 + 8, 1uLL, 8);
            v51 = LODWORD(v87[0]);
          }

          *(__p + v51) = 1;
          v50 = ++LODWORD(v87[0]);
        }

        llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v88, v88 + 8 * v89, __p + 8 * BatchDims, __p + 8 * v50);
        if (v89 <= 4)
        {
          llvm::SmallVectorImpl<unsigned long long>::insert(&v88, v88 + 8 * v89, 5 - v89, 1uLL);
        }

        RankPromotionTypeForANE = 1;
        IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
        v53 = mlir::RankedTensorType::get(&RankPromotionTypeForANE, 1, IntegerType, 0);
        if (v53)
        {
          v54 = v53;
          v55 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
          v53 = v54;
        }

        else
        {
          v55 = 0;
        }

        v85 = ((5 - v73) & ~((5 - v73) >> 63)) + v74;
        v78 = mlir::DenseElementsAttr::getFromRawBuffer(v53, v55, &v85, 8, 8, 1, 0);
        v56 = v91;
        v57 = v92;
        isSplat = mlir::ElementsAttr::isSplat(v84);
        v85 = mlir::MemRefType::get(v56, v57, isSplat, 0, 0, 0);
        v59 = v88;
        v60 = v89;
        v61 = mlir::getElementTypeOrSelf(v81);
        v77 = mlir::MemRefType::get(v59, v60, v61, 0, 0, 0);
        v62 = *(a2 + 24);
        RankPromotionTypeForANE = a3[7];
        v101 = 0;
        RankPromotionTypeForANE = mlir::ValueRange::dereference_iterator(&RankPromotionTypeForANE, 0);
        v76 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), v62, &v85, &RankPromotionTypeForANE) - 16;
        v81 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &v77, &v81) - 16;
        v75 = mlir::OpBuilder::create<mlir::anec::GatherND,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, *(a2 + 24), &v76, &v81, &v78);
        v63 = mlir::CallableOpInterface::getArgAttrsAttr(v82);
        v65 = v64;
        v66 = mlir::ElementsAttr::isSplat(v82);
        v67 = mlir::MemRefType::get(v63, v65, v66, 0, 0, 0);
        if (v67)
        {
          v68 = v67;
          v69 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
          v67 = v68;
        }

        else
        {
          v69 = 0;
        }

        RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v67, v69);
        v101 = v70;
        v71 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::ShapedType,mlir::anec::GatherND &>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v75);
        (*(*a4 + 1))(a4, a2, v71);
        if (__p != v87 + 8)
        {
          free(__p);
        }

        if (v88 != v90)
        {
          free(v88);
        }

        if (v91 != v93)
        {
          free(v91);
        }

        matched = 1;
LABEL_75:
        if (v94 != &v96)
        {
          free(v94);
        }

        if (v97 != &v99)
        {
          free(v97);
        }

        return matched;
      }

      __p = operator new(0x19uLL);
      v87[0] = xmmword_1E096E570;
      strcpy(__p, "expected one axis only.");
    }

    else
    {
      __p = operator new(0x28uLL);
      v87[0] = xmmword_1E0982750;
      strcpy(__p, "failed: could not extract positive axes");
    }

    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v87[0]) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_75;
  }

  __p = operator new(0x40uLL);
  v87[0] = xmmword_1E0982780;
  strcpy(__p, "failed: gather with non-constant axis is not supported on ANEs.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v87[0]) < 0)
  {
    operator delete(__p);
  }

  return matched;
}

void mlir::anonymous namespace::ConvertSampleGrid::~ConvertSampleGrid(mlir::_anonymous_namespace_::ConvertSampleGrid *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SampleGridOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SampleGridOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SampleGridOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 104);
  v37 = *(a3 + 96);
  v38 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v38 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v37, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v29 = v10;
        v30 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v29) || !mlir::CallOpInterface::getArgOperands(&v29))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v29);
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
        v29 = 0;
        v30 = 0;
      }

LABEL_3:
      i = v38 + 1;
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

    v25 = *(a3 + 96);
    v35 = *(a3 + 80);
    v36 = v25;
    v26 = *(a3 + 64);
    v27 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v27;
    v28 = *(a3 + 32);
    v33 = *(a3 + 48);
    v34 = v26;
    v32 = v28;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v37 = 0;
      v38 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v37 = v18;
    v38 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v37) || !mlir::CallOpInterface::getArgOperands(&v37))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v37);
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

uint64_t mlir::anonymous namespace::ConvertSampleGrid::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v121 = *MEMORY[0x1E69E9840];
  v88 = a2;
  v7 = *(a2 + 24);
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

  v87[0] = v9;
  v87[1] = v10;
  v11 = (*(*(v8 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = v11;
  v86[1] = v12;
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

  v85[0] = v14;
  v85[1] = v15;
  v111 = *(a3 + 96);
  v16 = (*(mlir::ValueRange::dereference_iterator(&v111, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  mlir::getRankPromotionTypeForANE(v16, v17);
  mlir::CallableOpInterface::getArgAttrsAttr(v87);
  if (v18 > 5 || (mlir::CallableOpInterface::getArgAttrsAttr(v85), v19 >= 6))
  {
    *__p = operator new(0x30uLL);
    *&__p[8] = xmmword_1E0982700;
    strcpy(*__p, "Inputs / output with rank > 5 not supported");
    goto LABEL_19;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v86);
  if (v22 != 4)
  {
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982880;
    strcpy(*__p, "Coordinate tensor must be rank 4.");
    goto LABEL_19;
  }

  v23 = mlir::ValueRange::dereference_iterator(&v111, 1);
  v24 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v24)
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  v84[0] = mlir::getRankPromotionTypeForANE(v24, v25);
  v84[1] = v26;
  if (*(mlir::CallableOpInterface::getArgAttrsAttr(v84) + 24) != 1 && *(mlir::CallableOpInterface::getArgAttrsAttr(v84) + 24) != 2)
  {
    *__p = operator new(0x48uLL);
    *&__p[8] = xmmword_1E0982890;
    strcpy(*__p, "Invalid coordinate tensor format. Channel dim should be either 1 or 2.");
    goto LABEL_19;
  }

  *__p = mlir::ElementsAttr::isSplat(v86);
  if (!mlir::Type::isInteger(__p, 8))
  {
    *__src = mlir::ElementsAttr::isSplat(v86);
    if (!mlir::Type::isF16(__src))
    {
      *__p = operator new(0xA0uLL);
      *&__p[8] = xmmword_1E09828A0;
      strcpy(*__p, "Invalid warp tensor data type. It should be either F16, UI8 or SI8 since MPS currently doesn't support UI16/SI16 transpose to convert NHWC to NCHW ANEC format.");
LABEL_19:
      matched = mlir::logMatchFailure(__p, *(v88 + 24), a4);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      return matched;
    }
  }

  v108 = v110;
  v110[0] = xmmword_1E0982A70;
  v110[1] = unk_1E0982A80;
  v109 = 0x600000004;
  v27 = v88;
  *__src = v23;
  mlir::ValueRange::ValueRange(__p, __src, 1uLL);
  v29 = (*(Transpose + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  mlir::getRankPromotionTypeForANE(v29, v30);
  v31 = mlir::ValueRange::dereference_iterator(&v111, 0);
  v32 = *(a3 + 80);
  v118 = *(a3 + 64);
  v119 = v32;
  v120 = *(a3 + 96);
  v33 = *(a3 + 16);
  *__p = *a3;
  *&__p[16] = v33;
  v34 = *(a3 + 48);
  v116 = *(a3 + 32);
  v117 = v34;
  v35 = v88;
  LODWORD(v109) = 0;
  Layout = mlir::mps::detail::SampleGridOpGenericAdaptorBase::getLayout(__p);
  if (Layout <= 3)
  {
    if (!Layout)
    {
      goto LABEL_46;
    }

    if (Layout != 1)
    {
      goto LABEL_100;
    }

    v37 = v108 + 8 * v109;
    *__src = xmmword_1E0982A70;
    *&__src[16] = unk_1E0982A80;
    v38 = v107;
LABEL_45:
    llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v108, v37, __src, v38);
    goto LABEL_46;
  }

  if (Layout == 4)
  {
    goto LABEL_46;
  }

  if (Layout == 5)
  {
    v37 = v108 + 8 * v109;
    *__src = xmmword_1E0982A90;
    *&__src[16] = 1;
    v38 = &__src[24];
    goto LABEL_45;
  }

  if (Layout != 6)
  {
LABEL_100:
    *__src = operator new(0x48uLL);
    *&__src[8] = xmmword_1E0982890;
    strcpy(*__src, "Unhandled MPS layout. Acceptable layouts are: HW, CHW, HWC, NCHW, NHWC");
    v81 = mlir::logMatchFailure(__src, *(v35 + 24), a4);
    if ((__src[23] & 0x80000000) != 0)
    {
      v82 = v81;
      operator delete(*__src);
      v81 = v82;
    }

    if ((v81 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_46:
  v39 = v88;
  *__src = v31;
  mlir::ValueRange::ValueRange(__p, __src, 1uLL);
LABEL_47:
  v83 = v31;
  *__src = &__src[16];
  *&__src[8] = 0x400000000;
  v107[6] = 4;
  v103 = v105;
  memset_pattern16(v105, &unk_1E096FAE0, 0x10uLL);
  v104 = 0x200000002;
  if (mlir::mps::GRUOp::getResetAfter(&v88) && mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v88))
  {
    v40 = 1;
  }

  else if (mlir::mps::GRUOp::getResetAfter(&v88))
  {
    v40 = 2;
  }

  else
  {
    v40 = 0;
  }

  *__p = 2;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v42 = mlir::RankedTensorType::get(__p, 1, IntegerType, 0);
  if (v42)
  {
    v43 = v42;
    v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
    v42 = v43;
  }

  else
  {
    v44 = 0;
  }

  v45 = mlir::DenseElementsAttr::getFromRawBuffer(v42, v44, v103, 8 * v104, 8, 1, 0);
  v100 = v102;
  v102[0] = v40;
  v102[1] = v40;
  v101 = 0x200000002;
  *__p = 2;
  v46 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v47 = mlir::RankedTensorType::get(__p, 1, v46, 0);
  if (v47)
  {
    v48 = v47;
    v49 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
    v47 = v48;
  }

  else
  {
    v49 = 0;
  }

  v50 = mlir::DenseElementsAttr::getFromRawBuffer(v47, v49, v100, 8 * v101, 8, 1, 0);
  mlir::NamedAttrList::set(__src, "normalized_range", 16, v45);
  mlir::NamedAttrList::set(__src, "coordinate_mode", 15, v50);
  Training = mlir::mps::GRUOp::getTraining(&v88);
  v97 = v99;
  v99[0] = !Training;
  v99[1] = v99[0];
  v98 = 0x200000002;
  *__p = 2;
  v52 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v53 = mlir::RankedTensorType::get(__p, 1, v52, 0);
  if (v53)
  {
    v54 = v53;
    v55 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
    v53 = v54;
  }

  else
  {
    v55 = 0;
  }

  v56 = mlir::DenseElementsAttr::getFromRawBuffer(v53, v55, v97, 8 * v98, 8, 1, 0);
  mlir::NamedAttrList::set(__src, "coordinate_type", 15, v56);
  v94 = &v96;
  v95 = 0x100000001;
  v96 = 0;
  *__p = 1;
  v57 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v58 = mlir::RankedTensorType::get(__p, 1, v57, 0);
  if (v58)
  {
    v59 = v58;
    v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8);
    v58 = v59;
  }

  else
  {
    v60 = 0;
  }

  v61 = mlir::DenseElementsAttr::getFromRawBuffer(v58, v60, v94, 8 * v95, 8, 1, 0);
  mlir::NamedAttrList::set(__src, "warp_coordinate_mode", 20, v61);
  SamplingMode = mlir::mps::detail::SampleGridOpGenericAdaptorBase::getSamplingMode(a3);
  if (SamplingMode == 1)
  {
    v63 = 0;
  }

  else
  {
    if (SamplingMode)
    {
    }

    v63 = 1;
  }

  *__p = &__p[16];
  *&__p[16] = v63;
  *&__p[24] = v63;
  *&__p[8] = 0x200000002;
  v112 = 2;
  v64 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v65 = mlir::RankedTensorType::get(&v112, 1, v64, 0);
  if (v65)
  {
    v66 = v65;
    v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v65 + 8);
    v65 = v66;
  }

  else
  {
    v67 = 0;
  }

  v68 = mlir::DenseElementsAttr::getFromRawBuffer(v65, v67, *__p, 8 * *&__p[8], 8, 1, 0);
  mlir::NamedAttrList::set(__src, "sampling_method", 15, v68);
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v88);
  if (PaddingStyle > 3)
  {
    v70 = 5;
  }

  else
  {
    v70 = qword_1E0982C28[PaddingStyle];
  }

  v112 = v114;
  v114[0] = v70;
  v114[1] = v70;
  v113 = 0x200000002;
  v92[0] = 2;
  v71 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v72 = mlir::RankedTensorType::get(v92, 1, v71, 0);
  if (v72)
  {
    v73 = v72;
    v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
    v72 = v73;
  }

  else
  {
    v74 = 0;
  }

  v75 = mlir::DenseElementsAttr::getFromRawBuffer(v72, v74, v112, 8 * v113, 8, 1, 0);
  mlir::NamedAttrList::set(__src, "padding_modes", 13, v75);
  v92[0] = &v93;
  v92[1] = 0x100000000;
  v90 = *(a3 + 96);
  *&v91 = 2;
  v90 = mlir::ValueRange::offset_base(&v90, 2);
  *&v91 = 0;
  v76 = mlir::ValueRange::dereference_iterator(&v90, 0);
  if (mlir::matchConstantWithFloatVector<float>(v76, v92))
  {
    F16FloatAttr = mlir::Builder::getF16FloatAttr(a4 + 1, *v92[0], v77);
    mlir::NamedAttrList::set(__src, "background_value", 16, F16FloatAttr);
    v79 = v88;
    v89[0] = v83;
    v89[1] = Transpose;
    mlir::ValueRange::ValueRange(&v90, v89, 2uLL);
    v80 = mlir::OpBuilder::create<mlir::anec::Resample,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(v79 + 24), &v90, __src);
    ((*a4)[1])(a4, v79, v80);
    matched = 1;
  }

  else
  {
    v90 = operator new(0x38uLL);
    v91 = xmmword_1E09828B0;
    strcpy(v90, "Failed to extract constant 'constant_values' attribute");
    matched = mlir::logMatchFailure(&v90, *(v88 + 24), a4);
    if (SHIBYTE(v91) < 0)
    {
      operator delete(v90);
    }
  }

  if (v92[0] != &v93)
  {
    free(v92[0]);
  }

  if (v112 != v114)
  {
    free(v112);
  }

  if (*__p != &__p[16])
  {
    free(*__p);
  }

  if (v94 != &v96)
  {
    free(v94);
  }

  if (v97 != v99)
  {
    free(v97);
  }

  if (v100 != v102)
  {
    free(v100);
  }

  if (v103 != v105)
  {
    free(v103);
  }

  if (*__src != &__src[16])
  {
    free(*__src);
  }

  if (v108 != v110)
  {
    free(v108);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Resample,mlir::ValueRange,mlir::NamedAttrList &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Resample,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Resample,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Resample::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Resample,void>::id)
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

void mlir::anonymous namespace::ConvertScaledDotProductAttention::~ConvertScaledDotProductAttention(mlir::_anonymous_namespace_::ConvertScaledDotProductAttention *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps_spi::ScaledDotProductAttentionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps_spi::ScaledDotProductAttentionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps_spi::ScaledDotProductAttentionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertScaledDotProductAttention::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 48);
  v42[0] = *(a3 + 40);
  v42[1] = v6;
  if (v6 != 5)
  {
    __p = operator new(0x40uLL);
    v41[0] = xmmword_1E09827C0;
    strcpy(__p, "Invalid number of operands. 5 operands are expected for SDPA");
    v13 = *(a2 + 24);
    goto LABEL_21;
  }

  v7 = mlir::ValueRange::dereference_iterator(v42, 0);
  Transpose = v7;
  v8 = mlir::ValueRange::dereference_iterator(v42, 1);
  v35 = v8;
  v9 = mlir::ValueRange::dereference_iterator(v42, 2);
  v34 = v9;
  v33 = mlir::ValueRange::dereference_iterator(v42, 3);
  v32 = mlir::ValueRange::dereference_iterator(v42, 4);
  if (*(a2 + 36))
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v31[0] = v11;
  v31[1] = v12;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  v15 = *(a2 + 24);
  if (v14 >= 5)
  {
    __p = operator new(0x30uLL);
    v41[0] = xmmword_1E09828C0;
    strcpy(__p, "SDPA does not currently support rank 5 operands");
LABEL_20:
    v13 = v15;
LABEL_21:
    result = mlir::logMatchFailure(&__p, v13, a4);
    if (SHIBYTE(v41[0]) < 0)
    {
      v27 = result;
      operator delete(__p);
      return v27;
    }

    return result;
  }

  v16 = v14;
  v17 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v30[0] = v17;
  v30[1] = v18;
  v19 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  v29[0] = v19;
  v29[1] = v20;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v30);
  v23 = v22;
  v24 = mlir::CallableOpInterface::getArgAttrsAttr(v29);
  if (v23 != v25 || memcmp(ArgAttrsAttr, v24, 8 * v23))
  {
    __p = operator new(0x28uLL);
    v41[0] = xmmword_1E09826C0;
    strcpy(__p, "Key and value must be the same shape");
    goto LABEL_20;
  }

  __p = v41 + 8;
  *(v41 + 8) = xmmword_1E0982AA8;
  *(&v41[1] + 8) = unk_1E0982AB8;
  *&v41[0] = 0x600000004;
  if (v16 == 4)
  {
    v37 = v7;
    mlir::ValueRange::ValueRange(&v38, &v37, 1uLL);
    v37 = v35;
    mlir::ValueRange::ValueRange(&v38, &v37, 1uLL);
    v37 = v34;
    mlir::ValueRange::ValueRange(&v38, &v37, 1uLL);
    v37 = mlir::OpBuilder::create<mlir::anec::ScaledDotProductAttention,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>((a4 + 8), v15, &Transpose, &v35, &v34, &v32, &v33) - 16;
    mlir::ValueRange::ValueRange(&v38, &v37, 1uLL);
  }

  else
  {
    v28 = mlir::OpBuilder::create<mlir::anec::ScaledDotProductAttention,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>((a4 + 8), v15, &Transpose, &v35, &v34, &v32, &v33) - 16;
  }

  v37 = v28;
  mlir::ValueRange::ValueRange(&v38, &v37, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v38, v39);
  if (__p != v41 + 8)
  {
    free(__p);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ScaledDotProductAttention,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ScaledDotProductAttention,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ScaledDotProductAttention,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::anec::ScaledDotProductAttention::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ScaledDotProductAttention,void>::id)
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

void *mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::PixelShuffle>::~ConvertDepthToSpace2D(void *a1)
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

void mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::PixelShuffle>::~ConvertDepthToSpace2D(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DepthToSpace2DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DepthToSpace2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DepthToSpace2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::PixelShuffle>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *this, uint64_t a3, uint64_t **a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = this;
  v31 = *(a3 + 56);
  if (*(this + 47) && (v33.var0 = "pixel_shuffle", v33.var1 = 13, result = mlir::Operation::getInherentAttr(this, v33), (v7 & 1) != 0))
  {
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v34.var0 = "pixel_shuffle";
    v34.var1 = 13;
    result = mlir::DictionaryAttr::contains((this + 56), v34);
    if (!result)
    {
      return result;
    }
  }

  v28 = 3;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v9 = mlir::RankedTensorType::get(&v28, 1, IntegerType, 0);
  Index = mlir::pdl::ResultOp::getIndex(&v27);
  v11 = mlir::pdl::ResultOp::getIndex(&v27);
  v30[0] = Index;
  v30[1] = v11;
  v30[2] = 1;
  v28 = v30;
  v29 = 0x300000003;
  if (v9)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v13 = v28;
    v14 = 8 * v29;
  }

  else
  {
    v12 = 0;
    v14 = 24;
    v13 = v30;
  }

  v26 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v12, v13, v14, 8, 1, 0);
  v15 = v27;
  v16 = mlir::ValueRange::dereference_iterator(&v31, 0);
  v17 = *(*(v27 + 9) + 24);
  v18 = mlir::ValueRange::dereference_iterator(&v31, 1);
  v19 = mlir::ValueRange::dereference_iterator(&v31, 2);
  v20 = mlir::ValueRange::dereference_iterator(&v31, 3);
  result = 0;
  if (v21)
  {
    v22 = v27;
    v25 = mlir::ValueRange::dereference_iterator(&v31, 0);
    v23 = mlir::OpBuilder::create<mlir::anec::PixelShuffle,mlir::Value,mlir::DenseIntElementsAttr &>(a4 + 1, *(v22 + 3), &v25, &v26);
    ((*a4)[1])(a4, v22, v23);
    result = 1;
  }

  if (v28 != v30)
  {
    v24 = result;
    free(v28);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::convertDepthSpaceCommon<mlir::mps::DepthToSpace2DOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v55 = *MEMORY[0x1E69E9840];
  v13 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v50[0] = v13;
  v50[1] = v14;
  if ((mlir::CallOpInterface::getArgOperands(v50) & 1) == 0)
  {
    __p = operator new(0x20uLL);
    v52 = xmmword_1E09827F0;
LABEL_10:
    result = mlir::logMatchFailure(&__p, *(a1 + 24), a2);
    if ((SHIBYTE(v52) & 0x80000000) == 0)
    {
      return result;
    }

    v20 = result;
    operator delete(__p);
    return v20;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v50);
  if (v15 != 4)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v50);
    if (v16 != 5)
    {
      __p = operator new(0x20uLL);
      v52 = xmmword_1E09828D0;
      strcpy(__p, "only handling rank 4 or 5 input");
      goto LABEL_10;
    }
  }

  v17 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v49[0] = v17;
  v49[1] = v18;
  mlir::CallableOpInterface::getArgAttrsAttr(v50);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v21);
  if ((v23 & 1) == 0)
  {
    v42 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::OpBuilder::create<mlir::anec::PixelShuffle,mlir::Value,mlir::DenseIntElementsAttr &>(v42);
  }

  v24 = IndexFromDim;
  __p = &v52 + 8;
  *(&v52 + 1) = a7;
  v53 = a6;
  v54 = a5;
  *&v52 = 0x300000003;
  mlir::CallableOpInterface::getArgAttrsAttr(v49);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(a7, v25, *(a1 + 24), 1);
  v48 = v26;
  if (v26)
  {
    if (mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr) != 1)
    {
      goto LABEL_42;
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v43, SortedUniquePromotedPositiveAxesAttr, 0);
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v43, &v45);
    if (v46 > 0x40)
    {
      v28 = *v45;
      operator delete[](v45);
      if (v24 != v28)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v46)
      {
        v27 = (v45 << -v46) >> -v46;
      }

      else
      {
        v27 = 0;
      }

      if (v24 != v27)
      {
        goto LABEL_40;
      }
    }

    v29 = v53;
    mlir::CallableOpInterface::getArgAttrsAttr(v49);
    SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v29, v30, *(a1 + 24), 1);
    v48 = v31;
    if (v31)
    {
      if (mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr) != 1)
      {
        goto LABEL_42;
      }

      v32 = v24 + 1;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v43, SortedUniquePromotedPositiveAxesAttr, 0);
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v43, &v45);
      if (v46 >= 0x41)
      {
        v34 = *v45;
        operator delete[](v45);
        if (v32 != v34)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v46)
        {
          v33 = (v45 << -v46) >> -v46;
        }

        else
        {
          v33 = 0;
        }

        if (v32 != v33)
        {
          goto LABEL_40;
        }
      }

      v35 = v54;
      mlir::CallableOpInterface::getArgAttrsAttr(v49);
      SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v35, v36, *(a1 + 24), 1);
      v48 = v37;
      if (v37)
      {
        if (mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr) == 1)
        {
          v38 = v24 + 2;
          mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v43, SortedUniquePromotedPositiveAxesAttr, 0);
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v43, &v45);
          if (v46 < 0x41)
          {
            if (v46)
            {
              v39 = (v45 << -v46) >> -v46;
            }

            else
            {
              v39 = 0;
            }

            if (v38 != v39)
            {
              goto LABEL_40;
            }

            goto LABEL_50;
          }

          v41 = *v45;
          operator delete[](v45);
          if (v38 == v41)
          {
LABEL_50:
            result = 1;
            goto LABEL_45;
          }

LABEL_40:
          v43 = operator new(0x40uLL);
          v44 = xmmword_1E09827C0;
          strcpy(v43, "only supporting NCHW in Depth <-> Space -> Channel <-> Space");
          goto LABEL_43;
        }

LABEL_42:
        v43 = operator new(0x28uLL);
        v44 = xmmword_1E09828E0;
        strcpy(v43, "Channel <-> Space supports only 1 axis");
LABEL_43:
        result = mlir::logMatchFailure(&v43, *(a1 + 24), a2);
        if (SHIBYTE(v44) < 0)
        {
          v40 = result;
          operator delete(v43);
          result = v40;
        }

        goto LABEL_45;
      }
    }
  }

  result = 0;
LABEL_45:
  if (__p == &v52 + 8)
  {
    return result;
  }

  v20 = result;
  free(__p);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::anec::PixelShuffle,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::PixelShuffle,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::PixelShuffle::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id)
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

void *mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::ChannelToSpace>::~ConvertDepthToSpace2D(void *a1)
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

void mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::ChannelToSpace>::~ConvertDepthToSpace2D(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::ChannelToSpace>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *this, uint64_t a3, uint64_t **a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = this;
  v32 = *(a3 + 56);
  if (*(this + 47) && (v34.var0 = "pixel_shuffle", v34.var1 = 13, InherentAttr = mlir::Operation::getInherentAttr(this, v34), (v7 & 1) != 0))
  {
    if (InherentAttr)
    {
      return 0;
    }
  }

  else
  {
    v35.var0 = "pixel_shuffle";
    v35.var1 = 13;
    if (mlir::DictionaryAttr::contains((this + 56), v35))
    {
      return 0;
    }
  }

  v29 = 3;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v10 = mlir::RankedTensorType::get(&v29, 1, IntegerType, 0);
  Index = mlir::pdl::ResultOp::getIndex(&v28);
  v12 = mlir::pdl::ResultOp::getIndex(&v28);
  v31[0] = Index;
  v31[1] = v12;
  v31[2] = 1;
  v29 = v31;
  v30 = 0x300000003;
  if (v10)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v14 = v29;
    v15 = 8 * v30;
  }

  else
  {
    v13 = 0;
    v15 = 24;
    v14 = v31;
  }

  v27 = mlir::DenseElementsAttr::getFromRawBuffer(v10, v13, v14, v15, 8, 1, 0);
  v16 = v28;
  v17 = mlir::ValueRange::dereference_iterator(&v32, 0);
  v18 = *(*(v28 + 9) + 24);
  v19 = mlir::ValueRange::dereference_iterator(&v32, 1);
  v20 = mlir::ValueRange::dereference_iterator(&v32, 2);
  v21 = mlir::ValueRange::dereference_iterator(&v32, 3);
  result = 0;
  if (v22)
  {
    v23 = v28;
    v26 = mlir::ValueRange::dereference_iterator(&v32, 0);
    v24 = mlir::OpBuilder::create<mlir::anec::ChannelToSpace,mlir::Value,mlir::DenseIntElementsAttr &>(a4 + 1, *(v23 + 3), &v26, &v27);
    ((*a4)[1])(a4, v23, v24);
    result = 1;
  }

  if (v29 != v31)
  {
    v25 = result;
    free(v29);
    return v25;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ChannelToSpace,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ChannelToSpace,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ChannelToSpace,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ChannelToSpace::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ChannelToSpace,void>::id)
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

void *mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::PixelUnshuffle>::~ConvertSpaceToDepth2D(void *a1)
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

void mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::PixelUnshuffle>::~ConvertSpaceToDepth2D(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SpaceToDepth2DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SpaceToDepth2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SpaceToDepth2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::PixelUnshuffle>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *this, uint64_t a3, uint64_t **a4)
{
  v5 = this;
  v42 = *MEMORY[0x1E69E9840];
  v38 = this;
  v41 = *(a3 + 56);
  if (!*(this + 47) || (v43.var0 = "pixel_shuffle", v43.var1 = 13, InherentAttr = mlir::Operation::getInherentAttr(v5, v43), (v7 & 1) == 0))
  {
    v44.var0 = "pixel_shuffle";
    v44.var1 = 13;
    if (mlir::DictionaryAttr::contains((v5 + 7), v44))
    {
      goto LABEL_4;
    }

LABEL_7:
    __p[0] = *(v5[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (!AttrData)
    {
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_24;
    }

    v17 = v16;
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v18 = AttrData;
    if (v16 >= 0x17)
    {
      if ((v16 | 7) == 0x17)
      {
        v30 = 25;
      }

      else
      {
        v30 = (v16 | 7) + 1;
      }

      p_dst = operator new(v30);
      __dst.__r_.__value_.__l.__size_ = v17;
      __dst.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v16;
      p_dst = &__dst;
      if (!v16)
      {
        goto LABEL_23;
      }
    }

    memmove(p_dst, v18, v17);
LABEL_23:
    p_dst->__r_.__value_.__s.__data_[v17] = 0;
    v5 = v38;
LABEL_24:
    v31 = std::string::insert(&__dst, 0, "Invalid pattern to convert");
    v32 = v31->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v37, " to ANE");
    v34 = v33->__r_.__value_.__r.__words[2];
    *__p = *&v33->__r_.__value_.__l.__data_;
    v40[0] = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, v5[3], a4);
    if (SHIBYTE(v40[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_26:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_30:
        operator delete(__dst.__r_.__value_.__l.__data_);
        return matched;
      }
    }

    else if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_30;
  }

  if (!InherentAttr)
  {
    goto LABEL_7;
  }

LABEL_4:
  __p[0] = 3;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v9 = mlir::RankedTensorType::get(__p, 1, IntegerType, 0);
  Index = mlir::pdl::ResultOp::getIndex(&v38);
  v11 = mlir::pdl::ResultOp::getIndex(&v38);
  v40[0] = Index;
  v40[1] = v11;
  v40[2] = 1;
  __p[0] = v40;
  __p[1] = 0x300000003;
  if (v9)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v13 = __p[0];
    v14 = 8 * LODWORD(__p[1]);
  }

  else
  {
    v12 = 0;
    v14 = 24;
    v13 = v40;
  }

  v37.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v9, v12, v13, v14, 8, 1, 0);
  v20 = v38;
  v21 = mlir::ValueRange::dereference_iterator(&v41, 0);
  v22 = *(*(v38 + 9) + 24);
  v23 = mlir::ValueRange::dereference_iterator(&v41, 1);
  v24 = mlir::ValueRange::dereference_iterator(&v41, 2);
  v25 = mlir::ValueRange::dereference_iterator(&v41, 3);
  matched = 0;
  if (v26)
  {
    v28 = v38;
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v41, 0);
    v29 = mlir::OpBuilder::create<mlir::anec::PixelUnshuffle,mlir::Value,mlir::DenseIntElementsAttr &>(a4 + 1, *(v28 + 3), &__dst, &v37);
    ((*a4)[1])(a4, v28, v29);
    matched = 1;
  }

  if (__p[0] != v40)
  {
    free(__p[0]);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::PixelUnshuffle,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::PixelUnshuffle,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::PixelUnshuffle::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id)
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

void *mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::SpaceToChannel>::~ConvertSpaceToDepth2D(void *a1)
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

void mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::SpaceToChannel>::~ConvertSpaceToDepth2D(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::SpaceToChannel>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *this, uint64_t a3, uint64_t **a4)
{
  v5 = this;
  v42 = *MEMORY[0x1E69E9840];
  v38 = this;
  v41 = *(a3 + 56);
  if (*(this + 47) && (v43.var0 = "pixel_shuffle", v43.var1 = 13, InherentAttr = mlir::Operation::getInherentAttr(v5, v43), (v7 & 1) != 0))
  {
    if (InherentAttr)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v44.var0 = "pixel_shuffle";
    v44.var1 = 13;
    if (mlir::DictionaryAttr::contains((v5 + 7), v44))
    {
LABEL_4:
      __p[0] = *(v5[6] + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(__p);
      if (!AttrData)
      {
        memset(&__dst, 0, sizeof(__dst));
        goto LABEL_24;
      }

      v10 = v9;
      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v11 = AttrData;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v30 = 25;
        }

        else
        {
          v30 = (v9 | 7) + 1;
        }

        p_dst = operator new(v30);
        __dst.__r_.__value_.__l.__size_ = v10;
        __dst.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v9;
        p_dst = &__dst;
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      memmove(p_dst, v11, v10);
LABEL_23:
      p_dst->__r_.__value_.__s.__data_[v10] = 0;
      v5 = v38;
LABEL_24:
      v31 = std::string::insert(&__dst, 0, "Invalid pattern to convert");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v37, " to ANE");
      v34 = v33->__r_.__value_.__r.__words[2];
      *__p = *&v33->__r_.__value_.__l.__data_;
      v40[0] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, v5[3], a4);
      if (SHIBYTE(v40[0]) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_26:
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return matched;
          }

LABEL_30:
          operator delete(__dst.__r_.__value_.__l.__data_);
          return matched;
        }
      }

      else if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      operator delete(v37.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return matched;
      }

      goto LABEL_30;
    }
  }

  __p[0] = 3;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v14 = mlir::RankedTensorType::get(__p, 1, IntegerType, 0);
  Index = mlir::pdl::ResultOp::getIndex(&v38);
  v16 = mlir::pdl::ResultOp::getIndex(&v38);
  v40[0] = Index;
  v40[1] = v16;
  v40[2] = 1;
  __p[0] = v40;
  __p[1] = 0x300000003;
  if (v14)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
    v18 = __p[0];
    v19 = 8 * LODWORD(__p[1]);
  }

  else
  {
    v17 = 0;
    v19 = 24;
    v18 = v40;
  }

  v37.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v14, v17, v18, v19, 8, 1, 0);
  v20 = v38;
  v21 = mlir::ValueRange::dereference_iterator(&v41, 0);
  v22 = *(*(v38 + 9) + 24);
  v23 = mlir::ValueRange::dereference_iterator(&v41, 1);
  v24 = mlir::ValueRange::dereference_iterator(&v41, 2);
  v25 = mlir::ValueRange::dereference_iterator(&v41, 3);
  matched = 0;
  if (v26)
  {
    v28 = v38;
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v41, 0);
    v29 = mlir::OpBuilder::create<mlir::anec::SpaceToChannel,mlir::Value,mlir::DenseIntElementsAttr &>(a4 + 1, *(v28 + 3), &__dst, &v37);
    ((*a4)[1])(a4, v28, v29);
    matched = 1;
  }

  if (__p[0] != v40)
  {
    free(__p[0]);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::SpaceToChannel,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::SpaceToChannel,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::SpaceToChannel,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::SpaceToChannel::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToChannel,void>::id)
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

void *mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::BatchToSpaceOp,mlir::anec::BatchToSpace>::~ConvertBatchToSpace(void *a1)
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

void mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::BatchToSpaceOp,mlir::anec::BatchToSpace>::~ConvertBatchToSpace(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::BatchToSpaceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::BatchToSpaceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::BatchToSpaceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::BatchToSpaceOp,mlir::anec::BatchToSpace>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v64 = *(a3 + 48);
  v7 = mlir::ValueRange::dereference_iterator(&v64, 0);
  v54 = v7;
  v8 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  RankPromotionTypeForANE = v8;
  *&v63[0] = v9;
  mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v11 = v10;
  v12 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v12, v13);
  *&v63[0] = v14;
  mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v16 = v15;
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(*(*(a2 + 72) + 56), v11, *(a2 + 24), 1);
  v53 = v17;
  if ((v17 & 1) == 0)
  {
    RankPromotionTypeForANE = operator new(0x38uLL);
    v63[0] = xmmword_1E09828F0;
    strcpy(RankPromotionTypeForANE, "BatchToSpace spatial_axis operand must be constant");
    goto LABEL_18;
  }

  v50 = mlir::getSortedUniquePromotedPositiveAxesAttr(*(*(a2 + 72) + 88), v11, *(a2 + 24), 1);
  v51 = v18;
  if ((v18 & 1) == 0)
  {
    RankPromotionTypeForANE = operator new(0x38uLL);
    v63[0] = xmmword_1E0982900;
    strcpy(RankPromotionTypeForANE, "BatchToSpace batch_axis operand must be constant");
    goto LABEL_18;
  }

  IndexFromDim = mlir::anec::getIndexFromDim(0, v16);
  v20 = mlir::anec::getIndexFromDim(2, v16);
  v22 = v21;
  v23 = mlir::anec::getIndexFromDim(3, v16);
  v49 = mlir::anec::getIndexFromDim(4, v16);
  if (mlir::DenseElementsAttr::getNumElements(&v50) != 1)
  {
    goto LABEL_15;
  }

  v24 = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&RankPromotionTypeForANE, v50, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(v24, &__p);
  if (*v60 >= 0x41u)
  {
    v28 = *__p;
    operator delete[](__p);
    if (IndexFromDim == v28)
    {
      goto LABEL_23;
    }

LABEL_15:
    RankPromotionTypeForANE = operator new(0x40uLL);
    v63[0] = xmmword_1E0982780;
    strcpy(RankPromotionTypeForANE, "BatchToSpace batch_axis operand must match with ANEC batch axis");
LABEL_18:
    result = mlir::logMatchFailure(&RankPromotionTypeForANE, *(a2 + 24), a4);
    if ((SHIBYTE(v63[0]) & 0x80000000) == 0)
    {
      return result;
    }

    v27 = result;
    operator delete(RankPromotionTypeForANE);
    return v27;
  }

  if (*v60)
  {
    v25 = (__p << -v60[0]) >> -v60[0];
  }

  else
  {
    v25 = 0;
  }

  if (IndexFromDim != v25)
  {
    goto LABEL_15;
  }

LABEL_23:
  RankPromotionTypeForANE = v63 + 8;
  *&v63[0] = 0x300000000;
  if (mlir::matchConstantWithIntVector<unsigned long long>(*(*(a2 + 72) + 120), &RankPromotionTypeForANE))
  {
    __p = &v60[8];
    v61 = 1;
    *&v60[8] = xmmword_1E0982AC8;
    *v60 = 0x300000003;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v55, SortedUniquePromotedPositiveAxesAttr, 0);
    v56 = *v55;
    v57 = *&v55[16];
    v58 = RankPromotionTypeForANE;
    v29 = SortedUniquePromotedPositiveAxesAttr;
    NumElements = mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v55, v29, NumElements);
    v31 = *&v55[16];
    if (v57 != *&v55[16])
    {
      v32 = &RankPromotionTypeForANE[8 * LODWORD(v63[0])];
      if (v58 != v32)
      {
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v56, v55);
          v33 = *&v55[8];
          v34 = *v55;
          matched = v4;
          if (v22)
          {
            if (*&v55[8] > 0x40u)
            {
              if (**v55 == v20)
              {
                goto LABEL_40;
              }
            }

            else
            {
              v36 = (*v55 << -v55[8]) >> -v55[8];
              if (!*&v55[8])
              {
                v36 = 0;
              }

              if (v36 == v20)
              {
LABEL_40:
                *(__p + 2) = *v58;
                v39 = 1;
                goto LABEL_46;
              }
            }
          }

          if (*&v55[8] > 0x40u)
          {
            v37 = **v55;
            if (**v55 == v23)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v37 = (*v55 << -v55[8]) >> -v55[8];
            if (!*&v55[8])
            {
              v37 = 0;
            }

            if (v37 == v23)
            {
LABEL_38:
              *(__p + 1) = *v58;
              v39 = 1;
              goto LABEL_46;
            }
          }

          v38 = *v58;
          if (v37 == v49)
          {
            *__p = v38;
            v39 = 1;
          }

          else if (v38 == 1)
          {
            v39 = 1;
          }

          else
          {
            v40 = *v55;
            *v55 = operator new(0x48uLL);
            *&v55[8] = xmmword_1E0982720;
            strcpy(*v55, "BatchToSpace spatial_axes operand must match with ANEC spatial axes");
            matched = mlir::logMatchFailure(v55, *(a2 + 24), a4);
            if ((v55[23] & 0x80000000) != 0)
            {
              v41 = matched;
              operator delete(*v55);
              matched = v41;
            }

            v39 = 0;
            v34 = v40;
          }

LABEL_46:
          v4 = matched;
          if (v33 >= 0x41 && v34)
          {
            operator delete[](v34);
          }

          if (!v39)
          {
            goto LABEL_58;
          }

          v42 = v58 + 8;
          *&v57 = v57 + 1;
          v58 += 8;
        }

        while (v57 != v31 && v42 != v32);
      }
    }

    *&v56 = 3;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v44 = mlir::RankedTensorType::get(&v56, 1, IntegerType, 0);
    if (v44)
    {
      v45 = v44;
      v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
      v44 = v45;
    }

    else
    {
      v46 = 0;
    }

    v4 = 1;
    *&v56 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v46, __p, 8 * *v60, 8, 1, 0);
    v48 = mlir::OpBuilder::create<mlir::anec::BatchToSpace,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, *(a2 + 24), &v54, &v56);
    ((*a4)[1])(a4, a2, v48);
LABEL_58:
    if (__p != &v60[8])
    {
      free(__p);
    }

    result = v4;
  }

  else
  {
    __p = operator new(0x38uLL);
    *v60 = xmmword_1E09828B0;
    strcpy(__p, "BatchToSpace block_dimensions operand must be constant");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((v60[15] & 0x80000000) != 0)
    {
      v47 = result;
      operator delete(__p);
      result = v47;
    }
  }

  if (RankPromotionTypeForANE != v63 + 8)
  {
    v27 = result;
    free(RankPromotionTypeForANE);
    return v27;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::BatchToSpace,mlir::Value &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::BatchToSpace,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::BatchToSpace,mlir::Value &,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::BatchToSpace::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::BatchToSpace,void>::id)
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

void *mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::SpaceToBatchOp,mlir::anec::SpaceToBatch>::~ConvertBatchToSpace(void *a1)
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

void mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::SpaceToBatchOp,mlir::anec::SpaceToBatch>::~ConvertBatchToSpace(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SpaceToBatchOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SpaceToBatchOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SpaceToBatchOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::SpaceToBatchOp,mlir::anec::SpaceToBatch>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v64 = *(a3 + 48);
  v7 = mlir::ValueRange::dereference_iterator(&v64, 0);
  v54 = v7;
  v8 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  RankPromotionTypeForANE = v8;
  *&v63[0] = v9;
  mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v11 = v10;
  v12 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v12, v13);
  *&v63[0] = v14;
  mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v16 = v15;
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(*(*(a2 + 72) + 56), v11, *(a2 + 24), 1);
  v53 = v17;
  if ((v17 & 1) == 0)
  {
    RankPromotionTypeForANE = operator new(0x38uLL);
    v63[0] = xmmword_1E09828F0;
    strcpy(RankPromotionTypeForANE, "BatchToSpace spatial_axis operand must be constant");
    goto LABEL_18;
  }

  v50 = mlir::getSortedUniquePromotedPositiveAxesAttr(*(*(a2 + 72) + 88), v11, *(a2 + 24), 1);
  v51 = v18;
  if ((v18 & 1) == 0)
  {
    RankPromotionTypeForANE = operator new(0x38uLL);
    v63[0] = xmmword_1E0982900;
    strcpy(RankPromotionTypeForANE, "BatchToSpace batch_axis operand must be constant");
    goto LABEL_18;
  }

  IndexFromDim = mlir::anec::getIndexFromDim(0, v16);
  v20 = mlir::anec::getIndexFromDim(2, v16);
  v22 = v21;
  v23 = mlir::anec::getIndexFromDim(3, v16);
  v49 = mlir::anec::getIndexFromDim(4, v16);
  if (mlir::DenseElementsAttr::getNumElements(&v50) != 1)
  {
    goto LABEL_15;
  }

  v24 = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&RankPromotionTypeForANE, v50, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(v24, &__p);
  if (*v60 >= 0x41u)
  {
    v28 = *__p;
    operator delete[](__p);
    if (IndexFromDim == v28)
    {
      goto LABEL_23;
    }

LABEL_15:
    RankPromotionTypeForANE = operator new(0x40uLL);
    v63[0] = xmmword_1E0982780;
    strcpy(RankPromotionTypeForANE, "BatchToSpace batch_axis operand must match with ANEC batch axis");
LABEL_18:
    result = mlir::logMatchFailure(&RankPromotionTypeForANE, *(a2 + 24), a4);
    if ((SHIBYTE(v63[0]) & 0x80000000) == 0)
    {
      return result;
    }

    v27 = result;
    operator delete(RankPromotionTypeForANE);
    return v27;
  }

  if (*v60)
  {
    v25 = (__p << -v60[0]) >> -v60[0];
  }

  else
  {
    v25 = 0;
  }

  if (IndexFromDim != v25)
  {
    goto LABEL_15;
  }

LABEL_23:
  RankPromotionTypeForANE = v63 + 8;
  *&v63[0] = 0x300000000;
  if (mlir::matchConstantWithIntVector<unsigned long long>(*(*(a2 + 72) + 120), &RankPromotionTypeForANE))
  {
    __p = &v60[8];
    v61 = 1;
    *&v60[8] = xmmword_1E0982AC8;
    *v60 = 0x300000003;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v55, SortedUniquePromotedPositiveAxesAttr, 0);
    v56 = *v55;
    v57 = *&v55[16];
    v58 = RankPromotionTypeForANE;
    v29 = SortedUniquePromotedPositiveAxesAttr;
    NumElements = mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v55, v29, NumElements);
    v31 = *&v55[16];
    if (v57 != *&v55[16])
    {
      v32 = &RankPromotionTypeForANE[8 * LODWORD(v63[0])];
      if (v58 != v32)
      {
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v56, v55);
          v33 = *&v55[8];
          v34 = *v55;
          matched = v4;
          if (v22)
          {
            if (*&v55[8] > 0x40u)
            {
              if (**v55 == v20)
              {
                goto LABEL_40;
              }
            }

            else
            {
              v36 = (*v55 << -v55[8]) >> -v55[8];
              if (!*&v55[8])
              {
                v36 = 0;
              }

              if (v36 == v20)
              {
LABEL_40:
                *(__p + 2) = *v58;
                v39 = 1;
                goto LABEL_46;
              }
            }
          }

          if (*&v55[8] > 0x40u)
          {
            v37 = **v55;
            if (**v55 == v23)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v37 = (*v55 << -v55[8]) >> -v55[8];
            if (!*&v55[8])
            {
              v37 = 0;
            }

            if (v37 == v23)
            {
LABEL_38:
              *(__p + 1) = *v58;
              v39 = 1;
              goto LABEL_46;
            }
          }

          v38 = *v58;
          if (v37 == v49)
          {
            *__p = v38;
            v39 = 1;
          }

          else if (v38 == 1)
          {
            v39 = 1;
          }

          else
          {
            v40 = *v55;
            *v55 = operator new(0x48uLL);
            *&v55[8] = xmmword_1E0982720;
            strcpy(*v55, "BatchToSpace spatial_axes operand must match with ANEC spatial axes");
            matched = mlir::logMatchFailure(v55, *(a2 + 24), a4);
            if ((v55[23] & 0x80000000) != 0)
            {
              v41 = matched;
              operator delete(*v55);
              matched = v41;
            }

            v39 = 0;
            v34 = v40;
          }

LABEL_46:
          v4 = matched;
          if (v33 >= 0x41 && v34)
          {
            operator delete[](v34);
          }

          if (!v39)
          {
            goto LABEL_58;
          }

          v42 = v58 + 8;
          *&v57 = v57 + 1;
          v58 += 8;
        }

        while (v57 != v31 && v42 != v32);
      }
    }

    *&v56 = 3;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v44 = mlir::RankedTensorType::get(&v56, 1, IntegerType, 0);
    if (v44)
    {
      v45 = v44;
      v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
      v44 = v45;
    }

    else
    {
      v46 = 0;
    }

    v4 = 1;
    *&v56 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v46, __p, 8 * *v60, 8, 1, 0);
    v48 = mlir::OpBuilder::create<mlir::anec::SpaceToBatch,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, *(a2 + 24), &v54, &v56);
    ((*a4)[1])(a4, a2, v48);
LABEL_58:
    if (__p != &v60[8])
    {
      free(__p);
    }

    result = v4;
  }

  else
  {
    __p = operator new(0x38uLL);
    *v60 = xmmword_1E09828B0;
    strcpy(__p, "BatchToSpace block_dimensions operand must be constant");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((v60[15] & 0x80000000) != 0)
    {
      v47 = result;
      operator delete(__p);
      result = v47;
    }
  }

  if (RankPromotionTypeForANE != v63 + 8)
  {
    v27 = result;
    free(RankPromotionTypeForANE);
    return v27;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::SpaceToBatch,mlir::Value &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::SpaceToBatch,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::SpaceToBatch,mlir::Value &,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::SpaceToBatch::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToBatch,void>::id)
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

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)0>::~ConvertTranspose(void *a1)
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

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)0>::~ConvertTranspose(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::TransposeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::TransposeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::TransposeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v41 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v31[0] = v7;
  v31[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  v10 = v9;
  v39[0] = &v40;
  v39[1] = 0x100000000;
  v37[0] = &v38;
  v37[1] = 0x100000000;
  __p = *(a3 + 40);
  *&v35 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v35 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if (mlir::matchConstantWithIntVector<long long>(v11, v39))
  {
    __p = *(a3 + 40);
    *&v35 = 2;
    __p = mlir::ValueRange::offset_base(&__p, 2);
    *&v35 = 0;
    v12 = mlir::ValueRange::dereference_iterator(&__p, 0);
    if (mlir::matchConstantWithIntVector<long long>(v12, v37))
    {
      v13 = *v39[0];
      v14 = *v37[0];
      __p = &v35 + 8;
      *(&v35 + 1) = v13;
      v36 = v14;
      *&v35 = 0x600000002;
      v32[0] = v33;
      v32[1] = 0x600000000;
      if (mlir::getPositivePromotedAxes(&v35 + 1, 2, v10, v32, 0, 0))
      {
        v15 = *(v32[0] + 1);
        v29[0] = *v32[0];
        __dst.__r_.__value_.__r.__words[0] = v15;
        v27 = mlir::ValueRange::dereference_iterator(&v41, 0);
        v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v27, v29, &__dst);
        ((*a4)[1])(a4, a2, v16);
        matched = 1;
LABEL_26:
        if (v32[0] != v33)
        {
          free(v32[0]);
        }

        if (__p != &v35 + 8)
        {
          free(__p);
        }

        goto LABEL_30;
      }

      v29[0] = *(a2[6] + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v29);
      if (!AttrData)
      {
        memset(&__dst, 0, sizeof(__dst));
LABEL_22:
        v24 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
        v25 = v24->__r_.__value_.__r.__words[2];
        *v29 = *&v24->__r_.__value_.__l.__data_;
        v30 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(v29, a2[3], a4);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_26;
      }

      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = AttrData;
      if (v19 >= 0x17)
      {
        if ((v19 | 7) == 0x17)
        {
          v23 = 25;
        }

        else
        {
          v23 = (v19 | 7) + 1;
        }

        p_dst = operator new(v23);
        __dst.__r_.__value_.__l.__size_ = v20;
        __dst.__r_.__value_.__r.__words[2] = v23 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v19;
        p_dst = &__dst;
        if (!v19)
        {
          goto LABEL_21;
        }
      }

      memmove(p_dst, v21, v20);
LABEL_21:
      p_dst->__r_.__value_.__s.__data_[v20] = 0;
      goto LABEL_22;
    }
  }

  __p = operator new(0x38uLL);
  v35 = xmmword_1E0982830;
  strcpy(__p, "failed: only constant axes are supported on ANEs.");
  matched = mlir::logMatchFailure(&__p, a2[3], a4);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  if (v37[0] != &v38)
  {
    free(v37[0]);
  }

  if (v39[0] != &v40)
  {
    free(v39[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)1>::~ConvertTranspose(void *a1)
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

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)1>::~ConvertTranspose(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v41 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v31[0] = v7;
  v31[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  v10 = v9;
  v39[0] = &v40;
  v39[1] = 0x100000000;
  v37[0] = &v38;
  v37[1] = 0x100000000;
  __p = *(a3 + 40);
  *&v35 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v35 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if (mlir::matchConstantWithIntVector<long long>(v11, v39))
  {
    __p = *(a3 + 40);
    *&v35 = 2;
    __p = mlir::ValueRange::offset_base(&__p, 2);
    *&v35 = 0;
    v12 = mlir::ValueRange::dereference_iterator(&__p, 0);
    if (mlir::matchConstantWithIntVector<long long>(v12, v37))
    {
      v13 = *v39[0];
      v14 = *v37[0];
      __p = &v35 + 8;
      *(&v35 + 1) = v13;
      v36 = v14;
      *&v35 = 0x600000002;
      v32[0] = v33;
      v32[1] = 0x600000000;
      if (mlir::getPositivePromotedAxes(&v35 + 1, 2, v10, v32, 0, 0))
      {
        v15 = *(v32[0] + 1);
        v29[0] = *v32[0];
        __dst.__r_.__value_.__r.__words[0] = v15;
        v27 = mlir::ValueRange::dereference_iterator(&v41, 0);
        v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v27, v29, &__dst);
        ((*a4)[1])(a4, a2, v16);
        matched = 1;
LABEL_26:
        if (v32[0] != v33)
        {
          free(v32[0]);
        }

        if (__p != &v35 + 8)
        {
          free(__p);
        }

        goto LABEL_30;
      }

      v29[0] = *(a2[6] + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v29);
      if (!AttrData)
      {
        memset(&__dst, 0, sizeof(__dst));
LABEL_22:
        v24 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
        v25 = v24->__r_.__value_.__r.__words[2];
        *v29 = *&v24->__r_.__value_.__l.__data_;
        v30 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(v29, a2[3], a4);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_26;
      }

      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = AttrData;
      if (v19 >= 0x17)
      {
        if ((v19 | 7) == 0x17)
        {
          v23 = 25;
        }

        else
        {
          v23 = (v19 | 7) + 1;
        }

        p_dst = operator new(v23);
        __dst.__r_.__value_.__l.__size_ = v20;
        __dst.__r_.__value_.__r.__words[2] = v23 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v19;
        p_dst = &__dst;
        if (!v19)
        {
          goto LABEL_21;
        }
      }

      memmove(p_dst, v21, v20);
LABEL_21:
      p_dst->__r_.__value_.__s.__data_[v20] = 0;
      goto LABEL_22;
    }
  }

  __p = operator new(0x38uLL);
  v35 = xmmword_1E0982830;
  strcpy(__p, "failed: only constant axes are supported on ANEs.");
  matched = mlir::logMatchFailure(&__p, a2[3], a4);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  if (v37[0] != &v38)
  {
    free(v37[0]);
  }

  if (v39[0] != &v40)
  {
    free(v39[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)2>::~ConvertTranspose(void *a1)
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

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)2>::~ConvertTranspose(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v41 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v31[0] = v7;
  v31[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  v10 = v9;
  v39[0] = &v40;
  v39[1] = 0x100000000;
  v37[0] = &v38;
  v37[1] = 0x100000000;
  __p = *(a3 + 40);
  *&v35 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v35 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if (mlir::matchConstantWithIntVector<long long>(v11, v39))
  {
    __p = *(a3 + 40);
    *&v35 = 2;
    __p = mlir::ValueRange::offset_base(&__p, 2);
    *&v35 = 0;
    v12 = mlir::ValueRange::dereference_iterator(&__p, 0);
    if (mlir::matchConstantWithIntVector<long long>(v12, v37))
    {
      v13 = *v39[0];
      v14 = *v37[0];
      __p = &v35 + 8;
      *(&v35 + 1) = v13;
      v36 = v14;
      *&v35 = 0x600000002;
      v32[0] = v33;
      v32[1] = 0x600000000;
      if (mlir::getPositivePromotedAxes(&v35 + 1, 2, v10, v32, 0, 0))
      {
        v15 = *(v32[0] + 1);
        v29[0] = *v32[0];
        __dst.__r_.__value_.__r.__words[0] = v15;
        v27 = mlir::ValueRange::dereference_iterator(&v41, 0);
        v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v27, v29, &__dst);
        ((*a4)[1])(a4, a2, v16);
        matched = 1;
LABEL_26:
        if (v32[0] != v33)
        {
          free(v32[0]);
        }

        if (__p != &v35 + 8)
        {
          free(__p);
        }

        goto LABEL_30;
      }

      v29[0] = *(a2[6] + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v29);
      if (!AttrData)
      {
        memset(&__dst, 0, sizeof(__dst));
LABEL_22:
        v24 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
        v25 = v24->__r_.__value_.__r.__words[2];
        *v29 = *&v24->__r_.__value_.__l.__data_;
        v30 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(v29, a2[3], a4);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_26;
      }

      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = AttrData;
      if (v19 >= 0x17)
      {
        if ((v19 | 7) == 0x17)
        {
          v23 = 25;
        }

        else
        {
          v23 = (v19 | 7) + 1;
        }

        p_dst = operator new(v23);
        __dst.__r_.__value_.__l.__size_ = v20;
        __dst.__r_.__value_.__r.__words[2] = v23 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v19;
        p_dst = &__dst;
        if (!v19)
        {
          goto LABEL_21;
        }
      }

      memmove(p_dst, v21, v20);
LABEL_21:
      p_dst->__r_.__value_.__s.__data_[v20] = 0;
      goto LABEL_22;
    }
  }

  __p = operator new(0x38uLL);
  v35 = xmmword_1E0982830;
  strcpy(__p, "failed: only constant axes are supported on ANEs.");
  matched = mlir::logMatchFailure(&__p, a2[3], a4);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  if (v37[0] != &v38)
  {
    free(v37[0]);
  }

  if (v39[0] != &v40)
  {
    free(v39[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)3>::~ConvertTranspose(void *a1)
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

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)3>::~ConvertTranspose(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v41 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v31[0] = v7;
  v31[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  v10 = v9;
  v39[0] = &v40;
  v39[1] = 0x100000000;
  v37[0] = &v38;
  v37[1] = 0x100000000;
  __p = *(a3 + 40);
  *&v35 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v35 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if (mlir::matchConstantWithIntVector<long long>(v11, v39))
  {
    __p = *(a3 + 40);
    *&v35 = 2;
    __p = mlir::ValueRange::offset_base(&__p, 2);
    *&v35 = 0;
    v12 = mlir::ValueRange::dereference_iterator(&__p, 0);
    if (mlir::matchConstantWithIntVector<long long>(v12, v37))
    {
      v13 = *v39[0];
      v14 = *v37[0];
      __p = &v35 + 8;
      *(&v35 + 1) = v13;
      v36 = v14;
      *&v35 = 0x600000002;
      v32[0] = v33;
      v32[1] = 0x600000000;
      if (mlir::getPositivePromotedAxes(&v35 + 1, 2, v10, v32, 0, 0))
      {
        v15 = *(v32[0] + 1);
        v29[0] = *v32[0];
        __dst.__r_.__value_.__r.__words[0] = v15;
        v27 = mlir::ValueRange::dereference_iterator(&v41, 0);
        v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v27, v29, &__dst);
        ((*a4)[1])(a4, a2, v16);
        matched = 1;
LABEL_26:
        if (v32[0] != v33)
        {
          free(v32[0]);
        }

        if (__p != &v35 + 8)
        {
          free(__p);
        }

        goto LABEL_30;
      }

      v29[0] = *(a2[6] + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v29);
      if (!AttrData)
      {
        memset(&__dst, 0, sizeof(__dst));
LABEL_22:
        v24 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
        v25 = v24->__r_.__value_.__r.__words[2];
        *v29 = *&v24->__r_.__value_.__l.__data_;
        v30 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(v29, a2[3], a4);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_26;
      }

      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = AttrData;
      if (v19 >= 0x17)
      {
        if ((v19 | 7) == 0x17)
        {
          v23 = 25;
        }

        else
        {
          v23 = (v19 | 7) + 1;
        }

        p_dst = operator new(v23);
        __dst.__r_.__value_.__l.__size_ = v20;
        __dst.__r_.__value_.__r.__words[2] = v23 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v19;
        p_dst = &__dst;
        if (!v19)
        {
          goto LABEL_21;
        }
      }

      memmove(p_dst, v21, v20);
LABEL_21:
      p_dst->__r_.__value_.__s.__data_[v20] = 0;
      goto LABEL_22;
    }
  }

  __p = operator new(0x38uLL);
  v35 = xmmword_1E0982830;
  strcpy(__p, "failed: only constant axes are supported on ANEs.");
  matched = mlir::logMatchFailure(&__p, a2[3], a4);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  if (v37[0] != &v38)
  {
    free(v37[0]);
  }

  if (v39[0] != &v40)
  {
    free(v39[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)4>::~ConvertTranspose(void *a1)
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

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)4>::~ConvertTranspose(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v41 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v31[0] = v7;
  v31[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  v10 = v9;
  v39[0] = &v40;
  v39[1] = 0x100000000;
  v37[0] = &v38;
  v37[1] = 0x100000000;
  __p = *(a3 + 40);
  *&v35 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v35 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if (mlir::matchConstantWithIntVector<long long>(v11, v39))
  {
    __p = *(a3 + 40);
    *&v35 = 2;
    __p = mlir::ValueRange::offset_base(&__p, 2);
    *&v35 = 0;
    v12 = mlir::ValueRange::dereference_iterator(&__p, 0);
    if (mlir::matchConstantWithIntVector<long long>(v12, v37))
    {
      v13 = *v39[0];
      v14 = *v37[0];
      __p = &v35 + 8;
      *(&v35 + 1) = v13;
      v36 = v14;
      *&v35 = 0x600000002;
      v32[0] = v33;
      v32[1] = 0x600000000;
      if (mlir::getPositivePromotedAxes(&v35 + 1, 2, v10, v32, 0, 0))
      {
        v15 = *(v32[0] + 1);
        v29[0] = *v32[0];
        __dst.__r_.__value_.__r.__words[0] = v15;
        v27 = mlir::ValueRange::dereference_iterator(&v41, 0);
        v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v27, v29, &__dst);
        ((*a4)[1])(a4, a2, v16);
        matched = 1;
LABEL_26:
        if (v32[0] != v33)
        {
          free(v32[0]);
        }

        if (__p != &v35 + 8)
        {
          free(__p);
        }

        goto LABEL_30;
      }

      v29[0] = *(a2[6] + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v29);
      if (!AttrData)
      {
        memset(&__dst, 0, sizeof(__dst));
LABEL_22:
        v24 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
        v25 = v24->__r_.__value_.__r.__words[2];
        *v29 = *&v24->__r_.__value_.__l.__data_;
        v30 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(v29, a2[3], a4);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_26;
      }

      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = AttrData;
      if (v19 >= 0x17)
      {
        if ((v19 | 7) == 0x17)
        {
          v23 = 25;
        }

        else
        {
          v23 = (v19 | 7) + 1;
        }

        p_dst = operator new(v23);
        __dst.__r_.__value_.__l.__size_ = v20;
        __dst.__r_.__value_.__r.__words[2] = v23 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v19;
        p_dst = &__dst;
        if (!v19)
        {
          goto LABEL_21;
        }
      }

      memmove(p_dst, v21, v20);
LABEL_21:
      p_dst->__r_.__value_.__s.__data_[v20] = 0;
      goto LABEL_22;
    }
  }

  __p = operator new(0x38uLL);
  v35 = xmmword_1E0982830;
  strcpy(__p, "failed: only constant axes are supported on ANEs.");
  matched = mlir::logMatchFailure(&__p, a2[3], a4);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  if (v37[0] != &v38)
  {
    free(v37[0]);
  }

  if (v39[0] != &v40)
  {
    free(v39[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)5>::~ConvertTranspose(void *a1)
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

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)5>::~ConvertTranspose(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v41 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v31[0] = v7;
  v31[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  v10 = v9;
  v39[0] = &v40;
  v39[1] = 0x100000000;
  v37[0] = &v38;
  v37[1] = 0x100000000;
  __p = *(a3 + 40);
  *&v35 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v35 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if (mlir::matchConstantWithIntVector<long long>(v11, v39))
  {
    __p = *(a3 + 40);
    *&v35 = 2;
    __p = mlir::ValueRange::offset_base(&__p, 2);
    *&v35 = 0;
    v12 = mlir::ValueRange::dereference_iterator(&__p, 0);
    if (mlir::matchConstantWithIntVector<long long>(v12, v37))
    {
      v13 = *v39[0];
      v14 = *v37[0];
      __p = &v35 + 8;
      *(&v35 + 1) = v13;
      v36 = v14;
      *&v35 = 0x600000002;
      v32[0] = v33;
      v32[1] = 0x600000000;
      if (mlir::getPositivePromotedAxes(&v35 + 1, 2, v10, v32, 0, 0))
      {
        v15 = *(v32[0] + 1);
        v29[0] = *v32[0];
        __dst.__r_.__value_.__r.__words[0] = v15;
        v27 = mlir::ValueRange::dereference_iterator(&v41, 0);
        v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v27, v29, &__dst);
        ((*a4)[1])(a4, a2, v16);
        matched = 1;
LABEL_26:
        if (v32[0] != v33)
        {
          free(v32[0]);
        }

        if (__p != &v35 + 8)
        {
          free(__p);
        }

        goto LABEL_30;
      }

      v29[0] = *(a2[6] + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v29);
      if (!AttrData)
      {
        memset(&__dst, 0, sizeof(__dst));
LABEL_22:
        v24 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
        v25 = v24->__r_.__value_.__r.__words[2];
        *v29 = *&v24->__r_.__value_.__l.__data_;
        v30 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(v29, a2[3], a4);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_26;
      }

      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = AttrData;
      if (v19 >= 0x17)
      {
        if ((v19 | 7) == 0x17)
        {
          v23 = 25;
        }

        else
        {
          v23 = (v19 | 7) + 1;
        }

        p_dst = operator new(v23);
        __dst.__r_.__value_.__l.__size_ = v20;
        __dst.__r_.__value_.__r.__words[2] = v23 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v19;
        p_dst = &__dst;
        if (!v19)
        {
          goto LABEL_21;
        }
      }

      memmove(p_dst, v21, v20);
LABEL_21:
      p_dst->__r_.__value_.__s.__data_[v20] = 0;
      goto LABEL_22;
    }
  }

  __p = operator new(0x38uLL);
  v35 = xmmword_1E0982830;
  strcpy(__p, "failed: only constant axes are supported on ANEs.");
  matched = mlir::logMatchFailure(&__p, a2[3], a4);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  if (v37[0] != &v38)
  {
    free(v37[0]);
  }

  if (v39[0] != &v40)
  {
    free(v39[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)6>::~ConvertTranspose(void *a1)
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

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)6>::~ConvertTranspose(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v41 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v31[0] = v7;
  v31[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  v10 = v9;
  v39[0] = &v40;
  v39[1] = 0x100000000;
  v37[0] = &v38;
  v37[1] = 0x100000000;
  __p = *(a3 + 40);
  *&v35 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v35 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if (mlir::matchConstantWithIntVector<long long>(v11, v39))
  {
    __p = *(a3 + 40);
    *&v35 = 2;
    __p = mlir::ValueRange::offset_base(&__p, 2);
    *&v35 = 0;
    v12 = mlir::ValueRange::dereference_iterator(&__p, 0);
    if (mlir::matchConstantWithIntVector<long long>(v12, v37))
    {
      v13 = *v39[0];
      v14 = *v37[0];
      __p = &v35 + 8;
      *(&v35 + 1) = v13;
      v36 = v14;
      *&v35 = 0x600000002;
      v32[0] = v33;
      v32[1] = 0x600000000;
      if (mlir::getPositivePromotedAxes(&v35 + 1, 2, v10, v32, 0, 0))
      {
        v15 = *(v32[0] + 1);
        v29[0] = *v32[0];
        __dst.__r_.__value_.__r.__words[0] = v15;
        v27 = mlir::ValueRange::dereference_iterator(&v41, 0);
        v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v27, v29, &__dst);
        ((*a4)[1])(a4, a2, v16);
        matched = 1;
LABEL_26:
        if (v32[0] != v33)
        {
          free(v32[0]);
        }

        if (__p != &v35 + 8)
        {
          free(__p);
        }

        goto LABEL_30;
      }

      v29[0] = *(a2[6] + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v29);
      if (!AttrData)
      {
        memset(&__dst, 0, sizeof(__dst));
LABEL_22:
        v24 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
        v25 = v24->__r_.__value_.__r.__words[2];
        *v29 = *&v24->__r_.__value_.__l.__data_;
        v30 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(v29, a2[3], a4);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_26;
      }

      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = AttrData;
      if (v19 >= 0x17)
      {
        if ((v19 | 7) == 0x17)
        {
          v23 = 25;
        }

        else
        {
          v23 = (v19 | 7) + 1;
        }

        p_dst = operator new(v23);
        __dst.__r_.__value_.__l.__size_ = v20;
        __dst.__r_.__value_.__r.__words[2] = v23 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v19;
        p_dst = &__dst;
        if (!v19)
        {
          goto LABEL_21;
        }
      }

      memmove(p_dst, v21, v20);
LABEL_21:
      p_dst->__r_.__value_.__s.__data_[v20] = 0;
      goto LABEL_22;
    }
  }

  __p = operator new(0x38uLL);
  v35 = xmmword_1E0982830;
  strcpy(__p, "failed: only constant axes are supported on ANEs.");
  matched = mlir::logMatchFailure(&__p, a2[3], a4);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  if (v37[0] != &v38)
  {
    free(v37[0]);
  }

  if (v39[0] != &v40)
  {
    free(v39[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)7>::~ConvertTranspose(void *a1)
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

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)7>::~ConvertTranspose(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v41 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v31[0] = v7;
  v31[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  v10 = v9;
  v39[0] = &v40;
  v39[1] = 0x100000000;
  v37[0] = &v38;
  v37[1] = 0x100000000;
  __p = *(a3 + 40);
  *&v35 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v35 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if (mlir::matchConstantWithIntVector<long long>(v11, v39))
  {
    __p = *(a3 + 40);
    *&v35 = 2;
    __p = mlir::ValueRange::offset_base(&__p, 2);
    *&v35 = 0;
    v12 = mlir::ValueRange::dereference_iterator(&__p, 0);
    if (mlir::matchConstantWithIntVector<long long>(v12, v37))
    {
      v13 = *v39[0];
      v14 = *v37[0];
      __p = &v35 + 8;
      *(&v35 + 1) = v13;
      v36 = v14;
      *&v35 = 0x600000002;
      v32[0] = v33;
      v32[1] = 0x600000000;
      if (mlir::getPositivePromotedAxes(&v35 + 1, 2, v10, v32, 0, 0))
      {
        v15 = *(v32[0] + 1);
        v29[0] = *v32[0];
        __dst.__r_.__value_.__r.__words[0] = v15;
        v27 = mlir::ValueRange::dereference_iterator(&v41, 0);
        v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v27, v29, &__dst);
        ((*a4)[1])(a4, a2, v16);
        matched = 1;
LABEL_26:
        if (v32[0] != v33)
        {
          free(v32[0]);
        }

        if (__p != &v35 + 8)
        {
          free(__p);
        }

        goto LABEL_30;
      }

      v29[0] = *(a2[6] + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v29);
      if (!AttrData)
      {
        memset(&__dst, 0, sizeof(__dst));
LABEL_22:
        v24 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
        v25 = v24->__r_.__value_.__r.__words[2];
        *v29 = *&v24->__r_.__value_.__l.__data_;
        v30 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(v29, a2[3], a4);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_26;
      }

      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = AttrData;
      if (v19 >= 0x17)
      {
        if ((v19 | 7) == 0x17)
        {
          v23 = 25;
        }

        else
        {
          v23 = (v19 | 7) + 1;
        }

        p_dst = operator new(v23);
        __dst.__r_.__value_.__l.__size_ = v20;
        __dst.__r_.__value_.__r.__words[2] = v23 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v19;
        p_dst = &__dst;
        if (!v19)
        {
          goto LABEL_21;
        }
      }

      memmove(p_dst, v21, v20);
LABEL_21:
      p_dst->__r_.__value_.__s.__data_[v20] = 0;
      goto LABEL_22;
    }
  }

  __p = operator new(0x38uLL);
  v35 = xmmword_1E0982830;
  strcpy(__p, "failed: only constant axes are supported on ANEs.");
  matched = mlir::logMatchFailure(&__p, a2[3], a4);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  if (v37[0] != &v38)
  {
    free(v37[0]);
  }

  if (v39[0] != &v40)
  {
    free(v39[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)0>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)0>::~ConvertBroadcast(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::BroadcastToOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::BroadcastToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::BroadcastToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v63 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v63, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v51 = v6;
  v52 = v7;
  v60 = v62;
  v61 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v63, 1);
  if (mlir::matchConstantWithIntVector<long long>(v8, &v60))
  {
    isSplat = mlir::ElementsAttr::isSplat(&v51);
    v9 = mlir::MemRefType::get(v60, v61, isSplat, 0, 0, 0);
    if (v9)
    {
      v10 = v9;
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v9 = v10;
    }

    else
    {
      v11 = 0;
    }

    RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v9, v11);
    v14 = v13;
    v49[0] = RankPromotionTypeForANE;
    v49[1] = v13;
    if (mlir::Type::isF16(&isSplat))
    {
      v15 = mlir::getRankPromotionTypeForANE(v51, v52);
      v57 = v59;
      v58 = 0x400000000;
      if (mlir::getBroadcastIndices(v15, v16, RankPromotionTypeForANE, v14, &v57))
      {
        mlir::CallableOpInterface::getArgAttrsAttr(v49);
        IndexFromDim = mlir::anec::getIndexFromDim(4, v17);
        if (v58)
        {
          v19 = v57;
          v20 = 8 * v58;
          while (IndexFromDim != *v19)
          {
            ++v19;
            v20 -= 8;
            if (!v20)
            {
              v48 = mlir::ValueRange::dereference_iterator(&v63, 0);
              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v49);
              v23 = v22;
              v24 = mlir::ElementsAttr::isSplat(v49);
              v25 = mlir::RankedTensorType::get(ArgAttrsAttr, v23, v24, 0);
              __p = mlir::createSplatF16ElementsAttr(v25, 0.0);
              *&v56[0] = v26;
              v27 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), *(a2 + 24), v49, &__p);
              v53[0] = mlir::ValueRange::dereference_iterator(&v63, 0);
              v53[1] = v27 - 16;
              mlir::ValueRange::ValueRange(v54, v53, 2uLL);
              v28 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::ValueRange>((a4 + 8), *(a2 + 24), v54);
              (*(*a4 + 8))(a4, a2, v28);
              goto LABEL_30;
            }
          }

          v30 = IndexFromDim;
          v48 = mlir::ValueRange::dereference_iterator(&v63, 0);
          mlir::CallableOpInterface::getArgAttrsAttr(v49);
          v32 = v31;
          __p = v56 + 8;
          DWORD1(v56[0]) = 5;
          if (v31 < 6)
          {
            if (!v31)
            {
LABEL_28:
              LODWORD(v56[0]) = v32;
              v35 = mlir::CallableOpInterface::getArgAttrsAttr(v49);
              v36 = __p;
              *(__p + v30) = *(v35 + 8 * v30);
              v37 = LODWORD(v56[0]);
              v38 = mlir::ElementsAttr::isSplat(v49);
              v39 = mlir::RankedTensorType::get(v36, v37, v38, 0);
              v54[0] = mlir::createSplatF16ElementsAttr(v39, 1.0);
              v54[1] = v40;
              v41 = *(a2 + 24);
              v42 = __p;
              v43 = LODWORD(v56[0]);
              v44 = mlir::ElementsAttr::isSplat(v49);
              v47 = mlir::MemRefType::get(v42, v43, v44, 0, 0, 0);
              v53[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), v41, &v47, v54);
              v47 = 0;
              v45 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::mps::ConstantOp &,decltype(nullptr)>((a4 + 8), *(a2 + 24), &v48, v53);
              (*(*a4 + 8))(a4, a2, v45);
              if (__p != v56 + 8)
              {
                free(__p);
              }

LABEL_30:
              matched = 1;
              goto LABEL_31;
            }

            v34 = 8 * v31;
            v33 = v56 + 8;
          }

          else
          {
            LODWORD(v56[0]) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v56 + 8, v31, 8);
            v33 = __p;
            v34 = 8 * v32;
          }

          memset_pattern16(v33, &unk_1E096FAE0, v34);
          goto LABEL_28;
        }

        __p = operator new(0x20uLL);
        v56[0] = xmmword_1E097BD70;
        strcpy(__p, "Unsupported A11/A12 Broadcast.");
      }

      else
      {
        __p = operator new(0x28uLL);
        v56[0] = xmmword_1E09828E0;
        strcpy(__p, "Unable to determine A11/A12 Broadcast.");
      }

      matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
      if (SHIBYTE(v56[0]) < 0)
      {
        operator delete(__p);
      }

LABEL_31:
      if (v57 != v59)
      {
        free(v57);
      }

      goto LABEL_33;
    }

    __p = operator new(0x30uLL);
    v56[0] = xmmword_1E0982690;
    strcpy(__p, "Only fp16 is supported for A11/A12 Broadcasts.");
  }

  else
  {
    __p = operator new(0x20uLL);
    v56[0] = xmmword_1E097BD80;
    strcpy(__p, "Operand 1 should be constant.");
  }

  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v56[0]) < 0)
  {
    operator delete(__p);
  }

LABEL_33:
  if (v60 != v62)
  {
    free(v60);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::mps::ConstantOp &,decltype(nullptr)>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, void *a4)
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
  mlir::anec::MatMul::build(a1, v17, *a3, *a4 - 16, 0);
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

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::ValueRange>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::Ceil::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
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

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)1>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)1>::~ConvertBroadcast(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v63 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v63, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v51 = v6;
  v52 = v7;
  v60 = v62;
  v61 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v63, 1);
  if (mlir::matchConstantWithIntVector<long long>(v8, &v60))
  {
    isSplat = mlir::ElementsAttr::isSplat(&v51);
    v9 = mlir::MemRefType::get(v60, v61, isSplat, 0, 0, 0);
    if (v9)
    {
      v10 = v9;
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v9 = v10;
    }

    else
    {
      v11 = 0;
    }

    RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v9, v11);
    v14 = v13;
    v49[0] = RankPromotionTypeForANE;
    v49[1] = v13;
    if (mlir::Type::isF16(&isSplat))
    {
      v15 = mlir::getRankPromotionTypeForANE(v51, v52);
      v57 = v59;
      v58 = 0x400000000;
      if (mlir::getBroadcastIndices(v15, v16, RankPromotionTypeForANE, v14, &v57))
      {
        mlir::CallableOpInterface::getArgAttrsAttr(v49);
        IndexFromDim = mlir::anec::getIndexFromDim(4, v17);
        if (v58)
        {
          v19 = v57;
          v20 = 8 * v58;
          while (IndexFromDim != *v19)
          {
            ++v19;
            v20 -= 8;
            if (!v20)
            {
              v48 = mlir::ValueRange::dereference_iterator(&v63, 0);
              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v49);
              v23 = v22;
              v24 = mlir::ElementsAttr::isSplat(v49);
              v25 = mlir::RankedTensorType::get(ArgAttrsAttr, v23, v24, 0);
              __p = mlir::createSplatF16ElementsAttr(v25, 0.0);
              *&v56[0] = v26;
              v27 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), *(a2 + 24), v49, &__p);
              v53[0] = mlir::ValueRange::dereference_iterator(&v63, 0);
              v53[1] = v27 - 16;
              mlir::ValueRange::ValueRange(v54, v53, 2uLL);
              v28 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::ValueRange>((a4 + 8), *(a2 + 24), v54);
              (*(*a4 + 8))(a4, a2, v28);
              goto LABEL_30;
            }
          }

          v30 = IndexFromDim;
          v48 = mlir::ValueRange::dereference_iterator(&v63, 0);
          mlir::CallableOpInterface::getArgAttrsAttr(v49);
          v32 = v31;
          __p = v56 + 8;
          DWORD1(v56[0]) = 5;
          if (v31 < 6)
          {
            if (!v31)
            {
LABEL_28:
              LODWORD(v56[0]) = v32;
              v35 = mlir::CallableOpInterface::getArgAttrsAttr(v49);
              v36 = __p;
              *(__p + v30) = *(v35 + 8 * v30);
              v37 = LODWORD(v56[0]);
              v38 = mlir::ElementsAttr::isSplat(v49);
              v39 = mlir::RankedTensorType::get(v36, v37, v38, 0);
              v54[0] = mlir::createSplatF16ElementsAttr(v39, 1.0);
              v54[1] = v40;
              v41 = *(a2 + 24);
              v42 = __p;
              v43 = LODWORD(v56[0]);
              v44 = mlir::ElementsAttr::isSplat(v49);
              v47 = mlir::MemRefType::get(v42, v43, v44, 0, 0, 0);
              v53[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), v41, &v47, v54);
              v47 = 0;
              v45 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::mps::ConstantOp &,decltype(nullptr)>((a4 + 8), *(a2 + 24), &v48, v53);
              (*(*a4 + 8))(a4, a2, v45);
              if (__p != v56 + 8)
              {
                free(__p);
              }

LABEL_30:
              matched = 1;
              goto LABEL_31;
            }

            v34 = 8 * v31;
            v33 = v56 + 8;
          }

          else
          {
            LODWORD(v56[0]) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v56 + 8, v31, 8);
            v33 = __p;
            v34 = 8 * v32;
          }

          memset_pattern16(v33, &unk_1E096FAE0, v34);
          goto LABEL_28;
        }

        __p = operator new(0x20uLL);
        v56[0] = xmmword_1E097BD70;
        strcpy(__p, "Unsupported A11/A12 Broadcast.");
      }

      else
      {
        __p = operator new(0x28uLL);
        v56[0] = xmmword_1E09828E0;
        strcpy(__p, "Unable to determine A11/A12 Broadcast.");
      }

      matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
      if (SHIBYTE(v56[0]) < 0)
      {
        operator delete(__p);
      }

LABEL_31:
      if (v57 != v59)
      {
        free(v57);
      }

      goto LABEL_33;
    }

    __p = operator new(0x30uLL);
    v56[0] = xmmword_1E0982690;
    strcpy(__p, "Only fp16 is supported for A11/A12 Broadcasts.");
  }

  else
  {
    __p = operator new(0x20uLL);
    v56[0] = xmmword_1E097BD80;
    strcpy(__p, "Operand 1 should be constant.");
  }

  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v56[0]) < 0)
  {
    operator delete(__p);
  }

LABEL_33:
  if (v60 != v62)
  {
    free(v60);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)2>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)2>::~ConvertBroadcast(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v20[0] = v6;
  v20[1] = v7;
  v21 = v23;
  v22 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v24, 1);
  if (mlir::matchConstantWithIntVector<long long>(v8, &v21))
  {
    isSplat = mlir::ElementsAttr::isSplat(v20);
    v10 = mlir::MemRefType::get(v21, v22, isSplat, 0, 0, 0);
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

    __p = mlir::getRankPromotionTypeForANE(v10, v12);
    *&v19 = v14;
    v17 = mlir::ValueRange::dereference_iterator(&v24, 0);
    v15 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), &__p, &v17);
    (*(*a4 + 8))(a4, a2, v15);
    matched = 1;
  }

  else
  {
    __p = operator new(0x20uLL);
    v19 = xmmword_1E097BD80;
    strcpy(__p, "Operand 1 should be constant.");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

  if (v21 != v23)
  {
    free(v21);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)3>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)3>::~ConvertBroadcast(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v20[0] = v6;
  v20[1] = v7;
  v21 = v23;
  v22 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v24, 1);
  if (mlir::matchConstantWithIntVector<long long>(v8, &v21))
  {
    isSplat = mlir::ElementsAttr::isSplat(v20);
    v10 = mlir::MemRefType::get(v21, v22, isSplat, 0, 0, 0);
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

    __p = mlir::getRankPromotionTypeForANE(v10, v12);
    *&v19 = v14;
    v17 = mlir::ValueRange::dereference_iterator(&v24, 0);
    v15 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), &__p, &v17);
    (*(*a4 + 8))(a4, a2, v15);
    matched = 1;
  }

  else
  {
    __p = operator new(0x20uLL);
    v19 = xmmword_1E097BD80;
    strcpy(__p, "Operand 1 should be constant.");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

  if (v21 != v23)
  {
    free(v21);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)4>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)4>::~ConvertBroadcast(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v20[0] = v6;
  v20[1] = v7;
  v21 = v23;
  v22 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v24, 1);
  if (mlir::matchConstantWithIntVector<long long>(v8, &v21))
  {
    isSplat = mlir::ElementsAttr::isSplat(v20);
    v10 = mlir::MemRefType::get(v21, v22, isSplat, 0, 0, 0);
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

    __p = mlir::getRankPromotionTypeForANE(v10, v12);
    *&v19 = v14;
    v17 = mlir::ValueRange::dereference_iterator(&v24, 0);
    v15 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), &__p, &v17);
    (*(*a4 + 8))(a4, a2, v15);
    matched = 1;
  }

  else
  {
    __p = operator new(0x20uLL);
    v19 = xmmword_1E097BD80;
    strcpy(__p, "Operand 1 should be constant.");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

  if (v21 != v23)
  {
    free(v21);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)5>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)5>::~ConvertBroadcast(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v20[0] = v6;
  v20[1] = v7;
  v21 = v23;
  v22 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v24, 1);
  if (mlir::matchConstantWithIntVector<long long>(v8, &v21))
  {
    isSplat = mlir::ElementsAttr::isSplat(v20);
    v10 = mlir::MemRefType::get(v21, v22, isSplat, 0, 0, 0);
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

    __p = mlir::getRankPromotionTypeForANE(v10, v12);
    *&v19 = v14;
    v17 = mlir::ValueRange::dereference_iterator(&v24, 0);
    v15 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), &__p, &v17);
    (*(*a4 + 8))(a4, a2, v15);
    matched = 1;
  }

  else
  {
    __p = operator new(0x20uLL);
    v19 = xmmword_1E097BD80;
    strcpy(__p, "Operand 1 should be constant.");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

  if (v21 != v23)
  {
    free(v21);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)6>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)6>::~ConvertBroadcast(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v20[0] = v6;
  v20[1] = v7;
  v21 = v23;
  v22 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v24, 1);
  if (mlir::matchConstantWithIntVector<long long>(v8, &v21))
  {
    isSplat = mlir::ElementsAttr::isSplat(v20);
    v10 = mlir::MemRefType::get(v21, v22, isSplat, 0, 0, 0);
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

    __p = mlir::getRankPromotionTypeForANE(v10, v12);
    *&v19 = v14;
    v17 = mlir::ValueRange::dereference_iterator(&v24, 0);
    v15 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), &__p, &v17);
    (*(*a4 + 8))(a4, a2, v15);
    matched = 1;
  }

  else
  {
    __p = operator new(0x20uLL);
    v19 = xmmword_1E097BD80;
    strcpy(__p, "Operand 1 should be constant.");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

  if (v21 != v23)
  {
    free(v21);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)7>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)7>::~ConvertBroadcast(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v20[0] = v6;
  v20[1] = v7;
  v21 = v23;
  v22 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v24, 1);
  if (mlir::matchConstantWithIntVector<long long>(v8, &v21))
  {
    isSplat = mlir::ElementsAttr::isSplat(v20);
    v10 = mlir::MemRefType::get(v21, v22, isSplat, 0, 0, 0);
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

    __p = mlir::getRankPromotionTypeForANE(v10, v12);
    *&v19 = v14;
    v17 = mlir::ValueRange::dereference_iterator(&v24, 0);
    v15 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), &__p, &v17);
    (*(*a4 + 8))(a4, a2, v15);
    matched = 1;
  }

  else
  {
    __p = operator new(0x20uLL);
    v19 = xmmword_1E097BD80;
    strcpy(__p, "Operand 1 should be constant.");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

  if (v21 != v23)
  {
    free(v21);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)0>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)0>::~ConvertPadding(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PadOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

uint64_t mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)0>::createPadding(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t *a6, uint64_t a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = v39;
  memset(v39, 0, sizeof(v39));
  v38 = 0xA0000000ALL;
  v34 = v36;
  memset_pattern16(v36, &unk_1E0982A60, 0x28uLL);
  v35 = 0x500000005;
  v12 = a5[2];
  if (v12)
  {
    v13 = 0;
    v14 = 16 * v12;
    v15 = (*a5 + 8);
    do
    {
      ReferenceFormatIndex = mlir::anec::getReferenceFormatIndex(v13, a5[2], 5uLL);
      if ((v18 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      v19 = *(v15 - 1);
      if (v19 || *v15)
      {
        v16 = v37 + 16 * ReferenceFormatIndex;
        *v16 = v19;
        v16[1] = *v15;
        *(v34 + ReferenceFormatIndex) = a4;
      }

      v13 = (v13 + 1);
      v15 += 2;
      v14 -= 16;
    }

    while (v14);
  }

  v33 = xmmword_1E0982930;
  IntegerType = mlir::Builder::getIntegerType((a7 + 8), 64, 0);
  v21 = mlir::RankedTensorType::get(&v33, 2, IntegerType, 0);
  if (v21)
  {
    v22 = v21;
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    v21 = v22;
  }

  else
  {
    v23 = 0;
  }

  v31 = mlir::DenseElementsAttr::getFromRawBuffer(v21, v23, v37, 8 * v38, 8, 1, 0);
  v32 = 5;
  v24 = mlir::Builder::getIntegerType((a7 + 8), 64, 0);
  v25 = mlir::RankedTensorType::get(&v32, 1, v24, 0);
  if (v25)
  {
    v26 = v25;
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
    v25 = v26;
  }

  else
  {
    v27 = 0;
  }

  *&v33 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, v34, 8 * v35, 8, 1, 0);
  v28 = mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>((a7 + 8), a1, a2, &v33, &v31, a6);
  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  return v28;
}

void mlir::getListOfPairs<unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v12 = v14;
  v13 = 0x800000000;
  mlir::getIntValues<unsigned long long>(a1, a2, &v12, 1);
  v4 = v12;
  v5 = v13;
  if (v13)
  {
    v6 = v12;
    do
    {
      v7 = *v6;
      v10 = v6[1];
      v11 = v7;
      v8 = *(a3 + 8);
      if (v8 >= *(a3 + 12))
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::Block *,mlir::CallGraphNode *>,true>::growAndEmplaceBack<mlir::Block *,mlir::CallGraphNode *&>(a3, &v11, &v10);
        v4 = v12;
        v5 = v13;
      }

      else
      {
        v9 = (*a3 + 16 * v8);
        *v9 = v7;
        v9[1] = v10;
        *(a3 + 8) = v8 + 1;
      }

      v6 += 2;
    }

    while (v6 != &v4[8 * v5]);
  }

  if (v4 != v14)
  {
    free(v4);
  }
}

char *llvm::SmallVectorImpl<std::pair<unsigned long long,unsigned long long>>::insert<std::pair<unsigned long long,unsigned long long>*,void>(uint64_t a1, uint64_t a2, char *__src, char *a4)
{
  v7 = *a1;
  v8 = *a1;
  v9 = a2 - *a1;
  v11 = *(a1 + 8);
  v10 = *(a1 + 12);
  v12 = a4 - __src;
  v13 = (a4 - __src) >> 4;
  v14 = v13 + v11;
  if (*a1 + 16 * v11 == a2)
  {
    if (v14 > v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v14, 16);
      LODWORD(v11) = *(a1 + 8);
      v8 = *a1;
    }

    if (__src != a4)
    {
      memcpy((v8 + 16 * v11), __src, v12);
      LODWORD(v11) = *(a1 + 8);
      v8 = *a1;
    }

    *(a1 + 8) = v11 + (v12 >> 4);
    return (v8 + v9);
  }

  else
  {
    v103 = __src;
    if (v14 > v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v14, 16);
      v8 = *a1;
      v11 = *(a1 + 8);
    }

    v15 = (v8 + v9);
    v16 = v9;
    v17 = 16 * v11;
    v18 = (v8 + 16 * v11);
    v19 = 16 * v11 - v16;
    v20 = v19 >> 4;
    if (v19 >> 4 < v13)
    {
      v21 = v11 + (v12 >> 4);
      *(a1 + 8) = v21;
      if (v17 == v16)
      {
        v22 = v103;
        goto LABEL_21;
      }

      v30 = v16;
      v31 = v8;
      memcpy((v8 + 16 * v21 - 16 * v20), v15, 16 * v11 - v16);
      if (v20 <= 0xF || ((v89 = v31 + v19 + a2 - v7, v90 = v89 - 8, v30 + v31 + 8 < &v103[v19]) ? (v91 = (v103 + 8) >= v89) : (v91 = 1), v91 ? (v92 = 0) : (v92 = 1), v90 > v103 ? (v93 = v15 >= &v103[v19 - 8]) : (v93 = 1), !v93 || (v92 & 1) != 0))
      {
        v32 = v15;
        v33 = v19 >> 4;
        v22 = v103;
      }

      else
      {
        v94 = 16 * (v20 & 0xFFFFFFFFFFFFFFFCLL);
        v32 = &v15[v94];
        v33 = (v19 >> 4) & 3;
        v22 = &v103[v94];
        v95 = (v103 + 32);
        v96 = (v30 + v31 + 32);
        v97 = v20 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v99 = *(v95 - 2);
          v98 = *(v95 - 1);
          v101 = *v95;
          v100 = v95[1];
          v95 += 4;
          *(v96 - 2) = v99;
          *(v96 - 1) = v98;
          *v96 = v101;
          v96[1] = v100;
          v96 += 4;
          v97 -= 4;
        }

        while (v97);
        if (v20 == (v20 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_21:
          if (v22 != a4)
          {
            memcpy(v18, v22, a4 - v22);
          }

          return v15;
        }
      }

      do
      {
        v34 = *v22;
        v22 += 16;
        *v32 = v34;
        v32 += 16;
        --v33;
      }

      while (v33);
      goto LABEL_21;
    }

    v23 = v16;
    v24 = 16 * v13;
    if (v13 + v11 > *(a1 + 12))
    {
      v25 = v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v13 + v11, 16);
      v8 = v25;
      LODWORD(v11) = *(a1 + 8);
    }

    v26 = &v18[-v24];
    if (a4 == v103)
    {
      v29 = a2;
    }

    else
    {
      v27 = (*a1 + 16 * v11);
      v28 = -16 * v13;
      v29 = a2;
      do
      {
        *v27++ = *&v18[v28];
        v28 += 16;
      }

      while (v28);
      LODWORD(v11) = *(a1 + 8);
    }

    *(a1 + 8) = v11 + v13;
    if (v26 != v15)
    {
      v35 = v17 + v7 - (v24 + v29) - 16;
      if (v35 < 0x530)
      {
        goto LABEL_26;
      }

      v43 = v35 & 0xFFFFFFFFFFFFFFF0;
      v44 = v17 - 16;
      if (v8 + v17 - 16 - (v35 & 0xFFFFFFFFFFFFFFF0) > v8 + v17 - 16)
      {
        goto LABEL_26;
      }

      v45 = v17 - 8;
      if (v8 + v17 - 8 - v43 > v8 + v17 - 8)
      {
        goto LABEL_26;
      }

      if (v8 + v44 - v24 - v43 > v8 + v44 - v24)
      {
        goto LABEL_26;
      }

      v46 = v45 - v24;
      if (v8 + v45 - v24 - v43 > v8 + v45 - v24)
      {
        goto LABEL_26;
      }

      v47 = (v17 + v7 - (v24 + v29) - 16) & 0xFFFFFFFFFFFFFFF0;
      v48 = v8 + v44 - v47;
      v49 = v8 + v45;
      v50 = v8 + v45 - v47;
      v51 = v8 + v44 - (v24 + v47);
      v52 = v8 + v46 - v47;
      v53 = v48 >= v8 + v46 || v51 >= v49;
      v54 = !v53;
      v55 = v48 >= v26 || v52 >= v49;
      v56 = !v55;
      v57 = v50 >= v8 + v46 || v51 >= v18;
      v58 = !v57;
      v59 = v50 >= v26 || v52 >= v18;
      v60 = !v59;
      if (v50 < v49 && v48 < v18)
      {
        goto LABEL_26;
      }

      if (v54)
      {
        goto LABEL_26;
      }

      if (v56)
      {
        goto LABEL_26;
      }

      if (v58)
      {
        goto LABEL_26;
      }

      if (v60)
      {
        goto LABEL_26;
      }

      v62 = (v35 >> 4) + 1;
      v63 = 16 * (v62 & 0x1FFFFFFFFFFFFFFCLL);
      v64 = &v18[-v63];
      v65 = &v26[-v63];
      v66 = v26 - 32;
      v67 = v18 - 64;
      v68 = v62 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v69 = *(v66 + 1);
        v71 = *(v66 - 2);
        v70 = *(v66 - 1);
        *(v67 + 2) = *v66;
        *(v67 + 3) = v69;
        *v67 = v71;
        *(v67 + 1) = v70;
        v67 -= 64;
        v66 -= 64;
        v68 -= 4;
      }

      while (v68);
      v18 = v64;
      v26 = v65;
      if (v62 != (v62 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_26:
        v36 = v18 - 8;
        do
        {
          v37 = *(v26 - 2);
          v26 -= 16;
          *(v36 - 1) = v37;
          *v36 = *(v26 + 1);
          v36 -= 16;
        }

        while (v26 != v15);
      }
    }

    if (a4 != v103)
    {
      v38 = a4 - v103 - 16;
      if (v38 < 0x170 || ((v72 = (v38 & 0xFFFFFFFFFFFFFFF0) + v29 - v7 + v8, v73 = v72 + 8, v74 = &v103[v38 & 0xFFFFFFFFFFFFFFF0], v75 = (v74 + 8), v76 = v72 + 16, v23 + v8 + 8 < (v74 + 16)) ? (v77 = (v103 + 8) >= v76) : (v77 = 1), v77 ? (v78 = 0) : (v78 = 1), v73 > v103 ? (v79 = v15 >= v75) : (v79 = 1), !v79 || (v78 & 1) != 0))
      {
        v39 = v15;
        v40 = v103;
      }

      else
      {
        v80 = (v38 >> 4) + 1;
        v81 = 16 * (v80 & 0x1FFFFFFFFFFFFFFCLL);
        v39 = &v15[v81];
        v40 = &v103[v81];
        v82 = (v103 + 32);
        v83 = (v23 + v8 + 32);
        v84 = v80 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v86 = *(v82 - 2);
          v85 = *(v82 - 1);
          v88 = *v82;
          v87 = v82[1];
          v82 += 4;
          *(v83 - 2) = v86;
          *(v83 - 1) = v85;
          *v83 = v88;
          v83[1] = v87;
          v83 += 4;
          v84 -= 4;
        }

        while (v84);
        if (v80 == (v80 & 0x1FFFFFFFFFFFFFFCLL))
        {
          return v15;
        }
      }

      do
      {
        v41 = *v40;
        v40 += 16;
        *v39 = v41;
        v39 += 16;
      }

      while (v40 != a4);
    }
  }

  return v15;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Padding,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::Padding::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Padding,void>::id)
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

void std::deque<std::pair<mlir::anec::Dim,std::pair<unsigned long long,unsigned long long>>>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0xAA;
  v4 = v2 - 170;
  if (v3)
  {
    *(a1 + 32) = v4;
    goto LABEL_4;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v7 - v8;
  v10 = &v6[-*a1];
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v24 = operator new(0xFF0uLL);
      return;
    }

    v24 = operator new(0xFF0uLL);
LABEL_4:
    v5 = *(a1 + 8);
    v24 = *v5;
    *(a1 + 8) = v5 + 1;
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v28 = a1;
  if (v12 >> 61)
  {
    goto LABEL_29;
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = &v14[v9];
  v24 = v14;
  v25 = &v14[v9];
  v16 = &v14[v13];
  v27 = &v14[v13];
  v17 = operator new(0xFF0uLL);
  if (v9 == v13)
  {
    if (v9 >= 1)
    {
      v15 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
      v25 = v15;
      goto LABEL_21;
    }

    if (v7 == v8)
    {
      v18 = 1;
    }

    else
    {
      v18 = v9 >> 2;
    }

    if (!(v18 >> 61))
    {
      v19 = v17;
      v20 = operator new(8 * v18);
      v15 = &v20[8 * (v18 >> 2)];
      v16 = &v20[8 * v18];
      v24 = v20;
      v25 = v15;
      v27 = v16;
      operator delete(v14);
      v8 = *(a1 + 8);
      v7 = *(a1 + 16);
      v14 = v20;
      v17 = v19;
      goto LABEL_21;
    }

LABEL_29:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_21:
  *v15 = v17;
  v21 = v15 + 8;
  v26 = v15 + 8;
  if (v7 != v8)
  {
    do
    {
      v7 -= 8;
      v8 = *(a1 + 8);
    }

    while (v7 != v8);
    v14 = v24;
    v15 = v25;
    v7 = *(a1 + 16);
    v21 = v26;
    v16 = v27;
  }

  v22 = *a1;
  *a1 = v14;
  *(a1 + 8) = v15;
  v24 = v22;
  v25 = v8;
  v23 = *(a1 + 24);
  *(a1 + 16) = v21;
  *(a1 + 24) = v16;
  v26 = v7;
  v27 = v23;
  if (v7 != v8)
  {
    v26 = &v7[(v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8];
  }

  if (v22)
  {
    operator delete(v22);
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)1>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)1>::~ConvertPadding(void *__p)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)2>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)2>::~ConvertPadding(void *__p)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)3>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)3>::~ConvertPadding(void *__p)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)4>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)4>::~ConvertPadding(void *__p)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)5>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)5>::~ConvertPadding(void *__p)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)6>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)6>::~ConvertPadding(void *__p)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)7>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)7>::~ConvertPadding(void *__p)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)0>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)0>::~ConvertSlice(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SliceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
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

uint64_t mlir::anonymous namespace::makeInputViewOp<(mlir::anec::Family)0>(uint64_t a1, uint64_t a2, uint64_t a3, mlir::anec *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  NextResultAtOffset = a3;
  v12 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v43[0] = mlir::getRankPromotionTypeForANE(v12, v13);
  v43[1] = v14;
  isSplat = mlir::ElementsAttr::isSplat(v43);
  v15 = 12;
  if (!mlir::Type::isF16(&isSplat))
  {
    v41 = mlir::ElementsAttr::isSplat(v43);
    if (mlir::Type::isF32(&v41))
    {
      v15 = 12;
    }

    else
    {
      v15 = 28;
    }
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v43);
  DimFromIndex = mlir::anec::getDimFromIndex(a4, v16);
  if ((DimFromIndex & 0x100000000) != 0)
  {
    if (DimFromIndex != 4 || v15 >= a5)
    {
      v41 = a5;
      isSplat = a4;
LABEL_29:
      v40 = a6;
      return mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long,unsigned long long,unsigned long long,long long &>((a1 + 8), a2, &NextResultAtOffset, &isSplat, &v41, &v40, &v44);
    }

    mlir::CallableOpInterface::getArgAttrsAttr(v43);
    IndexFromDim = mlir::anec::getIndexFromDim(4, v18);
    if (v20)
    {
      v21 = IndexFromDim;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
      v23 = a5 / v15;
      v24 = a5 % v15;
      v26 = v23 > 1 && v24 == 0;
      v27 = v23 - v26;
      if (v23 != v26)
      {
        v28 = *(ArgAttrsAttr + 8 * v21) - v15;
        do
        {
          v41 = a4;
          isSplat = v28;
          v40 = v15;
          v29 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,long long const&,unsigned long long &,long long &>((a1 + 8), a2, &NextResultAtOffset, &v41, &v40, &isSplat);
          if (*(v29 + 36))
          {
            v30 = v29 - 16;
          }

          else
          {
            v30 = 0;
          }

          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
          v28 -= v15;
          --v27;
        }

        while (v27);
      }

      if (v24)
      {
        v31 = v24;
      }

      else
      {
        v31 = v15;
      }

      v41 = v31;
      isSplat = a4;
      goto LABEL_29;
    }
  }

  v33 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long,unsigned long long,unsigned long long,long long &>(v33, v34, v35, v36, v37, v38, v39);
}

uint64_t mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long,unsigned long long,unsigned long long,long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::anec::InputView::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id)
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

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)1>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)1>::~ConvertSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
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

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)2>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)2>::~ConvertSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
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

uint64_t mlir::anonymous namespace::makeInputViewOp<(mlir::anec::Family)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a7;
  v21 = a3;
  v12 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v19[0] = mlir::getRankPromotionTypeForANE(v12, v13);
  v19[1] = v14;
  isSplat = mlir::ElementsAttr::isSplat(v19);
  if (!mlir::Type::isF16(&isSplat))
  {
    v17 = mlir::ElementsAttr::isSplat(v19);
    mlir::Type::isF32(&v17);
  }

  v17 = a5;
  isSplat = a4;
  v16 = a6;
  return mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long,unsigned long long,unsigned long long,long long &>((a1 + 8), a2, &v21, &isSplat, &v17, &v16, &v20);
}

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)3>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)3>::~ConvertSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
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

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)4>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)4>::~ConvertSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
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

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)5>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)5>::~ConvertSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
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

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)6>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)6>::~ConvertSlice(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
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