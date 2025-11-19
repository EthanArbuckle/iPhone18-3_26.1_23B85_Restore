uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::StridedSliceOp>::bufferizeViewOp(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1 - 16;
  if (*(a1 + 36))
  {
    v5 = a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v29 = NextResultAtOffset;
  v7 = *NextResultAtOffset;
  if (*NextResultAtOffset)
  {
    while (*(*(v7[2] + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    v8 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v28[0] = v8;
    v28[1] = v9;
    v11 = *(a1 + 24);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v28);
    v14 = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    v30 = mlir::MemRefType::get(ArgAttrsAttr, v14, isSplat, 0, 0, 0);
    v27 = mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType>((a2 + 8), v11, &v30) - 16;
    v16 = mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v17 = ((v16 + 16 * ((*(v16 + 44) >> 23) & 1) + ((*(v16 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v16 + 40);
    mlir::ValueRange::ValueRange(&v30, 0, 0);
    Block = mlir::OpBuilder::createBlock((a2 + 8), v17, 0, v30, v31, 0, 0);
    v19 = Block[5];
    *(a2 + 24) = Block;
    *(a2 + 32) = v19;
    mlir::Operation::moveBefore(a1, Block, Block + 4);
    mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v29);
    v20 = *(v16 + 16);
    v22 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v21) + 8);
    *(a2 + 24) = v20;
    *(a2 + 32) = v22;
    v23 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v24 = *(a1 + 36);
    if (v24)
    {
      v25 = v4;
    }

    else
    {
      v25 = 0;
    }

    v30 = v25;
    v31 = v24;
    return 1;
  }
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceOp &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = a3;
  v4 = *(a1 + 16);
  if (v4 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v4 + 88))(v4, *(v3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceOp &>(mlir::mps::StridedSliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v6);
  }

  return 0;
}

void mlir::mps::anonymous namespace::MPSToMemrefStridedSliceUpdateConverter::~MPSToMemrefStridedSliceUpdateConverter(mlir::mps::_anonymous_namespace_::MPSToMemrefStridedSliceUpdateConverter *this)
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

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::StridedSliceUpdateOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 72) + 24);
  v49 = v6;
  v50 = a2;
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v43[0] = 0uLL;
LABEL_17:
    v15 = "Unranked input types or dynamic shapes are not supported";
    goto LABEL_18;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  *&v43[0] = v7;
  *(&v43[0] + 1) = v8;
  if (!v7 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v10)
  {
    v11 = 8 * v10;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v43[0] = 0uLL;
LABEL_31:
    v15 = "Unranked result types or dynamic shapes are not supported";
LABEL_18:
    *&v43[0] = v15;
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  *&v43[0] = v13;
  *(&v43[0] + 1) = v14;
  if (!v13 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_31;
  }

  v18 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v19)
  {
    v20 = 8 * v19;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

LABEL_29:
  v21 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v48[0] = v21;
  v48[1] = v22;
  *&v43[0] = mlir::ElementsAttr::isSplat(v48);
  if (mlir::Type::isInteger(v43, 1))
  {
    *&v43[0] = "Boolean conversion is not supported for mps_spi.strided_array_view()";
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
LABEL_19:
      if (mlir::RewriterBase::Listener::classof(v16))
      {
        (*(*v16 + 88))(v16, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceUpdateOp &>(mlir::mps::StridedSliceUpdateOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v52);
      }
    }

    return 0;
  }

  v23 = *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
  {
    return 0;
  }

  v25 = *(*(*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v49);
    if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      NextResultAtOffset = *(*(DefiningOp + 72) + 24);
    }

    else
    {
      v28 = v49;
      do
      {
        v28 = *v28;
        if (!v28)
        {
          v6 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>((a3 + 8), *(a2 + 24), &v49) - 16;
          goto LABEL_61;
        }

        v29 = v28[2];
        if (v29)
        {
          v30 = *(*(v29 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id;
        }

        else
        {
          v30 = 0;
        }
      }

      while (!v30);
      if (*(v29 + 36))
      {
        v31 = v29 - 16;
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
    }

    v47 = NextResultAtOffset;
    if (!NextResultAtOffset)
    {
    }
  }

  else
  {
    if (v25 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
    }

LABEL_61:
    v47 = v6;
  }

  v33 = *(a2 + 36);
  if (v33)
  {
    v34 = a2 - 16;
  }

  else
  {
    v34 = 0;
  }

  v51.n128_u64[0] = v34;
  v51.n128_u64[1] = v33;
  mlir::ResultRange::use_begin(&v51, v52);
  v35 = *(a2 + 36);
  if (v35)
  {
    v36 = a2 - 16;
  }

  else
  {
    v36 = 0;
  }

  v51.n128_u64[0] = v36;
  v51.n128_u64[1] = v35;
  mlir::ResultRange::use_end(&v51, v45);
  v44 = v53;
  v37 = v53;
  v43[0] = v52[0];
  v43[1] = v52[1];
  v38 = v46;
  if (v53 != v46)
  {
    while (*(*(*(v37 + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      mlir::ResultRange::UseIterator::operator++(v52);
      v37 = v53;
      if (v53 == v38)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_73:
  v39 = mlir::Value::getDefiningOp(&v47);
  if (v39 && ((v40 = *(*(v39 + 48) + 16), v41 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, v40 != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id) ? (v42 = 0) : (v42 = v39), (*&v43[0] = v42, v41) && mlir::placement::RegionCall::getRegionType(v43) == 1))
  {
    return mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceUpdateOp &>(a3, &v50, "Bufferization is not supported for ANE regions");
  }

  else
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }
}

uint64_t mlir::mps::anonymous namespace::MPSToMemrefStridedSliceUpdateConverter::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, mlir::Operation *a3, uint64_t a4)
{
  v5 = a3;
  v125 = *MEMORY[0x1E69E9840];
  v95 = a3;
  v96 = a2;
  v116 = v118;
  v117 = 0x600000000;
  v113 = v115;
  v114 = 0x600000000;
  v110 = v112;
  v111 = 0x600000000;
  if ((mlir::matchConstantWithIntVector<long long>(*(*(a3 + 9) + 88), &v116) & 1) == 0)
  {
    LOWORD(v107) = 259;
    goto LABEL_17;
  }

  if ((mlir::matchConstantWithIntVector<long long>(*(*(v5 + 9) + 120), &v113) & 1) == 0)
  {
LABEL_16:
    v105[0] = v12;
    LOWORD(v107) = 259;
    v5 = v95;
LABEL_17:
    *&v122 = v105;
    v14 = *(a4 + 16);
    if (v14 && mlir::RewriterBase::Listener::classof(v14))
    {
      (*(*v14 + 88))(v14, *(v5 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceUpdateOp &>(mlir::mps::StridedSliceUpdateOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v122);
    }

    updated = 0;
    goto LABEL_21;
  }

  if ((mlir::matchConstantWithIntVector<long long>(*(*(v95 + 9) + 152), &v110) & 1) == 0)
  {
    goto LABEL_16;
  }

  Index = mlir::pdl::ResultOp::getIndex(&v95);
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v95);
  Groups = mlir::mps::Conv3DOp::getGroups(&v95);
  v9 = Groups;
  if (v111)
  {
    v10 = 0;
    v11 = 8 * v111;
    while (*(v110 + v10) == 1 || ((Groups >> v10) & 1) != 0)
    {
      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v12 = "Non-unit strides are not supported for bufferizing strided_slice_update op";
    goto LABEL_16;
  }

LABEL_13:
  v94 = *(*(v95 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v94);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
  {
    v12 = "Failed to find the source of strided_slice_update";
    goto LABEL_16;
  }

  v105[0] = *(*(DefiningOp + 72) + 24);
  v17 = mlir::Value::getDefiningOp(v105);
  if (!v17 || (v19 = v17, *(*(v17 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id))
  {
    v20 = "Only alloc ops are supported as the source of strided_slice_update";
LABEL_31:
    updated = mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceUpdateOp &>(a4, &v95, v20);
    goto LABEL_21;
  }

  v21 = *(v17 + 16);
  v22 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v17, v18);
  *(a4 + 24) = v21;
  *(a4 + 32) = v22;
  v23 = mlir::Value::getDefiningOp(&v96);
  if (v23)
  {
    if (*(*(v23 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
    {
      v24 = v23;
      if (!mlir::Operation::isBeforeInBlock(v23, v19))
      {
        mlir::Operation::moveBefore(v24, v19);
      }
    }
  }

  v102 = v96;
  v101 = *(v96 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v101);
  v26 = v25;
  Value = mlir::ArrayAttr::getValue(&v101);
  v92 = v28;
  __src = Value;
  v29 = (*(v19 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v100[0] = v29;
  v100[1] = v30;
  mlir::getStridesAndOffset(v101, v105);
  if (*(v105[0] + v26 - 1) != 1)
  {
LABEL_43:
    *&v122 = "Transposed input is not supported when bufferizing mps.strided_slice()";
    LOWORD(v124) = 259;
    v35 = v95;
    v119 = &v122;
    v36 = *(a4 + 16);
    if (v36 && mlir::RewriterBase::Listener::classof(*(a4 + 16)))
    {
      (*(*v36 + 88))(v36, *(v35 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceUpdateOp &>(mlir::mps::StridedSliceUpdateOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v119);
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_47;
  }

  v31 = LODWORD(v105[1]) - 1;
  v32 = (v105[0] + 8);
  while (v31)
  {
    v33 = *(v32 - 1);
    v34 = *v32++;
    --v31;
    if (v33 < v34)
    {
      goto LABEL_43;
    }
  }

  *&v122 = &j;
  *(&v122 + 1) = 0x600000000;
  v44 = v92;
  v45 = (8 * v92) >> 3;
  v91 = v19;
  if (v45 < 7)
  {
    v46 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, &j, v45, 8);
    v44 = v92;
    v46 = DWORD2(v122);
  }

  v47 = __src;
  v48 = 8 * v44;
  if (v44)
  {
    memcpy((v122 + 8 * v46), __src, v48);
    v47 = __src;
    v46 = DWORD2(v122);
  }

  DWORD2(v122) = v46 + (v48 >> 3);
  v119 = v121;
  v120 = 0x600000000;
  v49 = v105[1];
  if (LODWORD(v105[1]))
  {
    if (LODWORD(v105[1]) < 7)
    {
      v51 = v121;
      v50 = v105[1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v121, LODWORD(v105[1]), 8);
      v50 = v105[1];
      if (!LODWORD(v105[1]))
      {
LABEL_69:
        LODWORD(v120) = v49;
        v47 = __src;
        goto LABEL_70;
      }

      v51 = v119;
    }

    memcpy(v51, v105[0], 8 * v50);
    goto LABEL_69;
  }

LABEL_70:
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      v53 = v117;
      v54 = 1 << i;
      if (v117 <= i)
      {
        if (v117 >= HIDWORD(v117))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v118, v117 + 1, 8);
          v47 = __src;
          v53 = v117;
        }

        *(v116 + v53) = 0;
        LODWORD(v117) = v117 + 1;
        Index |= v54;
      }

      v55 = v114;
      if (v114 <= i)
      {
        if (v114 >= HIDWORD(v114))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v113, v115, v114 + 1, 8);
          v47 = __src;
          v55 = v114;
        }

        *(v113 + v55) = 0;
        LODWORD(v114) = v114 + 1;
        Offset |= v54;
      }
    }

    v56 = 0;
    v57 = 0;
    v58 = v26;
    do
    {
      v59 = v47[v56];
      v60 = (1 << v56) & Offset;
      v61 = (1 << v56) & v9;
      if (((1 << v56) & Index) == 0 || !v60 || !v61)
      {
        v62 = (v59 & (*(v113 + v56) >> 63)) + *(v113 + v56);
        v63 = (v59 & (*(v116 + v56) >> 63)) + *(v116 + v56);
        v64 = v59 - 1;
        if (v63 < v59)
        {
          v64 = (v59 & (*(v116 + v56) >> 63)) + *(v116 + v56);
        }

        if (v63 > -1 && ((1 << v56) & Index) == 0)
        {
          v66 = v64;
        }

        else
        {
          v66 = 0;
        }

        if (v62 <= v66)
        {
          v62 = v66 + 1;
        }

        if (v62 >= v59)
        {
          v62 = v47[v56];
        }

        if (!v60)
        {
          v59 = v62;
        }

        v108 = (v108 + v66 * *(v105[0] + v56));
        if (v61)
        {
          v67 = v122 + 8 * v57;
          v68 = DWORD2(v122);
          v69 = v122 + 8 * DWORD2(v122);
          if (v69 != v67 + 8)
          {
            memmove(v67, (v67 + 8), v69 - (v67 + 8));
            v68 = DWORD2(v122);
          }

          DWORD2(v122) = v68 - 1;
          v70 = &v119[8 * v57];
          v71 = v120;
          v72 = &v119[8 * v120];
          if (v72 != v70 + 8)
          {
            memmove(v70, v70 + 8, v72 - (v70 + 8));
            v71 = v120;
          }

          v58 = v26;
          v47 = __src;
          LODWORD(v120) = v71 - 1;
          goto LABEL_84;
        }

        *(v122 + 8 * v57) = v59 - v66;
      }

      ++v57;
LABEL_84:
      ++v56;
    }

    while (v58 != v56);
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v100);
  if (v74 == DWORD2(v122) && !memcmp(v122, ArgAttrsAttr, 8 * DWORD2(v122)))
  {
    v77 = v119;
    v78 = v120;
    v79 = v108;
    Context = mlir::Attribute::getContext(v100);
    StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v77, v78, v79, Context);
    v82 = v122;
    v83 = DWORD2(v122);
    isSplat = mlir::ElementsAttr::isSplat(v100);
    v99 = mlir::MemRefType::get(v82, v83, isSplat, StridedLinearLayoutMap, 0);
    v19 = v91;
    v85 = mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<long long,6u> &>((a4 + 8), v91[3], &v99, &v102, &v108, &v122, &v119);
    v98 = 261;
    v97[0] = "strided_slice_update";
    v97[1] = 20;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), v97);
    v87 = mlir::Attribute::getContext((v85 + 24));
    v104 = 261;
    v103[0] = "op";
    v103[1] = 2;
    v88 = mlir::StringAttr::get(v87, v103);
    mlir::Operation::setAttr(v85, v88, StringAttr);
    if (*(v85 + 36))
    {
      v89 = v85 - 16;
    }

    else
    {
      v89 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v89, 0);
    v39 = NextResultAtOffset & 0xFFFFFFFFFFFFFF00;
    v37 = NextResultAtOffset;
    v38 = 1;
  }

  else
  {
    v103[0] = "Shapes mismatch when bufferizing the slice op";
    v104 = 259;
    v75 = v95;
    v97[0] = v103;
    v76 = *(a4 + 16);
    v19 = v91;
    if (v76 && mlir::RewriterBase::Listener::classof(*(a4 + 16)))
    {
      (*(*v76 + 88))(v76, *(v75 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceUpdateOp &>(mlir::mps::StridedSliceUpdateOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v97);
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  if (v119 != v121)
  {
    free(v119);
  }

  if (v122 != &j)
  {
    free(v122);
  }

LABEL_47:
  if (v105[0] != &v106)
  {
    free(v105[0]);
  }

  v119 = (v39 | v37);
  LOBYTE(v120) = v38;
  if ((v38 & 1) == 0)
  {
    v20 = "failed to bufferize the slice op";
    goto LABEL_31;
  }

  mlir::RewriterBase::replaceOp(a4, v19, &v119, 1);
  mlir::Operation::getUsers(v95, v105);
  v40 = v107;
  v41 = v109;
  v124 = v107;
  v122 = *v105;
  for (j = v106; v124 != v41; v40 = v124)
  {
    v42 = *(v40 + 16);
    if (v42 && *(*(v42 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
    {
      (*(*a4 + 16))(a4);
    }

    mlir::ResultRange::UseIterator::operator++(&v122);
  }

  v43 = *(*(v95 + 9) + 24);
  v105[0] = v95 - 16;
  mlir::Value::replaceAllUsesWith(v105, v43);
  (*(*a4 + 16))(a4, v95);
  updated = 1;
LABEL_21:
  if (v110 != v112)
  {
    free(v110);
  }

  if (v113 != v115)
  {
    free(v113);
  }

  if (v116 != v118)
  {
    free(v116);
  }

  return updated;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceUpdateOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceUpdateOp &>(mlir::mps::StridedSliceUpdateOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::StridedSliceUpdateOp>::bufferizeViewOp(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1 - 16;
  if (*(a1 + 36))
  {
    v5 = a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v29 = NextResultAtOffset;
  v7 = *NextResultAtOffset;
  if (*NextResultAtOffset)
  {
    while (*(*(v7[2] + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    v8 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v28[0] = v8;
    v28[1] = v9;
    v11 = *(a1 + 24);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v28);
    v14 = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    v30 = mlir::MemRefType::get(ArgAttrsAttr, v14, isSplat, 0, 0, 0);
    v27 = mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType>((a2 + 8), v11, &v30) - 16;
    v16 = mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v17 = ((v16 + 16 * ((*(v16 + 44) >> 23) & 1) + ((*(v16 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v16 + 40);
    mlir::ValueRange::ValueRange(&v30, 0, 0);
    Block = mlir::OpBuilder::createBlock((a2 + 8), v17, 0, v30, v31, 0, 0);
    v19 = Block[5];
    *(a2 + 24) = Block;
    *(a2 + 32) = v19;
    mlir::Operation::moveBefore(a1, Block, Block + 4);
    mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v29);
    v20 = *(v16 + 16);
    v22 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v21) + 8);
    *(a2 + 24) = v20;
    *(a2 + 32) = v22;
    v23 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v24 = *(a1 + 36);
    if (v24)
    {
      v25 = v4;
    }

    else
    {
      v25 = 0;
    }

    v30 = v25;
    v31 = v24;
    return 1;
  }
}

uint64_t ***mlir::Value::replaceAllUsesWith(uint64_t ***result, uint64_t *a2)
{
  v2 = *result;
  while (1)
  {
    v3 = *v2;
    if (!*v2)
    {
      break;
    }

    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;
      *v4 = *v3;
      if (v5)
      {
        *(v5 + 8) = v3[1];
      }
    }

    v3[3] = a2;
    v6 = *a2;
    *v3 = *a2;
    v3[1] = a2;
    if (v6)
    {
      *(v6 + 8) = v3;
    }

    *a2 = v3;
  }

  return result;
}

void mlir::mps::anonymous namespace::MPSToMemrefConcatConverter::~MPSToMemrefConcatConverter(mlir::mps::_anonymous_namespace_::MPSToMemrefConcatConverter *this)
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

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::ConcatOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 72) + 24);
  v49 = v6;
  v50 = a2;
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v43[0] = 0uLL;
LABEL_17:
    v15 = "Unranked input types or dynamic shapes are not supported";
    goto LABEL_18;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  *&v43[0] = v7;
  *(&v43[0] + 1) = v8;
  if (!v7 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v10)
  {
    v11 = 8 * v10;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v43[0] = 0uLL;
LABEL_31:
    v15 = "Unranked result types or dynamic shapes are not supported";
LABEL_18:
    *&v43[0] = v15;
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  *&v43[0] = v13;
  *(&v43[0] + 1) = v14;
  if (!v13 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_31;
  }

  v18 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v19)
  {
    v20 = 8 * v19;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

LABEL_29:
  v21 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v48[0] = v21;
  v48[1] = v22;
  *&v43[0] = mlir::ElementsAttr::isSplat(v48);
  if (mlir::Type::isInteger(v43, 1))
  {
    *&v43[0] = "Boolean conversion is not supported for mps_spi.strided_array_view()";
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
LABEL_19:
      if (mlir::RewriterBase::Listener::classof(v16))
      {
        (*(*v16 + 88))(v16, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(mlir::mps::ConcatOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v52);
      }
    }

    return 0;
  }

  v23 = *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
  {
    return 0;
  }

  v25 = *(*(*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v49);
    if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      NextResultAtOffset = *(*(DefiningOp + 72) + 24);
    }

    else
    {
      v28 = v49;
      do
      {
        v28 = *v28;
        if (!v28)
        {
          v6 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>((a3 + 8), *(a2 + 24), &v49) - 16;
          goto LABEL_61;
        }

        v29 = v28[2];
        if (v29)
        {
          v30 = *(*(v29 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id;
        }

        else
        {
          v30 = 0;
        }
      }

      while (!v30);
      if (*(v29 + 36))
      {
        v31 = v29 - 16;
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
    }

    v47 = NextResultAtOffset;
    if (!NextResultAtOffset)
    {
    }
  }

  else
  {
    if (v25 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
    }

LABEL_61:
    v47 = v6;
  }

  v33 = *(a2 + 36);
  if (v33)
  {
    v34 = a2 - 16;
  }

  else
  {
    v34 = 0;
  }

  v51.n128_u64[0] = v34;
  v51.n128_u64[1] = v33;
  mlir::ResultRange::use_begin(&v51, v52);
  v35 = *(a2 + 36);
  if (v35)
  {
    v36 = a2 - 16;
  }

  else
  {
    v36 = 0;
  }

  v51.n128_u64[0] = v36;
  v51.n128_u64[1] = v35;
  mlir::ResultRange::use_end(&v51, v45);
  v44 = v53;
  v37 = v53;
  v43[0] = v52[0];
  v43[1] = v52[1];
  v38 = v46;
  if (v53 != v46)
  {
    while (*(*(*(v37 + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      mlir::ResultRange::UseIterator::operator++(v52);
      v37 = v53;
      if (v53 == v38)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_73:
  v39 = mlir::Value::getDefiningOp(&v47);
  if (v39 && ((v40 = *(*(v39 + 48) + 16), v41 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, v40 != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id) ? (v42 = 0) : (v42 = v39), (*&v43[0] = v42, v41) && mlir::placement::RegionCall::getRegionType(v43) == 1))
  {
    return mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(a3, &v50, "Bufferization is not supported for ANE regions");
  }

  else
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }
}

uint64_t mlir::mps::anonymous namespace::MPSToMemrefConcatConverter::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, mlir::Operation *a3, uint64_t a4)
{
  v192[1] = *MEMORY[0x1E69E9840];
  v155 = a3;
  ODSOperandIndexAndLength = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v155, 1u);
  v6 = *(*(v155 + 9) + 32 * ODSOperandIndexAndLength + 24);
  v188 = 0;
  v189 = 0;
  v182 = &v188;
  v185 = v6;
  DefiningOp = mlir::Value::getDefiningOp(&v185);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v182, DefiningOp) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<long long>(v188, v189), (v9 & 1) == 0) || (v10 = SingleInt, mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v155)))
  {
    v11 = "Unsupported concat op";
LABEL_6:
    v188 = v11;
    v191 = 259;
    v12 = v155;
    v185 = &v188;
    v13 = *(a4 + 16);
    if (v13)
    {
      if (mlir::RewriterBase::Listener::classof(v13))
      {
        (*(*v13 + 88))(v13, *(v12 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(mlir::mps::ConcatOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v185);
      }
    }

    return 0;
  }

  if (*(v155 + 9))
  {
    v15 = v155 - 16;
  }

  else
  {
    v15 = 0;
  }

  v16 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v154[0] = v16;
  v154[1] = v17;
  mlir::CallableOpInterface::getArgAttrsAttr(v154);
  v19 = v18;
  PositiveAxis = mlir::getPositiveAxis(v10, v18);
  if ((PositiveAxis & 0x8000000000000000) != 0 || (v21 = PositiveAxis, PositiveAxis >= v19))
  {
    goto LABEL_6;
  }

  v22 = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v155, 0);
  if ((*(v155 + 46) & 0x80) != 0)
  {
    v23 = *(v155 + 9);
  }

  else
  {
    v23 = 0;
  }

  v24 = (HIDWORD(v22) + v22);
  __src = v181;
  v180 = 0x600000000;
  v174 = 1;
  v175 = -4096;
  v176 = -4096;
  v177 = -4096;
  v178 = -4096;
  v25 = v24 - v22;
  v147 = v21;
  if (v24 == v22)
  {
    LODWORD(v26) = 0;
    __dst = v173;
    v172 = 0x600000000;
    goto LABEL_23;
  }

  v36 = 0;
  v37 = &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id;
  v38 = v23 + 32 * v22;
  v148 = v38;
  while (1)
  {
    __dst = *(v38 + 32 * v36 + 24);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v174, &__dst, &v188);
    if ((v190 & 1) == 0)
    {
      v188 = "could not bufferize concat with duplicate values";
      v191 = 259;
      v143 = v155;
      v185 = &v188;
      v144 = *(a4 + 16);
      if (v144 && mlir::RewriterBase::Listener::classof(v144))
      {
        (*(*v144 + 88))(v144, *(v143 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(mlir::mps::ConcatOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v185);
      }

      goto LABEL_169;
    }

    v39 = (*(__dst + 1) & 0xFFFFFFFFFFFFFFF8);
    if (v39)
    {
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v39 + 8);
    }

    else
    {
      v40 = 0;
    }

    v185 = v39;
    v186 = v40;
    if (!mlir::CallOpInterface::getArgOperands(&v185))
    {
      goto LABEL_68;
    }

    mlir::CallableOpInterface::getArgAttrsAttr(&v185);
    if (v41 != v19 || !mlir::CallOpInterface::getArgOperands(&v185))
    {
      goto LABEL_68;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v185);
    if (v43)
    {
      break;
    }

LABEL_43:
    v45 = mlir::Value::getDefiningOp(&__dst);
    if (!v45 || *(*(v45 + 48) + 16) != v37)
    {
      v188 = "Failed to find the source memref for concat operand";
      v191 = 259;
      v139 = v155;
      v182 = &v188;
      v140 = *(a4 + 16);
      if (v140 && mlir::RewriterBase::Listener::classof(v140))
      {
        (*(*v140 + 88))(v140, *(v139 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(mlir::mps::ConcatOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v182);
      }

      result = 0;
      goto LABEL_155;
    }

    v167 = *(*(v45 + 72) + 24);
    if (*(v45 + 36))
    {
      v46 = v45 - 16;
    }

    else
    {
      v46 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v46, 0);
    v48 = mlir::Value::getDefiningOp(&v167);
    if (!v48 || (v50 = v48, *(*(v48 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id))
    {
      v188 = "Only alloc ops are supported as the source of concat operand";
      v191 = 259;
      v141 = v155;
      v182 = &v188;
      v142 = *(a4 + 16);
      if (v142 && mlir::RewriterBase::Listener::classof(v142))
      {
        (*(*v142 + 88))(v142, *(v141 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(mlir::mps::ConcatOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v182);
      }

LABEL_169:
      result = 0;
      goto LABEL_155;
    }

    v51 = v25;
    v52 = v37;
    v53 = *v167;
    if (*v167)
    {
      v54 = 0;
      do
      {
        if (mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v53[2]))
        {
          ++v54;
        }

        v53 = *v53;
      }

      while (v53);
    }

    else
    {
      v54 = 0;
    }

    while (1)
    {
      NextResultAtOffset = *NextResultAtOffset;
      if (!NextResultAtOffset)
      {
        break;
      }

      v54 += mlir::mps::opMayAliasSource(*(NextResultAtOffset + 16), v49);
    }

    if (v54 >= 2)
    {
      result = mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(a4, &v155, "Aliased inputs are not supported for bufferizing concat");
      goto LABEL_155;
    }

    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&__src, v50);
    ++v36;
    v25 = v51;
    v111 = v36 == v51;
    v37 = v52;
    v38 = v148;
    if (v111)
    {
      LODWORD(v26) = v180;
      __dst = v173;
      v172 = 0x600000000;
      if (v180)
      {
        v55 = v173;
        v56 = v180;
        if (v180 < 7)
        {
          goto LABEL_66;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v173, v180, 8);
        v56 = v180;
        if (v180)
        {
          v55 = __dst;
LABEL_66:
          memcpy(v55, __src, 8 * v56);
        }

        LODWORD(v172) = v26;
      }

LABEL_23:
      v27 = *(v155 + 2);
      if (v27)
      {
        mlir::Block::getParentOp(v27);
        LODWORD(v26) = v172;
      }

      v28 = 0;
      v152[0] = 0;
      v152[1] = 0;
      v153 = 0;
      v29 = __dst;
      v30 = v26;
      v31 = (__dst + 8 * v26);
      v188 = v152;
      if (v26 < 0x81)
      {
LABEL_29:
      }

      else
      {
        v32 = MEMORY[0x1E69E5398];
        v26 = v26;
        while (1)
        {
          v33 = operator new(8 * v26, v32);
          if (v33)
          {
            break;
          }

          v28 = v26 >> 1;
          v34 = v26 > 1;
          v26 >>= 1;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        v59 = v33;
        operator delete(v59);
      }

      v60 = *__dst;
      v61 = *(*__dst + 16);
      v62 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*__dst, v35);
      *(a4 + 24) = v61;
      *(a4 + 32) = v62;
      v63 = *(v60 + 24);
      v64 = mlir::CallableOpInterface::getArgAttrsAttr(v154);
      v66 = v65;
      isSplat = mlir::ElementsAttr::isSplat(v154);
      v188 = mlir::MemRefType::get(v64, v66, isSplat, 0, 0, 0);
      v146 = mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType>((a4 + 8), v63, &v188);
      v167 = v170;
      v169 = 6;
      if (v19 <= 6)
      {
        v68 = 8 * v19;
        bzero(v170, 8 * v19);
        v168 = v19;
        v69 = v166;
        v164 = v166;
        HIDWORD(v165) = 6;
      }

      else
      {
        v168 = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v167, v170, v19, 8);
        v68 = 8 * v19;
        bzero(v167, 8 * v19);
        v168 = v19;
        v164 = v166;
        v165 = 0x600000000;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v166, v19, 8);
        v69 = v164;
      }

      bzero(v69, v68);
      v71 = v147;
      LODWORD(v165) = v19;
      if (!v180)
      {
LABEL_146:
        v132 = *(v155 + 2);
        v133 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v155, v70);
        *(a4 + 24) = v132;
        *(a4 + 32) = v133;
        v134 = *(v155 + 3);
        v188 = (v146 - 16);
        v135 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a4 + 8), v134, &v188);
        mlir::RewriterBase::replaceOp(a4, v155, v135);
        goto LABEL_150;
      }

      v72 = __src;
      v73 = ~(1 << v147);
      v145 = (__src + 8 * v180);
      v74 = v73;
      while (2)
      {
        v75 = *v72;
        v188 = (*(*v72 - 8) & 0xFFFFFFFFFFFFFFF8);
        v149 = *(mlir::ArrayAttr::getValue(&v188) + 8 * v71);
        *(v164 + v71) = *(v167 + v71) + v149;
        v76 = *(v75 + 16);
        v78 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v75, v77);
        *(a4 + 24) = v76;
        *(a4 + 32) = v78;
        v161 = v146 - 16;
        v160 = *(v146 - 8) & 0xFFFFFFFFFFFFFFF8;
        mlir::ArrayAttr::getValue(&v160);
        v80 = v79;
        Value = mlir::ArrayAttr::getValue(&v160);
        v83 = v82;
        v84 = (*(v75 - 8) & 0xFFFFFFFFFFFFFFF8);
        if (v84)
        {
          v85 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v84 + 8);
        }

        else
        {
          v85 = 0;
        }

        v159[0] = v84;
        v159[1] = v85;
        mlir::getStridesAndOffset(v160, &v188);
        if (*(v188 + (v80 - 1)) == 1)
        {
          v86 = v189 - 1;
          v87 = (v188 + 8);
          while (v86)
          {
            v88 = *(v87 - 1);
            v89 = *v87++;
            --v86;
            if (v88 < v89)
            {
              goto LABEL_85;
            }
          }

          v185 = v187;
          v186 = 0x600000000;
          v95 = (8 * v83) >> 3;
          if (v95 < 7)
          {
            v96 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v185, v187, v95, 8);
            v96 = v186;
          }

          if (v83)
          {
            memcpy(&v185[8 * v96], Value, 8 * v83);
            v96 = v186;
          }

          LODWORD(v186) = v96 + v83;
          v182 = v184;
          v183 = 0x600000000;
          v97 = v189;
          if (v189)
          {
            v98 = v184;
            v99 = v189;
            if (v189 < 7uLL)
            {
              goto LABEL_103;
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v184, v189, 8);
            v99 = v189;
            if (v189)
            {
              v98 = v182;
LABEL_103:
              memcpy(v98, v188, 8 * v99);
            }

            LODWORD(v183) = v97;
          }

          if (v80)
          {
            for (i = 0; i != v80; ++i)
            {
              v101 = v168;
              if (v168 <= i)
              {
                if (v168 >= v169)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v167, v170, v168 + 1, 8);
                  v101 = v168;
                }

                *(v167 + v101) = 0;
                ++v168;
                v73 |= 1 << i;
              }

              v102 = v165;
              if (v165 <= i)
              {
                if (v165 >= HIDWORD(v165))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v166, v165 + 1, 8);
                  v102 = v165;
                }

                *(v164 + v102) = 0;
                LODWORD(v165) = v165 + 1;
                v74 |= 1 << i;
              }
            }

            v103 = 0;
            v104 = v188;
            v105 = v167;
            v106 = v185;
            v107 = v164;
            do
            {
              v108 = *(Value + v103);
              v109 = (v108 & (v105[v103] >> 63)) + v105[v103];
              v110 = v108 - 1;
              if (v109 < v108)
              {
                v110 = (v108 & (v105[v103] >> 63)) + v105[v103];
              }

              v111 = v109 > -1 && ((1 << v103) & v73) == 0;
              if (v111)
              {
                v112 = v110;
              }

              else
              {
                v112 = 0;
              }

              if (((1 << v103) & v74) == 0)
              {
                v113 = (v108 & (v107[v103] >> 63)) + v107[v103];
                if (v113 <= v112)
                {
                  v113 = v112 + 1;
                }

                if (v113 < v108)
                {
                  v108 = v113;
                }
              }

              v192[0] = v192[0] + v112 * *(v104 + v103);
              *&v106[8 * v103++] = v108 - v112;
            }

            while (v80 != v103);
          }

          v114 = mlir::CallableOpInterface::getArgAttrsAttr(v159);
          if (v115 == v186 && !memcmp(v185, v114, 8 * v186))
          {
            v118 = v182;
            v119 = v183;
            v120 = v192[0];
            Context = mlir::Attribute::getContext(v159);
            StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v118, v119, v120, Context);
            v123 = v185;
            v124 = v186;
            v125 = mlir::ElementsAttr::isSplat(v159);
            v158 = mlir::MemRefType::get(v123, v124, v125, StridedLinearLayoutMap, 0);
            v126 = mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<long long,6u> &>((a4 + 8), *(v75 + 24), &v158, &v161, v192, &v185, &v182);
            v157 = 261;
            v156[0] = "concat_slice";
            v156[1] = 12;
            StringAttr = mlir::Builder::getStringAttr((a4 + 8), v156);
            v128 = mlir::Attribute::getContext((v126 + 24));
            v163 = 261;
            v162[0] = "op";
            v162[1] = 2;
            v129 = mlir::StringAttr::get(v128, v162);
            mlir::Operation::setAttr(v126, v129, StringAttr);
            if (*(v126 + 36))
            {
              v130 = v126 - 16;
            }

            else
            {
              v130 = 0;
            }

            v131 = mlir::detail::OpResultImpl::getNextResultAtOffset(v130, 0);
            v94 = v131 & 0xFFFFFFFFFFFFFF00;
            v92 = v131;
            v93 = 1;
          }

          else
          {
            v162[0] = "Shapes mismatch when bufferizing the slice op";
            v163 = 259;
            v116 = v155;
            v156[0] = v162;
            v117 = *(a4 + 16);
            if (v117 && mlir::RewriterBase::Listener::classof(*(a4 + 16)))
            {
              (*(*v117 + 88))(v117, *(v116 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(mlir::mps::ConcatOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v156);
            }

            v92 = 0;
            v93 = 0;
            v94 = 0;
          }

          if (v182 != v184)
          {
            free(v182);
          }

          if (v185 != v187)
          {
            free(v185);
          }
        }

        else
        {
LABEL_85:
          v185 = "Transposed input is not supported when bufferizing mps.strided_slice()";
          v187[8] = 259;
          v90 = v155;
          v182 = &v185;
          v91 = *(a4 + 16);
          if (v91 && mlir::RewriterBase::Listener::classof(*(a4 + 16)))
          {
            (*(*v91 + 88))(v91, *(v90 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(mlir::mps::ConcatOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v182);
          }

          v92 = 0;
          v93 = 0;
          v94 = 0;
        }

        if (v188 != &v190)
        {
          free(v188);
        }

        v150 = v94 | v92;
        v151 = v93;
        if ((v93 & 1) == 0)
        {
          v188 = "failed to bufferize the slice op";
          v191 = 259;
          v136 = v155;
          v185 = &v188;
          v137 = *(a4 + 16);
          if (v137 && mlir::RewriterBase::Listener::classof(v137))
          {
            (*(*v137 + 88))(v137, *(v136 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(mlir::mps::ConcatOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v185);
          }

LABEL_150:
          if (v164 != v166)
          {
            free(v164);
          }

          if (v167 != v170)
          {
            free(v167);
          }

          mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(v152);
        }

        mlir::RewriterBase::replaceOp(a4, v75, &v150, 1);
        v71 = v147;
        *(v167 + v147) += v149;
        if (++v72 == v145)
        {
          goto LABEL_146;
        }

        continue;
      }
    }
  }

  v44 = 8 * v43;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v44 -= 8;
    if (!v44)
    {
      goto LABEL_43;
    }
  }

LABEL_68:
  v188 = "invalid shape in concat values";
  v191 = 259;
  v57 = v155;
  v182 = &v188;
  v58 = *(a4 + 16);
  if (v58 && mlir::RewriterBase::Listener::classof(v58))
  {
    (*(*v58 + 88))(v58, *(v57 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(mlir::mps::ConcatOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v182);
  }

  result = 0;
LABEL_155:
  if ((v174 & 1) == 0)
  {
    llvm::deallocate_buffer(v175, (8 * v176));
  }

  if (__src != v181)
  {
    v138 = result;
    free(__src);
    return v138;
  }

  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ConcatOp &>(mlir::mps::ConcatOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::ConcatOp>::bufferizeViewOp(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1 - 16;
  if (*(a1 + 36))
  {
    v5 = a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v29 = NextResultAtOffset;
  v7 = *NextResultAtOffset;
  if (*NextResultAtOffset)
  {
    while (*(*(v7[2] + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    v8 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v28[0] = v8;
    v28[1] = v9;
    v11 = *(a1 + 24);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v28);
    v14 = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    v30 = mlir::MemRefType::get(ArgAttrsAttr, v14, isSplat, 0, 0, 0);
    v27 = mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType>((a2 + 8), v11, &v30) - 16;
    v16 = mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v17 = ((v16 + 16 * ((*(v16 + 44) >> 23) & 1) + ((*(v16 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v16 + 40);
    mlir::ValueRange::ValueRange(&v30, 0, 0);
    Block = mlir::OpBuilder::createBlock((a2 + 8), v17, 0, v30, v31, 0, 0);
    v19 = Block[5];
    *(a2 + 24) = Block;
    *(a2 + 32) = v19;
    mlir::Operation::moveBefore(a1, Block, Block + 4);
    mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v29);
    v20 = *(v16 + 16);
    v22 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v21) + 8);
    *(a2 + 24) = v20;
    *(a2 + 32) = v22;
    v23 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v24 = *(a1 + 36);
    if (v24)
    {
      v25 = v4;
    }

    else
    {
      v25 = 0;
    }

    v30 = v25;
    v31 = v24;
    return 1;
  }
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 8;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 8;
  }

  else
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v12 = 0;
      v17 = 0;
      v26 = 0;
      goto LABEL_12;
    }

    v7 = *(result + 8);
  }

  v8 = HIDWORD(*a2);
  v9 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v8);
  LODWORD(v9) = -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)));
  v10 = v6 - 1;
  v11 = v9 & (v6 - 1);
  v12 = (v7 + 8 * v11);
  v13 = *v12;
  if (*a2 == *v12)
  {
LABEL_6:
    if (v5)
    {
      v14 = 4;
    }

    else
    {
      v4 = *(result + 8);
      v14 = *(result + 16);
    }

    v15 = 0;
    v16 = v4 + 8 * v14;
    goto LABEL_10;
  }

  v19 = 0;
  v20 = 1;
  while (v13 != -4096)
  {
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v13 == -8192;
    }

    if (v21)
    {
      v19 = v12;
    }

    v22 = v11 + v20++;
    v11 = v22 & v10;
    v12 = (v7 + 8 * (v22 & v10));
    v13 = *v12;
    if (*a2 == *v12)
    {
      goto LABEL_6;
    }
  }

  if (v19)
  {
    v12 = v19;
  }

  v26 = v12;
  if (v5)
  {
    v17 = 4;
  }

  else
  {
    v17 = *(result + 16);
  }

LABEL_12:
  if (4 * (v3 >> 1) + 4 >= 3 * v17)
  {
    v17 *= 2;
    goto LABEL_35;
  }

  if (v17 + ~(v3 >> 1) - *(result + 4) <= v17 >> 3)
  {
LABEL_35:
    v24 = a2;
    v25 = result;
    v23 = a3;
    llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(result, v17);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v25, v24, &v26);
    a2 = v24;
    result = v25;
    a3 = v23;
    v3 = *v25;
    v12 = v26;
    v5 = *v25 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v12 != -4096)
  {
    --*(result + 4);
  }

  *v12 = *a2;
  if (*result)
  {
    v18 = 4;
  }

  else
  {
    v4 = *(result + 8);
    v18 = *(result + 16);
  }

  v16 = v4 + 8 * v18;
  v15 = 1;
LABEL_10:
  *a3 = v12;
  *(a3 + 8) = v16;
  *(a3 + 16) = v15;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v4 - 1;
    v8 = v6 & (v4 - 1);
    v9 = (v3 + 8 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v3 + 8 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v9 = 0;
  result = 0;
LABEL_8:
  *a3 = v9;
  return result;
}

int *llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, unsigned int a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v15 = a2;
      v16 = a1;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      a1 = v16;
      *(v16 + 8) = buffer;
      *(v16 + 16) = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    v18 = (8 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v5, &v18[v5]);

    llvm::deallocate_buffer(v5, v18);
  }

  v7 = &v19;
  if ((*(a1 + 8) | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    v19 = *(a1 + 8);
    v7 = v20;
  }

  v8 = *(a1 + 16);
  if ((v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v7++ = v8;
  }

  v9 = *(a1 + 24);
  if ((v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v7++ = v9;
  }

  v10 = *(a1 + 32);
  if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v7++ = v10;
    if (a2 < 5)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, &v19, v7);
    }

    goto LABEL_16;
  }

  if (a2 >= 5)
  {
LABEL_16:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(8 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, &v19, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(int *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = (result + 10);
    v5 = (result + 2);
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5->i64[v4];
  }

  v7 = v6 - v5 - 8;
  if (v7 < 0x18)
  {
    v8 = v5;
    do
    {
LABEL_10:
      *v8++ = -4096;
    }

    while (v8 != v6);
    goto LABEL_11;
  }

  v9 = (v7 >> 3) + 1;
  v8 = &v5->i64[v9 & 0x3FFFFFFFFFFFFFFCLL];
  v10 = v5 + 1;
  v11 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v12 = v9 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v10[-1] = v11;
    *v10 = v11;
    v10 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v9 != (v9 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v20 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v14 = 3;
        v13 = result + 2;
      }

      else
      {
        v13 = *(result + 1);
        v14 = result[4] - 1;
      }

      v15 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v15 >> 47) ^ v15);
      v17 = v14 & (-348639895 * ((v16 >> 47) ^ v16));
      v18 = &v13[2 * v17];
      v19 = *v18;
      if (v20 != *v18)
      {
        v21 = 0;
        v22 = 1;
        while (v19 != -4096)
        {
          if (v21)
          {
            v23 = 0;
          }

          else
          {
            v23 = v19 == -8192;
          }

          if (v23)
          {
            v21 = v18;
          }

          v24 = v17 + v22++;
          v17 = v24 & v14;
          v18 = &v13[2 * (v24 & v14)];
          v19 = *v18;
          if (v20 == *v18)
          {
            goto LABEL_15;
          }
        }

        if (v21)
        {
          v18 = v21;
        }
      }

LABEL_15:
      *v18 = v20;
      *result += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,mlir::mps::anonymous namespace::MPSToMemrefConcatConverter::matchAndRewriteWithStaticShapes(mlir::Value,mlir::mps::ConcatOp,mlir::PatternRewriter &)::{lambda(mlir::memref::AllocOp,mlir::memref::AllocOp)#1} &,mlir::memref::AllocOp*>(uint64_t result, mlir::Block ***a2, mlir::DominanceInfo **a3, unint64_t a4, mlir::Block ***a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      result = mlir::DominanceInfo::properlyDominatesImpl(*a3, *(a2 - 1), *result, 1);
      if (result)
      {
        v9 = *v8;
        *v8 = *(a2 - 1);
        *(a2 - 1) = v9;
      }

      return result;
    }

    if (a4 > 128)
    {
      v18 = a5;
      v19 = a4 >> 1;
      v20 = (result + 8 * (a4 >> 1));
      v21 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v24 = &v18[v19];
        v25 = v8;
        v26 = v24;
        v27 = &v18[a4];
        do
        {
          if (v26 == v27)
          {
            if (v18 == v24)
            {
              return result;
            }

            v42 = v24 - v18 - 8;
            if (v42 >= 0x38)
            {
              if ((v25 - v18) >= 0x20)
              {
                v44 = v8 + 2;
                v45 = (v42 >> 3) + 1;
                v46 = v45 & 0x3FFFFFFFFFFFFFFCLL;
                v8 = (v8 + v46 * 8);
                v43 = &v18[v46];
                v47 = (v18 + 2);
                v48 = v45 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v49 = *v47;
                  *(v44 - 1) = *(v47 - 1);
                  *v44 = v49;
                  v47 += 2;
                  v44 += 2;
                  v48 -= 4;
                }

                while (v48);
                if (v45 == (v45 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return result;
                }
              }

              else
              {
                v43 = v18;
              }
            }

            else
            {
              v43 = v18;
            }

            do
            {
              v50 = *v43++;
              *v8++ = v50;
            }

            while (v43 != v24);
            return result;
          }

          v28 = v26;
          result = mlir::DominanceInfo::properlyDominatesImpl(*a3, *v26, *v18, 1);
          if (result)
          {
            v29 = v28;
          }

          else
          {
            v29 = v18;
          }

          if (result)
          {
            v30 = 0;
          }

          else
          {
            v30 = 8;
          }

          v18 = (v18 + v30);
          if (result)
          {
            v31 = 1;
          }

          else
          {
            v31 = 0;
          }

          v26 = &v28[v31];
          *v8++ = *v29;
          ++v25;
        }

        while (v18 != v24);
        if (v26 != v27)
        {
          v32 = v27 - v28 - v31 * 8 - 8;
          if (v32 <= 0x57)
          {
            goto LABEL_53;
          }

          if ((v25 - v28 - v31 * 8) < 0x20)
          {
            goto LABEL_53;
          }

          v33 = 0;
          v34 = (v32 >> 3) + 1;
          v35 = v34 & 0x3FFFFFFFFFFFFFFCLL;
          v36 = &v8[v35];
          v26 = (v26 + v35 * 8);
          v37 = &v28[v31 + 2];
          v38 = v34 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v39 = &v8[v33];
            v40 = *v37;
            *v39 = *(v37 - 1);
            *(v39 + 1) = v40;
            v37 += 4;
            v33 += 4;
            v38 -= 4;
          }

          while (v38);
          v8 = v36;
          if (v34 != (v34 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_53:
            do
            {
              v41 = *v26++;
              *v8++ = v41;
            }

            while (v26 != v27);
          }
        }
      }

      else
      {
      }
    }

    else if (result != a2)
    {
      v10 = result + 8;
      if ((result + 8) != a2)
      {
        v11 = 0;
        v12 = result;
        do
        {
          v15 = *v12;
          v14 = v12[1];
          v12 = v10;
          result = mlir::DominanceInfo::properlyDominatesImpl(*a3, v14, v15, 1);
          if (result)
          {
            v16 = *v12;
            v17 = v11;
            do
            {
              *(v8 + v17 + 8) = *(v8 + v17);
              if (!v17)
              {
                v13 = v8;
                goto LABEL_11;
              }

              result = mlir::DominanceInfo::properlyDominatesImpl(*a3, v16, *(v8 + v17 - 8), 1);
              v17 -= 8;
            }

            while ((result & 1) != 0);
            v13 = (v8 + v17 + 8);
LABEL_11:
            *v13 = v16;
          }

          v10 = (v12 + 1);
          v11 += 8;
        }

        while (v12 + 1 != a2);
      }
    }
  }

  return result;
}

mlir::Block ***std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::mps::anonymous namespace::MPSToMemrefConcatConverter::matchAndRewriteWithStaticShapes(mlir::Value,mlir::mps::ConcatOp,mlir::PatternRewriter &)::{lambda(mlir::memref::AllocOp,mlir::memref::AllocOp)#1} &,mlir::memref::AllocOp*>(mlir::Block ***result, mlir::Block ***a2, mlir::DominanceInfo **a3, uint64_t a4, mlir::Block ***a5)
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
      v9 = a2 - 1;
      result = mlir::DominanceInfo::properlyDominatesImpl(*a3, *(a2 - 1), *result, 1);
      if (result)
      {
        v10 = v9;
      }

      else
      {
        v10 = v6;
      }

      *v5++ = *v10;
      if (!result)
      {
        v6 = v9;
      }

      goto LABEL_9;
    }

    if (a4 > 8)
    {
      v19 = a4 >> 1;
      v20 = a4 >> 1;
      v21 = &result[v20];
      v23 = v5;
      v24 = v6;
      v25 = v21;
      do
      {
        if (v25 == a2)
        {
          if (v24 == v21)
          {
            return result;
          }

          v40 = &v6[v19] - v24 - 8;
          if (v40 >= 0x38)
          {
            if ((v23 - v24) >= 0x20)
            {
              v42 = v5 + 2;
              v43 = (v40 >> 3) + 1;
              v44 = v43 & 0x3FFFFFFFFFFFFFFCLL;
              v5 = (v5 + v44 * 8);
              v41 = &v24[v44];
              v45 = (v24 + 2);
              v46 = v43 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v47 = *v45;
                *(v42 - 1) = *(v45 - 1);
                *v42 = v47;
                v45 += 2;
                v42 += 2;
                v46 -= 4;
              }

              while (v46);
              if (v43 == (v43 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v41 = v24;
            }
          }

          else
          {
            v41 = v24;
          }

          do
          {
            v48 = *v41++;
            *v5++ = v48;
          }

          while (v41 != v21);
          return result;
        }

        v26 = v25;
        result = mlir::DominanceInfo::properlyDominatesImpl(*a3, *v25, *v24, 1);
        if (result)
        {
          v27 = v26;
        }

        else
        {
          v27 = v24;
        }

        if (result)
        {
          v28 = 1;
        }

        else
        {
          v28 = 0;
        }

        v25 = &v26[v28];
        if (result)
        {
          v29 = 0;
        }

        else
        {
          v29 = 8;
        }

        v24 = (v24 + v29);
        *v5++ = *v27;
        ++v23;
      }

      while (v24 != v21);
      if (v25 != a2)
      {
        v30 = a2 - v26 - v28 * 8 - 8;
        if (v30 < 0x58)
        {
          goto LABEL_53;
        }

        if ((v23 - v26 - v28 * 8) < 0x20)
        {
          goto LABEL_53;
        }

        v31 = 0;
        v32 = (v30 >> 3) + 1;
        v33 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        v34 = &v5[v33];
        v25 = (v25 + v33 * 8);
        v35 = &v26[v28 + 2];
        v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v37 = &v5[v31];
          v38 = *v35;
          *v37 = *(v35 - 1);
          *(v37 + 1) = v38;
          v35 += 4;
          v31 += 4;
          v36 -= 4;
        }

        while (v36);
        v5 = v34;
        if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_53:
          do
          {
            v39 = *v25++;
            *v5++ = v39;
          }

          while (v25 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v11 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v12 = 0;
        v13 = a5;
        do
        {
          v15 = v13;
          v16 = *v13++;
          result = mlir::DominanceInfo::properlyDominatesImpl(*a3, *v11, v16, 1);
          v17 = v13;
          if (result)
          {
            v15[1] = *v15;
            v17 = v5;
            if (v15 != v5)
            {
              v18 = v12;
              while (1)
              {
                v17 = (v5 + v18);
                result = mlir::DominanceInfo::properlyDominatesImpl(*a3, *v11, *(v5 + v18 - 8), 1);
                if (!result)
                {
                  break;
                }

                *v17 = *(v17 - 1);
                v18 -= 8;
                if (!v18)
                {
                  v17 = v5;
                  break;
                }
              }
            }
          }

          v14 = *v11++;
          *v17 = v14;
          v12 += 8;
        }

        while (v11 != a2);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,mlir::mps::anonymous namespace::MPSToMemrefConcatConverter::matchAndRewriteWithStaticShapes(mlir::Value,mlir::mps::ConcatOp,mlir::PatternRewriter &)::{lambda(mlir::memref::AllocOp,mlir::memref::AllocOp)#1} &,mlir::memref::AllocOp*>(uint64_t result, mlir::Block ***a2, mlir::Block ***a3, mlir::DominanceInfo **a4, uint64_t a5, uint64_t a6, mlir::Block ***a7, uint64_t a8)
{
  v113 = a6;
  if (a6)
  {
    v13 = result;
    while (v113 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = v13;
      v16 = v13;
      while (1)
      {
        result = mlir::DominanceInfo::properlyDominatesImpl(*a4, *a2, *v16, 1);
        if (result)
        {
          break;
        }

        ++v16;
        ++v14;
        ++v15;
        if (a5 == v14)
        {
          return result;
        }
      }

      v17 = a5 - v14;
      v18 = v113;
      v111 = a4;
      if (a5 - v14 >= v113)
      {
        if (a5 - 1 == v14)
        {
          v94 = *v16;
          *v16 = *a2;
          *a2 = v94;
          return result;
        }

        v27 = v17 / 2;
        v28 = 8 * (v17 / 2);
        if (a3 == a2)
        {
          v20 = a2;
        }

        else
        {
          v106 = v17 / 2;
          v109 = a3;
          v105 = 8 * (v17 / 2);
          v29 = v13 + v28;
          v30 = *a4;
          v31 = a3 - a2;
          v20 = a2;
          do
          {
            v32 = &v20[v31 >> 1];
            v34 = *v32;
            v33 = v32 + 1;
            v35 = mlir::DominanceInfo::properlyDominatesImpl(v30, v34, *&v29[8 * v14], 1);
            if (v35)
            {
              v31 += ~(v31 >> 1);
            }

            else
            {
              v31 >>= 1;
            }

            if (v35)
            {
              v20 = v33;
            }
          }

          while (v31);
          a3 = v109;
          v18 = v113;
          v28 = v105;
          v27 = v106;
        }

        v22 = (v16 + v28);
        v19 = v20 - a2;
      }

      else
      {
        v19 = v113 / 2;
        v20 = &a2[v113 / 2];
        v21 = v15;
        v22 = v16;
        if (v16 != a2)
        {
          v108 = a7;
          v23 = a2 - v15;
          v22 = v16;
          do
          {
            v24 = &v22[v23 >> 1];
            v26 = *v24;
            v25 = v24 + 1;
            if (mlir::DominanceInfo::properlyDominatesImpl(*v111, *v20, v26, 1))
            {
              v23 >>= 1;
            }

            else
            {
              v22 = v25;
              v23 += ~(v23 >> 1);
            }
          }

          while (v23);
          v21 = v22;
          a7 = v108;
          v19 = v113 / 2;
          v18 = v113;
        }

        v27 = v21 - v15;
      }

      v36 = v20;
      if (v22 != a2)
      {
        v36 = v22;
        if (a2 != v20)
        {
          v37 = v22 + 1;
          if (v22 + 1 == a2)
          {
            v110 = a3;
            v44 = a7;
            v45 = *v22;
            v46 = v20 - a2;
            v47 = v20 - a2;
            v48 = v27;
            v49 = v19;
            memmove(v22, v37, v47);
            v19 = v49;
            v27 = v48;
            v18 = v113;
            v36 = (v22 + v46);
            *v36 = v45;
            a7 = v44;
            a3 = v110;
          }

          else
          {
            v38 = a2 + 1;
            if (a2 + 1 == v20)
            {
              v50 = *(v20 - 1);
              v36 = v22 + 1;
              if (v20 - 1 != v22)
              {
                v51 = v27;
                v107 = v19;
                memmove(v22 + 1, v22, (v20 - 1) - v22);
                v19 = v107;
                v27 = v51;
                v18 = v113;
              }

              *v22 = v50;
            }

            else
            {
              v39 = a2 - v22;
              v40 = a2 - v22;
              v41 = v20 - a2;
              if (v40 == v41)
              {
                do
                {
                  v42 = *(v37 - 1);
                  *(v37 - 1) = *(v38 - 1);
                  *(v38 - 1) = v42;
                  if (v37 == a2)
                  {
                    break;
                  }

                  ++v37;
                }

                while (v38++ != v20);
                v36 = a2;
              }

              else
              {
                v52 = a2 - v22;
                do
                {
                  v53 = v52;
                  v52 = v41;
                  v41 = v53 % v41;
                }

                while (v41);
                v54 = &v22[v52];
                do
                {
                  v56 = *--v54;
                  v55 = v56;
                  v57 = (v54 + v39);
                  v58 = v54;
                  do
                  {
                    v59 = v58;
                    v58 = v57;
                    *v59 = *v57;
                    v60 = v20 - v57;
                    v61 = __OFSUB__(v40, v60);
                    v63 = v40 - v60;
                    v62 = (v63 < 0) ^ v61;
                    v57 = &v22[v63];
                    if (v62)
                    {
                      v57 = (v58 + v39);
                    }
                  }

                  while (v57 != v54);
                  *v58 = v55;
                }

                while (v54 != v22);
                v36 = (v22 + v20 - a2);
              }
            }
          }
        }
      }

      v64 = a5 - v27 - v14;
      v65 = v18 - v19;
      if (v27 + v19 >= v18 + a5 - (v27 + v19) - v14)
      {
        v66 = v27;
        v67 = v64;
        v68 = v19;
        v20 = v22;
        v65 = v68;
        v64 = v66;
        a3 = v36;
      }

      else
      {
        v16 = v36;
      }

      a5 = v64;
      v113 = v65;
      v13 = v16;
      a2 = v20;
      a4 = v111;
      if (!v65)
      {
        return result;
      }
    }

    if (a5 <= v113)
    {
      if (v13 != a2)
      {
        v81 = a2 - v13 - 8;
        v82 = a7;
        v83 = v13;
        if (v81 < 0x18)
        {
          goto LABEL_112;
        }

        v82 = a7;
        v83 = v13;
        if ((a7 - v13) <= 0x1F)
        {
          goto LABEL_112;
        }

        v84 = (v81 >> 3) + 1;
        v85 = v84 & 0x3FFFFFFFFFFFFFFCLL;
        v82 = &a7[v85];
        v83 = &v13[v85];
        v86 = (v13 + 2);
        v87 = a7 + 2;
        v88 = v84 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v89 = *v86;
          *(v87 - 1) = *(v86 - 1);
          *v87 = v89;
          v86 += 2;
          v87 += 2;
          v88 -= 4;
        }

        while (v88);
        if (v84 != (v84 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_112:
          do
          {
            v90 = *v83++;
            *v82++ = v90;
          }

          while (v83 != a2);
        }

        while (a2 != a3)
        {
          result = mlir::DominanceInfo::properlyDominatesImpl(*a4, *a2, *a7, 1);
          if (result)
          {
            v91 = a2;
          }

          else
          {
            v91 = a7;
          }

          if (result)
          {
            v92 = 0;
          }

          else
          {
            v92 = 8;
          }

          a7 = (a7 + v92);
          if (result)
          {
            v93 = 8;
          }

          else
          {
            v93 = 0;
          }

          a2 = (a2 + v93);
          *v13++ = *v91;
          if (a7 == v82)
          {
            return result;
          }
        }

        return memmove(v13, a7, v82 - a7);
      }
    }

    else if (a2 != a3)
    {
      v69 = a3 - a2 - 8;
      v70 = a7;
      v71 = a2;
      if (v69 < 0x18)
      {
        goto LABEL_113;
      }

      v70 = a7;
      v71 = a2;
      if ((a7 - a2) <= 0x1F)
      {
        goto LABEL_113;
      }

      v72 = (v69 >> 3) + 1;
      v73 = v72 & 0x3FFFFFFFFFFFFFFCLL;
      v70 = &a7[v73];
      v71 = &a2[v73];
      v74 = (a2 + 2);
      v75 = a7 + 2;
      v76 = v72 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v77 = *v74;
        *(v75 - 1) = *(v74 - 1);
        *v75 = v77;
        v74 += 2;
        v75 += 2;
        v76 -= 4;
      }

      while (v76);
      if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_113:
        do
        {
          v78 = *v71++;
          *v70++ = v78;
        }

        while (v71 != a3);
      }

      v79 = a3;
      while (a2 != v13)
      {
        result = mlir::DominanceInfo::properlyDominatesImpl(*a4, *(v70 - 1), *(a2 - 1), 1);
        if (result)
        {
          v80 = a2;
        }

        else
        {
          v80 = v70;
        }

        if (result)
        {
          --a2;
        }

        else
        {
          --v70;
        }

        *--a3 = *(v80 - 1);
        --v79;
        if (v70 == a7)
        {
          return result;
        }
      }

      if (v70 != a7)
      {
        v95 = v70 - a7 - 8;
        if (v95 < 0x48 || (v70 - v79) < 0x20)
        {
          v96 = v70;
LABEL_100:
          v97 = a3 - 1;
          do
          {
            v98 = *--v96;
            *v97-- = v98;
          }

          while (v96 != a7);
          return result;
        }

        v99 = a3 - 2;
        v100 = (v95 >> 3) + 1;
        v101 = 8 * (v100 & 0x3FFFFFFFFFFFFFFCLL);
        v96 = &v70[v101 / 0xFFFFFFFFFFFFFFF8];
        a3 = (a3 - v101);
        v102 = v70 - 2;
        v103 = v100 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v104 = *v102;
          *(v99 - 1) = *(v102 - 1);
          *v99 = v104;
          v99 -= 4;
          v102 -= 4;
          v103 -= 4;
        }

        while (v103);
        if (v100 != (v100 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_100;
        }
      }
    }
  }

  return result;
}

BOOL mlir::OperationName::hasInterface<mlir::FunctionOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OperationName::hasInterface<mlir::FunctionOpInterface>();
    a1 = v9;
  }

  v1 = *(*a1 + 40);
  if (v1)
  {
    v2 = *(*a1 + 32);
    v3 = *(*a1 + 40);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *(*a1 + 32);
  }

  return v2 != (*(*a1 + 32) + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id && v2[1] != 0;
}

BOOL mlir::mps::deallocateMemrefs(mlir::mps *this, mlir::Operation *a2)
{
  v4[28] = *MEMORY[0x1E69E9840];
  if (*(*(this + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
  {
    mlir::mps::MemrefAllocTransformationBase::MemrefAllocTransformationBase(v4, this);
  }

  v4[0] = &v3;
  return mlir::detail::walk<mlir::ForwardIterator>(this, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps17deallocateMemrefsES4_E3__0NS1_4func6FuncOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESN_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v4, 1) != 0;
}

double mlir::mps::createMemrefDeallocationPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x158uLL);
  result = 0.0;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  *(v3 + 120) = 0;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  *(v3 + 22) = 0;
  *(v3 + 23) = v3 + 200;
  *(v3 + 49) = 4;
  *(v3 + 29) = v3 + 248;
  *(v3 + 61) = 4;
  *(v3 + 35) = 0;
  *(v3 + 36) = 0;
  *(v3 + 37) = 0x1000000000;
  v3[19] = 0u;
  v3[20] = 0u;
  *(v3 + 42) = 0;
  *v3 = &unk_1F5AFCF88;
  *a1 = v3;
  return result;
}

uint64_t **_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_118MemrefDeallocation15populateViewOpsES3_EUlNS1_6memref6ViewOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
    {
      v2 = **result;
      v3 = a2 - 16;
      result = mlir::memref::findDealloc((a2 - 16));
      if (v4)
      {
        v5 = *(v2 + 8);
        if (v5 >= *(v2 + 12))
        {
          v7 = result;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v2 + 16, v5 + 1, 16);
          result = v7;
          LODWORD(v5) = *(v2 + 8);
        }

        v6 = (*v2 + 16 * v5);
        *v6 = v3;
        v6[1] = result;
        ++*(v2 + 8);
      }
    }
  }

  return result;
}

mlir::Block *mlir::bufferization::findCommonDominator<mlir::PostDominanceInfo>(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a1;
  v23 = v27;
  v24 = v27;
  v25 = 0x100000010;
  v26 = 0;
  v27[0] = mlir::Value::getParentBlock(&v28);
  v5 = v27;
  v6 = v27;
  v7 = 0x100000010;
  v8 = a2[1];
  v9 = 16;
  if (v8 == *a2)
  {
    v9 = 20;
  }

  v10 = *(a2 + v9);
  if (v10)
  {
    v11 = 8 * v10;
    v12 = a2[1];
    while (*v12 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v12 = a2[1];
  }

  v15 = (v8 + 8 * v10);
  while (v12 != v15)
  {
    v22 = *v12;
    v16 = *v22;
    if (*v22)
    {
      do
      {
        v18 = *(v16[2] + 16);
        if (v6 != v5)
        {
          goto LABEL_21;
        }

        if (HIDWORD(v7))
        {
          v19 = 0;
          while (v5[v19] != v18)
          {
            if (HIDWORD(v7) == ++v19)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_23;
        }

LABEL_29:
        if (HIDWORD(v7) < v7)
        {
          HIDWORD(v25) = HIDWORD(v7) + 1;
          v5[HIDWORD(v7)] = v18;
        }

        else
        {
LABEL_21:
          llvm::SmallPtrSetImplBase::insert_imp_big(&v23, v18);
        }

        v5 = v23;
LABEL_23:
        v6 = v24;
        v7 = v25;
        v16 = *v16;
      }

      while (v16);
    }

    ParentBlock = mlir::Value::getParentBlock(&v22);
    v5 = v23;
    if (v24 != v23)
    {
      goto LABEL_15;
    }

    v20 = HIDWORD(v25);
    if (!HIDWORD(v25))
    {
LABEL_35:
      if (HIDWORD(v25) < v25)
      {
        ++HIDWORD(v25);
        v23[v20] = ParentBlock;
        goto LABEL_16;
      }

LABEL_15:
      llvm::SmallPtrSetImplBase::insert_imp_big(&v23, ParentBlock);
LABEL_16:
      v5 = v23;
      goto LABEL_17;
    }

    v21 = 0;
    while (v23[v21] != ParentBlock)
    {
      if (HIDWORD(v25) == ++v21)
      {
        goto LABEL_35;
      }
    }

LABEL_17:
    v6 = v24;
    v7 = v25;
    do
    {
      ++v12;
    }

    while (v12 != v15 && *v12 >= 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_7:
  result = mlir::detail::DominanceInfoBase<true>::findNearestCommonDominator<llvm::SmallPtrSet<mlir::Block *,16u> &>(a3, &v23);
  if (v24 != v23)
  {
    v14 = result;
    free(v24);
    return v14;
  }

  return result;
}

mlir::Block *mlir::detail::DominanceInfoBase<true>::findNearestCommonDominator<llvm::SmallPtrSet<mlir::Block *,16u> &>(uint64_t a1, mlir::Block ***a2)
{
  v2 = a2[1];
  v3 = 16;
  if (v2 == *a2)
  {
    v3 = 20;
  }

  v4 = *(a2 + v3);
  if (!v4)
  {
    return 0;
  }

  v7 = &v2[v4];
  v8 = 8 * v4;
  v9 = v8;
  for (i = a2[1]; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
  {
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (!v9)
  {
    return 0;
  }

  v12 = v8;
  v13 = a2[1];
  do
  {
    NearestCommonDominator = *v13;
    if (*v13 < 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_14;
    }

    ++v13;
    v12 -= 8;
  }

  while (v12);
  NearestCommonDominator = *v7;
LABEL_14:
  while (*v2 >= 0xFFFFFFFFFFFFFFFELL)
  {
    ++v2;
    v8 -= 8;
    if (!v8)
    {
      v2 = v7;
      break;
    }
  }

  v15 = v2 + 1;
  if (v2 + 1 != v7)
  {
    while (*v15 >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++v15 == v7)
      {
        return NearestCommonDominator;
      }
    }

    if (v15 != v7)
    {
      do
      {
        NearestCommonDominator = mlir::detail::DominanceInfoBase<true>::findNearestCommonDominator(a1, NearestCommonDominator, *v15);
        if (!NearestCommonDominator)
        {
          break;
        }

        do
        {
          ++v15;
        }

        while (v15 != v7 && *v15 >= 0xFFFFFFFFFFFFFFFELL);
        v16 = a2[1];
        v17 = v16 == *a2 ? 20 : 16;
      }

      while (v15 != &v16[*(a2 + v17)]);
    }
  }

  return NearestCommonDominator;
}

void mlir::mps::MemrefAllocTransformationBase::~MemrefAllocTransformationBase(mlir::mps::MemrefAllocTransformationBase *this)
{
  v2 = *(this + 54);
  v3 = *(this + 25);
  if (v2)
  {
    v4 = (v3 + 16);
    v5 = 168 * v2;
    do
    {
      if ((*(v4 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000 && *v4 != *(v4 - 1))
      {
        free(*v4);
      }

      v4 += 21;
      v5 -= 168;
    }

    while (v5);
    v3 = *(this + 25);
    v6 = 168 * *(this + 54);
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6);
}

void **sub_1DFCAD77C()
{
  if (*v0 != v0 + 2)
  {
    free(*v0);
  }

  return v0;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps17deallocateMemrefsES4_E3__0NS1_4func6FuncOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESN_E4typeES4_OT1_EUlS4_E_EES2_lS4_(int a1, mlir::mps *this)
{
  result = 1;
  if (this)
  {
    if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      return mlir::mps::deallocateMemrefs(this, this) & 1;
    }
  }

  return result;
}

void mlir::mps::anonymous namespace::MemrefDeallocationPass::~MemrefDeallocationPass(mlir::mps::_anonymous_namespace_::MemrefDeallocationPass *this)
{
  *this = &unk_1F5B01A70;
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  if (*(this + 73))
  {
    v3 = *(this + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 35) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 35));
  v7 = *(this + 29);
  if (v7 != this + 248)
  {
    free(v7);
  }

  v8 = *(this + 23);
  if (v8 != this + 200)
  {
    free(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  if (*(this + 120) == 1)
  {
    v10 = *(this + 8);
    if (v10 != *(this + 7))
    {
      free(v10);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::mps::MPSMemrefDeallocationBase<mlir::mps::anonymous namespace::MemrefDeallocationPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAEA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFB318;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, "mps_spi", 7uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFCC40;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, "placement", 9uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AF27A8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::memref::MemRefDialect,void>::id, "memref", 6uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::MemrefDeallocationPass::runOnOperation(uint64_t this, mlir::Operation *a2)
{
  v2 = this;
  v3 = *(this + 40);
  v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
  if ((v3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    this = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v3 & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = (((&v4[4 * ((v4[11] >> 23) & 1) + 16] + ((v4[11] >> 21) & 0x7F8)) & 0xFFFFFFFFFFFFFFF8) + 32 * v4[10]);
  if (*v5 != v5)
  {
    this = mlir::mps::deallocateMemrefs(v4, a2);
    if ((this & 1) == 0)
    {
      *(v2 + 40) |= 4uLL;
    }
  }

  return this;
}

double mlir::mps::MPSMemrefDeallocationBase<mlir::mps::anonymous namespace::MemrefDeallocationPass>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x158uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  result = 0.0;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  v4[19] = 0u;
  v4[20] = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5AFCF88;
  *a2 = v4;
  return result;
}

double mlir::mps::createMemrefAllocBlockHoistingPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x158uLL);
  result = 0.0;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  *(v3 + 120) = 0;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  *(v3 + 22) = 0;
  *(v3 + 23) = v3 + 200;
  *(v3 + 49) = 4;
  *(v3 + 29) = v3 + 248;
  *(v3 + 61) = 4;
  *(v3 + 35) = 0;
  *(v3 + 36) = 0;
  *(v3 + 37) = 0x1000000000;
  v3[19] = 0u;
  v3[20] = 0u;
  *(v3 + 42) = 0;
  *v3 = &unk_1F5AFCFF8;
  *a1 = v3;
  return result;
}

double mlir::mps::createMemrefAllocLoopHoistingPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x158uLL);
  result = 0.0;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  *(v3 + 120) = 0;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  *(v3 + 22) = 0;
  *(v3 + 23) = v3 + 200;
  *(v3 + 49) = 4;
  *(v3 + 29) = v3 + 248;
  *(v3 + 61) = 4;
  *(v3 + 35) = 0;
  *(v3 + 36) = 0;
  *(v3 + 37) = 0x1000000000;
  v3[19] = 0u;
  v3[20] = 0u;
  *(v3 + 42) = 0;
  *v3 = &unk_1F5AFD068;
  *a1 = v3;
  return result;
}

double mlir::mps::createMemrefAllocFusionPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x158uLL);
  result = 0.0;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  *(v3 + 120) = 0;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  *(v3 + 22) = 0;
  *(v3 + 23) = v3 + 200;
  *(v3 + 49) = 4;
  *(v3 + 29) = v3 + 248;
  *(v3 + 61) = 4;
  *(v3 + 35) = 0;
  *(v3 + 36) = 0;
  *(v3 + 37) = 0x1000000000;
  v3[19] = 0u;
  v3[20] = 0u;
  *(v3 + 42) = 0;
  *v3 = &unk_1F5AFD0D8;
  *a1 = v3;
  return result;
}

void mlir::mps::anonymous namespace::MemrefAllocBlockHoistingPass::~MemrefAllocBlockHoistingPass(mlir::mps::_anonymous_namespace_::MemrefAllocBlockHoistingPass *this)
{
  mlir::Pass::~Pass(this);

  operator delete(v1);
}

void *mlir::mps::MPSMemrefAllocBlockHoistingBase<mlir::mps::anonymous namespace::MemrefAllocBlockHoistingPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAEA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFB318;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, "mps_spi", 7uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFCC40;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, "placement", 9uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AF27A8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::memref::MemRefDialect,void>::id, "memref", 6uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::MemrefAllocBlockHoistingPass::runOnOperation(uint64_t this)
{
  v4[31] = *MEMORY[0x1E69E9840];
  v1 = *(this + 40);
  v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
  if ((v1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    this = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v1 & 0xFFFFFFFFFFFFFFF8);
  }

  v3 = (((&v2[4 * ((v2[11] >> 23) & 1) + 16] + ((v2[11] >> 21) & 0x7F8)) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
  if (*v3 != v3)
  {
    mlir::mps::MemrefAllocTransformationBase::MemrefAllocTransformationBase(v4, v2);
  }

  return this;
}

double mlir::mps::MPSMemrefAllocBlockHoistingBase<mlir::mps::anonymous namespace::MemrefAllocBlockHoistingPass>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x158uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  result = 0.0;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  v4[19] = 0u;
  v4[20] = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5AFCFF8;
  *a2 = v4;
  return result;
}

mlir::Block *mlir::bufferization::findCommonDominator<mlir::DominanceInfo>(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a1;
  v23 = v27;
  v24 = v27;
  v25 = 0x100000010;
  v26 = 0;
  v27[0] = mlir::Value::getParentBlock(&v28);
  v5 = v27;
  v6 = v27;
  v7 = 0x100000010;
  v8 = a2[1];
  v9 = 16;
  if (v8 == *a2)
  {
    v9 = 20;
  }

  v10 = *(a2 + v9);
  if (v10)
  {
    v11 = 8 * v10;
    v12 = a2[1];
    while (*v12 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v12 = a2[1];
  }

  v15 = (v8 + 8 * v10);
  while (v12 != v15)
  {
    v22 = *v12;
    v16 = *v22;
    if (*v22)
    {
      do
      {
        v18 = *(v16[2] + 16);
        if (v6 != v5)
        {
          goto LABEL_21;
        }

        if (HIDWORD(v7))
        {
          v19 = 0;
          while (v5[v19] != v18)
          {
            if (HIDWORD(v7) == ++v19)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_23;
        }

LABEL_29:
        if (HIDWORD(v7) < v7)
        {
          HIDWORD(v25) = HIDWORD(v7) + 1;
          v5[HIDWORD(v7)] = v18;
        }

        else
        {
LABEL_21:
          llvm::SmallPtrSetImplBase::insert_imp_big(&v23, v18);
        }

        v5 = v23;
LABEL_23:
        v6 = v24;
        v7 = v25;
        v16 = *v16;
      }

      while (v16);
    }

    ParentBlock = mlir::Value::getParentBlock(&v22);
    v5 = v23;
    if (v24 != v23)
    {
      goto LABEL_15;
    }

    v20 = HIDWORD(v25);
    if (!HIDWORD(v25))
    {
LABEL_35:
      if (HIDWORD(v25) < v25)
      {
        ++HIDWORD(v25);
        v23[v20] = ParentBlock;
        goto LABEL_16;
      }

LABEL_15:
      llvm::SmallPtrSetImplBase::insert_imp_big(&v23, ParentBlock);
LABEL_16:
      v5 = v23;
      goto LABEL_17;
    }

    v21 = 0;
    while (v23[v21] != ParentBlock)
    {
      if (HIDWORD(v25) == ++v21)
      {
        goto LABEL_35;
      }
    }

LABEL_17:
    v6 = v24;
    v7 = v25;
    do
    {
      ++v12;
    }

    while (v12 != v15 && *v12 >= 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_7:
  result = mlir::detail::DominanceInfoBase<false>::findNearestCommonDominator<llvm::SmallPtrSet<mlir::Block *,16u> &>(a3, &v23);
  if (v24 != v23)
  {
    v14 = result;
    free(v24);
    return v14;
  }

  return result;
}

mlir::Block *mlir::detail::DominanceInfoBase<false>::findNearestCommonDominator<llvm::SmallPtrSet<mlir::Block *,16u> &>(uint64_t a1, mlir::Block ***a2)
{
  v2 = a2[1];
  v3 = 16;
  if (v2 == *a2)
  {
    v3 = 20;
  }

  v4 = *(a2 + v3);
  if (!v4)
  {
    return 0;
  }

  v7 = &v2[v4];
  v8 = 8 * v4;
  v9 = v8;
  for (i = a2[1]; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
  {
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (!v9)
  {
    return 0;
  }

  v12 = v8;
  v13 = a2[1];
  do
  {
    NearestCommonDominator = *v13;
    if (*v13 < 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_14;
    }

    ++v13;
    v12 -= 8;
  }

  while (v12);
  NearestCommonDominator = *v7;
LABEL_14:
  while (*v2 >= 0xFFFFFFFFFFFFFFFELL)
  {
    ++v2;
    v8 -= 8;
    if (!v8)
    {
      v2 = v7;
      break;
    }
  }

  v15 = v2 + 1;
  if (v2 + 1 != v7)
  {
    while (*v15 >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++v15 == v7)
      {
        return NearestCommonDominator;
      }
    }

    if (v15 != v7)
    {
      do
      {
        NearestCommonDominator = mlir::detail::DominanceInfoBase<false>::findNearestCommonDominator(a1, NearestCommonDominator, *v15);
        if (!NearestCommonDominator)
        {
          break;
        }

        do
        {
          ++v15;
        }

        while (v15 != v7 && *v15 >= 0xFFFFFFFFFFFFFFFELL);
        v16 = a2[1];
        v17 = v16 == *a2 ? 20 : 16;
      }

      while (v15 != &v16[*(a2 + v17)]);
    }
  }

  return NearestCommonDominator;
}

void mlir::mps::anonymous namespace::MemrefAllocLoopHoistingPass::~MemrefAllocLoopHoistingPass(mlir::mps::_anonymous_namespace_::MemrefAllocLoopHoistingPass *this)
{
  mlir::Pass::~Pass(this);

  operator delete(v1);
}

void *mlir::mps::MPSMemrefAllocLoopHoistingBase<mlir::mps::anonymous namespace::MemrefAllocLoopHoistingPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAEA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFB318;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, "mps_spi", 7uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFCC40;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, "placement", 9uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AF27A8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::memref::MemRefDialect,void>::id, "memref", 6uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::MemrefAllocLoopHoistingPass::runOnOperation(uint64_t this)
{
  v4[31] = *MEMORY[0x1E69E9840];
  v1 = *(this + 40);
  v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
  if ((v1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    this = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v1 & 0xFFFFFFFFFFFFFFF8);
  }

  v3 = (((&v2[4 * ((v2[11] >> 23) & 1) + 16] + ((v2[11] >> 21) & 0x7F8)) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
  if (*v3 != v3)
  {
    mlir::mps::MemrefAllocTransformationBase::MemrefAllocTransformationBase(v4, v2);
  }

  return this;
}

double mlir::mps::MPSMemrefAllocLoopHoistingBase<mlir::mps::anonymous namespace::MemrefAllocLoopHoistingPass>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x158uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  result = 0.0;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  v4[19] = 0u;
  v4[20] = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5AFD068;
  *a2 = v4;
  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParallelRegion<Empty>]";
  v6 = 89;
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

void mlir::mps::anonymous namespace::MemrefAllocFusionPass::~MemrefAllocFusionPass(mlir::mps::_anonymous_namespace_::MemrefAllocFusionPass *this)
{
  mlir::Pass::~Pass(this);

  operator delete(v1);
}

void *mlir::mps::MPSMemrefAllocFusionBase<mlir::mps::anonymous namespace::MemrefAllocFusionPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAEA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFB318;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, "mps_spi", 7uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFCC40;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, "placement", 9uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AF27A8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::memref::MemRefDialect,void>::id, "memref", 6uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFD148;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, "arith", 5uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void mlir::mps::anonymous namespace::MemrefAllocFusionPass::runOnOperation(mlir::mps::_anonymous_namespace_::MemrefAllocFusionPass *this)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(this + 5);
  v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
  if ((v1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v1 & 0xFFFFFFFFFFFFFFF8);
  }

  mlir::mps::MemrefAllocTransformationBase::MemrefAllocTransformationBase(v3, v2);
}

double mlir::mps::MPSMemrefAllocFusionBase<mlir::mps::anonymous namespace::MemrefAllocFusionPass>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x158uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  result = 0.0;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  v4[19] = 0u;
  v4[20] = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5AFD0D8;
  *a2 = v4;
  return result;
}

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::arith::ArithDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::arith::ArithDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFD148;
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE0ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_122MemrefAllocationFusion25populateAllocInfoInBlocksEvEUlNS1_23MemoryEffectOpInterfaceEE_SF_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESO_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t **a1, uint64_t a2)
{
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2) || !a2)
  {
    return 1;
  }

  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v5 = *a1;
  v64[0] = a2;
  v64[1] = InterfaceFor;
  v6 = *v5;
  if (mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Allocate>(v64))
  {
    v63 = (v64[0] - 16);
    ParentBlock = mlir::Value::getParentBlock(&v63);
    v8 = *(v6 + 224);
    v62 = ParentBlock;
    v9 = *(v6 + 240);
    if (v9)
    {
      v10 = ((ParentBlock >> 4) ^ (ParentBlock >> 9)) & (v9 - 1);
      v11 = (v8 + 144 * v10);
      v12 = v11->~__shared_weak_count;
      if (ParentBlock == v11->~__shared_weak_count)
      {
LABEL_9:
        return 1;
      }

      v57 = 0;
      v58 = 1;
      while (v12 != -4096)
      {
        if (v57)
        {
          v59 = 0;
        }

        else
        {
          v59 = v12 == -8192;
        }

        if (v59)
        {
          v57 = v11;
        }

        v60 = v10 + v58++;
        v10 = v60 & (v9 - 1);
        v11 = (v8 + 144 * v10);
        v12 = v11->~__shared_weak_count;
        if (ParentBlock == v11->~__shared_weak_count)
        {
          goto LABEL_9;
        }
      }

      if (v57)
      {
        v21 = v57;
      }

      else
      {
        v21 = v11;
      }
    }

    else
    {
      v21 = 0;
    }

    v65 = v21;
    v22 = *(v6 + 232);
    if (4 * v22 + 4 >= 3 * v9)
    {
      v61 = ParentBlock;
      v9 *= 2;
    }

    else
    {
      if (v9 + ~v22 - *(v6 + 236) > v9 >> 3)
      {
LABEL_20:
        *(v6 + 232) = v22 + 1;
        if (v21->~__shared_weak_count != -4096)
        {
          --*(v6 + 236);
        }

        v21->~__shared_weak_count = ParentBlock;
        v23 = v63;
        *&v21->~__shared_weak_count_0 = 0u;
        v24 = &v21->~__shared_weak_count_0;
        v65 = v23;
        *(v24 + 56) = 0u;
        *(v24 + 16) = 0u;
        *(v24 + 28) = 0u;
        *(v24 + 48) = v24 + 56;
        *(v24 + 72) = v24 + 88;
        *(v24 + 80) = 0x300000000;
        v25 = mlir::Value::getParentBlock(&v65);
        *(v24 + 16) = mlir::bufferization::BufferPlacementAllocs::getStartOperation(v23, v25, v6 + 144);
        return 1;
      }

      v61 = ParentBlock;
    }

    v22 = *(v6 + 232);
    v21 = v65;
    ParentBlock = v61;
    goto LABEL_20;
  }

  if (!mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Free>(v64))
  {
    return 1;
  }

  v65 = *(*(v64[0] + 72) + 24);
  v13 = mlir::Value::getParentBlock(&v65);
  v14 = *(v6 + 224);
  v15 = *(v6 + 240);
  if (v15)
  {
    v16 = ((v13 >> 4) ^ (v13 >> 9)) & (v15 - 1);
    v17 = (v14 + 144 * v16);
    v18 = *v17;
    if (*v17 == v13)
    {
      goto LABEL_24;
    }

    v19 = 1;
    while (v18 != -4096)
    {
      v20 = v16 + v19++;
      v16 = v20 & (v15 - 1);
      v17 = (v14 + 144 * v16);
      v18 = *v17;
      if (*v17 == v13)
      {
        goto LABEL_24;
      }
    }
  }

  v17 = (v14 + 144 * v15);
LABEL_24:
  if (v17 == (v14 + 144 * v15))
  {
    return 1;
  }

  v26 = v17[4];
  v27 = *(v17 + 12);
  if (!v27)
  {
LABEL_31:
    v31 = (v26 + 24 * v27);
    goto LABEL_32;
  }

  v28 = 0x9DDFEA08EB382D69 * ((8 * v65 - 0xAE502812AA7333) ^ (v65 >> 32));
  v29 = 0x9DDFEA08EB382D69 * ((v65 >> 32) ^ (v28 >> 47) ^ v28);
  v30 = (-348639895 * ((v29 >> 47) ^ v29)) & (v27 - 1);
  v31 = (v26 + 24 * v30);
  v32 = *v31;
  if (*v31 != v65)
  {
    v33 = 1;
    while (v32 != -4096)
    {
      v34 = v30 + v33++;
      v30 = v34 & (v27 - 1);
      v31 = (v26 + 24 * v30);
      v32 = *v31;
      if (*v31 == v65)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

LABEL_32:
  if (v31 == (v26 + 24 * v27))
  {
    return 1;
  }

  v35 = v31[1];
  LOBYTE(v35[1].~__shared_weak_count_0) = 0;
  v36 = (v17 + 8);
  v37 = v17[8];
  if (!v37)
  {
    v37 = (v17 + 8);
    goto LABEL_75;
  }

  while (1)
  {
    v39 = v31[2];
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v40 = v37[4];
    v41 = v37[5];
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    get_deleter = v35->__get_deleter;
    v43 = v40[3];
    if (get_deleter >= v43)
    {
      if (v43 >= get_deleter)
      {
        v44 = v35[1].~__shared_weak_count < v40[5];
        if (!v41)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v44 = 0;
        if (!v41)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v44 = 1;
      if (!v41)
      {
        goto LABEL_50;
      }
    }

    if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
    }

LABEL_50:
    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
      if (v44)
      {
LABEL_35:
        v38 = *v37;
        v36 = v37;
        if (!*v37)
        {
          goto LABEL_75;
        }

        goto LABEL_36;
      }
    }

    else if (v44)
    {
      goto LABEL_35;
    }

    v45 = v37[4];
    v46 = v37[5];
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = v31[1];
    v48 = v31[2];
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v49 = v45[3];
    v50 = v47->__get_deleter;
    if (v49 >= v50)
    {
      if (v50 >= v49)
      {
        v51 = v45[5] < v47[1].~__shared_weak_count;
        if (!v48)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v51 = 0;
        if (!v48)
        {
          goto LABEL_68;
        }
      }
    }

    else
    {
      v51 = 1;
      if (!v48)
      {
        goto LABEL_68;
      }
    }

    if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v48->__on_zero_shared)(v48);
      std::__shared_weak_count::__release_weak(v48);
    }

LABEL_68:
    if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }

    if (!v51)
    {
      break;
    }

    v36 = v37 + 1;
    v38 = v37[1];
    if (!v38)
    {
      goto LABEL_75;
    }

LABEL_36:
    v35 = v31[1];
    v37 = v38;
  }

  if (!*v36)
  {
LABEL_75:
    v52 = operator new(0x30uLL);
    v53 = v52;
    v52[4] = v31[1];
    v54 = v31[2];
    v52[5] = v54;
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->~__shared_weak_count_0, 1uLL, memory_order_relaxed);
    }

    *v52 = 0;
    v52[1] = 0;
    v52[2] = v37;
    *v36 = v52;
    v55 = *v17[7];
    if (v55)
    {
      v17[7] = v55;
      v53 = *v36;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v17[8], v53);
    ++v17[9];
  }

  return 1;
}

void mlir::mps::anonymous namespace::BlockAllocInfo::registerAllocInBlock(uint64_t a1, std::__shared_weak_count_vtbl *a2)
{
  v78 = a2;
  DefiningOp = mlir::Value::getDefiningOp(&v78);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id)
    {
      v4 = DefiningOp;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v77 = (v78->~__shared_weak_count_0 & 0xFFFFFFFFFFFFFFF8);
  Value = mlir::ArrayAttr::getValue(&v77);
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      if (*Value == 0x8000000000000000)
      {
        return;
      }

      ++Value;
      v7 -= 8;
    }

    while (v7);
  }

  v8 = v78->~__shared_weak_count;
  v72 = v4;
  for (i = 1; v8; v8 = *v8)
  {
    v10 = *(v8 + 2);
    if (v10 && *(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      v11 = *(v10 + 36);
      v12 = v10 - 16;
      v13 = v11 ? v12 : 0;
      for (j = *mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0); j; j = *j)
      {
        if (*(*(j[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
        {
          i = 16;
        }
      }
    }
  }

  MemrefSizeInBytes = mlir::getMemrefSizeInBytes(v77, i);
  v16 = *a1;
  v17 = (a1 + 56);
  v18 = *(a1 + 56);
  if (!v18)
  {
LABEL_69:
    v73 = *(v72 + 16 * ((*(v72 + 44) >> 23) & 1) + 64);
    if (v73)
    {
      Int = mlir::IntegerAttr::getInt(&v73);
      v39 = (Int - (Int != 0) + ((Int != 0) << 8)) & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v39 = 256;
    }

    v40 = 0;
    v41 = (MemrefSizeInBytes - (MemrefSizeInBytes != 0)) / v39;
    if (MemrefSizeInBytes)
    {
      ++v41;
    }

    *a1 += v41 * v39;
    goto LABEL_75;
  }

  v71 = v78->~__shared_weak_count_0;
  while (1)
  {
    while (1)
    {
      v19 = v18[4];
      v20 = v18[5];
      if (!v20)
      {
        break;
      }

      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *(v19 + 24);
      if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (v21 <= MemrefSizeInBytes)
        {
          goto LABEL_33;
        }
      }

      else
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
        if (v21 <= MemrefSizeInBytes)
        {
          goto LABEL_33;
        }
      }

LABEL_25:
      v17 = v18;
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_69;
      }
    }

    if (*(v19 + 24) > MemrefSizeInBytes)
    {
      goto LABEL_25;
    }

LABEL_33:
    v22 = v18[4];
    v23 = v18[5];
    if (v23)
    {
      break;
    }

    if (*(v22 + 24) >= MemrefSizeInBytes)
    {
      goto LABEL_41;
    }

LABEL_39:
    v18 = v18[1];
    if (!v18)
    {
      goto LABEL_69;
    }
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  v24 = *(v22 + 24);
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v24 < MemrefSizeInBytes)
  {
    goto LABEL_39;
  }

LABEL_41:
  v70 = v16;
  v25 = *v18;
  v26 = v18;
  if (*v18)
  {
    v26 = v18;
    do
    {
      v28 = v25[4];
      v29 = v25[5];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        v27 = *(v28 + 24);
        if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }
      }

      else
      {
        v27 = *(v28 + 24);
      }

      if (v27 >= MemrefSizeInBytes)
      {
        v26 = v25;
      }

      v25 = v25[v27 < MemrefSizeInBytes];
    }

    while (v25);
  }

  for (k = v18[1]; k; k = *(k + 8 * (v31 <= MemrefSizeInBytes)))
  {
    v32 = *(k + 32);
    v33 = *(k + 40);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *(v32 + 24);
      if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }
    }

    else
    {
      v31 = *(v32 + 24);
    }

    if (v31 > MemrefSizeInBytes)
    {
      v17 = k;
    }
  }

  v16 = v70;
  if (v26 == v17)
  {
    goto LABEL_69;
  }

  v34 = v26;
  while (1)
  {
    v35 = v34[4];
    if ((*(*v35 + 8) ^ v71) < 8)
    {
      break;
    }

    v36 = v34[1];
    if (v36)
    {
      do
      {
        v37 = v36;
        v36 = *v36;
      }

      while (v36);
    }

    else
    {
      do
      {
        v37 = v34[2];
        v67 = *v37 == v34;
        v34 = v37;
      }

      while (!v67);
    }

    v34 = v37;
    if (v37 == v17)
    {
      v35 = v26[4];
      v34 = v26;
      break;
    }
  }

  v60 = v34[1];
  if (v60)
  {
    do
    {
      v61 = v60;
      v60 = *v60;
    }

    while (v60);
  }

  else
  {
    v62 = v34;
    do
    {
      v61 = v62[2];
      v67 = *v61 == v62;
      v62 = v61;
    }

    while (!v67);
  }

  if (*(a1 + 48) == v34)
  {
    *(a1 + 48) = v61;
  }

  v63 = *(a1 + 56);
  --*(a1 + 64);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v63, v34);
  v64 = v34[5];
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v64->__on_zero_shared)(v64);
    std::__shared_weak_count::__release_weak(v64);
  }

  operator delete(v34);
  if (v35[2])
  {
    v40 = v35[2];
  }

  else
  {
    v40 = v35;
  }

  v16 = v40[4];
LABEL_75:
  v42 = *(a1 + 8) + 1;
  *(a1 + 8) = v42;
  v43 = v78;
  v44 = operator new(0x50uLL);
  v44->__shared_owners_ = 0;
  v44->__shared_weak_owners_ = 0;
  v44->__vftable = &unk_1F5AFD190;
  v44[1].__vftable = v43;
  v44[1].__shared_weak_owners_ = v40;
  v44[2].__vftable = MemrefSizeInBytes;
  v44[2].__shared_owners_ = v16;
  v44[2].__shared_weak_owners_ = v42;
  LOBYTE(v44[3].__vftable) = 1;
  v75 = v44 + 1;
  v76 = v44;
  v73 = v43;
  *&v74 = v44 + 1;
  *(&v74 + 1) = v44;
  atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  v45 = *(a1 + 24);
  v46 = *(a1 + 40);
  if (v46)
  {
    v47 = 0x9DDFEA08EB382D69 * ((8 * v43 - 0xAE502812AA7333) ^ (v43 >> 32));
    v48 = 0x9DDFEA08EB382D69 * ((v43 >> 32) ^ (v47 >> 47) ^ v47);
    v49 = (-348639895 * ((v48 >> 47) ^ v48)) & (v46 - 1);
    v50 = (v45 + 24 * v49);
    v51 = *v50;
    if (v43 == *v50)
    {
LABEL_77:
      if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v52 = v44;
        (v44->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v52);
      }

      goto LABEL_85;
    }

    v65 = 0;
    v66 = 1;
    while (v51 != -4096)
    {
      if (v65)
      {
        v67 = 0;
      }

      else
      {
        v67 = v51 == -8192;
      }

      if (v67)
      {
        v65 = v50;
      }

      v68 = v49 + v66++;
      v49 = v68 & (v46 - 1);
      v50 = (v45 + 24 * v49);
      v51 = *v50;
      if (v43 == *v50)
      {
        goto LABEL_77;
      }
    }

    if (v65)
    {
      v53 = v65;
    }

    else
    {
      v53 = v50;
    }
  }

  else
  {
    v53 = 0;
  }

  v79 = v53;
  v54 = *(a1 + 32);
  if (4 * v54 + 4 >= 3 * v46)
  {
    v46 *= 2;
    goto LABEL_122;
  }

  if (v46 + ~v54 - *(a1 + 36) <= v46 >> 3)
  {
LABEL_122:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::grow(a1 + 24, v46);
    v54 = *(a1 + 32);
    v53 = v79;
  }

  *(a1 + 32) = v54 + 1;
  if (*v53 != -4096)
  {
    --*(a1 + 36);
  }

  *v53 = v43;
  *(v53 + 1) = v74;
LABEL_85:
  v56 = (a1 + 72);
  v55 = *(a1 + 72);
  v57 = *(a1 + 80);
  v58 = &v75;
  if (v57 >= *(a1 + 84))
  {
    if (v55 <= &v75 && v55 + 16 * v57 > &v75)
    {
      v69 = &v75 - v55;
      v55 = *v56;
      v58 = &v69[*v56];
    }

    else
    {
      v55 = *v56;
      v58 = &v75;
    }
  }

  *(v55 + 16 * *(a1 + 80)) = *v58;
  *v58 = 0;
  *(v58 + 1) = 0;
  ++*(a1 + 80);
  v59 = v76;
  if (v76)
  {
    if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v59->__on_zero_shared)(v59);
      std::__shared_weak_count::__release_weak(v59);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::mps::anonymous namespace::BlockAllocInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::mps::anonymous namespace::BlockAllocInfo>>,mlir::Block *,mlir::mps::anonymous namespace::BlockAllocInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::mps::anonymous namespace::BlockAllocInfo>>::LookupBucketFor<mlir::Block *>(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v6 = (*result + 144 * v5);
    v7 = *v6;
    if (*a2 == *v6)
    {
LABEL_3:
      *a3 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -4096)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -8192;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (*result + 144 * (v11 & v4));
        v7 = *v6;
        if (*a2 == *v6)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }

      *a3 = v6;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::mps::anonymous namespace::BlockAllocInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::mps::anonymous namespace::BlockAllocInfo>>,mlir::Block *,mlir::mps::anonymous namespace::BlockAllocInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::mps::anonymous namespace::BlockAllocInfo>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(144 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 144 * v10 - 144;
    if (v11 >= 0x90)
    {
      v16 = v11 / 0x90 + 1;
      v12 = &result[18 * (v16 & 0x3FFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x3FFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[18] = -4096;
        v17 += 36;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x3FFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (!v3)
        {
LABEL_56:

          llvm::deallocate_buffer(v4, (144 * v3));
        }

        v20 = v4;
        while (1)
        {
          v22 = *v20;
          if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            break;
          }

          v20 = (v20 + 144);
          if (v20 == (v4 + 144 * v3))
          {
            goto LABEL_56;
          }
        }

        v23 = *(a1 + 16);
        if (v23)
        {
          v24 = v23 - 1;
          v25 = v24 & ((v22 >> 4) ^ (v22 >> 9));
          v26 = *a1 + 144 * v25;
          v27 = *v26;
          if (v22 != *v26)
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
                v28 = v26;
              }

              v31 = v25 + v29++;
              v25 = v31 & v24;
              v26 = *a1 + 144 * v25;
              v27 = *v26;
              if (v22 == *v26)
              {
                goto LABEL_35;
              }
            }

            if (v28)
            {
              v26 = v28;
            }
          }
        }

        else
        {
          v26 = 0;
        }

LABEL_35:
        *v26 = v22;
        v32 = *(v20 + 3);
        *(v26 + 8) = *(v20 + 8);
        *(v26 + 48) = 0;
        *(v26 + 32) = 0;
        *(v26 + 40) = 0;
        *(v26 + 24) = v32;
        *(v26 + 32) = *(v20 + 4);
        *(v20 + 4) = 0;
        *(v26 + 56) = *(v20 + 7);
        v33 = (v20 + 64);
        v34 = *(v20 + 8);
        *(v26 + 40) = *(v20 + 10);
        *(v20 + 10) = 0;
        *(v26 + 64) = v34;
        v35 = v26 + 64;
        v36 = *(v26 + 44);
        *(v26 + 44) = *(v20 + 11);
        *(v20 + 11) = v36;
        v37 = *(v26 + 48);
        *(v26 + 48) = *(v20 + 12);
        *(v20 + 12) = v37;
        v38 = *(v20 + 9);
        *(v26 + 72) = v38;
        if (v38)
        {
          *(v34 + 16) = v35;
          *(v20 + 7) = v33;
          *v33 = 0;
          *(v20 + 9) = 0;
        }

        else
        {
          *(v26 + 56) = v35;
        }

        v39 = (v26 + 96);
        *(v26 + 80) = v26 + 96;
        *(v26 + 88) = 0x300000000;
        if (v26 == v20 || (v40 = *(v20 + 22), !v40))
        {
LABEL_20:
          ++*(a1 + 8);
        }

        v41 = *(v20 + 10);
        if (v41 != (v20 + 96))
        {
          *(v26 + 80) = v41;
          v21 = *(v20 + 23);
          *(v26 + 88) = v40;
          *(v26 + 92) = v21;
          *(v20 + 10) = v20 + 96;
          *(v20 + 23) = 0;
LABEL_19:
          *(v20 + 22) = 0;
          goto LABEL_20;
        }

        if (v40 <= 3)
        {
          v43 = &v41[2 * v40];
        }

        else
        {
          v41 = *(v20 + 10);
          v42 = *(v20 + 22);
          if (!v42)
          {
            goto LABEL_47;
          }

          v43 = &v41[2 * v42];
          v39 = *(v26 + 80);
        }

        do
        {
          *v39++ = *v41;
          *v41 = 0;
          v41[1] = 0;
          v41 += 2;
        }

        while (v41 != v43);
        v41 = *(v20 + 10);
LABEL_47:
        *(v26 + 88) = v40;
        v44 = *(v20 + 22);
        if (v44)
        {
          v45 = v41 - 1;
          v46 = 2 * v44;
          do
          {
            v47 = v45[v46];
            if (v47)
            {
              if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v47->__on_zero_shared)(v47);
                std::__shared_weak_count::__release_weak(v47);
              }
            }

            v46 -= 2;
          }

          while (v46 * 8);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[18 * v10];
    do
    {
      *v12 = -4096;
      v12 += 18;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 144 * v13 - 144;
    if (v14 < 0x90)
    {
      v15 = result;
LABEL_62:
      v51 = &result[18 * v13];
      do
      {
        *v15 = -4096;
        v15 += 18;
      }

      while (v15 != v51);
      return result;
    }

    v48 = v14 / 0x90 + 1;
    v15 = &result[18 * (v48 & 0x3FFFFFFFFFFFFFELL)];
    v49 = result;
    v50 = v48 & 0x3FFFFFFFFFFFFFELL;
    do
    {
      *v49 = -4096;
      v49[18] = -4096;
      v49 += 36;
      v50 -= 2;
    }

    while (v50);
    if (v48 != (v48 & 0x3FFFFFFFFFFFFFELL))
    {
      goto LABEL_62;
    }
  }

  return result;
}

void mlir::mps::anonymous namespace::BlockAllocInfo::~BlockAllocInfo(mlir::mps::_anonymous_namespace_::BlockAllocInfo *this)
{
  v2 = *(this + 9);
  v3 = *(this + 20);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v5 -= 16;
    }

    while (v5);
    v2 = *(this + 9);
  }

  if (v2 != this + 88)
  {
    free(v2);
  }

  v7 = *(this + 10);
  v8 = *(this + 3);
  if (v7)
  {
    v9 = (v8 + 16);
    v10 = 24 * v7;
    do
    {
      if ((*(v9 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v11 = *v9;
        if (*v9)
        {
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }
        }
      }

      v9 += 3;
      v10 -= 24;
    }

    while (v10);
    v8 = *(this + 3);
    v12 = 24 * *(this + 10);
  }

  else
  {
    v12 = 0;
  }

  llvm::deallocate_buffer(v8, v12);
}

void llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::mps::anonymous namespace::MemrefAllocInfo>,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v15);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 16 * v7;
    v9 = v5;
    do
    {
      *v9++ = *v6;
      *v6 = 0;
      v6[1] = 0;
      v6 += 2;
      v8 -= 16;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = (v6 - 1);
      v12 = 16 * v10;
      do
      {
        v13 = *&v11[v12];
        if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 -= 16;
      }

      while (v12);
      v6 = *a1;
    }
  }

  v14 = v15;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v14;
}

void std::__tree<std::shared_ptr<mlir::mps::anonymous namespace::MemrefAllocInfo>>::destroy(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<mlir::mps::anonymous namespace::MemrefAllocInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AFD190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<mlir::mps::anonymous namespace::MemrefAllocInfo>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<mlir::mps::anonymous namespace::MemrefAllocInfo>>>,mlir::Value,std::shared_ptr<mlir::mps::anonymous namespace::MemrefAllocInfo>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<mlir::mps::anonymous namespace::MemrefAllocInfo>>>::LookupBucketFor<mlir::Value>(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = HIDWORD(*a2);
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v4);
    LODWORD(v5) = -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5)));
    v6 = v3 - 1;
    v7 = v5 & (v3 - 1);
    v8 = (*result + 24 * v7);
    v9 = *v8;
    if (*a2 == *v8)
    {
LABEL_3:
      *a3 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (*result + 24 * (v13 & v6));
        v9 = *v8;
        if (*a2 == *v8)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a3 = v8;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::BoolAttr::operator mlir::TypedAttr();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::Type,mlir::memref::AllocOp &,mlir::Value &,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::MemRefType &,mlir::Value,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,4u> &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::memref::ViewOp::build(a1, v21, *a3, *a4 - 16, *a5, *a6, *(a6 + 8));
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
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

double mlir::mps::createMemrefRegionPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x158uLL);
  result = 0.0;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  *(v3 + 120) = 0;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  *(v3 + 22) = 0;
  *(v3 + 23) = v3 + 200;
  *(v3 + 49) = 4;
  *(v3 + 29) = v3 + 248;
  *(v3 + 61) = 4;
  *(v3 + 35) = 0;
  *(v3 + 36) = 0;
  *(v3 + 37) = 0x1000000000;
  v3[19] = 0u;
  v3[20] = 0u;
  *(v3 + 42) = 0;
  *v3 = &unk_1F5AFD1C8;
  *a1 = v3;
  return result;
}

