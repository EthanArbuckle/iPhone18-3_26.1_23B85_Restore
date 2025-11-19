void mlir::mps::anonymous namespace::CanonicalizeReadVariable::~CanonicalizeReadVariable(mlir::mps::_anonymous_namespace_::CanonicalizeReadVariable *this)
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

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::ReadVariableOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReadVariable::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id && (*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 1)
  {
    v16[0] = *(*(a2 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(v16);
    if (DefiningOp)
    {
      if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 1)
      {
        if (*(DefiningOp + 36))
        {
          v6 = DefiningOp - 16;
        }

        else
        {
          v6 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
        v7 = *NextResultAtOffset;
        if (*(a2 + 36))
        {
          v8 = a2 - 16;
        }

        else
        {
          v8 = 0;
        }

        v9 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
        memset(v16, 0, sizeof(v16));
        if (v7)
        {
          while (1)
          {
            v10 = v7[2];
            if (v10 && *(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
            {
              v11 = *(a2 + 36) ? a2 - 16 : 0;
              v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
              if (mlir::Value::getDefiningOp(&v18) == v10 || mlir::DominanceInfo::properlyDominates(v16, v18, v10))
              {
                if (v9)
                {
                  break;
                }
              }
            }

LABEL_16:
            v7 = *v7;
            if (!v7)
            {
              goto LABEL_32;
            }
          }

          v12 = v9;
          while (1)
          {
            v13 = v12[2];
            if (v10 == v13 || (mlir::DominanceInfo::properlyDominatesImpl(v16, v10, v13, 1) & 1) != 0)
            {
              break;
            }

            v12 = *v12;
            if (!v12)
            {
              goto LABEL_16;
            }
          }

          v18 = mlir::OpBuilder::create<mlir::mps::ReadVariableOp,mlir::detail::TypedValue<mlir::TensorType> &>((a3 + 8), *(a2 + 24), &NextResultAtOffset);
          v14 = mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::mps::ReadVariableOp &>((a3 + 8), *(a2 + 24), &v18);
          (*(*a3 + 8))(a3, a2, v14);
        }

LABEL_32:
        mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(v16);
      }
    }
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReadVariableOp,mlir::detail::TypedValue<mlir::TensorType> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReadVariableOp,mlir::detail::TypedValue<mlir::TensorType> &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::mps::ReadVariableOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IdentityOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::mps::ReadVariableOp &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::IdentityOp,void>::id)
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

void mlir::mps::anonymous namespace::ReshapeSDPAReshape::~ReshapeSDPAReshape(mlir::mps::_anonymous_namespace_::ReshapeSDPAReshape *this)
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

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::ReshapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::ReshapeSDPAReshape::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v119 = 0;
  v120 = 0;
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  v110[0] = &v120;
  v110[1] = &v115;
  v108[0] = &v119;
  v108[1] = &v114;
  v109 = 0;
  v106[0] = &v118;
  v106[1] = &v113;
  v107 = 0;
  v104[0] = v110;
  v104[1] = v108;
  v104[2] = v106;
  v104[3] = &v117;
  v104[4] = &v116;
  v105 = 0;
  v102[0] = v104;
  v102[1] = &v112;
  v103 = 0;
  if ((mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(v102, a2) & 1) == 0)
  {
    v121[0] = "could not detect reshape->sdpa->reshape op pattern";
    v122 = 259;
    v96[0] = v121;
    v11 = *(a3 + 16);
    if (v11 && mlir::RewriterBase::Listener::classof(v11))
    {
      (*(*v11 + 88))(v11, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReshapeOp &>(mlir::mps::ReshapeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v96);
    }

    return 0;
  }

  v5 = v105;
  v6 = v119;
  v100 = v119;
  v101 = v120;
  v7 = v117;
  v8 = v118;
  v98 = v117;
  v99 = v118;
  v97 = v116;
  v9 = (*(v120 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v121[0] = v9;
  v121[1] = v10;
  v13 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v96[0] = v13;
  v96[1] = v14;
  v15 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v95[0] = v15;
  v95[1] = v16;
  v17 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v94[0] = v17;
  v94[1] = v18;
  v19 = v109;
  v20 = v107;
  v21 = v103;
  if (*(v111 + 36))
  {
    v22 = v111 - 16;
  }

  else
  {
    v22 = 0;
  }

  v23 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v23)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  v93[0] = v23;
  v93[1] = v24;
  if (*(v19 + 36))
  {
    v25 = v19 - 16;
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

  v92[0] = v26;
  v92[1] = v27;
  if (*(v20 + 36))
  {
    v28 = v20 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v91[0] = v29;
  v91[1] = v30;
  if (*(v5 + 36))
  {
    v31 = v5 - 16;
  }

  else
  {
    v31 = 0;
  }

  v32 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
  }

  else
  {
    v33 = 0;
  }

  v90[0] = v32;
  v90[1] = v33;
  if (*(v21 + 36))
  {
    v34 = v21 - 16;
  }

  else
  {
    v34 = 0;
  }

  v35 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v34, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v35)
  {
    v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8);
  }

  else
  {
    v36 = 0;
  }

  v89[0] = v35;
  v89[1] = v36;
  result = mlir::CallOpInterface::getArgOperands(v121);
  if (result)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v121);
    if (v38)
    {
      v39 = 8 * v38;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v39 -= 8;
        if (!v39)
        {
          goto LABEL_53;
        }
      }

      return 0;
    }

LABEL_53:
    result = mlir::CallOpInterface::getArgOperands(v96);
    if (result)
    {
      v40 = mlir::CallableOpInterface::getArgAttrsAttr(v96);
      if (v41)
      {
        v42 = 8 * v41;
        while (*v40 != 0x8000000000000000)
        {
          ++v40;
          v42 -= 8;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        return 0;
      }

LABEL_58:
      result = mlir::CallOpInterface::getArgOperands(v95);
      if (result)
      {
        v43 = mlir::CallableOpInterface::getArgAttrsAttr(v95);
        if (v44)
        {
          v45 = 8 * v44;
          while (*v43 != 0x8000000000000000)
          {
            ++v43;
            v45 -= 8;
            if (!v45)
            {
              goto LABEL_63;
            }
          }

          return 0;
        }

LABEL_63:
        result = mlir::CallOpInterface::getArgOperands(v94);
        if (result)
        {
          v46 = mlir::CallableOpInterface::getArgAttrsAttr(v94);
          if (v47)
          {
            v48 = 8 * v47;
            while (*v46 != 0x8000000000000000)
            {
              ++v46;
              v48 -= 8;
              if (!v48)
              {
                goto LABEL_68;
              }
            }

            return 0;
          }

LABEL_68:
          result = mlir::CallOpInterface::getArgOperands(v93);
          if (result)
          {
            v49 = mlir::CallableOpInterface::getArgAttrsAttr(v93);
            if (v50)
            {
              v51 = 8 * v50;
              while (*v49 != 0x8000000000000000)
              {
                ++v49;
                v51 -= 8;
                if (!v51)
                {
                  goto LABEL_73;
                }
              }

              return 0;
            }

LABEL_73:
            result = mlir::ShapedType::hasStaticShape(v92);
            if (result)
            {
              result = mlir::ShapedType::hasStaticShape(v91);
              if (result)
              {
                result = mlir::ShapedType::hasStaticShape(v89);
                if (result)
                {
                  mlir::CallableOpInterface::getArgAttrsAttr(v121);
                  v53 = v52;
                  mlir::CallableOpInterface::getArgAttrsAttr(v89);
                  if (v53 == v54)
                  {
                    mlir::CallableOpInterface::getArgAttrsAttr(v96);
                    v56 = v55;
                    mlir::CallableOpInterface::getArgAttrsAttr(v89);
                    if (v56 == v57)
                    {
                      mlir::CallableOpInterface::getArgAttrsAttr(v95);
                      v59 = v58;
                      mlir::CallableOpInterface::getArgAttrsAttr(v89);
                      if (v59 == v60)
                      {
                        v61 = mlir::CallableOpInterface::getArgAttrsAttr(v121);
                        v63 = v62;
                        v64 = mlir::CallableOpInterface::getArgAttrsAttr(v96);
                        v66 = v65;
                        v67 = mlir::CallableOpInterface::getArgAttrsAttr(v95);
                        v87 = v68;
                        v88 = v67;
                        v69 = mlir::CallableOpInterface::getArgAttrsAttr(v93);
                        v71 = v70;
                        v72 = mlir::CallableOpInterface::getArgAttrsAttr(v92);
                        v74 = v73;
                        v75 = mlir::CallableOpInterface::getArgAttrsAttr(v91);
                        v85 = v76;
                        v86 = v75;
                        v77 = mlir::CallableOpInterface::getArgAttrsAttr(v90);
                        v83 = v78;
                        v84 = v77;
                        v79 = mlir::CallableOpInterface::getArgAttrsAttr(v89);
                        v81 = v80;
                        v82 = v79;
                        if (result)
                        {
                          if (result)
                          {
                            if (result)
                            {
                              if (result)
                              {
                                mlir::RewriterBase::replaceOpWithNewOp<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a3, a2, &v101, &v100, &v99, &v98, &v97);
                                return 1;
                              }
                            }
                          }
                        }

                        return result;
                      }
                    }
                  }

                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::ReshapeSDPAReshape::matchAndRewriteImpl(mlir::mps::ReshapeOp,mlir::PatternRewriter &)const::{lambda(llvm::ArrayRef<long long>,llvm::ArrayRef<long long>)#1}::operator()(uint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a4 - a2;
  if (a4 > a2)
  {
    v5 = a3;
    while (1)
    {
      v6 = *v5++;
      if (v6 != 1)
      {
        break;
      }

      if (!--v4)
      {
        if (!a2)
        {
          return 1;
        }

        v7 = -a2;
        do
        {
          v9 = *a1++;
          v8 = v9;
          v11 = v9 != 0x8000000000000000 && v8 == a3[a4 + v7];
          v13 = __CFADD__(v7++, 1);
        }

        while (v11 && !v13);
        return v11;
      }
    }
  }

  return 0;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v9 = mlir::OpBuilder::create<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value&,mlir::Value&>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7);
  (*(*a1 + 1))(a1, a2, v9);
  return v9;
}

void mlir::mps::anonymous namespace::CanonicalizeSparseMatMul::~CanonicalizeSparseMatMul(mlir::mps::_anonymous_namespace_::CanonicalizeSparseMatMul *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeSparseMatMul::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v84[1] = *MEMORY[0x1E69E9840];
  v82 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v82);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::MaterializeSparseTensorOp,void>::id)
  {
    v82 = *(*(a2 + 72) + 56);
    result = mlir::Value::getDefiningOp(&v82);
    if (!result)
    {
      return result;
    }

    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::MaterializeSparseTensorOp,void>::id)
    {
      return 0;
    }

    v81 = a2;
    v82 = *(*(a2 + 72) + 56);
    v9 = mlir::Value::getDefiningOp(&v82);
    if (v9)
    {
      if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MaterializeSparseTensorOp,void>::id)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v80 = v10;
    ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v80, 1u);
    v79 = *(*(v80 + 72) + 32 * ODSOperandIndexAndLength + 24);
    v41 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v80, 1u);
    v78 = *(*(v80 + 72) + 32 * v41 + 56);
    if (*(v80 + 36))
    {
      v42 = v80 - 16;
    }

    else
    {
      v42 = 0;
    }

    v43 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v43)
    {
      v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
    }

    else
    {
      v44 = 0;
    }

    v76 = v43;
    v77 = v44;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v76);
    v47 = v45;
    v82 = v84;
    v83 = 0x200000000;
    v48 = (8 * v45) >> 3;
    if (v48 < 3)
    {
      v49 = 0;
      v50 = 0;
      v51 = 8 * v45;
      if (!v45)
      {
LABEL_51:
        LODWORD(v83) = v50 + (v51 >> 3);
        v76 = mlir::OpBuilder::create<mlir::mps::ConstantOp,llvm::SmallVector<int,2u> &>(a3 + 1, *(a2 + 24), &v82);
        v66 = *(a2 + 24);
        v67 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v80, 0);
        v68 = *(*(v80 + 72) + 32 * v67 + 24);
        v73 = *(*(a2 + 72) + 24);
        v74 = v68;
        TransposeRhs = !mlir::mps::MatMulOp::getTransposeRhs(&v81);
        v71 = !mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v81);
        StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v80);
        v75 = mlir::OpBuilder::create<mlir::mpsx::SparseDenseMatMulOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::mps::ConstantOp &,mlir::Value,BOOL,BOOL,mlir::mps::SparseTensorStorage>(a3 + 1, v66, &v74, &v79, &v78, &v76, &v73, &TransposeRhs, &v71, &StorageType) - 16;
        v69 = *(v81 + 24);
        LODWORD(v73) = -1;
        StorageType = -2;
        v74 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>(a3 + 1, v69, &v75, &v73, &StorageType) - 16;
        (**a3)(a3, v81, &v74, 1);
        goto LABEL_52;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v48, 4);
      v49 = v83;
      v50 = v83;
      v51 = 8 * v47;
      if (!v47)
      {
        goto LABEL_51;
      }
    }

    v52 = &v82[4 * v49];
    v53 = (v47 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v53 >= 7)
    {
      v56 = v53 + 1;
      v57 = (v53 + 1) & 0x3FFFFFFFFFFFFFF8;
      v54 = &v52->i8[4 * v57];
      v55 = (ArgAttrsAttr + 8 * v57);
      v58 = (ArgAttrsAttr + 32);
      v59 = v52 + 1;
      v60 = v57;
      do
      {
        v62 = v58[-2];
        v61 = v58[-1];
        v64 = *v58;
        v63 = v58[1];
        v58 += 4;
        v59[-1] = vuzp1q_s32(v62, v61);
        *v59 = vuzp1q_s32(v64, v63);
        v59 += 2;
        v60 -= 8;
      }

      while (v60);
      if (v56 == v57)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v54 = v52;
      v55 = ArgAttrsAttr;
    }

    do
    {
      v65 = *v55++;
      *v54 = v65;
      v54 += 4;
    }

    while (v55 != (ArgAttrsAttr + v51));
LABEL_50:
    v50 = v83;
    goto LABEL_51;
  }

  v81 = a2;
  v82 = *(*(a2 + 72) + 24);
  v7 = mlir::Value::getDefiningOp(&v82);
  if (v7)
  {
    if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MaterializeSparseTensorOp,void>::id)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v80 = v8;
  v11 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v80, 1u);
  v79 = *(*(v80 + 72) + 32 * v11 + 24);
  v12 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v80, 1u);
  v78 = *(*(v80 + 72) + 32 * v12 + 56);
  if (*(v80 + 36))
  {
    v13 = v80 - 16;
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

  v76 = v14;
  v77 = v15;
  v17 = mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  v18 = v16;
  v82 = v84;
  v83 = 0x200000000;
  v19 = (8 * v16) >> 3;
  if (v19 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v19, 4);
    v20 = v83;
    v21 = v83;
    v22 = 8 * v18;
    if (!v18)
    {
      goto LABEL_32;
    }

LABEL_25:
    v23 = &v82[4 * v20];
    v24 = (v18 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v24 >= 7)
    {
      v27 = v24 + 1;
      v28 = (v24 + 1) & 0x3FFFFFFFFFFFFFF8;
      v25 = &v23->i8[4 * v28];
      v26 = (v17 + 8 * v28);
      v29 = (v17 + 32);
      v30 = v23 + 1;
      v31 = v28;
      do
      {
        v33 = v29[-2];
        v32 = v29[-1];
        v35 = *v29;
        v34 = v29[1];
        v29 += 4;
        v30[-1] = vuzp1q_s32(v33, v32);
        *v30 = vuzp1q_s32(v35, v34);
        v30 += 2;
        v31 -= 8;
      }

      while (v31);
      if (v27 == v28)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v25 = v23;
      v26 = v17;
    }

    do
    {
      v36 = *v26++;
      *v25 = v36;
      v25 += 4;
    }

    while (v26 != (v17 + v22));
LABEL_31:
    v21 = v83;
    goto LABEL_32;
  }

  v20 = 0;
  v21 = 0;
  v22 = 8 * v16;
  if (v16)
  {
    goto LABEL_25;
  }

LABEL_32:
  LODWORD(v83) = v21 + (v22 >> 3);
  v76 = mlir::OpBuilder::create<mlir::mps::ConstantOp,llvm::SmallVector<int,2u> &>(a3 + 1, *(a2 + 24), &v82);
  v37 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v80, 0);
  v38 = *(*(v80 + 72) + 32 * v37 + 24);
  v74 = *(*(a2 + 72) + 56);
  v75 = v38;
  LOBYTE(StorageType) = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v81);
  TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v81);
  LODWORD(v73) = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v80);
  v39 = mlir::OpBuilder::create<mlir::mpsx::SparseDenseMatMulOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::mps::ConstantOp &,mlir::Value,BOOL,BOOL,mlir::mps::SparseTensorStorage>(a3 + 1, *(a2 + 24), &v75, &v79, &v78, &v76, &v74, &StorageType, &TransposeRhs, &v73);
  ((*a3)[1])(a3, a2, v39);
