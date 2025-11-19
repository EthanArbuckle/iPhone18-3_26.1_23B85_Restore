uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v124[1] = *MEMORY[0x1E69E9840];
  v115 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v114[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v114[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v113 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v113 = 0;
    if (v19)
    {
      v120.__r_.__value_.__r.__words[0] = &v113;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v120, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v115 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
      }
    }
  }

  v122 = v124;
  v123 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v115, 0);
  v22 = (*(*(*(v115 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v113, v24, &v122, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    goto LABEL_26;
  }

  if (v123 != 1)
  {
    std::to_string(&v120, v123);
    v46 = std::string::insert(&v120, 0, "expected a single axis, but found ");
    v47 = v46->__r_.__value_.__r.__words[2];
    *__p = *&v46->__r_.__value_.__l.__data_;
    *&__p[16] = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v115 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }
    }

    else if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    v45 = v120.__r_.__value_.__r.__words[0];
    goto LABEL_82;
  }

  v27 = *v122;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v111 = 0;
  v112 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v114);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v114);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v114) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v114) + 8 * v37);
      v121.__r_.__value_.__r.__words[0] = &v121.__r_.__value_.__r.__words[2];
      v121.__r_.__value_.__r.__words[2] = v27;
      v121.__r_.__value_.__l.__size_ = 0x100000001;
      v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
      memset_pattern16(&v120.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v120.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v119 = 0u;
      *&__p[8] = 0x400000004;
      v117.__r_.__value_.__r.__words[0] = 1;
      IntegerType = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v41 = mlir::RankedTensorType::get(&v117, 1, IntegerType, 0);
      if (v41)
      {
        v42 = v41;
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
        v41 = v42;
      }

      else
      {
        v43 = 0;
      }

      v110.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v121.__r_.__value_.__r.__words[2], 8, 8, 1, 0);
      v117.__r_.__value_.__r.__words[0] = v38;
      v117.__r_.__value_.__l.__size_ = v39;
      v116.__r_.__value_.__r.__words[0] = 2;
      v48 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v49 = mlir::RankedTensorType::get(&v116, 1, v48, 0);
      if (v49)
      {
        v50 = v49;
        v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
        v49 = v50;
      }

      else
      {
        v51 = 0;
      }

      v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v49, v51, &v117, 16, 8, 1, 0);
      v52 = v120.__r_.__value_.__r.__words[0];
      v53 = LODWORD(v120.__r_.__value_.__r.__words[1]);
      v116.__r_.__value_.__r.__words[0] = LODWORD(v120.__r_.__value_.__r.__words[1]);
      v54 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v55 = mlir::RankedTensorType::get(&v116, 1, v54, 0);
      if (v55)
      {
        v56 = v55;
        v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
        v55 = v56;
      }

      else
      {
        v57 = 0;
      }

      v108.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v52, 8 * v53, 8, 1, 0);
      v58 = *__p;
      v59 = *&__p[8];
      v116.__r_.__value_.__r.__words[0] = *&__p[8];
      v60 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v61 = mlir::RankedTensorType::get(&v116, 1, v60, 0);
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

      v116.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v61, v63, v58, 8 * v59, 8, 1, 0);
      v112 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a6 + 1, v8, &v112, &v110, &v111, &v109, &v108, &v116) - 16);
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
      {
        free(v120.__r_.__value_.__l.__data_);
      }

      if (v121.__r_.__value_.__l.__data_ != &v121.__r_.__value_.__r.__words[2])
      {
        free(v121.__r_.__value_.__l.__data_);
      }

      v64 = *(mlir::CallableOpInterface::getArgAttrsAttr(v114) + 8 * v27);
      if (v64 >= 0x10000)
      {
        std::to_string(&v108, v64);
        v65 = std::string::insert(&v108, 0, "Tensor size on reduction axis (");
        v66 = v65->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = *&v65->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v66;
        v65->__r_.__value_.__l.__size_ = 0;
        v65->__r_.__value_.__r.__words[2] = 0;
        v65->__r_.__value_.__r.__words[0] = 0;
        v67 = std::string::append(&v109, ") ");
        v68 = v67->__r_.__value_.__r.__words[2];
        *&v110.__r_.__value_.__l.__data_ = *&v67->__r_.__value_.__l.__data_;
        v110.__r_.__value_.__r.__words[2] = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        v69 = std::string::append(&v110, "exceeds the maximum value of UInt16 (");
        v70 = v69->__r_.__value_.__r.__words[2];
        *&v116.__r_.__value_.__l.__data_ = *&v69->__r_.__value_.__l.__data_;
        v116.__r_.__value_.__r.__words[2] = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v107, 0xFFFF);
        if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &v107;
        }

        else
        {
          v71 = v107.__r_.__value_.__r.__words[0];
        }

        if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v107.__r_.__value_.__l.__size_;
        }

        v73 = std::string::append(&v116, v71, size);
        v74 = v73->__r_.__value_.__r.__words[2];
        *&v117.__r_.__value_.__l.__data_ = *&v73->__r_.__value_.__l.__data_;
        v117.__r_.__value_.__r.__words[2] = v74;
        v73->__r_.__value_.__l.__size_ = 0;
        v73->__r_.__value_.__r.__words[2] = 0;
        v73->__r_.__value_.__r.__words[0] = 0;
        v75 = std::string::append(&v117, "), ");
        v76 = v75->__r_.__value_.__r.__words[2];
        *&v121.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
        v121.__r_.__value_.__r.__words[2] = v76;
        v75->__r_.__value_.__l.__size_ = 0;
        v75->__r_.__value_.__r.__words[2] = 0;
        v75->__r_.__value_.__r.__words[0] = 0;
        v77 = std::string::append(&v121, "so the 32 bit output type could not be safely converted to ");
        v78 = v77->__r_.__value_.__r.__words[2];
        *&v120.__r_.__value_.__l.__data_ = *&v77->__r_.__value_.__l.__data_;
        v120.__r_.__value_.__r.__words[2] = v78;
        v77->__r_.__value_.__l.__size_ = 0;
        v77->__r_.__value_.__r.__words[2] = 0;
        v77->__r_.__value_.__r.__words[0] = 0;
        v79 = std::string::append(&v120, "UInt16 so that it could be supported on ANE.");
        v80 = v79->__r_.__value_.__r.__words[2];
        *__p = *&v79->__r_.__value_.__l.__data_;
        *&__p[16] = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v115 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_60:
            if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_75;
          }
        }

        else if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        operator delete(v120.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v121.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v117.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v107.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v116.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_80;
        }

LABEL_79:
        operator delete(v110.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_66:
          if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

LABEL_81:
          v45 = v108.__r_.__value_.__r.__words[0];
LABEL_82:
          operator delete(v45);
LABEL_83:
          if (v122 != v124)
          {
            free(v122);
          }

          return matched;
        }

LABEL_80:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      }

      if (*(v115 + 9))
      {
        v81 = v115 - 16;
      }

      else
      {
        v81 = 0;
      }

      v82 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v81, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v82)
      {
        v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
      }

      else
      {
        v83 = 0;
      }

      v120.__r_.__value_.__r.__words[0] = mlir::getRankPromotionTypeForANE(v82, v83);
      v120.__r_.__value_.__l.__size_ = v85;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v120);
      v88 = v87;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v112);
      v90 = mlir::MemRefType::get(ArgAttrsAttr, v88, ElementTypeOrSelf, 0, 0, 0);
      v91 = v112;
      if (v90 == (v112[1] & 0xFFFFFFFFFFFFFFF8))
      {
        v92 = v115;
        v93 = *(v115 - 2);
        if (v93)
        {
          do
          {
            v94 = *v93;
            v95 = v93[2];
            ((*a6)[5])(a6, v95);
            v96 = v93[1];
            if (v96)
            {
              v97 = *v93;
              *v96 = *v93;
              if (v97)
              {
                v97[1] = v93[1];
              }
            }

            v93[3] = v91;
            v93[1] = v91;
            v98 = *v91;
            *v93 = *v91;
            if (v98)
            {
              *(v98 + 8) = v93;
            }

            *v91 = v93;
            ((*a6)[6])(a6, v95);
            v93 = v94;
          }

          while (v94);
          v92 = v115;
        }

        mlir::ConversionPatternRewriter::eraseOp(a6, v92);
        matched = 1;
        goto LABEL_83;
      }

      *__p = operator new(0x60uLL);
      *&__p[8] = xmmword_1E0982980;
      strcpy(*__p, "failed: output shape requires a reshape, but the op is not available on A12/A13-class ANEs.");
LABEL_26:
      matched = mlir::logMatchFailure(__p, *(v115 + 3), a6);
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      v45 = *__p;
      goto LABEL_82;
    }
  }

  v99 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(v99, v100, v101, v102, v103, v104, v105, v106);
}

uint64_t mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ArgMinMax,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::anec::ArgMinMax::build(a1, v25, *a3, *a4, *a5, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ArgMinMax,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)1>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)1>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v108 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v107[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v107[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v106 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v106 = 0;
    if (v19)
    {
      v113.__r_.__value_.__r.__words[0] = &v106;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v113, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
      }
    }
  }

  v115 = v117;
  v116 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v108, 0);
  v22 = (*(*(*(v108 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v106, v24, &v115, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    goto LABEL_26;
  }

  if (v116 != 1)
  {
    std::to_string(&v113, v116);
    v46 = std::string::insert(&v113, 0, "expected a single axis, but found ");
    v47 = v46->__r_.__value_.__r.__words[2];
    *__p = *&v46->__r_.__value_.__l.__data_;
    *&__p[16] = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }
    }

    else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    v45 = v113.__r_.__value_.__r.__words[0];
    goto LABEL_82;
  }

  v27 = *v115;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v104 = 0;
  v105 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v107);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v107);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v37);
      v114.__r_.__value_.__r.__words[0] = &v114.__r_.__value_.__r.__words[2];
      v114.__r_.__value_.__r.__words[2] = v27;
      v114.__r_.__value_.__l.__size_ = 0x100000001;
      v113.__r_.__value_.__r.__words[0] = &v113.__r_.__value_.__r.__words[2];
      memset_pattern16(&v113.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v113.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v112 = 0u;
      *&__p[8] = 0x400000004;
      v110.__r_.__value_.__r.__words[0] = 1;
      IntegerType = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v41 = mlir::RankedTensorType::get(&v110, 1, IntegerType, 0);
      if (v41)
      {
        v42 = v41;
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
        v41 = v42;
      }

      else
      {
        v43 = 0;
      }

      v103.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v114.__r_.__value_.__r.__words[2], 8, 8, 1, 0);
      v110.__r_.__value_.__r.__words[0] = v38;
      v110.__r_.__value_.__l.__size_ = v39;
      v109.__r_.__value_.__r.__words[0] = 2;
      v48 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v49 = mlir::RankedTensorType::get(&v109, 1, v48, 0);
      if (v49)
      {
        v50 = v49;
        v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
        v49 = v50;
      }

      else
      {
        v51 = 0;
      }

      v102.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v49, v51, &v110, 16, 8, 1, 0);
      v52 = v113.__r_.__value_.__r.__words[0];
      v53 = LODWORD(v113.__r_.__value_.__r.__words[1]);
      v109.__r_.__value_.__r.__words[0] = LODWORD(v113.__r_.__value_.__r.__words[1]);
      v54 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v55 = mlir::RankedTensorType::get(&v109, 1, v54, 0);
      if (v55)
      {
        v56 = v55;
        v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
        v55 = v56;
      }

      else
      {
        v57 = 0;
      }

      v101.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v52, 8 * v53, 8, 1, 0);
      v58 = *__p;
      v59 = *&__p[8];
      v109.__r_.__value_.__r.__words[0] = *&__p[8];
      v60 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v61 = mlir::RankedTensorType::get(&v109, 1, v60, 0);
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

      v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v61, v63, v58, 8 * v59, 8, 1, 0);
      v105 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a6 + 1, v8, &v105, &v103, &v104, &v102, &v101, &v109) - 16);
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v113.__r_.__value_.__l.__data_ != &v113.__r_.__value_.__r.__words[2])
      {
        free(v113.__r_.__value_.__l.__data_);
      }

      if (v114.__r_.__value_.__l.__data_ != &v114.__r_.__value_.__r.__words[2])
      {
        free(v114.__r_.__value_.__l.__data_);
      }

      v64 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v27);
      if (v64 >= 0x10000)
      {
        std::to_string(&v101, v64);
        v65 = std::string::insert(&v101, 0, "Tensor size on reduction axis (");
        v66 = v65->__r_.__value_.__r.__words[2];
        *&v102.__r_.__value_.__l.__data_ = *&v65->__r_.__value_.__l.__data_;
        v102.__r_.__value_.__r.__words[2] = v66;
        v65->__r_.__value_.__l.__size_ = 0;
        v65->__r_.__value_.__r.__words[2] = 0;
        v65->__r_.__value_.__r.__words[0] = 0;
        v67 = std::string::append(&v102, ") ");
        v68 = v67->__r_.__value_.__r.__words[2];
        *&v103.__r_.__value_.__l.__data_ = *&v67->__r_.__value_.__l.__data_;
        v103.__r_.__value_.__r.__words[2] = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        v69 = std::string::append(&v103, "exceeds the maximum value of UInt16 (");
        v70 = v69->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = *&v69->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v100, 0xFFFF);
        if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &v100;
        }

        else
        {
          v71 = v100.__r_.__value_.__r.__words[0];
        }

        if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v100.__r_.__value_.__l.__size_;
        }

        v73 = std::string::append(&v109, v71, size);
        v74 = v73->__r_.__value_.__r.__words[2];
        *&v110.__r_.__value_.__l.__data_ = *&v73->__r_.__value_.__l.__data_;
        v110.__r_.__value_.__r.__words[2] = v74;
        v73->__r_.__value_.__l.__size_ = 0;
        v73->__r_.__value_.__r.__words[2] = 0;
        v73->__r_.__value_.__r.__words[0] = 0;
        v75 = std::string::append(&v110, "), ");
        v76 = v75->__r_.__value_.__r.__words[2];
        *&v114.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
        v114.__r_.__value_.__r.__words[2] = v76;
        v75->__r_.__value_.__l.__size_ = 0;
        v75->__r_.__value_.__r.__words[2] = 0;
        v75->__r_.__value_.__r.__words[0] = 0;
        v77 = std::string::append(&v114, "so the 32 bit output type could not be safely converted to ");
        v78 = v77->__r_.__value_.__r.__words[2];
        *&v113.__r_.__value_.__l.__data_ = *&v77->__r_.__value_.__l.__data_;
        v113.__r_.__value_.__r.__words[2] = v78;
        v77->__r_.__value_.__l.__size_ = 0;
        v77->__r_.__value_.__r.__words[2] = 0;
        v77->__r_.__value_.__r.__words[0] = 0;
        v79 = std::string::append(&v113, "UInt16 so that it could be supported on ANE.");
        v80 = v79->__r_.__value_.__r.__words[2];
        *__p = *&v79->__r_.__value_.__l.__data_;
        *&__p[16] = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_60:
            if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_75;
          }
        }

        else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        operator delete(v113.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v114.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v110.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v100.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_80;
        }