uint64_t mlir::mps::isRegionMemrefRegionPassCompatible(mlir::mps *this, mlir::Operation *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v74 = *(this + 11) & 0x7FFFFF;
  if (v74)
  {
    v76[0] = a2;
    v2 = 0;
    v3 = this + 64;
    v72 = this + 64;
    v73 = this;
    while (2)
    {
      v75 = v2;
      v4 = (&v3[16 * ((*(this + 11) >> 23) & 1) + 7 + ((*(this + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 24 * v2;
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        if (i)
        {
          v6 = (i - 8);
        }

        else
        {
          v6 = 0;
        }

        v7 = (v6 + 32);
        if (*(v6 + 4) != (v6 + 32))
        {
          v8 = *(v6 + 5);
          if (v8 != v7)
          {
            while (1)
            {
              v9 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v8, a2);
              if (v9 == mlir::Block::getTerminator(v6, v10))
              {
                goto LABEL_4;
              }

              v12 = *(*(v9 + 48) + 16);
              if (v12 == &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
              {
                break;
              }

              v14 = *(v9 + 44);
              if ((v14 & 0x7FFFFF) == 0 || v12 == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
              {
                v17 = *(v9 + 36);
                if (v17)
                {
                  v18 = v9 - 16;
                }

                else
                {
                  v18 = 0;
                }

                if (v17)
                {
                  v70 = v4;
                  v19 = 0;
                  while (1)
                  {
                    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, v19);
                    v21 = *(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
                    {
                      v68 = NextResultAtOffset;
                      mlir::mps::isRegionMemrefRegionPassCompatible();
                      NextResultAtOffset = v68;
                    }

                    if (v21 == mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
                    {
                      break;
                    }

                    v22 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
                    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8))
                    {
                      v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
                      *&v76[1] = v22;
                      v77 = v23;
                      if (v22)
                      {
                        if (!mlir::CallOpInterface::getArgOperands(&v76[1]))
                        {
                          goto LABEL_67;
                        }

                        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v76[1]);
                        if (a2)
                        {
                          v25 = 8 * a2;
                          while (*ArgAttrsAttr != 0x8000000000000000)
                          {
                            ++ArgAttrsAttr;
                            v25 -= 8;
                            if (!v25)
                            {
                              goto LABEL_29;
                            }
                          }

LABEL_67:
                          if (!v76[0])
                          {
                            return 0;
                          }

                          v78[0] = "Non-static shapes for results are not yet supported.";
                          v79 = 259;
                          mlir::Operation::emitError(v9, v78, v80);
                          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
                          v35 = result;
                          if (v80[0])
                          {
                            mlir::InFlightDiagnostic::report(v80);
                            result = v35;
                          }

                          if (v88 != 1)
                          {
                            return result;
                          }

                          if (v87 != &v88)
                          {
                            free(v87);
                            result = v35;
                          }

                          v36 = __p;
                          if (__p)
                          {
                            v37 = v86;
                            v38 = __p;
                            if (v86 != __p)
                            {
                              do
                              {
                                v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
                              }

                              while (v37 != v36);
                              v38 = __p;
                            }

                            v86 = v36;
                            operator delete(v38);
                            result = v35;
                          }

                          v39 = v83;
                          if (!v83)
                          {
                            goto LABEL_155;
                          }

                          v40 = v84;
                          v41 = v83;
                          if (v84 == v83)
                          {
                            goto LABEL_154;
                          }

                          do
                          {
                            v43 = *--v40;
                            v42 = v43;
                            *v40 = 0;
                            if (v43)
                            {
                              operator delete[](v42);
                            }
                          }

                          while (v40 != v39);
                          goto LABEL_153;
                        }
                      }
                    }

                    else
                    {
                      *&v76[1] = 0;
                      v77 = 0;
                    }

LABEL_29:
                    if (++v19 == v17)
                    {
                      v14 = *(v9 + 44);
                      v4 = v70;
                      goto LABEL_46;
                    }
                  }

                  if (!v76[0])
                  {
                    return 0;
                  }

                  v78[0] = "mpsx::ListType for results is not yet supported.";
                  v79 = 259;
                  mlir::Operation::emitError(v9, v78, v80);
                  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
                  v35 = result;
                  if (v80[0])
                  {
                    mlir::InFlightDiagnostic::report(v80);
                    result = v35;
                  }

                  if (v88 != 1)
                  {
                    return result;
                  }

                  if (v87 != &v88)
                  {
                    free(v87);
                  }

                  v50 = __p;
                  if (__p)
                  {
                    v51 = v86;
                    v52 = __p;
                    if (v86 != __p)
                    {
                      do
                      {
                        v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
                      }

                      while (v51 != v50);
                      v52 = __p;
                    }

                    v86 = v50;
                    operator delete(v52);
                  }

                  v39 = v83;
                  result = v35;
                  if (!v83)
                  {
                    goto LABEL_155;
                  }

                  v53 = v84;
                  v41 = v83;
                  if (v84 == v83)
                  {
                    goto LABEL_154;
                  }

                  do
                  {
                    v55 = *--v53;
                    v54 = v55;
                    *v53 = 0;
                    if (v55)
                    {
                      operator delete[](v54);
                    }
                  }

                  while (v53 != v39);
LABEL_153:
                  v41 = v83;
LABEL_154:
                  v84 = v39;
                  operator delete(v41);
                  result = v35;
                  goto LABEL_155;
                }

LABEL_46:
                if ((v14 & 0x800000) != 0)
                {
                  v69 = *(v9 + 68);
                  if (v69)
                  {
                    v27 = 0;
                    v71 = *(v9 + 72);
                    while (1)
                    {
                      v28 = v4;
                      v29 = *(v71 + 32 * v27 + 24);
                      v30 = *(*(*(v29 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
                      {
                        mlir::mps::isRegionMemrefRegionPassCompatible();
                      }

                      if (v30 == mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
                      {
                        break;
                      }

                      v31 = (*(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
                      v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
                      if (v32)
                      {
                        v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
                      }

                      else
                      {
                        v31 = 0;
                      }

                      v4 = v28;
                      *&v76[1] = v31;
                      v77 = v32;
                      if (v31)
                      {
                        if (!mlir::CallOpInterface::getArgOperands(&v76[1]))
                        {
                          goto LABEL_84;
                        }

                        v33 = mlir::CallableOpInterface::getArgAttrsAttr(&v76[1]);
                        if (a2)
                        {
                          v34 = 8 * a2;
                          while (*v33 != 0x8000000000000000)
                          {
                            ++v33;
                            v34 -= 8;
                            if (!v34)
                            {
                              goto LABEL_49;
                            }
                          }

LABEL_84:
                          if (!v76[0])
                          {
                            return 0;
                          }

                          v78[0] = "Non-static shapes for operands are not yet supported.";
                          v79 = 259;
                          mlir::Operation::emitError(v9, v78, v80);
                          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
                          v35 = result;
                          if (v80[0])
                          {
                            mlir::InFlightDiagnostic::report(v80);
                            result = v35;
                          }

                          if (v88 != 1)
                          {
                            return result;
                          }

                          if (v87 != &v88)
                          {
                            free(v87);
                            result = v35;
                          }

                          v44 = __p;
                          if (__p)
                          {
                            v45 = v86;
                            v46 = __p;
                            if (v86 != __p)
                            {
                              do
                              {
                                v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
                              }

                              while (v45 != v44);
                              v46 = __p;
                            }

                            v86 = v44;
                            operator delete(v46);
                            result = v35;
                          }

                          v39 = v83;
                          if (!v83)
                          {
                            goto LABEL_155;
                          }

                          v47 = v84;
                          v41 = v83;
                          if (v84 == v83)
                          {
                            goto LABEL_154;
                          }

                          do
                          {
                            v49 = *--v47;
                            v48 = v49;
                            *v47 = 0;
                            if (v49)
                            {
                              operator delete[](v48);
                            }
                          }

                          while (v47 != v39);
                          goto LABEL_153;
                        }
                      }

LABEL_49:
                      if (++v27 == v69)
                      {
                        goto LABEL_63;
                      }
                    }

                    if (!v76[0])
                    {
                      return 0;
                    }

                    v78[0] = "mpsx::ListType for operands is not yet supported.";
                    v79 = 259;
                    mlir::Operation::emitError(v9, v78, v80);
                    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
                    v35 = result;
                    if (v80[0])
                    {
                      mlir::InFlightDiagnostic::report(v80);
                      result = v35;
                    }

                    if (v88 != 1)
                    {
                      return result;
                    }

                    if (v87 != &v88)
                    {
                      free(v87);
                    }

                    v62 = __p;
                    if (__p)
                    {
                      v63 = v86;
                      v64 = __p;
                      if (v86 != __p)
                      {
                        do
                        {
                          v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
                        }

                        while (v63 != v62);
                        v64 = __p;
                      }

                      v86 = v62;
                      operator delete(v64);
                    }

                    v39 = v83;
                    result = v35;
                    if (!v83)
                    {
                      goto LABEL_155;
                    }

                    v65 = v84;
                    v41 = v83;
                    if (v84 == v83)
                    {
                      goto LABEL_154;
                    }

                    do
                    {
                      v67 = *--v65;
                      v66 = v67;
                      *v65 = 0;
                      if (v67)
                      {
                        operator delete[](v66);
                      }
                    }

                    while (v65 != v39);
                    goto LABEL_153;
                  }
                }
              }

              else
              {
                result = mlir::mps::isRegionMemrefRegionPassCompatible(v9, v76[0], v11);
                if ((result & 1) == 0)
                {
                  return result;
                }
              }

LABEL_63:
              v8 = v8[1];
              if (v8 == v7)
              {
                goto LABEL_4;
              }
            }

            if (!v76[0])
            {
              return 0;
            }

            v79 = 259;
            mlir::Operation::emitError(v9, v78, v80);
            result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
            v35 = result;
            if (v80[0])
            {
              mlir::InFlightDiagnostic::report(v80);
              result = v35;
            }

            if (v88 == 1)
            {
              if (v87 != &v88)
              {
                free(v87);
              }

              v56 = __p;
              if (__p)
              {
                v57 = v86;
                v58 = __p;
                if (v86 != __p)
                {
                  do
                  {
                    v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
                  }

                  while (v57 != v56);
                  v58 = __p;
                }

                v86 = v56;
                operator delete(v58);
              }

              v39 = v83;
              result = v35;
              if (v83)
              {
                v59 = v84;
                v41 = v83;
                if (v84 != v83)
                {
                  do
                  {
                    v61 = *--v59;
                    v60 = v61;
                    *v59 = 0;
                    if (v61)
                    {
                      operator delete[](v60);
                    }
                  }

                  while (v59 != v39);
                  goto LABEL_153;
                }

                goto LABEL_154;
              }

LABEL_155:
              if (v81 != &v82)
              {
                free(v81);
                return v35;
              }

              return result;
            }

            return result;
          }
        }

LABEL_4:
        ;
      }

      v2 = v75 + 1;
      v3 = v72;
      this = v73;
      if (v75 + 1 != v74)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

void mlir::mps::anonymous namespace::MemrefRegionPass::~MemrefRegionPass(mlir::mps::_anonymous_namespace_::MemrefRegionPass *this)
{
  *this = &unk_1F5B01A70;
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  if (*(this + 73))
  {
    v3 = *(this + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 35) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 35));
  v7 = *(this + 29);
  if (v7 != this + 248)
  {
    free(v7);
  }

  v8 = *(this + 23);
  if (v8 != this + 200)
  {
    free(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  if (*(this + 120) == 1)
  {
    v10 = *(this + 8);
    if (v10 != *(this + 7))
    {
      free(v10);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::mps::MPSMemrefRegionBase<mlir::mps::anonymous namespace::MemrefRegionPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAEA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFB318;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, "mps_spi", 7uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFCC40;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, "placement", 9uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AF27A8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::memref::MemRefDialect,void>::id, "memref", 6uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::MemrefRegionPass::runOnOperation(mlir::mps::_anonymous_namespace_::MemrefRegionPass *this, mlir::Operation *a2)
{
  v3 = *(this + 5);
  v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
  if ((v3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v3 & 0xFFFFFFFFFFFFFFF8);
  }

  if ((result & 1) == 0)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

double mlir::mps::MPSMemrefRegionBase<mlir::mps::anonymous namespace::MemrefRegionPass>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x158uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  result = 0.0;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  v4[19] = 0u;
  v4[20] = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5AFD1C8;
  *a2 = v4;
  return result;
}

uint64_t mlir::mps::anonymous namespace::MemrefRegionPass::runOnRegionForOp(mlir::mps::_anonymous_namespace_::MemrefRegionPass *this, mlir::Operation *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  result = mlir::mps::isRegionMemrefRegionPassCompatible(this, 0);
  if ((result & 1) == 0)
  {
    return result;
  }

  v80[0] = mlir::Attribute::getContext((this + 24));
  v80[1] = 0;
  v81 = 0;
  v82 = 0;
  v5 = *(this + 11);
  if ((v5 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v6 = ((this + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
  v75 = v6 + 24 * (v5 & 0x7FFFFF);
  while (1)
  {
    v7 = *(v6 + 8);
    if (v7 != v6)
    {
      break;
    }

LABEL_4:
    v6 += 24;
    if (v6 == v75)
    {
      return 1;
    }
  }

  v76 = v6;
  while (1)
  {
    if (v7)
    {
      v8 = (v7 - 8);
    }

    else
    {
      v8 = 0;
    }

    v9 = (v8 + 32);
    if (*(v8 + 4) == (v8 + 32))
    {
      goto LABEL_7;
    }

    v77 = v7;
    v90 = v92;
    v91 = 0x600000000;
    v10 = *(v8 + 5);
    if (v10 != v9)
    {
      break;
    }

    v6 = v76;
LABEL_7:
    v7 = *(v7 + 8);
    if (v7 == v6)
    {
      goto LABEL_4;
    }
  }

  do
  {
    v11 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v10, v4);
    if (v11 == mlir::Block::getTerminator(v8, v12))
    {
      break;
    }

    v13 = *(v11 + 36);
    v14 = v13 ? v11 - 16 : 0;
    v84.n128_u64[0] = v14;
    v84.n128_u64[1] = v13;
    mlir::ResultRange::use_begin(&v84, v87);
    v15 = *(v11 + 36);
    v16 = v15 ? v11 - 16 : 0;
    v84.n128_u64[0] = v16;
    v84.n128_u64[1] = v15;
    mlir::ResultRange::use_end(&v84, v96);
    v17 = v89;
    v95 = v89;
    v93 = *v87;
    v94 = v88;
    v18 = v97;
    if (v89 == v97)
    {
LABEL_26:
      if (!mlir::mps::opMayAliasSource(v11, v4))
      {
        v19 = *(*(v11 + 48) + 16);
        v20 = v19 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::mps::CreateTextureTensorOp,void>::id;
        v21 = v20 || v19 == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id;
        v22 = v21 || v19 == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id;
        v23 = v22 || v19 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
        if (!v23 && v19 != &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id)
        {
          v26 = v91;
          if (v91 >= HIDWORD(v91))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v92, v91 + 1, 8);
            v26 = v91;
          }

          *(v90 + v26) = v11;
          LODWORD(v91) = v91 + 1;
        }
      }
    }

    else
    {
      while (*(*(*(v17 + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
      {
        mlir::ResultRange::UseIterator::operator++(v87);
        v17 = v89;
        if (v89 == v18)
        {
          goto LABEL_26;
        }
      }
    }

    v10 = v10[1];
  }

  while (v10 != v9);
  v27 = v90;
  if (!v91)
  {
    v74 = 0;
    goto LABEL_109;
  }

  v79 = (v90 + 8 * v91);
LABEL_53:
  v28 = *v27;
  if ((*(*v27 + 11) & 0x7FFFFF) == 0 || ((v29 = *(*(v28 + 48) + 16), v29 != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id) ? (v30 = v29 == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id) : (v30 = 1), v30))
  {
    v31 = *(v28 + 16);
    v32 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*v27, v4);
    v81 = v31;
    v82 = v32;
    UnknownLoc = mlir::Builder::getUnknownLoc(v80, v33);
    *&v93 = &v94;
    *(&v93 + 1) = 0x600000000;
    v87[0] = &v88;
    v87[1] = 0x600000000;
    v35 = *(v28 + 36);
    if (v35)
    {
      v36 = v28 - 16;
    }

    else
    {
      v36 = 0;
    }

    if (!v35)
    {
      goto LABEL_100;
    }

    v37 = UnknownLoc;
    v38 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v36, v38);
      v40 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v40 + 8))
      {
        v41 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v40 + 8);
        v84.n128_u64[0] = v40;
        v84.n128_u64[1] = v41;
        if (v40)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(&v84);
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v84);
          v44 = v43;
          isSplat = mlir::ElementsAttr::isSplat(&v84);
          v46 = ArgAttrsAttr;
          v47 = v44;
          goto LABEL_73;
        }
      }

      else
      {
        v84 = 0uLL;
      }

      v83[0] = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::Type::isIndex(v83))
      {
        v86 = 1;
        Context = mlir::Attribute::getContext((v28 + 24));
        v49 = 64;
      }

      else
      {
        v83[0] = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
        if (!mlir::Type::isInteger(v83, 1))
        {
          v50 = 0;
          goto LABEL_74;
        }

        v86 = 1;
        Context = mlir::Attribute::getContext((v28 + 24));
        v49 = 1;
      }

      isSplat = mlir::IntegerType::get(Context, v49, 0);
      v46 = &v86;
      v47 = 1;
LABEL_73:
      v83[0] = mlir::MemRefType::get(v46, v47, isSplat, 0, 0, 0);
      v50 = mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType>(v80, v37, v83) - 16;
LABEL_74:
      v51 = DWORD2(v93);
      if (DWORD2(v93) >= HIDWORD(v93))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, &v94, DWORD2(v93) + 1, 8);
        v51 = DWORD2(v93);
      }

      *(v93 + 8 * v51) = v50;
      ++DWORD2(v93);
      v52 = LODWORD(v87[1]);
      if (LODWORD(v87[1]) >= HIDWORD(v87[1]))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v87, &v88, LODWORD(v87[1]) + 1, 8);
        v52 = LODWORD(v87[1]);
      }

      *(v87[0] + v52) = NextResultAtOffset;
      ++LODWORD(v87[1]);
      if (v35 == ++v38)
      {
        if (DWORD2(v93))
        {
          v53 = mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,llvm::SmallVector<mlir::Value,6u> &>(v80, v37, &v93);
          v54 = ((v53 + 16 * ((*(v53 + 44) >> 23) & 1) + ((*(v53 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 40);
          mlir::ValueRange::ValueRange(v84.n128_u64, 0, 0);
          Block = mlir::OpBuilder::createBlock(v80, v54, 0, v84.n128_i64[0], v84.n128_i64[1], 0, 0);
          v56 = Block[5];
          v81 = Block;
          v82 = v56;
          mlir::Operation::moveBefore(v28, Block, Block + 4);
          mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,llvm::SmallVector<mlir::Value,6u> &>(v80, v37, v87);
          v57 = *(v53 + 16);
          v59 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v53, v58) + 8);
          v81 = v57;
          v82 = v59;
          v84.n128_u64[0] = v85;
          v84.n128_u64[1] = 0x600000000;
          if (DWORD2(v93))
          {
            v60 = v93;
            v61 = 8 * DWORD2(v93);
            do
            {
              v62 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(v80, v37, v60);
              v63 = v84.n128_u32[2];
              if (v84.n128_u32[2] >= v84.n128_u32[3])
              {
                v65 = v62;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v85, v84.n128_u32[2] + 1, 8);
                v62 = v65;
                v63 = v84.n128_u32[2];
              }

              *(v84.n128_u64[0] + 8 * v63) = v62 - 16;
              v64 = ++v84.n128_u32[2];
              v60 += 8;
              v61 -= 8;
            }

            while (v61);
            v66 = v84.n128_u64[0];
            v67 = *(v28 + 36);
            if (v67)
            {
              v68 = v28 - 16;
            }

            else
            {
              v68 = 0;
            }

            if (v67 && v64)
            {
              v69 = 0;
              v70 = 8 * v64 - 8;
              v71 = v67 - 1;
              v72 = v84.n128_u64[0];
              do
              {
                v83[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v68, v69);
                v83[1] = v72;
                if (v71 == v69)
                {
                  break;
                }

                ++v69;
                v73 = v70;
                v70 -= 8;
                ++v72;
              }

              while (v73);
              v66 = v84.n128_u64[0];
            }

            if (v66 != v85)
            {
              free(v66);
            }
          }
        }

LABEL_100:
        if (v87[0] != &v88)
        {
          free(v87[0]);
        }

        if (v93 != &v94)
        {
          free(v93);
        }

LABEL_52:
        if (++v27 == v79)
        {
          v74 = 0;
          goto LABEL_108;
        }

        goto LABEL_53;
      }
    }
  }

  if (v78)
  {
    goto LABEL_52;
  }

  v74 = 1;
LABEL_108:
  v27 = v90;
LABEL_109:
  if (v27 != v92)
  {
    free(v27);
  }

  v6 = v76;
  v7 = v77;
  if (!v74)
  {
    goto LABEL_7;
  }

  return v78;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,mlir::Value &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::mpsx::MemrefBackedOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::UseMemrefOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,mlir::Value &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::func::ReturnOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::UseMemrefOp,void>::id)
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

const char *llvm::getTypeName<mlir::mpsx::ListType>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mpsx::ListType]";
  v6 = 70;
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

uint64_t mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::mps *this, mlir::DialectRegistry *a2)
{
  mlir::DialectRegistry::addExtension<mlir::mps::MPSDialect>(this, mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke);
  mlir::DialectRegistry::addExtension<mlir::mpsx::MPSXDialect>(this, mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_1::__invoke);

  return mlir::DialectRegistry::addExtension<mlir::mps_spi::MPSSPIDialect>(this, mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_2::__invoke);
}

void mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ACosOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.acos";
LABEL_1676:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1466;
    v1485 = 8;
    goto LABEL_1700;
  }

  v4 = v2;
  v5 = v2[2];
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v2[1];
    Values = mlir::SparseElementsAttr::getValues(v2122);
    v5 = v4[2];
  }

  else
  {
    Values = v2[3];
  }

  {
    v1907 = v5;
    v1467 = Values;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    Values = v1467;
    v5 = v1907;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(Values, v5, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v7 = malloc(8uLL);
  v8 = v7;
  {
    v1908 = v7;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v8 = v1908;
  }

  mlir::detail::InterfaceMap::insert((v4 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ACoshOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.acosh";
LABEL_1674:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1468;
    v1485 = 9;
    goto LABEL_1700;
  }

  v11 = v9;
  v12 = v9[2];
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v9[1];
    v13 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1493 = v13;
  v1700 = v12;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v13 = v1493;
  v12 = v1700;
LABEL_12:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v14 = malloc(8uLL);
  v15 = v14;
  {
    v1909 = v14;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v15 = v1909;
  }

  mlir::detail::InterfaceMap::insert((v11 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ASinOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.asin";
    goto LABEL_1676;
  }

  v18 = v16;
  v19 = v16[2];
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v16[1];
    v20 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1494 = v20;
  v1701 = v19;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v20 = v1494;
  v19 = v1701;
LABEL_17:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v21 = malloc(8uLL);
  v22 = v21;
  {
    v1910 = v21;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v22 = v1910;
  }

  mlir::detail::InterfaceMap::insert((v18 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v22);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ASinhOp,void>::id, a1);
  if ((v24 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.asinh";
    goto LABEL_1674;
  }

  v25 = v23;
  v26 = v23[2];
  if (v26 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v23[1];
    v27 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1495 = v27;
  v1702 = v26;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v27 = v1495;
  v26 = v1702;
LABEL_22:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v27, v26, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v28 = malloc(8uLL);
  v29 = v28;
  {
    v1911 = v28;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v29 = v1911;
  }

  mlir::detail::InterfaceMap::insert((v25 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v29);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ATan2Op,void>::id, a1);
  if ((v31 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.atan2";
    goto LABEL_1674;
  }

  v32 = v30;
  v33 = v30[2];
  if (v33 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v30[1];
    v34 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1496 = v34;
  v1703 = v33;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v34 = v1496;
  v33 = v1703;
LABEL_27:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v34, v33, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v35 = malloc(8uLL);
  v36 = v35;
  {
    v1912 = v35;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v36 = v1912;
  }

  mlir::detail::InterfaceMap::insert((v32 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v36);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ATanOp,void>::id, a1);
  if ((v38 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.atan";
    goto LABEL_1676;
  }

  v39 = v37;
  v40 = v37[2];
  if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v37[1];
    v41 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1497 = v41;
  v1704 = v40;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v41 = v1497;
  v40 = v1704;
LABEL_32:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v41, v40, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v42 = malloc(8uLL);
  v43 = v42;
  {
    v1913 = v42;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v43 = v1913;
  }

  mlir::detail::InterfaceMap::insert((v39 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v43);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ATanhOp,void>::id, a1);
  if ((v45 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.atanh";
    goto LABEL_1674;
  }

  v46 = v44;
  v47 = v44[2];
  if (v47 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v44[1];
    v48 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1498 = v48;
  v1705 = v47;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v48 = v1498;
  v47 = v1705;
LABEL_37:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v48, v47, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v49 = malloc(8uLL);
  v50 = v49;
  {
    v1914 = v49;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v50 = v1914;
  }

  mlir::detail::InterfaceMap::insert((v46 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v50);
  v51 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AbsoluteOp,void>::id, a1);
  if ((v52 & 1) == 0)
  {
    v2121 = 1283;
    v1469 = "mps.absolute";
LABEL_1590:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1469;
    v1485 = 12;
    goto LABEL_1700;
  }

  v53 = v51;
  v54 = v51[2];
  if (v54 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v51[1];
    v55 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1499 = v55;
  v1706 = v54;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v55 = v1499;
  v54 = v1706;
LABEL_42:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v55, v54, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v56 = malloc(8uLL);
  v57 = v56;
  {
    v1915 = v56;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v57 = v1915;
  }

  mlir::detail::InterfaceMap::insert((v53 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v57);
  v58 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AbsoluteSquareOp,void>::id, a1);
  if ((v59 & 1) == 0)
  {
    v2121 = 1283;
    v1470 = "mps.absolute_square";
LABEL_1642:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1470;
    v1485 = 19;
    goto LABEL_1700;
  }

  v60 = v58;
  v61 = v58[2];
  if (v61 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v58[1];
    v62 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1500 = v62;
  v1707 = v61;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v62 = v1500;
  v61 = v1707;
LABEL_47:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v62, v61, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v63 = malloc(8uLL);
  v64 = v63;
  {
    v1916 = v63;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v64 = v1916;
  }

  mlir::detail::InterfaceMap::insert((v60 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v64);
  v65 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, a1);
  if ((v66 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.add";
LABEL_1625:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1471;
    v1485 = 7;
    goto LABEL_1700;
  }

  v67 = v65;
  v68 = v65[2];
  if (v68 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v65[1];
    v69 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1501 = v69;
  v1708 = v68;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v69 = v1501;
  v68 = v1708;
LABEL_52:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v69, v68, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v70 = malloc(8uLL);
  v71 = v70;
  {
    v1917 = v70;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v71 = v1917;
  }

  mlir::detail::InterfaceMap::insert((v67 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v71);
  v72 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AndOp,void>::id, a1);
  if ((v73 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.and";
    goto LABEL_1625;
  }

  v74 = v72;
  v75 = v72[2];
  if (v75 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v72[1];
    v76 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1502 = v76;
  v1709 = v75;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v76 = v1502;
  v75 = v1709;
LABEL_57:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v76, v75, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v77 = malloc(8uLL);
  v78 = v77;
  {
    v1918 = v77;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v78 = v1918;
  }

  mlir::detail::InterfaceMap::insert((v74 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v78);
  v79 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id, a1);
  if ((v80 & 1) == 0)
  {
    v2121 = 1283;
    v1470 = "mps.assign_variable";
    goto LABEL_1642;
  }

  v81 = v79;
  v82 = v79[2];
  if (v82 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v79[1];
    v83 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1503 = v83;
  v1710 = v82;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v83 = v1503;
  v82 = v1710;
LABEL_62:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v83, v82, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v84 = malloc(8uLL);
  v85 = v84;
  {
    v1919 = v84;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v85 = v1919;
  }

  mlir::detail::InterfaceMap::insert((v81 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v85);
  v86 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BandPartOp,void>::id, a1);
  if ((v87 & 1) == 0)
  {
    v2121 = 1283;
    v1472 = "mps.band_part";
LABEL_1669:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1472;
    v1485 = 13;
    goto LABEL_1700;
  }

  v88 = v86;
  v89 = v86[2];
  if (v89 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v86[1];
    v90 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1504 = v90;
  v1711 = v89;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v90 = v1504;
  v89 = v1711;
LABEL_67:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v90, v89, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v91 = malloc(8uLL);
  v92 = v91;
  {
    v1920 = v91;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v92 = v1920;
  }

  mlir::detail::InterfaceMap::insert((v88 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v92);
  v93 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseAndOp,void>::id, a1);
  if ((v94 & 1) == 0)
  {
    v2121 = 1283;
    v1473 = "mps.bitwise_and";
LABEL_1699:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1473;
    v1485 = 15;
LABEL_1700:
    v2120 = v1485;
    v2116 = ".";
    v2117 = 259;
    llvm::operator+(&v2118, &v2116, v2122);
    llvm::report_fatal_error(v2122, 1);
  }

  v95 = v93;
  v96 = v93[2];
  if (v96 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v93[1];
    v97 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1505 = v97;
  v1712 = v96;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v97 = v1505;
  v96 = v1712;
LABEL_72:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v97, v96, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v98 = malloc(8uLL);
  v99 = v98;
  {
    v1921 = v98;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v99 = v1921;
  }

  mlir::detail::InterfaceMap::insert((v95 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v99);
  v100 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseLeftShiftOp,void>::id, a1);
  if ((v101 & 1) == 0)
  {
    v2121 = 1283;
    v1474 = "mps.bitwise_left_shift";
LABEL_1647:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1474;
    v1485 = 22;
    goto LABEL_1700;
  }

  v102 = v100;
  v103 = v100[2];
  if (v103 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v100[1];
    v104 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1506 = v104;
  v1713 = v103;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v104 = v1506;
  v103 = v1713;
LABEL_77:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v104, v103, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v105 = malloc(8uLL);
  v106 = v105;
  {
    v1922 = v105;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v106 = v1922;
  }

  mlir::detail::InterfaceMap::insert((v102 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v106);
  v107 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseNotOp,void>::id, a1);
  if ((v108 & 1) == 0)
  {
    v2121 = 1283;
    v1473 = "mps.bitwise_not";
    goto LABEL_1699;
  }

  v109 = v107;
  v110 = v107[2];
  if (v110 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v107[1];
    v111 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1507 = v111;
  v1714 = v110;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v111 = v1507;
  v110 = v1714;
LABEL_82:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v111, v110, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v112 = malloc(8uLL);
  v113 = v112;
  {
    v1923 = v112;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v113 = v1923;
  }

  mlir::detail::InterfaceMap::insert((v109 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v113);
  v114 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseOrOp,void>::id, a1);
  if ((v115 & 1) == 0)
  {
    v2121 = 1283;
    v1475 = "mps.bitwise_or";
LABEL_1666:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1475;
    v1485 = 14;
    goto LABEL_1700;
  }

  v116 = v114;
  v117 = v114[2];
  if (v117 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v114[1];
    v118 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1508 = v118;
  v1715 = v117;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v118 = v1508;
  v117 = v1715;
LABEL_87:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v118, v117, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v119 = malloc(8uLL);
  v120 = v119;
  {
    v1924 = v119;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v120 = v1924;
  }

  mlir::detail::InterfaceMap::insert((v116 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v120);
  v121 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwisePopcountOp,void>::id, a1);
  if ((v122 & 1) == 0)
  {
    v2121 = 1283;
    v1476 = "mps.bitwise_popcount";
LABEL_1693:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1476;
    v1485 = 20;
    goto LABEL_1700;
  }

  v123 = v121;
  v124 = v121[2];
  if (v124 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v121[1];
    v125 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1509 = v125;
  v1716 = v124;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v125 = v1509;
  v124 = v1716;
LABEL_92:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v125, v124, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v126 = malloc(8uLL);
  v127 = v126;
  {
    v1925 = v126;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v127 = v1925;
  }

  mlir::detail::InterfaceMap::insert((v123 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v127);
  v128 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseRightShiftOp,void>::id, a1);
  if ((v129 & 1) == 0)
  {
    v2121 = 1283;
    v1477 = "mps.bitwise_right_shift";
LABEL_1684:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1477;
    v1485 = 23;
    goto LABEL_1700;
  }

  v130 = v128;
  v131 = v128[2];
  if (v131 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v128[1];
    v132 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1510 = v132;
  v1717 = v131;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v132 = v1510;
  v131 = v1717;
LABEL_97:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v132, v131, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v133 = malloc(8uLL);
  v134 = v133;
  {
    v1926 = v133;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v134 = v1926;
  }

  mlir::detail::InterfaceMap::insert((v130 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v134);
  v135 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseXorOp,void>::id, a1);
  if ((v136 & 1) == 0)
  {
    v2121 = 1283;
    v1473 = "mps.bitwise_xor";
    goto LABEL_1699;
  }

  v137 = v135;
  v138 = v135[2];
  if (v138 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v135[1];
    v139 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1511 = v139;
  v1718 = v138;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v139 = v1511;
  v138 = v1718;
LABEL_102:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v139, v138, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v140 = malloc(8uLL);
  v141 = v140;
  {
    v1927 = v140;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v141 = v1927;
  }

  mlir::detail::InterfaceMap::insert((v137 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v141);
  v142 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, a1);
  if ((v143 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.cast";
    goto LABEL_1676;
  }

  v144 = v142;
  v145 = v142[2];
  if (v145 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v142[1];
    v146 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1512 = v146;
  v1719 = v145;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v146 = v1512;
  v145 = v1719;
LABEL_107:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v146, v145, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v147 = malloc(8uLL);
  v148 = v147;
  {
    v1928 = v147;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v148 = v1928;
  }

  mlir::detail::InterfaceMap::insert((v144 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v148);
  v149 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CeilOp,void>::id, a1);
  if ((v150 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.ceil";
    goto LABEL_1676;
  }

  v151 = v149;
  v152 = v149[2];
  if (v152 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v149[1];
    v153 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1513 = v153;
  v1720 = v152;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v153 = v1513;
  v152 = v1720;
LABEL_112:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v153, v152, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v154 = malloc(8uLL);
  v155 = v154;
  {
    v1929 = v154;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v155 = v1929;
  }

  mlir::detail::InterfaceMap::insert((v151 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v155);
  v156 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ClampOp,void>::id, a1);
  if ((v157 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.clamp";
    goto LABEL_1674;
  }

  v158 = v156;
  v159 = v156[2];
  if (v159 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v156[1];
    v160 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1514 = v160;
  v1721 = v159;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v160 = v1514;
  v159 = v1721;
LABEL_117:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v160, v159, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v161 = malloc(8uLL);
  v162 = v161;
  {
    v1930 = v161;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v162 = v1930;
  }

  mlir::detail::InterfaceMap::insert((v158 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v162);
  v163 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ColToImOp,void>::id, a1);
  if ((v164 & 1) == 0)
  {
    v2121 = 1283;
    v1472 = "mps.col_to_im";
    goto LABEL_1669;
  }

  v165 = v163;
  v166 = v163[2];
  if (v166 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v163[1];
    v167 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1515 = v167;
  v1722 = v166;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v167 = v1515;
  v166 = v1722;
LABEL_122:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v167, v166, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v168 = malloc(8uLL);
  v169 = v168;
  {
    v1931 = v168;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v169 = v1931;
  }

  mlir::detail::InterfaceMap::insert((v165 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v169);
  v170 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConjugateOp,void>::id, a1);
  if ((v171 & 1) == 0)
  {
    v2121 = 1283;
    v1472 = "mps.conjugate";
    goto LABEL_1669;
  }

  v172 = v170;
  v173 = v170[2];
  if (v173 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v170[1];
    v174 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1516 = v174;
  v1723 = v173;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v174 = v1516;
  v173 = v1723;
LABEL_127:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v174, v173, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v175 = malloc(8uLL);
  v176 = v175;
  {
    v1932 = v175;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v176 = v1932;
  }

  mlir::detail::InterfaceMap::insert((v172 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v176);
  v177 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, a1);
  if ((v178 & 1) == 0)
  {
    v2121 = 1283;
    v1469 = "mps.constant";
    goto LABEL_1590;
  }

  v179 = v177;
  v180 = v177[2];
  if (v180 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v177[1];
    v181 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1517 = v181;
  v1724 = v180;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v181 = v1517;
  v180 = v1724;
LABEL_132:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v181, v180, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v182 = malloc(8uLL);
  v183 = v182;
  {
    v1933 = v182;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v183 = v1933;
  }

  mlir::detail::InterfaceMap::insert((v179 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v183);
  v184 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, a1);
  if ((v185 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.conv_2d";
LABEL_1657:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1478;
    v1485 = 11;
    goto LABEL_1700;
  }

  v186 = v184;
  v187 = v184[2];
  if (v187 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v184[1];
    v188 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1518 = v188;
  v1725 = v187;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v188 = v1518;
  v187 = v1725;
LABEL_137:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v188, v187, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v189 = malloc(8uLL);
  v190 = v189;
  {
    v1934 = v189;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v190 = v1934;
  }

  mlir::detail::InterfaceMap::insert((v186 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v190);
  v191 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id, a1);
  if ((v192 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.conv_3d";
    goto LABEL_1657;
  }

  v193 = v191;
  v194 = v191[2];
  if (v194 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v191[1];
    v195 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1519 = v195;
  v1726 = v194;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v195 = v1519;
  v194 = v1726;
LABEL_142:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v195, v194, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v196 = malloc(8uLL);
  v197 = v196;
  {
    v1935 = v196;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v197 = v1935;
  }

  mlir::detail::InterfaceMap::insert((v193 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v197);
  v198 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CosOp,void>::id, a1);
  if ((v199 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.cos";
    goto LABEL_1625;
  }

  v200 = v198;
  v201 = v198[2];
  if (v201 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v198[1];
    v202 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1520 = v202;
  v1727 = v201;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v202 = v1520;
  v201 = v1727;
LABEL_147:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v202, v201, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v203 = malloc(8uLL);
  v204 = v203;
  {
    v1936 = v203;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v204 = v1936;
  }

  mlir::detail::InterfaceMap::insert((v200 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v204);
  v205 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CoshOp,void>::id, a1);
  if ((v206 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.cosh";
    goto LABEL_1676;
  }

  v207 = v205;
  v208 = v205[2];
  if (v208 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v205[1];
    v209 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1521 = v209;
  v1728 = v208;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v209 = v1521;
  v208 = v1728;
LABEL_152:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v209, v208, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v210 = malloc(8uLL);
  v211 = v210;
  {
    v1937 = v210;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v211 = v1937;
  }

  mlir::detail::InterfaceMap::insert((v207 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v211);
  v212 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CostVolumeOp,void>::id, a1);
  if ((v213 & 1) == 0)
  {
    v2121 = 1283;
    v1473 = "mps.cost_volume";
    goto LABEL_1699;
  }

  v214 = v212;
  v215 = v212[2];
  if (v215 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v212[1];
    v216 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1522 = v216;
  v1729 = v215;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v216 = v1522;
  v215 = v1729;
LABEL_157:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v216, v215, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v217 = malloc(8uLL);
  v218 = v217;
  {
    v1938 = v217;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v218 = v1938;
  }

  mlir::detail::InterfaceMap::insert((v214 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v218);
  v219 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id, a1);
  if ((v220 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.create_complex";
LABEL_1691:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1479;
    v1485 = 18;
    goto LABEL_1700;
  }

  v221 = v219;
  v222 = v219[2];
  if (v222 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v219[1];
    v223 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1523 = v223;
  v1730 = v222;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v223 = v1523;
  v222 = v1730;
LABEL_162:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v223, v222, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v224 = malloc(8uLL);
  v225 = v224;
  {
    v1939 = v224;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v225 = v1939;
  }

  mlir::detail::InterfaceMap::insert((v221 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v225);
  v226 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropResizeOp,void>::id, a1);
  if ((v227 & 1) == 0)
  {
    v2121 = 1283;
    v1473 = "mps.crop_resize";
    goto LABEL_1699;
  }

  v228 = v226;
  v229 = v226[2];
  if (v229 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v226[1];
    v230 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1524 = v230;
  v1731 = v229;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v230 = v1524;
  v229 = v1731;
LABEL_167:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v230, v229, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v231 = malloc(8uLL);
  v232 = v231;
  {
    v1940 = v231;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v232 = v1940;
  }

  mlir::detail::InterfaceMap::insert((v228 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v232);
  v233 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id, a1);
  if ((v234 & 1) == 0)
  {
    v2121 = 1283;
    v1480 = "mps.depthwise_conv_2d";
LABEL_1655:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1480;
    v1485 = 21;
    goto LABEL_1700;
  }

  v235 = v233;
  v236 = v233[2];
  if (v236 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v233[1];
    v237 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1525 = v237;
  v1732 = v236;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v237 = v1525;
  v236 = v1732;
LABEL_172:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v237, v236, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v238 = malloc(8uLL);
  v239 = v238;
  {
    v1941 = v238;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v239 = v1941;
  }

  mlir::detail::InterfaceMap::insert((v235 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v239);
  v240 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id, a1);
  if ((v241 & 1) == 0)
  {
    v2121 = 1283;
    v1480 = "mps.depthwise_conv_3d";
    goto LABEL_1655;
  }

  v242 = v240;
  v243 = v240[2];
  if (v243 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v240[1];
    v244 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1526 = v244;
  v1733 = v243;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v244 = v1526;
  v243 = v1733;
LABEL_177:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v244, v243, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v245 = malloc(8uLL);
  v246 = v245;
  {
    v1942 = v245;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v246 = v1942;
  }

  mlir::detail::InterfaceMap::insert((v242 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v246);
  v247 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id, a1);
  if ((v248 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.dequantize_lut";
    goto LABEL_1691;
  }

  v249 = v247;
  v250 = v247[2];
  if (v250 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v247[1];
    v251 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1527 = v251;
  v1734 = v250;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v251 = v1527;
  v250 = v1734;
LABEL_182:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v251, v250, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v252 = malloc(8uLL);
  v253 = v252;
  {
    v1943 = v252;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v253 = v1943;
  }

  mlir::detail::InterfaceMap::insert((v249 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v253);
  v254 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, a1);
  if ((v255 & 1) == 0)
  {
    v2121 = 1283;
    v1475 = "mps.dequantize";
    goto LABEL_1666;
  }

  v256 = v254;
  v257 = v254[2];
  if (v257 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v254[1];
    v258 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1528 = v258;
  v1735 = v257;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v258 = v1528;
  v257 = v1735;
LABEL_187:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v258, v257, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v259 = malloc(8uLL);
  v260 = v259;
  {
    v1944 = v259;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v260 = v1944;
  }

  mlir::detail::InterfaceMap::insert((v256 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v260);
  v261 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id, a1);
  if ((v262 & 1) == 0)
  {
    v2121 = 1283;
    v1481 = "mps.divide";
LABEL_1644:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1481;
    v1485 = 10;
    goto LABEL_1700;
  }

  v263 = v261;
  v264 = v261[2];
  if (v264 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v261[1];
    v265 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1529 = v265;
  v1736 = v264;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v265 = v1529;
  v264 = v1736;
LABEL_192:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v265, v264, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v266 = malloc(8uLL);
  v267 = v266;
  {
    v1945 = v266;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v267 = v1945;
  }

  mlir::detail::InterfaceMap::insert((v263 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v267);
  v268 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DynamicShapeCastOp,void>::id, a1);
  if ((v269 & 1) == 0)
  {
    v2121 = 1283;
    v1474 = "mps.dynamic_shape_cast";
    goto LABEL_1647;
  }

  v270 = v268;
  v271 = v268[2];
  if (v271 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v268[1];
    v272 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1530 = v272;
  v1737 = v271;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v272 = v1530;
  v271 = v1737;
LABEL_197:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v272, v271, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v273 = malloc(8uLL);
  v274 = v273;
  {
    v1946 = v273;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v274 = v1946;
  }

  mlir::detail::InterfaceMap::insert((v270 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v274);
  v275 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::EluOp,void>::id, a1);
  if ((v276 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.elu";
    goto LABEL_1625;
  }

  v277 = v275;
  v278 = v275[2];
  if (v278 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v275[1];
    v279 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1531 = v279;
  v1738 = v278;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v279 = v1531;
  v278 = v1738;
LABEL_202:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v279, v278, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v280 = malloc(8uLL);
  v281 = v280;
  {
    v1947 = v280;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v281 = v1947;
  }

  mlir::detail::InterfaceMap::insert((v277 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v281);
  v282 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::EqualToOp,void>::id, a1);
  if ((v283 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.equal";
    goto LABEL_1674;
  }

  v284 = v282;
  v285 = v282[2];
  if (v285 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v282[1];
    v286 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1532 = v286;
  v1739 = v285;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v286 = v1532;
  v285 = v1739;
LABEL_207:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v286, v285, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v287 = malloc(8uLL);
  v288 = v287;
  {
    v1948 = v287;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v288 = v1948;
  }

  mlir::detail::InterfaceMap::insert((v284 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v288);
  v289 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ErfOp,void>::id, a1);
  if ((v290 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.erf";
    goto LABEL_1625;
  }

  v291 = v289;
  v292 = v289[2];
  if (v292 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v289[1];
    v293 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1533 = v293;
  v1740 = v292;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v293 = v1533;
  v292 = v1740;
LABEL_212:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v293, v292, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v294 = malloc(8uLL);
  v295 = v294;
  {
    v1949 = v294;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v295 = v1949;
  }

  mlir::detail::InterfaceMap::insert((v291 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v295);
  v296 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExponentBase10Op,void>::id, a1);
  if ((v297 & 1) == 0)
  {
    v2121 = 1283;
    v1476 = "mps.exponent_base_10";
    goto LABEL_1693;
  }

  v298 = v296;
  v299 = v296[2];
  if (v299 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v296[1];
    v300 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1534 = v300;
  v1741 = v299;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v300 = v1534;
  v299 = v1741;
LABEL_217:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v300, v299, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v301 = malloc(8uLL);
  v302 = v301;
  {
    v1950 = v301;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v302 = v1950;
  }

  mlir::detail::InterfaceMap::insert((v298 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v302);
  v303 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExponentBase2Op,void>::id, a1);
  if ((v304 & 1) == 0)
  {
    v2121 = 1283;
    v1470 = "mps.exponent_base_2";
    goto LABEL_1642;
  }

  v305 = v303;
  v306 = v303[2];
  if (v306 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v303[1];
    v307 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1535 = v307;
  v1742 = v306;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v307 = v1535;
  v306 = v1742;
LABEL_222:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v307, v306, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v308 = malloc(8uLL);
  v309 = v308;
  {
    v1951 = v308;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v309 = v1951;
  }

  mlir::detail::InterfaceMap::insert((v305 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v309);
  v310 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExponentOp,void>::id, a1);
  if ((v311 & 1) == 0)
  {
    v2121 = 1283;
    v1469 = "mps.exponent";
    goto LABEL_1590;
  }

  v312 = v310;
  v313 = v310[2];
  if (v313 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v310[1];
    v314 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1536 = v314;
  v1743 = v313;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v314 = v1536;
  v313 = v1743;
LABEL_227:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v314, v313, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v315 = malloc(8uLL);
  v316 = v315;
  {
    v1952 = v315;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v316 = v1952;
  }

  mlir::detail::InterfaceMap::insert((v312 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v316);
  v317 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FloorDivideOp,void>::id, a1);
  if ((v318 & 1) == 0)
  {
    v2121 = 1283;
    v1482 = "mps.floor_divide";
LABEL_1636:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1482;
    v1485 = 16;
    goto LABEL_1700;
  }

  v319 = v317;
  v320 = v317[2];
  if (v320 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v317[1];
    v321 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1537 = v321;
  v1744 = v320;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v321 = v1537;
  v320 = v1744;
LABEL_232:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v321, v320, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v322 = malloc(8uLL);
  v323 = v322;
  {
    v1953 = v322;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v323 = v1953;
  }

  mlir::detail::InterfaceMap::insert((v319 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v323);
  v324 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id, a1);
  if ((v325 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.floor";
    goto LABEL_1674;
  }

  v326 = v324;
  v327 = v324[2];
  if (v327 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v324[1];
    v328 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1538 = v328;
  v1745 = v327;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v328 = v1538;
  v327 = v1745;
LABEL_237:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v328, v327, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v329 = malloc(8uLL);
  v330 = v329;
  {
    v1954 = v329;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v330 = v1954;
  }

  mlir::detail::InterfaceMap::insert((v326 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v330);
  v331 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GRUGradientOp,void>::id, a1);
  if ((v332 & 1) == 0)
  {
    v2121 = 1283;
    v1482 = "mps.gru_gradient";
    goto LABEL_1636;
  }

  v333 = v331;
  v334 = v331[2];
  if (v334 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v331[1];
    v335 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1539 = v335;
  v1746 = v334;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v335 = v1539;
  v334 = v1746;
LABEL_242:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v335, v334, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v336 = malloc(8uLL);
  v337 = v336;
  {
    v1955 = v336;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v337 = v1955;
  }

  mlir::detail::InterfaceMap::insert((v333 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v337);
  v338 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GRUOp,void>::id, a1);
  if ((v339 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.gru";
    goto LABEL_1625;
  }

  v340 = v338;
  v341 = v338[2];
  if (v341 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v338[1];
    v342 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1540 = v342;
  v1747 = v341;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v342 = v1540;
  v341 = v1747;
LABEL_247:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v342, v341, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v343 = malloc(8uLL);
  v344 = v343;
  {
    v1956 = v343;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v344 = v1956;
  }

  mlir::detail::InterfaceMap::insert((v340 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v344);
  v345 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherNDOp,void>::id, a1);
  if ((v346 & 1) == 0)
  {
    v2121 = 1283;
    v1472 = "mps.gather_nd";
    goto LABEL_1669;
  }

  v347 = v345;
  v348 = v345[2];
  if (v348 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v345[1];
    v349 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1541 = v349;
  v1748 = v348;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v349 = v1541;
  v348 = v1748;
LABEL_252:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v349, v348, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v350 = malloc(8uLL);
  v351 = v350;
  {
    v1957 = v350;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v351 = v1957;
  }

  mlir::detail::InterfaceMap::insert((v347 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v351);
  v352 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GeluOp,void>::id, a1);
  if ((v353 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.gelu";
    goto LABEL_1676;
  }

  v354 = v352;
  v355 = v352[2];
  if (v355 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v352[1];
    v356 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1542 = v356;
  v1749 = v355;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v356 = v1542;
  v355 = v1749;
LABEL_257:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v356, v355, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v357 = malloc(8uLL);
  v358 = v357;
  {
    v1958 = v357;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v358 = v1958;
  }

  mlir::detail::InterfaceMap::insert((v354 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v358);
  v359 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOp,void>::id, a1);
  if ((v360 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.greater";
    goto LABEL_1657;
  }

  v361 = v359;
  v362 = v359[2];
  if (v362 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v359[1];
    v363 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1543 = v363;
  v1750 = v362;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v363 = v1543;
  v362 = v1750;
LABEL_262:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v363, v362, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v364 = malloc(8uLL);
  v365 = v364;
  {
    v1959 = v364;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v365 = v1959;
  }

  mlir::detail::InterfaceMap::insert((v361 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v365);
  v366 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOrEqualToOp,void>::id, a1);
  if ((v367 & 1) == 0)
  {
    v2121 = 1283;
    v1483 = "mps.greater_equal";
LABEL_1678:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1483;
    v1485 = 17;
    goto LABEL_1700;
  }

  v368 = v366;
  v369 = v366[2];
  if (v369 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v366[1];
    v370 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1544 = v370;
  v1751 = v369;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v370 = v1544;
  v369 = v1751;
LABEL_267:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v370, v369, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v371 = malloc(8uLL);
  v372 = v371;
  {
    v1960 = v371;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v372 = v1960;
  }

  mlir::detail::InterfaceMap::insert((v368 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v372);
  v373 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::HammingDistanceOp,void>::id, a1);
  if ((v374 & 1) == 0)
  {
    v2121 = 1283;
    v1476 = "mps.hamming_distance";
    goto LABEL_1693;
  }

  v375 = v373;
  v376 = v373[2];
  if (v376 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v373[1];
    v377 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1545 = v377;
  v1752 = v376;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v377 = v1545;
  v376 = v1752;
LABEL_272:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v377, v376, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v378 = malloc(8uLL);
  v379 = v378;
  {
    v1961 = v378;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v379 = v1961;
  }

  mlir::detail::InterfaceMap::insert((v375 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v379);
  v380 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IdentityOp,void>::id, a1);
  if ((v381 & 1) == 0)
  {
    v2121 = 1283;
    v1469 = "mps.identity";
    goto LABEL_1590;
  }

  v382 = v380;
  v383 = v380[2];
  if (v383 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v380[1];
    v384 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1546 = v384;
  v1753 = v383;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v384 = v1546;
  v383 = v1753;
LABEL_277:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v384, v383, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v385 = malloc(8uLL);
  v386 = v385;
  {
    v1962 = v385;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v386 = v1962;
  }

  mlir::detail::InterfaceMap::insert((v382 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v386);
  v387 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ImToColOp,void>::id, a1);
  if ((v388 & 1) == 0)
  {
    v2121 = 1283;
    v1472 = "mps.im_to_col";
    goto LABEL_1669;
  }

  v389 = v387;
  v390 = v387[2];
  if (v390 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v387[1];
    v391 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1547 = v391;
  v1754 = v390;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v391 = v1547;
  v390 = v1754;
LABEL_282:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v391, v390, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v392 = malloc(8uLL);
  v393 = v392;
  {
    v1963 = v392;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v393 = v1963;
  }

  mlir::detail::InterfaceMap::insert((v389 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v393);
  v394 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ImaginaryPartOp,void>::id, a1);
  if ((v395 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.imaginary_part";
    goto LABEL_1691;
  }

  v396 = v394;
  v397 = v394[2];
  if (v397 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v394[1];
    v398 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1548 = v398;
  v1755 = v397;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v398 = v1548;
  v397 = v1755;
LABEL_287:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v398, v397, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v399 = malloc(8uLL);
  v400 = v399;
  {
    v1964 = v399;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v400 = v1964;
  }

  mlir::detail::InterfaceMap::insert((v396 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v400);
  v401 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IsFiniteOp,void>::id, a1);
  if ((v402 & 1) == 0)
  {
    v2121 = 1283;
    v1472 = "mps.is_finite";
    goto LABEL_1669;
  }

  v403 = v401;
  v404 = v401[2];
  if (v404 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v401[1];
    v405 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1549 = v405;
  v1756 = v404;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v405 = v1549;
  v404 = v1756;
LABEL_292:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v405, v404, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v406 = malloc(8uLL);
  v407 = v406;
  {
    v1965 = v406;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v407 = v1965;
  }

  mlir::detail::InterfaceMap::insert((v403 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v407);
  v408 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IsInfiniteOp,void>::id, a1);
  if ((v409 & 1) == 0)
  {
    v2121 = 1283;
    v1473 = "mps.is_infinite";
    goto LABEL_1699;
  }

  v410 = v408;
  v411 = v408[2];
  if (v411 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v408[1];
    v412 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1550 = v412;
  v1757 = v411;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v412 = v1550;
  v411 = v1757;
LABEL_297:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v412, v411, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v413 = malloc(8uLL);
  v414 = v413;
  {
    v1966 = v413;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v414 = v1966;
  }

  mlir::detail::InterfaceMap::insert((v410 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v414);
  v415 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IsNaNOp,void>::id, a1);
  if ((v416 & 1) == 0)
  {
    v2121 = 1283;
    v1481 = "mps.is_nan";
    goto LABEL_1644;
  }

  v417 = v415;
  v418 = v415[2];
  if (v418 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v415[1];
    v419 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1551 = v419;
  v1758 = v418;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v419 = v1551;
  v418 = v1758;
LABEL_302:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v419, v418, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v420 = malloc(8uLL);
  v421 = v420;
  {
    v1967 = v420;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v421 = v1967;
  }

  mlir::detail::InterfaceMap::insert((v417 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v421);
  v422 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LSTMGradientOp,void>::id, a1);
  if ((v423 & 1) == 0)
  {
    v2121 = 1283;
    v1483 = "mps.lstm_gradient";
    goto LABEL_1678;
  }

  v424 = v422;
  v425 = v422[2];
  if (v425 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v422[1];
    v426 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1552 = v426;
  v1759 = v425;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v426 = v1552;
  v425 = v1759;
LABEL_307:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v426, v425, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v427 = malloc(8uLL);
  v428 = v427;
  {
    v1968 = v427;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v428 = v1968;
  }

  mlir::detail::InterfaceMap::insert((v424 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v428);
  v429 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LSTMOp,void>::id, a1);
  if ((v430 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.lstm";
    goto LABEL_1676;
  }

  v431 = v429;
  v432 = v429[2];
  if (v432 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v429[1];
    v433 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1553 = v433;
  v1760 = v432;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v433 = v1553;
  v432 = v1760;
LABEL_312:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v433, v432, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v434 = malloc(8uLL);
  v435 = v434;
  {
    v1969 = v434;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v435 = v1969;
  }

  mlir::detail::InterfaceMap::insert((v431 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v435);
  v436 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LeakyReluOp,void>::id, a1);
  if ((v437 & 1) == 0)
  {
    v2121 = 1283;
    v1475 = "mps.leaky_relu";
    goto LABEL_1666;
  }

  v438 = v436;
  v439 = v436[2];
  if (v439 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v436[1];
    v440 = mlir::SparseElementsAttr::getValues(v2122);
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

  v1554 = v440;
  v1761 = v439;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v440 = v1554;
  v439 = v1761;
LABEL_317:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v440, v439, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v441 = malloc(8uLL);
  v442 = v441;
  {
    v1970 = v441;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v442 = v1970;
  }

  mlir::detail::InterfaceMap::insert((v438 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v442);
  v443 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LessThanOp,void>::id, a1);
  if ((v444 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.less";
    goto LABEL_1676;
  }

  v445 = v443;
  v446 = v443[2];
  if (v446 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v443[1];
    v447 = mlir::SparseElementsAttr::getValues(v2122);
    v446 = v445[2];
    {
      goto LABEL_322;
    }
  }

  else
  {
    v447 = v443[3];
    {
      goto LABEL_322;
    }
  }

  v1555 = v447;
  v1762 = v446;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v447 = v1555;
  v446 = v1762;
LABEL_322:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v447, v446, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v448 = malloc(8uLL);
  v449 = v448;
  {
    v1971 = v448;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v449 = v1971;
  }

  mlir::detail::InterfaceMap::insert((v445 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v449);
  v450 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LessThanOrEqualToOp,void>::id, a1);
  if ((v451 & 1) == 0)
  {
    v2121 = 1283;
    v1475 = "mps.less_equal";
    goto LABEL_1666;
  }

  v452 = v450;
  v453 = v450[2];
  if (v453 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v450[1];
    v454 = mlir::SparseElementsAttr::getValues(v2122);
    v453 = v452[2];
    {
      goto LABEL_327;
    }
  }

  else
  {
    v454 = v450[3];
    {
      goto LABEL_327;
    }
  }

  v1556 = v454;
  v1763 = v453;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v454 = v1556;
  v453 = v1763;
LABEL_327:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v454, v453, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v455 = malloc(8uLL);
  v456 = v455;
  {
    v1972 = v455;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v456 = v1972;
  }

  mlir::detail::InterfaceMap::insert((v452 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v456);
  v457 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionDataGradientOp,void>::id, a1);
  if ((v458 & 1) == 0)
  {
    v2121 = 1283;
    v1484 = "mps.local_convolution_data_gradient";
LABEL_1611:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1484;
    v1485 = 35;
    goto LABEL_1700;
  }

  v459 = v457;
  v460 = v457[2];
  if (v460 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v457[1];
    v461 = mlir::SparseElementsAttr::getValues(v2122);
    v460 = v459[2];
    {
      goto LABEL_332;
    }
  }

  else
  {
    v461 = v457[3];
    {
      goto LABEL_332;
    }
  }

  v1557 = v461;
  v1764 = v460;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v461 = v1557;
  v460 = v1764;
LABEL_332:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v461, v460, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v462 = malloc(8uLL);
  v463 = v462;
  {
    v1973 = v462;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v463 = v1973;
  }

  mlir::detail::InterfaceMap::insert((v459 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v463);
  v464 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionOp,void>::id, a1);
  if ((v465 & 1) == 0)
  {
    v2121 = 1283;
    v1480 = "mps.local_convolution";
    goto LABEL_1655;
  }

  v466 = v464;
  v467 = v464[2];
  if (v467 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v464[1];
    v468 = mlir::SparseElementsAttr::getValues(v2122);
    v467 = v466[2];
    {
      goto LABEL_337;
    }
  }

  else
  {
    v468 = v464[3];
    {
      goto LABEL_337;
    }
  }

  v1558 = v468;
  v1765 = v467;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v468 = v1558;
  v467 = v1765;
LABEL_337:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v468, v467, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v469 = malloc(8uLL);
  v470 = v469;
  {
    v1974 = v469;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v470 = v1974;
  }

  mlir::detail::InterfaceMap::insert((v466 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v470);
  v471 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionWeightGradientOp,void>::id, a1);
  if ((v472 & 1) == 0)
  {
    v2121 = 1283;
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = "mps.local_convolution_weight_gradient";
    v1485 = 37;
    goto LABEL_1700;
  }

  v473 = v471;
  v474 = v471[2];
  if (v474 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v471[1];
    v475 = mlir::SparseElementsAttr::getValues(v2122);
    v474 = v473[2];
    {
      goto LABEL_342;
    }
  }

  else
  {
    v475 = v471[3];
    {
      goto LABEL_342;
    }
  }

  v1559 = v475;
  v1766 = v474;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v475 = v1559;
  v474 = v1766;
LABEL_342:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v475, v474, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v476 = malloc(8uLL);
  v477 = v476;
  {
    v1975 = v476;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v477 = v1975;
  }

  mlir::detail::InterfaceMap::insert((v473 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v477);
  v478 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LogarithmBase10Op,void>::id, a1);
  if ((v479 & 1) == 0)
  {
    v2121 = 1283;
    v1480 = "mps.logarithm_base_10";
    goto LABEL_1655;
  }

  v480 = v478;
  v481 = v478[2];
  if (v481 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v478[1];
    v482 = mlir::SparseElementsAttr::getValues(v2122);
    v481 = v480[2];
    {
      goto LABEL_347;
    }
  }

  else
  {
    v482 = v478[3];
    {
      goto LABEL_347;
    }
  }

  v1560 = v482;
  v1767 = v481;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v482 = v1560;
  v481 = v1767;
LABEL_347:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v482, v481, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v483 = malloc(8uLL);
  v484 = v483;
  {
    v1976 = v483;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v484 = v1976;
  }

  mlir::detail::InterfaceMap::insert((v480 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v484);
  v485 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LogarithmBase2Op,void>::id, a1);
  if ((v486 & 1) == 0)
  {
    v2121 = 1283;
    v1476 = "mps.logarithm_base_2";
    goto LABEL_1693;
  }

  v487 = v485;
  v488 = v485[2];
  if (v488 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v485[1];
    v489 = mlir::SparseElementsAttr::getValues(v2122);
    v488 = v487[2];
    {
      goto LABEL_352;
    }
  }

  else
  {
    v489 = v485[3];
    {
      goto LABEL_352;
    }
  }

  v1561 = v489;
  v1768 = v488;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v489 = v1561;
  v488 = v1768;
LABEL_352:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v489, v488, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v490 = malloc(8uLL);
  v491 = v490;
  {
    v1977 = v490;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v491 = v1977;
  }

  mlir::detail::InterfaceMap::insert((v487 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v491);
  v492 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id, a1);
  if ((v493 & 1) == 0)
  {
    v2121 = 1283;
    v1472 = "mps.logarithm";
    goto LABEL_1669;
  }

  v494 = v492;
  v495 = v492[2];
  if (v495 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v492[1];
    v496 = mlir::SparseElementsAttr::getValues(v2122);
    v495 = v494[2];
    {
      goto LABEL_357;
    }
  }

  else
  {
    v496 = v492[3];
    {
      goto LABEL_357;
    }
  }

  v1562 = v496;
  v1769 = v495;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v496 = v1562;
  v495 = v1769;
LABEL_357:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v496, v495, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v497 = malloc(8uLL);
  v498 = v497;
  {
    v1978 = v497;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v498 = v1978;
  }

  mlir::detail::InterfaceMap::insert((v494 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v498);
  v499 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, a1);
  if ((v500 & 1) == 0)
  {
    v2121 = 1283;
    v1481 = "mps.matmul";
    goto LABEL_1644;
  }

  v501 = v499;
  v502 = v499[2];
  if (v502 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v499[1];
    v503 = mlir::SparseElementsAttr::getValues(v2122);
    v502 = v501[2];
    {
      goto LABEL_362;
    }
  }

  else
  {
    v503 = v499[3];
    {
      goto LABEL_362;
    }
  }

  v1563 = v503;
  v1770 = v502;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v503 = v1563;
  v502 = v1770;
LABEL_362:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v503, v502, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v504 = malloc(8uLL);
  v505 = v504;
  {
    v1979 = v504;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v505 = v1979;
  }

  mlir::detail::InterfaceMap::insert((v501 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v505);
  v506 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id, a1);
  if ((v507 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.maximum";
    goto LABEL_1657;
  }

  v508 = v506;
  v509 = v506[2];
  if (v509 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v506[1];
    v510 = mlir::SparseElementsAttr::getValues(v2122);
    v509 = v508[2];
    {
      goto LABEL_367;
    }
  }

  else
  {
    v510 = v506[3];
    {
      goto LABEL_367;
    }
  }

  v1564 = v510;
  v1771 = v509;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v510 = v1564;
  v509 = v1771;
LABEL_367:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v510, v509, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v511 = malloc(8uLL);
  v512 = v511;
  {
    v1980 = v511;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v512 = v1980;
  }

  mlir::detail::InterfaceMap::insert((v508 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v512);
  v513 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id, a1);
  if ((v514 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.minimum";
    goto LABEL_1657;
  }

  v515 = v513;
  v516 = v513[2];
  if (v516 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v513[1];
    v517 = mlir::SparseElementsAttr::getValues(v2122);
    v516 = v515[2];
    {
      goto LABEL_372;
    }
  }

  else
  {
    v517 = v513[3];
    {
      goto LABEL_372;
    }
  }

  v1565 = v517;
  v1772 = v516;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v517 = v1565;
  v516 = v1772;
LABEL_372:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v517, v516, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v518 = malloc(8uLL);
  v519 = v518;
  {
    v1981 = v518;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v519 = v1981;
  }

  mlir::detail::InterfaceMap::insert((v515 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v519);
  v520 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ModuloOp,void>::id, a1);
  if ((v521 & 1) == 0)
  {
    v2121 = 1283;
    v1481 = "mps.modulo";
    goto LABEL_1644;
  }

  v522 = v520;
  v523 = v520[2];
  if (v523 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v520[1];
    v524 = mlir::SparseElementsAttr::getValues(v2122);
    v523 = v522[2];
    {
      goto LABEL_377;
    }
  }

  else
  {
    v524 = v520[3];
    {
      goto LABEL_377;
    }
  }

  v1566 = v524;
  v1773 = v523;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v524 = v1566;
  v523 = v1773;
LABEL_377:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v524, v523, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v525 = malloc(8uLL);
  v526 = v525;
  {
    v1982 = v525;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v526 = v1982;
  }

  mlir::detail::InterfaceMap::insert((v522 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v526);
  v527 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, a1);
  if ((v528 & 1) == 0)
  {
    v2121 = 1283;
    v1469 = "mps.multiply";
    goto LABEL_1590;
  }

  v529 = v527;
  v530 = v527[2];
  if (v530 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v527[1];
    v531 = mlir::SparseElementsAttr::getValues(v2122);
    v530 = v529[2];
    {
      goto LABEL_382;
    }
  }

  else
  {
    v531 = v527[3];
    {
      goto LABEL_382;
    }
  }

  v1567 = v531;
  v1774 = v530;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v531 = v1567;
  v530 = v1774;
LABEL_382:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v531, v530, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v532 = malloc(8uLL);
  v533 = v532;
  {
    v1983 = v532;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v533 = v1983;
  }

  mlir::detail::InterfaceMap::insert((v529 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v533);
  v534 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NReluOp,void>::id, a1);
  if ((v535 & 1) == 0)
  {
    v2121 = 1283;
    v1481 = "mps.n_relu";
    goto LABEL_1644;
  }

  v536 = v534;
  v537 = v534[2];
  if (v537 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v534[1];
    v538 = mlir::SparseElementsAttr::getValues(v2122);
    v537 = v536[2];
    {
      goto LABEL_387;
    }
  }

  else
  {
    v538 = v534[3];
    {
      goto LABEL_387;
    }
  }

  v1568 = v538;
  v1775 = v537;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v538 = v1568;
  v537 = v1775;
LABEL_387:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v538, v537, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v539 = malloc(8uLL);
  v540 = v539;
  {
    v1984 = v539;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v540 = v1984;
  }

  mlir::detail::InterfaceMap::insert((v536 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v540);
  v541 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NandOp,void>::id, a1);
  if ((v542 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.nand";
    goto LABEL_1676;
  }

  v543 = v541;
  v544 = v541[2];
  if (v544 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v541[1];
    v545 = mlir::SparseElementsAttr::getValues(v2122);
    v544 = v543[2];
    {
      goto LABEL_392;
    }
  }

  else
  {
    v545 = v541[3];
    {
      goto LABEL_392;
    }
  }

  v1569 = v545;
  v1776 = v544;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v545 = v1569;
  v544 = v1776;
LABEL_392:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v545, v544, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v546 = malloc(8uLL);
  v547 = v546;
  {
    v1985 = v546;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v547 = v1985;
  }

  mlir::detail::InterfaceMap::insert((v543 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v547);
  v548 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NegativeOp,void>::id, a1);
  if ((v549 & 1) == 0)
  {
    v2121 = 1283;
    v1469 = "mps.negative";
    goto LABEL_1590;
  }

  v550 = v548;
  v551 = v548[2];
  if (v551 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v548[1];
    v552 = mlir::SparseElementsAttr::getValues(v2122);
    v551 = v550[2];
    {
      goto LABEL_397;
    }
  }

  else
  {
    v552 = v548[3];
    {
      goto LABEL_397;
    }
  }

  v1570 = v552;
  v1777 = v551;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v552 = v1570;
  v551 = v1777;
LABEL_397:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v552, v551, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v553 = malloc(8uLL);
  v554 = v553;
  {
    v1986 = v553;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v554 = v1986;
  }

  mlir::detail::InterfaceMap::insert((v550 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v554);
  v555 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NorOp,void>::id, a1);
  if ((v556 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.nor";
    goto LABEL_1625;
  }

  v557 = v555;
  v558 = v555[2];
  if (v558 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v555[1];
    v559 = mlir::SparseElementsAttr::getValues(v2122);
    v558 = v557[2];
    {
      goto LABEL_402;
    }
  }

  else
  {
    v559 = v555[3];
    {
      goto LABEL_402;
    }
  }

  v1571 = v559;
  v1778 = v558;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v559 = v1571;
  v558 = v1778;
LABEL_402:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v559, v558, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v560 = malloc(8uLL);
  v561 = v560;
  {
    v1987 = v560;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v561 = v1987;
  }

  mlir::detail::InterfaceMap::insert((v557 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v561);
  v562 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NotEqualToOp,void>::id, a1);
  if ((v563 & 1) == 0)
  {
    v2121 = 1283;
    v1472 = "mps.not_equal";
    goto LABEL_1669;
  }

  v564 = v562;
  v565 = v562[2];
  if (v565 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v562[1];
    v566 = mlir::SparseElementsAttr::getValues(v2122);
    v565 = v564[2];
    {
      goto LABEL_407;
    }
  }

  else
  {
    v566 = v562[3];
    {
      goto LABEL_407;
    }
  }

  v1572 = v566;
  v1779 = v565;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v566 = v1572;
  v565 = v1779;
LABEL_407:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v566, v565, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v567 = malloc(8uLL);
  v568 = v567;
  {
    v1988 = v567;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v568 = v1988;
  }

  mlir::detail::InterfaceMap::insert((v564 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v568);
  v569 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NotOp,void>::id, a1);
  if ((v570 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.not";
    goto LABEL_1625;
  }

  v571 = v569;
  v572 = v569[2];
  if (v572 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v569[1];
    v573 = mlir::SparseElementsAttr::getValues(v2122);
    v572 = v571[2];
    {
      goto LABEL_412;
    }
  }

  else
  {
    v573 = v569[3];
    {
      goto LABEL_412;
    }
  }

  v1573 = v573;
  v1780 = v572;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v573 = v1573;
  v572 = v1780;
LABEL_412:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v573, v572, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v574 = malloc(8uLL);
  v575 = v574;
  {
    v1989 = v574;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v575 = v1989;
  }

  mlir::detail::InterfaceMap::insert((v571 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v575);
  v576 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::OrOp,void>::id, a1);
  if ((v577 & 1) == 0)
  {
    v2121 = 1283;
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = "mps.or";
    v1485 = 6;
    goto LABEL_1700;
  }

  v578 = v576;
  v579 = v576[2];
  if (v579 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v576[1];
    v580 = mlir::SparseElementsAttr::getValues(v2122);
    v579 = v578[2];
    {
      goto LABEL_417;
    }
  }

  else
  {
    v580 = v576[3];
    {
      goto LABEL_417;
    }
  }

  v1574 = v580;
  v1781 = v579;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v580 = v1574;
  v579 = v1781;
LABEL_417:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v580, v579, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v581 = malloc(8uLL);
  v582 = v581;
  {
    v1990 = v581;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v582 = v1990;
  }

  mlir::detail::InterfaceMap::insert((v578 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v582);
  v583 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PReluOp,void>::id, a1);
  if ((v584 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.prelu";
    goto LABEL_1674;
  }

  v585 = v583;
  v586 = v583[2];
  if (v586 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v583[1];
    v587 = mlir::SparseElementsAttr::getValues(v2122);
    v586 = v585[2];
    {
      goto LABEL_422;
    }
  }

  else
  {
    v587 = v583[3];
    {
      goto LABEL_422;
    }
  }

  v1575 = v587;
  v1782 = v586;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v587 = v1575;
  v586 = v1782;
LABEL_422:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v587, v586, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v588 = malloc(8uLL);
  v589 = v588;
  {
    v1991 = v588;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v589 = v1991;
  }

  mlir::detail::InterfaceMap::insert((v585 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v589);
  v590 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolAvgGradientOp,void>::id, a1);
  if ((v591 & 1) == 0)
  {
    v2121 = 1283;
    v1486 = "mps.pooling_average_gradient";
LABEL_1682:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1486;
    v1485 = 28;
    goto LABEL_1700;
  }

  v592 = v590;
  v593 = v590[2];
  if (v593 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v590[1];
    v594 = mlir::SparseElementsAttr::getValues(v2122);
    v593 = v592[2];
    {
      goto LABEL_427;
    }
  }

  else
  {
    v594 = v590[3];
    {
      goto LABEL_427;
    }
  }

  v1576 = v594;
  v1783 = v593;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v594 = v1576;
  v593 = v1783;
LABEL_427:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v594, v593, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v595 = malloc(8uLL);
  v596 = v595;
  {
    v1992 = v595;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v596 = v1992;
  }

  mlir::detail::InterfaceMap::insert((v592 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v596);
  v597 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolAvgOp,void>::id, a1);
  if ((v598 & 1) == 0)
  {
    v2121 = 1283;
    v1470 = "mps.pooling_average";
    goto LABEL_1642;
  }

  v599 = v597;
  v600 = v597[2];
  if (v600 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v597[1];
    v601 = mlir::SparseElementsAttr::getValues(v2122);
    v600 = v599[2];
    {
      goto LABEL_432;
    }
  }

  else
  {
    v601 = v597[3];
    {
      goto LABEL_432;
    }
  }

  v1577 = v601;
  v1784 = v600;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v601 = v1577;
  v600 = v1784;
LABEL_432:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v601, v600, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v602 = malloc(8uLL);
  v603 = v602;
  {
    v1993 = v602;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v603 = v1993;
  }

  mlir::detail::InterfaceMap::insert((v599 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v603);
  v604 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolL2NormGradientOp,void>::id, a1);
  if ((v605 & 1) == 0)
  {
    v2121 = 1283;
    v1486 = "mps.pooling_l2_norm_gradient";
    goto LABEL_1682;
  }

  v606 = v604;
  v607 = v604[2];
  if (v607 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v604[1];
    v608 = mlir::SparseElementsAttr::getValues(v2122);
    v607 = v606[2];
    {
      goto LABEL_437;
    }
  }

  else
  {
    v608 = v604[3];
    {
      goto LABEL_437;
    }
  }

  v1578 = v608;
  v1785 = v607;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v608 = v1578;
  v607 = v1785;
LABEL_437:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v608, v607, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v609 = malloc(8uLL);
  v610 = v609;
  {
    v1994 = v609;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v610 = v1994;
  }

  mlir::detail::InterfaceMap::insert((v606 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v610);
  v611 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolL2NormOp,void>::id, a1);
  if ((v612 & 1) == 0)
  {
    v2121 = 1283;
    v1470 = "mps.pooling_l2_norm";
    goto LABEL_1642;
  }

  v613 = v611;
  v614 = v611[2];
  if (v614 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v611[1];
    v615 = mlir::SparseElementsAttr::getValues(v2122);
    v614 = v613[2];
    {
      goto LABEL_442;
    }
  }

  else
  {
    v615 = v611[3];
    {
      goto LABEL_442;
    }
  }

  v1579 = v615;
  v1786 = v614;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v615 = v1579;
  v614 = v1786;
LABEL_442:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v615, v614, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v616 = malloc(8uLL);
  v617 = v616;
  {
    v1995 = v616;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v617 = v1995;
  }

  mlir::detail::InterfaceMap::insert((v613 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v617);
  v618 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolMaxGradientOp,void>::id, a1);
  if ((v619 & 1) == 0)
  {
    v2121 = 1283;
    v1487 = "mps.pooling_max_gradient";
LABEL_1662:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1487;
    v1485 = 24;
    goto LABEL_1700;
  }

  v620 = v618;
  v621 = v618[2];
  if (v621 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v618[1];
    v622 = mlir::SparseElementsAttr::getValues(v2122);
    v621 = v620[2];
    {
      goto LABEL_447;
    }
  }

  else
  {
    v622 = v618[3];
    {
      goto LABEL_447;
    }
  }

  v1580 = v622;
  v1787 = v621;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v622 = v1580;
  v621 = v1787;
LABEL_447:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v622, v621, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v623 = malloc(8uLL);
  v624 = v623;
  {
    v1996 = v623;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v624 = v1996;
  }

  mlir::detail::InterfaceMap::insert((v620 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v624);
  v625 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolMaxOp,void>::id, a1);
  if ((v626 & 1) == 0)
  {
    v2121 = 1283;
    v1473 = "mps.pooling_max";
    goto LABEL_1699;
  }

  v627 = v625;
  v628 = v625[2];
  if (v628 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v625[1];
    v629 = mlir::SparseElementsAttr::getValues(v2122);
    v628 = v627[2];
    {
      goto LABEL_452;
    }
  }

  else
  {
    v629 = v625[3];
    {
      goto LABEL_452;
    }
  }

  v1581 = v629;
  v1788 = v628;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v629 = v1581;
  v628 = v1788;
LABEL_452:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v629, v628, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v630 = malloc(8uLL);
  v631 = v630;
  {
    v1997 = v630;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v631 = v1997;
  }

  mlir::detail::InterfaceMap::insert((v627 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v631);
  v632 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id, a1);
  if ((v633 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.power";
    goto LABEL_1674;
  }

  v634 = v632;
  v635 = v632[2];
  if (v635 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v632[1];
    v636 = mlir::SparseElementsAttr::getValues(v2122);
    v635 = v634[2];
    {
      goto LABEL_457;
    }
  }

  else
  {
    v636 = v632[3];
    {
      goto LABEL_457;
    }
  }

  v1582 = v636;
  v1789 = v635;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v636 = v1582;
  v635 = v1789;
LABEL_457:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v636, v635, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v637 = malloc(8uLL);
  v638 = v637;
  {
    v1998 = v637;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v638 = v1998;
  }

  mlir::detail::InterfaceMap::insert((v634 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v638);
  v639 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PruningGradientOp,void>::id, a1);
  if ((v640 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.prune_gradient";
    goto LABEL_1691;
  }

  v641 = v639;
  v642 = v639[2];
  if (v642 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v639[1];
    v643 = mlir::SparseElementsAttr::getValues(v2122);
    v642 = v641[2];
    {
      goto LABEL_462;
    }
  }

  else
  {
    v643 = v639[3];
    {
      goto LABEL_462;
    }
  }

  v1583 = v643;
  v1790 = v642;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v643 = v1583;
  v642 = v1790;
LABEL_462:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v643, v642, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v644 = malloc(8uLL);
  v645 = v644;
  {
    v1999 = v644;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v645 = v1999;
  }

  mlir::detail::InterfaceMap::insert((v641 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v645);
  v646 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PruningOp,void>::id, a1);
  if ((v647 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.prune";
    goto LABEL_1674;
  }

  v648 = v646;
  v649 = v646[2];
  if (v649 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v646[1];
    v650 = mlir::SparseElementsAttr::getValues(v2122);
    v649 = v648[2];
    {
      goto LABEL_467;
    }
  }

  else
  {
    v650 = v646[3];
    {
      goto LABEL_467;
    }
  }

  v1584 = v650;
  v1791 = v649;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v650 = v1584;
  v649 = v1791;
LABEL_467:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v650, v649, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v651 = malloc(8uLL);
  v652 = v651;
  {
    v2000 = v651;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v652 = v2000;
  }

  mlir::detail::InterfaceMap::insert((v648 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v652);
  v653 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id, a1);
  if ((v654 & 1) == 0)
  {
    v2121 = 1283;
    v1469 = "mps.quantize";
    goto LABEL_1590;
  }

  v655 = v653;
  v656 = v653[2];
  if (v656 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v653[1];
    v657 = mlir::SparseElementsAttr::getValues(v2122);
    v656 = v655[2];
    {
      goto LABEL_472;
    }
  }

  else
  {
    v657 = v653[3];
    {
      goto LABEL_472;
    }
  }

  v1585 = v657;
  v1792 = v656;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v657 = v1585;
  v656 = v1792;
LABEL_472:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v657, v656, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v658 = malloc(8uLL);
  v659 = v658;
  {
    v2001 = v658;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v659 = v2001;
  }

  mlir::detail::InterfaceMap::insert((v655 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v659);
  v660 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id, a1);
  if ((v661 & 1) == 0)
  {
    v2121 = 1283;
    v1477 = "mps.read_data_from_file";
    goto LABEL_1684;
  }

  v662 = v660;
  v663 = v660[2];
  if (v663 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v660[1];
    v664 = mlir::SparseElementsAttr::getValues(v2122);
    v663 = v662[2];
    {
      goto LABEL_477;
    }
  }

  else
  {
    v664 = v660[3];
    {
      goto LABEL_477;
    }
  }

  v1586 = v664;
  v1793 = v663;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v664 = v1586;
  v663 = v1793;
LABEL_477:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v664, v663, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v665 = malloc(8uLL);
  v666 = v665;
  {
    v2002 = v665;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v666 = v2002;
  }

  mlir::detail::InterfaceMap::insert((v662 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v666);
  v667 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id, a1);
  if ((v668 & 1) == 0)
  {
    v2121 = 1283;
    v1483 = "mps.read_variable";
    goto LABEL_1678;
  }

  v669 = v667;
  v670 = v667[2];
  if (v670 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v667[1];
    v671 = mlir::SparseElementsAttr::getValues(v2122);
    v670 = v669[2];
    {
      goto LABEL_482;
    }
  }

  else
  {
    v671 = v667[3];
    {
      goto LABEL_482;
    }
  }

  v1587 = v671;
  v1794 = v670;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v671 = v1587;
  v670 = v1794;
LABEL_482:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v671, v670, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v672 = malloc(8uLL);
  v673 = v672;
  {
    v2003 = v672;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v673 = v2003;
  }

  mlir::detail::InterfaceMap::insert((v669 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v673);
  v674 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RealPartOp,void>::id, a1);
  if ((v675 & 1) == 0)
  {
    v2121 = 1283;
    v1472 = "mps.real_part";
    goto LABEL_1669;
  }

  v676 = v674;
  v677 = v674[2];
  if (v677 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v674[1];
    v678 = mlir::SparseElementsAttr::getValues(v2122);
    v677 = v676[2];
    {
      goto LABEL_487;
    }
  }

  else
  {
    v678 = v674[3];
    {
      goto LABEL_487;
    }
  }

  v1588 = v678;
  v1795 = v677;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v678 = v1588;
  v677 = v1795;
LABEL_487:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v678, v677, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v679 = malloc(8uLL);
  v680 = v679;
  {
    v2004 = v679;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v680 = v2004;
  }

  mlir::detail::InterfaceMap::insert((v676 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v680);
  v681 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalOp,void>::id, a1);
  if ((v682 & 1) == 0)
  {
    v2121 = 1283;
    v1475 = "mps.reciprocal";
    goto LABEL_1666;
  }

  v683 = v681;
  v684 = v681[2];
  if (v684 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v681[1];
    v685 = mlir::SparseElementsAttr::getValues(v2122);
    v684 = v683[2];
    {
      goto LABEL_492;
    }
  }

  else
  {
    v685 = v681[3];
    {
      goto LABEL_492;
    }
  }

  v1589 = v685;
  v1796 = v684;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v685 = v1589;
  v684 = v1796;
LABEL_492:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v685, v684, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v686 = malloc(8uLL);
  v687 = v686;
  {
    v2005 = v686;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v687 = v2005;
  }

  mlir::detail::InterfaceMap::insert((v683 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v687);
  v688 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id, a1);
  if ((v689 & 1) == 0)
  {
    v2121 = 1283;
    v1488 = "mps.reciprocal_square_root";
LABEL_1659:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1488;
    v1485 = 26;
    goto LABEL_1700;
  }

  v690 = v688;
  v691 = v688[2];
  if (v691 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v688[1];
    v692 = mlir::SparseElementsAttr::getValues(v2122);
    v691 = v690[2];
    {
      goto LABEL_497;
    }
  }

  else
  {
    v692 = v688[3];
    {
      goto LABEL_497;
    }
  }

  v1590 = v692;
  v1797 = v691;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v692 = v1590;
  v691 = v1797;
LABEL_497:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v692, v691, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v693 = malloc(8uLL);
  v694 = v693;
  {
    v2006 = v693;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v694 = v2006;
  }

  mlir::detail::InterfaceMap::insert((v690 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v694);
  v695 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id, a1);
  if ((v696 & 1) == 0)
  {
    v2121 = 1283;
    v1476 = "mps.reinterpret_cast";
    goto LABEL_1693;
  }

  v697 = v695;
  v698 = v695[2];
  if (v698 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v695[1];
    v699 = mlir::SparseElementsAttr::getValues(v2122);
    v698 = v697[2];
    {
      goto LABEL_502;
    }
  }

  else
  {
    v699 = v695[3];
    {
      goto LABEL_502;
    }
  }

  v1591 = v699;
  v1798 = v698;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v699 = v1591;
  v698 = v1798;
LABEL_502:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v699, v698, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v700 = malloc(8uLL);
  v701 = v700;
  {
    v2007 = v700;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v701 = v2007;
  }

  mlir::detail::InterfaceMap::insert((v697 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v701);
  v702 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Relu6Op,void>::id, a1);
  if ((v703 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.relu6";
    goto LABEL_1674;
  }

  v704 = v702;
  v705 = v702[2];
  if (v705 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v702[1];
    v706 = mlir::SparseElementsAttr::getValues(v2122);
    v705 = v704[2];
    {
      goto LABEL_507;
    }
  }

  else
  {
    v706 = v702[3];
    {
      goto LABEL_507;
    }
  }

  v1592 = v706;
  v1799 = v705;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v706 = v1592;
  v705 = v1799;
LABEL_507:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v706, v705, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v707 = malloc(8uLL);
  v708 = v707;
  {
    v2008 = v707;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v708 = v2008;
  }

  mlir::detail::InterfaceMap::insert((v704 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v708);
  v709 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReluGradOp,void>::id, a1);
  if ((v710 & 1) == 0)
  {
    v2121 = 1283;
    v1472 = "mps.relu_grad";
    goto LABEL_1669;
  }

  v711 = v709;
  v712 = v709[2];
  if (v712 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v709[1];
    v713 = mlir::SparseElementsAttr::getValues(v2122);
    v712 = v711[2];
    {
      goto LABEL_512;
    }
  }

  else
  {
    v713 = v709[3];
    {
      goto LABEL_512;
    }
  }

  v1593 = v713;
  v1800 = v712;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v713 = v1593;
  v712 = v1800;
LABEL_512:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v713, v712, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v714 = malloc(8uLL);
  v715 = v714;
  {
    v2009 = v714;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v715 = v2009;
  }

  mlir::detail::InterfaceMap::insert((v711 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v715);
  v716 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id, a1);
  if ((v717 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.relu";
    goto LABEL_1676;
  }

  v718 = v716;
  v719 = v716[2];
  if (v719 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v716[1];
    v720 = mlir::SparseElementsAttr::getValues(v2122);
    v719 = v718[2];
    {
      goto LABEL_517;
    }
  }

  else
  {
    v720 = v716[3];
    {
      goto LABEL_517;
    }
  }

  v1594 = v720;
  v1801 = v719;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v720 = v1594;
  v719 = v1801;
LABEL_517:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v720, v719, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v721 = malloc(8uLL);
  v722 = v721;
  {
    v2010 = v721;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v722 = v2010;
  }

  mlir::detail::InterfaceMap::insert((v718 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v722);
  v723 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RintOp,void>::id, a1);
  if ((v724 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.rint";
    goto LABEL_1676;
  }

  v725 = v723;
  v726 = v723[2];
  if (v726 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v723[1];
    v727 = mlir::SparseElementsAttr::getValues(v2122);
    v726 = v725[2];
    {
      goto LABEL_522;
    }
  }

  else
  {
    v727 = v723[3];
    {
      goto LABEL_522;
    }
  }

  v1595 = v727;
  v1802 = v726;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v727 = v1595;
  v726 = v1802;
LABEL_522:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v727, v726, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v728 = malloc(8uLL);
  v729 = v728;
  {
    v2011 = v728;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v729 = v2011;
  }

  mlir::detail::InterfaceMap::insert((v725 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v729);
  v730 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RoundOp,void>::id, a1);
  if ((v731 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.round";
    goto LABEL_1674;
  }

  v732 = v730;
  v733 = v730[2];
  if (v733 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v730[1];
    v734 = mlir::SparseElementsAttr::getValues(v2122);
    v733 = v732[2];
    {
      goto LABEL_527;
    }
  }

  else
  {
    v734 = v730[3];
    {
      goto LABEL_527;
    }
  }

  v1596 = v734;
  v1803 = v733;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v734 = v1596;
  v733 = v1803;
LABEL_527:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v734, v733, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v735 = malloc(8uLL);
  v736 = v735;
  {
    v2012 = v735;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v736 = v2012;
  }

  mlir::detail::InterfaceMap::insert((v732 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v736);
  v737 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterNDOp,void>::id, a1);
  if ((v738 & 1) == 0)
  {
    v2121 = 1283;
    v1475 = "mps.scatter_nd";
    goto LABEL_1666;
  }

  v739 = v737;
  v740 = v737[2];
  if (v740 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v737[1];
    v741 = mlir::SparseElementsAttr::getValues(v2122);
    v740 = v739[2];
    {
      goto LABEL_532;
    }
  }

  else
  {
    v741 = v737[3];
    {
      goto LABEL_532;
    }
  }

  v1597 = v741;
  v1804 = v740;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v741 = v1597;
  v740 = v1804;
LABEL_532:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v741, v740, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v742 = malloc(8uLL);
  v743 = v742;
  {
    v2013 = v742;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v743 = v2013;
  }

  mlir::detail::InterfaceMap::insert((v739 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v743);
  v744 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, a1);
  if ((v745 & 1) == 0)
  {
    v2121 = 1283;
    v1481 = "mps.select";
    goto LABEL_1644;
  }

  v746 = v744;
  v747 = v744[2];
  if (v747 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v744[1];
    v748 = mlir::SparseElementsAttr::getValues(v2122);
    v747 = v746[2];
    {
      goto LABEL_537;
    }
  }

  else
  {
    v748 = v744[3];
    {
      goto LABEL_537;
    }
  }

  v1598 = v748;
  v1805 = v747;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v748 = v1598;
  v747 = v1805;
LABEL_537:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v748, v747, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v749 = malloc(8uLL);
  v750 = v749;
  {
    v2014 = v749;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v750 = v2014;
  }

  mlir::detail::InterfaceMap::insert((v746 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v750);
  v751 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SignOp,void>::id, a1);
  if ((v752 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.sign";
    goto LABEL_1676;
  }

  v753 = v751;
  v754 = v751[2];
  if (v754 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v751[1];
    v755 = mlir::SparseElementsAttr::getValues(v2122);
    v754 = v753[2];
    {
      goto LABEL_542;
    }
  }

  else
  {
    v755 = v751[3];
    {
      goto LABEL_542;
    }
  }

  v1599 = v755;
  v1806 = v754;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v755 = v1599;
  v754 = v1806;
LABEL_542:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v755, v754, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v756 = malloc(8uLL);
  v757 = v756;
  {
    v2015 = v756;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v757 = v2015;
  }

  mlir::detail::InterfaceMap::insert((v753 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v757);
  v758 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SignbitOp,void>::id, a1);
  if ((v759 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.signbit";
    goto LABEL_1657;
  }

  v760 = v758;
  v761 = v758[2];
  if (v761 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v758[1];
    v762 = mlir::SparseElementsAttr::getValues(v2122);
    v761 = v760[2];
    {
      goto LABEL_547;
    }
  }

  else
  {
    v762 = v758[3];
    {
      goto LABEL_547;
    }
  }

  v1600 = v762;
  v1807 = v761;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v762 = v1600;
  v761 = v1807;
LABEL_547:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v762, v761, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v763 = malloc(8uLL);
  v764 = v763;
  {
    v2016 = v763;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v764 = v2016;
  }

  mlir::detail::InterfaceMap::insert((v760 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v764);
  v765 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SinOp,void>::id, a1);
  if ((v766 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.sin";
    goto LABEL_1625;
  }

  v767 = v765;
  v768 = v765[2];
  if (v768 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v765[1];
    v769 = mlir::SparseElementsAttr::getValues(v2122);
    v768 = v767[2];
    {
      goto LABEL_552;
    }
  }

  else
  {
    v769 = v765[3];
    {
      goto LABEL_552;
    }
  }

  v1601 = v769;
  v1808 = v768;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v769 = v1601;
  v768 = v1808;
LABEL_552:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v769, v768, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v770 = malloc(8uLL);
  v771 = v770;
  {
    v2017 = v770;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v771 = v2017;
  }

  mlir::detail::InterfaceMap::insert((v767 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v771);
  v772 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNGradientOp,void>::id, a1);
  if ((v773 & 1) == 0)
  {
    v2121 = 1283;
    v1489 = "mps.singlegate_rnn_gradient";
LABEL_1695:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1489;
    v1485 = 27;
    goto LABEL_1700;
  }

  v774 = v772;
  v775 = v772[2];
  if (v775 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v772[1];
    v776 = mlir::SparseElementsAttr::getValues(v2122);
    v775 = v774[2];
    {
      goto LABEL_557;
    }
  }

  else
  {
    v776 = v772[3];
    {
      goto LABEL_557;
    }
  }

  v1602 = v776;
  v1809 = v775;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v776 = v1602;
  v775 = v1809;
LABEL_557:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v776, v775, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v777 = malloc(8uLL);
  v778 = v777;
  {
    v2018 = v777;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v778 = v2018;
  }

  mlir::detail::InterfaceMap::insert((v774 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v778);
  v779 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNOp,void>::id, a1);
  if ((v780 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.singlegate_rnn";
    goto LABEL_1691;
  }

  v781 = v779;
  v782 = v779[2];
  if (v782 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v779[1];
    v783 = mlir::SparseElementsAttr::getValues(v2122);
    v782 = v781[2];
    {
      goto LABEL_562;
    }
  }

  else
  {
    v783 = v779[3];
    {
      goto LABEL_562;
    }
  }

  v1603 = v783;
  v1810 = v782;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v783 = v1603;
  v782 = v1810;
LABEL_562:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v783, v782, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v784 = malloc(8uLL);
  v785 = v784;
  {
    v2019 = v784;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v785 = v2019;
  }

  mlir::detail::InterfaceMap::insert((v781 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v785);
  v786 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SinhOp,void>::id, a1);
  if ((v787 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.sinh";
    goto LABEL_1676;
  }

  v788 = v786;
  v789 = v786[2];
  if (v789 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v786[1];
    v790 = mlir::SparseElementsAttr::getValues(v2122);
    v789 = v788[2];
    {
      goto LABEL_567;
    }
  }

  else
  {
    v790 = v786[3];
    {
      goto LABEL_567;
    }
  }

  v1604 = v790;
  v1811 = v789;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v790 = v1604;
  v789 = v1811;
LABEL_567:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v790, v789, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v791 = malloc(8uLL);
  v792 = v791;
  {
    v2020 = v791;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v792 = v2020;
  }

  mlir::detail::InterfaceMap::insert((v788 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v792);
  v793 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftplusOp,void>::id, a1);
  if ((v794 & 1) == 0)
  {
    v2121 = 1283;
    v1469 = "mps.softplus";
    goto LABEL_1590;
  }

  v795 = v793;
  v796 = v793[2];
  if (v796 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v793[1];
    v797 = mlir::SparseElementsAttr::getValues(v2122);
    v796 = v795[2];
    {
      goto LABEL_572;
    }
  }

  else
  {
    v797 = v793[3];
    {
      goto LABEL_572;
    }
  }

  v1605 = v797;
  v1812 = v796;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v797 = v1605;
  v796 = v1812;
LABEL_572:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v797, v796, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v798 = malloc(8uLL);
  v799 = v798;
  {
    v2021 = v798;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v799 = v2021;
  }

  mlir::detail::InterfaceMap::insert((v795 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v799);
  v800 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftplusParametricOp,void>::id, a1);
  if ((v801 & 1) == 0)
  {
    v2121 = 1283;
    v1477 = "mps.softplus_parametric";
    goto LABEL_1684;
  }

  v802 = v800;
  v803 = v800[2];
  if (v803 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v800[1];
    v804 = mlir::SparseElementsAttr::getValues(v2122);
    v803 = v802[2];
    {
      goto LABEL_577;
    }
  }

  else
  {
    v804 = v800[3];
    {
      goto LABEL_577;
    }
  }

  v1606 = v804;
  v1813 = v803;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v804 = v1606;
  v803 = v1813;
LABEL_577:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v804, v803, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v805 = malloc(8uLL);
  v806 = v805;
  {
    v2022 = v805;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v806 = v2022;
  }

  mlir::detail::InterfaceMap::insert((v802 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v806);
  v807 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftsignOp,void>::id, a1);
  if ((v808 & 1) == 0)
  {
    v2121 = 1283;
    v1469 = "mps.softsign";
    goto LABEL_1590;
  }

  v809 = v807;
  v810 = v807[2];
  if (v810 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v807[1];
    v811 = mlir::SparseElementsAttr::getValues(v2122);
    v810 = v809[2];
    {
      goto LABEL_582;
    }
  }

  else
  {
    v811 = v807[3];
    {
      goto LABEL_582;
    }
  }

  v1607 = v811;
  v1814 = v810;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v811 = v1607;
  v810 = v1814;
LABEL_582:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v811, v810, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v812 = malloc(8uLL);
  v813 = v812;
  {
    v2023 = v812;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v813 = v2023;
  }

  mlir::detail::InterfaceMap::insert((v809 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v813);
  v814 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareOp,void>::id, a1);
  if ((v815 & 1) == 0)
  {
    v2121 = 1283;
    v1481 = "mps.square";
    goto LABEL_1644;
  }

  v816 = v814;
  v817 = v814[2];
  if (v817 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v814[1];
    v818 = mlir::SparseElementsAttr::getValues(v2122);
    v817 = v816[2];
    {
      goto LABEL_587;
    }
  }

  else
  {
    v818 = v814[3];
    {
      goto LABEL_587;
    }
  }

  v1608 = v818;
  v1815 = v817;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v818 = v1608;
  v817 = v1815;
LABEL_587:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v818, v817, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v819 = malloc(8uLL);
  v820 = v819;
  {
    v2024 = v819;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v820 = v2024;
  }

  mlir::detail::InterfaceMap::insert((v816 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v820);
  v821 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id, a1);
  if ((v822 & 1) == 0)
  {
    v2121 = 1283;
    v1473 = "mps.square_root";
    goto LABEL_1699;
  }

  v823 = v821;
  v824 = v821[2];
  if (v824 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v821[1];
    v825 = mlir::SparseElementsAttr::getValues(v2122);
    v824 = v823[2];
    {
      goto LABEL_592;
    }
  }

  else
  {
    v825 = v821[3];
    {
      goto LABEL_592;
    }
  }

  v1609 = v825;
  v1816 = v824;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v825 = v1609;
  v824 = v1816;
LABEL_592:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v825, v824, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v826 = malloc(8uLL);
  v827 = v826;
  {
    v2025 = v826;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v827 = v2025;
  }

  mlir::detail::InterfaceMap::insert((v823 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v827);
  v828 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StencilOp,void>::id, a1);
  if ((v829 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.stencil";
    goto LABEL_1657;
  }

  v830 = v828;
  v831 = v828[2];
  if (v831 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v828[1];
    v832 = mlir::SparseElementsAttr::getValues(v2122);
    v831 = v830[2];
    {
      goto LABEL_597;
    }
  }

  else
  {
    v832 = v828[3];
    {
      goto LABEL_597;
    }
  }

  v1610 = v832;
  v1817 = v831;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v832 = v1610;
  v831 = v1817;
LABEL_597:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v832, v831, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v833 = malloc(8uLL);
  v834 = v833;
  {
    v2026 = v833;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v834 = v2026;
  }

  mlir::detail::InterfaceMap::insert((v830 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v834);
  v835 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id, a1);
  if ((v836 & 1) == 0)
  {
    v2121 = 1283;
    v1469 = "mps.subtract";
    goto LABEL_1590;
  }

  v837 = v835;
  v838 = v835[2];
  if (v838 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v835[1];
    v839 = mlir::SparseElementsAttr::getValues(v2122);
    v838 = v837[2];
    {
      goto LABEL_602;
    }
  }

  else
  {
    v839 = v835[3];
    {
      goto LABEL_602;
    }
  }

  v1611 = v839;
  v1818 = v838;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v839 = v1611;
  v838 = v1818;
LABEL_602:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v839, v838, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v840 = malloc(8uLL);
  v841 = v840;
  {
    v2027 = v840;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v841 = v2027;
  }

  mlir::detail::InterfaceMap::insert((v837 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v841);
  v842 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SwishOp,void>::id, a1);
  if ((v843 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.swish";
    goto LABEL_1674;
  }

  v844 = v842;
  v845 = v842[2];
  if (v845 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v842[1];
    v846 = mlir::SparseElementsAttr::getValues(v2122);
    v845 = v844[2];
    {
      goto LABEL_607;
    }
  }

  else
  {
    v846 = v842[3];
    {
      goto LABEL_607;
    }
  }

  v1612 = v846;
  v1819 = v845;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v846 = v1612;
  v845 = v1819;
LABEL_607:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v846, v845, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v847 = malloc(8uLL);
  v848 = v847;
  {
    v2028 = v847;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v848 = v2028;
  }

  mlir::detail::InterfaceMap::insert((v844 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v848);
  v849 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TanOp,void>::id, a1);
  if ((v850 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.tan";
    goto LABEL_1625;
  }

  v851 = v849;
  v852 = v849[2];
  if (v852 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v849[1];
    v853 = mlir::SparseElementsAttr::getValues(v2122);
    v852 = v851[2];
    {
      goto LABEL_612;
    }
  }

  else
  {
    v853 = v849[3];
    {
      goto LABEL_612;
    }
  }

  v1613 = v853;
  v1820 = v852;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v853 = v1613;
  v852 = v1820;
LABEL_612:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v853, v852, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v854 = malloc(8uLL);
  v855 = v854;
  {
    v2029 = v854;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v855 = v2029;
  }

  mlir::detail::InterfaceMap::insert((v851 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v855);
  v856 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TanhOp,void>::id, a1);
  if ((v857 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.tanh";
    goto LABEL_1676;
  }

  v858 = v856;
  v859 = v856[2];
  if (v859 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v856[1];
    v860 = mlir::SparseElementsAttr::getValues(v2122);
    v859 = v858[2];
    {
      goto LABEL_617;
    }
  }

  else
  {
    v860 = v856[3];
    {
      goto LABEL_617;
    }
  }

  v1614 = v860;
  v1821 = v859;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v860 = v1614;
  v859 = v1821;
LABEL_617:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v860, v859, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v861 = malloc(8uLL);
  v862 = v861;
  {
    v2030 = v861;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v862 = v2030;
  }

  mlir::detail::InterfaceMap::insert((v858 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v862);
  v863 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TruncateOp,void>::id, a1);
  if ((v864 & 1) == 0)
  {
    v2121 = 1283;
    v1469 = "mps.truncate";
    goto LABEL_1590;
  }

  v865 = v863;
  v866 = v863[2];
  if (v866 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v863[1];
    v867 = mlir::SparseElementsAttr::getValues(v2122);
    v866 = v865[2];
    {
      goto LABEL_622;
    }
  }

  else
  {
    v867 = v863[3];
    {
      goto LABEL_622;
    }
  }

  v1615 = v867;
  v1822 = v866;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v867 = v1615;
  v866 = v1822;
LABEL_622:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v867, v866, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v868 = malloc(8uLL);
  v869 = v868;
  {
    v2031 = v868;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v869 = v2031;
  }

  mlir::detail::InterfaceMap::insert((v865 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v869);
  v870 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TypeConstraintOp,void>::id, a1);
  if ((v871 & 1) == 0)
  {
    v2121 = 1283;
    v1470 = "mps.type_constraint";
    goto LABEL_1642;
  }

  v872 = v870;
  v873 = v870[2];
  if (v873 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v870[1];
    v874 = mlir::SparseElementsAttr::getValues(v2122);
    v873 = v872[2];
    {
      goto LABEL_627;
    }
  }

  else
  {
    v874 = v870[3];
    {
      goto LABEL_627;
    }
  }

  v1616 = v874;
  v1823 = v873;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v874 = v1616;
  v873 = v1823;
LABEL_627:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v874, v873, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v875 = malloc(8uLL);
  v876 = v875;
  {
    v2032 = v875;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v876 = v2032;
  }

  mlir::detail::InterfaceMap::insert((v872 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v876);
  v877 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id, a1);
  if ((v878 & 1) == 0)
  {
    v2121 = 1283;
    v1487 = "mps.variable_from_tensor";
    goto LABEL_1662;
  }

  v879 = v877;
  v880 = v877[2];
  if (v880 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v877[1];
    v881 = mlir::SparseElementsAttr::getValues(v2122);
    v880 = v879[2];
    {
      goto LABEL_632;
    }
  }

  else
  {
    v881 = v877[3];
    {
      goto LABEL_632;
    }
  }

  v1617 = v881;
  v1824 = v880;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v881 = v1617;
  v880 = v1824;
LABEL_632:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v881, v880, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v882 = malloc(8uLL);
  v883 = v882;
  {
    v2033 = v882;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v883 = v2033;
  }

  mlir::detail::InterfaceMap::insert((v879 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v883);
  v884 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::XnorOp,void>::id, a1);
  if ((v885 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.xnor";
    goto LABEL_1676;
  }

  v886 = v884;
  v887 = v884[2];
  if (v887 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v884[1];
    v888 = mlir::SparseElementsAttr::getValues(v2122);
    v887 = v886[2];
    {
      goto LABEL_637;
    }
  }

  else
  {
    v888 = v884[3];
    {
      goto LABEL_637;
    }
  }

  v1618 = v888;
  v1825 = v887;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v888 = v1618;
  v887 = v1825;
LABEL_637:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v888, v887, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v889 = malloc(8uLL);
  v890 = v889;
  {
    v2034 = v889;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v890 = v2034;
  }

  mlir::detail::InterfaceMap::insert((v886 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v890);
  v891 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::XorOp,void>::id, a1);
  if ((v892 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.xor";
    goto LABEL_1625;
  }

  v893 = v891;
  v894 = v891[2];
  if (v894 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v891[1];
    v895 = mlir::SparseElementsAttr::getValues(v2122);
    v894 = v893[2];
    {
      goto LABEL_642;
    }
  }

  else
  {
    v895 = v891[3];
    {
      goto LABEL_642;
    }
  }

  v1619 = v895;
  v1826 = v894;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v895 = v1619;
  v894 = v1826;
LABEL_642:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v895, v894, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v896 = malloc(8uLL);
  v897 = v896;
  {
    v2035 = v896;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v897 = v2035;
  }

  mlir::detail::InterfaceMap::insert((v893 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v897);
  v898 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BatchToSpaceOp,void>::id, a1);
  if ((v899 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.batch_to_space";
    goto LABEL_1691;
  }

  v900 = v898;
  v901 = v898[2];
  if (v901 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v898[1];
    v902 = mlir::SparseElementsAttr::getValues(v2122);
    v901 = v900[2];
    {
      goto LABEL_647;
    }
  }

  else
  {
    v902 = v898[3];
    {
      goto LABEL_647;
    }
  }

  v1620 = v902;
  v1827 = v901;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v902 = v1620;
  v901 = v1827;
LABEL_647:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v902, v901, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v903 = malloc(8uLL);
  v904 = v903;
  {
    v2036 = v903;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v904 = v2036;
  }

  mlir::detail::InterfaceMap::insert((v900 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v904);
  v905 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id, a1);
  if ((v906 & 1) == 0)
  {
    v2121 = 1283;
    v1482 = "mps.broadcast_to";
    goto LABEL_1636;
  }

  v907 = v905;
  v908 = v905[2];
  if (v908 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v905[1];
    v909 = mlir::SparseElementsAttr::getValues(v2122);
    v908 = v907[2];
    {
      goto LABEL_652;
    }
  }

  else
  {
    v909 = v905[3];
    {
      goto LABEL_652;
    }
  }

  v1621 = v909;
  v1828 = v908;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v909 = v1621;
  v908 = v1828;
LABEL_652:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v909, v908, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v910 = malloc(8uLL);
  v911 = v910;
  {
    v2037 = v910;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v911 = v2037;
  }

  mlir::detail::InterfaceMap::insert((v907 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v911);
  v912 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, a1);
  if ((v913 & 1) == 0)
  {
    v2121 = 1283;
    v1481 = "mps.concat";
    goto LABEL_1644;
  }

  v914 = v912;
  v915 = v912[2];
  if (v915 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v912[1];
    v916 = mlir::SparseElementsAttr::getValues(v2122);
    v915 = v914[2];
    {
      goto LABEL_657;
    }
  }

  else
  {
    v916 = v912[3];
    {
      goto LABEL_657;
    }
  }

  v1622 = v916;
  v1829 = v915;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v916 = v1622;
  v915 = v1829;
LABEL_657:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v916, v915, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v917 = malloc(8uLL);
  v918 = v917;
  {
    v2038 = v917;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v918 = v2038;
  }

  mlir::detail::InterfaceMap::insert((v914 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v918);
  v919 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id, a1);
  if ((v920 & 1) == 0)
  {
    v2121 = 1283;
    v1490 = "mps.conv_2d_data_gradient";
LABEL_1687:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1490;
    v1485 = 25;
    goto LABEL_1700;
  }

  v921 = v919;
  v922 = v919[2];
  if (v922 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v919[1];
    v923 = mlir::SparseElementsAttr::getValues(v2122);
    v922 = v921[2];
    {
      goto LABEL_662;
    }
  }

  else
  {
    v923 = v919[3];
    {
      goto LABEL_662;
    }
  }

  v1623 = v923;
  v1830 = v922;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v923 = v1623;
  v922 = v1830;
LABEL_662:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v923, v922, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v924 = malloc(8uLL);
  v925 = v924;
  {
    v2039 = v924;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v925 = v2039;
  }

  mlir::detail::InterfaceMap::insert((v921 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v925);
  v926 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DWeightsGradientOp,void>::id, a1);
  if ((v927 & 1) == 0)
  {
    v2121 = 1283;
    v1486 = "mps.conv_2d_weights_gradient";
    goto LABEL_1682;
  }

  v928 = v926;
  v929 = v926[2];
  if (v929 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v926[1];
    v930 = mlir::SparseElementsAttr::getValues(v2122);
    v929 = v928[2];
    {
      goto LABEL_667;
    }
  }

  else
  {
    v930 = v926[3];
    {
      goto LABEL_667;
    }
  }

  v1624 = v930;
  v1831 = v929;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v930 = v1624;
  v929 = v1831;
LABEL_667:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v930, v929, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v931 = malloc(8uLL);
  v932 = v931;
  {
    v2040 = v931;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v932 = v2040;
  }

  mlir::detail::InterfaceMap::insert((v928 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v932);
  v933 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id, a1);
  if ((v934 & 1) == 0)
  {
    v2121 = 1283;
    v1490 = "mps.conv_3d_data_gradient";
    goto LABEL_1687;
  }

  v935 = v933;
  v936 = v933[2];
  if (v936 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v933[1];
    v937 = mlir::SparseElementsAttr::getValues(v2122);
    v936 = v935[2];
    {
      goto LABEL_672;
    }
  }

  else
  {
    v937 = v933[3];
    {
      goto LABEL_672;
    }
  }

  v1625 = v937;
  v1832 = v936;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v937 = v1625;
  v936 = v1832;
LABEL_672:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v937, v936, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v938 = malloc(8uLL);
  v939 = v938;
  {
    v2041 = v938;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v939 = v2041;
  }

  mlir::detail::InterfaceMap::insert((v935 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v939);
  v940 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv3DWeightsGradientOp,void>::id, a1);
  if ((v941 & 1) == 0)
  {
    v2121 = 1283;
    v1486 = "mps.conv_3d_weights_gradient";
    goto LABEL_1682;
  }

  v942 = v940;
  v943 = v940[2];
  if (v943 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v940[1];
    v944 = mlir::SparseElementsAttr::getValues(v2122);
    v943 = v942[2];
    {
      goto LABEL_677;
    }
  }

  else
  {
    v944 = v940[3];
    {
      goto LABEL_677;
    }
  }

  v1626 = v944;
  v1833 = v943;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v944 = v1626;
  v943 = v1833;
LABEL_677:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v944, v943, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v945 = malloc(8uLL);
  v946 = v945;
  {
    v2042 = v945;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v946 = v2042;
  }

  mlir::detail::InterfaceMap::insert((v942 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v946);
  v947 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id, a1);
  if ((v948 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.crop";
    goto LABEL_1676;
  }

  v949 = v947;
  v950 = v947[2];
  if (v950 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v947[1];
    v951 = mlir::SparseElementsAttr::getValues(v2122);
    v950 = v949[2];
    {
      goto LABEL_682;
    }
  }

  else
  {
    v951 = v947[3];
    {
      goto LABEL_682;
    }
  }

  v1627 = v951;
  v1834 = v950;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v951 = v1627;
  v950 = v1834;
LABEL_682:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v951, v950, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v952 = malloc(8uLL);
  v953 = v952;
  {
    v2043 = v952;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v953 = v2043;
  }

  mlir::detail::InterfaceMap::insert((v949 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v953);
  v954 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CumulativeMaximumOp,void>::id, a1);
  if ((v955 & 1) == 0)
  {
    v2121 = 1283;
    v1474 = "mps.cumulative_maximum";
    goto LABEL_1647;
  }

  v956 = v954;
  v957 = v954[2];
  if (v957 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v954[1];
    v958 = mlir::SparseElementsAttr::getValues(v2122);
    v957 = v956[2];
    {
      goto LABEL_687;
    }
  }

  else
  {
    v958 = v954[3];
    {
      goto LABEL_687;
    }
  }

  v1628 = v958;
  v1835 = v957;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v958 = v1628;
  v957 = v1835;
LABEL_687:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v958, v957, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v959 = malloc(8uLL);
  v960 = v959;
  {
    v2044 = v959;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v960 = v2044;
  }

  mlir::detail::InterfaceMap::insert((v956 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v960);
  v961 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CumulativeMinimumOp,void>::id, a1);
  if ((v962 & 1) == 0)
  {
    v2121 = 1283;
    v1474 = "mps.cumulative_minimum";
    goto LABEL_1647;
  }

  v963 = v961;
  v964 = v961[2];
  if (v964 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v961[1];
    v965 = mlir::SparseElementsAttr::getValues(v2122);
    v964 = v963[2];
    {
      goto LABEL_692;
    }
  }

  else
  {
    v965 = v961[3];
    {
      goto LABEL_692;
    }
  }

  v1629 = v965;
  v1836 = v964;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v965 = v1629;
  v964 = v1836;
LABEL_692:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v965, v964, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v966 = malloc(8uLL);
  v967 = v966;
  {
    v2045 = v966;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v967 = v2045;
  }

  mlir::detail::InterfaceMap::insert((v963 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v967);
  v968 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CumulativeProductOp,void>::id, a1);
  if ((v969 & 1) == 0)
  {
    v2121 = 1283;
    v1474 = "mps.cumulative_product";
    goto LABEL_1647;
  }

  v970 = v968;
  v971 = v968[2];
  if (v971 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v968[1];
    v972 = mlir::SparseElementsAttr::getValues(v2122);
    v971 = v970[2];
    {
      goto LABEL_697;
    }
  }

  else
  {
    v972 = v968[3];
    {
      goto LABEL_697;
    }
  }

  v1630 = v972;
  v1837 = v971;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v972 = v1630;
  v971 = v1837;
LABEL_697:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v972, v971, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v973 = malloc(8uLL);
  v974 = v973;
  {
    v2046 = v973;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v974 = v2046;
  }

  mlir::detail::InterfaceMap::insert((v970 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v974);
  v975 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CumulativeSumOp,void>::id, a1);
  if ((v976 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.cumulative_sum";
    goto LABEL_1691;
  }

  v977 = v975;
  v978 = v975[2];
  if (v978 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v975[1];
    v979 = mlir::SparseElementsAttr::getValues(v2122);
    v978 = v977[2];
    {
      goto LABEL_702;
    }
  }

  else
  {
    v979 = v975[3];
    {
      goto LABEL_702;
    }
  }

  v1631 = v979;
  v1838 = v978;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v979 = v1631;
  v978 = v1838;
LABEL_702:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v979, v978, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v980 = malloc(8uLL);
  v981 = v980;
  {
    v2047 = v980;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v981 = v2047;
  }

  mlir::detail::InterfaceMap::insert((v977 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v981);
  v982 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthToSpace2DOp,void>::id, a1);
  if ((v983 & 1) == 0)
  {
    v2121 = 1283;
    v1480 = "mps.depth_to_space_2d";
    goto LABEL_1655;
  }

  v984 = v982;
  v985 = v982[2];
  if (v985 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v982[1];
    v986 = mlir::SparseElementsAttr::getValues(v2122);
    v985 = v984[2];
    {
      goto LABEL_707;
    }
  }

  else
  {
    v986 = v982[3];
    {
      goto LABEL_707;
    }
  }

  v1632 = v986;
  v1839 = v985;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v986 = v1632;
  v985 = v1839;
LABEL_707:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v986, v985, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v987 = malloc(8uLL);
  v988 = v987;
  {
    v2048 = v987;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v988 = v2048;
  }

  mlir::detail::InterfaceMap::insert((v984 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v988);
  v989 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id, a1);
  if ((v990 & 1) == 0)
  {
    v2121 = 1283;
    v1484 = "mps.depthwise_conv_2d_data_gradient";
    goto LABEL_1611;
  }

  v991 = v989;
  v992 = v989[2];
  if (v992 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v989[1];
    v993 = mlir::SparseElementsAttr::getValues(v2122);
    v992 = v991[2];
    {
      goto LABEL_712;
    }
  }

  else
  {
    v993 = v989[3];
    {
      goto LABEL_712;
    }
  }

  v1633 = v993;
  v1840 = v992;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v993 = v1633;
  v992 = v1840;
LABEL_712:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v993, v992, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v994 = malloc(8uLL);
  v995 = v994;
  {
    v2049 = v994;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v995 = v2049;
  }

  mlir::detail::InterfaceMap::insert((v991 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v995);
  v996 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DWeightsGradientOp,void>::id, a1);
  if ((v997 & 1) == 0)
  {
    v2121 = 1283;
    v1491 = "mps.depthwise_conv_2d_weights_gradient";
LABEL_1613:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1491;
    v1485 = 38;
    goto LABEL_1700;
  }

  v998 = v996;
  v999 = v996[2];
  if (v999 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v996[1];
    v1000 = mlir::SparseElementsAttr::getValues(v2122);
    v999 = v998[2];
    {
      goto LABEL_717;
    }
  }

  else
  {
    v1000 = v996[3];
    {
      goto LABEL_717;
    }
  }

  v1634 = v1000;
  v1841 = v999;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1000 = v1634;
  v999 = v1841;
LABEL_717:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1000, v999, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1001 = malloc(8uLL);
  v1002 = v1001;
  {
    v2050 = v1001;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1002 = v2050;
  }

  mlir::detail::InterfaceMap::insert((v998 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1002);
  v1003 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id, a1);
  if ((v1004 & 1) == 0)
  {
    v2121 = 1283;
    v1484 = "mps.depthwise_conv_3d_data_gradient";
    goto LABEL_1611;
  }

  v1005 = v1003;
  v1006 = v1003[2];
  if (v1006 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1003[1];
    v1007 = mlir::SparseElementsAttr::getValues(v2122);
    v1006 = v1005[2];
    {
      goto LABEL_722;
    }
  }

  else
  {
    v1007 = v1003[3];
    {
      goto LABEL_722;
    }
  }

  v1635 = v1007;
  v1842 = v1006;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1007 = v1635;
  v1006 = v1842;
LABEL_722:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1007, v1006, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1008 = malloc(8uLL);
  v1009 = v1008;
  {
    v2051 = v1008;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1009 = v2051;
  }

  mlir::detail::InterfaceMap::insert((v1005 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1009);
  v1010 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DWeightsGradientOp,void>::id, a1);
  if ((v1011 & 1) == 0)
  {
    v2121 = 1283;
    v1491 = "mps.depthwise_conv_3d_weights_gradient";
    goto LABEL_1613;
  }

  v1012 = v1010;
  v1013 = v1010[2];
  if (v1013 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1010[1];
    v1014 = mlir::SparseElementsAttr::getValues(v2122);
    v1013 = v1012[2];
    {
      goto LABEL_727;
    }
  }

  else
  {
    v1014 = v1010[3];
    {
      goto LABEL_727;
    }
  }

  v1636 = v1014;
  v1843 = v1013;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1014 = v1636;
  v1013 = v1843;
LABEL_727:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1014, v1013, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1015 = malloc(8uLL);
  v1016 = v1015;
  {
    v2052 = v1015;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1016 = v2052;
  }

  mlir::detail::InterfaceMap::insert((v1012 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1016);
  v1017 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id, a1);
  if ((v1018 & 1) == 0)
  {
    v2121 = 1283;
    v1473 = "mps.expand_dims";
    goto LABEL_1699;
  }

  v1019 = v1017;
  v1020 = v1017[2];
  if (v1020 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1017[1];
    v1021 = mlir::SparseElementsAttr::getValues(v2122);
    v1020 = v1019[2];
    {
      goto LABEL_732;
    }
  }

  else
  {
    v1021 = v1017[3];
    {
      goto LABEL_732;
    }
  }

  v1637 = v1021;
  v1844 = v1020;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1021 = v1637;
  v1020 = v1844;
LABEL_732:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1021, v1020, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1022 = malloc(8uLL);
  v1023 = v1022;
  {
    v2053 = v1022;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1023 = v2053;
  }

  mlir::detail::InterfaceMap::insert((v1019 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1023);
  v1024 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FastFourierTransformOp,void>::id, a1);
  if ((v1025 & 1) == 0)
  {
    v2121 = 1283;
    v1488 = "mps.fast_fourier_transform";
    goto LABEL_1659;
  }

  v1026 = v1024;
  v1027 = v1024[2];
  if (v1027 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1024[1];
    v1028 = mlir::SparseElementsAttr::getValues(v2122);
    v1027 = v1026[2];
    {
      goto LABEL_737;
    }
  }

  else
  {
    v1028 = v1024[3];
    {
      goto LABEL_737;
    }
  }

  v1638 = v1028;
  v1845 = v1027;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1028 = v1638;
  v1027 = v1845;
LABEL_737:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1028, v1027, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1029 = malloc(8uLL);
  v1030 = v1029;
  {
    v2054 = v1029;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1030 = v2054;
  }

  mlir::detail::InterfaceMap::insert((v1026 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1030);
  v1031 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Flatten2DOp,void>::id, a1);
  if ((v1032 & 1) == 0)
  {
    v2121 = 1283;
    v1475 = "mps.flatten_2d";
    goto LABEL_1666;
  }

  v1033 = v1031;
  v1034 = v1031[2];
  if (v1034 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1031[1];
    v1035 = mlir::SparseElementsAttr::getValues(v2122);
    v1034 = v1033[2];
    {
      goto LABEL_742;
    }
  }

  else
  {
    v1035 = v1031[3];
    {
      goto LABEL_742;
    }
  }

  v1639 = v1035;
  v1846 = v1034;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1035 = v1639;
  v1034 = v1846;
LABEL_742:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1035, v1034, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1036 = malloc(8uLL);
  v1037 = v1036;
  {
    v2055 = v1036;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1037 = v2055;
  }

  mlir::detail::InterfaceMap::insert((v1033 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1037);
  v1038 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherAlongAxisOp,void>::id, a1);
  if ((v1039 & 1) == 0)
  {
    v2121 = 1283;
    v1480 = "mps.gather_along_axis";
    goto LABEL_1655;
  }

  v1040 = v1038;
  v1041 = v1038[2];
  if (v1041 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1038[1];
    v1042 = mlir::SparseElementsAttr::getValues(v2122);
    v1041 = v1040[2];
    {
      goto LABEL_747;
    }
  }

  else
  {
    v1042 = v1038[3];
    {
      goto LABEL_747;
    }
  }

  v1640 = v1042;
  v1847 = v1041;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1042 = v1640;
  v1041 = v1847;
LABEL_747:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1042, v1041, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1043 = malloc(8uLL);
  v1044 = v1043;
  {
    v2056 = v1043;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1044 = v2056;
  }

  mlir::detail::InterfaceMap::insert((v1040 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1044);
  v1045 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id, a1);
  if ((v1046 & 1) == 0)
  {
    v2121 = 1283;
    v1481 = "mps.gather";
    goto LABEL_1644;
  }

  v1047 = v1045;
  v1048 = v1045[2];
  if (v1048 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1045[1];
    v1049 = mlir::SparseElementsAttr::getValues(v2122);
    v1048 = v1047[2];
    {
      goto LABEL_752;
    }
  }

  else
  {
    v1049 = v1045[3];
    {
      goto LABEL_752;
    }
  }

  v1641 = v1049;
  v1848 = v1048;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1049 = v1641;
  v1048 = v1848;
LABEL_752:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1049, v1048, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1050 = malloc(8uLL);
  v1051 = v1050;
  {
    v2057 = v1050;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1051 = v2057;
  }

  mlir::detail::InterfaceMap::insert((v1047 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1051);
  v1052 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GetCoordOp,void>::id, a1);
  if ((v1053 & 1) == 0)
  {
    v2121 = 1283;
    v1470 = "mps.get_coordinates";
    goto LABEL_1642;
  }

  v1054 = v1052;
  v1055 = v1052[2];
  if (v1055 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1052[1];
    v1056 = mlir::SparseElementsAttr::getValues(v2122);
    v1055 = v1054[2];
    {
      goto LABEL_757;
    }
  }

  else
  {
    v1056 = v1052[3];
    {
      goto LABEL_757;
    }
  }

  v1642 = v1056;
  v1849 = v1055;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1056 = v1642;
  v1055 = v1849;
LABEL_757:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1056, v1055, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1057 = malloc(8uLL);
  v1058 = v1057;
  {
    v2058 = v1057;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1058 = v2058;
  }

  mlir::detail::InterfaceMap::insert((v1054 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1058);
  v1059 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::HermiteanToRealFFTOp,void>::id, a1);
  if ((v1060 & 1) == 0)
  {
    v2121 = 1283;
    v1490 = "mps.hermitean_to_real_fft";
    goto LABEL_1687;
  }

  v1061 = v1059;
  v1062 = v1059[2];
  if (v1062 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1059[1];
    v1063 = mlir::SparseElementsAttr::getValues(v2122);
    v1062 = v1061[2];
    {
      goto LABEL_762;
    }
  }

  else
  {
    v1063 = v1059[3];
    {
      goto LABEL_762;
    }
  }

  v1643 = v1063;
  v1850 = v1062;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1063 = v1643;
  v1062 = v1850;
LABEL_762:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1063, v1062, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1064 = malloc(8uLL);
  v1065 = v1064;
  {
    v2059 = v1064;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1065 = v2059;
  }

  mlir::detail::InterfaceMap::insert((v1061 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1065);
  v1066 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::InstanceNormOp,void>::id, a1);
  if ((v1067 & 1) == 0)
  {
    v2121 = 1283;
    v1483 = "mps.instance_norm";
    goto LABEL_1678;
  }

  v1068 = v1066;
  v1069 = v1066[2];
  if (v1069 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1066[1];
    v1070 = mlir::SparseElementsAttr::getValues(v2122);
    v1069 = v1068[2];
    {
      goto LABEL_767;
    }
  }

  else
  {
    v1070 = v1066[3];
    {
      goto LABEL_767;
    }
  }

  v1644 = v1070;
  v1851 = v1069;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1070 = v1644;
  v1069 = v1851;
LABEL_767:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1070, v1069, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1071 = malloc(8uLL);
  v1072 = v1071;
  {
    v2060 = v1071;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1072 = v2060;
  }

  mlir::detail::InterfaceMap::insert((v1068 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1072);
  v1073 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::OneHotOp,void>::id, a1);
  if ((v1074 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.one_hot";
    goto LABEL_1657;
  }

  v1075 = v1073;
  v1076 = v1073[2];
  if (v1076 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1073[1];
    v1077 = mlir::SparseElementsAttr::getValues(v2122);
    v1076 = v1075[2];
    {
      goto LABEL_772;
    }
  }

  else
  {
    v1077 = v1073[3];
    {
      goto LABEL_772;
    }
  }

  v1645 = v1077;
  v1852 = v1076;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1077 = v1645;
  v1076 = v1852;
LABEL_772:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1077, v1076, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1078 = malloc(8uLL);
  v1079 = v1078;
  {
    v2061 = v1078;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1079 = v2061;
  }

  mlir::detail::InterfaceMap::insert((v1075 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1079);
  v1080 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadGradientOp,void>::id, a1);
  if ((v1081 & 1) == 0)
  {
    v2121 = 1283;
    v1482 = "mps.pad_gradient";
    goto LABEL_1636;
  }

  v1082 = v1080;
  v1083 = v1080[2];
  if (v1083 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1080[1];
    v1084 = mlir::SparseElementsAttr::getValues(v2122);
    v1083 = v1082[2];
    {
      goto LABEL_777;
    }
  }

  else
  {
    v1084 = v1080[3];
    {
      goto LABEL_777;
    }
  }

  v1646 = v1084;
  v1853 = v1083;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1084 = v1646;
  v1083 = v1853;
LABEL_777:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1084, v1083, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1085 = malloc(8uLL);
  v1086 = v1085;
  {
    v2062 = v1085;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1086 = v2062;
  }

  mlir::detail::InterfaceMap::insert((v1082 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1086);
  v1087 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id, a1);
  if ((v1088 & 1) == 0)
  {
    v2121 = 1283;
    v1471 = "mps.pad";
    goto LABEL_1625;
  }

  v1089 = v1087;
  v1090 = v1087[2];
  if (v1090 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1087[1];
    v1091 = mlir::SparseElementsAttr::getValues(v2122);
    v1090 = v1089[2];
    {
      goto LABEL_782;
    }
  }

  else
  {
    v1091 = v1087[3];
    {
      goto LABEL_782;
    }
  }

  v1647 = v1091;
  v1854 = v1090;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1091 = v1647;
  v1090 = v1854;
LABEL_782:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1091, v1090, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1092 = malloc(8uLL);
  v1093 = v1092;
  {
    v2063 = v1092;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1093 = v2063;
  }

  mlir::detail::InterfaceMap::insert((v1089 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1093);
  v1094 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id, a1);
  if ((v1095 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.permute";
    goto LABEL_1657;
  }

  v1096 = v1094;
  v1097 = v1094[2];
  if (v1097 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1094[1];
    v1098 = mlir::SparseElementsAttr::getValues(v2122);
    v1097 = v1096[2];
    {
      goto LABEL_787;
    }
  }

  else
  {
    v1098 = v1094[3];
    {
      goto LABEL_787;
    }
  }

  v1648 = v1098;
  v1855 = v1097;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1098 = v1648;
  v1097 = v1855;
LABEL_787:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1098, v1097, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1099 = malloc(8uLL);
  v1100 = v1099;
  {
    v2064 = v1099;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1100 = v2064;
  }

  mlir::detail::InterfaceMap::insert((v1096 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1100);
  v1101 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RealToHermiteanFFTOp,void>::id, a1);
  if ((v1102 & 1) == 0)
  {
    v2121 = 1283;
    v1490 = "mps.real_to_hermitean_fft";
    goto LABEL_1687;
  }

  v1103 = v1101;
  v1104 = v1101[2];
  if (v1104 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1101[1];
    v1105 = mlir::SparseElementsAttr::getValues(v2122);
    v1104 = v1103[2];
    {
      goto LABEL_792;
    }
  }

  else
  {
    v1105 = v1101[3];
    {
      goto LABEL_792;
    }
  }

  v1649 = v1105;
  v1856 = v1104;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1105 = v1649;
  v1104 = v1856;
LABEL_792:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1105, v1104, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1106 = malloc(8uLL);
  v1107 = v1106;
  {
    v2065 = v1106;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1107 = v2065;
  }

  mlir::detail::InterfaceMap::insert((v1103 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1107);
  v1108 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionAndOp,void>::id, a1);
  if ((v1109 & 1) == 0)
  {
    v2121 = 1283;
    v1483 = "mps.reduction_and";
    goto LABEL_1678;
  }

  v1110 = v1108;
  v1111 = v1108[2];
  if (v1111 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1108[1];
    v1112 = mlir::SparseElementsAttr::getValues(v2122);
    v1111 = v1110[2];
    {
      goto LABEL_797;
    }
  }

  else
  {
    v1112 = v1108[3];
    {
      goto LABEL_797;
    }
  }

  v1650 = v1112;
  v1857 = v1111;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1112 = v1650;
  v1111 = v1857;
LABEL_797:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1112, v1111, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1113 = malloc(8uLL);
  v1114 = v1113;
  {
    v2066 = v1113;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1114 = v2066;
  }

  mlir::detail::InterfaceMap::insert((v1110 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1114);
  v1115 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMaxOp,void>::id, a1);
  if ((v1116 & 1) == 0)
  {
    v2121 = 1283;
    v1476 = "mps.reduction_argmax";
    goto LABEL_1693;
  }

  v1117 = v1115;
  v1118 = v1115[2];
  if (v1118 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1115[1];
    v1119 = mlir::SparseElementsAttr::getValues(v2122);
    v1118 = v1117[2];
    {
      goto LABEL_802;
    }
  }

  else
  {
    v1119 = v1115[3];
    {
      goto LABEL_802;
    }
  }

  v1651 = v1119;
  v1858 = v1118;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1119 = v1651;
  v1118 = v1858;
LABEL_802:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1119, v1118, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1120 = malloc(8uLL);
  v1121 = v1120;
  {
    v2067 = v1120;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1121 = v2067;
  }

  mlir::detail::InterfaceMap::insert((v1117 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1121);
  v1122 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMinOp,void>::id, a1);
  if ((v1123 & 1) == 0)
  {
    v2121 = 1283;
    v1476 = "mps.reduction_argmin";
    goto LABEL_1693;
  }

  v1124 = v1122;
  v1125 = v1122[2];
  if (v1125 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1122[1];
    v1126 = mlir::SparseElementsAttr::getValues(v2122);
    v1125 = v1124[2];
    {
      goto LABEL_807;
    }
  }

  else
  {
    v1126 = v1122[3];
    {
      goto LABEL_807;
    }
  }

  v1652 = v1126;
  v1859 = v1125;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1126 = v1652;
  v1125 = v1859;
LABEL_807:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1126, v1125, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1127 = malloc(8uLL);
  v1128 = v1127;
  {
    v2068 = v1127;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1128 = v2068;
  }

  mlir::detail::InterfaceMap::insert((v1124 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1128);
  v1129 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionLogSumExpOp,void>::id, a1);
  if ((v1130 & 1) == 0)
  {
    v2121 = 1283;
    v1477 = "mps.reduction_logsumexp";
    goto LABEL_1684;
  }

  v1131 = v1129;
  v1132 = v1129[2];
  if (v1132 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1129[1];
    v1133 = mlir::SparseElementsAttr::getValues(v2122);
    v1132 = v1131[2];
    {
      goto LABEL_812;
    }
  }

  else
  {
    v1133 = v1129[3];
    {
      goto LABEL_812;
    }
  }

  v1653 = v1133;
  v1860 = v1132;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1133 = v1653;
  v1132 = v1860;
LABEL_812:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1133, v1132, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1134 = malloc(8uLL);
  v1135 = v1134;
  {
    v2069 = v1134;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1135 = v2069;
  }

  mlir::detail::InterfaceMap::insert((v1131 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1135);
  v1136 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id, a1);
  if ((v1137 & 1) == 0)
  {
    v2121 = 1283;
    v1483 = "mps.reduction_max";
    goto LABEL_1678;
  }

  v1138 = v1136;
  v1139 = v1136[2];
  if (v1139 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1136[1];
    v1140 = mlir::SparseElementsAttr::getValues(v2122);
    v1139 = v1138[2];
    {
      goto LABEL_817;
    }
  }

  else
  {
    v1140 = v1136[3];
    {
      goto LABEL_817;
    }
  }

  v1654 = v1140;
  v1861 = v1139;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1140 = v1654;
  v1139 = v1861;
LABEL_817:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1140, v1139, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1141 = malloc(8uLL);
  v1142 = v1141;
  {
    v2070 = v1141;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1142 = v2070;
  }

  mlir::detail::InterfaceMap::insert((v1138 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1142);
  v1143 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id, a1);
  if ((v1144 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.reduction_mean";
    goto LABEL_1691;
  }

  v1145 = v1143;
  v1146 = v1143[2];
  if (v1146 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1143[1];
    v1147 = mlir::SparseElementsAttr::getValues(v2122);
    v1146 = v1145[2];
    {
      goto LABEL_822;
    }
  }

  else
  {
    v1147 = v1143[3];
    {
      goto LABEL_822;
    }
  }

  v1655 = v1147;
  v1862 = v1146;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1147 = v1655;
  v1146 = v1862;
LABEL_822:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1147, v1146, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1148 = malloc(8uLL);
  v1149 = v1148;
  {
    v2071 = v1148;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1149 = v2071;
  }

  mlir::detail::InterfaceMap::insert((v1145 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1149);
  v1150 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMinOp,void>::id, a1);
  if ((v1151 & 1) == 0)
  {
    v2121 = 1283;
    v1483 = "mps.reduction_min";
    goto LABEL_1678;
  }

  v1152 = v1150;
  v1153 = v1150[2];
  if (v1153 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1150[1];
    v1154 = mlir::SparseElementsAttr::getValues(v2122);
    v1153 = v1152[2];
    {
      goto LABEL_827;
    }
  }

  else
  {
    v1154 = v1150[3];
    {
      goto LABEL_827;
    }
  }

  v1656 = v1154;
  v1863 = v1153;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1154 = v1656;
  v1153 = v1863;
LABEL_827:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1154, v1153, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1155 = malloc(8uLL);
  v1156 = v1155;
  {
    v2072 = v1155;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1156 = v2072;
  }

  mlir::detail::InterfaceMap::insert((v1152 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1156);
  v1157 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionOrOp,void>::id, a1);
  if ((v1158 & 1) == 0)
  {
    v2121 = 1283;
    v1482 = "mps.reduction_or";
    goto LABEL_1636;
  }

  v1159 = v1157;
  v1160 = v1157[2];
  if (v1160 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1157[1];
    v1161 = mlir::SparseElementsAttr::getValues(v2122);
    v1160 = v1159[2];
    {
      goto LABEL_832;
    }
  }

  else
  {
    v1161 = v1157[3];
    {
      goto LABEL_832;
    }
  }

  v1657 = v1161;
  v1864 = v1160;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1161 = v1657;
  v1160 = v1864;
LABEL_832:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1161, v1160, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1162 = malloc(8uLL);
  v1163 = v1162;
  {
    v2073 = v1162;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1163 = v2073;
  }

  mlir::detail::InterfaceMap::insert((v1159 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1163);
  v1164 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id, a1);
  if ((v1165 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.reduction_prod";
    goto LABEL_1691;
  }

  v1166 = v1164;
  v1167 = v1164[2];
  if (v1167 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1164[1];
    v1168 = mlir::SparseElementsAttr::getValues(v2122);
    v1167 = v1166[2];
    {
      goto LABEL_837;
    }
  }

  else
  {
    v1168 = v1164[3];
    {
      goto LABEL_837;
    }
  }

  v1658 = v1168;
  v1865 = v1167;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1168 = v1658;
  v1167 = v1865;
LABEL_837:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1168, v1167, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1169 = malloc(8uLL);
  v1170 = v1169;
  {
    v2074 = v1169;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1170 = v2074;
  }

  mlir::detail::InterfaceMap::insert((v1166 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1170);
  v1171 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, a1);
  if ((v1172 & 1) == 0)
  {
    v2121 = 1283;
    v1483 = "mps.reduction_sum";
    goto LABEL_1678;
  }

  v1173 = v1171;
  v1174 = v1171[2];
  if (v1174 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1171[1];
    v1175 = mlir::SparseElementsAttr::getValues(v2122);
    v1174 = v1173[2];
    {
      goto LABEL_842;
    }
  }

  else
  {
    v1175 = v1171[3];
    {
      goto LABEL_842;
    }
  }

  v1659 = v1175;
  v1866 = v1174;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1175 = v1659;
  v1174 = v1866;
LABEL_842:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1175, v1174, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1176 = malloc(8uLL);
  v1177 = v1176;
  {
    v2075 = v1176;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1177 = v2075;
  }

  mlir::detail::InterfaceMap::insert((v1173 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1177);
  v1178 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id, a1);
  if ((v1179 & 1) == 0)
  {
    v2121 = 1283;
    v1474 = "mps.reduction_variance";
    goto LABEL_1647;
  }

  v1180 = v1178;
  v1181 = v1178[2];
  if (v1181 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1178[1];
    v1182 = mlir::SparseElementsAttr::getValues(v2122);
    v1181 = v1180[2];
    {
      goto LABEL_847;
    }
  }

  else
  {
    v1182 = v1178[3];
    {
      goto LABEL_847;
    }
  }

  v1660 = v1182;
  v1867 = v1181;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1182 = v1660;
  v1181 = v1867;
LABEL_847:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1182, v1181, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1183 = malloc(8uLL);
  v1184 = v1183;
  {
    v2076 = v1183;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1184 = v2076;
  }

  mlir::detail::InterfaceMap::insert((v1180 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1184);
  v1185 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, a1);
  if ((v1186 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.reshape";
    goto LABEL_1657;
  }

  v1187 = v1185;
  v1188 = v1185[2];
  if (v1188 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1185[1];
    v1189 = mlir::SparseElementsAttr::getValues(v2122);
    v1188 = v1187[2];
    {
      goto LABEL_852;
    }
  }

  else
  {
    v1189 = v1185[3];
    {
      goto LABEL_852;
    }
  }

  v1661 = v1189;
  v1868 = v1188;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1189 = v1661;
  v1188 = v1868;
LABEL_852:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1189, v1188, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1190 = malloc(8uLL);
  v1191 = v1190;
  {
    v2077 = v1190;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1191 = v2077;
  }

  mlir::detail::InterfaceMap::insert((v1187 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1191);
  v1192 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ResizeGradientOp,void>::id, a1);
  if ((v1193 & 1) == 0)
  {
    v2121 = 1283;
    v1470 = "mps.resize_gradient";
    goto LABEL_1642;
  }

  v1194 = v1192;
  v1195 = v1192[2];
  if (v1195 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1192[1];
    v1196 = mlir::SparseElementsAttr::getValues(v2122);
    v1195 = v1194[2];
    {
      goto LABEL_857;
    }
  }

  else
  {
    v1196 = v1192[3];
    {
      goto LABEL_857;
    }
  }

  v1662 = v1196;
  v1869 = v1195;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1196 = v1662;
  v1195 = v1869;
LABEL_857:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1196, v1195, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1197 = malloc(8uLL);
  v1198 = v1197;
  {
    v2078 = v1197;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1198 = v2078;
  }

  mlir::detail::InterfaceMap::insert((v1194 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1198);
  v1199 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id, a1);
  if ((v1200 & 1) == 0)
  {
    v2121 = 1283;
    v1481 = "mps.resize";
    goto LABEL_1644;
  }

  v1201 = v1199;
  v1202 = v1199[2];
  if (v1202 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1199[1];
    v1203 = mlir::SparseElementsAttr::getValues(v2122);
    v1202 = v1201[2];
    {
      goto LABEL_862;
    }
  }

  else
  {
    v1203 = v1199[3];
    {
      goto LABEL_862;
    }
  }

  v1663 = v1203;
  v1870 = v1202;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1203 = v1663;
  v1202 = v1870;
LABEL_862:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1203, v1202, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1204 = malloc(8uLL);
  v1205 = v1204;
  {
    v2079 = v1204;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1205 = v2079;
  }

  mlir::detail::InterfaceMap::insert((v1201 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1205);
  v1206 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReverseOp,void>::id, a1);
  if ((v1207 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.reverse";
    goto LABEL_1657;
  }

  v1208 = v1206;
  v1209 = v1206[2];
  if (v1209 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1206[1];
    v1210 = mlir::SparseElementsAttr::getValues(v2122);
    v1209 = v1208[2];
    {
      goto LABEL_867;
    }
  }

  else
  {
    v1210 = v1206[3];
    {
      goto LABEL_867;
    }
  }

  v1664 = v1210;
  v1871 = v1209;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1210 = v1664;
  v1209 = v1871;
LABEL_867:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1210, v1209, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1211 = malloc(8uLL);
  v1212 = v1211;
  {
    v2080 = v1211;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1212 = v2080;
  }

  mlir::detail::InterfaceMap::insert((v1208 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1212);
  v1213 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterAlongAxisOp,void>::id, a1);
  if ((v1214 & 1) == 0)
  {
    v2121 = 1283;
    v1474 = "mps.scatter_along_axis";
    goto LABEL_1647;
  }

  v1215 = v1213;
  v1216 = v1213[2];
  if (v1216 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1213[1];
    v1217 = mlir::SparseElementsAttr::getValues(v2122);
    v1216 = v1215[2];
    {
      goto LABEL_872;
    }
  }

  else
  {
    v1217 = v1213[3];
    {
      goto LABEL_872;
    }
  }

  v1665 = v1217;
  v1872 = v1216;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1217 = v1665;
  v1216 = v1872;
LABEL_872:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1217, v1216, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1218 = malloc(8uLL);
  v1219 = v1218;
  {
    v2081 = v1218;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1219 = v2081;
  }

  mlir::detail::InterfaceMap::insert((v1215 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1219);
  v1220 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterOp,void>::id, a1);
  if ((v1221 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.scatter";
    goto LABEL_1657;
  }

  v1222 = v1220;
  v1223 = v1220[2];
  if (v1223 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1220[1];
    v1224 = mlir::SparseElementsAttr::getValues(v2122);
    v1223 = v1222[2];
    {
      goto LABEL_877;
    }
  }

  else
  {
    v1224 = v1220[3];
    {
      goto LABEL_877;
    }
  }

  v1666 = v1224;
  v1873 = v1223;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1224 = v1666;
  v1223 = v1873;
LABEL_877:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1224, v1223, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1225 = malloc(8uLL);
  v1226 = v1225;
  {
    v2082 = v1225;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1226 = v2082;
  }

  mlir::detail::InterfaceMap::insert((v1222 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1226);
  v1227 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, a1);
  if ((v1228 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.slice";
    goto LABEL_1674;
  }

  v1229 = v1227;
  v1230 = v1227[2];
  if (v1230 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1227[1];
    v1231 = mlir::SparseElementsAttr::getValues(v2122);
    v1230 = v1229[2];
    {
      goto LABEL_882;
    }
  }

  else
  {
    v1231 = v1227[3];
    {
      goto LABEL_882;
    }
  }

  v1667 = v1231;
  v1874 = v1230;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1231 = v1667;
  v1230 = v1874;
LABEL_882:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1231, v1230, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1232 = malloc(8uLL);
  v1233 = v1232;
  {
    v2083 = v1232;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1233 = v2083;
  }

  mlir::detail::InterfaceMap::insert((v1229 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1233);
  v1234 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id, a1);
  if ((v1235 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.softmax";
    goto LABEL_1657;
  }

  v1236 = v1234;
  v1237 = v1234[2];
  if (v1237 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1234[1];
    v1238 = mlir::SparseElementsAttr::getValues(v2122);
    v1237 = v1236[2];
    {
      goto LABEL_887;
    }
  }

  else
  {
    v1238 = v1234[3];
    {
      goto LABEL_887;
    }
  }

  v1668 = v1238;
  v1875 = v1237;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1238 = v1668;
  v1237 = v1875;
LABEL_887:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1238, v1237, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1239 = malloc(8uLL);
  v1240 = v1239;
  {
    v2084 = v1239;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1240 = v2084;
  }

  mlir::detail::InterfaceMap::insert((v1236 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1240);
  v1241 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SortOp,void>::id, a1);
  if ((v1242 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.sort";
    goto LABEL_1676;
  }

  v1243 = v1241;
  v1244 = v1241[2];
  if (v1244 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1241[1];
    v1245 = mlir::SparseElementsAttr::getValues(v2122);
    v1244 = v1243[2];
    {
      goto LABEL_892;
    }
  }

  else
  {
    v1245 = v1241[3];
    {
      goto LABEL_892;
    }
  }

  v1669 = v1245;
  v1876 = v1244;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1245 = v1669;
  v1244 = v1876;
LABEL_892:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1245, v1244, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1246 = malloc(8uLL);
  v1247 = v1246;
  {
    v2085 = v1246;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1247 = v2085;
  }

  mlir::detail::InterfaceMap::insert((v1243 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1247);
  v1248 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id, a1);
  if ((v1249 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.split";
    goto LABEL_1674;
  }

  v1250 = v1248;
  v1251 = v1248[2];
  if (v1251 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1248[1];
    v1252 = mlir::SparseElementsAttr::getValues(v2122);
    v1251 = v1250[2];
    {
      goto LABEL_897;
    }
  }

  else
  {
    v1252 = v1248[3];
    {
      goto LABEL_897;
    }
  }

  v1670 = v1252;
  v1877 = v1251;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1252 = v1670;
  v1251 = v1877;
LABEL_897:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1252, v1251, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1253 = malloc(8uLL);
  v1254 = v1253;
  {
    v2086 = v1253;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1254 = v2086;
  }

  mlir::detail::InterfaceMap::insert((v1250 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1254);
  v1255 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id, a1);
  if ((v1256 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.space_to_batch";
    goto LABEL_1691;
  }

  v1257 = v1255;
  v1258 = v1255[2];
  if (v1258 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1255[1];
    v1259 = mlir::SparseElementsAttr::getValues(v2122);
    v1258 = v1257[2];
    {
      goto LABEL_902;
    }
  }

  else
  {
    v1259 = v1255[3];
    {
      goto LABEL_902;
    }
  }

  v1671 = v1259;
  v1878 = v1258;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1259 = v1671;
  v1258 = v1878;
LABEL_902:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1259, v1258, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1260 = malloc(8uLL);
  v1261 = v1260;
  {
    v2087 = v1260;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1261 = v2087;
  }

  mlir::detail::InterfaceMap::insert((v1257 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1261);
  v1262 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToDepth2DOp,void>::id, a1);
  if ((v1263 & 1) == 0)
  {
    v2121 = 1283;
    v1480 = "mps.space_to_depth_2d";
    goto LABEL_1655;
  }

  v1264 = v1262;
  v1265 = v1262[2];
  if (v1265 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1262[1];
    v1266 = mlir::SparseElementsAttr::getValues(v2122);
    v1265 = v1264[2];
    {
      goto LABEL_907;
    }
  }

  else
  {
    v1266 = v1262[3];
    {
      goto LABEL_907;
    }
  }

  v1672 = v1266;
  v1879 = v1265;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1266 = v1672;
  v1265 = v1879;
LABEL_907:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1266, v1265, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1267 = malloc(8uLL);
  v1268 = v1267;
  {
    v2088 = v1267;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1268 = v2088;
  }

  mlir::detail::InterfaceMap::insert((v1264 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1268);
  v1269 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, a1);
  if ((v1270 & 1) == 0)
  {
    v2121 = 1283;
    v1478 = "mps.squeeze";
    goto LABEL_1657;
  }

  v1271 = v1269;
  v1272 = v1269[2];
  if (v1272 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1269[1];
    v1273 = mlir::SparseElementsAttr::getValues(v2122);
    v1272 = v1271[2];
    {
      goto LABEL_912;
    }
  }

  else
  {
    v1273 = v1269[3];
    {
      goto LABEL_912;
    }
  }

  v1673 = v1273;
  v1880 = v1272;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1273 = v1673;
  v1272 = v1880;
LABEL_912:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1273, v1272, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1274 = malloc(8uLL);
  v1275 = v1274;
  {
    v2089 = v1274;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1275 = v2089;
  }

  mlir::detail::InterfaceMap::insert((v1271 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1275);
  v1276 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceGradientOp,void>::id, a1);
  if ((v1277 & 1) == 0)
  {
    v2121 = 1283;
    v1488 = "mps.strided_slice_gradient";
    goto LABEL_1659;
  }

  v1278 = v1276;
  v1279 = v1276[2];
  if (v1279 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1276[1];
    v1280 = mlir::SparseElementsAttr::getValues(v2122);
    v1279 = v1278[2];
    {
      goto LABEL_917;
    }
  }

  else
  {
    v1280 = v1276[3];
    {
      goto LABEL_917;
    }
  }

  v1674 = v1280;
  v1881 = v1279;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1280 = v1674;
  v1279 = v1881;
LABEL_917:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1280, v1279, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1281 = malloc(8uLL);
  v1282 = v1281;
  {
    v2090 = v1281;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1282 = v2090;
  }

  mlir::detail::InterfaceMap::insert((v1278 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1282);
  v1283 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, a1);
  if ((v1284 & 1) == 0)
  {
    v2121 = 1283;
    v1483 = "mps.strided_slice";
    goto LABEL_1678;
  }

  v1285 = v1283;
  v1286 = v1283[2];
  if (v1286 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1283[1];
    v1287 = mlir::SparseElementsAttr::getValues(v2122);
    v1286 = v1285[2];
    {
      goto LABEL_922;
    }
  }

  else
  {
    v1287 = v1283[3];
    {
      goto LABEL_922;
    }
  }

  v1675 = v1287;
  v1882 = v1286;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1287 = v1675;
  v1286 = v1882;
LABEL_922:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1287, v1286, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1288 = malloc(8uLL);
  v1289 = v1288;
  {
    v2091 = v1288;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1289 = v2091;
  }

  mlir::detail::InterfaceMap::insert((v1285 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1289);
  v1290 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id, a1);
  if ((v1291 & 1) == 0)
  {
    v2121 = 1283;
    v1487 = "mps.strided_slice_update";
    goto LABEL_1662;
  }

  v1292 = v1290;
  v1293 = v1290[2];
  if (v1293 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1290[1];
    v1294 = mlir::SparseElementsAttr::getValues(v2122);
    v1293 = v1292[2];
    {
      goto LABEL_927;
    }
  }

  else
  {
    v1294 = v1290[3];
    {
      goto LABEL_927;
    }
  }

  v1676 = v1294;
  v1883 = v1293;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1294 = v1676;
  v1293 = v1883;
LABEL_927:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1294, v1293, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1295 = malloc(8uLL);
  v1296 = v1295;
  {
    v2092 = v1295;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1296 = v2092;
  }

  mlir::detail::InterfaceMap::insert((v1292 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1296);
  v1297 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TileGradientOp,void>::id, a1);
  if ((v1298 & 1) == 0)
  {
    v2121 = 1283;
    v1483 = "mps.tile_gradient";
    goto LABEL_1678;
  }

  v1299 = v1297;
  v1300 = v1297[2];
  if (v1300 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1297[1];
    v1301 = mlir::SparseElementsAttr::getValues(v2122);
    v1300 = v1299[2];
    {
      goto LABEL_932;
    }
  }

  else
  {
    v1301 = v1297[3];
    {
      goto LABEL_932;
    }
  }

  v1677 = v1301;
  v1884 = v1300;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1301 = v1677;
  v1300 = v1884;
LABEL_932:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1301, v1300, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1302 = malloc(8uLL);
  v1303 = v1302;
  {
    v2093 = v1302;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1303 = v2093;
  }

  mlir::detail::InterfaceMap::insert((v1299 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1303);
  v1304 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TileOp,void>::id, a1);
  if ((v1305 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.tile";
    goto LABEL_1676;
  }

  v1306 = v1304;
  v1307 = v1304[2];
  if (v1307 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1304[1];
    v1308 = mlir::SparseElementsAttr::getValues(v2122);
    v1307 = v1306[2];
    {
      goto LABEL_937;
    }
  }

  else
  {
    v1308 = v1304[3];
    {
      goto LABEL_937;
    }
  }

  v1678 = v1308;
  v1885 = v1307;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1308 = v1678;
  v1307 = v1885;
LABEL_937:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1308, v1307, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1309 = malloc(8uLL);
  v1310 = v1309;
  {
    v2094 = v1309;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1310 = v2094;
  }

  mlir::detail::InterfaceMap::insert((v1306 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1310);
  v1311 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TopKGradientOp,void>::id, a1);
  if ((v1312 & 1) == 0)
  {
    v2121 = 1283;
    v1475 = "mps.top_k_grad";
    goto LABEL_1666;
  }

  v1313 = v1311;
  v1314 = v1311[2];
  if (v1314 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1311[1];
    v1315 = mlir::SparseElementsAttr::getValues(v2122);
    v1314 = v1313[2];
    {
      goto LABEL_942;
    }
  }

  else
  {
    v1315 = v1311[3];
    {
      goto LABEL_942;
    }
  }

  v1679 = v1315;
  v1886 = v1314;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1315 = v1679;
  v1314 = v1886;
LABEL_942:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1315, v1314, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1316 = malloc(8uLL);
  v1317 = v1316;
  {
    v2095 = v1316;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1317 = v2095;
  }

  mlir::detail::InterfaceMap::insert((v1313 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1317);
  v1318 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TopKOp,void>::id, a1);
  if ((v1319 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.top_k";
    goto LABEL_1674;
  }

  v1320 = v1318;
  v1321 = v1318[2];
  if (v1321 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1318[1];
    v1322 = mlir::SparseElementsAttr::getValues(v2122);
    v1321 = v1320[2];
    {
      goto LABEL_947;
    }
  }

  else
  {
    v1322 = v1318[3];
    {
      goto LABEL_947;
    }
  }

  v1680 = v1322;
  v1887 = v1321;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1322 = v1680;
  v1321 = v1887;
LABEL_947:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1322, v1321, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1323 = malloc(8uLL);
  v1324 = v1323;
  {
    v2096 = v1323;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1324 = v2096;
  }

  mlir::detail::InterfaceMap::insert((v1320 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1324);
  v1325 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, a1);
  if ((v1326 & 1) == 0)
  {
    v2121 = 1283;
    v1472 = "mps.transpose";
    goto LABEL_1669;
  }

  v1327 = v1325;
  v1328 = v1325[2];
  if (v1328 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1325[1];
    v1329 = mlir::SparseElementsAttr::getValues(v2122);
    v1328 = v1327[2];
    {
      goto LABEL_952;
    }
  }

  else
  {
    v1329 = v1325[3];
    {
      goto LABEL_952;
    }
  }

  v1681 = v1329;
  v1888 = v1328;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1329 = v1681;
  v1328 = v1888;
LABEL_952:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1329, v1328, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1330 = malloc(8uLL);
  v1331 = v1330;
  {
    v2097 = v1330;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1331 = v2097;
  }

  mlir::detail::InterfaceMap::insert((v1327 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1331);
  v1332 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id, a1);
  if ((v1333 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.call";
    goto LABEL_1676;
  }

  v1334 = v1332;
  v1335 = v1332[2];
  if (v1335 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1332[1];
    v1336 = mlir::SparseElementsAttr::getValues(v2122);
    v1335 = v1334[2];
    {
      goto LABEL_957;
    }
  }

  else
  {
    v1336 = v1332[3];
    {
      goto LABEL_957;
    }
  }

  v1682 = v1336;
  v1889 = v1335;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1336 = v1682;
  v1335 = v1889;
LABEL_957:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1336, v1335, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1337 = malloc(8uLL);
  v1338 = v1337;
  {
    v2098 = v1337;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1338 = v2098;
  }

  mlir::detail::InterfaceMap::insert((v1334 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1338);
  v1339 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DimensionSizeOp,void>::id, a1);
  if ((v1340 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.dimension_size";
    goto LABEL_1691;
  }

  v1341 = v1339;
  v1342 = v1339[2];
  if (v1342 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1339[1];
    v1343 = mlir::SparseElementsAttr::getValues(v2122);
    v1342 = v1341[2];
    {
      goto LABEL_962;
    }
  }

  else
  {
    v1343 = v1339[3];
    {
      goto LABEL_962;
    }
  }

  v1683 = v1343;
  v1890 = v1342;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1343 = v1683;
  v1342 = v1890;
LABEL_962:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1343, v1342, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1344 = malloc(8uLL);
  v1345 = v1344;
  {
    v2099 = v1344;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1345 = v2099;
  }

  mlir::detail::InterfaceMap::insert((v1341 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1345);
  v1346 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RankOp,void>::id, a1);
  if ((v1347 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.rank";
    goto LABEL_1676;
  }

  v1348 = v1346;
  v1349 = v1346[2];
  if (v1349 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1346[1];
    v1350 = mlir::SparseElementsAttr::getValues(v2122);
    v1349 = v1348[2];
    {
      goto LABEL_967;
    }
  }

  else
  {
    v1350 = v1346[3];
    {
      goto LABEL_967;
    }
  }

  v1684 = v1350;
  v1891 = v1349;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1350 = v1684;
  v1349 = v1891;
LABEL_967:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1350, v1349, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1351 = malloc(8uLL);
  v1352 = v1351;
  {
    v2100 = v1351;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1352 = v2100;
  }

  mlir::detail::InterfaceMap::insert((v1348 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1352);
  v1353 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ShapeOp,void>::id, a1);
  if ((v1354 & 1) == 0)
  {
    v2121 = 1283;
    v1468 = "mps.shape";
    goto LABEL_1674;
  }

  v1355 = v1353;
  v1356 = v1353[2];
  if (v1356 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1353[1];
    v1357 = mlir::SparseElementsAttr::getValues(v2122);
    v1356 = v1355[2];
    {
      goto LABEL_972;
    }
  }

  else
  {
    v1357 = v1353[3];
    {
      goto LABEL_972;
    }
  }

  v1685 = v1357;
  v1892 = v1356;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1357 = v1685;
  v1356 = v1892;
LABEL_972:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1357, v1356, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1358 = malloc(8uLL);
  v1359 = v1358;
  {
    v2101 = v1358;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1359 = v2101;
  }

  mlir::detail::InterfaceMap::insert((v1355 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1359);
  v1360 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SizeOp,void>::id, a1);
  if ((v1361 & 1) == 0)
  {
    v2121 = 1283;
    v1466 = "mps.size";
    goto LABEL_1676;
  }

  v1362 = v1360;
  v1363 = v1360[2];
  if (v1363 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1360[1];
    v1364 = mlir::SparseElementsAttr::getValues(v2122);
    v1363 = v1362[2];
    {
      goto LABEL_977;
    }
  }

  else
  {
    v1364 = v1360[3];
    {
      goto LABEL_977;
    }
  }

  v1686 = v1364;
  v1893 = v1363;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1364 = v1686;
  v1363 = v1893;
LABEL_977:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1364, v1363, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1365 = malloc(8uLL);
  v1366 = v1365;
  {
    v2102 = v1365;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1366 = v2102;
  }

  mlir::detail::InterfaceMap::insert((v1362 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1366);
  v1367 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RandomNormalOp,void>::id, a1);
  if ((v1368 & 1) == 0)
  {
    v2121 = 1283;
    v1483 = "mps.random_normal";
    goto LABEL_1678;
  }

  v1369 = v1367;
  v1370 = v1367[2];
  if (v1370 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1367[1];
    v1371 = mlir::SparseElementsAttr::getValues(v2122);
    v1370 = v1369[2];
    {
      goto LABEL_982;
    }
  }

  else
  {
    v1371 = v1367[3];
    {
      goto LABEL_982;
    }
  }

  v1687 = v1371;
  v1894 = v1370;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1371 = v1687;
  v1370 = v1894;
LABEL_982:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1371, v1370, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1372 = malloc(8uLL);
  v1373 = v1372;
  {
    v2103 = v1372;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1373 = v2103;
  }

  mlir::detail::InterfaceMap::insert((v1369 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1373);
  v1374 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RandomTruncatedNormalOp,void>::id, a1);
  if ((v1375 & 1) == 0)
  {
    v2121 = 1283;
    v1489 = "mps.random_truncated_normal";
    goto LABEL_1695;
  }

  v1376 = v1374;
  v1377 = v1374[2];
  if (v1377 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1374[1];
    v1378 = mlir::SparseElementsAttr::getValues(v2122);
    v1377 = v1376[2];
    {
      goto LABEL_987;
    }
  }

  else
  {
    v1378 = v1374[3];
    {
      goto LABEL_987;
    }
  }

  v1688 = v1378;
  v1895 = v1377;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1378 = v1688;
  v1377 = v1895;
LABEL_987:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1378, v1377, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1379 = malloc(8uLL);
  v1380 = v1379;
  {
    v2104 = v1379;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1380 = v2104;
  }

  mlir::detail::InterfaceMap::insert((v1376 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1380);
  v1381 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RandomUniformOp,void>::id, a1);
  if ((v1382 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.random_uniform";
    goto LABEL_1691;
  }

  v1383 = v1381;
  v1384 = v1381[2];
  if (v1384 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1381[1];
    v1385 = mlir::SparseElementsAttr::getValues(v2122);
    v1384 = v1383[2];
    {
      goto LABEL_992;
    }
  }

  else
  {
    v1385 = v1381[3];
    {
      goto LABEL_992;
    }
  }

  v1689 = v1385;
  v1896 = v1384;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1385 = v1689;
  v1384 = v1896;
LABEL_992:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1385, v1384, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1386 = malloc(8uLL);
  v1387 = v1386;
  {
    v2105 = v1386;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1387 = v2105;
  }

  mlir::detail::InterfaceMap::insert((v1383 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1387);
  v1388 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::InitRandomPhiloxStateOp,void>::id, a1);
  if ((v1389 & 1) == 0)
  {
    v2121 = 1283;
    v1486 = "mps.init_random_philox_state";
    goto LABEL_1682;
  }

  v1390 = v1388;
  v1391 = v1388[2];
  if (v1391 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1388[1];
    v1392 = mlir::SparseElementsAttr::getValues(v2122);
    v1391 = v1390[2];
    {
      goto LABEL_997;
    }
  }

  else
  {
    v1392 = v1388[3];
    {
      goto LABEL_997;
    }
  }

  v1690 = v1392;
  v1897 = v1391;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1392 = v1690;
  v1391 = v1897;
LABEL_997:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1392, v1391, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1393 = malloc(8uLL);
  v1394 = v1393;
  {
    v2106 = v1393;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1394 = v2106;
  }

  mlir::detail::InterfaceMap::insert((v1390 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1394);
  v1395 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::UpdateRandomStateOp,void>::id, a1);
  if ((v1396 & 1) == 0)
  {
    v2121 = 1283;
    v1477 = "mps.update_random_state";
    goto LABEL_1684;
  }

  v1397 = v1395;
  v1398 = v1395[2];
  if (v1398 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1395[1];
    v1399 = mlir::SparseElementsAttr::getValues(v2122);
    v1398 = v1397[2];
    {
      goto LABEL_1002;
    }
  }

  else
  {
    v1399 = v1395[3];
    {
      goto LABEL_1002;
    }
  }

  v1691 = v1399;
  v1898 = v1398;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1399 = v1691;
  v1398 = v1898;
LABEL_1002:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1399, v1398, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1400 = malloc(8uLL);
  v1401 = v1400;
  {
    v2107 = v1400;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1401 = v2107;
  }

  mlir::detail::InterfaceMap::insert((v1397 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1401);
  v1402 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastGradientArgsOp,void>::id, a1);
  if ((v1403 & 1) == 0)
  {
    v2121 = 1283;
    v1489 = "mps.broadcast_gradient_args";
    goto LABEL_1695;
  }

  v1404 = v1402;
  v1405 = v1402[2];
  if (v1405 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1402[1];
    v1406 = mlir::SparseElementsAttr::getValues(v2122);
    v1405 = v1404[2];
    {
      goto LABEL_1007;
    }
  }

  else
  {
    v1406 = v1402[3];
    {
      goto LABEL_1007;
    }
  }

  v1692 = v1406;
  v1899 = v1405;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1406 = v1692;
  v1405 = v1899;
LABEL_1007:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1406, v1405, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1407 = malloc(8uLL);
  v1408 = v1407;
  {
    v2108 = v1407;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1408 = v2108;
  }

  mlir::detail::InterfaceMap::insert((v1404 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1408);
  v1409 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CreateTextureTensorOp,void>::id, a1);
  if ((v1410 & 1) == 0)
  {
    v2121 = 1283;
    v1490 = "mps.create_texture_tensor";
    goto LABEL_1687;
  }

  v1411 = v1409;
  v1412 = v1409[2];
  if (v1412 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1409[1];
    v1413 = mlir::SparseElementsAttr::getValues(v2122);
    v1412 = v1411[2];
    {
      goto LABEL_1012;
    }
  }

  else
  {
    v1413 = v1409[3];
    {
      goto LABEL_1012;
    }
  }

  v1693 = v1413;
  v1900 = v1412;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1413 = v1693;
  v1412 = v1900;
LABEL_1012:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1413, v1412, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1414 = malloc(8uLL);
  v1415 = v1414;
  {
    v2109 = v1414;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1415 = v2109;
  }

  mlir::detail::InterfaceMap::insert((v1411 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1415);
  v1416 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MaterializeSparseTensorOp,void>::id, a1);
  if ((v1417 & 1) == 0)
  {
    v2121 = 1283;
    v1492 = "mps.materialize_sparse_tensor";
LABEL_1697:
    v2118 = "Attempting to attach an interface to an unregistered operation ";
    v2119 = v1492;
    v1485 = 29;
    goto LABEL_1700;
  }

  v1418 = v1416;
  v1419 = v1416[2];
  if (v1419 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1416[1];
    v1420 = mlir::SparseElementsAttr::getValues(v2122);
    v1419 = v1418[2];
    {
      goto LABEL_1017;
    }
  }

  else
  {
    v1420 = v1416[3];
    {
      goto LABEL_1017;
    }
  }

  v1694 = v1420;
  v1901 = v1419;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1420 = v1694;
  v1419 = v1901;
LABEL_1017:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1420, v1419, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1421 = malloc(8uLL);
  v1422 = v1421;
  {
    v2110 = v1421;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1422 = v2110;
  }

  mlir::detail::InterfaceMap::insert((v1418 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1422);
  v1423 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatrixDecompositionLUOp,void>::id, a1);
  if ((v1424 & 1) == 0)
  {
    v2121 = 1283;
    v1489 = "mps.matrix_decomposition_lu";
    goto LABEL_1695;
  }

  v1425 = v1423;
  v1426 = v1423[2];
  if (v1426 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1423[1];
    v1427 = mlir::SparseElementsAttr::getValues(v2122);
    v1426 = v1425[2];
    {
      goto LABEL_1022;
    }
  }

  else
  {
    v1427 = v1423[3];
    {
      goto LABEL_1022;
    }
  }

  v1695 = v1427;
  v1902 = v1426;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1427 = v1695;
  v1426 = v1902;
LABEL_1022:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1427, v1426, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1428 = malloc(8uLL);
  v1429 = v1428;
  {
    v2111 = v1428;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1429 = v2111;
  }

  mlir::detail::InterfaceMap::insert((v1425 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1429);
  v1430 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatrixInverseOp,void>::id, a1);
  if ((v1431 & 1) == 0)
  {
    v2121 = 1283;
    v1479 = "mps.matrix_inverse";
    goto LABEL_1691;
  }

  v1432 = v1430;
  v1433 = v1430[2];
  if (v1433 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1430[1];
    v1434 = mlir::SparseElementsAttr::getValues(v2122);
    v1433 = v1432[2];
    {
      goto LABEL_1027;
    }
  }

  else
  {
    v1434 = v1430[3];
    {
      goto LABEL_1027;
    }
  }

  v1696 = v1434;
  v1903 = v1433;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1434 = v1696;
  v1433 = v1903;
LABEL_1027:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1434, v1433, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1435 = malloc(8uLL);
  v1436 = v1435;
  {
    v2112 = v1435;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1436 = v2112;
  }

  mlir::detail::InterfaceMap::insert((v1432 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1436);
  v1437 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatrixSolverLUOp,void>::id, a1);
  if ((v1438 & 1) == 0)
  {
    v2121 = 1283;
    v1476 = "mps.matrix_solver_lu";
    goto LABEL_1693;
  }

  v1439 = v1437;
  v1440 = v1437[2];
  if (v1440 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1437[1];
    v1441 = mlir::SparseElementsAttr::getValues(v2122);
    v1440 = v1439[2];
    {
      goto LABEL_1032;
    }
  }

  else
  {
    v1441 = v1437[3];
    {
      goto LABEL_1032;
    }
  }

  v1697 = v1441;
  v1904 = v1440;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1441 = v1697;
  v1440 = v1904;
LABEL_1032:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1441, v1440, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1442 = malloc(8uLL);
  v1443 = v1442;
  {
    v2113 = v1442;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1443 = v2113;
  }

  mlir::detail::InterfaceMap::insert((v1439 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1443);
  v1444 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NonMaximumSuppressionOp,void>::id, a1);
  if ((v1445 & 1) == 0)
  {
    v2121 = 1283;
    v1489 = "mps.non_maximum_suppression";
    goto LABEL_1695;
  }

  v1446 = v1444;
  v1447 = v1444[2];
  if (v1447 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1444[1];
    v1448 = mlir::SparseElementsAttr::getValues(v2122);
    v1447 = v1446[2];
    {
      goto LABEL_1037;
    }
  }

  else
  {
    v1448 = v1444[3];
    {
      goto LABEL_1037;
    }
  }

  v1698 = v1448;
  v1905 = v1447;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1448 = v1698;
  v1447 = v1905;
LABEL_1037:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1448, v1447, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1449 = malloc(8uLL);
  v1450 = v1449;
  {
    v2114 = v1449;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1450 = v2114;
  }

  mlir::detail::InterfaceMap::insert((v1446 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1450);
  v1451 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SampleGridDataGradientOp,void>::id, a1);
  if ((v1452 & 1) == 0)
  {
    v2121 = 1283;
    v1492 = "mps.sample_grid_data_gradient";
    goto LABEL_1697;
  }

  v1453 = v1451;
  v1454 = v1451[2];
  if (v1454 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1451[1];
    v1455 = mlir::SparseElementsAttr::getValues(v2122);
    v1454 = v1453[2];
    {
      goto LABEL_1042;
    }
  }

  else
  {
    v1455 = v1451[3];
    {
      goto LABEL_1042;
    }
  }

  v1699 = v1455;
  v1906 = v1454;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1455 = v1699;
  v1454 = v1906;
LABEL_1042:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1455, v1454, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1456 = malloc(8uLL);
  v1457 = v1456;
  {
    v2115 = v1456;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v1457 = v2115;
  }

  mlir::detail::InterfaceMap::insert((v1453 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1457);
  v1458 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SampleGridOp,void>::id, a1);
  if ((v1459 & 1) == 0)
  {
    v2121 = 1283;
    v1473 = "mps.sample_grid";
    goto LABEL_1699;
  }

  v1460 = v1458;
  v1461 = v1458[2];
  if (v1461 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v2122[0] = v1458[1];
    v1462 = mlir::SparseElementsAttr::getValues(v2122);
    v1461 = v1460[2];
    {
      goto LABEL_1047;
    }
  }

  else
  {
    v1462 = v1458[3];
    {
      goto LABEL_1047;
    }
  }

  v1464 = v1461;
  v1465 = v1462;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v1462 = v1465;
  v1461 = v1464;
LABEL_1047:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v1462, v1461, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v1463 = malloc(8uLL);
  {
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  }

  mlir::detail::InterfaceMap::insert((v1460 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1463);
}