LABEL_52:
  if (v82 != v84)
  {
    free(v82);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,llvm::SmallVector<int,2u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
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
  mlir::mps::ConstantOp::build(a1, v15, *a3, *(a3 + 8));
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

uint64_t mlir::OpBuilder::create<mlir::mpsx::SparseDenseMatMulOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::mps::ConstantOp &,mlir::Value,BOOL,BOOL,mlir::mps::SparseTensorStorage>(mlir::BoolAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, uint64_t *a7, unsigned __int8 *a8, unsigned __int8 *a9, unsigned int *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::SparseDenseMatMulOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::SparseDenseMatMulOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::mps::TransposeOp &,BOOL,BOOL,mlir::mps::SparseTensorStorage>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mpsx::SparseDenseMatMulOp::build(a1, v27, *a3, *a4, *a5, *a6 - 16, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::SparseDenseMatMulOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeQuantizedMatMulExpandSqueeze::~CanonicalizeQuantizedMatMulExpandSqueeze(mlir::mps::_anonymous_namespace_::CanonicalizeQuantizedMatMulExpandSqueeze *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedMatMulExpandSqueeze::matchAndRewriteImpl(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v44 = a2;
  ODSOperandIndexAndLength = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v44, 0);
  v43 = *(*(v44 + 9) + 32 * ODSOperandIndexAndLength + 24);
  v5 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v44, 4);
  v42 = *(*(v44 + 9) + 32 * v5 + 24);
  result = mlir::Value::getDefiningOp(&v43);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      return 0;
    }

    v8 = *(v44 + 9);
    v9 = v44 - 16;
    if (!v8)
    {
      v9 = 0;
    }

    *&v48[0] = v9;
    *(&v48[0] + 1) = v8;
    mlir::ResultRange::getUses(v48, v45);
    v10 = v47;
    if (v46 == v47)
    {
      return 0;
    }

    v48[0] = v45[0];
    v48[1] = v45[1];
    v49 = v46;
    mlir::ResultRange::UseIterator::operator++(v48);
    if (v49 != v10)
    {
      return 0;
    }

    v11 = *(v44 + 9);
    v12 = v44 - 16;
    if (!v11)
    {
      v12 = 0;
    }

    *&v48[0] = v12;
    *(&v48[0] + 1) = v11;
    mlir::ResultRange::getUses(v48, v45);
    result = 0;
    v13 = *(v46 + 16);
    if (v13)
    {
      if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
      {
        SingleSqueezeIndex = mlir::mps::getSingleSqueezeIndex(v7, a3);
        if (v15)
        {
          v16 = SingleSqueezeIndex;
          v17 = (*(*(*(v7 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v17)
          {
            v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
          }

          else
          {
            v18 = 0;
          }

          *&v48[0] = v17;
          *(&v48[0] + 1) = v18;
          TransposeLhs = mlir::mpsx::QuantizedMatMulOp::getTransposeLhs(&v44);
          v20 = 1;
          if (TransposeLhs)
          {
            v20 = 2;
          }

          v21 = v20 + v16;
          mlir::CallableOpInterface::getArgAttrsAttr(v48);
          if (v21 >= v22)
          {
            *&v45[0] = "cannot apply pattern if the squeeze is applied to the last two dimensions";
            LOWORD(v46) = 259;
            v25 = v44;
            InputZeroPoint = v45;
            v26 = *(a3 + 16);
            if (v26 && mlir::RewriterBase::Listener::classof(v26))
            {
              (*(*v26 + 88))(v26, *(v25 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mpsx::QuantizedMatMulOp &>(mlir::mpsx::QuantizedMatMulOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &InputZeroPoint);
            }
          }

          else
          {
            SingleExpandedIndex = mlir::mps::getSingleExpandedIndex(v13, a3);
            if (v24)
            {
              if (SingleExpandedIndex == v16)
              {
                *&v45[0] = mlir::mpsx::QuantizedMatMulOp::getInputScale(&v44);
                InputZeroPoint = mlir::mpsx::QuantizedMatMulOp::getInputZeroPoint(&v44);
                InputMin = mlir::mpsx::QuantizedMatMulOp::getInputMin(&v44);
                InputQuantParamsAxisAttr = mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxisAttr(&v44);
                WeightsScale = mlir::mpsx::QuantizedMatMulOp::getWeightsScale(&v44);
                WeightsZeroPoint = mlir::mpsx::QuantizedMatMulOp::getWeightsZeroPoint(&v44);
                WeightsMin = mlir::mpsx::QuantizedMatMulOp::getWeightsMin(&v44);
                WeightsQuantParamsAxisAttr = mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxisAttr(&v44);
                v28 = v44;
                v35 = *(*(v7 + 72) + 24);
                v36 = WeightsQuantParamsAxisAttr;
                WeightsPaletteLut = mlir::mpsx::QuantizedMatMulOp::getWeightsPaletteLut(&v44);
                BiquantWeightsScale = mlir::mpsx::QuantizedMatMulOp::getBiquantWeightsScale(&v44);
                BiquantWeightsZeroPoint = mlir::mpsx::QuantizedMatMulOp::getBiquantWeightsZeroPoint(&v44);
                FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v44);
                v30 = mlir::mpsx::QuantizedMatMulOp::getTransposeLhs(&v44);
                TransposeRhs = mlir::mpsx::QuantizedMatMulOp::getTransposeRhs(&v44);
                mlir::RewriterBase::replaceOpWithNewOp<mlir::mpsx::QuantizedMatMulOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::Value&,mlir::IntegerAttr &,mlir::Value&,mlir::Value&,mlir::Value&,mlir::Value&,mlir::IntegerAttr &,mlir::Value,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::Type,BOOL,BOOL>(a3, v28, &v35, v45, &InputZeroPoint, &InputMin, &InputQuantParamsAxisAttr, &v42, &WeightsScale, &WeightsZeroPoint, &WeightsMin, &v36, &WeightsPaletteLut, &BiquantWeightsScale, &BiquantWeightsZeroPoint, &FunctionType, &v30, &TransposeRhs);
                return 1;
              }

              else
              {
                *&v45[0] = "squeezed dimension and expanded dimension did not match";
                LOWORD(v46) = 259;
                return mlir::RewriterBase::notifyMatchFailure<mlir::mpsx::QuantizedMatMulOp &>(a3, &v44, v45);
              }
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mpsx::QuantizedMatMulOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::Value&,mlir::IntegerAttr &,mlir::Value&,mlir::Value&,mlir::Value&,mlir::Value&,mlir::IntegerAttr &,mlir::Value,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::Type,BOOL,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, unsigned __int8 *a17, unsigned __int8 *a18)
{
  v20 = mlir::OpBuilder::create<mlir::mpsx::QuantizedMatMulOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::IntegerAttr &,mlir::detail::TypedValue<mlir::TensorType>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::IntegerAttr &,mlir::Value,mlir::Value &,mlir::Value &,mlir::Type,BOOL,BOOL>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  ((*a1)[1])(a1, a2, v20);
  return v20;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mpsx::QuantizedMatMulOp &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = a3;
  v4 = *(a1 + 16);
  if (v4 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v4 + 88))(v4, *(v3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mpsx::QuantizedMatMulOp &>(mlir::mpsx::QuantizedMatMulOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v6);
  }

  return 0;
}

void mlir::mps::anonymous namespace::CanonicalizeQuantizedGather::~CanonicalizeQuantizedGather(mlir::mps::_anonymous_namespace_::CanonicalizeQuantizedGather *this)
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

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::GatherOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedGather::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = 0;
  v68 = a2;
  v65 = 0;
  v66 = 0;
  v62[0] = &v67;
  v62[1] = &v66;
  v62[2] = &v65;
  v62[3] = &v64;
  v63 = 0;
  v64 = 0;
  v60 = 0;
  v61 = 0;
  v58[0] = v62;
  v58[1] = &v61;
  v58[2] = &v60;
  v59 = 0;
  v51[0] = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 3)
  {
LABEL_8:
    v69[0] = "failed: root pattern did not match";
    v70 = 259;
    v51[0] = v69;
    v12 = *(a3 + 16);
    if (v12 && mlir::RewriterBase::Listener::classof(*(a3 + 16)))
    {
      (*(*v12 + 88))(v12, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherOp &>(mlir::mps::GatherOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v51);
    }

    return 0;
  }

  v4 = a3;
  LOBYTE(v50[0]) = 1;
  v69[0] = v50;
  v69[1] = v51;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::GatherOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> & *)#1},0ul,1ul,2ul>(v58, v69);
  if ((v50[0] & 1) == 0)
  {
    a3 = v4;
    goto LABEL_8;
  }

  v59 = v51[0];
  v56 = v51[0];
  v57 = v63;
  v5 = *(v63 + 72);
  v6 = v5[15];
  v7 = v5[11];
  v54 = v7;
  v55 = v6;
  v8 = v5[3];
  v9 = v5[7];
  v52 = v9;
  v53 = v8;
  v10 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v51[0] = v10;
  v51[1] = v11;
  v14 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v50[0] = v14;
  v50[1] = v15;
  v16 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v49[0] = v16;
  v49[1] = v17;
  v18 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v18)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  v48[0] = v18;
  v48[1] = v19;
  if (mlir::CallOpInterface::getArgOperands(v51))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v51);
    v21 = v20 & ~(v20 >> 63);
  }

  else
  {
    v21 = 0;
  }

  if (mlir::CallOpInterface::getArgOperands(v50))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v50);
    if (v21 <= v22)
    {
      v21 = v22;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(v49))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v49);
    if (v21 <= v23)
    {
      v21 = v23;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(v48))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v48);
    if (v21 <= v24)
    {
      v21 = v24;
    }
  }

  v47[0] = v4;
  v47[1] = &v68;
  v46 = 5;
  strcpy(v45, "input");
  {
    v25 = 1;
    if (v46 < 0)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v44 = 5;
  strcpy(v43, "scale");
  {
    v25 = 1;
    if (v44 < 0)
    {
      goto LABEL_47;
    }

LABEL_39:
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_43:
    operator delete(v45[0]);
    if ((v25 & 1) == 0)
    {
      goto LABEL_44;
    }

    return 0;
  }

  v42 = 9;
  strcpy(v41, "zeroPoint");
  {
    v40 = 3;
    LODWORD(v39) = 7235949;
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v25 = 1;
    if ((v42 & 0x80000000) == 0)
    {
LABEL_38:
      if ((v44 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_47;
    }
  }

  operator delete(v41[0]);
  if ((v44 & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_47:
  operator delete(v43[0]);
  if (v46 < 0)
  {
    goto LABEL_43;
  }

LABEL_40:
  if (v25)
  {
    return 0;
  }

LABEL_44:
  if ((mlir::mps::DequantizeLUTOp::getAxis(&v57) & 0x100000000) != 0)
  {
    v69[0] = "can't fuse the dequantize op which has the broadcast axis";
    v70 = 259;
    v28 = v68;
    v71 = v69;
    v29 = *(v4 + 16);
    if (v29)
    {
      if (mlir::RewriterBase::Listener::classof(*(v4 + 16)))
      {
        (*(*v29 + 88))(v29, *(v28 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherOp &>(mlir::mps::GatherOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v71);
      }
    }

    return 0;
  }

  v38 = 5;
  strcpy(__p, "input");
  v36[24] = 5;
  strcpy(v36, "\tscale");
  strcpy(v35, "zeroPoint");
  v34 = 3;
  LODWORD(v33) = 7235949;
  v26 = v68;
  v69[0] = v61;
  v71 = v60;
  FunctionType = mlir::func::FuncOp::getFunctionType(&v57);
  Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&v56);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v56);
  v27 = mlir::OpBuilder::create<mlir::mpsx::QuantizedGatherOp,mlir::Value &,mlir::Value,mlir::Value,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Type,unsigned int,BOOL>((v4 + 8), *(v26 + 24), &v53, v69, &v71, &v52, &v54, &v55, &FunctionType, &Count, &InferredResultTypes);
  (*(*v4 + 8))(v4, v26, v27);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedGather::matchAndRewriteImpl(mlir::mps::GatherOp,mlir::PatternRewriter &)const::{lambda(mlir::ShapedType const&,long long,mlir::Value &,BOOL,std::string)#1}::operator()(uint64_t *a1, mlir::CallOpInterface *this, uint64_t a3, uint64_t *a4, int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!mlir::CallOpInterface::getArgOperands(this))
  {
    return 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(this);
  if (a3 <= v10)
  {
    if (a3 >= v10)
    {
      return 1;
    }

    v24 = *a1;
    v25 = a1[1];
    std::operator+<char>();
    v26 = std::string::append(&v52, " tensor to ");
    v27 = v26->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v26->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v51, a3);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v51;
    }

    else
    {
      v28 = v51.__r_.__value_.__r.__words[0];
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v51.__r_.__value_.__l.__size_;
    }

    v30 = std::string::append(&v60, v28, size);
    v31 = v30->__r_.__value_.__r.__words[2];
    *__p = *&v30->__r_.__value_.__l.__data_;
    v54 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v59 = 260;
    v56 = __p;
    v32 = *v25;
    isSplat = &v56;
    v33 = *(v24 + 16);
    if (v33 && mlir::RewriterBase::Listener::classof(v33))
    {
      (*(*v33 + 88))(v33, *(v32 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherOp &>(mlir::mps::GatherOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &isSplat);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_39;
      }
    }

    else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    operator delete(v51.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

LABEL_40:
      operator delete(v52.__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_39:
    operator delete(v60.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_40;
  }

  v11 = v10;
  isSplat = mlir::ElementsAttr::isSplat(this);
  if (*(*isSplat + 17) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || mlir::Type::isInteger(&isSplat, 1) || mlir::Type::getIntOrFloatBitWidth(&isSplat) > 7)
  {
    if (!a5)
    {
      return 1;
    }

    v56 = v58;
    v57 = 0x400000000;
    v35 = a3 - v11;
    if (v35)
    {
      v40 = 0;
      for (i = 0; i != v35; ++i)
      {
        if (v40 >= HIDWORD(v57))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v40 + 1, 4);
          v40 = v57;
        }

        *(v56 + v40) = i;
        v40 = v57 + 1;
        LODWORD(v57) = v57 + 1;
      }
    }

    v60.__r_.__value_.__r.__words[0] = v35;
    IntegerType = mlir::Builder::getIntegerType((*a1 + 8), 32, 1);
    v37 = mlir::RankedTensorType::get(&v60, 1, IntegerType, 0);
    if (v37)
    {
      v38 = v37;
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
      v37 = v38;
    }

    else
    {
      v39 = 0;
    }

    __p[0] = mlir::DenseElementsAttr::getFromRawBuffer(v37, v39, v56, 4 * v57, 4, 1, 1);
    v60.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((*a1 + 8), *(*a1[1] + 24), __p) - 16;
    *a4 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::Value &>((*a1 + 8), *(*a1[1] + 24), a4, &v60) - 16;
    v42 = v56;
    if (v56 == v58)
    {
      return 1;
    }

LABEL_43:
    free(v42);
    return 1;
  }

  *&v52.__r_.__value_.__l.__data_ = 0uLL;
  v12 = *a4;
  __p[0] = &v52;
  v56 = v12;
  DefiningOp = mlir::Value::getDefiningOp(&v56);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(__p, DefiningOp) & 1) != 0)
  {
    if (!a5)
    {
      return 1;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(this);
    llvm::SmallVector<long long,4u>::SmallVector<long long,void>(&v56, ArgAttrsAttr, v15);
    for (j = a3 - v11; j; --j)
    {
      __p[0] = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v56, v56, __p);
    }

    v17 = v56;
    v18 = v57;
    v19 = mlir::ElementsAttr::isSplat(this);
    v20 = mlir::RankedTensorType::get(v17, v18, v19, 0);
    v21 = v20;
    v22 = *&v52.__r_.__value_.__l.__data_;
    v23 = v20 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8) : 0;
    __p[0] = mlir::reshapeElementsAttr(v22, *(&v22 + 1), v21, v23);
    __p[1] = v50;
    *a4 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ElementsAttr>((*a1 + 8), *(*a1[1] + 24), __p) - 16;
    v42 = v56;
    if (v56 == v58)
    {
      return 1;
    }

    goto LABEL_43;
  }

  v43 = *a1;
  v44 = a1[1];
  std::operator+<char>();
  v45 = std::string::append(&v60, ", because it is not a constant");
  v46 = v45->__r_.__value_.__r.__words[2];
  *__p = *&v45->__r_.__value_.__l.__data_;
  v54 = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  v59 = 260;
  v56 = __p;
  v47 = *v44;
  v51.__r_.__value_.__r.__words[0] = &v56;
  result = mlir::RewriterBase::notifyMatchFailure<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherOp &>(mlir::mps::GatherOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>(v43, v47, &v51);
  if (SHIBYTE(v54) < 0)
  {
    v48 = result;
    operator delete(__p[0]);
    result = v48;
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    v49 = result;
    operator delete(v60.__r_.__value_.__l.__data_);
    return v49;
  }

  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::GatherOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> & *)#1},0ul,1ul,2ul>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v19[0] = *(*(**(a2 + 8) + 72) + 24);
  result = mlir::Value::getDefiningOp(v19);
  if (result)
  {
    v21 = result;
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id && (*(result + 46) & 0x80) != 0 && *(result + 68) == 4)
    {
      v7 = result;
      v20 = 1;
      v19[0] = &v20;
      v19[1] = &v21;
      mlir::detail::enumerateImpl<std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SpaceToBatchOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *> & *)#1},0ul,1ul,2ul,3ul>(v4, v19);
      v6 = v20;
      if (v20 == 1)
      {
        *(v4 + 32) = v21;
      }

      result = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *a2;
  v9 = v6 & **a2;
  if (result)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *v8 = v10;
  v11 = a1[1];
  v12 = *(**(a2 + 8) + 72);
  v13 = *(v12 + 56);
  if (*v11)
  {
    v14 = *v11 == v13;
  }

  else
  {
    *v11 = v13;
    v8 = *a2;
    v12 = *(**(a2 + 8) + 72);
    v10 = **a2 != 0;
    v14 = 1;
  }

  v15 = v14 && v10;
  *v8 = v15;
  v16 = a1[2];
  v17 = *(v12 + 88);
  if (*v16)
  {
    v18 = *v16 == v17;
  }

  else
  {
    *v16 = v17;
    v8 = *a2;
    v15 = **a2 != 0;
    v18 = 1;
  }

  *v8 = v18 && v15;
  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherOp &>(mlir::mps::GatherOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v3 + 88))(v3, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherOp &>(mlir::mps::GatherOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, a3);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::QuantizedGatherOp,mlir::Value &,mlir::Value,mlir::Value,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Type,unsigned int,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, unsigned int *a10, char *a11)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::QuantizedGatherOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::QuantizedGatherOp,mlir::Value &,mlir::Value,mlir::Value,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Type,unsigned int,BOOL>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v20);
  mlir::mpsx::QuantizedGatherOp::build(a1, v28, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::QuantizedGatherOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

void mlir::mps::anonymous namespace::CanonicalizeQuantizedGatherNDPatternToFusionOp::~CanonicalizeQuantizedGatherNDPatternToFusionOp(mlir::mps::_anonymous_namespace_::CanonicalizeQuantizedGatherNDPatternToFusionOp *this)
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

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::GatherNDOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedGatherNDPatternToFusionOp::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v92[5] = *MEMORY[0x1E69E9840];
  v82 = a2;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v76[0] = &v81;
  v76[1] = &v80;
  v76[2] = &v79;
  v76[3] = &v78;
  v77 = 0;
  v74[2] = 0;
  v75 = 0;
  v74[0] = v76;
  v74[1] = &v75;
  if ((mlir::detail::RecursivePatternMatcherBinder<mlir::mps::GatherNDOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(v74, a2) & 1) == 0)
  {
    v40[0] = "gather_nd input was not the dequantize op";
    LOWORD(v43) = 259;
    goto LABEL_5;
  }

  v5 = *(v77 + 72);
  v72 = v5[3];
  v73 = v77;
  v6 = v5[7];
  v70 = v5[15];
  v71 = v6;
  v69 = v5[11];
  v7 = (*(v72 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = v71;
  }

  else
  {
    v8 = 0;
  }

  v68[0] = v7;
  v68[1] = v8;
  v10 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v67[0] = v10;
  v67[1] = v11;
  v12 = (*(v70 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v66[0] = v12;
  v66[1] = v13;
  v14 = (*(v69 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v65[0] = v14;
  v65[1] = v15;
  if (mlir::CallOpInterface::getArgOperands(v68))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v68);
    v17 = v16 & ~(v16 >> 63);
  }

  else
  {
    v17 = 0;
  }

  if (mlir::CallOpInterface::getArgOperands(v67))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v67);
    if (v17 <= v18)
    {
      v17 = v18;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(v66))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v66);
    if (v17 <= v19)
    {
      v17 = v19;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(v65))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v65);
    if (v17 <= v20)
    {
      v17 = v20;
    }
  }

  v64[0] = a3;
  v64[1] = &v82;
  v63 = 5;
  strcpy(v62, "input");
  {
    v21 = 1;
    if (v63 < 0)
    {
      goto LABEL_45;
    }

LABEL_36:
    if (v21)
    {
      return 0;
    }

    goto LABEL_46;
  }

  v61 = 5;
  strcpy(v60, "scale");
  {
    v59 = 9;
    strcpy(v58, "zeroPoint");
    {
      v57 = 3;
      LODWORD(__p) = 7235949;
      if ((v59 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v21 = 1;
      if ((v59 & 0x80000000) == 0)
      {
LABEL_34:
        if ((v61 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_44;
      }
    }

    operator delete(v58[0]);
    if (v61 < 0)
    {
LABEL_44:
      operator delete(v60[0]);
      if (v63 < 0)
      {
        goto LABEL_45;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v21 = 1;
    if (v61 < 0)
    {
      goto LABEL_44;
    }
  }

LABEL_35:
  if ((v63 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_45:
  operator delete(v62[0]);
  if (v21)
  {
    return 0;
  }

LABEL_46:
  if ((mlir::mps::DequantizeLUTOp::getAxis(&v73) & 0x100000000) == 0)
  {
    v55 = 5;
    strcpy(v54, "input");
    v53[24] = 5;
    strcpy(v53, "\tscale");
    strcpy(v52, "zeroPoint");
    v51 = 3;
    LODWORD(v50) = 7235949;
    v23 = *(v73 + 24);
    v24 = v73 + 16 * ((*(v73 + 44) >> 23) & 1);
    v40[0] = *(v24 + 72);
    v83 = *(v24 + 64);
    v49 = (mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr,mlir::IntegerAttr>((a3 + 8), v23, &v72, &v71, &v69, &v70, v40, &v83) - 16);
    mlir::Operation::replaceUsesOfWith(v82, *(*(v82 + 72) + 24), v49);
    v25 = *(*(v82 + 72) + 56);
    v92[0] = v72;
    v92[1] = v71;
    v92[2] = v69;
    v92[3] = v70;
    v92[4] = v25;
    v91[1] = 0x500000005;
    v89[0] = &v90;
    v90 = v82 - 16;
    v91[0] = v92;
    v89[1] = 0x100000001;
    DefiningOp = mlir::Value::getDefiningOp(&v49);
    v27 = v82;
    v86 = v88;
    v88[0] = DefiningOp;
    v88[1] = v82;
    v87 = 0x200000002;
    v48 = 2;
    v40[0] = 0;
    v40[1] = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v83 = v88;
    v84 = 2;
    v28 = mlir::OpBuilder::create<mlir::mpsx::FusionOp,mlir::mpsx::FusionType const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,5u> &,llvm::SmallVector<mlir::Value,1u> &,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(v82 + 24), &v48, v40, v91, v89, &v83);
    (*(*a3 + 8))(a3, v27, v28);
    v83 = v85;
    v84 = 0x600000000;
    if (!v87)
    {
      goto LABEL_69;
    }

    v29 = v86;
    v30 = &v86[v87];
    do
    {
      v32 = *v29;
      v33 = *(*v29 + 16);
      if (v33 && mlir::Block::getParent(v33))
      {
        v34 = *(v32 + 36);
        if (v34)
        {
          v35 = v32 - 16;
        }

        else
        {
          v35 = 0;
        }

        if (v34)
        {
          v36 = 0;
          while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v35, v36))
          {
            if (v34 == ++v36)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
LABEL_49:
          v31 = v84;
          if (v84 >= HIDWORD(v84))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v85, v84 + 1, 8);
            v31 = v84;
          }

          *(v83 + v31) = v32;
          LODWORD(v84) = v84 + 1;
        }
      }

      ++v29;
    }

    while (v29 != v30);
    v37 = v83;
    if (v84)
    {
      v38 = 8 * v84;
      do
      {
        v39 = *v37++;
        (*(*a3 + 16))(a3, v39);
        v38 -= 8;
      }

      while (v38);
      v37 = v83;
      if (v83 != v85)
      {
        goto LABEL_68;
      }
    }

    else if (v83 != v85)
    {
LABEL_68:
      free(v37);
    }

LABEL_69:
    llvm::deallocate_buffer(v45, (16 * v47));
  }

  v40[0] = "can't fuse the dequantize op which has the broadcast axis";
  LOWORD(v43) = 259;
  v4 = v82;
LABEL_5:
  v83 = v40;
  v9 = *(a3 + 16);
  if (v9 && mlir::RewriterBase::Listener::classof(v9))
  {
    (*(*v9 + 88))(v9, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(mlir::mps::GatherNDOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v83);
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
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
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(mlir::mps::GatherNDOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedGatherNDPatternToFusionOp::matchAndRewriteImpl(mlir::mps::GatherNDOp,mlir::PatternRewriter &)const::{lambda(mlir::ShapedType const&,long long,mlir::Value &,BOOL,std::string)#1}::operator()(uint64_t *a1, mlir::CallOpInterface *this, uint64_t a3, uint64_t *a4, int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!mlir::CallOpInterface::getArgOperands(this))
  {
    return 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(this);
  if (a3 <= v10)
  {
    if (a3 >= v10)
    {
      return 1;
    }

    v24 = *a1;
    v25 = a1[1];
    std::operator+<char>();
    v26 = std::string::append(&v52, " tensor to ");
    v27 = v26->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v26->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v51, a3);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v51;
    }

    else
    {
      v28 = v51.__r_.__value_.__r.__words[0];
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v51.__r_.__value_.__l.__size_;
    }

    v30 = std::string::append(&v60, v28, size);
    v31 = v30->__r_.__value_.__r.__words[2];
    *__p = *&v30->__r_.__value_.__l.__data_;
    v54 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v59 = 260;
    v56 = __p;
    v32 = *v25;
    isSplat = &v56;
    v33 = *(v24 + 16);
    if (v33 && mlir::RewriterBase::Listener::classof(v33))
    {
      (*(*v33 + 88))(v33, *(v32 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(mlir::mps::GatherNDOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &isSplat);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_39;
      }
    }

    else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    operator delete(v51.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

LABEL_40:
      operator delete(v52.__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_39:
    operator delete(v60.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_40;
  }

  v11 = v10;
  isSplat = mlir::ElementsAttr::isSplat(this);
  if (*(*isSplat + 17) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || mlir::Type::isInteger(&isSplat, 1) || mlir::Type::getIntOrFloatBitWidth(&isSplat) > 7)
  {
    if (!a5)
    {
      return 1;
    }

    v56 = v58;
    v57 = 0x400000000;
    v35 = a3 - v11;
    if (v35)
    {
      v40 = 0;
      for (i = 0; i != v35; ++i)
      {
        if (v40 >= HIDWORD(v57))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v40 + 1, 4);
          v40 = v57;
        }

        *(v56 + v40) = i;
        v40 = v57 + 1;
        LODWORD(v57) = v57 + 1;
      }
    }

    v60.__r_.__value_.__r.__words[0] = v35;
    IntegerType = mlir::Builder::getIntegerType((*a1 + 8), 32, 1);
    v37 = mlir::RankedTensorType::get(&v60, 1, IntegerType, 0);
    if (v37)
    {
      v38 = v37;
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
      v37 = v38;
    }

    else
    {
      v39 = 0;
    }

    __p[0] = mlir::DenseElementsAttr::getFromRawBuffer(v37, v39, v56, 4 * v57, 4, 1, 1);
    v60.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((*a1 + 8), *(*a1[1] + 24), __p) - 16;
    *a4 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::Value &>((*a1 + 8), *(*a1[1] + 24), a4, &v60) - 16;
    v42 = v56;
    if (v56 == v58)
    {
      return 1;
    }

LABEL_43:
    free(v42);
    return 1;
  }

  *&v52.__r_.__value_.__l.__data_ = 0uLL;
  v12 = *a4;
  __p[0] = &v52;
  v56 = v12;
  DefiningOp = mlir::Value::getDefiningOp(&v56);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(__p, DefiningOp) & 1) != 0)
  {
    if (!a5)
    {
      return 1;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(this);
    llvm::SmallVector<long long,4u>::SmallVector<long long,void>(&v56, ArgAttrsAttr, v15);
    for (j = a3 - v11; j; --j)
    {
      __p[0] = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v56, v56, __p);
    }

    v17 = v56;
    v18 = v57;
    v19 = mlir::ElementsAttr::isSplat(this);
    v20 = mlir::RankedTensorType::get(v17, v18, v19, 0);
    v21 = v20;
    v22 = *&v52.__r_.__value_.__l.__data_;
    v23 = v20 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8) : 0;
    __p[0] = mlir::reshapeElementsAttr(v22, *(&v22 + 1), v21, v23);
    __p[1] = v50;
    *a4 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ElementsAttr>((*a1 + 8), *(*a1[1] + 24), __p) - 16;
    v42 = v56;
    if (v56 == v58)
    {
      return 1;
    }

    goto LABEL_43;
  }

  v43 = *a1;
  v44 = a1[1];
  std::operator+<char>();
  v45 = std::string::append(&v60, ", because it is not a constant");
  v46 = v45->__r_.__value_.__r.__words[2];
  *__p = *&v45->__r_.__value_.__l.__data_;
  v54 = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  v59 = 260;
  v56 = __p;
  v47 = *v44;
  v51.__r_.__value_.__r.__words[0] = &v56;
  result = mlir::RewriterBase::notifyMatchFailure<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(mlir::mps::GatherNDOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>(v43, v47, &v51);
  if (SHIBYTE(v54) < 0)
  {
    v48 = result;
    operator delete(__p[0]);
    result = v48;
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    v49 = result;
    operator delete(v60.__r_.__value_.__l.__data_);
    return v49;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr,mlir::IntegerAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::mps::PermuteOp &,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::mps::DequantizeOp::build(a1, v25, *a3, *a4, *a5, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v20;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(mlir::mps::GatherNDOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v3 + 88))(v3, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(mlir::mps::GatherNDOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, a3);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::FusionOp,mlir::mpsx::FusionType const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,5u> &,llvm::SmallVector<mlir::Value,1u> &,llvm::ArrayRef<mlir::Operation *>>(mlir::OpBuilder *a1, uint64_t a2, unsigned int *a3, mlir::IRMapping *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::FusionOp,mlir::mpsx::FusionType const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,5u> &,llvm::SmallVector<mlir::Value,1u> &,llvm::ArrayRef<mlir::Operation *>>(v22, v24, v23);
  }

  mlir::OperationState::OperationState(v22, a2, v15);
  v17 = *a3;
  mlir::ValueRange::ValueRange(v24, *a5, *(a5 + 8));
  mlir::ValueRange::ValueRange(v23, *a6, *(a6 + 8));
  mlir::mpsx::FusionOp::build(a1, v22, v17, a4, v24[0], v24[1], v23[0], v23[1], *a7, *(a7 + 8));
  v18 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v19;
}

void *mlir::mps::anonymous namespace::CanonicalizeQuantizedLayerScale<mlir::mps::MatMulOp>::~CanonicalizeQuantizedLayerScale(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeQuantizedLayerScale<mlir::mps::MatMulOp>::~CanonicalizeQuantizedLayerScale(void *__p)
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

uint64_t mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value,mlir::Value&,mlir::Value,mlir::TypeAttr,mlir::IntegerAttr>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::mps::PermuteOp &,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::DequantizeOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,2u> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>(v20, &v22, v21);
  }

  mlir::OperationState::OperationState(v20, a2, v11);
  NextResultAtOffset = *a3;
  v14 = a3[1];
  v15 = a3[3];
  if (v14)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v14);
  }

  mlir::ValueRange::ValueRange(&v22, NextResultAtOffset, v15 - v14);
  mlir::TypeRange::TypeRange(v21, v22, v23);
  mlir::ValueRange::ValueRange(&v22, *a4, *(a4 + 8));
  mlir::mps::MatMulOp::build(a1, v20, v21[0], v21[1], v22, v23, *a5, *(a5 + 8));
  v16 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v17;
}

void *mlir::mps::anonymous namespace::ConditionallyCanonicalizeQuantizedOp<mlir::mps::MatMulOp>::~ConditionallyCanonicalizeQuantizedOp(void *a1)
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

void mlir::mps::anonymous namespace::ConditionallyCanonicalizeQuantizedOp<mlir::mps::MatMulOp>::~ConditionallyCanonicalizeQuantizedOp(void *__p)
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

uint64_t mlir::mps::anonymous namespace::ConditionallyCanonicalizeQuantizedOp<mlir::mps::MatMulOp>::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v60[0] = v6;
  v60[1] = v7;
  v8 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v59[0] = v8;
  v59[1] = v9;
  if (mlir::CallOpInterface::getArgOperands(v60))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v60);
    if (v10 < 1)
    {
      LODWORD(v12) = 1;
    }

    else
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v60);
      v12 = *(mlir::CallableOpInterface::getArgAttrsAttr(v60) + 8 * (v11 - 1));
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  if (mlir::CallOpInterface::getArgOperands(v60) && (mlir::CallableOpInterface::getArgAttrsAttr(v60), v13 >= 2))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v60);
    v15 = *(mlir::CallableOpInterface::getArgAttrsAttr(v60) + 8 * (v14 - 2)) > 0x10;
  }

  else
  {
    v15 = 0;
  }

  if (mlir::CallOpInterface::getArgOperands(v60) && (mlir::CallableOpInterface::getArgAttrsAttr(v60), v16 >= 3))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v60);
    v18 = (*(mlir::CallableOpInterface::getArgAttrsAttr(v60) + 8 * (v17 - 3)) & 0xFFFFFFFELL) == 0;
  }

  else
  {
    v18 = 1;
  }

  if (mlir::CallOpInterface::getArgOperands(v59))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v59);
    if (v19 < 1)
    {
      LODWORD(v21) = 1;
    }

    else
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v59);
      v21 = *(mlir::CallableOpInterface::getArgAttrsAttr(v59) + 8 * (v20 - 1));
    }
  }

  else
  {
    LODWORD(v21) = 0;
  }

  if (v12 <= 0x10)
  {
    v15 = 0;
  }

  ElementTypeOrSelf = *(*(a2 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id && ((ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(DefiningOp + 72) + 24)), mlir::Type::isSignedInteger(&ElementTypeOrSelf, 4)) || mlir::Type::isUnsignedInteger(&ElementTypeOrSelf, 4)) || (ElementTypeOrSelf = *(*(a2 + 72) + 56), (v23 = mlir::Value::getDefiningOp(&ElementTypeOrSelf)) != 0) && *(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id && ((v24 = (*(*(*(v23 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8)) == 0 ? (v25 = 0) : (v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8)), (ElementTypeOrSelf = v24, v63[0] = v25, mlir::CallOpInterface::getArgOperands(&ElementTypeOrSelf)) && ((mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf), v26 < 1) ? (v27 = 1) : (v27 = *mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf)), (mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf), v28 <= 1) ? (v29 = 1) : (v29 = *(mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf) + 8)), ((v30 = v12 / v29, v30 == 1) || (v30 & 3) == 0) && (v21 / v27 == 1 || ((v21 / v27) & 3) == 0))))
  {
  }

  else
  {
    v31 = 1;
  }

  ElementTypeOrSelf = *(*(a2 + 72) + 56);
  v32 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (v32)
  {
    if (*(*(v32 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v32 + 72) + 24));
      if (mlir::Type::isSignedInteger(&ElementTypeOrSelf, 4) || mlir::Type::isUnsignedInteger(&ElementTypeOrSelf, 4))
      {
LABEL_61:
        v37 = *(a1 + 24);
        v38 = *(a1 + 96);
        mlir::PatternBenefit::PatternBenefit(&v61, 2);
        mlir::Pattern::Pattern(v63, "mps.matmul", 10, v61, v37 & 0xFFFFFFFFFFFFFFF8, 0, 0);
        ElementTypeOrSelf = &unk_1F5AFFE50;
        v67 = v38;
        if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
        {
          v36 = 0;
        }

        else
        {
          v36 = ElementTypeOrSelf[9](&ElementTypeOrSelf, a2, a3);
        }

        v39 = v66;
        if (v66 == &v67)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }
    }
  }

  ElementTypeOrSelf = *(*(a2 + 72) + 56);
  v33 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!v33)
  {
    goto LABEL_54;
  }

  if (*(*(v33 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    goto LABEL_54;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v33 + 72) + 24));
  if (!mlir::Type::isSignedInteger(&ElementTypeOrSelf, 8) && !mlir::Type::isUnsignedInteger(&ElementTypeOrSelf, 8))
  {
    goto LABEL_54;
  }

  ElementTypeOrSelf = *(*(a2 + 72) + 24);
  v41 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (v41)
  {
    if (*(*(v41 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
    {
      goto LABEL_54;
    }
  }

  v61 = mlir::getElementTypeOrSelf(ElementTypeOrSelf);
  if (!mlir::Type::isF16(&v61))
  {
    goto LABEL_54;
  }

  ElementTypeOrSelf = *(*(a2 + 72) + 56);
  v42 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!v42 || *(*(v42 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    goto LABEL_54;
  }

  v43 = (*(*(*(v42 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v44 = v43 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8) : 0;
  ElementTypeOrSelf = v43;
  v63[0] = v44;
  if ((mlir::CallOpInterface::getArgOperands(&ElementTypeOrSelf) & 1) == 0)
  {
    goto LABEL_54;
  }

  if (mlir::CallOpInterface::getArgOperands(&ElementTypeOrSelf) && ((mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf), v45 < 1) || (mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf), *(mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf) + 8 * (v46 - 1)) == 1)) && mlir::CallOpInterface::getArgOperands(&ElementTypeOrSelf))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf);
    if (v47 < 2)
    {
      v49 = 1;
    }

    else
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf);
      v49 = *(mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf) + 8 * (v48 - 2)) == 1;
    }
  }

  else
  {
    v49 = 0;
  }

  if (mlir::CallOpInterface::getArgOperands(&ElementTypeOrSelf))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf);
    if (v50 < 1)
    {
      LODWORD(v52) = 1;
    }

    else
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf);
      v52 = *(mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf) + 8 * (v51 - 1));
    }
  }

  else
  {
    LODWORD(v52) = 0;
  }

  if (v52 == v12 && mlir::CallOpInterface::getArgOperands(&ElementTypeOrSelf))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf);
    if (v53 <= 1)
    {
      goto LABEL_101;
    }

    mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf);
    v55 = *(mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf) + 8 * (v54 - 2)) == 1;
  }

  else
  {
    v55 = 0;
  }

  if (!v49 && !v55)
  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