LABEL_79:
        operator delete(v103.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_66:
          if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

LABEL_81:
          v45 = v101.__r_.__value_.__r.__words[0];
LABEL_82:
          operator delete(v45);
LABEL_83:
          if (v115 != v117)
          {
            free(v115);
          }

          return matched;
        }

LABEL_80:
        operator delete(v102.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      }

      if (*(v108 + 9))
      {
        v81 = v108 - 16;
      }

      else
      {
        v81 = 0;
      }

      v82 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v81, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v82)
      {
        v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
      }

      else
      {
        v83 = 0;
      }

      v113.__r_.__value_.__r.__words[0] = mlir::getRankPromotionTypeForANE(v82, v83);
      v113.__r_.__value_.__l.__size_ = v85;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v113);
      v88 = v87;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v105);
      v90 = mlir::MemRefType::get(ArgAttrsAttr, v88, ElementTypeOrSelf, 0, 0, 0);
      v91 = v105;
      if (v90 == (v105[1] & 0xFFFFFFFFFFFFFFF8))
      {
        v92 = v108;
        v93 = *(v108 - 2);
        if (v93)
        {
          do
          {
            v94 = *v93;
            v95 = v93[2];
            ((*a6)[5])(a6, v95);
            v96 = v93[1];
            if (v96)
            {
              v97 = *v93;
              *v96 = *v93;
              if (v97)
              {
                v97[1] = v93[1];
              }
            }

            v93[3] = v91;
            v93[1] = v91;
            v98 = *v91;
            *v93 = *v91;
            if (v98)
            {
              *(v98 + 8) = v93;
            }

            *v91 = v93;
            ((*a6)[6])(a6, v95);
            v93 = v94;
          }

          while (v94);
          v92 = v108;
        }

        mlir::ConversionPatternRewriter::eraseOp(a6, v92);
        matched = 1;
        goto LABEL_83;
      }

      *__p = operator new(0x60uLL);
      *&__p[8] = xmmword_1E0982980;
      strcpy(*__p, "failed: output shape requires a reshape, but the op is not available on A12/A13-class ANEs.");
LABEL_26:
      matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      v45 = *__p;
      goto LABEL_82;
    }
  }

  v99 = std::__throw_bad_optional_access[abi:nn200100]();
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)2>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)2>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v113[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v113[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v112 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
      }
    }
  }

  v121 = v123;
  v122 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v114, 0);
  v22 = (*(*(*(v114 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_101;
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v45 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v46 = v45->__r_.__value_.__r.__words[2];
    *__p = *&v45->__r_.__value_.__l.__data_;
    *&__p[16] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_101;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
LABEL_101:
    if (v121 != v123)
    {
      free(v121);
    }

    return matched;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v110 = 0;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v113);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v37);
      v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
      v120.__r_.__value_.__r.__words[2] = v27;
      v120.__r_.__value_.__l.__size_ = 0x100000001;
      v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
      memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v119.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v118 = 0u;
      *&__p[8] = 0x400000004;
      v116.__r_.__value_.__r.__words[0] = 1;
      IntegerType = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v41 = mlir::RankedTensorType::get(&v116, 1, IntegerType, 0);
      if (v41)
      {
        v42 = v41;
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
        v41 = v42;
      }

      else
      {
        v43 = 0;
      }

      v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v120.__r_.__value_.__r.__words[2], 8, 8, 1, 0);
      v116.__r_.__value_.__r.__words[0] = v38;
      v116.__r_.__value_.__l.__size_ = v39;
      v115.__r_.__value_.__r.__words[0] = 2;
      v47 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v48 = mlir::RankedTensorType::get(&v115, 1, v47, 0);
      if (v48)
      {
        v49 = v48;
        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
        v48 = v49;
      }

      else
      {
        v50 = 0;
      }

      v108.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v48, v50, &v116, 16, 8, 1, 0);
      v51 = v119.__r_.__value_.__r.__words[0];
      v52 = LODWORD(v119.__r_.__value_.__r.__words[1]);
      v115.__r_.__value_.__r.__words[0] = LODWORD(v119.__r_.__value_.__r.__words[1]);
      v53 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v54 = mlir::RankedTensorType::get(&v115, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      v107.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v51, 8 * v52, 8, 1, 0);
      v57 = *__p;
      v58 = *&__p[8];
      v115.__r_.__value_.__r.__words[0] = *&__p[8];
      v59 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v60 = mlir::RankedTensorType::get(&v115, 1, v59, 0);
      if (v60)
      {
        v61 = v60;
        v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
        v60 = v61;
      }

      else
      {
        v62 = 0;
      }

      v115.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v60, v62, v57, 8 * v58, 8, 1, 0);
      v111 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a6 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16);
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
      {
        free(v119.__r_.__value_.__l.__data_);
      }

      if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
      {
        free(v120.__r_.__value_.__l.__data_);
      }

      v63 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v27);
      if (v63 >= 0x10000)
      {
        std::to_string(&v107, v63);
        v64 = std::string::insert(&v107, 0, "Tensor size on reduction axis (");
        v65 = v64->__r_.__value_.__r.__words[2];
        *&v108.__r_.__value_.__l.__data_ = *&v64->__r_.__value_.__l.__data_;
        v108.__r_.__value_.__r.__words[2] = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        v66 = std::string::append(&v108, ") ");
        v67 = v66->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        v68 = std::string::append(&v109, "exceeds the maximum value of UInt16 (");
        v69 = v68->__r_.__value_.__r.__words[2];
        *&v115.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
        v115.__r_.__value_.__r.__words[2] = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v106, 0xFFFF);
        if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v106;
        }

        else
        {
          v70 = v106.__r_.__value_.__r.__words[0];
        }

        if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v106.__r_.__value_.__l.__size_;
        }

        v72 = std::string::append(&v115, v70, size);
        v73 = v72->__r_.__value_.__r.__words[2];
        *&v116.__r_.__value_.__l.__data_ = *&v72->__r_.__value_.__l.__data_;
        v116.__r_.__value_.__r.__words[2] = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = std::string::append(&v116, "), ");
        v75 = v74->__r_.__value_.__r.__words[2];
        *&v120.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
        v120.__r_.__value_.__r.__words[2] = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        v76 = std::string::append(&v120, "so the 32 bit output type could not be safely converted to ");
        v77 = v76->__r_.__value_.__r.__words[2];
        *&v119.__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
        v119.__r_.__value_.__r.__words[2] = v77;
        v76->__r_.__value_.__l.__size_ = 0;
        v76->__r_.__value_.__r.__words[2] = 0;
        v76->__r_.__value_.__r.__words[0] = 0;
        v78 = std::string::append(&v119, "UInt16 so that it could be supported on ANE.");
        v79 = v78->__r_.__value_.__r.__words[2];
        *__p = *&v78->__r_.__value_.__l.__data_;
        *&__p[16] = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_59:
            if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_74;
          }
        }

        else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        operator delete(v119.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_60:
          if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_75;
        }

LABEL_74:
        operator delete(v120.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v116.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v106.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v115.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

LABEL_80:
          operator delete(v107.__r_.__value_.__l.__data_);
          goto LABEL_101;
        }

