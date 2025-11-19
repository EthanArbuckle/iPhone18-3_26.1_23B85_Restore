uint64_t mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
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

uint64_t mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5, int *a6)
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

uint64_t mlir::OpBuilder::create<mlir::anec::GOC,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::GOC::build(a1, v19, *a3, *a4 - 16, *a5 - 16);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::Concat,mlir::ValueRange,unsigned long long &,BOOL>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Concat,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Concat,mlir::ValueRange,unsigned long long &,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::Concat::build(a1, v19, *a3, *(a3 + 8), *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Concat,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Broadcast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Broadcast,void>::id)
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

void *llvm::SmallVector<long long,5u>::SmallVector<long long,void>(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x500000000;
  v5 = (8 * a3) >> 3;
  if (v5 >= 6)
  {
    v6 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v5, 8);
    a2 = v6;
    v7 = *(a1 + 2);
    v8 = 8 * a3;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v8 = 8 * a3;
  if (a3)
  {
LABEL_5:
    memcpy((*a1 + 8 * v7), a2, v8);
    v7 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v7 + (v8 >> 3);
  return a1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::CropResize,mlir::ValueRange,mlir::NamedAttrList &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::CropResize,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::CropResize,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::CropResize::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::CropResize,void>::id)
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

void mlir::anonymous namespace::ConvertDepthwiseConv3D::~ConvertDepthwiseConv3D(mlir::_anonymous_namespace_::ConvertDepthwiseConv3D *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DepthwiseConv3DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::ReinterpretCastOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::DepthwiseConv3DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::ReinterpretCastOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DepthwiseConv3DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 88);
  v35 = *(a3 + 80);
  v36 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v36 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v35, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v28 = v10;
        v29 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v28) || !mlir::CallOpInterface::getArgOperands(&v28))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v28);
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
        v28 = 0;
        v29 = 0;
      }

LABEL_3:
      i = v36 + 1;
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
    v31 = *(a3 + 32);
    v32 = v25;
    v26 = *(a3 + 80);
    v33 = *(a3 + 64);
    v34 = v26;
    v27 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v27;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v35 = 0;
      v36 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v35 = v18;
    v36 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v35) || !mlir::CallOpInterface::getArgOperands(&v35))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v35);
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

void mlir::anonymous namespace::ConvertDepthwiseConv3D::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v90 = *MEMORY[0x1E69E9840];
  v76 = a2;
  v89 = *(a3 + 80);
  v7 = *(a2 + 24);
  v8 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v75 = v8;
  v9 = mlir::ValueRange::dereference_iterator(&v89, 1);
  v74 = v9;
  if (*(a2 + 36))
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  v12 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v73[0] = v12;
  v73[1] = v13;
  v14 = (v9[1] & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v72[0] = v14;
  v72[1] = v15;
  if ((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  mlir::TypeConverter::TypeConverter(v88, *(a1 + 96));
  mlir::CallableOpInterface::getArgAttrsAttr(v73);
  if (v16 == 4 && (mlir::CallableOpInterface::getArgAttrsAttr(v72), v17 == 4))
  {
    ChannelAxis = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v76);
    v19 = (*(*(*(v76 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v19)
    {
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
    }

    else
    {
      v20 = 0;
    }

    __p = v19;
    *&v78 = v20;
    mlir::CallableOpInterface::getArgAttrsAttr(&__p);
    if (mlir::getPositiveAxis(ChannelAxis, v21) == 1)
    {
      if (*mlir::CallableOpInterface::getArgAttrsAttr(v72) == 1)
      {
        v22 = *(mlir::CallableOpInterface::getArgAttrsAttr(v72) + 8);
        v23 = *(mlir::CallableOpInterface::getArgAttrsAttr(v73) + 8);
        v70 = 0;
        v71 = 0;
        v85 = &v70;
        __p = v9;
        DefiningOp = mlir::Value::getDefiningOp(&__p);
        if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v85, DefiningOp) & 1) != 0)
        {
          __p = 3;
          IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
          v26 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
          __p = 6;
          v27 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
          v28 = mlir::RankedTensorType::get(&__p, 1, v27, 0);
          v85 = v87;
          v86 = 0x300000000;
          Strides = mlir::mps::ColToImOp::getStrides(&v76);
          if (Strides)
          {
            v30 = Strides;
            v31 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
            Strides = v30;
          }

          else
          {
            v31 = 0;
          }

          mlir::getIntValues<unsigned long long>(Strides, v31, &v85, 1);
          v32 = v85;
          if (*v85 == 1)
          {
            if (v26)
            {
              v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
              v32 = v85;
            }

            else
            {
              v33 = 0;
            }

            v69 = mlir::DenseElementsAttr::getFromRawBuffer(v26, v33, v32, 8 * v86, 8, 1, 0);
            v82 = v84;
            v83 = 0x300000000;
            InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v76);
            if (InputAttributeNames)
            {
              v35 = InputAttributeNames;
              v36 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
              InputAttributeNames = v35;
            }

            else
            {
              v36 = 0;
            }

            mlir::getIntValues<unsigned long long>(InputAttributeNames, v36, &v82, 1);
            if (v26)
            {
              v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
            }

            else
            {
              v37 = 0;
            }

            v68 = mlir::DenseElementsAttr::getFromRawBuffer(v26, v37, v82, 8 * v83, 8, 1, 0);
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v72);
            v39 = *(v82 + 1) * (*(ArgAttrsAttr + 16) - 1) + 1;
            v40 = mlir::CallableOpInterface::getArgAttrsAttr(v72);
            v41 = *(v82 + 2) * (*(v40 + 24) - 1) + 1;
            v66 = 0;
            v67 = 0;
            v64 = 0;
            v65 = 0;
            Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v76);
            v43 = Rewriter;
            if (Rewriter)
            {
              v44 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
            }

            else
            {
              v44 = 0;
            }

            PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v76);
            v46 = mlir::CallableOpInterface::getArgAttrsAttr(v73);
            {
              if (v28)
              {
                v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
              }

              else
              {
                v48 = 0;
              }

              ArgOperands = v28;
              v62 = v48;
              __p = 0;
              *&v78 = 0;
              *(&v78 + 1) = v67;
              v79 = v66;
              v80 = v65;
              v81 = v64;
              v60[0] = &__p;
              v60[1] = 6;
              v63 = mlir::DenseIntElementsAttr::get<unsigned long long>(&ArgOperands, v60);
              v60[0] = 0;
              if (v22 / v23 == 1)
              {
                LODWORD(v56) = 1;
                v59 = 1;
                __p = 0;
                ArgOperands = 0;
                v57 = 0;
                v58 = 0;
                v49 = mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(a4 + 1, v7, &v75, &v74, &v69, &v68, &v63, v60, &v56, &v59);
              }

              else
              {
                v58 = *(mlir::CallableOpInterface::getArgAttrsAttr(v73) + 8);
                ArgOperands = mlir::CallOpInterface::getArgOperands(&v70);
                v62 = v50;
                __p = *(mlir::CallableOpInterface::getArgAttrsAttr(v72) + 8);
                *&v78 = 1;
                *(&v78 + 1) = *(mlir::CallableOpInterface::getArgAttrsAttr(v72) + 16);
                v79 = *(mlir::CallableOpInterface::getArgAttrsAttr(v72) + 24);
                v51 = mlir::ShapedType::clone(&ArgOperands, &__p, 4);
                ArgOperands = mlir::TypeConverter::convertType(v88, v51);
                v52 = v70;
                v53 = v71;
                if (v51)
                {
                  v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
                }

                else
                {
                  v54 = 0;
                }

                __p = mlir::reshapeElementsAttr(v52, v53, v51, v54);
                *&v78 = v55;
                v74 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v7, &ArgOperands, &__p) - 16);
                v59 = 0;
                __p = 0;
                ArgOperands = 0;
                v56 = 0;
                v57 = 0;
                v49 = mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,long long &,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(a4 + 1, v7, &v75, &v74, &v69, &v68, &v63, v60, &v58, &v59);
              }

              mlir::ConversionPatternRewriter::replaceOp(a4, v76, v49);
            }

            else
            {
              std::string::basic_string[abi:nn200100]<0>(&__p, "Unsupported padding values for Conv2D");
              mlir::logMatchFailure(&__p, *(v76 + 3), a4);
              if (SHIBYTE(v78) < 0)
              {
                operator delete(__p);
              }
            }

            if (v82 != v84)
            {
              free(v82);
            }
          }

          else
          {
            std::string::basic_string[abi:nn200100]<0>(&__p, "Conv stride must be 1 for batch axis");
            mlir::logMatchFailure(&__p, *(v76 + 3), a4);
            if (SHIBYTE(v78) < 0)
            {
              operator delete(__p);
            }
          }

          if (v85 != v87)
          {
            free(v85);
          }

          goto LABEL_19;
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "CWConv3DOp must have constant weights");
      }

      else
      {
        __p = operator new(0x40uLL);
        v78 = xmmword_1E09826F0;
        strcpy(__p, "CWConv3DOp must use (1, C*ChannelMult, H, W) weights format");
      }
    }

    else
    {
      __p = operator new(0x28uLL);
      v78 = xmmword_1E09826C0;
      strcpy(__p, "CWConv3DOp must use NCHW data format");
    }
  }

  else
  {
    __p = operator new(0x20uLL);
    v78 = xmmword_1E097BD70;
    strcpy(__p, "CWConv3DOp must have 4D inputs");
  }

  mlir::logMatchFailure(&__p, *(v76 + 3), a4);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p);
  }