LABEL_101:
  ElementTypeOrSelf = *(*(a2 + 72) + 56);
  v56 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (v56 && *(*(v56 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id && !mlir::isConstantFPZero(*(*(v56 + 72) + 120)))
  {
    goto LABEL_54;
  }

  ElementTypeOrSelf = a2;
  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&ElementTypeOrSelf) || !mlir::mps::MatMulOp::getTransposeRhs(&ElementTypeOrSelf))
  {
    goto LABEL_54;
  }

  if ((v21 & 7) != 0)
  {
    v58 = 0;
  }

  else
  {
    v58 = isScaleZpMinDimMatching;
  }

  if ((v12 & 0x1F) != 0)
  {
    v58 = 0;
  }

  v34 = v58 & v18;
LABEL_55:
  if ((v15 | v31) != 1 || v34)
  {
    goto LABEL_61;
  }

  v35 = *(a1 + 24);
  mlir::PatternBenefit::PatternBenefit(&v61, 2);
  mlir::Pattern::Pattern(v63, "mps.matmul", 10, v61, v35 & 0xFFFFFFFFFFFFFFF8, 0, 0);
  ElementTypeOrSelf = &unk_1F5AFFD90;
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    v36 = 0;
  }

  else
  {
    v36 = ElementTypeOrSelf[9](&ElementTypeOrSelf, a2, a3);
  }

  v39 = v66;
  if (v66 == &v67)
  {
    goto LABEL_66;
  }

LABEL_65:
  free(v39);
LABEL_66:
  if (v64 != &v65)
  {
    free(v64);
  }

  return v36;
}

uint64_t mlir::mps::anonymous namespace::ConditionallyCanonicalizeQuantizedOp<mlir::mps::MatMulOp>::isScaleZpMinDimMatching(uint64_t a1, int a2)
{
  v62[0] = *(*(a1 + 72) + 56);
  result = mlir::Value::getDefiningOp(v62);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
    {
      return 0;
    }

    v4 = *(result + 72);
    v5 = (*(v4[7] + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v5)
    {
      v6 = result;
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
      result = v6;
      v4 = *(v6 + 72);
    }

    else
    {
      v7 = 0;
    }

    v62[0] = v5;
    v62[1] = v7;
    v8 = (*(v4[11] + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = result;
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
      v4 = *(v9 + 72);
    }

    else
    {
      v10 = 0;
    }

    v61[0] = v8;
    v61[1] = v10;
    v11 = v4[15];
    v12 = (v11[1] & 0xFFFFFFFFFFFFFFF8);
    if (v12)
    {
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    }

    else
    {
      v13 = 0;
    }

    v60[0] = v12;
    v60[1] = v13;
    result = mlir::CallOpInterface::getArgOperands(v62);
    if (result)
    {
      result = mlir::CallOpInterface::getArgOperands(v61);
      if (result)
      {
        v14 = a2 ^ 1;
        if ((mlir::CallOpInterface::getArgOperands(v60) & 1) == 0 && !v14)
        {
          return 0;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(v62);
        if (!v15 || (v16 = mlir::CallableOpInterface::getArgAttrsAttr(v62), mlir::ShapedType::getNumElements(v16, v17) == 1))
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v61);
          if (!v18 || (ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v61), mlir::ShapedType::getNumElements(ArgAttrsAttr, v20) == 1))
          {
            {
              return 1;
            }
          }
        }

        mlir::CallableOpInterface::getArgAttrsAttr(v62);
        if (!v21)
        {
          return 0;
        }

        v22 = mlir::CallableOpInterface::getArgAttrsAttr(v62);
        if (mlir::ShapedType::getNumElements(v22, v23) == 1)
        {
          return 0;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(v61);
        if (!v24)
        {
          return 0;
        }

        v25 = mlir::CallableOpInterface::getArgAttrsAttr(v61);
        {
          return 0;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(v62);
        v28 = v27;
        mlir::CallableOpInterface::getArgAttrsAttr(v61);
        if (v28 <= v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = v28;
        }

        if (v30 >= 1)
        {
          v31 = 0;
          v32 = 1;
          do
          {
            if (mlir::CallOpInterface::getArgOperands(v62))
            {
              mlir::CallableOpInterface::getArgAttrsAttr(v62);
              if (v33 <= v31)
              {
                LODWORD(v35) = 1;
              }

              else
              {
                mlir::CallableOpInterface::getArgAttrsAttr(v62);
                v35 = *(mlir::CallableOpInterface::getArgAttrsAttr(v62) + 8 * (v34 + ~v31));
              }
            }

            else
            {
              LODWORD(v35) = 0;
            }

            if (mlir::CallOpInterface::getArgOperands(v61))
            {
              mlir::CallableOpInterface::getArgAttrsAttr(v61);
              if (v36 <= v31)
              {
                LODWORD(v38) = 1;
              }

              else
              {
                mlir::CallableOpInterface::getArgAttrsAttr(v61);
                v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v61) + 8 * (v37 + ~v31));
              }
            }

            else
            {
              LODWORD(v38) = 0;
            }

            if (v35 != v38)
            {
              return 0;
            }

            v31 = v32;
            mlir::CallableOpInterface::getArgAttrsAttr(v62);
            v40 = v39;
            mlir::CallableOpInterface::getArgAttrsAttr(v61);
            if (v40 <= v41)
            {
              v42 = v41;
            }

            else
            {
              v42 = v40;
            }

            ++v32;
          }

          while (v42 > v31);
        }

        if ((mlir::isConstantFPZero(v11) | v14))
        {
          return 1;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(v62);
        v44 = v43;
        mlir::CallableOpInterface::getArgAttrsAttr(v60);
        v46 = v44 <= v45 ? v45 : v44;
        if (v46 < 1)
        {
          return 1;
        }

        else
        {
          v47 = 0;
          v48 = 1;
          do
          {
            if (mlir::CallOpInterface::getArgOperands(v62))
            {
              mlir::CallableOpInterface::getArgAttrsAttr(v62);
              if (v49 <= v47)
              {
                LODWORD(v51) = 1;
              }

              else
              {
                mlir::CallableOpInterface::getArgAttrsAttr(v62);
                v51 = *(mlir::CallableOpInterface::getArgAttrsAttr(v62) + 8 * (v50 + ~v47));
              }
            }

            else
            {
              LODWORD(v51) = 0;
            }

            if (mlir::CallOpInterface::getArgOperands(v60))
            {
              mlir::CallableOpInterface::getArgAttrsAttr(v60);
              if (v52 <= v47)
              {
                LODWORD(v54) = 1;
              }

              else
              {
                mlir::CallableOpInterface::getArgAttrsAttr(v60);
                v54 = *(mlir::CallableOpInterface::getArgAttrsAttr(v60) + 8 * (v53 + ~v47));
              }
            }

            else
            {
              LODWORD(v54) = 0;
            }

            result = v51 == v54;
            if (v51 != v54)
            {
              break;
            }

            v47 = v48;
            v55 = v51 == v54;
            mlir::CallableOpInterface::getArgAttrsAttr(v62);
            v57 = v56;
            mlir::CallableOpInterface::getArgAttrsAttr(v60);
            result = v55;
            v59 = v57 <= v58 ? v58 : v57;
            ++v48;
          }

          while (v59 > v47);
        }
      }
    }
  }

  return result;
}

void *mlir::mps::anonymous namespace::CanonicalizeQuantizedOp<mlir::mps::MatMulOp>::~CanonicalizeQuantizedOp(void *a1)
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