LABEL_79:
        operator delete(v108.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_80;
      }

      if (*(v114 + 9))
      {
        v80 = v114 - 16;
      }

      else
      {
        v80 = 0;
      }

      v81 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v80, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v81)
      {
        v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v81 + 8);
      }

      else
      {
        v82 = 0;
      }

      *__p = mlir::getRankPromotionTypeForANE(v81, v82);
      *&__p[8] = v83;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(__p);
      v86 = v85;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
      v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v86, ElementTypeOrSelf, 0, 0, 0);
      v88 = v111;
      v89 = v114;
      if (v119.__r_.__value_.__r.__words[0] == (v111[1] & 0xFFFFFFFFFFFFFFF8))
      {
        v90 = *(v114 - 2);
        if (!v90)
        {
          goto LABEL_100;
        }

        do
        {
          v91 = *v90;
          v92 = v90[2];
          ((*a6)[5])(a6, v92);
          v93 = v90[1];
          if (v93)
          {
            v94 = *v90;
            *v93 = *v90;
            if (v94)
            {
              v94[1] = v90[1];
            }
          }

          v90[3] = v88;
          v90[1] = v88;
          v95 = *v88;
          *v90 = *v88;
          if (v95)
          {
            *(v95 + 8) = v90;
          }

          *v88 = v90;
          ((*a6)[6])(a6, v92);
          v90 = v91;
        }

        while (v91);
      }

      else
      {
        v96 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 1), *(v114 + 3), &v119, &v111);
        v89 = v114;
        v97 = *(v114 - 2);
        if (!v97)
        {
LABEL_100:
          mlir::ConversionPatternRewriter::eraseOp(a6, v89);
          matched = 1;
          goto LABEL_101;
        }

        v98 = (v96 - 16);
        do
        {
          v99 = *v97;
          v100 = v97[2];
          ((*a6)[5])(a6, v100);
          v101 = v97[1];
          if (v101)
          {
            v102 = *v97;
            *v101 = *v97;
            if (v102)
            {
              v102[1] = v97[1];
            }
          }

          v97[3] = v98;
          v97[1] = v98;
          v103 = *v98;
          *v97 = *v98;
          if (v103)
          {
            *(v103 + 8) = v97;
          }

          *v98 = v97;
          ((*a6)[6])(a6, v100);
          v97 = v99;
        }

        while (v99);
      }

      v89 = v114;
      goto LABEL_100;
    }
  }

  v105 = std::__throw_bad_optional_access[abi:nn200100]();
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)3>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)3>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v113[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v113[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v112 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
      }
    }
  }

  v121 = v123;
  v122 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v114, 0);
  v22 = (*(*(*(v114 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_101;
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v45 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v46 = v45->__r_.__value_.__r.__words[2];
    *__p = *&v45->__r_.__value_.__l.__data_;
    *&__p[16] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_101;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
LABEL_101:
    if (v121 != v123)
    {
      free(v121);
    }

    return matched;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v110 = 0;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v113);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v37);
      v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
      v120.__r_.__value_.__r.__words[2] = v27;
      v120.__r_.__value_.__l.__size_ = 0x100000001;
      v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
      memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v119.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v118 = 0u;
      *&__p[8] = 0x400000004;
      v116.__r_.__value_.__r.__words[0] = 1;
      IntegerType = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v41 = mlir::RankedTensorType::get(&v116, 1, IntegerType, 0);
      if (v41)
      {
        v42 = v41;
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
        v41 = v42;
      }

      else
      {
        v43 = 0;
      }

      v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v120.__r_.__value_.__r.__words[2], 8, 8, 1, 0);
      v116.__r_.__value_.__r.__words[0] = v38;
      v116.__r_.__value_.__l.__size_ = v39;
      v115.__r_.__value_.__r.__words[0] = 2;
      v47 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v48 = mlir::RankedTensorType::get(&v115, 1, v47, 0);
      if (v48)
      {
        v49 = v48;
        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
        v48 = v49;
      }

      else
      {
        v50 = 0;
      }

      v108.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v48, v50, &v116, 16, 8, 1, 0);
      v51 = v119.__r_.__value_.__r.__words[0];
      v52 = LODWORD(v119.__r_.__value_.__r.__words[1]);
      v115.__r_.__value_.__r.__words[0] = LODWORD(v119.__r_.__value_.__r.__words[1]);
      v53 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v54 = mlir::RankedTensorType::get(&v115, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      v107.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v51, 8 * v52, 8, 1, 0);
      v57 = *__p;
      v58 = *&__p[8];
      v115.__r_.__value_.__r.__words[0] = *&__p[8];
      v59 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v60 = mlir::RankedTensorType::get(&v115, 1, v59, 0);
      if (v60)
      {
        v61 = v60;
        v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
        v60 = v61;
      }

      else
      {
        v62 = 0;
      }

      v115.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v60, v62, v57, 8 * v58, 8, 1, 0);
      v111 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a6 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16);
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
      {
        free(v119.__r_.__value_.__l.__data_);
      }

      if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
      {
        free(v120.__r_.__value_.__l.__data_);
      }

      v63 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v27);
      if (v63 >= 0x10000)
      {
        std::to_string(&v107, v63);
        v64 = std::string::insert(&v107, 0, "Tensor size on reduction axis (");
        v65 = v64->__r_.__value_.__r.__words[2];
        *&v108.__r_.__value_.__l.__data_ = *&v64->__r_.__value_.__l.__data_;
        v108.__r_.__value_.__r.__words[2] = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        v66 = std::string::append(&v108, ") ");
        v67 = v66->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        v68 = std::string::append(&v109, "exceeds the maximum value of UInt16 (");
        v69 = v68->__r_.__value_.__r.__words[2];
        *&v115.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
        v115.__r_.__value_.__r.__words[2] = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v106, 0xFFFF);
        if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v106;
        }

        else
        {
          v70 = v106.__r_.__value_.__r.__words[0];
        }

        if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v106.__r_.__value_.__l.__size_;
        }

        v72 = std::string::append(&v115, v70, size);
        v73 = v72->__r_.__value_.__r.__words[2];
        *&v116.__r_.__value_.__l.__data_ = *&v72->__r_.__value_.__l.__data_;
        v116.__r_.__value_.__r.__words[2] = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = std::string::append(&v116, "), ");
        v75 = v74->__r_.__value_.__r.__words[2];
        *&v120.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
        v120.__r_.__value_.__r.__words[2] = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        v76 = std::string::append(&v120, "so the 32 bit output type could not be safely converted to ");
        v77 = v76->__r_.__value_.__r.__words[2];
        *&v119.__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
        v119.__r_.__value_.__r.__words[2] = v77;
        v76->__r_.__value_.__l.__size_ = 0;
        v76->__r_.__value_.__r.__words[2] = 0;
        v76->__r_.__value_.__r.__words[0] = 0;
        v78 = std::string::append(&v119, "UInt16 so that it could be supported on ANE.");
        v79 = v78->__r_.__value_.__r.__words[2];
        *__p = *&v78->__r_.__value_.__l.__data_;
        *&__p[16] = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_59:
            if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_74;
          }
        }

        else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        operator delete(v119.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_60:
          if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_75;
        }

LABEL_74:
        operator delete(v120.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v116.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v106.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v115.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

LABEL_80:
          operator delete(v107.__r_.__value_.__l.__data_);
          goto LABEL_101;
        }

LABEL_79:
        operator delete(v108.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_80;
      }

      if (*(v114 + 9))
      {
        v80 = v114 - 16;
      }

      else
      {
        v80 = 0;
      }

      v81 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v80, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v81)
      {
        v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v81 + 8);
      }

      else
      {
        v82 = 0;
      }

      *__p = mlir::getRankPromotionTypeForANE(v81, v82);
      *&__p[8] = v83;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(__p);
      v86 = v85;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
      v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v86, ElementTypeOrSelf, 0, 0, 0);
      v88 = v111;
      v89 = v114;
      if (v119.__r_.__value_.__r.__words[0] == (v111[1] & 0xFFFFFFFFFFFFFFF8))
      {
        v90 = *(v114 - 2);
        if (!v90)
        {
          goto LABEL_100;
        }

        do
        {
          v91 = *v90;
          v92 = v90[2];
          ((*a6)[5])(a6, v92);
          v93 = v90[1];
          if (v93)
          {
            v94 = *v90;
            *v93 = *v90;
            if (v94)
            {
              v94[1] = v90[1];
            }
          }

          v90[3] = v88;
          v90[1] = v88;
          v95 = *v88;
          *v90 = *v88;
          if (v95)
          {
            *(v95 + 8) = v90;
          }

          *v88 = v90;
          ((*a6)[6])(a6, v92);
          v90 = v91;
        }

        while (v91);
      }

      else
      {
        v96 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 1), *(v114 + 3), &v119, &v111);
        v89 = v114;
        v97 = *(v114 - 2);
        if (!v97)
        {
LABEL_100:
          mlir::ConversionPatternRewriter::eraseOp(a6, v89);
          matched = 1;
          goto LABEL_101;
        }

        v98 = (v96 - 16);
        do
        {
          v99 = *v97;
          v100 = v97[2];
          ((*a6)[5])(a6, v100);
          v101 = v97[1];
          if (v101)
          {
            v102 = *v97;
            *v101 = *v97;
            if (v102)
            {
              v102[1] = v97[1];
            }
          }

          v97[3] = v98;
          v97[1] = v98;
          v103 = *v98;
          *v97 = *v98;
          if (v103)
          {
            *(v103 + 8) = v97;
          }

          *v98 = v97;
          ((*a6)[6])(a6, v100);
          v97 = v99;
        }

        while (v99);
      }

      v89 = v114;
      goto LABEL_100;
    }
  }

  v105 = std::__throw_bad_optional_access[abi:nn200100]();
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)4>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)4>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
    v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
    v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v22)
    {
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    }

    else
    {
      v23 = 0;
    }

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 0;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a6 + 1, v8, &v83, v89, &v82) - 16);
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a6)[5])(a6, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a6)[6])(a6, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a6, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a6)[5])(a6, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a6)[6])(a6, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a6);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GlobalArgMinMax,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::GlobalArgMinMax::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GlobalArgMinMax,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)5>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)5>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
    v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
    v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v22)
    {
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    }

    else
    {
      v23 = 0;
    }

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 0;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a6 + 1, v8, &v83, v89, &v82) - 16);
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a6)[5])(a6, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a6)[6])(a6, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a6, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a6)[5])(a6, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a6)[6])(a6, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a6);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)6>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)6>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
    v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
    v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v22)
    {
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    }

    else
    {
      v23 = 0;
    }

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 0;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a6 + 1, v8, &v83, v89, &v82) - 16);
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a6)[5])(a6, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a6)[6])(a6, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a6, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a6)[5])(a6, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a6)[6])(a6, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a6);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)0>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)0>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionArgMaxOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionArgMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionArgMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v108 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v107[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v107[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v106 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v106 = 0;
    if (v19)
    {
      v113.__r_.__value_.__r.__words[0] = &v106;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v113, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
      }
    }
  }

  v115 = v117;
  v116 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v108, 0);
  v22 = (*(*(*(v108 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v106, v24, &v115, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    goto LABEL_26;
  }

  if (v116 != 1)
  {
    std::to_string(&v113, v116);
    v46 = std::string::insert(&v113, 0, "expected a single axis, but found ");
    v47 = v46->__r_.__value_.__r.__words[2];
    *__p = *&v46->__r_.__value_.__l.__data_;
    *&__p[16] = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }
    }

    else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    v45 = v113.__r_.__value_.__r.__words[0];
    goto LABEL_82;
  }

  v27 = *v115;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v104 = 1;
  v105 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v107);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v107);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v37);
      v114.__r_.__value_.__r.__words[0] = &v114.__r_.__value_.__r.__words[2];
      v114.__r_.__value_.__r.__words[2] = v27;
      v114.__r_.__value_.__l.__size_ = 0x100000001;
      v113.__r_.__value_.__r.__words[0] = &v113.__r_.__value_.__r.__words[2];
      memset_pattern16(&v113.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v113.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v112 = 0u;
      *&__p[8] = 0x400000004;
      v110.__r_.__value_.__r.__words[0] = 1;
      IntegerType = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v41 = mlir::RankedTensorType::get(&v110, 1, IntegerType, 0);
      if (v41)
      {
        v42 = v41;
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
        v41 = v42;
      }

      else
      {
        v43 = 0;
      }

      v103.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v114.__r_.__value_.__r.__words[2], 8, 8, 1, 0);
      v110.__r_.__value_.__r.__words[0] = v38;
      v110.__r_.__value_.__l.__size_ = v39;
      v109.__r_.__value_.__r.__words[0] = 2;
      v48 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v49 = mlir::RankedTensorType::get(&v109, 1, v48, 0);
      if (v49)
      {
        v50 = v49;
        v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
        v49 = v50;
      }

      else
      {
        v51 = 0;
      }

      v102.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v49, v51, &v110, 16, 8, 1, 0);
      v52 = v113.__r_.__value_.__r.__words[0];
      v53 = LODWORD(v113.__r_.__value_.__r.__words[1]);
      v109.__r_.__value_.__r.__words[0] = LODWORD(v113.__r_.__value_.__r.__words[1]);
      v54 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v55 = mlir::RankedTensorType::get(&v109, 1, v54, 0);
      if (v55)
      {
        v56 = v55;
        v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
        v55 = v56;
      }

      else
      {
        v57 = 0;
      }

      v101.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v52, 8 * v53, 8, 1, 0);
      v58 = *__p;
      v59 = *&__p[8];
      v109.__r_.__value_.__r.__words[0] = *&__p[8];
      v60 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v61 = mlir::RankedTensorType::get(&v109, 1, v60, 0);
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

      v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v61, v63, v58, 8 * v59, 8, 1, 0);
      v105 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a6 + 1, v8, &v105, &v103, &v104, &v102, &v101, &v109) - 16);
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v113.__r_.__value_.__l.__data_ != &v113.__r_.__value_.__r.__words[2])
      {
        free(v113.__r_.__value_.__l.__data_);
      }

      if (v114.__r_.__value_.__l.__data_ != &v114.__r_.__value_.__r.__words[2])
      {
        free(v114.__r_.__value_.__l.__data_);
      }

      v64 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v27);
      if (v64 >= 0x10000)
      {
        std::to_string(&v101, v64);
        v65 = std::string::insert(&v101, 0, "Tensor size on reduction axis (");
        v66 = v65->__r_.__value_.__r.__words[2];
        *&v102.__r_.__value_.__l.__data_ = *&v65->__r_.__value_.__l.__data_;
        v102.__r_.__value_.__r.__words[2] = v66;
        v65->__r_.__value_.__l.__size_ = 0;
        v65->__r_.__value_.__r.__words[2] = 0;
        v65->__r_.__value_.__r.__words[0] = 0;
        v67 = std::string::append(&v102, ") ");
        v68 = v67->__r_.__value_.__r.__words[2];
        *&v103.__r_.__value_.__l.__data_ = *&v67->__r_.__value_.__l.__data_;
        v103.__r_.__value_.__r.__words[2] = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        v69 = std::string::append(&v103, "exceeds the maximum value of UInt16 (");
        v70 = v69->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = *&v69->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v100, 0xFFFF);
        if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &v100;
        }

        else
        {
          v71 = v100.__r_.__value_.__r.__words[0];
        }

        if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v100.__r_.__value_.__l.__size_;
        }

        v73 = std::string::append(&v109, v71, size);
        v74 = v73->__r_.__value_.__r.__words[2];
        *&v110.__r_.__value_.__l.__data_ = *&v73->__r_.__value_.__l.__data_;
        v110.__r_.__value_.__r.__words[2] = v74;
        v73->__r_.__value_.__l.__size_ = 0;
        v73->__r_.__value_.__r.__words[2] = 0;
        v73->__r_.__value_.__r.__words[0] = 0;
        v75 = std::string::append(&v110, "), ");
        v76 = v75->__r_.__value_.__r.__words[2];
        *&v114.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
        v114.__r_.__value_.__r.__words[2] = v76;
        v75->__r_.__value_.__l.__size_ = 0;
        v75->__r_.__value_.__r.__words[2] = 0;
        v75->__r_.__value_.__r.__words[0] = 0;
        v77 = std::string::append(&v114, "so the 32 bit output type could not be safely converted to ");
        v78 = v77->__r_.__value_.__r.__words[2];
        *&v113.__r_.__value_.__l.__data_ = *&v77->__r_.__value_.__l.__data_;
        v113.__r_.__value_.__r.__words[2] = v78;
        v77->__r_.__value_.__l.__size_ = 0;
        v77->__r_.__value_.__r.__words[2] = 0;
        v77->__r_.__value_.__r.__words[0] = 0;
        v79 = std::string::append(&v113, "UInt16 so that it could be supported on ANE.");
        v80 = v79->__r_.__value_.__r.__words[2];
        *__p = *&v79->__r_.__value_.__l.__data_;
        *&__p[16] = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_60:
            if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_75;
          }
        }

        else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        operator delete(v113.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v114.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v110.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v100.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_80;
        }