LABEL_19:
  mlir::TypeConverter::~TypeConverter(v88);
}

uint64_t mlir::anonymous namespace::getExplicitConv2DPadding(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, unint64_t *a11, unint64_t *a12, unint64_t *a13)
{
  v28[8] = *MEMORY[0x1E69E9840];
  result = 1;
  if (a3 > 1)
  {
    if (a3 == 2 || a3 == 4)
    {
      v15 = *(a4 + 16) % *(a6 + 8);
      if (!v15)
      {
        v15 = *(a6 + 8);
      }

      v16 = (a8 - v15) & ~((a8 - v15) >> 63);
      v17 = *(a4 + 24) % *(a6 + 16);
      if (!v17)
      {
        v17 = *(a6 + 16);
      }

      v18 = (a9 - v17) & ~((a9 - v17) >> 63);
      *a10 = v16 >> 1;
      *a11 = v16 - (v16 >> 1);
      *a12 = v18 >> 1;
      *a13 = v18 - (v18 >> 1);
      if (a3 == 4)
      {
        v19 = *a10;
        *a10 = *a11;
        *a11 = v19;
        v20 = *a12;
        *a12 = *a13;
        *a13 = v20;
      }
    }

    return result;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      *a10 = 0;
      *a11 = 0;
      *a12 = 0;
      *a13 = 0;
    }

    return result;
  }

  v26 = v28;
  v27 = 0x800000000;
  mlir::getIntValues<unsigned long long>(a1, a2, &v26, 1);
  v21 = v26;
  v22 = v26 + 8 * v27;
  if (v26 == v22 - 32)
  {
LABEL_17:
    *a10 = *(v22 - 4);
    *a11 = *(v22 - 3);
    *a12 = *(v22 - 2);
    *a13 = *(v22 - 1);
    result = 1;
    if (v21 == v28)
    {
      return result;
    }

    goto LABEL_18;
  }

  v23 = 8 * v27 - 32;
  v24 = v26;
  while (!*v24)
  {
    ++v24;
    v23 -= 8;
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  result = 0;
  if (v26 != v28)
  {
LABEL_18:
    v25 = result;
    free(v21);
    return v25;
  }

  return result;
}

uint64_t mlir::DenseIntElementsAttr::get<unsigned long long>(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  return mlir::DenseElementsAttr::getFromRawBuffer(*a1, a1[1], v3, 8 * v2, 8, 1, 0);
}

uint64_t mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::anec::Convolution::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, 0, 0, 0, 0);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
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

uint64_t mlir::ShapedType::clone(mlir::ElementsAttr *a1, uint64_t a2, uint64_t a3)
{
  *&v6 = a2;
  *(&v6 + 1) = a3;
  v7 = 1;
  isSplat = mlir::ElementsAttr::isSplat(a1);
  return mlir::ShapedType::cloneWith(a1, &v6, isSplat);
}

uint64_t mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,long long &,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::anec::Convolution::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, 0, 0, 0, 0);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
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

float mlir::copyElementsAttrData<unsigned long long>(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v89[5] = *MEMORY[0x1E69E9840];
  v86 = a1;
  v87 = a2;
  Type = mlir::ElementsAttr::getType(&v86);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v85[0] = v7;
  v85[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v85);
  v8 = mlir::ElementsAttr::isSplat(&v86);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v86);
  v11 = v10;
  if (!v8 || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v86, v87);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      if (NumElements >= 2)
      {
        v19 = 0;
        v18 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v20 = a3 + 1;
        do
        {
          if (v8)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          if (v8)
          {
            v22 = 0;
          }

          else
          {
            v22 = v19 + 1;
          }

          v23 = *&ElementsAttrRawData[2 * v22];
          *(v20 - 1) = *&ElementsAttrRawData[2 * v21];
          *v20 = v23;
          v20 += 2;
          v19 += 2;
        }

        while (v19 != v18);
        goto LABEL_187;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_46;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_53;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_69;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_85;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_105;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_116;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_123;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_139;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_154;
    }