BOOL mlir::mps::anonymous namespace::ConditionallyCanonicalizeQuantizedOp<mlir::mps::MatMulOp>::isScaleZpMinDimMatching(mlir::mps::MatMulOp,BOOL)::{lambda(mlir::ShapedType const&)#1}::operator()(mlir::CallableOpInterface *a1)
{
  mlir::CallableOpInterface::getArgAttrsAttr(a1);
  if (!v2)
  {
    return 1;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(a1);
  return mlir::ShapedType::getNumElements(ArgAttrsAttr, v4) == 1;
}

void mlir::mps::anonymous namespace::CanonicalizeQuantizedOp<mlir::mps::MatMulOp>::~CanonicalizeQuantizedOp(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedOp<mlir::mps::MatMulOp>::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v33[0] = 0;
  memset(&v33[8], 0, 64);
  v32[0] = 0;
  memset(&v32[8], 0, 64);
  {
    return 0;
  }

  v6 = *&v33[32];
  v8 = *&v33[40];
  v7 = *&v33[56];
  v9 = *&v32[24];
  v28 = *&v32[16];
  v29 = *&v32[32];
  v30 = *&v32[40];
  v31 = *&v32[56];
  if (*&v33[16])
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  if (!*&v33[24])
  {
LABEL_11:
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46[0] = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  *&v37 = *&v33[24];
  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (DefiningOp)
  {
    v10 += (mlir::detail::constant_int_predicate_matcher::match(v46, DefiningOp) & 1) == 0;
    goto LABEL_11;
  }

  ++v10;
  if (v6)
  {
LABEL_12:
    v10 += !mlir::isConstantFPZero(v6);
  }

LABEL_13:
  if (v8)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v10;
  }

  if (*(&v8 + 1))
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v46[0] = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    *&v37 = v7;
    v14 = mlir::Value::getDefiningOp(&v37);
    if (v14)
    {
      v13 += (mlir::detail::constant_int_predicate_matcher::match(v46, v14) & 1) == 0;
    }

    else
    {
      ++v13;
    }
  }

  if (v28)
  {
    ++v13;
  }

  if (!v9)
  {
LABEL_30:
    v16 = v29;
    if (!v29)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v46[0] = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  *&v37 = v9;
  v15 = mlir::Value::getDefiningOp(&v37);
  if (v15)
  {
    v13 += (mlir::detail::constant_int_predicate_matcher::match(v46, v15) & 1) == 0;
    goto LABEL_30;
  }

  ++v13;
  v16 = v29;
  if (v29)
  {
LABEL_31:
    v13 += !mlir::isConstantFPZero(v16);
  }

LABEL_32:
  if (v30)
  {
    v17 = v13 + 1;
  }

  else
  {
    v17 = v13;
  }

  if (*(&v30 + 1))
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = v17;
  }

  if (v31)
  {
    v46[0] = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    *&v37 = v31;
    v19 = mlir::Value::getDefiningOp(&v37);
    if (v19)
    {
      v18 += (mlir::detail::constant_int_predicate_matcher::match(v46, v19) & 1) == 0;
    }

    else
    {
      ++v18;
    }
  }

  if (v18 > *(a1 + 96))
  {
    *&v37 = "failed: quantized op requires more inputs than what is supported by the MPS kernel.";
    LOWORD(v39[0]) = 259;
    v46[0] = &v37;
    v20 = *(a3 + 16);
    if (v20 && mlir::RewriterBase::Listener::classof(v20))
    {
      (*(*v20 + 88))(v20, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::MatMulOp &>(mlir::mps::MatMulOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v46);
    }

    return 0;
  }

  v39[0] = *&v33[32];
  v39[1] = *&v33[48];
  v37 = *v33;
  v38 = *&v33[16];
  v43 = *&v32[32];
  v44 = *&v32[48];
  v40 = *&v33[64];
  v45 = *&v32[64];
  v46[0] = a2;
  v41 = *v32;
  v42 = *&v32[16];
  if (*(a2 + 36))
  {
    v23 = a2 - 16;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a2 + 24);
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  IsNegated = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(v46);
  TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(v46);
  v26 = mlir::OpBuilder::create<mlir::mpsx::QuantizedMatMulOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::IntegerAttr &,mlir::detail::TypedValue<mlir::TensorType>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::IntegerAttr &,mlir::Value,mlir::Value &,mlir::Value &,mlir::Type,BOOL,BOOL>((a3 + 8), v24, &v37 + 1, &v38, &v38 + 1, v39, &v40, &v41 + 1, &v42, &v42 + 1, &v43, &v45, &v43 + 1, &v44, &v44 + 1, &ElementTypeOrSelf, &IsNegated, &TransposeRhs);
  if (*(v26 + 36))
  {
    v27 = v26 - 16;
  }

  else
  {
    v27 = 0;
  }

  v46[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 0);
  v21 = 1;
  mlir::ValueRange::ValueRange(&v37, v46, 1uLL);
  (**a3)(a3, a2, v37, *(&v37 + 1));
  return v21;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedOp<mlir::mps::MatMulOp>::getQuantizationInfos(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v30 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v30);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
    {
      v31 = *(*(DefiningOp + 72) + 24);
      v11 = mlir::Value::getDefiningOp(&v31);
      if (v11)
      {
        v12 = *(*(v11 + 48) + 16);
        if (v12 == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id)
        {
          return 0;
        }
      }
    }
  }

  v8 = mlir::Value::getDefiningOp(&v30);
  if (v8 && *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v14 = v8;
    v15 = (*(*(*(v8 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v15)
    {
      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    v31 = v15;
    v32 = v16;
    if (mlir::CallOpInterface::getArgOperands(&v31))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v18 <= 3)
      {
        v19 = (*(*(*(v14 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
        v20 = v19 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8) : 0;
        v31 = v19;
        v32 = v20;
        if (mlir::CallOpInterface::getArgOperands(&v31))
        {
          mlir::CallableOpInterface::getArgAttrsAttr(&v31);
          if (v21 <= 3)
          {
            v22 = (*(*(*(v14 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
            v23 = v22 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8) : 0;
            v31 = v22;
            v32 = v23;
            if (mlir::CallOpInterface::getArgOperands(&v31))
            {
              mlir::CallableOpInterface::getArgAttrsAttr(&v31);
              if (v24 <= 3)
              {
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v14 + 72) + 24));
                if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(v14 + 72) + 88)))
                {
                  result = 1;
                  *a2 = 1;
                  *(a2 + 8) = *(*(v14 + 72) + 24);
                  *(a2 + 16) = *(*(v14 + 72) + 56);
                  *(a2 + 24) = *(*(v14 + 72) + 88);
                  *(a2 + 32) = *(*(v14 + 72) + 120);
                  *(a2 + 64) = *(v14 + 16 * ((*(v14 + 44) >> 23) & 1) + 64);
                  if (!a4)
                  {
                    return result;
                  }

                  v31 = *(*(v14 + 72) + 56);
                  v26 = mlir::Value::getDefiningOp(&v31);
                  if (!v26)
                  {
                    return 1;
                  }

                  if (*(*(v26 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
                  {
                    return 1;
                  }

                  v27 = v26;
                  {
                    v28 = mlir::getElementTypeOrSelf(*(*(v27 + 72) + 24));
                    if (v28 == mlir::getElementTypeOrSelf(*(*(v27 + 72) + 88)))
                    {
                      *(a2 + 16) = *(*(v27 + 72) + 24);
                      *(a2 + 48) = *(*(v27 + 72) + 56);
                      *(a2 + 56) = *(*(v27 + 72) + 88);
                      if (mlir::isConstantFPZero(*(*(v27 + 72) + 120)))
                      {
                        v29 = *(*(v27 + 72) + 88);
                        v31 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
                        if (mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(v29, &v31))
                        {
                          return 1;
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

    return 0;
  }

  if (!a3 || (v9 = mlir::Value::getDefiningOp(&v30)) == 0 || *(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id)
  {
    *a2 = 0;
    *(a2 + 8) = v30;
    return 1;
  }

  v17 = v9;
  result = 1;
  *a2 = 1;
  *(a2 + 8) = *(*(v17 + 72) + 24);
  *(a2 + 40) = *(*(v17 + 72) + 56);
  *(a2 + 64) = *(v17 + 16 * ((*(v17 + 44) >> 23) & 1) + 64);
  return result;
}

mlir::Operation *mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(uint64_t a1, uint64_t (**a2)(void **))
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    return mlir::detail::constant_int_predicate_matcher::match(a2, result);
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedOp<mlir::mps::MatMulOp>::getQuantizationInfos(mlir::Value,mlir::mps::anonymous namespace::CanonicalizeQuantizedOp<mlir::mps::MatMulOp>::OperandQuantizationInfos &,BOOL,BOOL)const::{lambda(mlir::Value)#1}::operator()(uint64_t a1)
{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v1)
  {
    v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  v5[0] = v1;
  v5[1] = v2;
  result = mlir::CallOpInterface::getArgOperands(v5);
  if (result)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v5);
    return v4 < 4;
  }

  return result;
}

void mlir::mps::anonymous namespace::CanonicalizeQuantizedConv2DPatternToFusionOp::~CanonicalizeQuantizedConv2DPatternToFusionOp(mlir::mps::_anonymous_namespace_::CanonicalizeQuantizedConv2DPatternToFusionOp *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedConv2DPatternToFusionOp::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  LOBYTE(v34) = 0;
  *(&v34 + 1) = 0;
  *(v35 + 8) = 0u;
  *(&v35[1] + 8) = 0u;
  *(&v35[2] + 8) = 0u;
  *(&v35[3] + 1) = 0;
  LOBYTE(v32) = 0;
  *(&v32 + 1) = 0;
  memset(&v33[8], 0, 56);
  {
    v57 = 0x800000000;
    v50[1] = 0x600000001;
    v55 = 0u;
    v53 = 0x600000003;
    v44 = v35[1];
    v45 = v35[2];
    v42 = v34;
    v43 = v35[0];
    v48 = *v33;
    v49[0] = *&v33[16];
    v49[1] = *&v33[32];
    v49[2] = *&v33[48];
    v56 = &v58;
    v5 = &v60;
    v60 = 0;
    v61 = 0;
    v59 = &v60;
    v52 = &v54;
    v50[0] = &v51;
    v51 = a2 - 16;
    v46 = v35[3];
    v47 = v32;
    v54 = *&v35[0];
    v52[1] = v48;
    v6 = v52;
    v52[2] = a2;
    v39 = v41;
    v40 = 0x600000000;
    v7 = v61;
    if (v61)
    {
      v8 = v59;
    }

    else
    {
      v8 = v56;
    }

    if (!v61)
    {
      v5 = &v56[v57];
    }

    if (v8 != v5)
    {
      v9 = 0;
      do
      {
        v10 = v8[4 * (v7 != 0)];
        if (v9 >= HIDWORD(v40))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v9 + 1, 8);
          v9 = v40;
        }

        *&v39[8 * v9] = v10;
        v9 = v40 + 1;
        LODWORD(v40) = v40 + 1;
        v11 = v8 + 1;
        if (v7)
        {
          v12 = *v11;
          if (*v11)
          {
            do
            {
              v11 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v11 = v8[2];
              v13 = *v11 == v8;
              v8 = v11;
            }

            while (!v13);
          }
        }

        v8 = v11;
      }

      while (v11 != v5);
      v6 = v52;
    }

    v27 = 1;
    v42 = 0uLL;
    *(&v43 + 1) = 0;
    *&v44 = 0;
    LODWORD(v43) = 0;
    DWORD2(v44) = 0;
    v45 = 0uLL;
    LODWORD(v46) = 0;
    v36 = v6;
    v37 = v53;
    v15 = mlir::OpBuilder::create<mlir::mpsx::FusionOp,mlir::mpsx::FusionType const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,5u> &,llvm::SmallVector<mlir::Value,1u> &,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(a2 + 24), &v27, &v42, &v39, v50, &v36);
    (*(*a3 + 8))(a3, a2, v15);
    v36 = v38;
    v37 = 0x600000000;
    if (v53)
    {
      v16 = v52;
      v17 = &v52[v53];
      do
      {
        v19 = *v16;
        v20 = *(*v16 + 16);
        if (v20 && mlir::Block::getParent(v20))
        {
          v21 = *(v19 + 36);
          if (v21)
          {
            v22 = v19 - 16;
          }

          else
          {
            v22 = 0;
          }

          if (v21)
          {
            v23 = 0;
            while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v22, v23))
            {
              if (v21 == ++v23)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
LABEL_26:
            v18 = v37;
            if (v37 >= HIDWORD(v37))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v37 + 1, 8);
              v18 = v37;
            }

            v36[v18] = v19;
            LODWORD(v37) = v37 + 1;
          }
        }

        ++v16;
      }

      while (v16 != v17);
      v24 = v36;
      if (v37)
      {
        v25 = 8 * v37;
        do
        {
          v26 = *v24++;
          (*(*a3 + 16))(a3, v26);
          v25 -= 8;
        }

        while (v25);
        v24 = v36;
      }

      if (v24 != v38)
      {
        free(v24);
      }
    }

    llvm::deallocate_buffer(v45, (16 * v46));
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::FusionOpRewritePatternBase<mlir::mps::Conv2DOp>::getQuantizationInfos(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v37 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
    {
      v38 = *(*(DefiningOp + 72) + 24);
      v11 = mlir::Value::getDefiningOp(&v38);
      if (v11)
      {
        v12 = *(*(v11 + 48) + 16);
        if (v12 == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id)
        {
          return 0;
        }
      }
    }
  }

  v8 = mlir::Value::getDefiningOp(&v37);
  *(a2 + 16) = v8;
  if (v8 && *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v14 = v8;
    v15 = (*(*(*(v8 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v15)
    {
      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    v38 = v15;
    v39 = v16;
    if (mlir::CallOpInterface::getArgOperands(&v38))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v38);
      if (v18 <= 3)
      {
        v19 = (*(*(*(v14 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
        v20 = v19 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8) : 0;
        v38 = v19;
        v39 = v20;
        if (mlir::CallOpInterface::getArgOperands(&v38))
        {
          mlir::CallableOpInterface::getArgAttrsAttr(&v38);
          if (v21 <= 3)
          {
            v22 = (*(*(*(v14 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
            v23 = v22 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8) : 0;
            v38 = v22;
            v39 = v23;
            if (mlir::CallOpInterface::getArgOperands(&v38))
            {
              mlir::CallableOpInterface::getArgAttrsAttr(&v38);
              if (v24 <= 3)
              {
                isConstantIntZero = mlir::isConstantIntZero(*(*(v14 + 72) + 88));
                isConstantFPZero = mlir::isConstantFPZero(*(*(v14 + 72) + 120));
                if ((isConstantIntZero & 1) != 0 || (v27 = mlir::getElementTypeOrSelf(*(*(v14 + 72) + 24)), v27 == mlir::getElementTypeOrSelf(*(*(v14 + 72) + 88))))
                {
                  if (isConstantFPZero || (v28 = mlir::getElementTypeOrSelf(v37), v28 == mlir::getElementTypeOrSelf(*(*(v14 + 72) + 120))))
                  {
                    *a2 = 1;
                    v29 = *(*(v14 + 72) + 24);
                    *(a2 + 8) = v29;
                    *(a2 + 24) = *(*(v14 + 72) + 56);
                    *(a2 + 32) = *(*(v14 + 72) + 88);
                    *(a2 + 40) = *(*(v14 + 72) + 120);
                    *(a2 + 72) = *(v14 + 16 * ((*(v14 + 44) >> 23) & 1) + 64);
                    v30 = (*(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
                    if (v30)
                    {
                      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
                    }

                    else
                    {
                      v31 = 0;
                    }

                    v38 = v30;
                    v39 = v31;
                    result = mlir::ShapedType::hasStaticShape(&v38);
                    if (!result)
                    {
                      return result;
                    }

                    result = isConstantIntZero & isConstantFPZero;
                    if (result != 1 || !a4)
                    {
                      return result;
                    }

                    v36 = *(*(v14 + 72) + 56);
                    v32 = mlir::Value::getDefiningOp(&v36);
                    if (!v32)
                    {
                      return 1;
                    }

                    if (*(*(v32 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
                    {
                      return 1;
                    }

                    v33 = v32;
                    {
                      ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v33 + 72) + 24));
                      if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(v33 + 72) + 88)))
                      {
                        *(a2 + 24) = *(*(v33 + 72) + 24);
                        *(a2 + 56) = *(*(v33 + 72) + 56);
                        *(a2 + 64) = *(*(v33 + 72) + 88);
                        if (mlir::isConstantFPZero(*(*(v33 + 72) + 120)))
                        {
                          v35 = *(*(v33 + 72) + 88);
                          v36 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
                          if (mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(v35, &v36))
                          {
                            return 1;
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

    return 0;
  }

  if (!a3 || (v9 = mlir::Value::getDefiningOp(&v37)) == 0 || *(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id)
  {
    *a2 = 0;
    *(a2 + 8) = v37;
    return 1;
  }

  v17 = v9;
  result = 1;
  *a2 = 1;
  *(a2 + 8) = *(*(v17 + 72) + 24);
  *(a2 + 48) = *(*(v17 + 72) + 56);
  *(a2 + 72) = *(v17 + 16 * ((*(v17 + 44) >> 23) & 1) + 64);
  return result;
}

void llvm::SmallSet<mlir::Value,8u,mlir::mps::anonymous namespace::FusionOpRewritePatternBase<mlir::mps::Conv2DOp>::cmp>::insert(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 96))
  {
    v7 = (a1 + 88);
    v6 = *(a1 + 88);
    if (v6)
    {
      v8 = *a2;
      while (1)
      {
        while (1)
        {
          v9 = v6;
          v10 = v6[4];
          if (v8 >= v10)
          {
            break;
          }

          v6 = *v9;
          if (!*v9)
          {
            v7 = v9;
            goto LABEL_16;
          }
        }

        if (v10 >= v8)
        {
          break;
        }

        v6 = v9[1];
        if (!v6)
        {
          v7 = v9 + 1;
          goto LABEL_16;
        }
      }

      v19 = 0;
      v20 = 0;
      goto LABEL_27;
    }

    v8 = *a2;
    v9 = (a1 + 88);
LABEL_16:
    v16 = v9;
    v9 = operator new(0x28uLL);
    v9[4] = v8;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v16;
    *v7 = v9;
    v17 = **(a1 + 80);
    v18 = v9;
    if (v17)
    {
      *(a1 + 80) = v17;
      v18 = *v7;
    }

LABEL_18:
    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 88), v18);
    v19 = 0;
    ++*(a1 + 96);
    goto LABEL_26;
  }

  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *a2;
  if (!v12)
  {
    goto LABEL_23;
  }

  v14 = 8 * v12;
  v9 = *a1;
  v15 = &v11[v12];
  while (*v9 != v13)
  {
    ++v9;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_22;
    }
  }

  if (v14)
  {
    v20 = 0;
    v19 = 1;
    goto LABEL_27;
  }

LABEL_22:
  if (v12 <= 7)
  {
LABEL_23:
    if (v12 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v12 + 1, 8);
      v12 = *(a1 + 8);
      v11 = *a1;
    }

    v11[v12] = v13;
    v21 = *(a1 + 8) + 1;
    *(a1 + 8) = v21;
    v9 = (*a1 + 8 * v21 - 8);
    v19 = 1;
    goto LABEL_26;
  }

  v22 = (a1 + 88);
  do
  {
    v24 = *(a1 + 88);
    v25 = (a1 + 88);
    if (*(a1 + 80) != v22)
    {
      v26 = *(a1 + 88);
      v27 = (a1 + 88);
      if (v24)
      {
        do
        {
          v25 = v26;
          v26 = v26[1];
        }

        while (v26);
      }

      else
      {
        do
        {
          v25 = v27[2];
          v28 = *v25 == v27;
          v27 = v25;
        }

        while (v28);
      }

      v29 = *v11;
      if (v25[4] >= *v11)
      {
        if (v24)
        {
          do
          {
            while (1)
            {
              v31 = v24;
              v32 = v24[4];
              if (v29 < v32)
              {
                break;
              }

              if (v32 >= v29)
              {
                goto LABEL_31;
              }

              v24 = v31[1];
              if (!v24)
              {
                v30 = v31 + 1;
                goto LABEL_54;
              }
            }

            v24 = *v31;
          }

          while (*v31);
          v30 = v31;
        }

        else
        {
          v30 = (a1 + 88);
          v31 = (a1 + 88);
        }

        goto LABEL_54;
      }
    }

    if (v24)
    {
      v30 = (v25 + 1);
    }

    else
    {
      v30 = (a1 + 88);
    }

    if (!*v30)
    {
      if (v24)
      {
        v31 = v25;
      }

      else
      {
        v31 = (a1 + 88);
      }

      v29 = *v11;
LABEL_54:
      v33 = operator new(0x28uLL);
      v33[4] = v29;
      *v33 = 0;
      v33[1] = 0;
      v33[2] = v31;
      *v30 = v33;
      v34 = **(a1 + 80);
      if (v34)
      {
        *(a1 + 80) = v34;
        v23 = *v30;
      }

      else
      {
        v23 = v33;
      }

      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 88), v23);
      ++*(a1 + 96);
    }

LABEL_31:
    ++v11;
  }

  while (v11 != v15);
  *(a1 + 8) = 0;
  v35 = *(a1 + 88);
  if (!v35)
  {
    v36 = *a2;
    v9 = (a1 + 88);
LABEL_65:
    v38 = v9;
    v9 = operator new(0x28uLL);
    v9[4] = v36;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v38;
    *v22 = v9;
    v39 = **(a1 + 80);
    v18 = v9;
    if (v39)
    {
      *(a1 + 80) = v39;
      v18 = *v22;
    }

    goto LABEL_18;
  }

  v36 = *a2;
  while (1)
  {
    while (1)
    {
      v9 = v35;
      v37 = v35[4];
      if (v36 >= v37)
      {
        break;
      }

      v35 = *v9;
      if (!*v9)
      {
        v22 = v9;
        goto LABEL_65;
      }
    }

    if (v37 >= v36)
    {
      break;
    }

    v35 = v9[1];
    if (!v35)
    {
      v22 = v9 + 1;
      goto LABEL_65;
    }
  }

  v19 = 0;
LABEL_26:
  v20 = 1;
LABEL_27:
  *(a3 + 8) = v19;
  *a3 = v9;
  *(a3 + 16) = v20;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mpsx::FusionOp,mlir::mpsx::FusionType const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>(uint64_t a1, uint64_t a2, unsigned int *a3, mlir::IRMapping *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = mlir::OpBuilder::create<mlir::mpsx::FusionOp,mlir::mpsx::FusionType const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,5u> &,llvm::SmallVector<mlir::Value,1u> &,llvm::ArrayRef<mlir::Operation *>>((a1 + 8), *(a2 + 24), a3, a4, a5, a6, a7);
  (*(*a1 + 8))(a1, a2, v9);
  return v9;
}

void mlir::mps::anonymous namespace::CanonicalizeQuantizedMatMulPatternToFusionOp::~CanonicalizeQuantizedMatMulPatternToFusionOp(mlir::mps::_anonymous_namespace_::CanonicalizeQuantizedMatMulPatternToFusionOp *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedMatMulPatternToFusionOp::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  LOBYTE(v41) = 0;
  *(&v41 + 1) = 0;
  *(v42 + 8) = 0u;
  *(&v42[1] + 8) = 0u;
  *(&v42[2] + 8) = 0u;
  *(&v42[3] + 1) = 0;
  v43 = a2;
  LOBYTE(v39) = 0;
  *(&v39 + 1) = 0;
  *(v40 + 8) = 0u;
  *(&v40[1] + 8) = 0u;
  *(&v40[2] + 8) = 0u;
  *(&v40[3] + 1) = 0;
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(&v41 + 1));
  v7 = mlir::getElementTypeOrSelf(*(&v39 + 1));
  v8 = *(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id ? ElementTypeOrSelf : 0;
  v38 = v8;
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  Width = mlir::IntegerType::getWidth(&v38);
  result = 0;
  if (Width == 8 && ElementTypeOrSelf == v9)
  {
    v63 = &v65;
    v64 = 0x800000000;
    v67 = 0;
    v68 = 0;
    v66 = &v67;
    v60 = v62;
    v61 = 0x600000000;
    v37[0] = a3;
    v37[1] = &v43;
    {
      v36[0] = a1;
      v36[1] = &v43;
      v36[2] = a3;
      v36[3] = &v60;
      v36[4] = &v63;
      IsNegated = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v43);
      TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v43);
      *&v49 = v43 - 16;
      llvm::SmallVector<long long,6u>::SmallVector(v59, &v49, 1);
      v51 = v42[1];
      v52 = v42[2];
      v49 = v41;
      v50 = v42[0];
      v55 = v40[0];
      v56 = v40[1];
      v57 = v40[2];
      v58 = v40[3];
      v53 = v42[3];
      v54 = v39;
      v14 = *&v42[0];
      v15 = v61;
      if (v61 >= HIDWORD(v61))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v61 + 1, 8);
        v15 = v61;
      }

      *&v60[8 * v15] = v14;
      LODWORD(v61) = v61 + 1;
      v16 = v55;
      v17 = v61;
      if (v61 >= HIDWORD(v61))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v61 + 1, 8);
        v17 = v61;
      }

      *&v60[8 * v17] = v16;
      LODWORD(v61) = v61 + 1;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v60, v43);
      v47[0] = &v48;
      v47[1] = 0x600000000;
      v18 = v66;
      if (!v68)
      {
        v18 = v63;
      }

      v33 = v18;
      v34 = v68 == 0;
      v19 = &v63[v64];
      if (v68)
      {
        v19 = &v67;
      }

      v31 = v19;
      v32 = v68 == 0;
      v30 = 3;
      v49 = 0uLL;
      *(&v50 + 1) = 0;
      *&v51 = 0;
      LODWORD(v50) = 0;
      DWORD2(v51) = 0;
      v52 = 0uLL;
      LODWORD(v53) = 0;
      v44 = v60;
      v45 = v61;
      mlir::RewriterBase::replaceOpWithNewOp<mlir::mpsx::FusionOp,mlir::mpsx::FusionType const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>(a3, v43, &v30, &v49, v47, v59, &v44);
      v44 = v46;
      v45 = 0x600000000;
      if (v61)
      {
        v20 = v60;
        v21 = &v60[8 * v61];
        do
        {
          v22 = *v20;
          v23 = *(*v20 + 16);
          if (v23 && mlir::Block::getParent(v23))
          {
            v24 = *(v22 + 36);
            if (v24)
            {
              v25 = v22 - 16;
            }

            else
            {
              v25 = 0;
            }

            if (v24)
            {
              v26 = 0;
              while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v25, v26))
              {
                if (v24 == ++v26)
                {
                  goto LABEL_25;
                }
              }
            }

            else
            {
LABEL_25:
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v44, v22);
            }
          }

          ++v20;
        }

        while (v20 != v21);
        v27 = v44;
        if (v45)
        {
          v28 = 8 * v45;
          do
          {
            v29 = *v27++;
            (*(*a3 + 16))(a3, v29);
            v28 -= 8;
          }

          while (v28);
          v27 = v44;
        }

        if (v27 != v46)
        {
          free(v27);
        }
      }

      mlir::IRMapping::~IRMapping(&v49);
    }

    if (v60 != v62)
    {
      free(v60);
    }

    return 0;
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::FusionOpRewritePatternBase<mlir::mps::MatMulOp>::getQuantizationInfos(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v26);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
    {
      v27 = *(*(DefiningOp + 72) + 24);
      v6 = mlir::Value::getDefiningOp(&v27);
      if (v6)
      {
        v7 = *(*(v6 + 48) + 16);
        if (v7 == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id)
        {
          return 0;
        }
      }
    }
  }

  v4 = mlir::Value::getDefiningOp(&v26);
  *(a2 + 16) = v4;
  if (!v4 || *(*(v4 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    *a2 = 0;
    *(a2 + 8) = v26;
    return 1;
  }

  v9 = v4;
  v10 = (*(*(*(v4 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8) : 0;
  v27 = v10;
  v28 = v11;
  if ((mlir::CallOpInterface::getArgOperands(&v27) & 1) == 0)
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v27);
  if (v12 > 3)
  {
    return 0;
  }

  v13 = (*(*(*(v9 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8) : 0;
  v27 = v13;
  v28 = v14;
  if ((mlir::CallOpInterface::getArgOperands(&v27) & 1) == 0)
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v27);
  if (v15 > 3)
  {
    return 0;
  }

  v16 = (*(*(*(v9 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8) : 0;
  v27 = v16;
  v28 = v17;
  if ((mlir::CallOpInterface::getArgOperands(&v27) & 1) == 0)
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v27);
  if (v18 > 3)
  {
    return 0;
  }

  isConstantIntZero = mlir::isConstantIntZero(*(*(v9 + 72) + 88));
  isConstantFPZero = mlir::isConstantFPZero(*(*(v9 + 72) + 120));
  if ((isConstantIntZero & 1) == 0)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v9 + 72) + 24));
    if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(v9 + 72) + 88)))
    {
      return 0;
    }
  }

  if (!isConstantFPZero)
  {
    v22 = mlir::getElementTypeOrSelf(v26);
    if (v22 != mlir::getElementTypeOrSelf(*(*(v9 + 72) + 120)))
    {
      return 0;
    }
  }

  *a2 = 1;
  v23 = *(*(v9 + 72) + 24);
  *(a2 + 8) = v23;
  *(a2 + 24) = *(*(v9 + 72) + 56);
  *(a2 + 32) = *(*(v9 + 72) + 88);
  *(a2 + 40) = *(*(v9 + 72) + 120);
  *(a2 + 72) = *(v9 + 16 * ((*(v9 + 44) >> 23) & 1) + 64);
  v24 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v24)
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  v27 = v24;
  v28 = v25;
  return mlir::ShapedType::hasStaticShape(&v27);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedMatMulPatternToFusionOp::matchAndRewriteImpl(mlir::mps::MatMulOp,mlir::PatternRewriter &)const::{lambda(mlir::mps::anonymous namespace::FusionOpRewritePatternBase<mlir::mps::MatMulOp>::OperandQuantizationInfos const&)#1}::operator()(uint64_t *a1, void *a2)
{
  v2 = *(a2[1] + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v48 = v2;
  if (!v2)
  {
    return 0;
  }

  mlir::ArrayAttr::getValue(&v48);
  v47 = a2[9];
  v6 = a2[4];
  v7 = a2[5];
  v8 = *(a2[3] + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = 0;
  }

  v46 = v8;
  if (!v8)
  {
    return 0;
  }

  v9 = v5;
  v10 = -v5;
  mlir::ArrayAttr::getValue(&v46);
  v12 = v11;
  if (v47)
  {
    Int = mlir::IntegerAttr::getInt(&v47);
    if (Int < v10 || Int >= v9)
    {
      goto LABEL_32;
    }

    if (v12 >= 2)
    {
      goto LABEL_31;
    }
  }

  else if (v11)
  {
    Value = mlir::ArrayAttr::getValue(&v46);
    if (mlir::ShapedType::getNumElements(Value, v15) != 1)
    {
      goto LABEL_37;
    }
  }

  v16 = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v16 = 0;
  }

  v46 = v16;
  if (!v16)
  {
    return 0;
  }

  mlir::ArrayAttr::getValue(&v46);
  v12 = v17;
  if (v47)
  {
    Int = mlir::IntegerAttr::getInt(&v47);
    if (Int < v10 || Int >= v9)
    {
      goto LABEL_32;
    }

    if (v12 > 1)
    {
      goto LABEL_31;
    }
  }

  else if (v17)
  {
    v18 = mlir::ArrayAttr::getValue(&v46);
    if (mlir::ShapedType::getNumElements(v18, v19) != 1)
    {
      goto LABEL_37;
    }
  }

  v20 = *(v7 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v20 = 0;
  }

  v46 = v20;
  if (!v20)
  {
    return 0;
  }

  mlir::ArrayAttr::getValue(&v46);
  v12 = v21;
  if (v47)
  {
    Int = mlir::IntegerAttr::getInt(&v47);
    if (Int >= v10 && Int < v9)
    {
      if (v12 > 1)
      {
LABEL_31:
        v23 = *a1;
        v22 = a1[1];
        std::to_string(&v40, v12);
        v24 = "Expected dequantize params to be 0d or 1d, not ";
        goto LABEL_38;
      }

      return 1;
    }

LABEL_32:
    v26 = *a1;
    v25 = a1[1];
    std::to_string(&v40, Int);
    v27 = std::string::insert(&v40, 0, "axis = ");
    v28 = v27->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v41, " is not a valid axis value");
    v30 = v29->__r_.__value_.__r.__words[2];
    *__p = *&v29->__r_.__value_.__l.__data_;
    v43 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v45 = 260;
    v44[0] = __p;
    v31 = *v25;
    v49 = v44;
    v32 = *(v26 + 16);
    if (!v32)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (!v21)
  {
    return 1;
  }

  v33 = mlir::ArrayAttr::getValue(&v46);
  if (mlir::ShapedType::getNumElements(v33, v34) == 1)
  {
    return 1;
  }

LABEL_37:
  v23 = *a1;
  v22 = a1[1];
  std::to_string(&v40, v12);
  v24 = "Expected dequantize params to be 0d, not ";
LABEL_38:
  v36 = std::string::insert(&v40, 0, v24);
  v37 = v36->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v41, "d");
  v39 = v38->__r_.__value_.__r.__words[2];
  *__p = *&v38->__r_.__value_.__l.__data_;
  v43 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v45 = 260;
  v44[0] = __p;
  v31 = *v22;
  v49 = v44;
  v32 = *(v23 + 16);
  if (!v32)
  {
    goto LABEL_41;
  }

LABEL_39:
  if (mlir::RewriterBase::Listener::classof(v32))
  {
    (*(*v32 + 88))(v32, *(v31 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::MatMulOp &>(mlir::mps::MatMulOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v49);
  }

LABEL_41:
  if ((SHIBYTE(v43) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_46:
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

LABEL_47:
    operator delete(v40.__r_.__value_.__l.__data_);
    return 0;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_46;
  }

LABEL_43:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_47;
  }

  return 0;
}

void mlir::mps::anonymous namespace::CanonicalizeQuantizedMatMulPatternToFusionOp::matchAndRewriteImpl(mlir::mps::MatMulOp,mlir::PatternRewriter &)const::{lambda(mlir::mps::anonymous namespace::FusionOpRewritePatternBase<mlir::mps::MatMulOp>::OperandQuantizationInfos const&,BOOL)#1}::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = (*(*(a2 + 8) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v63 = v5;
  mlir::ArrayAttr::getValue(&v63);
  v7 = v6;
  v8 = 0;
  v60 = *(a2 + 72);
  *__b = *(a2 + 24);
  v55 = a2;
  v62[0] = *(a2 + 40);
  v63 = v65;
  v64 = 0x300000000;
  v67 = 0;
  v68 = 0;
  v66 = &v67;
  do
  {
    if (v68)
    {
      v10 = v67;
      if (v67)
      {
        v11 = __b[v8];
        do
        {
          while (1)
          {
            v12 = v10;
            v13 = v10[4];
            if (v11 < v13)
            {
              break;
            }

            if (v13 >= v11)
            {
              goto LABEL_6;
            }

            v10 = v12[1];
            if (!v10)
            {
              goto LABEL_14;
            }
          }

          v10 = *v12;
        }

        while (*v12);
        v14 = v12;
      }

      else
      {
        v11 = __b[v8];
        v14 = &v67;
        v12 = &v67;
      }

LABEL_22:
      v19 = operator new(0x28uLL);
      v19[4] = v11;
      *v19 = 0;
      v19[1] = 0;
      v19[2] = v12;
      *v14 = v19;
      if (*v66)
      {
        v66 = *v66;
        v9 = *v14;
      }

      else
      {
        v9 = v19;
      }

      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v67, v9);
      ++v68;
      goto LABEL_6;
    }

    v15 = v63;
    v16 = v64;
    v11 = __b[v8];
    if (!v64)
    {
      goto LABEL_26;
    }

    v17 = 8 * v64;
    v18 = v63;
    while (*v18 != v11)
    {
      ++v18;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_25;
      }
    }

    if (v17)
    {
      goto LABEL_6;
    }

LABEL_25:
    if (v64 > 2)
    {
      LODWORD(v64) = 0;
      v20 = v67;
      v14 = &v67;
      v12 = &v67;
      if (!v67)
      {
        goto LABEL_22;
      }

      while (1)
      {
        while (1)
        {
          v12 = v20;
          v21 = v20[4];
          if (v11 >= v21)
          {
            break;
          }

          v20 = *v12;
          v14 = v12;
          if (!*v12)
          {
            goto LABEL_22;
          }
        }

        if (v21 >= v11)
        {
          break;
        }

        v20 = v12[1];
        if (!v20)
        {
LABEL_14:
          v14 = v12 + 1;
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_26:
      if (v64 >= HIDWORD(v64))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 8);
        v16 = v64;
        v15 = v63;
      }

      v15[v16] = v11;
      LODWORD(v64) = v64 + 1;
    }

LABEL_6:
    ++v8;
  }

  while (v8 != 3);
  v22 = v68;
  if (v68)
  {
    v23 = v66;
  }

  else
  {
    v23 = v63;
  }

  v24 = &v63[v64];
  if (v68)
  {
    v24 = &v67;
  }

  v54 = v24;
  if (v23 != v24)
  {
    __len = 8 * v7;
    do
    {
      v25 = v23[4 * (v22 != 0)][1] & 0xFFFFFFFFFFFFFFF8;
      if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v25 = 0;
      }

      v59 = v25;
      mlir::ArrayAttr::getValue(&v59);
      v27 = v26;
      __b[0] = v62;
      HIDWORD(__b[1]) = 6;
      if (v7 < 7)
      {
        v28 = v62;
        if (v7)
        {
          memset_pattern16(v62, &unk_1E096FAE0, __len);
          v28 = v62;
        }
      }

      else
      {
        LODWORD(__b[1]) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(__b, v62, v7, 8);
        v28 = __b[0];
        memset_pattern16(__b[0], &unk_1E096FAE0, __len);
      }

      LODWORD(__b[1]) = v7;
      v29 = v7;
      if (v60)
      {
        Int = mlir::IntegerAttr::getInt(&v60);
        v31 = (v7 & (Int >> 63)) + Int;
        if (a3)
        {
          if (v31 == v7 - 2)
          {
            v32 = v7 - 1;
          }

          else
          {
            v32 = (v7 & (Int >> 63)) + Int;
          }

          if (v31 == v7 - 1)
          {
            v31 = v7 - 2;
          }

          else
          {
            v31 = v32;
          }
        }

        if (v27)
        {
          if (v27 == 1 && mlir::TensorType::hasRank(&v59))
          {
            Value = mlir::ArrayAttr::getValue(&v59);
            if (v34)
            {
              v35 = 8 * v34;
              while (1)
              {
                v36 = 0x8000000000000000;
                if (*Value == 0x8000000000000000)
                {
                  break;
                }

                ++Value;
                v35 -= 8;
                if (!v35)
                {
                  goto LABEL_65;
                }
              }
            }

            else
            {
LABEL_65:
              v36 = *mlir::ArrayAttr::getValue(&v59);
            }
          }

          else
          {
            v36 = 0x8000000000000000;
          }
        }

        else
        {
          v36 = 1;
        }

        v28 = __b[0];
        *(__b[0] + v31) = v36;
        v29 = LODWORD(__b[1]);
      }

      v38 = ReshapeOp - 16;
      v58 = ReshapeOp - 16;
      v39 = *(ReshapeOp + 24);
      v40 = *(a1 + 16);
      v41 = mlir::ArrayAttr::getValue(&v59);
      mlir::Operation::replaceUsesOfWith(*(v55 + 16), v23[4 * (v22 != 0)], (v43 - 16));
      v44 = *(a1 + 24);
      v57 = *(*(v43 + 72) + 56);
      DefiningOp = mlir::Value::getDefiningOp(&v57);
      v46 = *(v44 + 8);
      if (v46 >= *(v44 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v44, v44 + 16, v46 + 1, 8);
        v46 = *(v44 + 8);
      }

      *(*v44 + 8 * v46) = DefiningOp;
      ++*(v44 + 8);
      v47 = *(a1 + 24);
      v48 = *(v47 + 8);
      if (v48 >= *(v47 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 24), v47 + 16, v48 + 1, 8);
        v48 = *(v47 + 8);
      }

      *(*v47 + 8 * v48) = v43;
      ++*(v47 + 8);
      if (__b[0] != v62)
      {
        free(__b[0]);
      }

      v49 = v23 + 1;
      if (v22)
      {
        v50 = *v49;
        if (*v49)
        {
          do
          {
            v49 = v50;
            v50 = *v50;
          }

          while (v50);
        }

        else
        {
          do
          {
            v49 = v23[2];
            v51 = *v49 == v23;
            v23 = v49;
          }

          while (!v51);
        }
      }

      v23 = v49;
    }

    while (v49 != v54);
  }

  std::__tree<void *>::destroy(v67);
  if (v63 != v65)
  {
    free(v63);
  }
}

void llvm::SmallSet<mlir::Value,8u,mlir::mps::anonymous namespace::FusionOpRewritePatternBase<mlir::mps::MatMulOp>::cmp>::insert(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 96))
  {
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *a2;
    if (!v12)
    {
      goto LABEL_24;
    }

    v14 = 8 * v12;
    v9 = *a1;
    while (*v9 != v13)
    {
      ++v9;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_23;
      }
    }

    if (v14)
    {
      v19 = 0;
      v18 = 1;
      goto LABEL_28;
    }

LABEL_23:
    if (v12 <= 7)
    {
LABEL_24:
      if (v12 >= *(a1 + 12))
      {
        v27 = *a2;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v12 + 1, 8);
        v13 = v27;
        v12 = *(a1 + 8);
        v11 = *a1;
      }

      v11[v12] = v13;
      v20 = *(a1 + 8) + 1;
      *(a1 + 8) = v20;
      v9 = (*a1 + 8 * v20 - 8);
      v18 = 1;
      goto LABEL_27;
    }

    v21 = a2;
    v7 = (a1 + 88);
    v22 = *(a1 + 88);
    *(a1 + 8) = 0;
    if (v22)
    {
      v23 = *v21;
      while (1)
      {
        while (1)
        {
          v9 = v22;
          v24 = v22[4];
          if (v23 >= v24)
          {
            break;
          }

          v22 = *v9;
          if (!*v9)
          {
            v7 = v9;
            goto LABEL_38;
          }
        }

        if (v24 >= v23)
        {
          break;
        }

        v22 = v9[1];
        if (!v22)
        {
          v7 = v9 + 1;
          goto LABEL_38;
        }
      }

      v18 = 0;
      goto LABEL_27;
    }

    v23 = *v21;
    v9 = (a1 + 88);
LABEL_38:
    v25 = v9;
    v9 = operator new(0x28uLL);
    v9[4] = v23;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v25;
    *v7 = v9;
    v26 = **(a1 + 80);
    v17 = v9;
    if (!v26)
    {
LABEL_19:
      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 88), v17);
      v18 = 0;
      ++*(a1 + 96);
LABEL_27:
      v19 = 1;
      goto LABEL_28;
    }

    *(a1 + 80) = v26;
LABEL_18:
    v17 = *v7;
    goto LABEL_19;
  }

  v7 = (a1 + 88);
  v6 = *(a1 + 88);
  if (!v6)
  {
    v8 = *a2;
    v9 = (a1 + 88);
LABEL_16:
    v15 = v9;
    v9 = operator new(0x28uLL);
    v9[4] = v8;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v15;
    *v7 = v9;
    v16 = **(a1 + 80);
    v17 = v9;
    if (!v16)
    {
      goto LABEL_19;
    }

    *(a1 + 80) = v16;
    goto LABEL_18;
  }

  v8 = *a2;
  while (1)
  {
    while (1)
    {
      v9 = v6;
      v10 = v6[4];
      if (v8 >= v10)
      {
        break;
      }

      v6 = *v9;
      if (!*v9)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = v9[1];
    if (!v6)
    {
      v7 = v9 + 1;
      goto LABEL_16;
    }
  }

  v18 = 0;
  v19 = 0;
LABEL_28:
  *(a3 + 8) = v18;
  *a3 = v9;
  *(a3 + 16) = v19;
}

uint64_t std::copy[abi:nn200100]<llvm::SmallSetIterator<mlir::Value,8u,mlir::mps::anonymous namespace::FusionOpRewritePatternBase<mlir::mps::MatMulOp>::cmp>,std::back_insert_iterator<llvm::SmallVector<mlir::Value,6u>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = v4 == v6 && v5 == v7;
  if (!v8)
  {
    if (*(a1 + 8))
    {
      v9 = 0;
    }

    else
    {
      v9 = 4;
    }

    v10 = *(a3 + 8);
    do
    {
      v11 = v5[v9];
      if (v10 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v10 + 1, 8);
        v10 = *(a3 + 8);
      }

      *(*a3 + 8 * v10) = v11;
      v10 = *(a3 + 8) + 1;
      *(a3 + 8) = v10;
      if (v4)
      {
        ++v5;
      }

      else
      {
        v12 = v5[1];
        v13 = v5;
        if (v12)
        {
          do
          {
            v5 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v5 = v13[2];
            v8 = *v5 == v13;
            v13 = v5;
          }

          while (!v8);
        }
      }
    }

    while (v4 != v6 || v5 != v7);
  }

  return a3;
}

uint64_t llvm::SmallSet<mlir::Value,8u,mlir::mps::anonymous namespace::FusionOpRewritePatternBase<mlir::mps::MatMulOp>::cmp>::~SmallSet(uint64_t a1)
{
  std::__tree<void *>::destroy(*(a1 + 88));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

uint64_t mlir::mps::anonymous namespace::FusionOpRewritePatternBase<mlir::mps::MatMulOp>::createReshapeOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a4;
  v16 = a5;
  IntegerType = mlir::Builder::getIntegerType((a2 + 8), 64, 1);
  v10 = mlir::RankedTensorType::get(&v15, 1, IntegerType, 0);
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

  v14 = mlir::DenseElementsAttr::getFromRawBuffer(v10, v12, a3, 8 * a4, 8, 1, 1);
  v15 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 8), a1, &v14);
  return mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 8), a1, &v16, &v15);
}

uint64_t *std::set<mlir::Value,mlir::mps::anonymous namespace::FusionOpRewritePatternBase<mlir::mps::MatMulOp>::cmp,std::allocator<mlir::Value>>::insert[abi:nn200100]<std::move_iterator<mlir::Value*>>(uint64_t *result, unint64_t *a2, unint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    v6 = result + 1;
    do
    {
      v8 = v5[1];
      v9 = v6;
      if (*v5 == v6)
      {
        goto LABEL_12;
      }

      v10 = v5[1];
      v11 = v6;
      if (v8)
      {
        do
        {
          v9 = v10;
          v10 = v10[1];
        }

        while (v10);
      }

      else
      {
        do
        {
          v9 = v11[2];
          v12 = *v9 == v11;
          v11 = v9;
        }

        while (v12);
      }

      v13 = *v4;
      if (v9[4] < *v4)
      {
LABEL_12:
        if (v8)
        {
          v14 = (v9 + 1);
        }

        else
        {
          v14 = v6;
        }

        if (*v14)
        {
          goto LABEL_5;
        }

        if (v8)
        {
          v15 = v9;
        }

        else
        {
          v15 = v6;
        }

        v13 = *v4;
      }

      else if (v8)
      {
        do
        {
          while (1)
          {
            v15 = v8;
            v16 = v8[4];
            if (v13 < v16)
            {
              break;
            }

            if (v16 >= v13)
            {
              goto LABEL_5;
            }

            v8 = v15[1];
            if (!v8)
            {
              v14 = v15 + 1;
              goto LABEL_28;
            }
          }

          v8 = *v15;
        }

        while (*v15);
        v14 = v15;
      }

      else
      {
        v14 = v6;
        v15 = v6;
      }

LABEL_28:
      v17 = operator new(0x28uLL);
      v17[4] = v13;
      *v17 = 0;
      v17[1] = 0;
      v17[2] = v15;
      *v14 = v17;
      v18 = **v5;
      if (v18)
      {
        *v5 = v18;
        v7 = *v14;
      }

      else
      {
        v7 = v17;
      }

      result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v5[1], v7);
      ++v5[2];
LABEL_5:
      ++v4;
    }

    while (v4 != a3);
  }

  return result;
}

void mlir::mps::anonymous namespace::CanonicalizeMatMulNNToNT::~CanonicalizeMatMulNNToNT(mlir::mps::_anonymous_namespace_::CanonicalizeMatMulNNToNT *this)
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

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::TransposeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeMatMulNNToNT::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v5 = *(*(a2 + 72) + 24);
  v13 = &v14;
  v11 = v5;
  result = mlir::Value::getDefiningOp(&v11);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v13, result);
    if (result)
    {
      v7 = mlir::mps::foldTransposeOp(a2, v14, v15, 1);
      if ((v7 & 4) != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      }

      if (v8)
      {
        if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8))
        {
          v9 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
          v11 = v8;
          v12 = v9;
          v10 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ElementsAttr>((a3 + 8), *(a2 + 24), &v11);
          (*(*a3 + 8))(a3, a2, v10);
          return 1;
        }

        v11 = 0;
        v12 = 0;
      }

      return 0;
    }
  }

  return result;
}