LABEL_79:
        operator delete(v103.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_66:
          if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

LABEL_81:
          v45 = v101.__r_.__value_.__r.__words[0];
LABEL_82:
          operator delete(v45);
LABEL_83:
          if (v115 != v117)
          {
            free(v115);
          }

          return matched;
        }

LABEL_80:
        operator delete(v102.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      }

      if (*(v108 + 9))
      {
        v81 = v108 - 16;
      }

      else
      {
        v81 = 0;
      }

      v82 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v81, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v82)
      {
        v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
      }

      else
      {
        v83 = 0;
      }

      v113.__r_.__value_.__r.__words[0] = mlir::getRankPromotionTypeForANE(v82, v83);
      v113.__r_.__value_.__l.__size_ = v85;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v113);
      v88 = v87;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v105);
      v90 = mlir::MemRefType::get(ArgAttrsAttr, v88, ElementTypeOrSelf, 0, 0, 0);
      v91 = v105;
      if (v90 == (v105[1] & 0xFFFFFFFFFFFFFFF8))
      {
        v92 = v108;
        v93 = *(v108 - 2);
        if (v93)
        {
          do
          {
            v94 = *v93;
            v95 = v93[2];
            ((*a6)[5])(a6, v95);
            v96 = v93[1];
            if (v96)
            {
              v97 = *v93;
              *v96 = *v93;
              if (v97)
              {
                v97[1] = v93[1];
              }
            }

            v93[3] = v91;
            v93[1] = v91;
            v98 = *v91;
            *v93 = *v91;
            if (v98)
            {
              *(v98 + 8) = v93;
            }

            *v91 = v93;
            ((*a6)[6])(a6, v95);
            v93 = v94;
          }

          while (v94);
          v92 = v108;
        }

        mlir::ConversionPatternRewriter::eraseOp(a6, v92);
        matched = 1;
        goto LABEL_83;
      }

      *__p = operator new(0x60uLL);
      *&__p[8] = xmmword_1E0982980;
      strcpy(*__p, "failed: output shape requires a reshape, but the op is not available on A12/A13-class ANEs.");
LABEL_26:
      matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      v45 = *__p;
      goto LABEL_82;
    }
  }

  v99 = std::__throw_bad_optional_access[abi:nn200100]();
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)1>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)1>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v108 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v107[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v107[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v106 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v106 = 0;
    if (v19)
    {
      v113.__r_.__value_.__r.__words[0] = &v106;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v113, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
      }
    }
  }

  v115 = v117;
  v116 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v108, 0);
  v22 = (*(*(*(v108 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v106, v24, &v115, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    goto LABEL_26;
  }

  if (v116 != 1)
  {
    std::to_string(&v113, v116);
    v46 = std::string::insert(&v113, 0, "expected a single axis, but found ");
    v47 = v46->__r_.__value_.__r.__words[2];
    *__p = *&v46->__r_.__value_.__l.__data_;
    *&__p[16] = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }
    }

    else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    v45 = v113.__r_.__value_.__r.__words[0];
    goto LABEL_82;
  }

  v27 = *v115;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v104 = 1;
  v105 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v107);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v107);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v37);
      v114.__r_.__value_.__r.__words[0] = &v114.__r_.__value_.__r.__words[2];
      v114.__r_.__value_.__r.__words[2] = v27;
      v114.__r_.__value_.__l.__size_ = 0x100000001;
      v113.__r_.__value_.__r.__words[0] = &v113.__r_.__value_.__r.__words[2];
      memset_pattern16(&v113.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v113.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v112 = 0u;
      *&__p[8] = 0x400000004;
      v110.__r_.__value_.__r.__words[0] = 1;
      IntegerType = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v41 = mlir::RankedTensorType::get(&v110, 1, IntegerType, 0);
      if (v41)
      {
        v42 = v41;
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
        v41 = v42;
      }

      else
      {
        v43 = 0;
      }

      v103.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v114.__r_.__value_.__r.__words[2], 8, 8, 1, 0);
      v110.__r_.__value_.__r.__words[0] = v38;
      v110.__r_.__value_.__l.__size_ = v39;
      v109.__r_.__value_.__r.__words[0] = 2;
      v48 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v49 = mlir::RankedTensorType::get(&v109, 1, v48, 0);
      if (v49)
      {
        v50 = v49;
        v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
        v49 = v50;
      }

      else
      {
        v51 = 0;
      }

      v102.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v49, v51, &v110, 16, 8, 1, 0);
      v52 = v113.__r_.__value_.__r.__words[0];
      v53 = LODWORD(v113.__r_.__value_.__r.__words[1]);
      v109.__r_.__value_.__r.__words[0] = LODWORD(v113.__r_.__value_.__r.__words[1]);
      v54 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v55 = mlir::RankedTensorType::get(&v109, 1, v54, 0);
      if (v55)
      {
        v56 = v55;
        v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
        v55 = v56;
      }

      else
      {
        v57 = 0;
      }

      v101.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v52, 8 * v53, 8, 1, 0);
      v58 = *__p;
      v59 = *&__p[8];
      v109.__r_.__value_.__r.__words[0] = *&__p[8];
      v60 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v61 = mlir::RankedTensorType::get(&v109, 1, v60, 0);
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

      v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v61, v63, v58, 8 * v59, 8, 1, 0);
      v105 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a6 + 1, v8, &v105, &v103, &v104, &v102, &v101, &v109) - 16);
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v113.__r_.__value_.__l.__data_ != &v113.__r_.__value_.__r.__words[2])
      {
        free(v113.__r_.__value_.__l.__data_);
      }

      if (v114.__r_.__value_.__l.__data_ != &v114.__r_.__value_.__r.__words[2])
      {
        free(v114.__r_.__value_.__l.__data_);
      }

      v64 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v27);
      if (v64 >= 0x10000)
      {
        std::to_string(&v101, v64);
        v65 = std::string::insert(&v101, 0, "Tensor size on reduction axis (");
        v66 = v65->__r_.__value_.__r.__words[2];
        *&v102.__r_.__value_.__l.__data_ = *&v65->__r_.__value_.__l.__data_;
        v102.__r_.__value_.__r.__words[2] = v66;
        v65->__r_.__value_.__l.__size_ = 0;
        v65->__r_.__value_.__r.__words[2] = 0;
        v65->__r_.__value_.__r.__words[0] = 0;
        v67 = std::string::append(&v102, ") ");
        v68 = v67->__r_.__value_.__r.__words[2];
        *&v103.__r_.__value_.__l.__data_ = *&v67->__r_.__value_.__l.__data_;
        v103.__r_.__value_.__r.__words[2] = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        v69 = std::string::append(&v103, "exceeds the maximum value of UInt16 (");
        v70 = v69->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = *&v69->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v100, 0xFFFF);
        if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &v100;
        }

        else
        {
          v71 = v100.__r_.__value_.__r.__words[0];
        }

        if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v100.__r_.__value_.__l.__size_;
        }

        v73 = std::string::append(&v109, v71, size);
        v74 = v73->__r_.__value_.__r.__words[2];
        *&v110.__r_.__value_.__l.__data_ = *&v73->__r_.__value_.__l.__data_;
        v110.__r_.__value_.__r.__words[2] = v74;
        v73->__r_.__value_.__l.__size_ = 0;
        v73->__r_.__value_.__r.__words[2] = 0;
        v73->__r_.__value_.__r.__words[0] = 0;
        v75 = std::string::append(&v110, "), ");
        v76 = v75->__r_.__value_.__r.__words[2];
        *&v114.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
        v114.__r_.__value_.__r.__words[2] = v76;
        v75->__r_.__value_.__l.__size_ = 0;
        v75->__r_.__value_.__r.__words[2] = 0;
        v75->__r_.__value_.__r.__words[0] = 0;
        v77 = std::string::append(&v114, "so the 32 bit output type could not be safely converted to ");
        v78 = v77->__r_.__value_.__r.__words[2];
        *&v113.__r_.__value_.__l.__data_ = *&v77->__r_.__value_.__l.__data_;
        v113.__r_.__value_.__r.__words[2] = v78;
        v77->__r_.__value_.__l.__size_ = 0;
        v77->__r_.__value_.__r.__words[2] = 0;
        v77->__r_.__value_.__r.__words[0] = 0;
        v79 = std::string::append(&v113, "UInt16 so that it could be supported on ANE.");
        v80 = v79->__r_.__value_.__r.__words[2];
        *__p = *&v79->__r_.__value_.__l.__data_;
        *&__p[16] = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_60:
            if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_75;
          }
        }

        else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        operator delete(v113.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v114.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v110.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v100.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_80;
        }

LABEL_79:
        operator delete(v103.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_66:
          if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

LABEL_81:
          v45 = v101.__r_.__value_.__r.__words[0];
LABEL_82:
          operator delete(v45);
LABEL_83:
          if (v115 != v117)
          {
            free(v115);
          }

          return matched;
        }

LABEL_80:
        operator delete(v102.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      }

      if (*(v108 + 9))
      {
        v81 = v108 - 16;
      }

      else
      {
        v81 = 0;
      }

      v82 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v81, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v82)
      {
        v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
      }

      else
      {
        v83 = 0;
      }

      v113.__r_.__value_.__r.__words[0] = mlir::getRankPromotionTypeForANE(v82, v83);
      v113.__r_.__value_.__l.__size_ = v85;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v113);
      v88 = v87;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v105);
      v90 = mlir::MemRefType::get(ArgAttrsAttr, v88, ElementTypeOrSelf, 0, 0, 0);
      v91 = v105;
      if (v90 == (v105[1] & 0xFFFFFFFFFFFFFFF8))
      {
        v92 = v108;
        v93 = *(v108 - 2);
        if (v93)
        {
          do
          {
            v94 = *v93;
            v95 = v93[2];
            ((*a6)[5])(a6, v95);
            v96 = v93[1];
            if (v96)
            {
              v97 = *v93;
              *v96 = *v93;
              if (v97)
              {
                v97[1] = v93[1];
              }
            }

            v93[3] = v91;
            v93[1] = v91;
            v98 = *v91;
            *v93 = *v91;
            if (v98)
            {
              *(v98 + 8) = v93;
            }

            *v91 = v93;
            ((*a6)[6])(a6, v95);
            v93 = v94;
          }

          while (v94);
          v92 = v108;
        }

        mlir::ConversionPatternRewriter::eraseOp(a6, v92);
        matched = 1;
        goto LABEL_83;
      }

      *__p = operator new(0x60uLL);
      *&__p[8] = xmmword_1E0982980;
      strcpy(*__p, "failed: output shape requires a reshape, but the op is not available on A12/A13-class ANEs.");