LABEL_156:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v8)
      {
        v60 = 1;
      }

      else
      {
        v60 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v88, v60);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v11, v88[0], v88[1]);
      v61 = v88[0];
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (v8)
          {
            v63 = 0;
          }

          else
          {
            v63 = i;
          }

          a3[i] = v61[v63];
        }
      }

      if (v61 != v89)
      {
        free(v61);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned long long>(ElementsAttrRawData, v11, a3, NumElements, IntOrFloatBitWidth);
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_9:
    for (j = 0; j != NumElements; ++j)
    {
      if (v8)
      {
        v15 = 0;
      }

      else
      {
        v15 = j;
      }

      a3[j] = ElementsAttrRawData[v15];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_20:
    for (k = 0; k != NumElements; ++k)
    {
      if (v8)
      {
        v17 = 0;
      }

      else
      {
        v17 = k;
      }

      a3[k] = ElementsAttrRawData[v17];
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_29:
    v18 = 0;
    do
    {
      if (v8)
      {
        v75 = 0;
      }

      else
      {
        v75 = v18;
      }

      a3[v18++] = *&ElementsAttrRawData[2 * v75];
LABEL_187:
      ;
    }

    while (NumElements != v18);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_46:
    if (NumElements >= 2)
    {
      v26 = 0;
      v24 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v27 = a3 + 1;
      do
      {
        if (v8)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        if (v8)
        {
          v29 = 0;
        }

        else
        {
          v29 = v26 + 1;
        }

        v30 = *&ElementsAttrRawData[2 * v29];
        *(v27 - 1) = *&ElementsAttrRawData[2 * v28];
        *v27 = v30;
        v27 += 2;
        v26 += 2;
      }

      while (v26 != v24);
      goto LABEL_192;
    }

    v24 = 0;
    do
    {
      if (v8)
      {
        v76 = 0;
      }

      else
      {
        v76 = v24;
      }

      a3[v24++] = *&ElementsAttrRawData[2 * v76];
LABEL_192:
      ;
    }

    while (NumElements != v24);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_53:
    if (NumElements >= 2)
    {
      v32 = 0;
      v25 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v33 = a3 + 1;
      do
      {
        if (v8)
        {
          v34 = 0;
        }

        else
        {
          v34 = v32;
        }

        if (v8)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32 + 1;
        }

        v36 = *&ElementsAttrRawData[4 * v35];
        *(v33 - 1) = *&ElementsAttrRawData[4 * v34];
        *v33 = v36;
        v33 += 2;
        v32 += 2;
      }

      while (v32 != v25);
      goto LABEL_197;
    }

    v25 = 0;
    do
    {
      if (v8)
      {
        v77 = 0;
      }

      else
      {
        v77 = v25;
      }

      a3[v25++] = *&ElementsAttrRawData[4 * v77];
LABEL_197:
      ;
    }

    while (NumElements != v25);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_69:
    if (NumElements >= 2)
    {
      v39 = 0;
      v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v40 = a3 + 1;
      do
      {
        if (v8)
        {
          v41 = 0;
        }

        else
        {
          v41 = v39;
        }

        if (v8)
        {
          v42 = 0;
        }

        else
        {
          v42 = v39 + 1;
        }

        v43 = *&ElementsAttrRawData[4 * v42];
        *(v40 - 1) = *&ElementsAttrRawData[4 * v41];
        *v40 = v43;
        v40 += 2;
        v39 += 2;
      }

      while (v39 != v31);
      goto LABEL_202;
    }

    v31 = 0;
    do
    {
      if (v8)
      {
        v78 = 0;
      }

      else
      {
        v78 = v31;
      }

      a3[v31++] = *&ElementsAttrRawData[4 * v78];
LABEL_202:
      ;
    }

    while (NumElements != v31);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_85:
    for (m = 0; m != NumElements; ++m)
    {
      if (v8)
      {
        v38 = 0;
      }

      else
      {
        v38 = m;
      }

      a3[m] = *&ElementsAttrRawData[8 * v38];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_105:
    for (n = 0; n != NumElements; ++n)
    {
      if (v8)
      {
        v45 = 0;
      }

      else
      {
        v45 = n;
      }

      a3[n] = *&ElementsAttrRawData[8 * v45];
    }

    return *&v12;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_116:
    if (NumElements >= 2)
    {
      v48 = 0;
      v46 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v49 = a3 + 1;
      do
      {
        if (v8)
        {
          v50 = 0;
        }

        else
        {
          v50 = v48;
        }

        if (v8)
        {
          v51 = 0;
        }

        else
        {
          v51 = v48 + 1;
        }

        LOWORD(v12) = *&ElementsAttrRawData[2 * v50];
        v52 = *&ElementsAttrRawData[2 * v51];
        *(v49 - 1) = *&v12;
        *v49 = v52;
        v49 += 2;
        v48 += 2;
      }

      while (v48 != v46);
      goto LABEL_207;
    }

    v46 = 0;
    do
    {
      if (v8)
      {
        v79 = 0;
      }

      else
      {
        v79 = v46;
      }

      LOWORD(v12) = *&ElementsAttrRawData[2 * v79];
      a3[v46++] = *&v12;
LABEL_207:
      ;
    }

    while (NumElements != v46);
    return *&v12;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_123:
    if (NumElements >= 2)
    {
      v54 = 0;
      v47 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v55 = a3 + 1;
      do
      {
        if (v8)
        {
          v56 = 0;
        }

        else
        {
          v56 = v54;
        }

        if (v8)
        {
          v57 = 0;
        }

        else
        {
          v57 = v54 + 1;
        }

        LODWORD(v12) = *&ElementsAttrRawData[4 * v56];
        v58 = *&ElementsAttrRawData[4 * v57];
        *(v55 - 1) = *&v12;
        *v55 = v58;
        v55 += 2;
        v54 += 2;
      }

      while (v54 != v47);
      goto LABEL_212;
    }

    v47 = 0;
    do
    {
      if (v8)
      {
        v80 = 0;
      }

      else
      {
        v80 = v47;
      }

      LODWORD(v12) = *&ElementsAttrRawData[4 * v80];
      a3[v47++] = *&v12;
LABEL_212:
      ;
    }

    while (NumElements != v47);
    return *&v12;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_139:
    if (NumElements >= 2)
    {
      v64 = 0;
      v53 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v65 = a3 + 1;
      do
      {
        if (v8)
        {
          v66 = 0;
        }

        else
        {
          v66 = v64;
        }

        if (v8)
        {
          v67 = 0;
        }

        else
        {
          v67 = v64 + 1;
        }

        v12 = *&ElementsAttrRawData[8 * v66];
        v68 = *&ElementsAttrRawData[8 * v67];
        *(v65 - 1) = v12;
        *v65 = v68;
        v65 += 2;
        v64 += 2;
      }

      while (v64 != v53);
      goto LABEL_217;
    }

    v53 = 0;
    do
    {
      if (v8)
      {
        v81 = 0;
      }

      else
      {
        v81 = v53;
      }

      v12 = *&ElementsAttrRawData[8 * v81];
      a3[v53++] = v12;
LABEL_217:
      ;
    }

    while (NumElements != v53);
    return *&v12;
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_156;
  }

LABEL_154:
  if (NumElements >= 2)
  {
    v70 = 0;
    v59 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v71 = a3 + 1;
    do
    {
      if (v8)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      if (v8)
      {
        v73 = 0;
      }

      else
      {
        v73 = v70 + 1;
      }

      LODWORD(v12) = *&ElementsAttrRawData[2 * v72] << 16;
      v74 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v73] << 16);
      *(v71 - 1) = *&v12;
      *v71 = v74;
      v71 += 2;
      v70 += 2;
    }

    while (v70 != v59);
    goto LABEL_222;
  }

  v59 = 0;
  do
  {
    if (v8)
    {
      v82 = 0;
    }

    else
    {
      v82 = v59;
    }

    LODWORD(v12) = *&ElementsAttrRawData[2 * v82] << 16;
    a3[v59++] = *&v12;
LABEL_222:
    ;
  }

  while (NumElements != v59);
  return *&v12;
}

void mlir::anonymous namespace::ConvertState::~ConvertState(mlir::_anonymous_namespace_::ConvertState *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::VariableFromTensorOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::VariableFromTensorOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::VariableFromTensorOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertState::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  *v26 = *(a3 + 40);
  v7 = mlir::ValueRange::dereference_iterator(v26, 0);
  v25 = 0;
  if (mlir::matchValueTypeThrough<mlir::BlockArgument,mlir::UnrealizedConversionCastOp>(v7) & 1) != 0 || (v26[0] = v7, (DefiningOp = mlir::Value::getDefiningOp(v26)) != 0) && (mlir::matchThrough<mlir::anec::TensorBufferToTensor,mlir::UnrealizedConversionCastOp>(DefiningOp, &v25))
  {
    if (*(a2 + 36))
    {
      v8 = a2 - 16;
    }

    else
    {
      v8 = 0;
    }

    v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    }

    else
    {
      v10 = 0;
    }

    RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v9, v10);
    v24 = v15;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
    v18 = v17;
    isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
    v20 = mlir::MemRefType::get(ArgAttrsAttr, v18, isSplat, 0, 0, 0);
    v21 = v20;
    if (v20)
    {
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
    }

    RankPromotionTypeForANE = v21;
    v24 = v20;
    *v26 = *(a3 + 40);
    v26[0] = mlir::ValueRange::dereference_iterator(v26, 0);
    v22 = mlir::OpBuilder::create<mlir::anec::State,mlir::ShapedType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, v26);
    (*(*a4 + 8))(a4, a2, v22);
    return 1;
  }

  else
  {
    v12 = *(a2 + 24);
    v26[0] = "failed: state must come from function block arguments.";
    v27 = 259;
    RankPromotionTypeForANE = v26;
    v13 = a4[2];
    if (v13 && mlir::RewriterBase::Listener::classof(v13))
    {
      (*(*v13 + 88))(v13, v12, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &RankPromotionTypeForANE);
    }

    return 0;
  }
}

uint64_t mlir::OpBuilder::create<mlir::anec::State,mlir::ShapedType &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::State,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::State,mlir::ShapedType &,mlir::Value>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::State,void>::id)
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