void mlir::mps::anonymous namespace::ReshapeConvBiasReshape::~ReshapeConvBiasReshape(mlir::mps::_anonymous_namespace_::ReshapeConvBiasReshape *this)
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

uint64_t mlir::mps::anonymous namespace::ReshapeConvBiasReshape::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91[6] = *MEMORY[0x1E69E9840];
  v85 = 0;
  v86 = 0;
  v83[0] = &v86;
  v83[1] = &v85;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v80[0] = v83;
  v80[1] = &v82;
  v78 = 0;
  v79 = 0;
  v77[0] = v80;
  v77[1] = &v79;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || (mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BiasAddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>(a2, 0, v77) & 1) == 0)
  {
    return 0;
  }

  v76 = v81;
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v76) || mlir::mps::Conv3DOp::getWeightsLayout(&v76) != 2 || mlir::mps::Conv3DOp::getGroups(&v76) != 1)
  {
    return 0;
  }

  v89 = v91;
  v90 = 0x600000000;
  Strides = mlir::mps::Conv3DOp::getStrides(&v76);
  if (Strides)
  {
    v6 = Strides;
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v6;
  }

  else
  {
    v7 = 0;
  }

  v9 = 1;
  mlir::getIntValues<unsigned long long>(Strides, v7, &v89, 1);
  if (v90)
  {
    v10 = 8 * v90 - 8;
    v11 = v89;
    do
    {
      v12 = *v11++;
      v9 = v12 == 1;
      v13 = v12 != 1 || v10 == 0;
      v10 -= 8;
    }

    while (!v13);
  }

  if (v89 != v91)
  {
    free(v89);
  }

  if (!v9)
  {
    return 0;
  }

  v89 = v91;
  v90 = 0x600000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v76);
  if (InputAttributeNames)
  {
    v15 = InputAttributeNames;
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = 1;
  mlir::getIntValues<unsigned long long>(InputAttributeNames, v16, &v89, 1);
  if (v90)
  {
    v18 = 8 * v90 - 8;
    v19 = v89;
    do
    {
      v20 = *v19++;
      v17 = v20 == 1;
      v21 = v20 != 1 || v18 == 0;
      v18 -= 8;
    }

    while (!v21);
  }

  if (v89 != v91)
  {
    free(v89);
  }

  if (!v17)
  {
    return 0;
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v76);
  if ((PaddingStyle - 1) >= 2 && PaddingStyle != 4)
  {
    if (PaddingStyle)
    {
      return 0;
    }

    v89 = v91;
    v90 = 0x600000000;
    Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v76);
    if (Rewriter)
    {
      v24 = Rewriter;
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
      Rewriter = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = 1;
    mlir::getIntValues<unsigned long long>(Rewriter, v25, &v89, 1);
    if (v90)
    {
      v27 = 8 * v90 - 8;
      v28 = v89;
      do
      {
        v29 = *v28++;
        v26 = v29 == 0;
        if (v29)
        {
          v30 = 1;
        }

        else
        {
          v30 = v27 == 0;
        }

        v27 -= 8;
      }

      while (!v30);
    }

    if (v89 != v91)
    {
      free(v89);
    }

    if (!v26)
    {
      return 0;
    }
  }

  v75 = v78;
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v75))
  {
    return 0;
  }

  v31 = (v86[1] & 0xFFFFFFFFFFFFFFF8);
  v32 = v31 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8) : 0;
  v74[0] = v31;
  v74[1] = v32;
  v33 = *(v84 + 36) ? v84 - 16 : 0;
  v34 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = v34 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8) : 0;
  v73[0] = v34;
  v73[1] = v35;
  if (!v74[0])
  {
    return 0;
  }

  result = mlir::CallOpInterface::getArgOperands(v74);
  if (!result)
  {
    return result;
  }

  hasStaticShape = mlir::ShapedType::hasStaticShape(v74);
  result = 0;
  if (!hasStaticShape)
  {
    return result;
  }

  if (!v73[0])
  {
    return result;
  }

  result = mlir::CallOpInterface::getArgOperands(v73);
  if (!result)
  {
    return result;
  }

  result = mlir::ShapedType::hasStaticShape(v73);
  if (!result)
  {
    return result;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v74);
  v39 = v38;
  v41 = mlir::CallableOpInterface::getArgAttrsAttr(v73);
  result = 0;
  if (v39 != 3 || v40 != 4)
  {
    return result;
  }

  if (*ArgAttrsAttr != *v41)
  {
    return 0;
  }

  if (ArgAttrsAttr[1] != v41[1])
  {
    return 0;
  }

  if (ArgAttrsAttr[2] != v41[3])
  {
    return 0;
  }

  if (v41[2] != 1)
  {
    return 0;
  }

  v42 = (v82[1] & 0xFFFFFFFFFFFFFFF8);
  if (!v42)
  {
    return 0;
  }

  v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
  v72[0] = v42;
  v72[1] = v43;
  result = mlir::CallOpInterface::getArgOperands(v72);
  if (!result)
  {
    return result;
  }

  result = mlir::ShapedType::hasStaticShape(v72);
  if (!result)
  {
    return result;
  }

  v44 = mlir::CallableOpInterface::getArgAttrsAttr(v72);
  if (v45 != 4)
  {
    return 0;
  }

  v46 = v44;
  if (*(v44 + 16) != 1 || *(v44 + 24) != 1)
  {
    return 0;
  }

  v47 = *(a2 + 36) ? a2 - 16 : 0;
  v48 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v48)
  {
    return 0;
  }

  v49 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
  v71[0] = v48;
  v71[1] = v49;
  result = mlir::CallOpInterface::getArgOperands(v71);
  if (!result)
  {
    return result;
  }

  result = mlir::ShapedType::hasStaticShape(v71);
  if (!result)
  {
    return result;
  }

  v50 = mlir::CallableOpInterface::getArgAttrsAttr(v71);
  if (v51 != 3 || *v50 != *ArgAttrsAttr || v50[1] != *v46 || v50[2] != ArgAttrsAttr[2])
  {
    return 0;
  }

  v87 = 0x300000002;
  std::vector<int>::vector[abi:nn200100](&v89, &v87, 2uLL);
  v87 = 2;
  IntegerType = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
  v53 = mlir::RankedTensorType::get(&v87, 1, IntegerType, 0);
  v54 = v53;
  v55 = *(a2 + 24);
  if (v53)
  {
    v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
  }

  else
  {
    v56 = 0;
  }

  v87 = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v89, v90 - v89, 4, 1, 1);
  v70 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v55, &v87);
  v57 = *(a2 + 24);
  v87 = v82;
  v69 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a3 + 8), v57, &v87, &v70);
  v58 = *(a2 + 24);
  v87 = v86;
  v68 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::mps::SqueezeOp &,mlir::Value>((a3 + 8), v58, &v69, &v87);
  LODWORD(v67) = 1;
  std::vector<int>::vector[abi:nn200100](&v87, &v67, 1uLL);
  v67 = 1;
  v59 = mlir::Builder::getIntegerType((a3 + 8), 32, 1);
  v60 = mlir::RankedTensorType::get(&v67, 1, v59, 0);
  v61 = v60;
  v62 = *(a2 + 24);
  if (v60)
  {
    v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
  }

  else
  {
    v63 = 0;
  }

  v66 = mlir::DenseElementsAttr::getFromRawBuffer(v61, v63, v87, v88 - v87, 4, 1, 1);
  v67 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v62, &v66);
  v64 = *(a2 + 24);
  v65 = v79;
  v66 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), v64, &v65, &v67);
  mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::AddOp,mlir::mps::MatMulOp &,mlir::mps::ExpandDimsOp &>(a3, a2, &v68, &v66);
  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  return 1;
}