LABEL_26:
      matched = mlir::logMatchFailure(__p, *(v108 + 3), a6);
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      v45 = *__p;
      goto LABEL_82;
    }
  }

  v99 = std::__throw_bad_optional_access[abi:nn200100]();
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)2>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)2>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v113[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v113[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v112 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
      }
    }
  }

  v121 = v123;
  v122 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v114, 0);
  v22 = (*(*(*(v114 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_101;
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v45 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v46 = v45->__r_.__value_.__r.__words[2];
    *__p = *&v45->__r_.__value_.__l.__data_;
    *&__p[16] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_101;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
LABEL_101:
    if (v121 != v123)
    {
      free(v121);
    }

    return matched;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v110 = 1;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v113);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v37);
      v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
      v120.__r_.__value_.__r.__words[2] = v27;
      v120.__r_.__value_.__l.__size_ = 0x100000001;
      v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
      memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v119.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v118 = 0u;
      *&__p[8] = 0x400000004;
      v116.__r_.__value_.__r.__words[0] = 1;
      IntegerType = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v41 = mlir::RankedTensorType::get(&v116, 1, IntegerType, 0);
      if (v41)
      {
        v42 = v41;
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
        v41 = v42;
      }

      else
      {
        v43 = 0;
      }

      v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v120.__r_.__value_.__r.__words[2], 8, 8, 1, 0);
      v116.__r_.__value_.__r.__words[0] = v38;
      v116.__r_.__value_.__l.__size_ = v39;
      v115.__r_.__value_.__r.__words[0] = 2;
      v47 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v48 = mlir::RankedTensorType::get(&v115, 1, v47, 0);
      if (v48)
      {
        v49 = v48;
        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
        v48 = v49;
      }

      else
      {
        v50 = 0;
      }

      v108.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v48, v50, &v116, 16, 8, 1, 0);
      v51 = v119.__r_.__value_.__r.__words[0];
      v52 = LODWORD(v119.__r_.__value_.__r.__words[1]);
      v115.__r_.__value_.__r.__words[0] = LODWORD(v119.__r_.__value_.__r.__words[1]);
      v53 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v54 = mlir::RankedTensorType::get(&v115, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      v107.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v51, 8 * v52, 8, 1, 0);
      v57 = *__p;
      v58 = *&__p[8];
      v115.__r_.__value_.__r.__words[0] = *&__p[8];
      v59 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v60 = mlir::RankedTensorType::get(&v115, 1, v59, 0);
      if (v60)
      {
        v61 = v60;
        v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
        v60 = v61;
      }

      else
      {
        v62 = 0;
      }

      v115.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v60, v62, v57, 8 * v58, 8, 1, 0);
      v111 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a6 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16);
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
      {
        free(v119.__r_.__value_.__l.__data_);
      }

      if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
      {
        free(v120.__r_.__value_.__l.__data_);
      }

      v63 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v27);
      if (v63 >= 0x10000)
      {
        std::to_string(&v107, v63);
        v64 = std::string::insert(&v107, 0, "Tensor size on reduction axis (");
        v65 = v64->__r_.__value_.__r.__words[2];
        *&v108.__r_.__value_.__l.__data_ = *&v64->__r_.__value_.__l.__data_;
        v108.__r_.__value_.__r.__words[2] = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        v66 = std::string::append(&v108, ") ");
        v67 = v66->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        v68 = std::string::append(&v109, "exceeds the maximum value of UInt16 (");
        v69 = v68->__r_.__value_.__r.__words[2];
        *&v115.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
        v115.__r_.__value_.__r.__words[2] = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v106, 0xFFFF);
        if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v106;
        }

        else
        {
          v70 = v106.__r_.__value_.__r.__words[0];
        }

        if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v106.__r_.__value_.__l.__size_;
        }

        v72 = std::string::append(&v115, v70, size);
        v73 = v72->__r_.__value_.__r.__words[2];
        *&v116.__r_.__value_.__l.__data_ = *&v72->__r_.__value_.__l.__data_;
        v116.__r_.__value_.__r.__words[2] = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = std::string::append(&v116, "), ");
        v75 = v74->__r_.__value_.__r.__words[2];
        *&v120.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
        v120.__r_.__value_.__r.__words[2] = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        v76 = std::string::append(&v120, "so the 32 bit output type could not be safely converted to ");
        v77 = v76->__r_.__value_.__r.__words[2];
        *&v119.__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
        v119.__r_.__value_.__r.__words[2] = v77;
        v76->__r_.__value_.__l.__size_ = 0;
        v76->__r_.__value_.__r.__words[2] = 0;
        v76->__r_.__value_.__r.__words[0] = 0;
        v78 = std::string::append(&v119, "UInt16 so that it could be supported on ANE.");
        v79 = v78->__r_.__value_.__r.__words[2];
        *__p = *&v78->__r_.__value_.__l.__data_;
        *&__p[16] = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_59:
            if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_74;
          }
        }

        else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        operator delete(v119.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_60:
          if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_75;
        }

LABEL_74:
        operator delete(v120.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v116.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v106.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v115.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

LABEL_80:
          operator delete(v107.__r_.__value_.__l.__data_);
          goto LABEL_101;
        }

LABEL_79:
        operator delete(v108.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_80;
      }

      if (*(v114 + 9))
      {
        v80 = v114 - 16;
      }

      else
      {
        v80 = 0;
      }

      v81 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v80, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v81)
      {
        v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v81 + 8);
      }

      else
      {
        v82 = 0;
      }

      *__p = mlir::getRankPromotionTypeForANE(v81, v82);
      *&__p[8] = v83;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(__p);
      v86 = v85;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
      v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v86, ElementTypeOrSelf, 0, 0, 0);
      v88 = v111;
      v89 = v114;
      if (v119.__r_.__value_.__r.__words[0] == (v111[1] & 0xFFFFFFFFFFFFFFF8))
      {
        v90 = *(v114 - 2);
        if (!v90)
        {
          goto LABEL_100;
        }

        do
        {
          v91 = *v90;
          v92 = v90[2];
          ((*a6)[5])(a6, v92);
          v93 = v90[1];
          if (v93)
          {
            v94 = *v90;
            *v93 = *v90;
            if (v94)
            {
              v94[1] = v90[1];
            }
          }

          v90[3] = v88;
          v90[1] = v88;
          v95 = *v88;
          *v90 = *v88;
          if (v95)
          {
            *(v95 + 8) = v90;
          }

          *v88 = v90;
          ((*a6)[6])(a6, v92);
          v90 = v91;
        }

        while (v91);
      }

      else
      {
        v96 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 1), *(v114 + 3), &v119, &v111);
        v89 = v114;
        v97 = *(v114 - 2);
        if (!v97)
        {
LABEL_100:
          mlir::ConversionPatternRewriter::eraseOp(a6, v89);
          matched = 1;
          goto LABEL_101;
        }

        v98 = (v96 - 16);
        do
        {
          v99 = *v97;
          v100 = v97[2];
          ((*a6)[5])(a6, v100);
          v101 = v97[1];
          if (v101)
          {
            v102 = *v97;
            *v101 = *v97;
            if (v102)
            {
              v102[1] = v97[1];
            }
          }

          v97[3] = v98;
          v97[1] = v98;
          v103 = *v98;
          *v97 = *v98;
          if (v103)
          {
            *(v103 + 8) = v97;
          }

          *v98 = v97;
          ((*a6)[6])(a6, v100);
          v97 = v99;
        }

        while (v99);
      }

      v89 = v114;
      goto LABEL_100;
    }
  }

  v105 = std::__throw_bad_optional_access[abi:nn200100]();
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)3>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)3>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v113[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v113[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v112 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
      }
    }
  }

  v121 = v123;
  v122 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v114, 0);
  v22 = (*(*(*(v114 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_101;
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v45 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v46 = v45->__r_.__value_.__r.__words[2];
    *__p = *&v45->__r_.__value_.__l.__data_;
    *&__p[16] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_101;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
LABEL_101:
    if (v121 != v123)
    {
      free(v121);
    }

    return matched;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v110 = 1;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v113);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v37);
      v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
      v120.__r_.__value_.__r.__words[2] = v27;
      v120.__r_.__value_.__l.__size_ = 0x100000001;
      v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
      memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v119.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v118 = 0u;
      *&__p[8] = 0x400000004;
      v116.__r_.__value_.__r.__words[0] = 1;
      IntegerType = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v41 = mlir::RankedTensorType::get(&v116, 1, IntegerType, 0);
      if (v41)
      {
        v42 = v41;
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
        v41 = v42;
      }

      else
      {
        v43 = 0;
      }

      v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v120.__r_.__value_.__r.__words[2], 8, 8, 1, 0);
      v116.__r_.__value_.__r.__words[0] = v38;
      v116.__r_.__value_.__l.__size_ = v39;
      v115.__r_.__value_.__r.__words[0] = 2;
      v47 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v48 = mlir::RankedTensorType::get(&v115, 1, v47, 0);
      if (v48)
      {
        v49 = v48;
        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
        v48 = v49;
      }

      else
      {
        v50 = 0;
      }

      v108.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v48, v50, &v116, 16, 8, 1, 0);
      v51 = v119.__r_.__value_.__r.__words[0];
      v52 = LODWORD(v119.__r_.__value_.__r.__words[1]);
      v115.__r_.__value_.__r.__words[0] = LODWORD(v119.__r_.__value_.__r.__words[1]);
      v53 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v54 = mlir::RankedTensorType::get(&v115, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      v107.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v51, 8 * v52, 8, 1, 0);
      v57 = *__p;
      v58 = *&__p[8];
      v115.__r_.__value_.__r.__words[0] = *&__p[8];
      v59 = mlir::Builder::getIntegerType(a6 + 1, 64, 0);
      v60 = mlir::RankedTensorType::get(&v115, 1, v59, 0);
      if (v60)
      {
        v61 = v60;
        v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
        v60 = v61;
      }

      else
      {
        v62 = 0;
      }

      v115.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v60, v62, v57, 8 * v58, 8, 1, 0);
      v111 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a6 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16);
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
      {
        free(v119.__r_.__value_.__l.__data_);
      }

      if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
      {
        free(v120.__r_.__value_.__l.__data_);
      }

      v63 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v27);
      if (v63 >= 0x10000)
      {
        std::to_string(&v107, v63);
        v64 = std::string::insert(&v107, 0, "Tensor size on reduction axis (");
        v65 = v64->__r_.__value_.__r.__words[2];
        *&v108.__r_.__value_.__l.__data_ = *&v64->__r_.__value_.__l.__data_;
        v108.__r_.__value_.__r.__words[2] = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        v66 = std::string::append(&v108, ") ");
        v67 = v66->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        v68 = std::string::append(&v109, "exceeds the maximum value of UInt16 (");
        v69 = v68->__r_.__value_.__r.__words[2];
        *&v115.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
        v115.__r_.__value_.__r.__words[2] = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v106, 0xFFFF);
        if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v106;
        }

        else
        {
          v70 = v106.__r_.__value_.__r.__words[0];
        }

        if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v106.__r_.__value_.__l.__size_;
        }

        v72 = std::string::append(&v115, v70, size);
        v73 = v72->__r_.__value_.__r.__words[2];
        *&v116.__r_.__value_.__l.__data_ = *&v72->__r_.__value_.__l.__data_;
        v116.__r_.__value_.__r.__words[2] = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = std::string::append(&v116, "), ");
        v75 = v74->__r_.__value_.__r.__words[2];
        *&v120.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
        v120.__r_.__value_.__r.__words[2] = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        v76 = std::string::append(&v120, "so the 32 bit output type could not be safely converted to ");
        v77 = v76->__r_.__value_.__r.__words[2];
        *&v119.__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
        v119.__r_.__value_.__r.__words[2] = v77;
        v76->__r_.__value_.__l.__size_ = 0;
        v76->__r_.__value_.__r.__words[2] = 0;
        v76->__r_.__value_.__r.__words[0] = 0;
        v78 = std::string::append(&v119, "UInt16 so that it could be supported on ANE.");
        v79 = v78->__r_.__value_.__r.__words[2];
        *__p = *&v78->__r_.__value_.__l.__data_;
        *&__p[16] = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a6);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_59:
            if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_74;
          }
        }

        else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        operator delete(v119.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_60:
          if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_75;
        }

LABEL_74:
        operator delete(v120.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v116.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v106.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v115.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

LABEL_80:
          operator delete(v107.__r_.__value_.__l.__data_);
          goto LABEL_101;
        }