void mlir::anonymous namespace::ConvertReadVariable::~ConvertReadVariable(mlir::_anonymous_namespace_::ConvertReadVariable *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReadVariableOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReadVariableOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReadVariableOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertReadVariable::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  *v19 = *(a3 + 40);
  v18 = mlir::ValueRange::dereference_iterator(v19, 0);
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v19[0] = mlir::getRankPromotionTypeForANE(v7, v8);
  v19[1] = v9;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v19);
  v12 = v11;
  isSplat = mlir::ElementsAttr::isSplat(v19);
  v14 = mlir::MemRefType::get(ArgAttrsAttr, v12, isSplat, 0, 0, 0);
  v15 = v14;
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  v19[0] = v15;
  v19[1] = v14;
  v16 = mlir::OpBuilder::create<mlir::anec::State,mlir::ShapedType &,mlir::Value>((a4 + 8), *(a2 + 24), v19, &v18);
  (*(*a4 + 8))(a4, a2, v16);
  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::AddOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::AddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::AddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::StringAttr **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v37;
  v35 = v37;
  v36 = 0x200000000;
  if (v6 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v6, 8);
    v9 = v36;
    v8 = v35;
    RankPromotionTypeForANE = v7;
    v39 = 0;
    goto LABEL_4;
  }

  v9 = 0;
  RankPromotionTypeForANE = v7;
  v39 = 0;
  if (v6)
  {
LABEL_4:
    v10 = &v8[8 * v9];
    for (i = 0; i != v6; v39 = i)
    {
      *v10++ = mlir::ValueRange::dereference_iterator(&RankPromotionTypeForANE, i);
      i = v39 + 1;
    }

    v12 = v36;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  LODWORD(v36) = v12 + v6;
  mlir::ValueRange::ValueRange(v34, v35, v36);
  v41 = *v34;
  v40 = 261;
  RankPromotionTypeForANE = "add";
  v39 = 3;
  StringAttr = mlir::Builder::getStringAttr(a4 + 1, &RankPromotionTypeForANE);
  F32FloatAttr = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v13);
  v31 = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v14);
  v30 = mlir::Builder::getF32FloatAttr(a4 + 1, 0.0, v15);
  BoolAttr = mlir::Builder::getBoolAttr(a4 + 1, 0);
  v28 = mlir::Builder::getBoolAttr(a4 + 1, 0);
  if (*(a2 + 36))
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v17, v18);
  v39 = v19;
  isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
  if (mlir::Type::isSignlessInteger(&isSplat, 1))
  {
    isSplat = mlir::Builder::getIntegerType(a4 + 1, 8, 1);
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v26 = mlir::MemRefType::get(ArgAttrsAttr, v21, isSplat, 0, 0, 0);
  v25 = mlir::ValueRange::dereference_iterator(&v41, 0);
  v24 = mlir::ValueRange::dereference_iterator(&v41, 1);
  v22 = mlir::OpBuilder::create<mlir::anec::ScaledElementWise,mlir::MemRefType &,mlir::Value,mlir::Value,mlir::StringAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::BoolAttr &,mlir::BoolAttr &>((a4 + 1), *(a2 + 24), &v26, &v25, &v24, &StringAttr, &F32FloatAttr, &v31, &v30, &BoolAttr, &v28);
  (*(*a4 + 1))(a4, a2, v22);
  if (v35 != v37)
  {
    free(v35);
  }

  return 1;
}

void mlir::anonymous namespace::anonymous namespace::assembleBroadcastOperands(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v9 = **a3;
  v10 = *(*a3 + 8);
  {
    {
      return;
    }

    v11 = v15;
    *(a3 + 8) = 0;
    if (*(a3 + 12) <= 1u)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  BroadcastOperands = v12;
  *(a3 + 8) = 0;
  if (*(a3 + 12) >= 2u)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, 2uLL, 8);
  v14 = *(a3 + 8);
LABEL_7:
  v16 = (*a3 + 8 * v14);
  *v16 = v11;
  v16[1] = BroadcastOperands;
  *(a3 + 8) += 2;
}

BOOL mlir::anonymous namespace::anonymous namespace::isBroadcastWithFullRank(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v15[0] = v3;
  v15[1] = v4;
  v5 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v14[0] = v5;
  v14[1] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(v15);
  v8 = v7;
  mlir::CallableOpInterface::getArgAttrsAttr(v14);
  if (v8 >= v9)
  {
    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v15);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v11) < 2)
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v14);
  return v12 > 3;
}

uint64_t mlir::anonymous namespace::anonymous namespace::getBroadcastOperands(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v30 = a4;
  v31 = a5;
  v10 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v29[0] = v10;
  v29[1] = v11;
  v12 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v28[0] = v12;
  v28[1] = v13;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v28);
  v16 = v14;
  v32 = v34;
  v33 = 0x400000000;
  v17 = (8 * v14) >> 3;
  if (v17 < 5)
  {
    v18 = 0;
    v19 = 8 * v14;
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v17, 8);
  v18 = v33;
  v19 = 8 * v16;
  if (v16)
  {
LABEL_11:
    memcpy(v32 + 8 * v18, ArgAttrsAttr, v19);
    v18 = v33;
  }

LABEL_12:
  LODWORD(v33) = v18 + (v19 >> 3);
  mlir::CallableOpInterface::getArgAttrsAttr(v29);
  v20 = v33;
  if (v21 != v33)
  {
    v22 = v32;
    mlir::CallableOpInterface::getArgAttrsAttr(v29);
    llvm::SmallVectorImpl<unsigned long long>::insert(&v32, v22, v23 - v33, 1uLL);
    v20 = v33;
  }

  v24 = v32;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a5);
  v28[0] = mlir::MemRefType::get(v24, v20, ElementTypeOrSelf, 0, 0, 0);
  mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 8), a1, v28, &v31);
  v26 = v30;
  if (v32 != v34)
  {
    free(v32);
  }

  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ScaledElementWise,mlir::MemRefType &,mlir::Value,mlir::Value,mlir::StringAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::BoolAttr &,mlir::BoolAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ScaledElementWise,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ScaledElementWise,mlir::MemRefType &,mlir::Value,mlir::Value,mlir::StringAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::BoolAttr &,mlir::BoolAttr &>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v20);
  mlir::anec::ScaledElementWise::build(a1, v28, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ScaledElementWise,void>::id)
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

uint64_t mlir::anonymous namespace::anonymous namespace::isCompatibleWithGOC(uint64_t a1, void *a2)
{
  v26[4] = *MEMORY[0x1E69E9840];
  __s2 = a2;
  result = mlir::Value::getDefiningOp(&__s2);
  if (result)
  {
    {
      v22 = result;
      result = v22;
    }

    result = (*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
    if (result)
    {
      v5 = (a2[1] & 0xFFFFFFFFFFFFFFF8);
      v6 = v5 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8) : 0;
      v23[0] = v5;
      v23[1] = v6;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v23);
      result = mlir::ShapedType::getNumElements(ArgAttrsAttr, v8);
      if (result != 1)
      {
        v9 = mlir::CallableOpInterface::getArgAttrsAttr(v23);
        if (v10 >= 3 && (v11 = v9, v12 = v10, v13 = mlir::CallableOpInterface::getArgAttrsAttr(v23), mlir::ShapedType::getNumElements(v13, v14) == *(v11 + (((v12 << 32) - 0x300000000) >> 29))))
        {
          v15 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v15)
          {
            v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
          }

          else
          {
            v16 = 0;
          }

          __s2 = v15;
          v25 = v16;
          v17 = mlir::CallableOpInterface::getArgAttrsAttr(&__s2);
          v19 = v18;
          __s2 = v26;
          v25 = 0x400000000;
          if (mlir::OpTrait::util::getBroadcastedShape(v17, v18, v11, v12, &__s2))
          {
            v20 = __s2;
            result = v19 == v25 && memcmp(v17, __s2, 8 * v25) == 0;
          }

          else
          {
            result = 0;
            v20 = __s2;
          }

          if (v20 != v26)
          {
            v21 = result;
            free(v20);
            return v21;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
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

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::MultiplyOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::MultiplyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::MultiplyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::StringAttr **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v37;
  v35 = v37;
  v36 = 0x200000000;
  if (v6 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v6, 8);
    v9 = v36;
    v8 = v35;
    RankPromotionTypeForANE = v7;
    v39 = 0;
    goto LABEL_4;
  }

  v9 = 0;
  RankPromotionTypeForANE = v7;
  v39 = 0;
  if (v6)
  {
LABEL_4:
    v10 = &v8[8 * v9];
    for (i = 0; i != v6; v39 = i)
    {
      *v10++ = mlir::ValueRange::dereference_iterator(&RankPromotionTypeForANE, i);
      i = v39 + 1;
    }

    v12 = v36;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  LODWORD(v36) = v12 + v6;
  mlir::ValueRange::ValueRange(v34, v35, v36);
  v41 = *v34;
  v40 = 261;
  RankPromotionTypeForANE = "mul";
  v39 = 3;
  StringAttr = mlir::Builder::getStringAttr(a4 + 1, &RankPromotionTypeForANE);
  F32FloatAttr = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v13);
  v31 = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v14);
  v30 = mlir::Builder::getF32FloatAttr(a4 + 1, 0.0, v15);
  BoolAttr = mlir::Builder::getBoolAttr(a4 + 1, 0);
  v28 = mlir::Builder::getBoolAttr(a4 + 1, 0);
  if (*(a2 + 36))
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v17, v18);
  v39 = v19;
  isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
  if (mlir::Type::isSignlessInteger(&isSplat, 1))
  {
    isSplat = mlir::Builder::getIntegerType(a4 + 1, 8, 1);
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v26 = mlir::MemRefType::get(ArgAttrsAttr, v21, isSplat, 0, 0, 0);
  v25 = mlir::ValueRange::dereference_iterator(&v41, 0);
  v24 = mlir::ValueRange::dereference_iterator(&v41, 1);
  v22 = mlir::OpBuilder::create<mlir::anec::ScaledElementWise,mlir::MemRefType &,mlir::Value,mlir::Value,mlir::StringAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::BoolAttr &,mlir::BoolAttr &>((a4 + 1), *(a2 + 24), &v26, &v25, &v24, &StringAttr, &F32FloatAttr, &v31, &v30, &BoolAttr, &v28);
  (*(*a4 + 1))(a4, a2, v22);
  if (v35 != v37)
  {
    free(v35);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
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

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SubtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SubtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SubtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v35;
  v33 = v35;
  v34 = 0x200000000;
  if (v6 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v6, 8);
    v9 = v34;
    v8 = v33;
    *v38 = v7;
    goto LABEL_4;
  }

  v9 = 0;
  *v38 = v7;
  if (v6)
  {
LABEL_4:
    v10 = &v8[8 * v9];
    for (i = 0; i != v6; v38[1] = i)
    {
      *v10++ = mlir::ValueRange::dereference_iterator(v38, i);
      i = v38[1] + 1;
    }

    v12 = v34;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  LODWORD(v34) = v12 + v6;
  mlir::ValueRange::ValueRange(v38, v33, v34);
  mlir::ValueRange::ValueRange(&v32, v33, v34);
  *v38 = v32;
  v13 = mlir::ValueRange::dereference_iterator(v38, 0);
  v14 = mlir::ValueRange::dereference_iterator(v38, 1);
  if (*(a2 + 36))
  {
    v15 = a2 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(NextResultAtOffset);
  {
    v17 = a4;
    v18 = a2;
    v19 = v13;
    v20 = 0;
    v21 = v14;
  }

  else
  {
    {
      goto LABEL_17;
    }

    v37 = 1;
    F16Type = mlir::Builder::getF16Type(a4 + 1, v22);
    v24 = mlir::RankedTensorType::get(&v37, 1, F16Type, 0);
    v30[0] = mlir::createSplatF16ElementsAttr(v24, -1.0);
    v30[1] = v25;
    v26 = *(a2 + 24);
    v36 = 1;
    v27 = mlir::Builder::getF16Type(a4 + 1, v25);
    v37 = mlir::MemRefType::get(&v36, 1, v27, 0, 0, 0);
    v20 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v26, &v37, v30) - 16);
    v17 = a4;
    v18 = a2;
    v19 = v14;
    v21 = v13;
  }

  {
LABEL_17:
    v28 = mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v33);
    (*(*a4 + 1))(a4, a2, v28);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id)
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

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::MaximumOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::MaximumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::MaximumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMax,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseMax,llvm::SmallVector<mlir::Value,2u> &>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMax,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMax,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMax,void>::id)
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

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::MinimumOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::MinimumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::MinimumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMin,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseMin,llvm::SmallVector<mlir::Value,2u> &>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMin,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMin,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMin,void>::id)
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

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PowerOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PowerOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PowerOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwisePower,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwisePower,llvm::SmallVector<mlir::Value,2u> &>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwisePower,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwisePower,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwisePower,void>::id)
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

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v24;
  v22 = v24;
  v23 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v25 = v7;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v6, 8);
    v9 = v23;
    v8 = v22;
    v25 = v7;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; *(&v25 + 1) = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v25, i);
    i = *(&v25 + 1) + 1;
  }

  v12 = v23;