void *std::vector<int>::vector[abi:nn200100](void *a1, char *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 >> 62)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v4 = 4 * a3;
    v5 = &a2[4 * a3];
    v7 = operator new(4 * a3);
    *a1 = v7;
    a1[2] = &v7[v4];
    memcpy(v7, a2, (v5 - a2) & 0xFFFFFFFFFFFFFFFCLL);
    a1[1] = &v7[(v5 - a2) & 0xFFFFFFFFFFFFFFFCLL];
  }

  return a1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::SqueezeOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::mps::SqueezeOp &,mlir::Value>(mlir::BoolAttr **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::MatMulOp::build(a1, v17, *a3 - 16, *a4, 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
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

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::AddOp,mlir::mps::MatMulOp &,mlir::mps::ExpandDimsOp &>(mlir::Float32Type **a1, uint64_t a2, void *a3, void *a4)
{
  v6 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::SubtractOp &,mlir::mps::ConstantOp>(a1 + 1, *(a2 + 24), a3, a4);
  (*(*a1 + 1))(a1, a2, v6);
  return v6;
}

void mlir::mps::anonymous namespace::CanonicalizeGatherNd::~CanonicalizeGatherNd(mlir::mps::_anonymous_namespace_::CanonicalizeGatherNd *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeGatherNd::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v50 = a2;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = &v49;
  v44[0] = &v47;
  v44[1] = &v46;
  v45 = 0;
  v41 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::GatherNDOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2)
  {
LABEL_4:
    v51 = "the input to gather_nd is not buffer_to_tensor";
    v53 = 259;
    v41 = &v51;
    v5 = *(a3 + 16);
    if (v5)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v7 = a3;
  LOBYTE(v54) = 1;
  v51 = &v54;
  v52 = &v41;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::GatherNDOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> & *)#1},0ul,1ul>(v44, &v51);
  if ((v54 & 1) == 0)
  {
    v4 = v50;
    a3 = v7;
    goto LABEL_4;
  }

  v45 = v41;
  v43 = v48;
  if (!v48)
  {
    v21 = "could not retrieve input tensor to gather_nd";
    goto LABEL_24;
  }

  mlir::mpsx::BufferToTensorOp::getInterleave(&v43);
  if ((v8 & 1) == 0)
  {
    v21 = "the input tensor to gather_nd is not interleaved";
LABEL_24:
    v51 = v21;
    v53 = 259;
    v4 = v50;
    v41 = &v51;
    v5 = *(v7 + 16);
    if (v5)
    {
LABEL_5:
      if (mlir::RewriterBase::Listener::classof(v5))
      {
        (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(mlir::mps::GatherNDOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v41);
      }
    }

    return 0;
  }

  v9 = (*(v43 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (!v9)
  {
    v41 = 0;
    v42 = 0;
    v12 = v7;
    goto LABEL_27;
  }

  v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v9 + 8));
  v41 = v9;
  v42 = v10;
  ArgOperands = mlir::CallOpInterface::getArgOperands(&v41);
  v12 = v7;
  if (!ArgOperands)
  {
LABEL_27:
    v51 = "the input tensor to gather_nd does not have static shape";
    v53 = 259;
    v22 = v50;
    v54 = &v51;
    v23 = *(v12 + 16);
    if (v23 && mlir::RewriterBase::Listener::classof(*(v12 + 16)))
    {
      (*(*v23 + 88))(v23, *(v22 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(mlir::mps::GatherNDOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v54);
    }

    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v41);
  if (v14)
  {
    v12 = v7;
    v15 = 8 * v14;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_27;
  }

LABEL_17:
  Interleave = mlir::mpsx::BufferToTensorOp::getInterleave(&v43);
  if ((v17 & 1) == 0)
  {
    v37 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::DenseElementsAttr::getValues<unsigned long long>(v37);
  }

  v54 = Interleave;
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&v54, 8, 1, 0))
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v54);
    isSplat = mlir::DenseElementsAttr::isSplat(&v54);
    mlir::ArrayAttr::getValue(&v54);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v54);
    v20 = v7;
    if (!NumElements)
    {
      goto LABEL_49;
    }
  }

  else
  {
    RawStringData = 0;
    v20 = v7;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 1;
LABEL_32:
  v28 = v26;
  do
  {
    if (isSplat)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    v30 = *(RawStringData + 8 * v29);
    if (v30 != 1)
    {
      if (v27 == 1)
      {
        v26 = v28 + 1;
        v24 = 1;
        v27 = v30;
        v25 = v28;
        if (NumElements - 1 != v28)
        {
          goto LABEL_32;
        }

        if (!v28)
        {
          goto LABEL_42;
        }

LABEL_48:
        v33 = "only interleaving along axis 0 is currently supported";
      }

      else
      {
        v33 = "only one-dimensional interleaving is supported";
      }

      return mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(v20, &v50, v33);
    }

    ++v28;
  }

  while (NumElements != v28);
  if ((v24 & 1) == 0)
  {
LABEL_49:
    v33 = "the input tensor to gather_nd is not interleaved";
    return mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(v20, &v50, v33);
  }

  v30 = v27;
  if (v25)
  {
    goto LABEL_48;
  }

LABEL_42:
  v39 = v30;
  v51 = *(*(v43 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v51);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id)
  {
    v32 = "memref input does not originate from tensorToBuffer op";
    return mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(v7, &v50, v32);
  }

  v38 = DefiningOp;
  v34 = (*(*(*(v50 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v34)
  {
    v51 = 0;
    v52 = 0;
    goto LABEL_61;
  }

  v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
  v51 = v34;
  v52 = v35;
  if (!mlir::ShapedType::hasStaticShape(&v51))
  {
LABEL_61:
    v32 = "the indices tensor does not have static shape";
    return mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(v7, &v50, v32);
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v51);
  if (v36 != 2 || *(mlir::CallableOpInterface::getArgAttrsAttr(&v51) + 8) != 1)
  {
    v32 = "currently only indices tensors of shape [X, 1] are supported";
    return mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(v7, &v50, v32);
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v50 + 72) + 56));
  if (!mlir::Type::isSignedInteger(&ElementTypeOrSelf, 32) && !mlir::Type::isSignedInteger(&ElementTypeOrSelf, 64))
  {
    v32 = "gather_nd indices data type not si32 or si64";
    return mlir::RewriterBase::notifyMatchFailure<mlir::mps::GatherNDOp &>(v7, &v50, v32);
  }

  if (mlir::Type::isSignedInteger(&ElementTypeOrSelf, 32))
  {
  }

  else
  {
    mlir::Type::isSignedInteger(&ElementTypeOrSelf, 64);
  }

  return 1;
}

uint64_t mlir::DenseElementsAttr::getValues<unsigned long long>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t *a2@<X8>)
{
  result = mlir::DenseElementsAttr::isValidIntOrFloat(a1, 8, 1, 0);
  if (result)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(a1);
    LODWORD(v4) = mlir::DenseElementsAttr::isSplat(a1);
    Value = mlir::ArrayAttr::getValue(a1);
    v2 = v9;
    v4 = v4;
    result = mlir::DenseElementsAttr::getNumElements(a1);
  }

  else
  {
    RawStringData = 0;
  }

  *a2 = RawStringData;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = RawStringData;
  a2[4] = v4;
  a2[5] = result;
  a2[6] = Value;
  a2[7] = v2;
  return result;
}

void mlir::mps::anonymous namespace::CanonicalizeGatherNd::rewriteImpl<int>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v100[1] = *MEMORY[0x1E69E9840];
  v86 = a1;
  v9 = (a1 + 24);
  v8 = *(a1 + 24);
  v10 = (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v85[0] = v10;
  v85[1] = v11;
  v12 = *mlir::CallableOpInterface::getArgAttrsAttr(v85);
  v98 = v100;
  v100[0] = v12 | 0x200000000;
  v99 = 0x200000002;
  SI32TensorAttr = 0;
  v13 = *(a2 + 24);
  v96 = *(a2 + 8);
  v97[0] = v13;
  SI32TensorAttr = mlir::getSI32TensorAttr(&v96, v100, 2);
  v83 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 8), v8, &SI32TensorAttr) - 16;
  *&v96 = *(*(a1 + 72) + 56);
  v82 = mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v96, &v83) - 16;
  LODWORD(v96) = 1;
  v81 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((a2 + 8), v8, &v96) - 16;
  v80 = mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v83, &v81) - 16;
  v14 = (*(v82 + 8) & 0xFFFFFFFFFFFFFFF8);
  v60 = a4;
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v78 = v14;
  v79 = v15;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v78);
  NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v17);
  v19 = NumElements;
  v20 = NumElements << 32;
  v21 = NumElements;
  v22 = v97;
  *&v96 = v97;
  *(&v96 + 1) = 0xC00000000;
  if (NumElements < 0xD)
  {
    if (!v20)
    {
      goto LABEL_11;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v97, NumElements, 4);
    v22 = v96;
  }

  bzero(v22, v20 >> 30);