LABEL_79:
        operator delete(v108.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_80;
      }

      if (*(v114 + 9))
      {
        v80 = v114 - 16;
      }

      else
      {
        v80 = 0;
      }

      v81 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v80, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v81)
      {
        v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v81 + 8);
      }

      else
      {
        v82 = 0;
      }

      *__p = mlir::getRankPromotionTypeForANE(v81, v82);
      *&__p[8] = v83;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(__p);
      v86 = v85;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
      v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v86, ElementTypeOrSelf, 0, 0, 0);
      v88 = v111;
      v89 = v114;
      if (v119.__r_.__value_.__r.__words[0] == (v111[1] & 0xFFFFFFFFFFFFFFF8))
      {
        v90 = *(v114 - 2);
        if (!v90)
        {
          goto LABEL_100;
        }

        do
        {
          v91 = *v90;
          v92 = v90[2];
          ((*a6)[5])(a6, v92);
          v93 = v90[1];
          if (v93)
          {
            v94 = *v90;
            *v93 = *v90;
            if (v94)
            {
              v94[1] = v90[1];
            }
          }

          v90[3] = v88;
          v90[1] = v88;
          v95 = *v88;
          *v90 = *v88;
          if (v95)
          {
            *(v95 + 8) = v90;
          }

          *v88 = v90;
          ((*a6)[6])(a6, v92);
          v90 = v91;
        }

        while (v91);
      }

      else
      {
        v96 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 1), *(v114 + 3), &v119, &v111);
        v89 = v114;
        v97 = *(v114 - 2);
        if (!v97)
        {
LABEL_100:
          mlir::ConversionPatternRewriter::eraseOp(a6, v89);
          matched = 1;
          goto LABEL_101;
        }

        v98 = (v96 - 16);
        do
        {
          v99 = *v97;
          v100 = v97[2];
          ((*a6)[5])(a6, v100);
          v101 = v97[1];
          if (v101)
          {
            v102 = *v97;
            *v101 = *v97;
            if (v102)
            {
              v102[1] = v97[1];
            }
          }

          v97[3] = v98;
          v97[1] = v98;
          v103 = *v98;
          *v97 = *v98;
          if (v103)
          {
            *(v103 + 8) = v97;
          }

          *v98 = v97;
          ((*a6)[6])(a6, v100);
          v97 = v99;
        }

        while (v99);
      }

      v89 = v114;
      goto LABEL_100;
    }
  }

  v105 = std::__throw_bad_optional_access[abi:nn200100]();
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)4>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)4>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
    v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
    v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v22)
    {
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    }

    else
    {
      v23 = 0;
    }

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 1;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a6 + 1, v8, &v83, v89, &v82) - 16);
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a6)[5])(a6, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a6)[6])(a6, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a6, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a6)[5])(a6, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a6)[6])(a6, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a6);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)5>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)5>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
    v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
    v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v22)
    {
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    }

    else
    {
      v23 = 0;
    }

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 1;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a6 + 1, v8, &v83, v89, &v82) - 16);
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a6)[5])(a6, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a6)[6])(a6, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a6, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a6)[5])(a6, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a6)[6])(a6, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a6);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)6>::~ConvertReductionArg(void *a1)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)6>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t **a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a4, a5);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
    v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
    v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v22)
    {
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    }

    else
    {
      v23 = 0;
    }

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 1;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a6 + 1, v8, &v83, v89, &v82) - 16);
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a6);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a6)[5])(a6, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a6)[6])(a6, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a6, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a6)[5])(a6, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a6)[6])(a6, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a6);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  return matched;
}

void mlir::anonymous namespace::ConvertSignBit::~ConvertSignBit(mlir::_anonymous_namespace_::ConvertSignBit *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SignbitOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SignbitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SignbitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertSignBit::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  mlir::TypeConverter::TypeConverter(v12, *(a1 + 96));
  v7 = *(a2 + 24);
  v13[0] = *(a3 + 40);
  v13[1] = 0;
  v11 = mlir::ValueRange::dereference_iterator(v13, 0);
  v13[0] = mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanZero,mlir::Value &>(a4 + 1, v7, &v11);
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v11 = mlir::TypeConverter::convertType(v12, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v10 = mlir::OpBuilder::create<mlir::anec::Cast,mlir::Type &,mlir::anec::ElementwiseNotEqualZero &>((a4 + 1), *(a2 + 24), &v11, v13);
  ((*a4)[1])(a4, a2, v10);
  mlir::TypeConverter::~TypeConverter(v12);
}

void mlir::anonymous namespace::ConvertTile::~ConvertTile(mlir::_anonymous_namespace_::ConvertTile *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::TileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::TileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::TileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertTile::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v26[5] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x500000000;
  __p = *(a3 + 40);
  *&v23 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v23 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if ((mlir::matchConstantWithIntVector<unsigned long long>(v7, &v24) & 1) == 0)
  {
    __p = operator new(0x40uLL);
    v23 = xmmword_1E0982990;
    strcpy(__p, "failed: only constant multipliers are supported on ANEs.");
    goto LABEL_16;
  }

  if (v25 <= 1)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        v8 = v24;
        v9 = 3;
        goto LABEL_14;
      }
    }

    else
    {
      LODWORD(v25) = 0;
      if (HIDWORD(v25) > 3)
      {
        v10 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, 4uLL, 8);
        v10 = v25;
      }

      v12 = v24 + 8 * v10;
      *v12 = xmmword_1E0982AE0;
      v12[1] = unk_1E0982AF0;
      LODWORD(v25) = v25 + 4;
      if (v25 <= 3)
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    __p = *(a3 + 40);
    *&v23 = 0;
    v13 = mlir::ValueRange::dereference_iterator(&__p, 0);
    v21 = v25;
    __p = v13;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v15 = mlir::RankedTensorType::get(&v21, 1, IntegerType, 0);
    if (v15)
    {
      v16 = v15;
      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
      v15 = v16;
    }

    else
    {
      v17 = 0;
    }

    matched = 1;
    v20 = mlir::DenseElementsAttr::getFromRawBuffer(v15, v17, v24, 8 * v25, 8, 1, 0);
    v18 = mlir::OpBuilder::create<mlir::anec::Tile,mlir::Value,mlir::DenseIntElementsAttr>(a4 + 1, *(a2 + 24), &__p, &v20);
    ((*a4)[1])(a4, a2, v18);
    goto LABEL_24;
  }

  if (v25 == 2)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v24, v24 + 8, 1uLL, 1uLL);
    v8 = v24;
  }

  else
  {
    if (v25 != 3)
    {
      goto LABEL_20;
    }

    v8 = v24 + 16;
  }

  v9 = 1;
LABEL_14:
  llvm::SmallVectorImpl<unsigned long long>::insert(&v24, v8, v9, 1uLL);
  if (v25 > 3)
  {
    goto LABEL_20;
  }

LABEL_15:
  __p = operator new(0x38uLL);
  v23 = xmmword_1E0982830;
  strcpy(__p, "failed: multiplier numbers must be greater than 3");
LABEL_16:
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

LABEL_24:
  if (v24 != v26)
  {
    free(v24);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Tile,mlir::Value,mlir::DenseIntElementsAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Tile,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Tile,mlir::Value,mlir::DenseIntElementsAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Tile::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Tile,void>::id)
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

void mlir::anonymous namespace::ConvertFusionOp::~ConvertFusionOp(mlir::_anonymous_namespace_::ConvertFusionOp *this)
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