LABEL_7:
  LODWORD(v23) = v12 + v6;
  mlir::ValueRange::ValueRange(&v21, v22, v23);
  v25 = v21;
  v13 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v25, 1);
  {
    v15 = a4;
    v16 = a2;
    v17 = v13;
    v18 = v14;
    goto LABEL_11;
  }

  {
    v15 = a4;
    v16 = a2;
    v17 = v14;
    v18 = v13;
LABEL_11:
    {
      goto LABEL_13;
    }
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v22);
  (*(*a4 + 8))(a4, a2, v19);
LABEL_13:
  if (v22 != v24)
  {
    free(v22);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v24;
  v22 = v24;
  v23 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v25 = v7;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v6, 8);
    v9 = v23;
    v8 = v22;
    v25 = v7;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; *(&v25 + 1) = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v25, i);
    i = *(&v25 + 1) + 1;
  }

  v12 = v23;
LABEL_7:
  LODWORD(v23) = v12 + v6;
  mlir::ValueRange::ValueRange(&v21, v22, v23);
  v25 = v21;
  v13 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v25, 1);
  {
    v15 = a4;
    v16 = a2;
    v17 = v13;
    v18 = v14;
    goto LABEL_11;
  }

  {
    v15 = a4;
    v16 = a2;
    v17 = v14;
    v18 = v13;
LABEL_11:
    {
      goto LABEL_13;
    }
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v22);
  (*(*a4 + 8))(a4, a2, v19);
LABEL_13:
  if (v22 != v24)
  {
    free(v22);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v35;
  v33 = v35;
  v34 = 0x200000000;
  if (v6 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v6, 8);
    v9 = v34;
    v8 = v33;
    v38 = v7;
    goto LABEL_4;
  }

  v9 = 0;
  v38 = v7;
  if (v6)
  {
LABEL_4:
    v10 = &v8[8 * v9];
    for (i = 0; i != v6; *(&v38 + 1) = i)
    {
      *v10++ = mlir::ValueRange::dereference_iterator(&v38, i);
      i = *(&v38 + 1) + 1;
    }

    v12 = v34;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  LODWORD(v34) = v12 + v6;
  mlir::ValueRange::ValueRange(&v32, v33, v34);
  v38 = v32;
  v13 = mlir::ValueRange::dereference_iterator(&v38, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v38, 1);
  if (*(a2 + 36))
  {
    v15 = a2 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(NextResultAtOffset);
  {
    v17 = a4;
    v18 = a2;
    v19 = v13;
    v20 = 0;
    v21 = v14;
  }

  else
  {
    {
      goto LABEL_17;
    }

    v37 = 1;
    F16Type = mlir::Builder::getF16Type(a4 + 1, v22);
    v24 = mlir::RankedTensorType::get(&v37, 1, F16Type, 0);
    v30[0] = mlir::createSplatF16ElementsAttr(v24, -1.0);
    v30[1] = v25;
    v26 = *(a2 + 24);
    v36 = 1;
    v27 = mlir::Builder::getF16Type(a4 + 1, v25);
    v37 = mlir::MemRefType::get(&v36, 1, v27, 0, 0, 0);
    v20 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v26, &v37, v30) - 16);
    v17 = a4;
    v18 = a2;
    v19 = v14;
    v21 = v13;
  }

  {
LABEL_17:
    v28 = mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v33);
    (*(*a4 + 1))(a4, a2, v28);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMax,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMin,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwisePower,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v24;
  v22 = v24;
  v23 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v25 = v7;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v6, 8);
    v9 = v23;
    v8 = v22;
    v25 = v7;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; *(&v25 + 1) = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v25, i);
    i = *(&v25 + 1) + 1;
  }

  v12 = v23;
LABEL_7:
  LODWORD(v23) = v12 + v6;
  mlir::ValueRange::ValueRange(&v21, v22, v23);
  v25 = v21;
  v13 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v25, 1);
  {
    v15 = a4;
    v16 = a2;
    v17 = v13;
    v18 = v14;
    goto LABEL_11;
  }

  {
    v15 = a4;
    v16 = a2;
    v17 = v14;
    v18 = v13;
LABEL_11:
    {
      goto LABEL_13;
    }
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v22);
  (*(*a4 + 8))(a4, a2, v19);
LABEL_13:
  if (v22 != v24)
  {
    free(v22);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v24;
  v22 = v24;
  v23 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v25 = v7;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v6, 8);
    v9 = v23;
    v8 = v22;
    v25 = v7;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; *(&v25 + 1) = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v25, i);
    i = *(&v25 + 1) + 1;
  }

  v12 = v23;
LABEL_7:
  LODWORD(v23) = v12 + v6;
  mlir::ValueRange::ValueRange(&v21, v22, v23);
  v25 = v21;
  v13 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v25, 1);
  {
    v15 = a4;
    v16 = a2;
    v17 = v13;
    v18 = v14;
    goto LABEL_11;
  }

  {
    v15 = a4;
    v16 = a2;
    v17 = v14;
    v18 = v13;
LABEL_11:
    {
      goto LABEL_13;
    }
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v22);
  (*(*a4 + 8))(a4, a2, v19);