LABEL_11:
  DWORD2(v96) = v19;
  v77 = mlir::DenseElementsAttr::getFromRawBuffer(v78, v79, v22, 4 * v19, 4, 1, 1);
  v76 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 8), v8, &v77) - 16;
  v75 = mlir::OpBuilder::create<mlir::mps::EqualToOp,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v80, &v76) - 16;
  Context = mlir::Attribute::getContext(v9);
  v24 = mlir::IntegerType::get(Context, 32, 1u);
  v25 = mlir::CallableOpInterface::getArgAttrsAttr(&v78);
  v27 = mlir::RankedTensorType::get(v25, v26, v24, 0);
  v28 = v27;
  if (v27)
  {
    v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
  }

  else
  {
    v29 = 0;
  }

  v92 = v94;
  v93 = 0xC00000000;
  if (v21 < 0xD)
  {
    v36 = 4 * v19;
    if (v20)
    {
      v38 = v94;
      v37 = v60;
      if (v21 < 8)
      {
        goto LABEL_65;
      }

      v39 = v21 - (v19 & 7);
      v38 = &v94[v39];
      v40 = vdupq_n_s32(a3);
      v41 = &v95;
      do
      {
        v41[-1] = v40;
        *v41 = v40;
        v41 += 2;
        v39 -= 8;
      }

      while (v39);
      v21 = v19 & 7;
      if ((v19 & 7) != 0)
      {
LABEL_65:
        do
        {
          *v38++ = a3;
          --v21;
        }

        while (v21);
      }

      v30 = v94;
    }

    else
    {
      v30 = v94;
      v37 = v60;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, v21, 4);
    v30 = v92;
    v31 = v19 & 7;
    v32 = v21 - v31;
    v33 = &v92->i8[4 * (v21 - v31)];
    v34 = vdupq_n_s32(a3);
    v35 = v92 + 1;
    do
    {
      v35[-1] = v34;
      *v35 = v34;
      v35 += 2;
      v32 -= 8;
    }

    while (v32);
    v36 = 4 * v19;
    v37 = v60;
    if ((v19 & 7) != 0)
    {
      *v33 = a3;
      if (v31 != 1)
      {
        *(v33 + 1) = a3;
        if (v31 != 2)
        {
          *(v33 + 2) = a3;
          if (v31 != 3)
          {
            *(v33 + 3) = a3;
            if (v31 != 4)
            {
              *(v33 + 4) = a3;
              if (v31 != 5)
              {
                *(v33 + 5) = a3;
                if (v31 != 6)
                {
                  *(v33 + 6) = a3;
                }
              }
            }
          }
        }
      }
    }
  }

  LODWORD(v93) = v19;
  v74 = mlir::DenseElementsAttr::getFromRawBuffer(v28, v29, v30, v36, 4, 1, 1);
  v73 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 8), v8, &v74) - 16;
  v72 = mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v82, &v73) - 16;
  v71 = mlir::OpBuilder::create<mlir::mps::ModuloOp,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v82, &v73) - 16;
  v42 = mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v75, &v72, &v71);
  v69 = *(*(v37 + 72) + 24);
  v70 = v42 - 16;
  v43 = (*(v69 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v43)
  {
    v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
  }

  else
  {
    v44 = 0;
  }

  v89 = v43;
  v90 = v44;
  v45 = mlir::CallableOpInterface::getArgAttrsAttr(&v89);
  v47 = v46;
  v89 = v91;
  v90 = 0x500000000;
  LODWORD(v48) = 0;
  if (v46)
  {
    v49 = 8 * v46;
    do
    {
      v50 = *v45;
      if (v48 >= HIDWORD(v90))
      {
        v51 = v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v91, v48 + 1, 8);
        v45 = v51;
        LODWORD(v48) = v90;
      }

      v89[v48] = v50;
      v48 = (v90 + 1);
      LODWORD(v90) = v90 + 1;
      ++v45;
      v49 -= 8;
    }

    while (v49);
    v52 = v89;
    v53 = HIDWORD(v90);
    v89[v47 - 1] /= a3;
    if (v48 >= v53)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v91, v48 + 1, 8);
      LODWORD(v48) = v90;
      v52 = v89;
    }
  }

  else
  {
    v90 /= a3;
    v52 = v91;
  }

  *&v52[8 * v48] = a3;
  LODWORD(v90) = v90 + 1;
  v87 = *(a2 + 8);
  v88[0] = *(a2 + 24);
  SI64TensorAttr = mlir::getSI64TensorAttr(&v87, v89, v90);
  v67 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 8), v8, &SI64TensorAttr) - 16;
  v66 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value&>((a2 + 8), v8, &v69, &v67) - 16;
  *&v87 = v88;
  *(&v87 + 1) = 0x500000000;
  if (v47)
  {
    *&v88[0] = 0;
    *(&v88[0] + 1) = v47;
    v54 = 2;
    DWORD2(v87) = 2;
    if (v47 == 1)
    {
      v55 = v88;
    }

    else
    {
      LODWORD(v54) = 2;
      for (i = 1; i != v47; ++i)
      {
        if (v54 >= HIDWORD(v87))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v88, v54 + 1, 8);
          LODWORD(v54) = DWORD2(v87);
        }

        *(v87 + 8 * v54) = i;
        v54 = ++DWORD2(v87);
      }

      v55 = v87;
    }
  }

  else
  {
    v54 = 0;
    v55 = v88;
  }

  v57 = *(a2 + 24);
  v64[0] = *(a2 + 8);
  v64[1] = v57;
  v65 = mlir::getSI64TensorAttr(v64, v55, v54);
  *&v64[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 8), v8, &v65) - 16;
  v63 = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::Value>((a2 + 8), v8, &v66, v64) - 16;
  v58 = v86;
  Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&v86);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v86);
  v59 = mlir::OpBuilder::create<mlir::mps::GatherNDOp,mlir::Value &,mlir::Value &,unsigned int,BOOL>((a2 + 8), *(v58 + 24), &v63, &v70, &Count, &InferredResultTypes);
  (*(*a2 + 8))(a2, v58, v59);
  if (v87 != v88)
  {
    free(v87);
  }

  if (v89 != v91)
  {
    free(v89);
  }

  if (v92 != v94)
  {
    free(v92);
  }

  if (v96 != v97)
  {
    free(v96);
  }

  if (v98 != v100)
  {
    free(v98);
  }
}

void mlir::mps::anonymous namespace::CanonicalizeGatherNd::rewriteImpl<long long>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v97[2] = *MEMORY[0x1E69E9840];
  v83 = a1;
  v9 = (a1 + 24);
  v8 = *(a1 + 24);
  v10 = (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v82[0] = v10;
  v82[1] = v11;
  v97[0] = *mlir::CallableOpInterface::getArgAttrsAttr(v82);
  v97[1] = 2;
  v95 = v97;
  v96 = 0x200000002;
  SI64TensorAttr = 0;
  v12 = *(a2 + 24);
  v93 = *(a2 + 8);
  v94[0] = v12;
  SI64TensorAttr = mlir::getSI64TensorAttr(&v93, v97, 2);
  v80 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 8), v8, &SI64TensorAttr) - 16;
  *&v93 = *(*(a1 + 72) + 56);
  v79 = mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v93, &v80) - 16;
  LODWORD(v93) = 1;
  v78 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((a2 + 8), v8, &v93) - 16;
  v77 = mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v80, &v78) - 16;
  v13 = (*(v79 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v75 = v13;
  v76 = v14;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v75);
  NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v16);
  v18 = NumElements;
  *&v93 = v94;
  HIDWORD(v93) = 6;
  v56 = a4;
  if (NumElements < 7)
  {
    if (NumElements)
    {
      v20 = 8 * NumElements;
      bzero(v94, 8 * NumElements);
    }

    else
    {
      v20 = 0;
    }

    v19 = v94;
  }

  else
  {
    DWORD2(v93) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v94, NumElements, 8);
    v19 = v93;
    v20 = 8 * v18;
    bzero(v93, 8 * v18);
  }

  DWORD2(v93) = v18;
  v74 = mlir::DenseElementsAttr::getFromRawBuffer(v75, v76, v19, v20 & 0x7FFFFFFF8, 8, 1, 1);
  v73 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 8), v8, &v74) - 16;
  v72 = mlir::OpBuilder::create<mlir::mps::EqualToOp,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v77, &v73) - 16;
  Context = mlir::Attribute::getContext(v9);
  v22 = mlir::IntegerType::get(Context, 64, 1u);
  v23 = mlir::CallableOpInterface::getArgAttrsAttr(&v75);
  v25 = mlir::RankedTensorType::get(v23, v24, v22, 0);
  v26 = v25;
  if (v25)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  else
  {
    v27 = 0;
  }

  v89 = v92;
  v91 = 6;
  if (v18 < 7)
  {
    if (!v18)
    {
      goto LABEL_38;
    }

    v34 = vdupq_n_s64(v18 - 1);
    v35 = vmovn_s64(vcgeq_u64(v34, xmmword_1E09700F0));
    if (v35.i8[0])
    {
      v92[0] = a3;
    }

    v36 = (v18 + 1) & 0xE;
    if (v35.i8[4])
    {
      v92[1] = a3;
    }

    if (v36 == 2)
    {
      goto LABEL_38;
    }

    v37 = vmovn_s64(vcgtq_u64(v34, xmmword_1E0970220));
    if (v37.i8[0])
    {
      v92[2] = a3;
      if ((v37.i8[4] & 1) == 0)
      {
LABEL_30:
        if (v36 == 4)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }
    }

    else if ((v37.i8[4] & 1) == 0)
    {
      goto LABEL_30;
    }

    v92[3] = a3;
    if (v36 == 4)
    {
LABEL_38:
      v28 = v92;
      goto LABEL_39;
    }

LABEL_34:
    v38 = vmovn_s64(vcgtq_u64(v34, xmmword_1E0970230));
    if (v38.i8[0])
    {
      v92[4] = a3;
    }

    if (v38.i8[4])
    {
      v92[5] = a3;
    }

    goto LABEL_38;
  }

  v90 = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v18, 8);
  v28 = v89;
  v29 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = v18 & 3;
  v31 = vdupq_n_s64(a3);
  v32 = v89 + 1;
  v33 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v32[-1] = v31;
    *v32 = v31;
    v32 += 2;
    v33 -= 4;
  }

  while (v33);
  if (v18 != (v18 & 0xFFFFFFFFFFFFFFFCLL))
  {
    do
    {
      v28[v29++] = a3;
      --v30;
    }

    while (v30);
  }

LABEL_39:
  v90 = v18;
  v71 = mlir::DenseElementsAttr::getFromRawBuffer(v26, v27, v28, v20 & 0x7FFFFFFF8, 8, 1, 1);
  v70 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 8), v8, &v71) - 16;
  v69 = mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v79, &v70) - 16;
  v68 = mlir::OpBuilder::create<mlir::mps::ModuloOp,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v79, &v70) - 16;
  v39 = mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>((a2 + 8), v8, &v72, &v69, &v68);
  v66 = *(*(v56 + 72) + 24);
  v67 = v39 - 16;
  v40 = (*(v66 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v40)
  {
    v41 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v40 + 8);
  }

  else
  {
    v41 = 0;
  }

  v86 = v40;
  v87 = v41;
  v42 = mlir::CallableOpInterface::getArgAttrsAttr(&v86);
  v44 = v43;
  v86 = v88;
  v87 = 0x500000000;
  LODWORD(v45) = 0;
  if (v43)
  {
    v46 = 8 * v43;
    do
    {
      v47 = *v42;
      if (v45 >= HIDWORD(v87))
      {
        v57 = v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v45 + 1, 8);
        v42 = v57;
        LODWORD(v45) = v87;
      }

      v86[v45] = v47;
      v45 = (v87 + 1);
      LODWORD(v87) = v87 + 1;
      ++v42;
      v46 -= 8;
    }

    while (v46);
    v48 = v86;
    v49 = HIDWORD(v87);
    v86[v44 - 1] /= a3;
    if (v45 >= v49)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v45 + 1, 8);
      LODWORD(v45) = v87;
      v48 = v86;
    }
  }

  else
  {
    v87 /= a3;
    v48 = v88;
  }

  *&v48[8 * v45] = a3;
  LODWORD(v87) = v87 + 1;
  v84 = *(a2 + 8);
  v85[0] = *(a2 + 24);
  v65 = mlir::getSI64TensorAttr(&v84, v86, v87);
  v64 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 8), v8, &v65) - 16;
  v63 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value&>((a2 + 8), v8, &v66, &v64) - 16;
  *&v84 = v85;
  *(&v84 + 1) = 0x500000000;
  if (v44)
  {
    *&v85[0] = 0;
    *(&v85[0] + 1) = v44;
    v50 = 2;
    DWORD2(v84) = 2;
    if (v44 == 1)
    {
      v51 = v85;
    }

    else
    {
      LODWORD(v50) = 2;
      for (i = 1; i != v44; ++i)
      {
        if (v50 >= HIDWORD(v84))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v85, v50 + 1, 8);
          LODWORD(v50) = DWORD2(v84);
        }

        *(v84 + 8 * v50) = i;
        v50 = ++DWORD2(v84);
      }

      v51 = v84;
    }
  }

  else
  {
    v50 = 0;
    v51 = v85;
  }

  v53 = *(a2 + 24);
  v61[0] = *(a2 + 8);
  v61[1] = v53;
  v62 = mlir::getSI64TensorAttr(v61, v51, v50);
  *&v61[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 8), v8, &v62) - 16;
  v60 = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::Value>((a2 + 8), v8, &v63, v61) - 16;
  v54 = v83;
  Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&v83);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v83);
  v55 = mlir::OpBuilder::create<mlir::mps::GatherNDOp,mlir::Value &,mlir::Value &,unsigned int,BOOL>((a2 + 8), *(v54 + 24), &v60, &v67, &Count, &InferredResultTypes);
  (*(*a2 + 8))(a2, v54, v55);
  if (v84 != v85)
  {
    free(v84);
  }

  if (v86 != v88)
  {
    free(v86);
  }

  if (v89 != v92)
  {
    free(v89);
  }

  if (v93 != v94)
  {
    free(v93);
  }

  if (v95 != v97)
  {
    free(v95);
  }
}

uint64_t mlir::OpBuilder::create<mlir::mps::ModuloOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ModuloOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ModuloOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ModuloOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::GatherNDOp,mlir::Value &,mlir::Value &,unsigned int,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherNDOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::GatherNDOp,mlir::Value &,mlir::Value &,unsigned int,BOOL>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::GatherNDOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GatherNDOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeTensorBuffer::~CanonicalizeTensorBuffer(mlir::mps::_anonymous_namespace_::CanonicalizeTensorBuffer *this)
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

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mpsx::BufferToTensorOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeTensorBuffer::matchAndRewriteImpl(uint64_t a1, uint64_t a2, mlir::UnitAttr **a3)
{
  v81[5] = *MEMORY[0x1E69E9840];
  v77 = a2;
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

  v76[0] = v6;
  v76[1] = v7;
  v8 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v75[0] = v8;
  v75[1] = v9;
  result = mlir::CallOpInterface::getArgOperands(v76);
  if (!result)
  {
    return result;
  }

  result = mlir::CallOpInterface::getArgOperands(v75);
  if (!result)
  {
    return result;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v76);
  v12 = v11;
  if (*(v77 + 9))
  {
    v13 = v77 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  if (mlir::Type::isInteger(&ElementTypeOrSelf, 4))
  {
    return 0;
  }

  v15 = v77;
  if (*(*(v77 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id || (*(v77 + 46) & 0x80) == 0 || *(v77 + 17) != 1 || (v69[0] = *(*(v77 + 9) + 24), (DefiningOp = mlir::Value::getDefiningOp(v69)) == 0) || (v17 = DefiningOp, *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id) || (*(DefiningOp + 46) & 0x80) == 0 || *(DefiningOp + 68) != 1)
  {
    return 0;
  }

  v18 = *(*(DefiningOp + 72) + 24);
  mlir::mpsx::BufferToTensorOp::getShape(&v77);
  if (v19)
  {
    v69[0] = v17;
    mlir::mpsx::BufferToTensorOp::getShape(v69);
    if ((v20 & 1) == 0)
    {
      if (v12 != 1)
      {
        v73 = v15;
        mlir::mpsx::BufferToTensorOp::getInterleave(&v73);
        if (v21)
        {
          llvm::SmallVector<long long,5u>::SmallVector(v80, v12);
          Interleave = mlir::mpsx::BufferToTensorOp::getInterleave(&v73);
          v72 = v22;
          if (v22)
          {
            mlir::DenseElementsAttr::getValues<unsigned long long>(&Interleave, v69);
            v78 = *v69;
            v79 = v70;
            mlir::DenseElementsAttr::getValues<unsigned long long>(&Interleave, &__p);
            v67 = v65;
            v68 = v66;
            llvm::SmallVectorImpl<long long>::assign<mlir::DenseElementsAttr::ElementIterator<unsigned long long>,void>(v80, &v78, &v67);
          }

          if (v12 >= 3)
          {
            v23 = v12 - 3;
          }

          else
          {
            v23 = 0;
          }

          if (v12 < 1)
          {
            LODWORD(v25) = 1;
          }

          else
          {
            v24 = 0;
            LODWORD(v25) = 1;
            do
            {
              if (*(v80[0] + v24) > 1)
              {
                v23 = v24;
                v25 = *(v80[0] + v24);
              }

              ++v24;
            }

            while (v12 != v24);
          }

          LODWORD(__p) = v12 - 1;
          std::vector<int>::vector[abi:nn200100](v69, &__p, 1uLL);
          LODWORD(v78) = v25;
          std::vector<int>::vector[abi:nn200100](&__p, &v78, 1uLL);
          *&v78 = v18[1] & 0xFFFFFFFFFFFFFFF8;
          Context = mlir::Attribute::getContext(&v78);
          v45 = mlir::IntegerType::get(Context, 32, 1u);
          v46 = mlir::RankedTensorType::get(0, 0, v45, 0);
          *&v78 = (v69[1] - v69[0]) >> 2;
          v47 = mlir::RankedTensorType::get(&v78, 1, v45, 0);
          v48 = v47;
          *&v67 = v47;
          if (v47)
          {
            v49 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
          }

          else
          {
            v49 = 0;
          }

          Interleave = mlir::DenseElementsAttr::getFromRawBuffer(v48, v49, v69[0], v69[1] - v69[0], 4, 1, 1);
          if (v48)
          {
            v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
          }

          else
          {
            v50 = 0;
          }

          v62 = mlir::DenseElementsAttr::getFromRawBuffer(v48, v50, __p, v64 - __p, 4, 1, 1);
          v61 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a3 + 1), *(v77 + 3), &v67, &Interleave);
          v51 = *(v77 + 3);
          if (v46)
          {
            v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v46 + 8);
          }

          else
          {
            v52 = 0;
          }

          LODWORD(v59) = v23;
          *&v78 = mlir::DenseElementsAttr::getFromRawBuffer(v46, v52, &v59, 4, 4, 1, 1);
          v60 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 1), v51, &v78);
          v59 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a3 + 1), *(v77 + 3), &v67, &v62);
          v53 = (*(*(*(v73 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v53)
          {
            v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
          }

          else
          {
            v54 = 0;
          }

          *&v78 = v53;
          *(&v78 + 1) = v54;
          mlir::CallableOpInterface::getArgAttrsAttr(&v78);
          *&v78 = v18;
          v58 = 1;
          mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::SpaceToBatchOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(a3, v77, &v78, &v61, &v60, &v59, &v58);
          v43 = __p;
          if (!__p)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        }

LABEL_90:
        v55 = std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::IdentityOp,mlir::Value>(v55, v56, v57);
      }

LABEL_39:
      v69[0] = v18;
      mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::IdentityOp,mlir::Value>(a3, v77, v69);
      return 1;
    }

    return 0;
  }

  if (v12 == 1)
  {
    goto LABEL_39;
  }

  v73 = v17;
  mlir::mpsx::BufferToTensorOp::getInterleave(&v73);
  if ((v26 & 1) == 0)
  {
    goto LABEL_90;
  }

  llvm::SmallVector<long long,5u>::SmallVector(v80, v12);
  Interleave = mlir::mpsx::BufferToTensorOp::getInterleave(&v73);
  v72 = v27;
  if (v27)
  {
    mlir::DenseElementsAttr::getValues<unsigned long long>(&Interleave, v69);
    v78 = *v69;
    v79 = v70;
    mlir::DenseElementsAttr::getValues<unsigned long long>(&Interleave, &__p);
    v67 = v65;
    v68 = v66;
    llvm::SmallVectorImpl<long long>::assign<mlir::DenseElementsAttr::ElementIterator<unsigned long long>,void>(v80, &v78, &v67);
  }

  if (v12 >= 3)
  {
    v28 = v12 - 3;
  }

  else
  {
    v28 = 0;
  }

  if (v12 < 1)
  {
    LODWORD(v30) = 1;
  }

  else
  {
    v29 = 0;
    LODWORD(v30) = 1;
    do
    {
      if (*(v80[0] + v29) > 1)
      {
        v28 = v29;
        v30 = *(v80[0] + v29);
      }

      ++v29;
    }

    while (v12 != v29);
  }

  LODWORD(__p) = v12 - 1;
  std::vector<int>::vector[abi:nn200100](v69, &__p, 1uLL);
  LODWORD(v78) = v30;
  std::vector<int>::vector[abi:nn200100](&__p, &v78, 1uLL);
  *&v78 = v18[1] & 0xFFFFFFFFFFFFFFF8;
  v31 = mlir::Attribute::getContext(&v78);
  v32 = mlir::IntegerType::get(v31, 32, 1u);
  v33 = mlir::RankedTensorType::get(0, 0, v32, 0);
  *&v78 = (v69[1] - v69[0]) >> 2;
  v34 = mlir::RankedTensorType::get(&v78, 1, v32, 0);
  v35 = v34;
  *&v67 = v34;
  if (v34)
  {
    v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
  }

  else
  {
    v36 = 0;
  }

  Interleave = mlir::DenseElementsAttr::getFromRawBuffer(v35, v36, v69[0], v69[1] - v69[0], 4, 1, 1);
  if (v35)
  {
    v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8);
  }

  else
  {
    v37 = 0;
  }

  v62 = mlir::DenseElementsAttr::getFromRawBuffer(v35, v37, __p, v64 - __p, 4, 1, 1);
  v61 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a3 + 1), *(v77 + 3), &v67, &Interleave);
  v38 = *(v77 + 3);
  if (v33)
  {
    v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
  }

  else
  {
    v39 = 0;
  }

  LODWORD(v59) = v28;
  *&v78 = mlir::DenseElementsAttr::getFromRawBuffer(v33, v39, &v59, 4, 4, 1, 1);
  v60 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 1), v38, &v78);
  v59 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a3 + 1), *(v77 + 3), &v67, &v62);
  v40 = (*(*(*(v73 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v40)
  {
    v41 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v40 + 8);
  }

  else
  {
    v41 = 0;
  }

  *&v78 = v40;
  *(&v78 + 1) = v41;
  mlir::CallableOpInterface::getArgAttrsAttr(&v78);
  v42 = *(v77 + 3);
  *&v78 = v18;
  v58 = 1;
  mlir::OpBuilder::create<mlir::mps::BatchToSpaceOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(a3 + 1, v42, &v78, &v61, &v60, &v59, &v58);
  *&v78 = v18;
  v58 = 1;
  mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::BatchToSpaceOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(a3, v77, &v78, &v61, &v60, &v59, &v58);
  v43 = __p;
  if (!__p)
  {
    goto LABEL_70;
  }

LABEL_69:
  v64 = v43;
  operator delete(v43);
LABEL_70:
  if (v69[0])
  {
    v69[1] = v69[0];
    operator delete(v69[0]);
  }

  if (v80[0] != v81)
  {
    free(v80[0]);
  }

  return 1;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::IdentityOp,mlir::Value>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::Value>((a1 + 8), *(a2 + 24), a3);
  (*(*a1 + 8))(a1, a2, v5);
  return v5;
}

void *llvm::SmallVector<long long,5u>::SmallVector(void *result, unint64_t a2)
{
  *result = result + 2;
  result[1] = 0x500000000;
  if (a2)
  {
    if (a2 < 6)
    {
      v4 = 0;
      v5 = a2;
    }

    else
    {
      v3 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 2), a2, 8);
      result = v3;
      v4 = *(v3 + 2);
      v5 = a2 - v4;
      if (a2 == v4)
      {
        goto LABEL_7;
      }
    }

    v6 = result;
    bzero((*result + 8 * v4), 8 * v5);
    result = v6;
LABEL_7:
    *(result + 2) = a2;
  }

  return result;
}