uint64_t mlir::OpConversionPattern<mlir::mpsx::FusionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mpsx::FusionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mpsx::FusionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertFusionOp::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v249 = *MEMORY[0x1E69E9840];
  v222 = a2;
  mlir::mpsx::FusionOp::getCustomFusionType(&v222, __p);
  if ((__p[16] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v8 = *__p;
  if (*&__p[8] > 16)
  {
    if (*&__p[8] == 17)
    {
      if (!memcmp(*__p, "ANECQuantizedConv", 0x11uLL))
      {
        v52 = *(a3 + 16);
        *__p = *a3;
        *&__p[16] = v52;
        v228 = *(a3 + 32);
        v229 = *(a3 + 48);
      }

      goto LABEL_40;
    }

    if (*&__p[8] == 20)
    {
      if (!memcmp(*__p, "ANECRingBufferWriter", 0x14uLL))
      {
        v46 = v222;
        v48 = *(a3 + 48);
        *__p = *(a3 + 40);
        v47 = *__p;
        *&__p[8] = v48;
        v49 = mlir::ValueRange::dereference_iterator(__p, 0);
        v226 = v49;
        *__p = v47;
        *&__p[8] = v48;
        v225 = mlir::ValueRange::dereference_iterator(__p, 1);
        v50 = (*(v49 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v50)
        {
          v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v50 + 8);
        }

        else
        {
          v51 = 0;
        }

        *__p = v50;
        *&__p[8] = v51;
        mlir::CallableOpInterface::getArgAttrsAttr(__p);
        v63 = v62;
        v64 = (*(v225 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v64)
        {
          v65 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v64 + 8);
        }

        else
        {
          v65 = 0;
        }

        *__p = v64;
        *&__p[8] = v65;
        mlir::CallableOpInterface::getArgAttrsAttr(__p);
        v221 = v66;
        v224 = 0;
        v234[0] = &v224;
        *__p = v234;
        mlir::detail::walk<mlir::ForwardIterator>(v46, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp33convertFusionOpToRingBufferWriterENS1_4mpsx8FusionOpENSE_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps16AssignVariableOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_, __p, 1);
        *__p = *(*(v224 + 72) + 56);
        DefiningOp = mlir::Value::getDefiningOp(__p);
        v68 = *(*(DefiningOp + 72) + 152);
        v244 = v246;
        v245 = 0x400000000;
        if (mlir::matchConstantWithIntVector<unsigned long>(v68, &v244))
        {
          if (v245)
          {
            v69 = v244;
            v70 = 8 * v245;
            while (*v69 == 1)
            {
              ++v69;
              v70 -= 8;
              if (!v70)
              {
                goto LABEL_77;
              }
            }

            *__p = operator new(0x38uLL);
            *&__p[8] = xmmword_1E09829A0;
            strcpy(*__p, "failed: the stride should be 1 for slice update on ANE.");
            matched = mlir::logMatchFailure(__p, v46[3], a4);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          else
          {
LABEL_77:
            *__p = &__p[16];
            *&__p[8] = 0x600000000;
            v234[0] = &v234[2];
            v234[1] = 0x600000000;
            v230[0].n128_u64[0] = &v230[1].n128_u64[1];
            *(v230 + 8) = xmmword_1E09700D0;
            v71 = *(*(DefiningOp + 72) + 88);
            {
              v247 = v47;
              *&v248[0] = v48;
              v247 = mlir::ValueRange::offset_base(&v247, 2);
              *&v248[0] = 0;
              v72 = v48 - 2;
              if (v48 != 2)
              {
                v73 = 0;
                do
                {
                  v74 = mlir::ValueRange::dereference_iterator(&v247, v73);
                  v75 = *&__p[8];
                  if (*&__p[8] >= *&__p[12])
                  {
                    v76 = v74;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(__p, &__p[16], *&__p[8] + 1, 8);
                    v74 = v76;
                    v75 = *&__p[8];
                  }

                  *(*__p + 8 * v75) = v74;
                  ++*&__p[8];
                  v73 = *&v248[0] + 1;
                  *&v248[0] = v73;
                }

                while (v73 != v72);
              }

              if (v221 < v63)
              {
                if (!*(DefiningOp + 47) || (v250.var0 = "shrink_axis_mask", v250.var1 = 16, InherentAttr = mlir::Operation::getInherentAttr(DefiningOp, v250), (v94 & 1) == 0))
                {
                  v251.var0 = "shrink_axis_mask";
                  v251.var1 = 16;
                  InherentAttr = mlir::DictionaryAttr::get((DefiningOp + 56), v251);
                }

                v247 = InherentAttr;
                mlir::IntegerAttr::getValue(&v247, &v223);
                v95 = (*(v71 + 8) & 0xFFFFFFFFFFFFFFF8);
                if (v95)
                {
                  v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v95 + 8);
                }

                else
                {
                  v96 = 0;
                }

                v247 = v95;
                *&v248[0] = v96;
                v118 = *mlir::CallableOpInterface::getArgAttrsAttr(&v247);
                v247 = v248 + 8;
                *&v248[0] = 0xC00000000;
                mlir::anec::getANEDefaultLayout(v118, &v247);
              }

              v247 = SLODWORD(v234[1]);
              IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
              v150 = mlir::RankedTensorType::get(&v247, 1, IntegerType, 0);
              if (v150)
              {
                v151 = v150;
                v152 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
                v150 = v151;
              }

              else
              {
                v152 = 0;
              }

              v241 = mlir::DenseElementsAttr::getFromRawBuffer(v150, v152, v234[0], 8 * LODWORD(v234[1]), 8, 1, 0);
              v247 = v230[0].n128_i32[2];
              v153 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
              v154 = mlir::RankedTensorType::get(&v247, 1, v153, 0);
              if (v154)
              {
                v155 = v154;
                v156 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v154 + 8);
                v154 = v155;
              }

              else
              {
                v156 = 0;
              }

              matched = 1;
              v238 = mlir::DenseElementsAttr::getFromRawBuffer(v154, v156, v230[0].n128_u64[0], v230[0].n128_u64[1], 1, 1, 0);
              mlir::ValueRange::ValueRange(&v247, *__p, *&__p[8]);
              v157 = mlir::OpBuilder::create<mlir::anec::RingBufferWriter,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>((a4 + 8), v46[3], &v226, &v225, &v241, &v238, &v247);
              (*(*a4 + 8))(a4, v46, v157);
            }

            else
            {
              v247 = operator new(0x30uLL);
              v248[0] = xmmword_1E0982960;
              strcpy(v247, "failed: can not retrive the offset info.");
              matched = mlir::logMatchFailure(&v247, v46[3], a4);
              if (SHIBYTE(v248[0]) < 0)
              {
                operator delete(v247);
              }
            }

            if (v230[0].n128_u64[0] != &v230[1].n128_i8[8])
            {
              free(v230[0].n128_u64[0]);
            }

            if (v234[0] != &v234[2])
            {
              free(v234[0]);
            }

            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          matched = 0;
        }

        v148 = v244;
        if (v244 == v246)
        {
          return matched;
        }
      }

      else
      {
        if (*v8 != 0x676E695243454E41 || v8[1] != 0x6552726566667542 || *(v8 + 4) != 1919247457)
        {
          goto LABEL_40;
        }

        v14 = v222;
        v16 = *(a3 + 40);
        v15 = *(a3 + 48);
        *__p = v16;
        *&__p[8] = v15;
        v17 = mlir::ValueRange::dereference_iterator(__p, 0);
        v240 = v17;
        v244 = 0;
        v234[0] = &v244;
        *__p = v234;
        mlir::detail::walk<mlir::ForwardIterator>(v14, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp33convertFusionOpToRingBufferReaderENS1_4mpsx8FusionOpENSE_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps14StridedSliceOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_, __p, 1);
        v18 = *(*(v244 + 9) + 120);
        v241 = v243;
        v242 = 0x400000000;
        if (mlir::matchConstantWithIntVector<unsigned long>(v18, &v241))
        {
          if (v242)
          {
            v19 = v241;
            v20 = 8 * v242;
            while (*v19 == 1)
            {
              ++v19;
              v20 -= 8;
              if (!v20)
              {
                goto LABEL_25;
              }
            }

            *__p = operator new(0x40uLL);
            *&__p[8] = xmmword_1E0982990;
            strcpy(*__p, "failed: the stride should be 1 for strided slice on ANE.");
            matched = mlir::logMatchFailure(__p, v14[3], a4);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          else
          {
LABEL_25:
            *__p = &__p[16];
            *&__p[8] = 0x600000000;
            v234[0] = &v234[2];
            v234[1] = 0x600000000;
            v230[0].n128_u64[0] = &v230[1].n128_u64[1];
            *(v230 + 8) = xmmword_1E09700D0;
            v21 = *(*(v244 + 9) + 56);
            v22 = (v17[1] & 0xFFFFFFFFFFFFFFF8);
            if (v22)
            {
              v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
            }

            else
            {
              v23 = 0;
            }

            v247 = v22;
            *&v248[0] = v23;
            mlir::CallableOpInterface::getArgAttrsAttr(&v247);
            {
              v247 = v248 + 8;
              *&v248[0] = 0x600000000;
              if (mlir::matchConstantWithIntVector<unsigned long long>(*(*(v244 + 9) + 88), &v247))
              {
                v238 = v16;
                v239 = v15;
                v238 = mlir::ValueRange::offset_base(&v238, 1);
                v239 = 0;
                v109 = v15 - 1;
                if (v109)
                {
                  for (i = 0; i != v109; v239 = i)
                  {
                    v111 = mlir::ValueRange::dereference_iterator(&v238, i);
                    v112 = *&__p[8];
                    if (*&__p[8] >= *&__p[12])
                    {
                      v113 = v111;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(__p, &__p[16], *&__p[8] + 1, 8);
                      v111 = v113;
                      v112 = *&__p[8];
                    }

                    *(*__p + 8 * v112) = v111;
                    ++*&__p[8];
                    i = v239 + 1;
                  }
                }

                v238 = SLODWORD(v234[1]);
                v114 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
                v115 = mlir::RankedTensorType::get(&v238, 1, v114, 0);
                if (v115)
                {
                  v116 = v115;
                  v117 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v115 + 8);
                  v115 = v116;
                }

                else
                {
                  v117 = 0;
                }

                v223 = mlir::DenseElementsAttr::getFromRawBuffer(v115, v117, v234[0], 8 * LODWORD(v234[1]), 8, 1, 0);
                v238 = v230[0].n128_i32[2];
                v130 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
                v131 = mlir::RankedTensorType::get(&v238, 1, v130, 0);
                if (v131)
                {
                  v132 = v131;
                  v133 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v131 + 8);
                  v131 = v132;
                }

                else
                {
                  v133 = 0;
                }

                v235 = mlir::DenseElementsAttr::getFromRawBuffer(v131, v133, v230[0].n128_u64[0], v230[0].n128_u64[1], 1, 1, 0);
                v238 = SLODWORD(v248[0]);
                v134 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
                v135 = mlir::RankedTensorType::get(&v238, 1, v134, 0);
                if (v135)
                {
                  v136 = v135;
                  v137 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
                  v135 = v136;
                }

                else
                {
                  v137 = 0;
                }

                v226 = mlir::DenseElementsAttr::getFromRawBuffer(v135, v137, v247, 8 * LODWORD(v248[0]), 8, 1, 0);
                mlir::ValueRange::ValueRange(&v238, *__p, *&__p[8]);
                v138 = (*(v14 - 1) & 0xFFFFFFFFFFFFFFF8);
                if (v138)
                {
                  v139 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v138 + 8);
                }

                else
                {
                  v139 = 0;
                }

                RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v138, v139);
                v237 = v140;
                ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
                v143 = v142;
                isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
                v145 = mlir::MemRefType::get(ArgAttrsAttr, v143, isSplat, 0, 0, 0);
                v146 = v145;
                if (v145)
                {
                  v145 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v145 + 8);
                }

                RankPromotionTypeForANE = v146;
                v237 = v145;
                v147 = mlir::OpBuilder::create<mlir::anec::RingBufferReader,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>((a4 + 8), v14[3], &RankPromotionTypeForANE, &v240, &v223, &v235, &v226, &v238);
                (*(*a4 + 8))(a4, v14, v147);
                matched = 1;
              }

              else
              {
                matched = 0;
              }

              if (v247 != (v248 + 8))
              {
                free(v247);
              }
            }

            else
            {
              v247 = operator new(0x30uLL);
              v248[0] = xmmword_1E0982960;
              strcpy(v247, "failed: can not retrive the offset info.");
              matched = mlir::logMatchFailure(&v247, v14[3], a4);
              if (SHIBYTE(v248[0]) < 0)
              {
                operator delete(v247);
              }
            }

            if (v230[0].n128_u64[0] != &v230[1].n128_i8[8])
            {
              free(v230[0].n128_u64[0]);
            }

            if (v234[0] != &v234[2])
            {
              free(v234[0]);
            }

            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          matched = 0;
        }

        v148 = v241;
        if (v241 == v243)
        {
          return matched;
        }
      }

      free(v148);
      return matched;
    }
  }

  else
  {
    if (*&__p[8] == 14)
    {
      if (**__p == 0x7A697474656C6150 && *(*__p + 6) == 0x766E6F4364657A69)
      {
        v25 = v222;
        v26 = *(a3 + 40);
        v27 = *(a3 + 48);
        v28 = *(((v222 + 16 * ((*(v222 + 11) >> 23) & 1) + ((*(v222 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v222 + 10) + 8);
        if (v28)
        {
          v29 = v28 - 8;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29 + 32;
        v31 = *(v29 + 40);
        if (v31 != v29 + 32)
        {
          while (*(*(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v31, v7) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
          {
            matched = 0;
            v31 = *(v31 + 8);
            if (v31 == v30)
            {
              return matched;
            }
          }
        }

        if (v31 == v30)
        {
          return 0;
        }

        v53 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v31, v7);
        if (*(*(v53 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
        {
          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        v230[0].n128_u64[0] = v26;
        v230[0].n128_u64[1] = v27;
        v55 = mlir::ValueRange::dereference_iterator(v230, 0);
        v56 = *(*(v54 + 72) + 56);
        v234[0] = v55;
        v234[1] = v56;
        mlir::ValueRange::ValueRange(__p, v234, 2uLL);
        matched = 0;
        if (v58)
        {
          mlir::ConversionPatternRewriter::replaceOp(a4, v25, v57);
          for (j = *(v29 + 40); j != v30; j = *(j + 8))
          {
            v61 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(j, v59);
            mlir::ConversionPatternRewriter::eraseOp(a4, v61);
          }

          return 1;
        }

        return matched;
      }

      goto LABEL_40;
    }

    if (*&__p[8] == 16)
    {
      if (memcmp(*__p, "PalettizedLinear", 0x10uLL))
      {
        if (!memcmp(v8, "ANECTensorBuffer", 0x10uLL))
        {
          v9 = v222;
          v219 = *(a3 + 40);
          v10 = (*(v222 - 1) & 0xFFFFFFFFFFFFFFF8);
          if (v10)
          {
            v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
          }

          else
          {
            v11 = 0;
          }

          *__p = v10;
          *&__p[8] = v11;
          v80 = mlir::CallableOpInterface::getArgAttrsAttr(__p);
          if (v81 <= 2)
          {
            *__p = "Error: do not support tensor buffer op with rank <= 2";
            LOWORD(v228) = 259;
            v234[0] = __p;
            v82 = *(a4 + 16);
            if (!v82)
            {
              return 0;
            }

            goto LABEL_120;
          }

          v83 = v81;
          Instance = mlir::ANEPropertiesRegistry::getInstance(v80);
          Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(a4 + 8));
          if (Properties)
          {
            v87 = *Properties;
          }

          else
          {
            v87 = 0;
          }

          if (v83 == 3 && (v87 & 1) == 0)
          {
            v97 = "Error: unsupported NCW layout for rank3 tensor buffer. Please use CHW instead.";
            goto LABEL_119;
          }

          v238 = 0;
          RankPromotionTypeForANE = 0;
          v98 = *(((v9 + 16 * ((*(v9 + 11) >> 23) & 1) + ((*(v9 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 10) + 8);
          if (v98)
          {
            v99 = v98 - 8;
          }

          else
          {
            v99 = 0;
          }

          *__p = &v238;
          *&__p[8] = &RankPromotionTypeForANE;
          v100 = *(v99 + 40);
          v101 = v99 + 32;
          if (v100 != v99 + 32)
          {
            do
            {
              v102 = *(v100 + 8);
              v103 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v100, v86);
              v100 = v102;
            }

            while (v102 != v101);
          }

          v240 = 0;
          v244 = 0;
          *__p = v219;
          v223 = mlir::ValueRange::dereference_iterator(__p, 0);
          if (mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&v238))
          {
            v104 = *(v9 + 9);
            if (v104)
            {
              v105 = v9 - 16;
            }

            else
            {
              v105 = 0;
            }

            *__p = v105;
            *&__p[8] = v104;
            mlir::ResultRange::use_begin(__p, v234);
            v106 = *(v9 + 9);
            if (v106)
            {
              v107 = v9 - 16;
            }

            else
            {
              v107 = 0;
            }

            v230[0].n128_u64[0] = v107;
            v230[0].n128_u64[1] = v106;
            mlir::ResultRange::use_end(v230, (&v228 + 8));
            *&v228 = v234[4];
            *__p = *v234;
            *&__p[16] = *&v234[2];
            if (*(*(*(v234[4] + 2) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id)
            {
              v119 = v238;
              if (*(v238 + 9))
              {
                v120 = v238 - 16;
              }

              else
              {
                v120 = 0;
              }

              v121 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v120, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
              v247 = v119;
              v241 = v121;
              *__p = &__p[16];
              *&__p[8] = 0x600000000;
              InterleaveAttr = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v247);
              mlir::getValues<unsigned long>(InterleaveAttr, __p);
              mlir::ArrayAttr::getValue(&v241);
              v123 = 1;
              IndexFromDim = mlir::anec::getIndexFromDim(1, v124);
              v126 = *__p;
              if (v127)
              {
                v128 = *(*__p + 8 * IndexFromDim);
                if (*&__p[8])
                {
                  v129 = 0;
                  while (IndexFromDim == v129 || *(*__p + 8 * v129) == 1)
                  {
                    if (*&__p[8] == ++v129)
                    {
                      goto LABEL_207;
                    }
                  }

                  v123 = 1;
                }

                else
                {
LABEL_207:
                  v234[0] = &v234[2];
                  v234[1] = 0x600000000;
                  if ((mlir::calculateANEStridesFromAffineMap(v241, v234) & 1) != 0 && (v159 = LODWORD(v234[1]), mlir::ArrayAttr::getValue(&v241), v160 == v159))
                  {
                    v161 = LODWORD(v234[1]) - 1;
                    v162 = (v234[0] + 8);
                    do
                    {
                      if (!v161)
                      {
                        v230[0].n128_u64[0] = 1;
                        v184 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
                        v185 = mlir::RankedTensorType::get(v230, 1, v184, 0);
                        v186 = v185;
                        if (v185)
                        {
                          v187 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v185 + 8);
                        }

                        else
                        {
                          v187 = 0;
                        }

                        LOBYTE(v235) = v128;
                        v240 = mlir::DenseElementsAttr::getFromRawBuffer(v186, v187, &v235, 1, 1, 1, 0);
                        v230[0].n128_u64[0] = SLODWORD(v234[1]);
                        v198 = mlir::Builder::getIntegerType((a4 + 8), 64, 1);
                        v199 = mlir::RankedTensorType::get(v230, 1, v198, 0);
                        v200 = v199;
                        if (v199)
                        {
                          v201 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v199 + 8);
                        }

                        else
                        {
                          v201 = 0;
                        }

                        v202 = mlir::DenseElementsAttr::getFromRawBuffer(v200, v201, v234[0], 8 * LODWORD(v234[1]), 8, 1, 1);
                        v123 = 0;
                        v244 = v202;
                        goto LABEL_216;
                      }

                      v163 = *(v162 - 1);
                      v164 = *v162++;
                      --v161;
                    }

                    while (v163 >= v164);
                    v230[0].n128_u64[0] = operator new(0x40uLL);
                    *(v230 + 8) = xmmword_1E09827B0;
                    strcpy(v230[0].n128_u64[0], "failed: tensor buffer with custom layout is not supported.");
                    v165 = mlir::logMatchFailure(v230, *(v247 + 24), a4);
                    if (v230[1].n128_i8[7] < 0)
                    {
                      operator delete(v230[0].n128_u64[0]);
                    }

                    v123 = v165 ^ 1;
                  }

                  else
                  {
                    v123 = 1;
                  }

LABEL_216:
                  if (v234[0] != &v234[2])
                  {
                    free(v234[0]);
                  }

                  v126 = *__p;
                }
              }

              if (v126 != &__p[16])
              {
                free(v126);
              }

              if ((v123 & 1) == 0)
              {
                if (*(v238 + 9))
                {
                  v166 = v238 - 16;
                }

                else
                {
                  v166 = 0;
                }

                v167 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v166, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
                if (v167)
                {
                  v168 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v167 + 8);
                }

                else
                {
                  v168 = 0;
                }

                *__p = mlir::getRankPromotionTypeForANE(v167, v168);
                *&__p[8] = v169;
                v170 = mlir::CallableOpInterface::getArgAttrsAttr(__p);
                v172 = v171;
                v173 = mlir::ElementsAttr::isSplat(__p);
                v234[0] = mlir::MemRefType::get(v170, v172, v173, 0, 0, 0);
                v174 = mlir::OpBuilder::create<mlir::anec::TensorToTensorBuffer,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a4 + 8), *(v9 + 3), v234, &v223, &v244, &v240);
                (*(*a4 + 8))(a4, v9, v174);
                return 1;
              }

              *__p = operator new(0x38uLL);
              *&__p[8] = xmmword_1E0982900;
              strcpy(*__p, "Failed to extract the stride and interleave info");
              v33 = *(v9 + 3);
            }

            else
            {
              *__p = operator new(0x40uLL);
              *&__p[8] = xmmword_1E09829B0;
              strcpy(*__p, "The output of tensor_to_tensor_buffer must be a region return");
              v33 = *(v9 + 3);
            }
          }

          else if (mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&RankPromotionTypeForANE))
          {
            if ((mlir::matchValueTypeThrough<mlir::BlockArgument,mlir::UnrealizedConversionCastOp>(*(*(v9 + 9) + 24)) & 1) == 0)
            {
              v97 = "The input of tensor_buffer_to_tensor must be a block argument";
LABEL_119:
              *__p = v97;
              LOWORD(v228) = 259;
              v234[0] = __p;
              v82 = *(a4 + 16);
              if (!v82)
              {
                return 0;
              }

LABEL_120:
              if (mlir::RewriterBase::Listener::classof(v82))
              {
                (*(*v82 + 88))(v82, *(v9 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mpsx::FusionOp &>(mlir::mpsx::FusionOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v234);
              }

              return 0;
            }

            v175 = (*(*(*(RankPromotionTypeForANE + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            v247 = RankPromotionTypeForANE;
            v241 = v175;
            *__p = &__p[16];
            *&__p[8] = 0x600000000;
            v176 = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v247);
            mlir::getValues<unsigned long>(v176, __p);
            mlir::ArrayAttr::getValue(&v241);
            v177 = 1;
            v179 = mlir::anec::getIndexFromDim(1, v178);
            v180 = *__p;
            if (v181)
            {
              v182 = *(*__p + 8 * v179);
              if (*&__p[8])
              {
                v183 = 0;
                while (v179 == v183 || *(*__p + 8 * v183) == 1)
                {
                  if (*&__p[8] == ++v183)
                  {
                    goto LABEL_241;
                  }
                }

                v177 = 1;
              }

              else
              {
LABEL_241:
                v234[0] = &v234[2];
                v234[1] = 0x600000000;
                if ((mlir::calculateANEStridesFromAffineMap(v241, v234) & 1) != 0 && (v188 = LODWORD(v234[1]), mlir::ArrayAttr::getValue(&v241), v189 == v188))
                {
                  v190 = LODWORD(v234[1]) - 1;
                  v191 = (v234[0] + 8);
                  do
                  {
                    if (!v190)
                    {
                      v230[0].n128_u64[0] = 1;
                      v208 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
                      v209 = mlir::RankedTensorType::get(v230, 1, v208, 0);
                      v210 = v209;
                      if (v209)
                      {
                        v211 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v209 + 8);
                      }

                      else
                      {
                        v211 = 0;
                      }

                      LOBYTE(v235) = v182;
                      v240 = mlir::DenseElementsAttr::getFromRawBuffer(v210, v211, &v235, 1, 1, 1, 0);
                      v230[0].n128_u64[0] = SLODWORD(v234[1]);
                      v212 = mlir::Builder::getIntegerType((a4 + 8), 64, 1);
                      v213 = mlir::RankedTensorType::get(v230, 1, v212, 0);
                      v214 = v213;
                      if (v213)
                      {
                        v215 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v213 + 8);
                      }

                      else
                      {
                        v215 = 0;
                      }

                      v177 = 0;
                      v244 = mlir::DenseElementsAttr::getFromRawBuffer(v214, v215, v234[0], 8 * LODWORD(v234[1]), 8, 1, 1);
                      goto LABEL_250;
                    }

                    v192 = *(v191 - 1);
                    v193 = *v191++;
                    --v190;
                  }

                  while (v192 >= v193);
                  v230[0].n128_u64[0] = operator new(0x40uLL);
                  *(v230 + 8) = xmmword_1E09827B0;
                  strcpy(v230[0].n128_u64[0], "failed: tensor buffer with custom layout is not supported.");
                  v194 = mlir::logMatchFailure(v230, *(v247 + 24), a4);
                  if (v230[1].n128_i8[7] < 0)
                  {
                    operator delete(v230[0].n128_u64[0]);
                  }

                  v177 = v194 ^ 1;
                }

                else
                {
                  v177 = 1;
                }

LABEL_250:
                if (v234[0] != &v234[2])
                {
                  free(v234[0]);
                }

                v180 = *__p;
              }
            }

            if (v180 != &__p[16])
            {
              free(v180);
            }

            if ((v177 & 1) == 0)
            {
              if (*(RankPromotionTypeForANE + 9))
              {
                v195 = RankPromotionTypeForANE - 16;
              }

              else
              {
                v195 = 0;
              }

              v196 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v195, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v196)
              {
                v197 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v196 + 8);
              }

              else
              {
                v197 = 0;
              }

              *__p = mlir::getRankPromotionTypeForANE(v196, v197);
              *&__p[8] = v203;
              v204 = mlir::CallableOpInterface::getArgAttrsAttr(__p);
              v206 = v205;
              v207 = mlir::ElementsAttr::isSplat(__p);
              v234[0] = mlir::MemRefType::get(v204, v206, v207, 0, 0, 0);
              mlir::RewriterBase::replaceOpWithNewOp<mlir::anec::TensorBufferToTensor,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(a4, v9, v234, &v223, &v244, &v240);
              return 1;
            }

            std::string::basic_string[abi:nn200100]<0>(__p, "Error: failed to extract the stride and interleave info");
            v33 = *(v9 + 3);
          }

          else
          {
            *__p = operator new(0x28uLL);
            *&__p[8] = xmmword_1E09826C0;
            strcpy(*__p, "Error: invalid tensor buffer pattern");
            v33 = *(v9 + 3);
          }

          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v35 = v222;
      v36 = *(a3 + 40);
      v37 = *(a3 + 48);
      v241 = 0;
      v234[0] = &v241;
      v38 = v241;
      if (!v241)
      {
        v234[0] = operator new(0x48uLL);
        *&v234[1] = xmmword_1E0982890;
        strcpy(v234[0], "failed: no dequantize lut op is found in palettized linear op pattern.");
        matched = mlir::logMatchFailure(v234, *(v35 + 3), a4);
        if ((SHIBYTE(v234[2]) & 0x80000000) == 0)
        {
          return matched;
        }

        v34 = v234[0];
        goto LABEL_43;
      }

      v39 = *(v241 + 9);
      if (v39)
      {
        v40 = v241 - 16;
      }

      else
      {
        v40 = 0;
      }

      v234[0] = v40;
      v234[1] = v39;
      mlir::ResultRange::use_begin(v234, v230);
      v41 = v38[9];
      if (v41)
      {
        v42 = (v38 - 4);
      }

      else
      {
        v42 = 0;
      }

      v247 = v42;
      *&v248[0] = v41;
      mlir::ResultRange::use_end(&v247, &v234[5]);
      v234[4] = v231;
      *v234 = v230[0];
      *&v234[2] = v230[1];
      v238 = *(v231 + 16);
      v43 = v238;
      v233 = 0u;
      memset(v234, 0, 80);
      v231 = 0u;
      v232 = 0u;
      memset(v230, 0, sizeof(v230));
      if (v45)
      {
        TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v238);
        if (!v44)
        {
          goto LABEL_53;
        }
      }

      else
      {
        TransposeRhs = 0;
        if (!v44)
        {
LABEL_53:
          v247 = v36;
          *&v248[0] = v37;
          v217 = mlir::ValueRange::dereference_iterator(&v247, 0);
          v220 = v44;
          if (!v45)
          {
LABEL_54:
            v247 = v36;
            *&v248[0] = v37;
            v216 = mlir::ValueRange::dereference_iterator(&v247, 1);
            goto LABEL_89;
          }

LABEL_88:
          v216 = v241 - 16;
LABEL_89:
          v77 = *(v238 + 9);
          v78 = (*(*(v77 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v78)
          {
            v79 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v78 + 8);
            v77 = *(v238 + 9);
          }

          else
          {
            v79 = 0;
          }

          v88 = (*(*(v77 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v88)
          {
            v89 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v88 + 8);
          }

          else
          {
            v89 = 0;
          }

          v90 = (*(v35 - 1) & 0xFFFFFFFFFFFFFFF8);
          if (v90)
          {
            v91 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v90 + 8);
          }

          else
          {
            v91 = 0;
          }

          v92 = v238;
          mlir::TypeConverter::TypeConverter(__p, *(a1 + 96));
          mlir::TypeConverter::~TypeConverter(__p);
        }
      }

      v217 = v241 - 16;
      v220 = v44;
      if (!v45)
      {
        goto LABEL_54;
      }

      goto LABEL_88;
    }
  }

LABEL_40:
  std::string::basic_string[abi:nn200100]<0>(__p, "Error: unknown fused op type");
  v33 = *(v222 + 3);
LABEL_41:
  matched = mlir::logMatchFailure(__p, v33, a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v34 = *__p;
LABEL_43:
    operator delete(v34);
  }

  return matched;
}