LABEL_13:
  if (v22 != v24)
  {
    free(v22);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v35;
  v33 = v35;
  v34 = 0x200000000;
  if (v6 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v6, 8);
    v9 = v34;
    v8 = v33;
    v38 = v7;
    goto LABEL_4;
  }

  v9 = 0;
  v38 = v7;
  if (v6)
  {
LABEL_4:
    v10 = &v8[8 * v9];
    for (i = 0; i != v6; *(&v38 + 1) = i)
    {
      *v10++ = mlir::ValueRange::dereference_iterator(&v38, i);
      i = *(&v38 + 1) + 1;
    }

    v12 = v34;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  LODWORD(v34) = v12 + v6;
  mlir::ValueRange::ValueRange(&v32, v33, v34);
  v38 = v32;
  v13 = mlir::ValueRange::dereference_iterator(&v38, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v38, 1);
  if (*(a2 + 36))
  {
    v15 = a2 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(NextResultAtOffset);
  {
    v17 = a4;
    v18 = a2;
    v19 = v13;
    v20 = 0;
    v21 = v14;
  }

  else
  {
    {
      goto LABEL_17;
    }

    v37 = 1;
    F16Type = mlir::Builder::getF16Type(a4 + 1, v22);
    v24 = mlir::RankedTensorType::get(&v37, 1, F16Type, 0);
    v30[0] = mlir::createSplatF16ElementsAttr(v24, -1.0);
    v30[1] = v25;
    v26 = *(a2 + 24);
    v36 = 1;
    v27 = mlir::Builder::getF16Type(a4 + 1, v25);
    v37 = mlir::MemRefType::get(&v36, 1, v27, 0, 0, 0);
    v20 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v26, &v37, v30) - 16);
    v17 = a4;
    v18 = a2;
    v19 = v14;
    v21 = v13;
  }

  {
LABEL_17:
    v28 = mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v33);
    (*(*a4 + 1))(a4, a2, v28);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMax,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMin,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwisePower,llvm::SmallVector<mlir::Value,2u> &>(a4 + 1, *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::AbsoluteOp,mlir::anec::ElementwiseAbs>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0DB00;
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

void *sub_1DFF1B10C()
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

uint64_t mlir::OpConversionPattern<mlir::mps::AbsoluteOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::AbsoluteOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::AbsoluteOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::AbsoluteOp,mlir::anec::ElementwiseAbs>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v51 = mlir::OpBuilder::create<mlir::anec::ElementwiseAbs,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
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

uint64_t llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*a3 - *a2) >> 5;
  if (!v6)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    goto LABEL_12;
  }

  v7 = (4 * v6 / 3u + 1) | ((4 * v6 / 3u + 1) >> 1);
  v8 = v7 | (v7 >> 2) | ((v7 | (v7 >> 2)) >> 4);
  LODWORD(v8) = (((v8 | (v8 >> 8)) >> 16) | v8 | (v8 >> 8)) + 1;
  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = buffer;
  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = (v10 - 1) & 0x7FFFFFFFFFFFFFFLL;
  if (!v11)
  {
    v14 = buffer;
LABEL_10:
    v17 = &buffer[8 * v10];
    do
    {
      *v14 = -1;
      v14 += 8;
    }

    while (v14 != v17);
    goto LABEL_12;
  }

  v12 = v11 + 1;
  v13 = (v11 + 1) & 0xFFFFFFFFFFFFFFELL;
  v14 = &buffer[8 * v13];
  v15 = buffer + 8;
  v16 = v13;
  do
  {
    *(v15 - 8) = -1;
    *v15 = -1;
    v15 += 16;
    v16 -= 2;
  }

  while (v16);
  if (v12 != v13)
  {
    goto LABEL_10;
  }

LABEL_12:
  v18 = *a2;
  v19 = *a3;
  if (v18 != v19)
  {
    while (1)
    {
      v24 = *(a1 + 16);
      if (!v24)
      {
        break;
      }

      v20 = v24 - 1;
      v21 = (37 * *v18) & v20;
      v22 = (*a1 + 32 * v21);
      v23 = *v22;
      if (*v18 != *v22)
      {
        v26 = 0;
        v27 = 1;
        while (v23 != -1)
        {
          if (v26)
          {
            v28 = 0;
          }

          else
          {
            v28 = v23 == -2;
          }

          if (v28)
          {
            v26 = v22;
          }

          v29 = v21 + v27++;
          v21 = v29 & v20;
          v22 = (*a1 + 32 * v21);
          v23 = *v22;
          if (*v18 == *v22)
          {
            goto LABEL_15;
          }
        }

        if (v26)
        {
          v25 = v26;
        }

        else
        {
          v25 = v22;
        }

        goto LABEL_18;
      }

LABEL_15:
      v18 += 32;
      if (v18 == v19)
      {
        return a1;
      }
    }

    v25 = 0;
LABEL_18:
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::InsertIntoBucket<unsigned int const&,std::string const&>(a1, v25, v18, (v18 + 8));
    goto LABEL_15;
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 32 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 32 * v6);
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::InsertIntoBucket<unsigned int const&,std::string const&>(uint64_t *a1, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  v4 = a2;
  v13 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v10 = a3;
    v11 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      goto LABEL_3;
    }

    v10 = a3;
    v11 = a4;
  }

  v12 = a1;
  llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::LookupBucketFor<unsigned int>(v12, v10, &v13);
  a1 = v12;
  a3 = v10;
  v5 = *(v12 + 2);
  v4 = v13;
  a4 = v11;
LABEL_3:
  *(a1 + 2) = v5 + 1;
  if (*v4 != -1)
  {
    --*(a1 + 3);
  }

  *v4 = *a3;
  v7 = (v4 + 8);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(v4 + 24) = *(a4 + 2);
    *&v7->__r_.__value_.__l.__data_ = v8;
  }

  return v4;
}

_DWORD *llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[8 * v14];
      v16 = result + 8;
      v17 = v14;
      do
      {
        *(v16 - 8) = -1;
        *v16 = -1;
        v16 += 16;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[8 * v11];
    do
    {
      *v15 = -1;
      v15 += 8;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::moveFromOldBuckets(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0xFFFFFFFFFFFFFFELL;
      v11 = &v7[8 * v10];
      v12 = v7 + 8;
      v13 = v10;
      do
      {
        *(v12 - 8) = -1;
        *v12 = -1;
        v12 += 16;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[8 * v6];
    do
    {
      *v11 = -1;
      v11 += 8;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if (*v4 <= 0xFFFFFFFD)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & (37 * v15);
        v18 = *a1 + 32 * v17;
        v19 = *v18;
        if (v15 != *v18)
        {
          v21 = 0;
          v22 = 1;
          while (v19 != -1)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v19 == -2;
            }

            if (v23)
            {
              v21 = v18;
            }

            v24 = v17 + v22++;
            v17 = v24 & v16;
            v18 = *a1 + 32 * v17;
            v19 = *v18;
            if (v15 == *v18)
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
        *v18 = v15;
        v20 = *(v4 + 2);
        *(v18 + 24) = *(v4 + 3);
        *(v18 + 8) = v20;
        *(v4 + 2) = 0;
        *(v4 + 3) = 0;
        *(v4 + 1) = 0;
        ++*(a1 + 8);
        if (*(v4 + 31) < 0)
        {
          operator delete(*(v4 + 1));
        }
      }

      v4 += 8;
    }

    while (v4 != a3);
  }
}

void llvm::SmallVectorImpl<std::pair<llvm::APFloat,std::string>>::append<std::pair<llvm::APFloat,std::string> const*,void>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 3);
  v7 = a1[2];
  if (v6 + v7 > a1[3])
  {
    v20 = 0;
    v8 = a1 + 4;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, v6 + v7, 56, &v20);
    v10 = v9;
    llvm::SmallVectorTemplateBase<std::pair<llvm::APFloat,std::string>,false>::moveElementsForGrow(v5, v9);
    v11 = v20;
    a1 = *v5;
    if (*v5 != v8)
    {
      free(a1);
    }

    *v5 = v10;
    v5[3] = v11;
    LODWORD(v7) = v5[2];
  }

  if (a2 != a3)
  {
    v12 = *v5 + 56 * v7;
    v13 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v14 = 0;
    do
    {
      v15 = (a2 + v14 + 8);
      v16 = (v12 + v14 + 8);
      if (v13 == *v15)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, v15);
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(v16, v15);
      }

      v17 = v12 + v14;
      v18 = a2 + v14;
      if (*(a2 + v14 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v17 + 32), *(v18 + 32), *(v18 + 40));
      }

      else
      {
        v19 = *(v18 + 32);
        *(v17 + 48) = *(v18 + 48);
        *(v17 + 32) = v19;
      }

      v14 += 56;
    }

    while (a2 + v14 != a3);
    LODWORD(v7) = v5[2];
  }

  v5[2] = v7 + v6;
}