void llvm::SmallVectorImpl<long long>::assign<mlir::DenseElementsAttr::ElementIterator<unsigned long long>,void>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = 0;
  *(a1 + 8) = 0;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = *(a3 + 16);
  v9 = v8 - v7;
  if (v8 - v7 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v8 - v7, 8);
    v4 = *(a1 + 8);
  }

  if (v8 != v7)
  {
    v10 = (*a1 + 8 * v4);
    do
    {
      if (v6)
      {
        v11 = 0;
      }

      else
      {
        v11 = v7;
      }

      *v10++ = *(v5 + 8 * v11);
      ++v7;
    }

    while (v8 != v7);
  }

  *(a1 + 8) = v4 + v9;
}

uint64_t mlir::OpBuilder::create<mlir::mps::BatchToSpaceOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, unsigned __int8 *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BatchToSpaceOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::BatchToSpaceOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::BatchToSpaceOp::build(a1, v23, *a3, *a4 - 16, *a5 - 16, *a6 - 16, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BatchToSpaceOp,void>::id)
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

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::BatchToSpaceOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, unsigned __int8 *a7)
{
  v9 = mlir::OpBuilder::create<mlir::mps::BatchToSpaceOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7);
  (*(*a1 + 1))(a1, a2, v9);
  return v9;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::SpaceToBatchOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, unsigned __int8 *a7)
{
  v9 = mlir::OpBuilder::create<mlir::mps::SpaceToBatchOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7);
  (*(*a1 + 1))(a1, a2, v9);
  return v9;
}

uint64_t mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IdentityOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::mps::ReadVariableOp &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::IdentityOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SpaceToBatchOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, unsigned __int8 *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SpaceToBatchOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::SpaceToBatchOp::build(a1, v23, *a3, *a4 - 16, *a5 - 16, *a6 - 16, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeDeinterleaveDequantize::~CanonicalizeDeinterleaveDequantize(mlir::mps::_anonymous_namespace_::CanonicalizeDeinterleaveDequantize *this)
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

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::DequantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeDeinterleaveDequantize::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80[5] = *MEMORY[0x1E69E9840];
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

  v76[0] = v6;
  v76[1] = v7;
  v8 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v75[0] = v8;
  v75[1] = v9;
  result = mlir::CallOpInterface::getArgOperands(v76);
  if (!result)
  {
    return result;
  }

  result = mlir::CallOpInterface::getArgOperands(v75);
  if (!result)
  {
    return result;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v76);
  v12 = v11;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  result = mlir::Type::isInteger(&ElementTypeOrSelf, 4);
  if (!result)
  {
    return result;
  }

  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = &v73;
  v68 = 0;
  v69 = &v71;
  v66 = 0;
  v67 = 0;
  v64[0] = &v69;
  v64[1] = &v68;
  v64[2] = &v67;
  v64[3] = &v66;
  v65 = 0;
  __p = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 4 || (LOBYTE(v79[0]) = 1, v58[0] = v79, v58[1] = &__p, mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::TensorToBufferOp,mlir::detail::any_value_binder>> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::TensorToBufferOp,mlir::detail::any_value_binder>>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::TensorToBufferOp,mlir::detail::any_value_binder>> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> & *)#1},0ul,1ul,2ul,3ul>(v64, v58), (v79[0] & 1) == 0))
  {
    v58[0] = "failed: deinterleave+dequant pattern did not match";
    v60 = 259;
    __p = v58;
    v15 = *(a3 + 16);
    if (v15 && mlir::RewriterBase::Listener::classof(v15))
    {
      (*(*v15 + 88))(v15, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::DequantizeOp &>(mlir::mps::DequantizeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__p);
    }

    return 0;
  }

  v65 = __p;
  v58[0] = v72;
  mlir::mpsx::BufferToTensorOp::getShape(v58);
  if (v13)
  {
    return 0;
  }

  if (v12 == 1)
  {
    v58[0] = v73;
    __p = v68;
    v79[0] = v67;
    *&v77 = v66;
    v14 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
    *&v56 = *(v14 + 72);
    Interleave = *(v14 + 64);
    mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::DequantizeOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::TypeAttr,mlir::IntegerAttr>(a3, a2, v58, &__p, v79, &v77, &v56, &Interleave);
    return 1;
  }

  v63 = v70;
  mlir::mpsx::BufferToTensorOp::getInterleave(&v63);
  if (v16)
  {
    llvm::SmallVector<long long,5u>::SmallVector(v79, v12);
    Interleave = mlir::mpsx::BufferToTensorOp::getInterleave(&v63);
    v62 = v17;
    if (v17)
    {
      mlir::DenseElementsAttr::getValues<unsigned long long>(&Interleave, v58);
      v77 = *v58;
      v78 = v59;
      mlir::DenseElementsAttr::getValues<unsigned long long>(&Interleave, &__p);
      v56 = v54;
      v57 = v55;
      llvm::SmallVectorImpl<long long>::assign<mlir::DenseElementsAttr::ElementIterator<unsigned long long>,void>(v79, &v77, &v56);
    }

    if (v12 >= 3)
    {
      v18 = v12 - 3;
    }

    else
    {
      v18 = 0;
    }

    if (v12 < 1)
    {
      LODWORD(v20) = 1;
    }

    else
    {
      v19 = 0;
      LODWORD(v20) = 1;
      do
      {
        if (*(v79[0] + v19) > 1)
        {
          v18 = v19;
          v20 = *(v79[0] + v19);
        }

        ++v19;
      }

      while (v12 != v19);
    }

    LODWORD(__p) = v12 - 1;
    std::vector<int>::vector[abi:nn200100](v58, &__p, 1uLL);
    LODWORD(v77) = v20;
    std::vector<int>::vector[abi:nn200100](&__p, &v77, 1uLL);
    *&v77 = v73[1] & 0xFFFFFFFFFFFFFFF8;
    Context = mlir::Attribute::getContext(&v77);
    v22 = mlir::IntegerType::get(Context, 32, 1u);
    v23 = mlir::RankedTensorType::get(0, 0, v22, 0);
    *&v77 = (v58[1] - v58[0]) >> 2;
    v24 = mlir::RankedTensorType::get(&v77, 1, v22, 0);
    v25 = v24;
    *&v56 = v24;
    if (v24)
    {
      v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
    }

    else
    {
      v26 = 0;
    }

    Interleave = mlir::DenseElementsAttr::getFromRawBuffer(v25, v26, v58[0], v58[1] - v58[0], 4, 1, 1);
    if (v25)
    {
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
    }

    else
    {
      v27 = 0;
    }

    v51 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, __p, v53 - __p, 4, 1, 1);
    v50 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a3 + 8), *(a2 + 24), &v56, &Interleave);
    v28 = *(a2 + 24);
    if (v23)
    {
      v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
    }

    else
    {
      v29 = 0;
    }

    LODWORD(v48) = v18;
    *&v77 = mlir::DenseElementsAttr::getFromRawBuffer(v23, v29, &v48, 4, 4, 1, 1);
    v49 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v28, &v77);
    v48 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a3 + 8), *(a2 + 24), &v56, &v51);
    v30 = (*(*(*(v63 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v30)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v31 = 0;
    }

    *&v77 = v30;
    *(&v77 + 1) = v31;
    mlir::CallableOpInterface::getArgAttrsAttr(&v77);
    v32 = *(a2 + 24);
    v46 = v68;
    v47 = v73;
    v44 = v66;
    v45 = v67;
    v33 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
    v43 = *(v33 + 72);
    v42 = *(v33 + 64);
    *&v77 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr,mlir::IntegerAttr>((a3 + 8), v32, &v47, &v46, &v45, &v44, &v43, &v42);
    LOBYTE(v47) = 1;
    mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::SpaceToBatchOp,mlir::mps::DequantizeOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(a3, a2, &v77, &v50, &v49, &v48, &v47);
    if (__p)
    {
      v53 = __p;
      operator delete(__p);
    }

    if (v58[0])
    {
      v58[1] = v58[0];
      operator delete(v58[0]);
    }

    if (v79[0] != v80)
    {
      free(v79[0]);
    }

    return 1;
  }

  v34 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::DequantizeOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::TypeAttr,mlir::IntegerAttr>(v34, v35, v36, v37, v38, v39, v40, v41);
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::DequantizeOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::TypeAttr,mlir::IntegerAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v10 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr,mlir::IntegerAttr>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7, a8);
  (*(*a1 + 1))(a1, a2, v10);
  return v10;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::SpaceToBatchOp,mlir::mps::DequantizeOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, unsigned __int8 *a7)
{
  v9 = mlir::OpBuilder::create<mlir::mps::SpaceToBatchOp,mlir::mps::DequantizeOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7);
  (*(*a1 + 1))(a1, a2, v9);
  return v9;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::TensorToBufferOp,mlir::detail::any_value_binder>> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::TensorToBufferOp,mlir::detail::any_value_binder>>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::TensorToBufferOp,mlir::detail::any_value_binder>> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> & *)#1},0ul,1ul,2ul,3ul>(uint64_t a1, uint64_t a2)
{
  result = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::TensorToBufferOp,mlir::detail::any_value_binder>>>(**(a2 + 8), 0, *a1);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = result & **a2;
  **a2 = v7;
  v8 = *(a1 + 8);
  v9 = *(*v6 + 72);
  v10 = v9[7];
  if (*v8)
  {
    v11 = *v8 == v10;
  }

  else
  {
    *v8 = v10;
    v5 = *a2;
    v9 = *(**(a2 + 8) + 72);
    v7 = **a2 != 0;
    v11 = 1;
  }

  v12 = v11 & v7;
  *v5 = v12;
  v13 = *(a1 + 16);
  v14 = v9[11];
  if (*v13)
  {
    v15 = *v13 == v14;
  }

  else
  {
    *v13 = v14;
    v5 = *a2;
    v9 = *(**(a2 + 8) + 72);
    v12 = **a2 != 0;
    v15 = 1;
  }

  v16 = v15 & v12;
  *v5 = v16;
  v17 = *(a1 + 24);
  v18 = v9[15];
  if (*v17)
  {
    v19 = *v17 == v18;
  }

  else
  {
    *v17 = v18;
    v5 = *a2;
    v16 = **a2 != 0;
    v19 = 1;
  }

  *v5 = v19 & v16;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SpaceToBatchOp,mlir::mps::DequantizeOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, unsigned __int8 *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SpaceToBatchOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::SpaceToBatchOp::build(a1, v23, *a3 - 16, *a4 - 16, *a5 - 16, *a6 - 16, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeReadStateTensorBuffer::~CanonicalizeReadStateTensorBuffer(mlir::mps::_anonymous_namespace_::CanonicalizeReadStateTensorBuffer *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeReadStateTensorBuffer::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = 0;
  v37 = 0;
  v35 = &v37;
  v33 = &v35;
  v34 = 0;
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id && (*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 1 && (NextResultAtOffset = *(*(a2 + 72) + 24), (DefiningOp = mlir::Value::getDefiningOp(&NextResultAtOffset)) != 0) && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 1 && (mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::TensorToBufferOp,mlir::detail::any_value_binder>>>(DefiningOp, 0, &v33) & 1) != 0)
  {
    v6 = v36;
    v32 = v34;
    v7 = *(a2 + 24);
    NextResultAtOffset = v37;
    v31 = mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>((a3 + 8), v7, &NextResultAtOffset);
    v8 = mlir::OpBuilder::create<mlir::mps::ReadVariableOp,mlir::mps::VariableFromTensorOp &>((a3 + 8), *(a2 + 24), &v31);
    v9 = *(a2 + 24);
    if (*(v8 + 36))
    {
      v10 = v8 - 16;
    }

    else
    {
      v10 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
    v11 = mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::detail::TypedValue<mlir::TensorType>>((a3 + 8), v9, &NextResultAtOffset);
    v30 = v11 - 16;
    if (*(v6 + 36))
    {
      v12 = v6 - 16;
    }

    else
    {
      v12 = 0;
    }

    *(v11 - 8) = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8 | *(v11 - 8) & 7;
    NextResultAtOffset = mlir::mpsx::BufferToTensorOp::getShape(&v32);
    v29 = v13;
    if (v13 & 1) != 0 && (ResultElementType = mlir::mpsx::BufferToTensorOp::getResultElementType(&v32), (v15) && (ElementTypeOrSelf = mlir::getElementTypeOrSelf(ResultElementType), v27 = mlir::TypeAttr::get(ElementTypeOrSelf), Interleave = mlir::mpsx::BufferToTensorOp::getInterleave(&v32), v26 = v17, (v17))
    {
      IsTensorBufferOp = mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&v32);
      IsChannelAndInterleaveSame = mlir::mpsx::BufferToTensorOp::getIsChannelAndInterleaveSame(&v32);
      v18 = mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::DenseIntElementsAttr,BOOL,BOOL>((a3 + 8), *(a2 + 24), &v30, &NextResultAtOffset, &v27, &Interleave, &IsTensorBufferOp, &IsChannelAndInterleaveSame);
      (*(*a3 + 8))(a3, a2, v18);
      return 1;
    }

    else
    {
      v20 = std::__throw_bad_optional_access[abi:nn200100]();
      return mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>(v20, v21, v22);
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReadVariableOp,mlir::mps::VariableFromTensorOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReadVariableOp,mlir::detail::TypedValue<mlir::TensorType> &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::detail::TypedValue<mlir::TensorType>>(mlir::UnknownLoc **a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::detail::TypedValue<mlir::TensorType>>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mpsx::TensorToBufferOp::build(a1, v15, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::DenseIntElementsAttr,BOOL,BOOL>(mlir::BoolAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::DenseIntElementsAttr,BOOL,BOOL>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::mpsx::BufferToTensorOp::build(a1, v25, *a3, *a4, *a5, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v20;
}

void mlir::mps::anonymous namespace::CanonicalizeWriteStateTensorBuffer::~CanonicalizeWriteStateTensorBuffer(mlir::mps::_anonymous_namespace_::CanonicalizeWriteStateTensorBuffer *this)
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

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::AssignVariableOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeWriteStateTensorBuffer::matchAndRewriteImpl(uint64_t a1, uint64_t a2, mlir::BoolAttr **a3)
{
  v49 = 0;
  v47 = &v49;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v44[0] = &v47;
  v44[1] = &v46;
  Interleave = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2)
  {
LABEL_4:
    Shape = "failed: State write tensor buffer pattern did not match";
    v52 = 259;
    Interleave = &Shape;
    v4 = a3[2];
    if (v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v6 = a3;
  LOBYTE(v43) = 1;
  Shape = &v43;
  v51 = &Interleave;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::AssignVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> & *)#1},0ul,1ul>(v44, &Shape);
  if ((v43 & 1) == 0)
  {
    a3 = v6;
    goto LABEL_4;
  }

  v45 = Interleave;
  v43 = *(*(v48 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v43);
  if (!DefiningOp || ((v8 = *(*(DefiningOp + 48) + 16), v9 = v8 == &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id, v8 != &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id) ? (v10 = 0) : (v10 = DefiningOp), v42 = v10, !v9))
  {
    Shape = "failed: Original buffer 2 tensor op not found";
    v52 = 259;
    Interleave = &Shape;
    v4 = v6[2];
    if (!v4)
    {
      return 0;
    }

LABEL_5:
    if (mlir::RewriterBase::Listener::classof(v4))
    {
      (*(*v4 + 88))(v4, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::AssignVariableOp &>(mlir::mps::AssignVariableOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &Interleave);
    }

    return 0;
  }

  Shape = *(*(DefiningOp + 72) + 24);
  v11 = mlir::Value::getDefiningOp(&Shape);
  if (!v11 || ((v12 = *(*(v11 + 48) + 16), v12 != &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id) ? (v13 = 0) : (v13 = v11), v12 != &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id))
  {
    Shape = "failed: Original tensor 2 buffer op not found";
    v52 = 259;
    Interleave = &Shape;
    v4 = v6[2];
    if (!v4)
    {
      return 0;
    }

    goto LABEL_5;
  }

  v41 = *(*(v11 + 72) + 24);
  v14 = *v41;
  if (*v41)
  {
    while (1)
    {
      v15 = v14[2];
      if (v15)
      {
        if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id)
        {
          break;
        }
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_30:
    v15 = mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>((v6 + 1), *(a2 + 24), &v41);
  }

  if (*(v13 + 36))
  {
    v16 = v13 - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8);
  v18 = *(a2 + 24);
  v39 = v46;
  Shape = mlir::mpsx::BufferToTensorOp::getShape(&v42);
  LOBYTE(v51) = v19;
  if (v19 & 1) != 0 && (ResultElementType = mlir::mpsx::BufferToTensorOp::getResultElementType(&v42), (v21) && (ElementTypeOrSelf = mlir::getElementTypeOrSelf(ResultElementType), v38 = mlir::TypeAttr::get(ElementTypeOrSelf), Interleave = mlir::mpsx::BufferToTensorOp::getInterleave(&v42), v37 = v23, (v23))
  {
    IsTensorBufferOp = mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&v42);
    IsChannelAndInterleaveSame = mlir::mpsx::BufferToTensorOp::getIsChannelAndInterleaveSame(&v42);
    v24 = mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::DenseIntElementsAttr,BOOL,BOOL>(v6 + 1, v18, &v39, &Shape, &v38, &Interleave, &IsTensorBufferOp, &IsChannelAndInterleaveSame);
    v40 = v24 - 16;
    *(v24 - 8) = *(v24 - 8) & 7 | v17 & 0xFFFFFFFFFFFFFFF8;
    Shape = (mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &>(v6 + 1, *(a2 + 24), &v40) - 16);
    Interleave = (v15 - 16);
    v25 = mlir::OpBuilder::create<mlir::mps::AssignVariableOp,mlir::OpResult,mlir::Value &>((v6 + 1), *(a2 + 24), &Interleave, &Shape);
    (*(*v6 + 1))(v6, a2, v25);
    return 1;
  }

  else
  {
    v26 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::DenseIntElementsAttr,BOOL,BOOL>(v26, v27, v28, v29, v30, v31, v32, v33);
  }
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::DenseIntElementsAttr,BOOL,BOOL>(mlir::BoolAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::detail::TypedValue<mlir::TensorType>>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::mpsx::TensorToBufferOp::build(a1, v25, *a3, *a4, *a5, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &>(mlir::UnknownLoc **a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::DenseIntElementsAttr,BOOL,BOOL>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mpsx::BufferToTensorOp::build(a1, v15, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::AssignVariableOp,mlir::OpResult,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::AssignVariableOp,mlir::OpResult,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::AssignVariableOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
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

void *mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv2DOp>::~CanonicalizeConvToMatMul(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv2DOp>::~CanonicalizeConvToMatMul(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeConvToMatMul<mlir::mps::Conv2DOp>::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v141[0] = 0;
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
            (*(*v88 + 88))(v88, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(mlir::mps::Conv2DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v133);
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
    (*(*v34 + 88))(v34, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(mlir::mps::Conv2DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__src);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::Flatten2DOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Flatten2DOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::Flatten2DOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::Flatten2DOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Flatten2DOp,void>::id)
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