void llvm::SmallVectorTemplateBase<std::pair<llvm::APFloat,std::string>,false>::moveElementsForGrow(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v5 = *a1;
    v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v7 = a2 + 32;
    v8 = 56 * v2;
    v9 = (v5 + 32);
    do
    {
      v11 = (v7 - 24);
      v12 = (v9 - 24);
      if (v6 == *(v9 - 3))
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v12);
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(v11, v12);
      }

      v10 = *v9;
      *(v7 + 16) = *(v9 + 2);
      *v7 = v10;
      v7 += 56;
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = 0;
      v9 = (v9 + 56);
      v8 -= 56;
    }

    while (v8);
    v13 = a1[2];
    if (v13)
    {
      v14 = -56 * v13;
      v15 = *a1 + 56 * v13 - 48;
      do
      {
        if (*(v15 + 47) < 0)
        {
          operator delete(*(v15 + 24));
        }

        if (v6 == *v15)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v15);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v15);
        }

        v15 -= 56;
        v14 += 56;
      }

      while (v14);
    }
  }
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseAbs,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAbs,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseAbs,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAbs,void>::id)
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

void mlir::anonymous namespace::ConvertExponent::~ConvertExponent(mlir::_anonymous_namespace_::ConvertExponent *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ExponentOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ExponentOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ExponentOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertExponent::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::Float16Type **a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v27 = *(a3 + 40);
  v26 = mlir::ValueRange::dereference_iterator(&v27, 0);
  v6 = (*(v26 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v25[0] = v6;
  v25[1] = v7;
  v8 = *(a2 + 3);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v11 = v10;
  F16Type = mlir::Builder::getF16Type(a4 + 1, v10);
  v24 = mlir::MemRefType::get(ArgAttrsAttr, v11, F16Type, 0, 0, 0);
  v13 = mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v15 = v14;
  v16 = mlir::Builder::getF16Type(a4 + 1, v14);
  v17 = mlir::RankedTensorType::get(v13, v15, v16, 0);
  v23[0] = mlir::createSplatF16ElementsAttr(v17, 1.4427);
  v23[1] = v18;
  v22 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v8, &v24, v23);
  v21 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>(a4 + 1, v8, &v26, &v22);
  v19 = mlir::OpBuilder::create<mlir::anec::Exp2,mlir::anec::ElementwiseMult &>(a4 + 1, v8, &v21);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v19);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::Exp2,mlir::anec::ElementwiseMult &>(uint64_t *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Exp2,mlir::anec::ElementwiseMult &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseEqualZero::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id)
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

void mlir::anonymous namespace::ConvertLogarithm::~ConvertLogarithm(mlir::_anonymous_namespace_::ConvertLogarithm *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LogarithmOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LogarithmOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::LogarithmOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertLogarithm::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v29 = *(a3 + 40);
  v7 = (*(mlir::ValueRange::dereference_iterator(&v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v28[0] = v7;
  v28[1] = v8;
  v9 = *(a2 + 24);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v28);
  v12 = v11;
  F16Type = mlir::Builder::getF16Type(a4 + 1, v11);
  v27 = mlir::MemRefType::get(ArgAttrsAttr, v12, F16Type, 0, 0, 0);
  v14 = mlir::CallableOpInterface::getArgAttrsAttr(v28);
  v16 = v15;
  v17 = mlir::Builder::getF16Type(a4 + 1, v15);
  v18 = mlir::RankedTensorType::get(v14, v16, v17, 0);
  v26[0] = mlir::createSplatF16ElementsAttr(v18, 0.69315);
  v26[1] = v19;
  v25 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v9, &v27, v26);
  v30[0] = *(a3 + 40);
  v30[1] = 0;
  v24 = mlir::ValueRange::dereference_iterator(v30, 0);
  F16FloatAttr = mlir::Builder::getF16FloatAttr(a4 + 1, 0.0, v20);
  v30[0] = mlir::OpBuilder::create<mlir::anec::Log2,mlir::Value,mlir::FloatAttr>(a4 + 1, v9, &v24, &F16FloatAttr);
  v21 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::anec::Log2 &,mlir::mps::ConstantOp &>(a4 + 1, *(a2 + 24), v30, &v25);
  (*(*a4 + 1))(a4, a2, v21);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Log2,mlir::Value,mlir::FloatAttr>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Log2,mlir::Value,mlir::FloatAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Invert::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::anec::Log2 &,mlir::mps::ConstantOp &>(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3 - 16, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
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

void mlir::anonymous namespace::ConvertSelect::~ConvertSelect(mlir::_anonymous_namespace_::ConvertSelect *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SelectOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SelectOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SelectOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertSelect::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 24);
  v19 = *(a3 + 40);
  v20 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v8 = mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqualZero,mlir::Value>(a4 + 1, v7, &v19);
  v9 = *(a2 + 24);
  v10 = *(a3 + 40);
  v18 = v8 - 16;
  v19 = v10;
  v20 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v17 = mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::Value>(a4 + 1, v9, &v19) - 16;
  v11 = *(a2 + 24);
  v19 = *(a3 + 40);
  v20 = 1;
  v19 = mlir::ValueRange::offset_base(&v19, 1);
  v20 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v16 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>(a4 + 1, v11, &v19, &v18);
  v12 = *(a2 + 24);
  v19 = *(a3 + 40);
  v20 = 2;
  v19 = mlir::ValueRange::offset_base(&v19, 2);
  v20 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>(a4 + 1, v12, &v15, &v17);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::anec::ElementwiseMult &,mlir::anec::ElementwiseMult &>(a4 + 1, *(a2 + 24), &v16, &v19);
  ((*a4)[1])(a4, a2, v13);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqualZero,mlir::Value>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqualZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqualZero,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseGreaterThanEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqualZero,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::Value>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqualZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqualZero,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::anec::ElementwiseMult &,mlir::anec::ElementwiseMult &>(uint64_t *a1, uint64_t a2, void *a3, void *a4)
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
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3 - 16, *a4 - 16);
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

void mlir::anonymous namespace::ConvertFlatten2D::~ConvertFlatten2D(mlir::_anonymous_namespace_::ConvertFlatten2D *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Flatten2DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Flatten2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Flatten2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertFlatten2D::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v56 = *(a3 + 40);
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

  v51 = v7;
  v52 = v8;
  v9 = *(v6 + 56);
  mlir::CallableOpInterface::getArgAttrsAttr(&v51);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  if ((v12 & 1) == 0)
  {
    LOBYTE(v53[0]) = 0;
    v55 = 0;
LABEL_35:
    __p = operator new(0x38uLL);
    *v61 = xmmword_1E0982710;
    strcpy(__p, "failed: Flatten2DOp axis argument was not a constant.");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((v61[15] & 0x80000000) != 0)
    {
      v41 = result;
      operator delete(__p);
      result = v41;
    }

    goto LABEL_45;
  }

  RankPromotionTypeForANE = v64;
  v63 = 0x100000000;
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

  v15 = 1;
  mlir::getIntValues<long long>(SortedUniquePromotedPositiveAxesAttr, v14, &RankPromotionTypeForANE, 1);
  mlir::getRankPromotionShapeForANE(v51, v52, 0, &__p);
  v57 = v59;
  HIDWORD(v58) = 2;
  v16 = *RankPromotionTypeForANE;
  if (*RankPromotionTypeForANE)
  {
    v17 = (v16 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v17)
    {
      v18 = v17 + 1;
      v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v20 = __p + 8 * v19;
      v21 = __p + 8;
      v22 = 1;
      v23 = v19;
      v24 = 1;
      do
      {
        v22 *= *(v21 - 1);
        v24 *= *v21;
        v21 += 2;
        v23 -= 2;
      }

      while (v23);
      v15 = v24 * v22;
      if (v18 == v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v15 = 1;
      v20 = __p;
    }

    v25 = __p + 8 * v16;
    do
    {
      v26 = *v20;
      v20 += 8;
      v15 *= v26;
    }

    while (v20 != v25);
  }

LABEL_18:
  v59[0] = v15;
  v27 = *RankPromotionTypeForANE;
  if (*RankPromotionTypeForANE == *v61)
  {
    v28 = 1;
    goto LABEL_26;
  }

  v29 = 8 * v27;
  v30 = (__p + 8 * v27);
  v31 = 8 * *v61 - 8 - v29;
  if (!v31)
  {
    v28 = 1;
    do
    {
LABEL_25:
      v37 = *v30++;
      v28 *= v37;
    }

    while (v30 != (__p + 8 * *v61));
    goto LABEL_26;
  }

  v32 = (v31 >> 3) + 1;
  v30 += v32 & 0x3FFFFFFFFFFFFFFELL;
  v33 = __p + v29 + 8;
  v34 = 1;
  v35 = v32 & 0x3FFFFFFFFFFFFFFELL;
  v36 = 1;
  do
  {
    v34 *= *(v33 - 1);
    v36 *= *v33;
    v33 += 2;
    v35 -= 2;
  }

  while (v35);
  v28 = v36 * v34;
  if (v32 != (v32 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_25;
  }

LABEL_26:
  v59[1] = v28;
  LODWORD(v58) = 2;
  v53[0] = v54;
  v53[1] = 0x200000000;
  llvm::SmallVectorImpl<unsigned long long>::operator=(v53, &v57);
  v55 = 1;
  if (v57 != v59)
  {
    free(v57);
  }

  if (__p != &v61[8])
  {
    free(__p);
  }

  if (RankPromotionTypeForANE != v64)
  {
    free(RankPromotionTypeForANE);
  }

  if ((v55 & 1) == 0)
  {
    goto LABEL_35;
  }

  v38 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v38)
  {
    v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  v57 = v38;
  v58 = v39;
  if ((v55 & 1) == 0)
  {
    v50 = std::__throw_bad_optional_access[abi:nn200100]();
  }

  v42 = *v53[0];
  __p = &v61[8];
  *&v61[8] = v42;
  *v61 = 0x500000002;
  isSplat = mlir::ElementsAttr::isSplat(&v57);
  v44 = mlir::MemRefType::get(&v61[8], 2, isSplat, 0, 0, 0);
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

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v44, v46);
  v63 = v47;
  v51 = mlir::ValueRange::dereference_iterator(&v56, 0);
  v48 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(a2 + 24), &RankPromotionTypeForANE, &v51);
  (*(*a4 + 8))(a4, a2, v48);
  if (__p != &v61[8])
  {
    free(__p);
  }

  result = 1;
LABEL_45:
  if (v55 == 1 && v53[0] != v54)
  {
    v49 = result;
    free(v53[0]);
    return v49;
  }

  return result;
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)0>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)0>::~ConvertDivide(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DivideOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)0,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = *(a3 + 40);
  v16 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v15 = mlir::ValueRange::dereference_iterator(&v17, 1);
  v6 = *(a2 + 24);
  __p = v15;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp)
  {
    goto LABEL_7;
  }

  {
    v11 = DefiningOp;
    DefiningOp = v11;
  }

  if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) && (__p = mlir::getElementTypeOrSelf(v15), mlir::Type::isF16(&__p)))
  {
    __p = mlir::Builder::getF16FloatAttr((a4 + 8), 0.0, v8);
    v12 = mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>((a4 + 8), v6, &v15, &__p);
    __p = (mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), *(a2 + 24), &v16, &v12) - 16);
    matched = 1;
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
  }

  else
  {
LABEL_7:
    __p = operator new(0x48uLL);
    v14 = xmmword_1E0982720;
    strcpy(__p, "failed: can only support divide by a constant on A11/A12 class ANEs");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Invert::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id)
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

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)1>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)1>::~ConvertDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)1,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = *(a3 + 40);
  v16 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v15 = mlir::ValueRange::dereference_iterator(&v17, 1);
  v6 = *(a2 + 24);
  __p = v15;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp)
  {
    goto LABEL_7;
  }

  {
    v11 = DefiningOp;
    DefiningOp = v11;
  }

  if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) && (__p = mlir::getElementTypeOrSelf(v15), mlir::Type::isF16(&__p)))
  {
    __p = mlir::Builder::getF16FloatAttr((a4 + 8), 0.0, v8);
    v12 = mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>((a4 + 8), v6, &v15, &__p);
    __p = (mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), *(a2 + 24), &v16, &v12) - 16);
    matched = 1;
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
  }

  else
  {
LABEL_7:
    __p = operator new(0x48uLL);
    v14 = xmmword_1E0982720;
    strcpy(__p, "failed: can only support divide by a constant on A11/A12 class ANEs");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)2>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)2>::~ConvertDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)2,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseDiv,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseDiv,void>::id)
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

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)3>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)3>::~ConvertDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)3,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)4>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)4>::~ConvertDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)4,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)5>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)5>::~ConvertDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)5,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)6>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)6>::~ConvertDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)6,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)7>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)7>::~ConvertDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)7,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)0>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)0>::~ConvertFloorDivide(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::FloorDivideOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::FloorDivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::FloorDivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)0,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = *(a3 + 40);
  v17 = mlir::ValueRange::dereference_iterator(&v18, 0);
  v15 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v18, 1);
  v6 = *(a2 + 24);
  __p = v16;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp)
  {
    goto LABEL_7;
  }

  {
    v11 = DefiningOp;
    DefiningOp = v11;
  }

  if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) && (__p = mlir::getElementTypeOrSelf(v16), mlir::Type::isF16(&__p)))
  {
    __p = mlir::Builder::getF16FloatAttr((a4 + 8), 0.0, v8);
    v12 = mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>((a4 + 8), v6, &v16, &__p);
    v15 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), *(a2 + 24), &v17, &v12) - 16;
    __p = (mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v15) - 16);
    matched = 1;
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
  }

  else
  {
LABEL_7:
    __p = operator new(0x48uLL);
    v14 = xmmword_1E0982720;
    strcpy(__p, "failed: can only support divide by a constant on A11/A12 class ANEs");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id)
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

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)1>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)1>::~ConvertFloorDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)1,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = *(a3 + 40);
  v17 = mlir::ValueRange::dereference_iterator(&v18, 0);
  v15 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v18, 1);
  v6 = *(a2 + 24);
  __p = v16;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp)
  {
    goto LABEL_7;
  }

  {
    v11 = DefiningOp;
    DefiningOp = v11;
  }

  if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) && (__p = mlir::getElementTypeOrSelf(v16), mlir::Type::isF16(&__p)))
  {
    __p = mlir::Builder::getF16FloatAttr((a4 + 8), 0.0, v8);
    v12 = mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>((a4 + 8), v6, &v16, &__p);
    v15 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), *(a2 + 24), &v17, &v12) - 16;
    __p = (mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v15) - 16);
    matched = 1;
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
  }

  else
  {
LABEL_7:
    __p = operator new(0x48uLL);
    v14 = xmmword_1E0982720;
    strcpy(__p, "failed: can only support divide by a constant on A11/A12 class ANEs");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)2>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)2>::~ConvertFloorDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)2,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 40);
  v10 = mlir::ValueRange::dereference_iterator(&v11, 0);
  v9 = mlir::ValueRange::dereference_iterator(&v11, 1);
  v8 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v10, &v9) - 16;
  v7 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)3>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)3>::~ConvertFloorDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)3,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 40);
  v10 = mlir::ValueRange::dereference_iterator(&v11, 0);
  v9 = mlir::ValueRange::dereference_iterator(&v11, 1);
  v8 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v10, &v9) - 16;
  v7 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)4>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)4>::~ConvertFloorDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)4,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 40);
  v10 = mlir::ValueRange::dereference_iterator(&v11, 0);
  v9 = mlir::ValueRange::dereference_iterator(&v11, 1);
  v8 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v10, &v9) - 16;
  v7 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)5>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)5>::~ConvertFloorDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)5,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 40);
  v10 = mlir::ValueRange::dereference_iterator(&v11, 0);
  v9 = mlir::ValueRange::dereference_iterator(&v11, 1);
  v8 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v10, &v9) - 16;
  v7 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)6>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)6>::~ConvertFloorDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)6,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 40);
  v10 = mlir::ValueRange::dereference_iterator(&v11, 0);
  v9 = mlir::ValueRange::dereference_iterator(&v11, 1);
  v8 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v10, &v9) - 16;
  v7 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)7>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)7>::~ConvertFloorDivide(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)7,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 40);
  v10 = mlir::ValueRange::dereference_iterator(&v11, 0);
  v9 = mlir::ValueRange::dereference_iterator(&v11, 1);
  v8 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v10, &v9) - 16;
  v7 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v8) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v7, 1);
  return 1;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)0>::~ConvertMatMul(void *a1)
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