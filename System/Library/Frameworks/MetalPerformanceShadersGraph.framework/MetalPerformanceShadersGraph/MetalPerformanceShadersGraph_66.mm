uint64_t mlir::mpsx::anonymous namespace::ANERegionOpCreator::getRegionOp(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int *a5, unint64_t a6, unint64_t a7, uint64_t a8, const char *a9, uint64_t a10, std::string *a11, unint64_t a12, uint64_t a13, uint64_t a14, mlir::Operation **a15, uint64_t a16, uint64_t a17)
{
  v96 = *MEMORY[0x1E69E9840];
  v23 = (a1 + 272);
  v24 = *(a1 + 295);
  if ((v24 & 0x8000000000000000) != 0)
  {
    v25 = *(a1 + 280);
    if (!v25)
    {
      std::string::__init_copy_ctor_external(&v84, *v23, 0);
      goto LABEL_15;
    }
  }

  else
  {
    if (!*(a1 + 295))
    {
      *&v84.__r_.__value_.__l.__data_ = *v23;
      v84.__r_.__value_.__r.__words[2] = *(a1 + 288);
      goto LABEL_15;
    }

    v25 = *(a1 + 280);
  }

  *(&v85.__r_.__value_.__s + 23) = 1;
  LOWORD(v85.__r_.__value_.__l.__data_) = 95;
  if ((v24 & 0x80000000) == 0)
  {
    v26 = (a1 + 272);
  }

  else
  {
    v26 = *v23;
  }

  if ((v24 & 0x80000000) == 0)
  {
    v27 = v24;
  }

  else
  {
    v27 = v25;
  }

  v28 = std::string::append(&v85, v26, v27);
  v29 = v28->__r_.__value_.__r.__words[2];
  *&v84.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
  v84.__r_.__value_.__r.__words[2] = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

LABEL_15:
  v91 = 773;
  v87 = a3;
  v88 = a4;
  v89 = "_ANE_region_";
  p_p = &v87;
  v94[0] = &a17;
  v95 = 2818;
  v85.__r_.__value_.__r.__words[0] = &p_p;
  v85.__r_.__value_.__r.__words[2] = &v84;
  v86 = 1026;
  llvm::Twine::str(&v85, &__p);
  v82 = mlir::FunctionType::get(**(a1 + 8), a13, a14, a9, a10);
  v30 = *(a1 + 8);
  mlir::anec::getFamilyString(*(a1 + 256), &v85);
  LOBYTE(v79) = 0;
  p_p = 0;
  v87 = 0;
  v80 = 0;
  v31 = mlir::OpBuilder::create<mlir::mpsx::ANEOp,mlir::FunctionType &,std::string,BOOL,mlir::ArrayAttr,mlir::ArrayAttr,mlir::ArrayAttr>(v30, a2, &v82, &v85, &v79, &p_p, &v87, &v80);
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  v32 = *(a1 + 8);
  v95 = 260;
  p_p = &__p;
  StringAttr = mlir::Builder::getStringAttr(v32, &p_p);
  Context = mlir::Attribute::getContext((v31 + 24));
  v86 = 261;
  v85.__r_.__value_.__r.__words[0] = "sym_name";
  v85.__r_.__value_.__l.__size_ = 8;
  v35 = mlir::StringAttr::get(Context, &v85);
  v78 = v31;
  mlir::Operation::setAttr(v31, v35, StringAttr);
  v36 = operator new(0x48uLL);
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 4) = v36 + 32;
  *(v36 + 5) = v36 + 32;
  *(v36 + 7) = 0;
  *(v36 + 8) = 0;
  *(v36 + 6) = 0;
  v85.__r_.__value_.__r.__words[0] = &v85.__r_.__value_.__r.__words[2];
  v85.__r_.__value_.__l.__size_ = 0x400000000;
  if (a12 < 5)
  {
    p_p = a11;
    v93 = 0;
    if (!a12)
    {
      v40 = v85.__r_.__value_.__r.__words[1];
      goto LABEL_26;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, &v85.__r_.__value_.__r.__words[2], a12, 8);
    p_p = a11;
    v93 = 0;
  }

  for (i = 0; i != a12; v93 = i)
  {
    v87 = mlir::ValueRange::dereference_iterator(&p_p, i);
    Loc = mlir::Value::getLoc(&v87);
    v39 = LODWORD(v85.__r_.__value_.__r.__words[1]);
    if (LODWORD(v85.__r_.__value_.__r.__words[1]) >= HIDWORD(v85.__r_.__value_.__r.__words[1]))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, &v85.__r_.__value_.__r.__words[2], LODWORD(v85.__r_.__value_.__r.__words[1]) + 1, 8);
      v39 = LODWORD(v85.__r_.__value_.__r.__words[1]);
    }

    *(v85.__r_.__value_.__r.__words[0] + 8 * v39) = Loc;
    v40 = ++LODWORD(v85.__r_.__value_.__r.__words[1]);
    i = v93 + 1;
  }

LABEL_26:
  mlir::Block::addArguments(v36, a13, a14, v85.__r_.__value_.__l.__data_, v40);
  v41 = (((v78 + 16 * ((*(v78 + 44) >> 23) & 1) + ((*(v78 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v78 + 40));
  llvm::ilist_traits<mlir::Block>::addNodeToList(v41, v36);
  v42 = *v41;
  *(v36 + 2) = v41;
  *(v36 + 1) = v42;
  *(v42 + 8) = v36 + 8;
  *v41 = (v36 + 8);
  v43 = *(a1 + 8);
  v74 = *(v43 + 16);
  v44 = *(v36 + 5);
  v75 = v43 + 16;
  *(v43 + 16) = v36;
  v76 = v43;
  *(v43 + 24) = v44;
  v45 = *(v36 + 6);
  v46 = *(v36 + 7);
  p_p = a11;
  v93 = 0;
  v94[0] = v45;
  if (a12 && v45 != v46)
  {
    v47 = 0;
    do
    {
      v48 = mlir::ValueRange::dereference_iterator(&p_p, v47);
      v49 = *(a1 + 8);
      v87 = *(v48 + 8) & 0xFFFFFFFFFFFFFFF8;
      v50 = mlir::OpBuilder::create<mlir::placement::ANEIOCast,mlir::Type,mlir::BlockArgument &>(v49, a2, &v87, v94[0]) - 16;
      v87 = v48;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, &v87) = v50;
      v47 = v93 + 1;
      v51 = v94[0] + 1;
      v93 = v47;
      ++v94[0];
    }

    while (v47 != a12 && v51 != v46);
  }

  if (a16)
  {
    v54 = 8 * a16;
    do
    {
      v55 = *a15++;
      mlir::OpBuilder::clone(*(a1 + 8), v55, a5);
      v54 -= 8;
    }

    while (v54);
  }

  p_p = v94;
  v93 = 0x200000000;
  if (a7 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&p_p, v94, a7, 8);
  }

  v87 = a6;
  v88 = 0;
  v89 = a9;
  v90 = 0;
  if (a7 && a10)
  {
    v56 = 0;
    do
    {
      v57 = mlir::ValueRange::dereference_iterator(&v87, v56);
      v58 = mlir::TypeRange::dereference_iterator(v89, v90);
      v80 = v57;
      v81 = v58;
      v59 = a5[4];
      if (v59)
      {
        v60 = *a5;
        v61 = 0x9DDFEA08EB382D69 * ((8 * v57 - 0xAE502812AA7333) ^ HIDWORD(v57));
        v62 = 0x9DDFEA08EB382D69 * (HIDWORD(v57) ^ (v61 >> 47) ^ v61);
        v63 = (-348639895 * ((v62 >> 47) ^ v62)) & (v59 - 1);
        v64 = *(*a5 + 16 * v63);
        if (v64 == v57)
        {
LABEL_44:
          if (v63 != v59)
          {
            v57 = *(v60 + 16 * v63 + 8);
          }
        }

        else
        {
          v71 = 1;
          while (v64 != -4096)
          {
            v72 = v63 + v71++;
            v63 = v72 & (v59 - 1);
            v64 = *(v60 + 16 * v63);
            if (v64 == v57)
            {
              goto LABEL_44;
            }
          }
        }
      }

      v79 = v57;
      v65 = *(a1 + 8);
      v66 = mlir::Value::getLoc(&v79);
      v67 = mlir::OpBuilder::create<mlir::placement::ANEIOCast,mlir::Type,mlir::BlockArgument &>(v65, v66, &v81, &v79);
      v68 = v93;
      if (v93 >= HIDWORD(v93))
      {
        v70 = v67;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&p_p, v94, v93 + 1, 8);
        v67 = v70;
        v68 = v93;
      }

      p_p->__r_.__value_.__r.__words[v68] = v67 - 16;
      LODWORD(v93) = v93 + 1;
      v56 = v88 + 1;
      v69 = v90 + 1;
      v88 = v56;
      ++v90;
    }

    while (v56 != a7 && v69 != a10);
  }

  mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::SmallVector<mlir::Value,2u> &>(*(a1 + 8), a2, &p_p);
  if (p_p != v94)
  {
    free(p_p);
  }

  if (v76)
  {
    if (v74)
    {
      *v75 = v74;
    }

    else
    {
      *v75 = 0;
      *(v75 + 8) = 0;
    }
  }

  if (v85.__r_.__value_.__l.__data_ != &v85.__r_.__value_.__r.__words[2])
  {
    free(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v78;
    }

LABEL_67:
    operator delete(v84.__r_.__value_.__l.__data_);
    return v78;
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_67;
  }

  return v78;
}

uint64_t mlir::mpsx::anonymous namespace::ANERegionOpCreator::getCanonicalizationPatterns@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 224);
  *a2 = *(this + 216);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t mlir::mpsx::anonymous namespace::ANERegionOpCreator::getRegionTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::ArrayRef<mlir::Value> &>(*(a1 + 8), a2, v5);
}

uint64_t mlir::mpsx::anonymous namespace::ANERegionOpCreator::getBody(mlir::mpsx::_anonymous_namespace_::ANERegionOpCreator *this, mlir::Operation *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    return *(a2 + 2);
  }

  return result;
}

void mlir::mpsx::anonymous namespace::ANERegionOpCreator::computeDeviceRegionCost(mlir::mpsx::_anonymous_namespace_::ANERegionOpCreator *this, mlir::Operation *a2)
{
  v3[47] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  v3[0] = mlir::Attribute::getContext((a2 + 24));
  memset(&v3[1], 0, 24);
  mlir::OpBuilder::clone(v3, a2);
}

float sub_1DFD2D170(uint64_t a1, uint64_t a2)
{
  v4 = v9;
  v9 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify(&v8, a2);
  if (*MEMORY[0x1E69E9840] != *(v2 - 88))
  {
    JUMPOUT(0x1DFD2D1F8);
  }

  return v3;
}

float mlir::mpsx::anonymous namespace::ANERegionOpCreator::computeHostRegionCost(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0.0;
  }

  v5 = 8 * a3;
  v6 = 0.0;
  do
  {
    v7 = *a2++;
    v8 = mlir::mps::detail::MPSAbstractCostModel::computeCost(a1 + 232, v7, *(a1 + 264));
    v6 = v6 + *&v8;
    v5 -= 8;
  }

  while (v5);
  return v6;
}

void mlir::mpsx::anonymous namespace::ANERegionOpCreator::materializeHostTypeConversion(uint64_t a1, mlir *a2, unint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((mlir::materializeMPSToANECHostTypeConversion(*(a1 + 8), a2, a3, a4, a5, a6) & 1) == 0)
  {
    mlir::emitError(a2, v7, v24);
    if (v24[0])
    {
      v21 = 3;
      v22 = "unable to materialize host type conversion";
      v23 = 42;
      v8 = &v21;
      v9 = v25;
      if (v26 >= v27)
      {
        if (v25 <= &v21 && v25 + 24 * v26 > &v21)
        {
          v20 = &v21 - v25;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
          v9 = v25;
          v8 = (v25 + v20);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
          v8 = &v21;
          v9 = v25;
        }
      }

      v10 = &v9[24 * v26];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v26;
      if (v24[0])
      {
        mlir::InFlightDiagnostic::report(v24);
      }
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v32;
        v14 = __p;
        if (v32 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v32 = v12;
        operator delete(v14);
      }

      v15 = v29;
      if (v29)
      {
        v16 = v30;
        v17 = v29;
        if (v30 != v29)
        {
          do
          {
            v19 = *--v16;
            v18 = v19;
            *v16 = 0;
            if (v19)
            {
              operator delete[](v18);
            }
          }

          while (v16 != v15);
          v17 = v29;
        }

        v30 = v15;
        operator delete(v17);
      }

      if (v25 != v28)
      {
        free(v25);
      }
    }
  }
}

uint64_t mlir::mpsx::anonymous namespace::ANERegionOpCreator::getCallOp(uint64_t a1, uint64_t a2, mlir::SymbolRefAttr *a3, uint64_t a4, uint64_t a5)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a4;
  v9[1] = a5;
  v8 = a3;
  v5 = *(a1 + 8);
  v7 = 1;
  return mlir::OpBuilder::create<mlir::placement::RegionCall,mlir::Operation *&,mlir::placement::RegionType,mlir::ValueRange &>(v5, a2, &v8, &v7, v9);
}

uint64_t llvm::any_of<mlir::ResultRange,mlir::mpsx::anonymous namespace::ANERegionOpCreator::isOpCompatible(mlir::Operation *,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> const*)::$_0::operator() const(void)::{lambda(mlir::Value)#3}>(uint64_t *a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = 0;
    v3 = *a1;
    v4 = v1 - 1;
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v2);
      if ((v6 & 1) == 0)
      {
        break;
      }
    }

    while (v4 != v2++);
    LOBYTE(v1) = v6 ^ 1;
  }

  return v1 & 1;
}

uint64_t mlir::mpsx::anonymous namespace::ANERegionOpCreator::isOpCompatible(mlir::Operation *,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> const*)::$_0::operator() const(void)::{lambda(mlir::Value)#1}::operator()(uint64_t a1)
{
  v2 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8))
  {
    v13 = 0;
    v14 = 0;
    return 0;
  }

  v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  v13 = v2;
  v14 = v3;
  if (!v2)
  {
    return 0;
  }

  result = mlir::CallOpInterface::getArgOperands(&v13);
  if (result)
  {
    v15 = a1;
    DefiningOp = mlir::Value::getDefiningOp(&v15);
    if (DefiningOp)
    {
      {
        v12 = DefiningOp;
        DefiningOp = v12;
      }

      if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        return 1;
      }
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
    if (!v7)
    {
      return 1;
    }

    else
    {
      v8 = ArgAttrsAttr;
      v9 = 8 * v7 - 8;
      do
      {
        v10 = *v8++;
        result = v10 != 0;
        if (v10)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        v9 -= 8;
      }

      while (!v11);
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::ANEOp,mlir::FunctionType &,std::string,BOOL,mlir::ArrayAttr,mlir::ArrayAttr,mlir::ArrayAttr>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int8 *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::ANEOp,mlir::FunctionType &,std::string,BOOL,mlir::ArrayAttr,mlir::ArrayAttr,mlir::ArrayAttr>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  v19 = *(a4 + 23);
  if (v19 >= 0)
  {
    v20 = a4;
  }

  else
  {
    v20 = *a4;
  }

  if (v19 >= 0)
  {
    v21 = *(a4 + 23);
  }

  else
  {
    v21 = *(a4 + 8);
  }

  mlir::mpsx::ANEOp::build(a1, v28, *a3, v20, v21, *a5, *a6, *a7, *a8);
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::placement::ANEIOCast,mlir::Type,mlir::BlockArgument &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::ANEIOCast,mlir::Type,mlir::BlockArgument &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::SmallVector<mlir::Value,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::ArrayRef<mlir::Value> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::func::ReturnOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id)
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

void *std::__function::__func<mlir::mpsx::anonymous namespace::ANERegionOpCreator::computeDeviceRegionCost(mlir::Operation *)::$_0,std::allocator<mlir::mpsx::anonymous namespace::ANERegionOpCreator::computeDeviceRegionCost(mlir::Operation *)::$_0>,void ()(mlir::Operation *,mlir::Operation *)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B01418;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::mpsx::anonymous namespace::ANERegionOpCreator::computeDeviceRegionCost(mlir::Operation *)::$_0,std::allocator<mlir::mpsx::anonymous namespace::ANERegionOpCreator::computeDeviceRegionCost(mlir::Operation *)::$_0>,void ()(mlir::Operation *,mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B01418;
  a2[1] = v2;
  return result;
}

void std::__function::__func<mlir::mpsx::anonymous namespace::ANERegionOpCreator::computeDeviceRegionCost(mlir::Operation *)::$_0,std::allocator<mlir::mpsx::anonymous namespace::ANERegionOpCreator::computeDeviceRegionCost(mlir::Operation *)::$_0>,void ()(mlir::Operation *,mlir::Operation *)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 8), v4 + 16, v5 + 1, 8);
    LODWORD(v5) = *(v4 + 8);
  }

  *(*v4 + 8 * v5) = v3;
  ++*(v4 + 8);
}

uint64_t mlir::OpBuilder::create<mlir::func::ReturnOp>(mlir::func::ReturnOp *a1, uint64_t a2)
{
  v14[38] = *MEMORY[0x1E69E9840];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id, Context);
  if ((v6 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::ReturnOp>(v14, v13, v12);
  }

  mlir::OperationState::OperationState(v14, a2, v5);
  mlir::func::ReturnOp::build(a1, v14, v7);
  v8 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v9;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_137applyReduceMultiRegionGreedyPlacementEPNSB_16ModuleValidationENS1_8ModuleOpERNSC_18ANERegionOpCreatorEE3__1NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESS_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v2 = **a1;
    v3 = *(v2 + 8);
    if (v3 >= *(v2 + 12))
    {
      v4 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v2 + 16, v3 + 1, 8);
      a2 = v4;
      LODWORD(v3) = *(v2 + 8);
    }

    *(*v2 + 8 * v3) = a2;
    ++*(v2 + 8);
  }
}

uint64_t std::__function::__value_func<__CFDictionary const* ()(__CFDictionary const*)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

double mlir::mpsx::createANEAdaptersInlinerPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x158uLL);
  result = 0.0;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  *(v3 + 2) = "builtin.module";
  *(v3 + 3) = 14;
  *(v3 + 32) = 1;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[8] = 0u;
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
  *v3 = &unk_1F5B01460;
  *a1 = v3;
  return result;
}

void mlir::mpsx::anonymous namespace::ANEAdaptersInliner::~ANEAdaptersInliner(mlir::mpsx::_anonymous_namespace_::ANEAdaptersInliner *this)
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

void mlir::mpsx::anonymous namespace::ANEAdaptersInliner::runOnOperation(mlir::mpsx::_anonymous_namespace_::ANEAdaptersInliner *this)
{
  v1 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v5 = v1;
  Context = mlir::Attribute::getContext((v1 + 24));
  mlir::DialectInterfaceCollection<mlir::DialectInlinerInterface>::DialectInterfaceCollection(v4, Context);
  v3[1] = v4;
  v4[0] = &unk_1F5B014D0;
  v3[0] = &v5;
  v6 = v3;
  mlir::detail::walk<mlir::ForwardIterator>(v1, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_118ANEAdaptersInliner14runOnOperationEvEUlNSB_5ANEOpEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v6, 1);
  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(v4);
}

double mlir::mpsx::ANEAdaptersInlinerBase<mlir::mpsx::anonymous namespace::ANEAdaptersInliner>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
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
  *v4 = &unk_1F5B01460;
  *a2 = v4;
  return result;
}

void sub_1DFD2E1B4(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::mpsx::anonymous namespace::InlineAdaptersInterface::isLegalToInline(mlir::mpsx::_anonymous_namespace_::InlineAdaptersInterface *this, mlir::Operation *a2, mlir::Operation *a3)
{
  if (*(a3 + 47) && (v12.var0 = "externalize", v12.var1 = 11, InherentAttr = mlir::Operation::getInherentAttr(a3, v12), (v6 & 1) != 0))
  {
    if (InherentAttr)
    {
      return 1;
    }
  }

  else
  {
    v13.var0 = "externalize";
    v13.var1 = 11;
    if (mlir::DictionaryAttr::contains((a3 + 56), v13))
    {
      return 1;
    }
  }

  if (*(a3 + 47))
  {
    v14.var0 = "MPSGraph_externalize";
    v14.var1 = 20;
    v8 = mlir::Operation::getInherentAttr(a3, v14);
    if (v9)
    {
      return v8 != 0;
    }
  }

  v10.var0 = "MPSGraph_externalize";
  v10.var1 = 20;

  return mlir::DictionaryAttr::contains((a3 + 56), v10);
}

uint64_t mlir::mpsx::anonymous namespace::InlineAdaptersInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

uint64_t mlir::DialectInterfaceCollection<mlir::DialectInlinerInterface>::DialectInterfaceCollection(void *a1, mlir::MLIRContext *a2)
{
  {
    mlir::arith::ArithDialect::initialize();
  }

  v4 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id;
  v6[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectInlinerInterface]";
  v6[1] = 79;
  llvm::StringRef::find(v6, "DesiredTypeName = ", 0x12uLL, 0);
  result = mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(a1, a2, v4);
  *a1 = &unk_1F5B01540;
  return result;
}

void sub_1DFD2E388(void *__p)
{

  operator delete(__p);
}

__int128 **_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_118ANEAdaptersInliner14runOnOperationEvEUlNSB_5ANEOpEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(__int128 **result, mlir::ForwardIterator *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id)
    {
      v5[1] = v2;
      v5[2] = v3;
      v4 = **result;
      v5[0] = &v4;
      return mlir::detail::walk<mlir::ForwardIterator>(a2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_4mpsx12_GLOBAL__N_118ANEAdaptersInliner14runOnOperationEvENKUlNSB_5ANEOpEE_clESE_EUlNS1_3mps6CallOpEE_SH_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_, v5, 1);
    }
  }

  return result;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_4mpsx12_GLOBAL__N_118ANEAdaptersInliner14runOnOperationEvENKUlNSB_5ANEOpEE_clESE_EUlNS1_3mps6CallOpEE_SH_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *a1, mlir::Operation *a2)
{
  if (!a2 || *(*(a2 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
  {
    return;
  }

  v23 = v2;
  v24 = v3;
  v4 = *a1;
  v20 = a2;
  v5 = *v4;
  SymbolName = mlir::mps::CallOp::getSymbolName(&v20);
  v8 = v7;
  v9 = *v5;
  Context = mlir::Attribute::getContext((v9 + 6));
  v22 = 261;
  v21[0] = SymbolName;
  v21[1] = v8;
  v11 = mlir::StringAttr::get(Context, v21);
  v12 = mlir::SymbolTable::lookupSymbolIn(v9, v11);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

  if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v12))
  {
    v13 = 0;
LABEL_7:
    InterfaceFor = 0;
    goto LABEL_8;
  }

  InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v13);
LABEL_8:
  v15 = *(v13 + 40);
  v16 = *(v13 + 44);
  v17 = *(v4 + 8);
  v18 = v20;
  if (v20)
  {
    v19 = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v20);
  }

  else
  {
    v19 = 0;
  }

  mlir::inlineCall(v17, v18, v19, v13, InterfaceFor, (((v13 + 16 * ((v16 >> 23) & 1) + ((v16 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v15), 1u);
  mlir::Operation::erase(v20);
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

double mlir::mpsx::createANEAdaptersMutableWeightsPass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x2B8uLL);
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
  *v4 = &unk_1F5B015D0;
  *(&v7 + 1) = 164;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 344), v4 + 152, "mutable-weights-file-path", 25, &v7);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *v4 = &unk_1F5B01560;
  v4[592] = 0;
  v4[600] = *a1;
  v5 = (v4 + 608);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *(a1 + 8);
    *(v4 + 78) = *(a1 + 24);
  }

  *(v4 + 632) = *(a1 + 32);
  *(v4 + 83) = 0x1000000000;
  result = 0.0;
  *(v4 + 648) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 84) = v4 + 680;
  *a2 = v4;
  return result;
}

void mlir::mpsx::anonymous namespace::ANEAdaptersMutableWeights::~ANEAdaptersMutableWeights(mlir::mpsx::_anonymous_namespace_::ANEAdaptersMutableWeights *this)
{
  *this = &unk_1F5B01560;
  std::__tree<std::string>::destroy(this + 672, *(this + 85));
  if (*(this + 165))
  {
    v2 = *(this + 164);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*(this + 81) + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 17));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*(this + 81));
  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  *this = &unk_1F5B015D0;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);
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

void mlir::mpsx::anonymous namespace::ANEAdaptersMutableWeights::runOnOperation(mlir::mpsx::_anonymous_namespace_::ANEAdaptersMutableWeights *this)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(this + 631) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, *(this + 76), *(this + 77));
    v2 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if (!v2)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else
  {
    __dst = *(this + 608);
    v2 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  size = __dst.__r_.__value_.__l.__size_;
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (!size)
  {
    return;
  }

LABEL_7:
  v4 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v27[0] = mlir::Attribute::getContext((v4 + 24));
  memset(&v27[1], 0, 24);
  v5 = *(this + 632) == 1 && *(this + 80) != 0;
  v30 = v5;
  v28[0] = &v30;
  v28[1] = this;
  v31 = v28;
  mlir::detail::walk<mlir::ForwardIterator>(v4, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_125ANEAdaptersMutableWeights22buildSymbolToFuncOpMapENS1_8ModuleOpEEUlNS1_4func6FuncOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v31, 1);
  if (v30 && *(this + 86) != 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 80) + 8) - **(this + 80)) >> 3))
  {
    v6 = *(v4 + 24);
    v28[0] = "Module does not contain all symbols given in symbolsWithMutableWeight.";
    v29 = 259;
    mlir::emitError(v6, v28, &__dst);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__dst);
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v38;
        v9 = __p;
        if (v38 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v38 = v7;
        operator delete(v9);
      }

      v10 = v35;
      if (v35)
      {
        v11 = v36;
        v12 = v35;
        if (v36 != v35)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v35;
        }

        v36 = v10;
        operator delete(v12);
      }

      if (v33 != &v34)
      {
        free(v33);
      }
    }

    *(this + 5) |= 4uLL;
  }

  v15 = *(this + 84);
  if (v15 != (this + 680))
  {
    do
    {
      LOBYTE(v31) = 0;
      v16 = *(v15 + 7);
      __dst.__r_.__value_.__r.__words[0] = this;
      __dst.__r_.__value_.__l.__size_ = v27;
      __dst.__r_.__value_.__r.__words[2] = &v31;
      v28[0] = &__dst;
      if (!mlir::detail::walk<mlir::ForwardIterator>(v16, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_125ANEAdaptersMutableWeights18convertConstantOpsERNS1_9OpBuilderEEUlNS1_3mps10ConstantOpEE_SI_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v28, 1))
      {
        *(this + 5) |= 4uLL;
        return;
      }

      if (v31 != 1 || (v17 = *(this + 80)) == 0)
      {
LABEL_52:
        v24 = *(v15 + 1);
        if (!v24)
        {
          goto LABEL_56;
        }

        goto LABEL_53;
      }

      SymName = mlir::func::FuncOp::getSymName((v15 + 56));
      if (!SymName)
      {
        memset(&__dst, 0, sizeof(__dst));
        goto LABEL_51;
      }

      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = SymName;
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
          goto LABEL_50;
        }
      }

      memmove(p_dst, v21, v20);
LABEL_50:
      *(p_dst + v20) = 0;
LABEL_51:
      std::vector<std::string>::push_back[abi:nn200100](v17, &__dst);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      v24 = *(v15 + 1);
      if (!v24)
      {
        do
        {
LABEL_56:
          v25 = *(v15 + 2);
          v26 = *v25 == v15;
          v15 = v25;
        }

        while (!v26);
        goto LABEL_35;
      }

      do
      {
LABEL_53:
        v25 = v24;
        v24 = *v24;
      }

      while (v24);
LABEL_35:
      v15 = v25;
    }

    while (v25 != (this + 680));
  }
}

void *mlir::mpsx::ANEAdaptersMutableWeightsBase<mlir::mpsx::anonymous namespace::ANEAdaptersMutableWeights>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x2B8uLL);
  v5 = *(a1 + 8);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
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
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B015D0;
  *(&v13 + 1) = 164;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 344), v4 + 152, "mutable-weights-file-path", 25, &v13);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *v4 = &unk_1F5B01560;
  v4[592] = *(a1 + 592);
  v4[600] = *(a1 + 600);
  v6 = (v4 + 608);
  if (*(a1 + 631) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *(a1 + 608), *(a1 + 616));
  }

  else
  {
    *&v6->__r_.__value_.__l.__data_ = *(a1 + 608);
    *(v4 + 78) = *(a1 + 624);
  }

  *(v4 + 632) = *(a1 + 632);
  result = llvm::StringMap<unsigned long,llvm::MallocAllocator>::StringMap((v4 + 648), (a1 + 648));
  *(v4 + 680) = 0u;
  *(v4 + 84) = v4 + 680;
  v8 = *(a1 + 672);
  v9 = (a1 + 680);
  if (v8 != v9)
  {
    do
    {
      result = std::__tree<std::__value_type<std::string,mlir::func::FuncOp>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::func::FuncOp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::func::FuncOp>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::func::FuncOp> const&>(v4 + 84, v4 + 85, v8 + 4, (v8 + 4));
      v10 = v8[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
    }

    while (v11 != v9);
  }

  *a2 = v4;
  return result;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_125ANEAdaptersMutableWeights22buildSymbolToFuncOpMapENS1_8ModuleOpEEUlNS1_4func6FuncOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *a1, uint64_t a2)
{
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    return;
  }

  v2 = *a1;
  v22 = a2;
  v3 = *(v2 + 8);
  SymName = mlir::func::FuncOp::getSymName(&v22);
  if (!SymName)
  {
    __p = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v7 = SymName;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    p_p = operator new(v9);
    v20 = v6;
    v21 = v9 | 0x8000000000000000;
    __p = p_p;
  }

  else
  {
    HIBYTE(v21) = v5;
    p_p = &__p;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  memmove(p_p, v7, v6);
LABEL_14:
  *(p_p + v6) = 0;
LABEL_15:
  if (**v2 != 1)
  {
    goto LABEL_32;
  }

  v10 = *(v3 + 640);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 != v12)
  {
    if (v21 >= 0)
    {
      v13 = HIBYTE(v21);
    }

    else
    {
      v13 = v20;
    }

    if (v21 >= 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p;
    }

    do
    {
      v15 = *(v11 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v11 + 8);
      }

      if (v15 == v13)
      {
        v17 = v16 >= 0 ? v11 : *v11;
        if (!memcmp(v17, v14, v13))
        {
          break;
        }
      }

      v11 += 24;
    }

    while (v11 != v12);
  }

  if (v11 != v12)
  {
LABEL_32:
    v23 = &__p;
    v18 = std::__tree<std::__value_type<std::string,mlir::func::FuncOp>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::func::FuncOp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::func::FuncOp>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v3 + 672), &__p, &std::piecewise_construct, &v23);
    v18[7] = v22;
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,mlir::func::FuncOp>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::func::FuncOp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::func::FuncOp>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      while (1)
      {
        v11 = v6;
        v14 = v6[4];
        v12 = v6 + 4;
        v13 = v14;
        v15 = *(v12 + 23);
        if (v15 >= 0)
        {
          v16 = *(v12 + 23);
        }

        else
        {
          v16 = v12[1];
        }

        if (v15 >= 0)
        {
          v17 = v12;
        }

        else
        {
          v17 = v13;
        }

        if (v16 >= v9)
        {
          v18 = v9;
        }

        else
        {
          v18 = v16;
        }

        v19 = memcmp(v10, v17, v18);
        v20 = v9 < v16;
        if (v19)
        {
          v20 = v19 < 0;
        }

        if (!v20)
        {
          break;
        }

        v6 = *v11;
        v7 = v11;
        if (!*v11)
        {
          goto LABEL_27;
        }
      }

      v21 = memcmp(v17, v10, v18);
      v22 = v16 < v9;
      if (v21)
      {
        v22 = v21 < 0;
      }

      if (!v22)
      {
        return v11;
      }

      v6 = v11[1];
      if (!v6)
      {
        v7 = v11 + 1;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v11 = a1 + 1;
LABEL_27:
    v23 = operator new(0x40uLL);
    v24 = v23;
    v25 = *a4;
    if (*(*a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((v23 + 32), *v25, *(v25 + 1));
    }

    else
    {
      v26 = *v25;
      *(v23 + 6) = *(v25 + 2);
      *(v23 + 2) = v26;
    }

    v24[7] = 0;
    *v24 = 0;
    v24[1] = 0;
    v24[2] = v11;
    *v7 = v24;
    v27 = **a1;
    v28 = v24;
    if (v27)
    {
      *a1 = v27;
      v28 = *v7;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v28);
    a1[2] = (a1[2] + 1);
  }

  return v24;
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v11 = a2;
      v12 = operator new(24 * v10);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v7];
    v14 = &v12[24 * v10];
    *v13 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v13 + 24;
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v6;
    *(a1 + 16) = v14;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = (v3 + 24);
  }

  *(a1 + 8) = v6;
}

BOOL _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_125ANEAdaptersMutableWeights18convertConstantOpsERNS1_9OpBuilderEEUlNS1_3mps10ConstantOpEE_SI_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t **a1, mlir::Operation *a2)
{
  result = 1;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v4 = *a1;
    v6 = *v4;
    v5 = v4[1];
    v7 = v4[2];
    v94 = a2;
    AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v94);
    if (!AsAttribute)
    {
      return 1;
    }

    v9 = *(*AsAttribute + 136);
    v10 = v9 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    v11 = v9 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id ? AsAttribute : 0;
    v93 = v11;
    if (!v10)
    {
      return 1;
    }

    ParentOp = v94;
    do
    {
      v13 = *(ParentOp + 2);
      if (v13)
      {
        ParentOp = mlir::Block::getParentOp(v13);
        if (ParentOp)
        {
          continue;
        }
      }

      return 1;
    }

    while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id);
    v92 = ParentOp;
    if (*(ParentOp + 47) && (v105.var0 = "externalize", v14 = ParentOp, v105.var1 = 11, InherentAttr = mlir::Operation::getInherentAttr(ParentOp, v105), ParentOp = v14, (v16 & 1) != 0))
    {
      if (InherentAttr)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v106.var0 = "externalize";
      v106.var1 = 11;
      if (mlir::DictionaryAttr::contains((ParentOp + 56), v106))
      {
        goto LABEL_26;
      }
    }

    if (*(v92 + 47) && (v107.var0 = "neutron.isIndependentAdapter", v107.var1 = 28, v17 = mlir::Operation::getInherentAttr(v92, v107), (v18 & 1) != 0))
    {
      if (!v17)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v108.var0 = "neutron.isIndependentAdapter";
      v108.var1 = 28;
      if ((mlir::DictionaryAttr::contains((v92 + 56), v108) & 1) == 0)
      {
LABEL_24:
        if (*(v6 + 632) != 1 || !*(v6 + 640))
        {
          return 1;
        }
      }
    }

LABEL_26:
    v19 = v94;
    v20 = *(v94 + 9);
    v21 = v94 - 16;
    if (v20)
    {
      v22 = v94 - 16;
    }

    else
    {
      v22 = 0;
    }

    v95.__r_.__value_.__r.__words[0] = v22;
    v95.__r_.__value_.__l.__size_ = v20;
    mlir::ResultRange::use_begin(&v95, &v104.st_dev);
    v23 = *(v19 + 9);
    if (v23)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    v95.__r_.__value_.__r.__words[0] = v24;
    v95.__r_.__value_.__l.__size_ = v23;
    mlir::ResultRange::use_end(&v95, v102);
    tv_sec = v104.st_atimespec.tv_sec;
    v25 = v104.st_atimespec.tv_sec;
    v99 = *&v104.st_dev;
    v100 = *&v104.st_uid;
    v26 = v103;
    if (v104.st_atimespec.tv_sec != v103)
    {
      while (1)
      {
        v27 = *(*(*(v25 + 16) + 48) + 16);
        if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id || v27 == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
        {
          break;
        }

        mlir::ResultRange::UseIterator::operator++(&v104.st_dev);
        v25 = v104.st_atimespec.tv_sec;
        if (v104.st_atimespec.tv_sec == v26)
        {
          return 1;
        }
      }

      SymName = mlir::func::FuncOp::getSymName(&v92);
      if (!SymName)
      {
        __dst = 0;
        v90 = 0;
        v91 = 0;
LABEL_51:
        mlir::mps::MPSBufferTensorAttr::getHandle(&v93, &v99);
        v35 = *v99.n128_u64[0];
        v36 = *(v99.n128_u64[0] + 8);
        v38 = llvm::StringMapImpl::hash(*v99.n128_u64[0], v36, v37);
        Key = llvm::StringMapImpl::FindKey((v6 + 648), v35, v36, v38);
        if (Key != -1 && Key != *(v6 + 656))
        {
          v45 = 0;
          v46 = 0;
          v47 = *(*(*(v6 + 648) + 8 * Key) + 8);
LABEL_118:
          if (*(v6 + 600) == 1)
          {
            v97.__r_.__value_.__r.__words[0] = v47;
            if (*(v6 + 631) < 0)
            {
              std::string::__init_copy_ctor_external(&v104, *(v6 + 608), *(v6 + 616));
            }

            else
            {
              *&v104.st_dev = *(v6 + 608);
              *&v104.st_uid = *(v6 + 624);
            }

            v73 = *(v94 + 2);
            v74 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v94, v40);
            *(v5 + 16) = v73;
            *(v5 + 24) = v74;
            v75 = *(v94 + 3);
            v76 = *(v94 + 9);
            v77 = v94 - 16;
            if (!v76)
            {
              v77 = 0;
            }

            v95.__r_.__value_.__r.__words[0] = v77;
            v95.__r_.__value_.__l.__size_ = v76;
            mlir::OperandRange::getTypes(&v95, &v99);
            *&v98.__val_ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v99.n128_i64[0], v99.n128_i64[1]) + 8) & 0xFFFFFFFFFFFFFFF8;
            v78 = mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::Type,std::string &,unsigned long &,std::string &>(v5, v75, &v98.__val_, &v104, &v97, &__dst);
            v95.__r_.__value_.__r.__words[0] = v78;
            v79 = *(v94 + 9);
            v80 = v94 - 16;
            if (!v79)
            {
              v80 = 0;
            }

            v99.n128_u64[0] = v80;
            v99.n128_u64[1] = v79;
            mlir::ResultRange::replaceAllUsesWith(&v99, v78);
            mlir::Operation::erase(v94);
            mlir::mps::ReadDataFromFileOp::setOffset(&v95, v97.__r_.__value_.__l.__data_);
            if ((v104.st_gid & 0x80000000) == 0)
            {
              v81 = &v104;
            }

            else
            {
              v81 = *&v104.st_dev;
            }

            if ((v104.st_gid & 0x80000000) == 0)
            {
              st_gid_high = SHIBYTE(v104.st_gid);
            }

            else
            {
              st_gid_high = v104.st_ino;
            }

            v83 = llvm::sys::path::filename(v81, st_gid_high, 0);
            mlir::mps::ReadDataFromFileOp::setFilePath(&v95, v83, v84);
            v99.n128_u64[0] = "constant_data";
            v99.n128_u64[1] = 13;
            LOBYTE(v100) = 1;
            mlir::mps::ReadDataFromFileOp::setFileSymbol(&v95, &v99);
            if (SHIBYTE(v104.st_gid) < 0)
            {
              operator delete(*&v104.st_dev);
            }
          }

          v53 = 0;
          *v7 = 1;
          goto LABEL_136;
        }

        RawData = mlir::mps::MPSBufferTensorAttr::getRawData(&v93);
        v43 = v42;
        if (*(v6 + 592) == 1)
        {
          v44 = std::system_category();
        }

        else
        {
          LODWORD(v97.__r_.__value_.__l.__data_) = 0;
          v44 = std::system_category();
          v97.__r_.__value_.__l.__size_ = v44;
          if (*(v6 + 631) < 0)
          {
            std::string::__init_copy_ctor_external(&v104, *(v6 + 608), *(v6 + 616));
          }

          else
          {
            *&v104.st_dev = *(v6 + 608);
            *&v104.st_uid = *(v6 + 624);
          }

          if ((v104.st_gid & 0x80000000) == 0)
          {
            v48 = &v104;
          }

          else
          {
            v48 = *&v104.st_dev;
          }

          if ((v104.st_gid & 0x80000000) == 0)
          {
            st_ino = SHIBYTE(v104.st_gid);
          }

          else
          {
            st_ino = v104.st_ino;
          }

          llvm::raw_fd_ostream::raw_fd_ostream(&v99, v48, st_ino, &v97, 0);
          if (SHIBYTE(v104.st_gid) < 0)
          {
            operator delete(*&v104.st_dev);
          }

          if (LODWORD(v97.__r_.__value_.__l.__data_))
          {
            HIBYTE(v104.st_gid) = 21;
            strcpy(&v104, "Could not open file: ");
            std::error_code::message(&v95, &v97);
            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v50 = &v95;
            }

            else
            {
              v50 = v95.__r_.__value_.__r.__words[0];
            }

            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v95.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v95.__r_.__value_.__l.__size_;
            }

            v52 = std::string::append(&v104, v50, size);
            v46 = v52->__r_.__value_.__r.__words[0];
            v45 = HIBYTE(v52->__r_.__value_.__r.__words[2]);
            v52->__r_.__value_.__r.__words[0] = 0;
            v52->__r_.__value_.__l.__size_ = 0;
            v52->__r_.__value_.__r.__words[2] = 0;
            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v95.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v104.st_gid) < 0)
            {
              operator delete(*&v104.st_dev);
            }

            llvm::raw_fd_ostream::~raw_fd_ostream(&v99);
            v53 = 1;
LABEL_136:
            if (v45 < 0)
            {
              operator delete(v46);
              if ((SHIBYTE(v91) & 0x80000000) == 0)
              {
                return (v53 & 1) == 0;
              }
            }

            else if ((SHIBYTE(v91) & 0x80000000) == 0)
            {
              return (v53 & 1) == 0;
            }

            operator delete(__dst);
            return (v53 & 1) == 0;
          }

          v86 = v43;
          v87 = RawData;
          llvm::raw_fd_ostream::close(&v99);
          v54 = *(v6 + 640);
          v55 = *v54;
          v56 = v54[1];
          while (v56 != v55)
          {
            v57 = *(v56 - 1);
            v56 -= 3;
            if (v57 < 0)
            {
              operator delete(*v56);
            }
          }

          v54[1] = v55;
          llvm::raw_fd_ostream::~raw_fd_ostream(&v99);
          *(v6 + 592) = 1;
          v43 = v86;
          RawData = v87;
        }

        v98.__val_ = 0;
        v98.__cat_ = v44;
        if (*(v6 + 631) < 0)
        {
          std::string::__init_copy_ctor_external(&v97, *(v6 + 608), *(v6 + 616));
        }

        else
        {
          v97 = *(v6 + 608);
        }

        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &v97;
        }

        else
        {
          v58 = v97.__r_.__value_.__r.__words[0];
        }

        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = SHIBYTE(v97.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v59 = v97.__r_.__value_.__l.__size_;
        }

        llvm::raw_fd_ostream::raw_fd_ostream(&v99, v58, v59, &v98, 3, 2, 4);
        if (v98.__val_)
        {
          *&v104.st_dev = operator new(0x20uLL);
          *&v104.st_ino = xmmword_1E097BD70;
          strcpy(*&v104.st_dev, "Failed to open resource file: ");
        }

        else
        {
          v96 = 260;
          v95.__r_.__value_.__r.__words[0] = &v97;
          memset(&v104, 0, 44);
          *(&v104.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
          WORD2(v104.st_mtimespec.tv_sec) = 0;
          v104.st_mtimespec.tv_nsec = 0;
          v60 = llvm::sys::fs::status(&v95, &v104, 1);
          if (v60)
          {
            v62 = v61;
          }

          else
          {
            v62 = v44;
          }

          if (v60)
          {
            v63 = v60;
          }

          else
          {
            v63 = 0;
          }

          *&v98.__val_ = v63;
          v98.__cat_ = v62;
          if (!v63)
          {
            if (v60)
            {
              v85 = 0;
            }

            else
            {
              v85 = v104.st_atimespec.tv_sec;
            }

            llvm::raw_ostream::write(&v99, RawData, v43);
            v88 = 0;
            v67 = 0;
            v70 = v85 & 0xFFFFFFFFFFFFFF00;
            v68 = v85;
            v69 = 1;
LABEL_114:
            llvm::raw_fd_ostream::~raw_fd_ostream(&v99);
            if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v97.__r_.__value_.__l.__data_);
            }

            if (!v69)
            {
              v53 = 1;
              v46 = v67;
              v45 = v88;
              goto LABEL_136;
            }

            v47 = v70 | v68;
            v72 = llvm::StringMapImpl::hash(v35, v36, v71);
            (*llvm::StringMap<mlir::func::FuncOp,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 648), v35, v36, v72))[1] = v47;
            v46 = v67;
            v45 = v88;
            goto LABEL_118;
          }

          *&v104.st_dev = operator new(0x20uLL);
          *&v104.st_ino = xmmword_1E097BD80;
          strcpy(*&v104.st_dev, "Failed to get the file size: ");
        }

        std::error_code::message(&v95, &v98);
        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v95;
        }

        else
        {
          v64 = v95.__r_.__value_.__r.__words[0];
        }

        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v65 = v95.__r_.__value_.__l.__size_;
        }

        v66 = std::string::append(&v104, v64, v65);
        v67 = v66->__r_.__value_.__r.__words[0];
        v88 = HIBYTE(v66->__r_.__value_.__r.__words[2]);
        v66->__r_.__value_.__r.__words[0] = 0;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v104.st_gid) < 0)
        {
          operator delete(*&v104.st_dev);
        }

        v68 = 0;
        v69 = 0;
        v70 = 0;
        goto LABEL_114;
      }

      v31 = v30;
      if (v30 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v32 = SymName;
      if (v30 >= 0x17)
      {
        if ((v30 | 7) == 0x17)
        {
          v34 = 25;
        }

        else
        {
          v34 = (v30 | 7) + 1;
        }

        p_dst = operator new(v34);
        v90 = v31;
        v91 = v34 | 0x8000000000000000;
        __dst = p_dst;
      }

      else
      {
        HIBYTE(v91) = v30;
        p_dst = &__dst;
        if (!v30)
        {
          goto LABEL_50;
        }
      }

      memmove(p_dst, v32, v31);
LABEL_50:
      *(p_dst + v31) = 0;
      goto LABEL_51;
    }

    return 1;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::Type,std::string &,unsigned long &,std::string &>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::Type,std::string &,unsigned long &,std::string &>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v13);
  v15 = *(a4 + 23);
  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  if (v15 >= 0)
  {
    v17 = *(a4 + 23);
  }

  else
  {
    v17 = *(a4 + 8);
  }

  v18 = *(a6 + 23);
  if (v18 >= 0)
  {
    v19 = a6;
  }

  else
  {
    v19 = *a6;
  }

  if (v18 >= 0)
  {
    v20 = *(a6 + 23);
  }

  else
  {
    v20 = *(a6 + 8);
  }

  mlir::mps::ReadDataFromFileOp::build(a1, v27, *a3, v16, v17, *a5, v19, v20);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
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

llvm::StringMapImpl *llvm::StringMap<unsigned long,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x1000000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this, *(a2 + 2));
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      v7 = 0;
      v8 = v4 + 8 * v5 + 8;
      v9 = v6 + 8 * v5 + 8;
      do
      {
        v10 = *(*a2 + 8 * v7);
        if (v10)
        {
          v11 = v10 + 1 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          *(*this + 8 * v7) = v10;
        }

        else
        {
          v12 = *v10;
          buffer = llvm::allocate_buffer(*v10 + 17, 8uLL);
          v14 = buffer;
          v15 = (buffer + 2);
          if (v12)
          {
            memcpy(buffer + 2, v10 + 2, v12);
          }

          v15[v12] = 0;
          *v14 = v12;
          v14[1] = v10[1];
          *(*this + 8 * v7) = v14;
          *(v8 + 4 * v7) = *(v9 + 4 * v7);
        }

        ++v7;
      }

      while (v5 != v7);
    }
  }

  return this;
}

uint64_t *std::__tree<std::__value_type<std::string,mlir::func::FuncOp>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::func::FuncOp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::func::FuncOp>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::func::FuncOp> const&>(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__find_equal<std::string>(a1, a2, &v15, &v14, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v9 = operator new(0x40uLL);
    v7 = v9;
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((v9 + 32), *a4, *(a4 + 8));
    }

    else
    {
      *(v9 + 2) = *a4;
      *(v9 + 6) = *(a4 + 16);
    }

    v7[7] = *(a4 + 24);
    v10 = v15;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = v10;
    *v8 = v7;
    v11 = **a1;
    v12 = v7;
    if (v11)
    {
      *a1 = v11;
      v12 = *v8;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v12);
    a1[2] = (a1[2] + 1);
  }

  return v7;
}

double mlir::mpsx::createMakeANERegionsExternalPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x158uLL);
  result = 0.0;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  *(v3 + 2) = "builtin.module";
  *(v3 + 3) = 14;
  *(v3 + 32) = 1;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[8] = 0u;
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
  *v3 = &unk_1F5B01640;
  *a1 = v3;
  return result;
}

void mlir::mpsx::anonymous namespace::MakeANERegionsExternalPass::~MakeANERegionsExternalPass(mlir::mpsx::_anonymous_namespace_::MakeANERegionsExternalPass *this)
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

void *mlir::mpsx::MakeANERegionsExternalPassBase<mlir::mpsx::anonymous namespace::MakeANERegionsExternalPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
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

  v4[0] = &unk_1F5AFAE60;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v4);
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

  v4[0] = &unk_1F5AFB360;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, "tensor", 6uLL, v4);
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

void mlir::mpsx::anonymous namespace::MakeANERegionsExternalPass::runOnOperation(mlir::mpsx::_anonymous_namespace_::MakeANERegionsExternalPass *this)
{
  v63[1] = *MEMORY[0x1E69E9840];
  v45 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v61 = v63;
  v62 = 0x100000000;
  FunctionType = &v61;
  AneFamily = &FunctionType;
  v2 = 1;
  mlir::detail::walk<mlir::ForwardIterator>(v45, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_126MakeANERegionsExternalPass13convertRegionENS1_8ModuleOpEEUlNSB_5ANEOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_, &AneFamily, 1);
  v42[0] = mlir::Attribute::getContext((v45 + 24));
  v42[1] = 0;
  v43 = 0;
  v44 = 0;
  v41 = &unk_1F5AFAFF0;
  if (v62)
  {
    v4 = v61;
    v5 = 8 * v62;
    while (1)
    {
      v40 = *v4;
      v6 = *(v40 + 2);
      v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v40, v3);
      v43 = v6;
      v44 = v7;
      v8 = v40;
      if (!*(v40 + 47) || (v64.var0 = "sym_name", v64.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(v40, v64), (v10 & 1) == 0))
      {
        v65.var0 = "sym_name";
        v65.var1 = 8;
        InherentAttr = mlir::DictionaryAttr::get((v8 + 56), v65);
      }

      v11 = InherentAttr;
      if (!InherentAttr)
      {
        break;
      }

      v12 = *(v40 + 3);
      FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v40);
      AneFamily = mlir::mpsx::ANEOp::getAneFamily(&v40);
      v51 = v13;
      v39 = 1;
      ReadDataFromFileInfos = mlir::mpsx::ANEOp::getReadDataFromFileInfos(&v40);
      if (v15)
      {
        v16 = ReadDataFromFileInfos;
      }

      else
      {
        v16 = 0;
      }

      p_FunctionType = v16;
      ArgAttrs = mlir::mpsx::ANEOp::getArgAttrs(&v40);
      if (v18)
      {
        v19 = ArgAttrs;
      }

      else
      {
        v19 = 0;
      }

      v38 = v19;
      ResAttrs = mlir::mpsx::ANEOp::getResAttrs(&v40);
      if (v21)
      {
        v22 = ResAttrs;
      }

      else
      {
        v22 = 0;
      }

      v37 = v22;
      v23 = mlir::OpBuilder::create<mlir::mpsx::ANEOp,mlir::FunctionType,llvm::StringRef,BOOL,mlir::ArrayAttr,mlir::ArrayAttr,mlir::ArrayAttr>(v42, v12, &FunctionType, &AneFamily, &v39, &p_FunctionType, &v38, &v37);
      AneFamily = &v52;
      v51 = 0x400000000;
      FunctionType = &v45;
      p_AneFamily = &AneFamily;
      p_FunctionType = &FunctionType;
      mlir::detail::walk<mlir::ForwardIterator>(v40, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_126MakeANERegionsExternalPass13convertRegionENS1_8ModuleOpEEUlNS1_3mps18ReadDataFromFileOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, &p_FunctionType, 1);
      if (v51)
      {
        v24 = *(*(*(v23 + 48) + 96) + 32);
        Context = mlir::Attribute::getContext((v45 + 24));
        v26 = mlir::ArrayAttr::get(Context, AneFamily, v51);
        mlir::Operation::setAttr(v23, v24, v26);
      }

      mlir::RewriterBase::eraseOp(&v41, v40);
      v27 = mlir::Attribute::getContext((v23 + 24));
      v49 = 261;
      FunctionType = "sym_name";
      p_AneFamily = 8;
      v28 = mlir::StringAttr::get(v27, &FunctionType);
      mlir::Operation::setAttr(v23, v28, v11);
      if (AneFamily != &v52)
      {
        free(AneFamily);
      }

      ++v4;
      v5 -= 8;
      if (!v5)
      {
        v2 = 1;
        goto LABEL_42;
      }
    }

    FunctionType = "missing symbol name";
    v49 = 259;
    mlir::Operation::emitOpError(v40, &FunctionType, &AneFamily);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AneFamily);
    if (AneFamily)
    {
      mlir::InFlightDiagnostic::report(&AneFamily);
    }

    if (v60)
    {
      if (v59 != &v60)
      {
        free(v59);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v58;
        v31 = __p;
        if (v58 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v58 = v29;
        operator delete(v31);
      }

      v32 = v55;
      if (v55)
      {
        v33 = v56;
        v34 = v55;
        if (v56 != v55)
        {
          do
          {
            v36 = *--v33;
            v35 = v36;
            *v33 = 0;
            if (v36)
            {
              operator delete[](v35);
            }
          }

          while (v33 != v32);
          v34 = v55;
        }

        v56 = v32;
        operator delete(v34);
      }

      if (v53 != &v54)
      {
        free(v53);
      }
    }
  }

LABEL_42:
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(&v41, v3);
  if (v61 != v63)
  {
    free(v61);
  }

  if (!v2)
  {
    *(this + 5) |= 4uLL;
  }
}

double mlir::mpsx::MakeANERegionsExternalPassBase<mlir::mpsx::anonymous namespace::MakeANERegionsExternalPass>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
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
  *v4 = &unk_1F5B01640;
  *a2 = v4;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::ANEOp,mlir::FunctionType,llvm::StringRef,BOOL,mlir::ArrayAttr,mlir::ArrayAttr,mlir::ArrayAttr>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::ANEOp,mlir::FunctionType,llvm::StringRef,BOOL,mlir::ArrayAttr,mlir::ArrayAttr,mlir::ArrayAttr>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::mpsx::ANEOp::build(a1, v25, *a3, *a4, a4[1], *a5, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id)
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

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_126MakeANERegionsExternalPass13convertRegionENS1_8ModuleOpEEUlNSB_5ANEOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id)
  {
    v2 = **a1;
    v3 = *(v2 + 8);
    if (v3 >= *(v2 + 12))
    {
      v4 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v2 + 16, v3 + 1, 8);
      a2 = v4;
      LODWORD(v3) = *(v2 + 8);
    }

    *(*v2 + 8 * v3) = a2;
    ++*(v2 + 8);
  }
}

void **_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_126MakeANERegionsExternalPass13convertRegionENS1_8ModuleOpEEUlNS1_3mps18ReadDataFromFileOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(void **result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
    {
      v2 = *result;
      v10 = a2;
      result = mlir::pdl::OperationOp::getOpName(&v10, &v11);
      if (v12 == 1)
      {
        Context = mlir::Attribute::getContext((**v2 + 24));
        *&v11 = "mpsx.readDataFromFileSymbol";
        v13 = 259;
        v4 = mlir::StringAttr::get(Context, &v11);
        mlir::NamedAttribute::NamedAttribute(&v9, v4, *(v10 + 16 * ((*(v10 + 44) >> 23) & 1) + 72));
        v5 = v2[1];
        v6 = mlir::Attribute::getContext((**v2 + 24));
        v11 = v9;
        result = mlir::DictionaryAttr::get(v6, &v11, 1);
        v7 = *(v5 + 8);
        if (v7 >= *(v5 + 12))
        {
          v8 = result;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v5, v5 + 16, v7 + 1, 8);
          result = v8;
          LODWORD(v7) = *(v5 + 8);
        }

        *(*v5 + 8 * v7) = result;
        ++*(v5 + 8);
      }
    }
  }

  return result;
}

mlir::mpsx::_anonymous_namespace_::WriteANERegionsPass *mlir::mpsx::createWriteANERegionsPass@<X0>(uint64_t a1@<X0>, mlir::mpsx::_anonymous_namespace_::WriteANERegionsPass **a2@<X8>)
{
  v4 = operator new(0x368uLL);
  std::string::operator=((v5 + 472), a1);
  v6 = *(v4 + 71);
  if (!v6)
  {
    goto LABEL_12;
  }

  (*(*v6 + 48))(v6, a1);
  if (*(a1 + 56) == 1)
  {
    if (*(v4 + 824) == 1)
    {
      *(v4 + 101) = *(a1 + 40);
      *(v4 + 204) = *(a1 + 48);
    }

    else
    {
      *(v4 + 100) = &unk_1F5B01218;
      *(v4 + 101) = *(a1 + 40);
      *(v4 + 204) = *(a1 + 48);
      *(v4 + 824) = 1;
    }
  }

  if (*(a1 + 88) == 1)
  {
    if (*(v4 + 856) == 1)
    {
      *(v4 + 105) = *(a1 + 72);
      *(v4 + 212) = *(a1 + 80);
    }

    else
    {
      *(v4 + 104) = &unk_1F5B01238;
      *(v4 + 105) = *(a1 + 72);
      *(v4 + 212) = *(a1 + 80);
      *(v4 + 856) = 1;
    }
  }

  v8 = *(a1 + 24);
  v7 = a1 + 24;
  *(v4 + 108) = *(v7 + 72);
  *(v4 + 720) = v8;
  v9 = *(v4 + 97);
  if (v9)
  {
    result = (*(*v9 + 48))(v9, v7);
    *a2 = v4;
  }

  else
  {
LABEL_12:
    v11 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}

mlir::mpsx::_anonymous_namespace_::WriteANERegionsPass *mlir::mpsx::anonymous namespace::WriteANERegionsPass::WriteANERegionsPass(mlir::mpsx::_anonymous_namespace_::WriteANERegionsPass *this)
{
  *(this + 2) = "builtin.module";
  *(this + 3) = 14;
  *(this + 32) = 1;
  *(this + 40) = 0;
  *(this + 120) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  *(this + 23) = this + 200;
  *(this + 24) = 0x400000000;
  *(this + 29) = this + 248;
  *(this + 30) = 0x400000000;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0x1000000000;
  *(this + 42) = 0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *this = &unk_1F5B01720;
  *&v3 = "The filename for the output to be produced.";
  *(&v3 + 1) = 43;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(this + 344, this + 152, "output-filename", 15, &v3);
  *(this + 43) = &unk_1F5AFC930;
  *(this + 72) = &unk_1F5AFC9B0;
  *&v3 = "(Testing only) Force the pass to overwrite any files that already exist.";
  *(&v3 + 1) = 72;
  v7 = 0;
  v8 = &v7;
  v6 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(this + 592, this + 152, "force-overwrite", 15, &v3, &v8, &v6);
  *(this + 74) = &unk_1F5AFB130;
  *(this + 98) = &unk_1F5AFB1B0;
  *this = &unk_1F5B016B0;
  *(this + 800) = 0;
  *(this + 824) = 0;
  *(this + 832) = 0;
  *(this + 856) = 0;
  *(this + 108) = 0;
  mlir::getMPSVersionFromANEC(&v3);
  if (*(this + 824) == v5)
  {
    if (*(this + 824))
    {
      *(this + 101) = *(&v3 + 1);
      *(this + 204) = v4;
    }
  }

  else if (*(this + 824))
  {
    *(this + 824) = 0;
  }

  else
  {
    *(this + 100) = &unk_1F5B01218;
    *(this + 101) = *(&v3 + 1);
    *(this + 204) = v4;
    *(this + 824) = 1;
  }

  mlir::getMPSSPIVersionFromANEC(&v3);
  if (*(this + 856) == v5)
  {
    if (*(this + 856))
    {
      *(this + 105) = *(&v3 + 1);
      *(this + 212) = v4;
    }
  }

  else if (*(this + 856))
  {
    *(this + 856) = 0;
  }

  else
  {
    *(this + 104) = &unk_1F5B01238;
    *(this + 105) = *(&v3 + 1);
    *(this + 212) = v4;
    *(this + 856) = 1;
  }

  return this;
}

void mlir::mpsx::anonymous namespace::WriteANERegionsPass::~WriteANERegionsPass(mlir::mpsx::_anonymous_namespace_::WriteANERegionsPass *this)
{
  *this = &unk_1F5B01720;
  *(this + 74) = &unk_1F5B3E720;
  v2 = this + 752;
  v3 = *(this + 97);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 74) = &unk_1F5B3E1D8;
  v4 = *(this + 86);
  if (v4 != *(this + 85))
  {
    free(v4);
  }

  v5 = *(this + 82);
  if (v5 != this + 672)
  {
    free(v5);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);
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

void *mlir::mpsx::WriteANERegionsBase<mlir::mpsx::anonymous namespace::WriteANERegionsPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
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

  v4[0] = &unk_1F5AFAE60;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v4);
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

  v4[0] = &unk_1F5AFB360;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, "tensor", 6uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFAEF0;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id, "scf", 3uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5B017D8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::anec::ANECDialect,void>::id, "anec", 4uLL, v4);
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

uint64_t mlir::mpsx::anonymous namespace::WriteANERegionsPass::runOnOperation(mlir::mpsx::_anonymous_namespace_::WriteANERegionsPass *this)
{
  v119 = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(Context, v3);
  if (*(this + 824) != 1 || (*(this + 856) & 1) == 0)
  {
    v19 = *(this + 5);
    v106 = 257;
    mlir::Operation::emitOpError(v19 & 0xFFFFFFFFFFFFFFF8, &v103, &v107);
    if (v107)
    {
      LODWORD(v96) = 3;
      v97 = "missing dialect version";
      v98 = 23;
      v20 = &v96;
      v21 = v109;
      if (v110 >= v111)
      {
        if (v109 <= &v96 && v109 + 24 * v110 > &v96)
        {
          v84 = &v96 - v109;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
          v21 = v109;
          v20 = (v109 + v84);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
          v20 = &v96;
          v21 = v109;
        }
      }

      v22 = &v21[24 * v110];
      v23 = *v20;
      *(v22 + 2) = v20[2];
      *v22 = v23;
      ++v110;
      if (v107)
      {
        mlir::InFlightDiagnostic::report(&v107);
      }
    }

    if (v118 == 1)
    {
      if (v117 != &v118)
      {
        free(v117);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v116;
        v26 = __p;
        if (v116 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v116 = v24;
        operator delete(v26);
      }

      v27 = v113;
      if (v113)
      {
        v28 = v114;
        v29 = v113;
        if (v114 != v113)
        {
          do
          {
            v31 = *--v28;
            v30 = v31;
            *v28 = 0;
            if (v31)
            {
              operator delete[](v30);
            }
          }

          while (v28 != v27);
          v29 = v113;
        }

        v114 = v27;
        operator delete(v29);
      }

      if (v109 != v112)
      {
        free(v109);
      }
    }

    goto LABEL_141;
  }

  v4 = *(this + 5);
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v5 = *(this + 495);
  if (v5 < 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFF8;
    if (*(this + 60))
    {
LABEL_5:
      if (v5 >= 0)
      {
        v7 = this + 472;
      }

      else
      {
        v7 = *(this + 59);
      }

      if (v5 >= 0)
      {
        v8 = *(this + 495);
      }

      else
      {
        v8 = *(this + 60);
      }

      MEMORY[0x1E12E55E0](&v100, v7, v8);
      LOWORD(v110) = 260;
      *&v107 = &v100;
      if (llvm::sys::fs::access(&v107, 0) || (*(this + 720) & 1) != 0)
      {
        v93 = 0;
        v94 = 0;
        v95 = 0;
        if (v102 >= 0)
        {
          v9 = &v100;
        }

        else
        {
          v9 = v100;
        }

        if (v102 >= 0)
        {
          v10 = SHIBYTE(v102);
        }

        else
        {
          v10 = v101;
        }

        mlir::openOutputFile(v9, v10, &v93, &v92);
        v11 = HIBYTE(v95);
        if (v95 < 0)
        {
          v11 = v94;
        }

        if (v11)
        {
          v96 = "opening output file error: ";
          v99 = 259;
          mlir::Operation::emitOpError(v6, &v96, &v107);
          if (v107)
          {
            v106 = 260;
            v103 = &v93;
            mlir::Diagnostic::operator<<(&v107 + 8, &v103);
          }

          LOBYTE(v6) = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
          if (v107)
          {
            mlir::InFlightDiagnostic::report(&v107);
          }

          if (v118 == 1)
          {
            if (v117 != &v118)
            {
              free(v117);
            }

            v13 = __p;
            if (__p)
            {
              v14 = v116;
              v15 = __p;
              if (v116 != __p)
              {
                do
                {
                  v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
                }

                while (v14 != v13);
                v15 = __p;
              }

              v116 = v13;
              operator delete(v15);
            }

            v16 = v113;
            if (v113)
            {
              v17 = v114;
              v18 = v113;
              if (v114 != v113)
              {
                do
                {
                  v33 = *--v17;
                  v32 = v33;
                  *v17 = 0;
                  if (v33)
                  {
                    operator delete[](v32);
                  }
                }

                while (v17 != v16);
                v18 = v113;
              }

              v114 = v16;
              operator delete(v18);
            }

            if (v109 != v112)
            {
              free(v109);
            }
          }

LABEL_132:
          v81 = v92;
          v92 = 0;
          if (v81)
          {
            if (*(v81 + 128) == 1)
            {
              llvm::raw_fd_ostream::~raw_fd_ostream((v81 + 32));
            }

            llvm::CleanupInstaller::~CleanupInstaller(v81);
            operator delete(v82);
          }

          if (SHIBYTE(v95) < 0)
          {
            operator delete(v93);
          }

          goto LABEL_138;
        }

        v42 = *(v6 + 24);
        LOBYTE(v107) = 0;
        v108 = 0;
        v43 = mlir::ModuleOp::create(v42, &v107);
        v91 = v43;
        *&v107 = mlir::Operation::getAttrDictionary(v6);
        Value = mlir::ArrayAttr::getValue(&v107);
        mlir::Operation::setAttrs(v43, Value, v45);
        *&v107 = this;
        *(&v107 + 1) = &v91;
        v103 = &v107;
        v46 = mlir::detail::walk<mlir::ForwardIterator>(v6, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_119WriteANERegionsPass9serializeENS1_8ModuleOpEE3__0NSC_5ANEOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESP_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v103, 1);
        if (!v46)
        {
          LOBYTE(v6) = 0;
          goto LABEL_130;
        }

        if (*(this + 108))
        {
          if (*(this + 824))
          {
            v43 = v91;
            v47 = *(this + 101);
            v96 = &unk_1F5B01218;
            v97 = v47;
            LODWORD(v98) = *(this + 204);
            if (*(this + 856))
            {
              v48 = *(this + 105);
              v87 = &unk_1F5B01238;
              v88 = v48;
              v89 = *(this + 212);
              v49 = *(v92 + 17);
              ExtraSerializationDialectsForANEC = mlir::getExtraSerializationDialectsForANEC(v46);
              mlir::mps::inMemorySerializeInternalMPSModule(v43, &v96, &v87, v49, ExtraSerializationDialectsForANEC, v51, &v90);
              v52 = v90;
              if (v90)
              {
                v53 = *(this + 108);
                v90 = 0;
                v54 = *v53;
                *v53 = v52;
                if (v54)
                {
                  mlir::mps::MPSResources::~MPSResources(v54);
                  operator delete(v55);
                }
              }

              else
              {
                v103 = "failed to serialize the module";
                v106 = 259;
                mlir::Operation::emitOpError(v6, &v103, &v107);
                LOBYTE(v6) = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
                if (v107)
                {
                  mlir::InFlightDiagnostic::report(&v107);
                }

                if (v118 == 1)
                {
                  mlir::Diagnostic::~Diagnostic((&v107 + 8));
                }
              }

              v79 = v90;
              v90 = 0;
              if (v79)
              {
                mlir::mps::MPSResources::~MPSResources(v79);
                operator delete(v80);
              }

              if (!v52)
              {
                goto LABEL_130;
              }

              goto LABEL_129;
            }
          }
        }

        else if (*(this + 824))
        {
          v43 = v91;
          v71 = *(this + 101);
          v96 = &unk_1F5B01218;
          v97 = v71;
          LODWORD(v98) = *(this + 204);
          if (*(this + 856))
          {
            v72 = *(this + 105);
            v87 = &unk_1F5B01238;
            v88 = v72;
            v89 = *(this + 212);
            v73 = *(v92 + 17);
            v120.var0 = "MLIR20.0.0git";
            v120.var1 = 13;
            v74 = mlir::BytecodeWriterConfig::BytecodeWriterConfig(&v107, v120);
            __src = mlir::getExtraSerializationDialectsForANEC(v74);
            v78 = mlir::mps::serializeInternalMPSModule(v43, &v96, &v87, v73, &v107, 0, 0, v77, __src, v76);
            mlir::BytecodeWriterConfig::~BytecodeWriterConfig(&v107);
            if ((v78 & 1) == 0)
            {
              v103 = "failed to serialize the module";
              v106 = 259;
              mlir::Operation::emitOpError(v6, &v103, &v107);
              LOBYTE(v6) = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v107);
              goto LABEL_130;
            }

LABEL_129:
            LOBYTE(v6) = 1;
            *(v92 + 24) = 1;
LABEL_130:
            if (v91)
            {
              mlir::Operation::erase(v91);
            }

            goto LABEL_132;
          }
        }

        std::__throw_bad_optional_access[abi:nn200100]();
        goto LABEL_154;
      }

      v99 = 257;
      v43 = &v107;
      mlir::Operation::emitOpError(v6, &v96, &v107);
      if (!v107)
      {
        goto LABEL_93;
      }

      LODWORD(v103) = 3;
      v104 = "file ";
      v105 = 5;
      v56 = v110;
      v57 = &v103;
      v58 = v109;
      if (v110 >= v111)
      {
        if (v109 <= &v103 && v109 + 24 * v110 > &v103)
        {
LABEL_154:
          v85 = (&v103 - v58);
          llvm::SmallVectorBase<unsigned int>::grow_pod(v43 + 24, v112, v56 + 1, 24);
          v58 = v109;
          v57 = &v85[v109];
          goto LABEL_89;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
        v57 = &v103;
        v58 = v109;
      }

LABEL_89:
      v59 = &v58[24 * v110];
      v60 = *v57;
      *(v59 + 2) = v57[2];
      *v59 = v60;
      ++v110;
      if (v107)
      {
        v106 = 260;
        v103 = &v100;
        mlir::Diagnostic::operator<<(&v107 + 8, &v103);
        if (v107)
        {
          LODWORD(v103) = 3;
          v104 = " exists already";
          v105 = 15;
          v61 = &v103;
          v62 = v109;
          if (v110 >= v111)
          {
            if (v109 <= &v103 && v109 + 24 * v110 > &v103)
            {
              v86 = &v103 - v109;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v43 + 24, v112, v110 + 1, 24);
              v62 = v109;
              v61 = (v109 + v86);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v43 + 24, v112, v110 + 1, 24);
              v61 = &v103;
              v62 = v109;
            }
          }

          v63 = &v62[24 * v110];
          v64 = *v61;
          *(v63 + 2) = v61[2];
          *v63 = v64;
          ++v110;
        }
      }

LABEL_93:
      LOBYTE(v6) = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
      if (v107)
      {
        mlir::InFlightDiagnostic::report(&v107);
      }

      if (v118 == 1)
      {
        if (v117 != &v118)
        {
          free(v117);
        }

        v65 = __p;
        if (__p)
        {
          v66 = v116;
          v67 = __p;
          if (v116 != __p)
          {
            do
            {
              v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
            }

            while (v66 != v65);
            v67 = __p;
          }

          v116 = v65;
          operator delete(v67);
        }

        v37 = v113;
        if (!v113)
        {
          goto LABEL_111;
        }

        v68 = v114;
        v39 = v113;
        if (v114 == v113)
        {
LABEL_110:
          v114 = v37;
          operator delete(v39);
LABEL_111:
          if (v109 != v112)
          {
            free(v109);
          }

          goto LABEL_138;
        }

        do
        {
          v70 = *--v68;
          v69 = v70;
          *v68 = 0;
          if (v70)
          {
            operator delete[](v69);
          }
        }

        while (v68 != v37);
LABEL_109:
        v39 = v113;
        goto LABEL_110;
      }

      goto LABEL_138;
    }
  }

  else
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFF8;
    if (*(this + 495))
    {
      goto LABEL_5;
    }
  }

  v103 = "outputFilename is not set";
  v106 = 259;
  mlir::Operation::emitOpError(v6, &v103, &v107);
  LOBYTE(v6) = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
  if (v107)
  {
    mlir::InFlightDiagnostic::report(&v107);
  }

  if (v118 == 1)
  {
    if (v117 != &v118)
    {
      free(v117);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v116;
      v36 = __p;
      if (v116 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v116 = v34;
      operator delete(v36);
    }

    v37 = v113;
    if (!v113)
    {
      goto LABEL_111;
    }

    v38 = v114;
    v39 = v113;
    if (v114 == v113)
    {
      goto LABEL_110;
    }

    do
    {
      v41 = *--v38;
      v40 = v41;
      *v38 = 0;
      if (v41)
      {
        operator delete[](v40);
      }
    }

    while (v38 != v37);
    goto LABEL_109;
  }

LABEL_138:
  if (SHIBYTE(v102) < 0)
  {
    operator delete(v100);
  }

  if ((v6 & 1) == 0)
  {
LABEL_141:
    *(this + 5) |= 4uLL;
  }

  return MPSGraphDelegateCompiler.precompilationDescriptor.modify(Context, v12);
}

uint64_t mlir::mpsx::WriteANERegionsBase<mlir::mpsx::anonymous namespace::WriteANERegionsPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x368uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
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
  *v4 = &unk_1F5B01720;
  *&v10 = "The filename for the output to be produced.";
  *(&v10 + 1) = 43;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "output-filename", 15, &v10);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v10 = "(Testing only) Force the pass to overwrite any files that already exist.";
  *(&v10 + 1) = 72;
  v8 = 0;
  v9 = &v8;
  v7 = 1;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>((v4 + 37), v4 + 152, "force-overwrite", 15, &v10, &v9, &v7);
  *(v4 + 74) = &unk_1F5AFB130;
  *(v4 + 98) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B016B0;
  *(v4 + 800) = 0;
  *(v4 + 824) = 0;
  if (*(a1 + 824) == 1)
  {
    *(v4 + 100) = &unk_1F5B01218;
    *(v4 + 101) = *(a1 + 808);
    *(v4 + 204) = *(a1 + 816);
    *(v4 + 824) = 1;
  }

  *(v4 + 832) = 0;
  *(v4 + 856) = 0;
  if (*(a1 + 856) == 1)
  {
    *(v4 + 104) = &unk_1F5B01238;
    *(v4 + 105) = *(a1 + 840);
    *(v4 + 212) = *(a1 + 848);
    *(v4 + 856) = 1;
  }

  *(v4 + 108) = *(a1 + 864);
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, _BYTE **a6, _WORD *a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v9 = llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(a1, v11, &v14, a5, a6, a7);
  *(v9 + 200) = 0;
  *v9 = &unk_1F5AFB1F0;
  *(v9 + 192) = &unk_1F5AFB270;
  v14 = (v9 + 192);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v14);
  v12[0] = &unk_1F5B01790;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_1F5B01790;
  v15 = a1;
  std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](&v14, a1 + 160);
  if (v16 == &v14)
  {
    (*(*v16 + 4))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 5))();
  }

  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  return a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, _BYTE **a5, _WORD *a6)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v12 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v15 = *(a1 + 72);
  if (v15 >= *(a1 + 76))
  {
    v18 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v15 + 1, 8);
    GeneralCategory = v18;
    LODWORD(v15) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v15) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFB2B0;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E720;
  *(a1 + 152) = &unk_1F5B3E320;
  *(a1 + 160) = &unk_1F5AFB2D0;
  *(a1 + 184) = a1 + 160;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v16 = *a5;
  *(a1 + 128) = **a5;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v16;
  *(a1 + 10) = (32 * (*a6 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_4descENS7_11initializerIbEENS7_12OptionHiddenEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISO_EEFvRKbEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B01790;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_4descENS7_11initializerIbEENS7_12OptionHiddenEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISO_EEFvRKbEE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B01790;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::anec::ANECDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::anec::ANECDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B017D8;
  return result;
}

mlir::anec::ANECDialect *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::anec::ANECDialect * mlir::MLIRContext::getOrLoadDialect<mlir::anec::ANECDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, mlir::anec::ANECDialect **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::anec::ANECDialect::ANECDialect(v4, v3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_119WriteANERegionsPass9serializeENS1_8ModuleOpEE3__0NSC_5ANEOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESP_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t a1, mlir::Operation *a2)
{
  v184 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id)
  {
    v4 = **(*a1 + 8);
    v151 = a2;
    if (mlir::mpsx::ANEOp::getIsExternal(&v151))
    {
      v154[0] = "Cannot emit bytecode for external ANE region";
      LOWORD(v156) = 259;
      mlir::Operation::emitError(v151, v154, &Value);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v183 != 1)
      {
        return v6;
      }

      if (v182 != &v183)
      {
        free(v182);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v181;
        v9 = __p;
        if (v181 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v181 = v7;
        operator delete(v9);
      }

      v10 = v178;
      if (v178)
      {
        v11 = v179;
        v12 = v178;
        if (v179 != v178)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v178;
        }

        v179 = v10;
        operator delete(v12);
      }

      v57 = v172;
      if (v172 == &v174)
      {
        return v6;
      }

      goto LABEL_232;
    }

    ParentOp = v151;
    do
    {
      ParentOp = *(ParentOp + 2);
      if (!ParentOp)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(ParentOp);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v16 = ParentOp;
    v154[0] = mlir::SymbolRefAttr::get(v151, v5);
    Value = mlir::AffineMapAttr::getValue(v154);
    v150[0] = mlir::OpaqueAttr::getAttrData(&Value);
    v150[1] = v17;
    v18 = v151;
    if (!*(v151 + 47) || (v185.var0 = "sym_name", v185.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(v151, v185), (v20 & 1) == 0))
    {
      v186.var0 = "sym_name";
      v186.var1 = 8;
      InherentAttr = mlir::DictionaryAttr::get((v18 + 56), v186);
    }

    v21 = InherentAttr;
    v22 = v16;
    if (v21 && *(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v21 = 0;
    }

    v149 = v21;
    v166 = &v168;
    v167 = 0x100000000;
    Value = &v149;
    v170 = &v166;
    v154[0] = &Value;
    v6 = 1;
    mlir::detail::walk<mlir::ForwardIterator>(v22, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_119WriteANERegionsPass5addOpENS1_8ModuleOpENSB_5ANEOpEE3__0NS1_9placement10RegionCallEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_, v154, 1);
    if (!v167)
    {
LABEL_231:
      v57 = v166;
      if (v166 == &v168)
      {
        return v6;
      }

LABEL_232:
      free(v57);
      return v6;
    }

    if (v167 == 1)
    {
      v23 = *v166;
      v148[0] = 0;
      v148[1] = v23;
      Context = mlir::Attribute::getContext((v151 + 24));
      v25 = (((v151 + 16 * ((*(v151 + 11) >> 23) & 1) + ((*(v151 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v151 + 10));
      v26 = v25[1];
      if (v26)
      {
        v27 = (v26 - 8);
      }

      else
      {
        v27 = 0;
      }

      Terminator = mlir::Block::getTerminator(v27, v24);
      if (Terminator)
      {
        v29 = Terminator;
        v154[0] = &v155;
        v154[1] = 0x400000000;
        v152[0] = v153;
        v152[1] = 0x400000000;
        v163 = v165;
        v164 = 0x400000000;
        v160 = v162;
        v161 = 0x400000000;
        v30 = *v25;
        if (*v25 != v25)
        {
          v31 = v25[1];
          if (v31)
          {
            v32 = v31 - 8;
          }

          else
          {
            v32 = 0;
          }

          v33 = ((*(v32 + 56) - *(v32 + 48)) >> 3);
          if (v33 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v154, &v155, v33, 8);
            v30 = *v25;
          }

          if (v30 != v25)
          {
            v34 = v25[1];
            v35 = v34 ? v34 - 8 : 0;
            v36 = ((*(v35 + 56) - *(v35 + 48)) >> 3);
            if (v36 > HIDWORD(v152[1]))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v152, v153, v36, 8);
            }
          }
        }

        if ((*(v29 + 46) & 0x80) == 0)
        {
          goto LABEL_54;
        }

        v37 = *(v29 + 68);
        if (v37 > HIDWORD(v164))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v165, v37, 8);
          if ((*(v29 + 46) & 0x80) == 0)
          {
LABEL_54:
            v38 = (((v151 + 16 * ((*(v151 + 11) >> 23) & 1) + ((*(v151 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v151 + 10));
            if (*v38 == v38 || ((v39 = v38[1]) != 0 ? (v40 = v39 - 8) : (v40 = 0), v41 = *(v40 + 48), v42 = *(v40 + 56), v42 == v41))
            {
LABEL_92:
              if ((*(v29 + 46) & 0x80) == 0 || (v58 = *(v29 + 68), !v58))
              {
LABEL_125:
                v72 = *(v4 + 40);
                v71 = *(v4 + 44);
                v144 = Context;
                v145 = 0;
                v146 = 0;
                v73 = *(((v4 + 16 * ((v71 >> 23) & 1) + ((v71 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v72 + 8);
                if (v73)
                {
                  v74 = v73 - 8;
                }

                else
                {
                  v74 = 0;
                }

                v145 = v74;
                v146 = v74 + 32;
                mlir::ValueRange::ValueRange(&Value, v152[0], LODWORD(v152[1]));
                mlir::ValueRange::ValueRange(&v157, v160, v161);
                v143 = mlir::FunctionType::get(Context, Value, v170, v157, p_Value);
                v148[0] = mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef const&,mlir::FunctionType &>(&v144, *(v151 + 3), v150, &v143);
                mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::addEntryBlock(v148);
                LODWORD(v171) = 0;
                v170 = 0;
                Value = 0;
                v174 = 0;
                v173 = 0;
                v172 = 0;
                v176 = 0;
                v175 = 0;
                v177 = 0;
                v76 = v148[0];
                v77 = *(v148[0] + 44);
                v78 = (v77 >> 23) & 1;
                v79 = (v77 >> 21) & 0x7F8;
                v80 = 32 * *(v148[0] + 40);
                v81 = (((v148[0] + 16 * v78 + v79 + 71) & 0xFFFFFFFFFFFFFFF8) + v80);
                if (*v81 != v81)
                {
                  v82 = v81[1];
                  v83 = v82 ? v82 - 8 : 0;
                  if (LODWORD(v154[1]))
                  {
                    v84 = *(v83 + 48);
                    v85 = *(v83 + 56);
                    if (v85 != v84)
                    {
                      v86 = v154[0];
                      v87 = v84 + 8;
                      v88 = 8 * LODWORD(v154[1]) - 8;
                      do
                      {
                        v89 = *v86++;
                        v90 = *(v87 - 8);
                        v157 = v89;
                        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&Value, &v157) = v90;
                        if (!v88)
                        {
                          break;
                        }

                        v88 -= 8;
                        v45 = v87 == v85;
                        v87 += 8;
                      }

                      while (!v45);
                      v76 = v148[0];
                      v91 = *(v148[0] + 44);
                      v78 = (v91 >> 23) & 1;
                      v79 = (v91 >> 21) & 0x7F8;
                      v80 = 32 * *(v148[0] + 40);
                    }
                  }
                }

                v92 = *(((v76 + 16 * v78 + v79 + 71) & 0xFFFFFFFFFFFFFFF8) + v80 + 8);
                if (v92)
                {
                  v93 = v92 - 8;
                }

                else
                {
                  v93 = 0;
                }

                v94 = *(v93 + 40);
                v145 = v93;
                v146 = v94;
                v95 = ((v151 + 16 * ((*(v151 + 11) >> 23) & 1) + ((*(v151 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v151 + 10);
                v157 = &v144;
                p_Value = &Value;
                for (i = *(v95 + 8); i != v95; i = *(i + 8))
                {
                  v97 = i - 8;
                  if (!i)
                  {
                    v97 = 0;
                  }

                  v98 = *(v97 + 40);
                  v99 = v97 + 32;
                  if (v98 != v97 + 32)
                  {
                    do
                    {
                      v100 = *(v98 + 8);
                      v101 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v98, v75);
                      v98 = v100;
                    }

                    while (v100 != v99);
                  }
                }

                v157 = v159;
                p_Value = 0x200000000;
                v102 = v164;
                if (v164 >= 3)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v159, v164, 8);
                  v102 = v164;
                }

                if (v102)
                {
                  v103 = v163;
                  v104 = v163 + 8 * v102;
                  do
                  {
                    v105 = *v103;
                    if (v171)
                    {
                      v106 = 0x9DDFEA08EB382D69 * ((8 * *v103 - 0xAE502812AA7333) ^ HIDWORD(*v103));
                      v107 = 0x9DDFEA08EB382D69 * (HIDWORD(v105) ^ (v106 >> 47) ^ v106);
                      v108 = (-348639895 * ((v107 >> 47) ^ v107)) & (v171 - 1);
                      v109 = *(Value + 2 * v108);
                      if (v109 == v105)
                      {
LABEL_156:
                        if (v108 != v171)
                        {
                          v105 = *(Value + 2 * v108 + 1);
                        }
                      }

                      else
                      {
                        v111 = 1;
                        while (v109 != -4096)
                        {
                          v112 = v108 + v111++;
                          v108 = v112 & (v171 - 1);
                          v109 = *(Value + 2 * v108);
                          if (v109 == v105)
                          {
                            goto LABEL_156;
                          }
                        }
                      }
                    }

                    v110 = p_Value;
                    if (p_Value >= HIDWORD(p_Value))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v159, p_Value + 1, 8);
                      v110 = p_Value;
                    }

                    *(v157 + v110) = v105;
                    LODWORD(p_Value) = p_Value + 1;
                    v103 += 8;
                  }

                  while (v103 != v104);
                }

                mlir::OpBuilder::create<mlir::func::ReturnOp,llvm::SmallVector<mlir::Value,2u> &>(&v144, *(v29 + 24), &v157);
                if (v157 != v159)
                {
                  free(v157);
                }

                llvm::deallocate_buffer(v175, (16 * v177));
              }

              v59 = (*(v29 + 72) + 24);
              while (1)
              {
                v157 = *v59;
                if (!*v157 || **v157)
                {
                  break;
                }

                DefiningOp = mlir::Value::getDefiningOp(&v157);
                if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id)
                {
                  *&v144 = "invalid result";
                  v147 = 259;
                  mlir::Operation::emitOpError(v151, &v144, &Value);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                  if (Value)
                  {
                    mlir::InFlightDiagnostic::report(&Value);
                  }

                  if ((v183 & 1) == 0)
                  {
                    goto LABEL_221;
                  }

                  if (v182 != &v183)
                  {
                    free(v182);
                  }

                  v127 = __p;
                  if (__p)
                  {
                    v128 = v181;
                    v129 = __p;
                    if (v181 != __p)
                    {
                      do
                      {
                        v128 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v128 - 1);
                      }

                      while (v128 != v127);
                      v129 = __p;
                    }

                    v181 = v127;
                    operator delete(v129);
                  }

                  v116 = v178;
                  if (!v178)
                  {
                    goto LABEL_219;
                  }

                  v130 = v179;
                  v118 = v178;
                  if (v179 == v178)
                  {
                    goto LABEL_218;
                  }

                  do
                  {
                    v132 = *--v130;
                    v131 = v132;
                    *v130 = 0;
                    if (v132)
                    {
                      operator delete[](v131);
                    }
                  }

                  while (v130 != v116);
                  goto LABEL_217;
                }

                v61 = *(*(DefiningOp + 72) + 24);
                v62 = v164;
                if (v164 >= HIDWORD(v164))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v165, v164 + 1, 8);
                  v62 = v164;
                }

                *(v163 + v62) = v61;
                LODWORD(v164) = v164 + 1;
                v63 = *(*(v163 + v164 - 1) + 8);
                v64 = v161;
                if (v161 >= HIDWORD(v161))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, v161 + 1, 8);
                  v64 = v161;
                }

                *(v160 + v64) = v63 & 0xFFFFFFFFFFFFFFF8;
                LODWORD(v161) = v161 + 1;
                v59 += 4;
                if (!--v58)
                {
                  goto LABEL_125;
                }
              }

              *&v144 = "invalid result";
              v147 = 259;
              mlir::Operation::emitOpError(v151, &v144, &Value);
              v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v183 != 1)
              {
                goto LABEL_221;
              }

              if (v182 != &v183)
              {
                free(v182);
              }

              v121 = __p;
              if (__p)
              {
                v122 = v181;
                v123 = __p;
                if (v181 != __p)
                {
                  do
                  {
                    v122 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v122 - 1);
                  }

                  while (v122 != v121);
                  v123 = __p;
                }

                v181 = v121;
                operator delete(v123);
              }

              v116 = v178;
              if (!v178)
              {
                goto LABEL_219;
              }

              v124 = v179;
              v118 = v178;
              if (v179 == v178)
              {
                goto LABEL_218;
              }

              do
              {
                v126 = *--v124;
                v125 = v126;
                *v124 = 0;
                if (v126)
                {
                  operator delete[](v125);
                }
              }

              while (v124 != v116);
            }

            else
            {
              while (1)
              {
                v43 = **v41;
                if (!v43 || *v43)
                {
                  break;
                }

                v44 = v43[2];
                if (v44)
                {
                  v45 = *(*(v44 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id;
                }

                else
                {
                  v45 = 0;
                }

                if (!v45)
                {
                  *&v144 = "invalid argument";
                  v147 = 259;
                  mlir::Operation::emitOpError(v151, &v144, &Value);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                  if (Value)
                  {
                    mlir::InFlightDiagnostic::report(&Value);
                  }

                  if (v183)
                  {
                    if (v182 != &v183)
                    {
                      free(v182);
                    }

                    v134 = __p;
                    if (__p)
                    {
                      v135 = v181;
                      v136 = __p;
                      if (v181 != __p)
                      {
                        do
                        {
                          v135 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v135 - 1);
                        }

                        while (v135 != v134);
                        v136 = __p;
                      }

                      v181 = v134;
                      operator delete(v136);
                    }

                    v137 = v178;
                    if (v178)
                    {
                      v138 = v179;
                      v139 = v178;
                      if (v179 != v178)
                      {
                        do
                        {
                          v141 = *--v138;
                          v140 = v141;
                          *v138 = 0;
                          if (v141)
                          {
                            operator delete[](v140);
                          }
                        }

                        while (v138 != v137);
                        v139 = v178;
                      }

                      v179 = v137;
                      operator delete(v139);
                    }

                    v133 = v172;
                    if (v172 != &v174)
                    {
                      goto LABEL_220;
                    }
                  }

                  goto LABEL_221;
                }

                v46 = LODWORD(v154[1]);
                if (LODWORD(v154[1]) >= HIDWORD(v154[1]))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v154, &v155, LODWORD(v154[1]) + 1, 8);
                  v46 = LODWORD(v154[1]);
                }

                *(v154[0] + v46) = v44 - 16;
                ++LODWORD(v154[1]);
                v47 = *(*(v154[0] + LODWORD(v154[1]) - 1) + 8);
                v48 = LODWORD(v152[1]);
                if (LODWORD(v152[1]) >= HIDWORD(v152[1]))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v152, v153, LODWORD(v152[1]) + 1, 8);
                  v48 = LODWORD(v152[1]);
                }

                *(v152[0] + v48) = v47 & 0xFFFFFFFFFFFFFFF8;
                ++LODWORD(v152[1]);
                if (++v41 == v42)
                {
                  goto LABEL_92;
                }
              }

              *&v144 = "invalid argument";
              v147 = 259;
              mlir::Operation::emitOpError(v151, &v144, &Value);
              v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v183 != 1)
              {
                goto LABEL_221;
              }

              if (v182 != &v183)
              {
                free(v182);
              }

              v113 = __p;
              if (__p)
              {
                v114 = v181;
                v115 = __p;
                if (v181 != __p)
                {
                  do
                  {
                    v114 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v114 - 1);
                  }

                  while (v114 != v113);
                  v115 = __p;
                }

                v181 = v113;
                operator delete(v115);
              }

              v116 = v178;
              if (!v178)
              {
                goto LABEL_219;
              }

              v117 = v179;
              v118 = v178;
              if (v179 == v178)
              {
                goto LABEL_218;
              }

              do
              {
                v120 = *--v117;
                v119 = v120;
                *v117 = 0;
                if (v120)
                {
                  operator delete[](v119);
                }
              }

              while (v117 != v116);
            }

LABEL_217:
            v118 = v178;
LABEL_218:
            v179 = v116;
            operator delete(v118);
LABEL_219:
            v133 = v172;
            if (v172 != &v174)
            {
LABEL_220:
              free(v133);
            }

LABEL_221:
            if (v160 != v162)
            {
              free(v160);
            }

            if (v163 != v165)
            {
              free(v163);
            }

            if (v152[0] != v153)
            {
              free(v152[0]);
            }

            if (v154[0] != &v155)
            {
              free(v154[0]);
            }

            goto LABEL_231;
          }

          LODWORD(v37) = *(v29 + 68);
        }

        if (v37 > HIDWORD(v161))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, v37, 8);
        }

        goto LABEL_54;
      }

      v154[0] = "missing terminator";
      LOWORD(v156) = 259;
      mlir::Operation::emitOpError(v151, v154, &Value);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v183 != 1)
      {
        goto LABEL_231;
      }

      if (v182 != &v183)
      {
        free(v182);
      }

      v65 = __p;
      if (__p)
      {
        v66 = v181;
        v67 = __p;
        if (v181 != __p)
        {
          do
          {
            v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
          }

          while (v66 != v65);
          v67 = __p;
        }

        v181 = v65;
        operator delete(v67);
      }

      v52 = v178;
      if (v178)
      {
        v68 = v179;
        v54 = v178;
        if (v179 == v178)
        {
          goto LABEL_122;
        }

        do
        {
          v70 = *--v68;
          v69 = v70;
          *v68 = 0;
          if (v70)
          {
            operator delete[](v69);
          }
        }

        while (v68 != v52);
        goto LABEL_121;
      }
    }

    else
    {
      v154[0] = "Found more than one call to the same region";
      LOWORD(v156) = 259;
      mlir::Operation::emitError(v151, v154, &Value);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v183 != 1)
      {
        goto LABEL_231;
      }

      if (v182 != &v183)
      {
        free(v182);
      }

      v49 = __p;
      if (__p)
      {
        v50 = v181;
        v51 = __p;
        if (v181 != __p)
        {
          do
          {
            v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
          }

          while (v50 != v49);
          v51 = __p;
        }

        v181 = v49;
        operator delete(v51);
      }

      v52 = v178;
      if (v178)
      {
        v53 = v179;
        v54 = v178;
        if (v179 == v178)
        {
          goto LABEL_122;
        }

        do
        {
          v56 = *--v53;
          v55 = v56;
          *v53 = 0;
          if (v56)
          {
            operator delete[](v55);
          }
        }

        while (v53 != v52);
LABEL_121:
        v54 = v178;
LABEL_122:
        v179 = v52;
        operator delete(v54);
      }
    }

    if (v172 != &v174)
    {
      free(v172);
    }

    goto LABEL_231;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef const&,mlir::FunctionType &>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef const&,mlir::FunctionType &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::func::FuncOp::build(a1, v18, *a3, a3[1], *a4, 0, 0, v11, 0, 0);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

uint64_t mlir::OpBuilder::create<mlir::func::ReturnOp,llvm::SmallVector<mlir::Value,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::ReturnOp>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::func::ReturnOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
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

uint64_t mlir::anec::ANEIOInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

LABEL_12:
      *(a1 + 8) = v4;
      v7 = *(a2 + 56);
      v8 = *(a1 + 56);
      if (v8 >= v7)
      {
        if (v7)
        {
          memmove(*(a1 + 48), *(a2 + 48), 8 * v7);
        }

        goto LABEL_22;
      }

      if (*(a1 + 60) >= v7)
      {
        if (v8)
        {
          memmove(*(a1 + 48), *(a2 + 48), 8 * v8);
          goto LABEL_20;
        }
      }

      else
      {
        *(a1 + 56) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 48, a1 + 64, v7, 8);
      }

      v8 = 0;
LABEL_20:
      v9 = *(a2 + 56) - v8;
      if (v9)
      {
        memcpy((*(a1 + 48) + 8 * v8), (*(a2 + 48) + 8 * v8), 8 * v9);
      }

LABEL_22:
      *(a1 + 56) = v7;
      goto LABEL_23;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

    goto LABEL_12;
  }

LABEL_23:
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t mlir::mpsx::anonymous namespace::WriteANERegionsPass::addOp(mlir::ModuleOp,mlir::mpsx::ANEOp)::$_2::operator()(mlir::Block **a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a2);
  v33 = ElementTypeOrSelf;
  v32 = mlir::getElementTypeOrSelf(a3);
  if (ElementTypeOrSelf != v32)
  {
    if (mlir::Type::isF32(&v33) && mlir::Type::isF16(&v32))
    {
      if (a3)
      {
        v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
      }

      else
      {
        v10 = 0;
      }

      v34[0] = a3;
      v34[1] = v10;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v34);
      v20 = *(a4 + 8 * a5 - 16);
      v22 = *(ArgAttrsAttr + 8 * v21 - 8);
      if (v22 * (mlir::Type::getIntOrFloatBitWidth(&v33) >> 3) <= v20)
      {
        return v33;
      }

      v30[0] = "Invalid input strides: row stride must be large enough to represent the whole F32 row";
      v31 = 259;
      mlir::Operation::emitError(a1, v30, v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 != 1)
      {
        return 0;
      }

      if (v41 != &v42)
      {
        free(v41);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v40;
        v25 = __p;
        if (v40 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v40 = v23;
        operator delete(v25);
      }

      v14 = v37;
      if (!v37)
      {
        goto LABEL_42;
      }

      v26 = v38;
      v16 = v37;
      if (v38 == v37)
      {
        goto LABEL_41;
      }

      do
      {
        v28 = *--v26;
        v27 = v28;
        *v26 = 0;
        if (v28)
        {
          operator delete[](v27);
        }
      }

      while (v26 != v14);
    }

    else
    {
      v30[0] = "Only F16 <-> F32 ANE / host type conversion is supported";
      v31 = 259;
      mlir::Operation::emitError(a1, v30, v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 != 1)
      {
        return 0;
      }

      if (v41 != &v42)
      {
        free(v41);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v40;
        v13 = __p;
        if (v40 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v40 = v11;
        operator delete(v13);
      }

      v14 = v37;
      if (!v37)
      {
LABEL_42:
        if (v35 != &v36)
        {
          free(v35);
        }

        return 0;
      }

      v15 = v38;
      v16 = v37;
      if (v38 == v37)
      {
LABEL_41:
        v38 = v14;
        operator delete(v16);
        goto LABEL_42;
      }

      do
      {
        v18 = *--v15;
        v17 = v18;
        *v15 = 0;
        if (v18)
        {
          operator delete[](v17);
        }
      }

      while (v15 != v14);
    }

    v16 = v37;
    goto LABEL_41;
  }

  return ElementTypeOrSelf;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_119WriteANERegionsPass5addOpENS1_8ModuleOpENSB_5ANEOpEE3__0NS1_9placement10RegionCallEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *a1, mlir::Operation *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
    {
      v13[5] = v2;
      v13[6] = v3;
      v4 = *a1;
      v13[0] = a2;
      AttrData = mlir::OpaqueAttr::getAttrData(*v4);
      v7 = v6;
      Callee = mlir::placement::RegionCall::getCallee(v13);
      if (v7 == v9 && (!v7 || !memcmp(AttrData, Callee, v7)))
      {
        v10 = *(v4 + 8);
        v11 = v13[0];
        v12 = *(v10 + 8);
        if (v12 >= *(v10 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(*(v4 + 8), v10 + 16, v12 + 1, 8);
          LODWORD(v12) = *(v10 + 8);
        }

        *(*v10 + 8 * v12) = v11;
        ++*(v10 + 8);
      }
    }
  }
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::anonymous namespace::WriteANERegionsPass::addOp(mlir::ModuleOp,mlir::mpsx::ANEOp)::$_1>(uint64_t result, mlir::Operation *a2)
{
  if (*(*(a2 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id)
  {
    v3 = result;
    {
      mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    }

    result = (*(**(a2 + 6) + 32))(*(a2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    if ((result & 1) == 0)
    {
      v4 = *v3;
      v5 = *(v3 + 8);

      return mlir::OpBuilder::clone(v4, a2, v5);
    }
  }

  return result;
}

BOOL mlir::detail::verifyParallelCombiningOpInterface(mlir::Block **this, mlir::Operation *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 1)
  {
    v3 = (((&this[2 * ((v2 >> 23) & 1) + 8] + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    if (*v3 != v3 && *(v3[1] + 8) == v3)
    {
      return 1;
    }

    v20[0] = "expected single block op region";
    v21 = 259;
    mlir::Operation::emitError(this, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v28;
        v7 = __p;
        if (v28 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v28 = v5;
        operator delete(v7);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_38;
      }

      v9 = v26;
      v10 = v25;
      if (v26 == v25)
      {
LABEL_37:
        v26 = v8;
        operator delete(v10);
LABEL_38:
        if (v23 != &v24)
        {
          free(v23);
        }

        return v4;
      }

      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          operator delete[](v11);
        }
      }

      while (v9 != v8);
LABEL_36:
      v10 = v25;
      goto LABEL_37;
    }
  }

  else
  {
    v20[0] = "expected single region op";
    v21 = 259;
    mlir::Operation::emitError(this, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v28;
        v15 = __p;
        if (v28 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v28 = v13;
        operator delete(v15);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_38;
      }

      v16 = v26;
      v10 = v25;
      if (v26 == v25)
      {
        goto LABEL_37;
      }

      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          operator delete[](v17);
        }
      }

      while (v16 != v8);
      goto LABEL_36;
    }
  }

  return v4;
}

BOOL mlir::parseSourceFile(uint64_t **this, AttributeStorage *a2, uint64_t ***a3, const mlir::ParserConfig *a4, LocationAttr *a5)
{
  v8 = **this;
  if (a4)
  {
    v10 = *a3;
    v11 = (*(*v8 + 16))(**this, a2, a3, a4, a5);
    *a4 = mlir::FileLineColLoc::get(v10, v11, v12, 0, 0);
  }

  llvm::MemoryBufferRef::MemoryBufferRef(v14, v8);
  if (!mlir::isBytecode(v14))
  {
    mlir::parseAsmSourceFile(this, a2, a3, 0, 0);
  }

  llvm::MemoryBufferRef::MemoryBufferRef(v14, v8);
  return mlir::readBytecodeFile(v14, a2, a3);
}

BOOL mlir::parseSourceFile(uint64_t ***a1, AttributeStorage *a2, uint64_t ***a3, uint64_t *a4)
{
  v7 = ***a1;
  if (a4)
  {
    v9 = *a3;
    v10 = (*(*v7 + 16))(v7);
    *a4 = mlir::FileLineColLoc::get(v9, v10, v11, 0, 0);
  }

  llvm::MemoryBufferRef::MemoryBufferRef(v13, v7);
  if (!mlir::isBytecode(v13))
  {
    mlir::parseAsmSourceFile(*a1, a2, a3, 0, 0);
  }

  return mlir::readBytecodeFile(a1, a2, a3);
}

BOOL mlir::parseSourceString(uint64_t a1, uint64_t a2, AttributeStorage *a3, uint64_t ***a4, const char *a5, const char *a6, const mlir::ParserConfig *a7)
{
  llvm::MemoryBuffer::getMemBuffer(a1, a2, a5, a6, &v19);
  if (!v19)
  {
    return 0;
  }

  llvm::SourceMgr::SourceMgr(&v16);
  v10 = v19;
  v19 = 0;
  v20[0] = v10;
  v20[1] = 0;
  v20[2] = 0;
  if (v17 >= v18)
  {
    v11 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v16, v20);
  }

  else
  {
    v11 = (llvm::SourceMgr::SrcBuffer::SrcBuffer(v17, v20) + 3);
  }

  v17 = v11;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(v20);
  v12 = mlir::parseSourceFile(&v16, a3, a4, a7, v14);
  llvm::SourceMgr::~SourceMgr(&v16);
  v15 = v19;
  v19 = 0;
  if (!v15)
  {
    return v12;
  }

  (*(*v15 + 8))(v15);
  return v12;
}

void std::__shared_ptr_emplace<llvm::SourceMgr>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B01820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t mlir::PassManager::enableIRPrinting(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, _OWORD *a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v16 = operator new(0x88uLL);
  v17 = *(a2 + 24);
  if (!v17)
  {
    v28 = 0;
    v18 = *(a3 + 24);
    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v17 == a2)
  {
    v28 = v27;
    (*(*v17 + 24))(v17, v27);
    v18 = *(a3 + 24);
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_9:
    v26 = 0;
    goto LABEL_11;
  }

  v28 = *(a2 + 24);
  *(a2 + 24) = 0;
  v18 = *(a3 + 24);
  if (!v18)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v18 == a3)
  {
    v26 = v25;
    (*(*v18 + 24))(v18, v25);
  }

  else
  {
    v26 = v18;
    *(a3 + 24) = 0;
  }

LABEL_11:
  v19 = a8[1];
  v16[1] = *a8;
  v16[2] = v19;
  v16[3] = a8[2];
  *(v16 + 8) = a4;
  *(v16 + 9) = a5;
  *(v16 + 10) = a6;
  *v16 = &unk_1F5B01938;
  v20 = v28;
  if (!v28)
  {
    *(v16 + 11) = 0;
    v21 = v26;
    if (v26)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (v28 == v27)
  {
    *(v16 + 11) = v16 + 4;
    (*(*v20 + 24))(v20);
    v21 = v26;
    if (v26)
    {
      goto LABEL_16;
    }

LABEL_19:
    *(v16 + 15) = 0;
    *(v16 + 16) = a7;
    goto LABEL_20;
  }

  *(v16 + 11) = v28;
  v28 = 0;
  v21 = v26;
  if (!v26)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v21 == v25)
  {
    *(v16 + 15) = v16 + 6;
    (*(*v21 + 24))(v21);
    v24 = v26;
    *(v16 + 16) = a7;
    if (v24 == v25)
    {
      (*(*v24 + 32))(v24);
    }

    else if (v24)
    {
      (*(*v24 + 40))(v24);
    }
  }

  else
  {
    v26 = 0;
    *(v16 + 15) = v21;
    *(v16 + 16) = a7;
  }

LABEL_20:
  if (v28 == v27)
  {
    (*(*v28 + 32))(v28);
    if (*(v16 + 8) != 1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v28)
  {
    (*(*v28 + 40))();
  }

  if (*(v16 + 8) == 1)
  {
LABEL_26:
    if (mlir::MLIRContext::isMultithreadingEnabled(*(a1 + 8)))
    {
      llvm::report_fatal_error("IR printing can't be setup on a pass-manager without disabling multi-threading first.", 1);
    }
  }

LABEL_27:
  v22 = operator new(0x28uLL);
  *v22 = &unk_1F5B01880;
  v22[1] = v16;
  v22[2] = 0;
  v22[3] = 0;
  *(v22 + 8) = 0;
  v27[0] = v22;
  mlir::PassManager::addInstrumentation(a1, v27);
  result = v27[0];
  v27[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void anonymous namespace::IRPrinterInstrumentation::~IRPrinterInstrumentation(llvm **this)
{
  *this = &unk_1F5B01880;
  llvm::deallocate_buffer(this[2], (32 * *(this + 8)));
}

{
  *this = &unk_1F5B01880;
  llvm::deallocate_buffer(this[2], (32 * *(this + 8)));
}

uint64_t sub_1DFD359E4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return MPSGraphDelegateCompiler.precompilationDescriptor.modify(v2, a2);
}

void sub_1DFD35A78(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v2, a2);

  operator delete(v4);
}

uint64_t anonymous namespace::IRPrinterInstrumentation::runBeforePass(uint64_t this, mlir::Pass *a2, mlir::Operation *a3)
{
  v9 = a2;
  v8 = a3;
  v3 = *(a2 + 1);
  {
    if (v3 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  else
  {
    v6 = this;
    this = v6;
    if (v3 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  v4 = *(this + 8);
  if (v4[9] == 1)
  {
    v5 = this;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::try_emplace<mlir::Operation *&>((this + 16), &v9, &v8, v7);
    this = v5;
    v4 = *(v5 + 8);
  }

  v7[0] = &v9;
  v7[1] = &v8;
  v7[2] = this;
}

mlir::OperationFingerPrint *anonymous namespace::IRPrinterInstrumentation::runAfterPass(mlir::OperationFingerPrint *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a2;
  v3 = *(a2 + 1);
  {
    if (v3 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  else
  {
    v17 = this;
    this = v17;
    if (v3 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  v4 = *(this + 1);
  if (v4[10])
  {
    return this;
  }

  v5 = v19;
  if ((v4[9] & 1) == 0)
  {
    v13 = v18;
LABEL_21:
    v20 = &v19;
    v21 = &v18;
    v22 = this;
  }

  v6 = *(this + 2);
  v7 = *(this + 8);
  if (v7)
  {
    v8 = ((v19 >> 4) ^ (v19 >> 9)) & (v7 - 1);
    v9 = *(v6 + 32 * v8);
    v10 = this;
    if (v9 == v19)
    {
      goto LABEL_13;
    }

    v11 = 1;
    while (1)
    {
      this = v10;
      if (v9 == -4096)
      {
        break;
      }

      v12 = v8 + v11++;
      v8 = v12 & (v7 - 1);
      v9 = *(v6 + 32 * v8);
      if (v9 == v19)
      {
        goto LABEL_13;
      }
    }
  }

  v10 = this;
  v8 = v7;
LABEL_13:
  v14 = v6 + 32 * v8;
  v13 = v18;
  this = mlir::OperationFingerPrint::OperationFingerPrint(&v20, v18, 1);
  v16 = *(v14 + 8) == v20 && *(v14 + 16) == v21 && *(v14 + 24) == v22;
  *v14 = -8192;
  v10[3] = vadd_s32(v10[3], 0x1FFFFFFFFLL);
  if (!v16)
  {
    this = v10;
    v4 = v10[1];
    goto LABEL_21;
  }

  return this;
}

int32x2_t *anonymous namespace::IRPrinterInstrumentation::runAfterPassFailed(int32x2_t *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v16 = a3;
  v17 = a2;
  v3 = *(a2 + 1);
  {
    if (v3 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  else
  {
    v13 = v3;
    v14 = this;
    this = v14;
    if (v13 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  v4 = this[1];
  if (v4[9])
  {
    v5 = this[4].i32[0];
    v6 = v17;
    if (v5)
    {
      v7 = this[2];
      v8 = v5 - 1;
      v9 = ((v17 >> 4) ^ (v17 >> 9)) & (v5 - 1);
      v10 = *(*&v7 + 32 * v9);
      if (v17 == v10)
      {
LABEL_6:
        *(*&v7 + 32 * v9) = -8192;
        this[3] = vadd_s32(this[3], 0x1FFFFFFFFLL);
      }

      else
      {
        v11 = 1;
        while (v10 != -4096)
        {
          v12 = v9 + v11++;
          v9 = v12 & v8;
          v10 = *(*&v7 + 32 * v9);
          if (v17 == v10)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  else
  {
    v6 = v17;
  }

  v15[0] = &v17;
  v15[1] = &v16;
  v15[2] = this;
}

mlir::OperationFingerPrint *llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::try_emplace<mlir::Operation *&>@<X0>(mlir::OperationFingerPrint *result@<X0>, void *a2@<X1>, mlir::Operation **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result;
  v7 = *(result + 4);
  if (!v7)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v8 = *result;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v7 - 1);
  v10 = (*result + 32 * v9);
  v11 = *v10;
  if (*a2 != *v10)
  {
    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & (v7 - 1);
      v10 = (v8 + 32 * v9);
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }

LABEL_5:
    v20 = v10;
    v13 = *(result + 2);
    if (4 * v13 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v13 - *(result + 3) > v7 >> 3)
    {
      *(result + 2) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v12 = 1;
        result = mlir::OperationFingerPrint::OperationFingerPrint((v10 + 1), *a3, 1);
        v8 = *v5;
        v7 = *(v5 + 4);
        goto LABEL_10;
      }

LABEL_8:
      --*(v5 + 3);
      goto LABEL_9;
    }

    v18 = a2;
    v19 = a3;
    llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::grow(result, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v5, v18, &v20);
    a2 = v18;
    a3 = v19;
    v10 = v20;
    ++*(v5 + 2);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a4 = v10;
  *(a4 + 8) = v8 + 32 * v7;
  *(a4 + 16) = v12;
  return result;
}

const char *llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::OpToOpPassAdaptor]";
  v6 = 81;
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

void *llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::grow(uint64_t a1, int a2)
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
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = *a1 + 32 * v26;
          v27 = *v22;
          if (v24 != *v22)
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
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = *a1 + 32 * v26;
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          *v22 = v24;
          v23 = *(v16 + 8);
          *(v22 + 24) = *(v16 + 6);
          *(v22 + 8) = v23;
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *v19 = -4096;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

mlir::detail::AsmStateImpl *llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::IRPrinterInstrumentation::runBeforePass(mlir::Pass *,mlir::Operation *)::$_0>(void **a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = *(this + 4);
  if (*(this + 3) - v5 > 0x19uLL)
  {
    qmemcpy(v5, "// -----// IR Dump Before ", 26);
    *(this + 4) += 26;
    v6 = this;
  }

  else
  {
    v6 = llvm::raw_ostream::write(this, "// -----// IR Dump Before ", 0x1AuLL);
  }

  v8 = (*(***a1 + 16))(**a1);
  v9 = v7;
  v10 = *(v6 + 4);
  if (v7 <= *(v6 + 3) - v10)
  {
    if (v7)
    {
      memcpy(v10, v8, v7);
      v10 = (*(v6 + 4) + v9);
      *(v6 + 4) = v10;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v8, v7);
    v10 = *(v6 + 4);
  }

  if (*(v6 + 3) - v10 > 1uLL)
  {
    *v10 = 10272;
    *(v6 + 4) += 2;
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, " (", 2uLL);
  }

  v12 = (*(***a1 + 32))(**a1);
  v13 = v11;
  v14 = *(v6 + 4);
  if (v11 <= *(v6 + 3) - v14)
  {
    if (v11)
    {
      memcpy(v14, v12, v11);
      v14 = (*(v6 + 4) + v13);
      *(v6 + 4) = v14;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v12, v11);
    v14 = *(v6 + 4);
  }

  if (*(v6 + 3) == v14)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v14 = 41;
    ++*(v6 + 4);
  }

  v15 = *a1[1];
  v16 = v4[1];
  v17 = *(v16 + 8);
  v18 = *(v16 + 32);
  v21[0] = *(v16 + 16);
  v21[1] = v18;
  v21[2] = *(v16 + 48);
  result = printIR(v15, v17, this, v21);
  v20 = *(this + 4);
  if (*(this + 3) - v20 <= 1uLL)
  {
    return llvm::raw_ostream::write(this, "\n\n", 2uLL);
  }

  *v20 = 2570;
  *(this + 4) += 2;
  return result;
}

mlir::detail::AsmStateImpl *printIR(uint64_t a1, char a2, void *a3, const mlir::OpPrintingFlags *a4)
{
  v5 = a3;
  v6 = a3[4];
  v7 = a3[3] - v6;
  v8 = a1;
  if (a2)
  {
    if (v7 > 2)
    {
      *(v6 + 2) = 39;
      *v6 = 10272;
      a3[4] += 3;
      v9 = a3;
    }

    else
    {
      v9 = llvm::raw_ostream::write(a3, " ('", 3uLL);
      a1 = v8;
    }

    v28 = *(a1 + 48);
    mlir::OperationName::print(&v28, v9);
    v10 = *(v9 + 4);
    if ((*(v9 + 3) - v10) > 0xA)
    {
      *(v10 + 7) = 1852795252;
      *v10 = *"' operation";
      *(v9 + 4) += 11;
      v11 = v8;
      if (!*(v8 + 47))
      {
LABEL_18:
        v31.var0 = "sym_name";
        v31.var1 = 8;
        InherentAttr = mlir::DictionaryAttr::get((v11 + 56), v31);
LABEL_19:
        if (InherentAttr)
        {
          v15 = *(*InherentAttr + 136);
          v16 = v15 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
          v17 = v15 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? InherentAttr : 0;
          v28 = v17;
          if (v16)
          {
            v18 = v5[4];
            if ((v5[3] - v18) > 2)
            {
              *(v18 + 2) = 64;
              *v18 = 8250;
              v5[4] += 3;
              v19 = v5;
            }

            else
            {
              v19 = llvm::raw_ostream::write(v5, ": @", 3uLL);
            }

            AttrData = mlir::OpaqueAttr::getAttrData(&v28);
            v22 = v20;
            v23 = v19[4];
            if (v20 <= v19[3] - v23)
            {
              if (v20)
              {
                memcpy(v23, AttrData, v20);
                v19[4] += v22;
              }
            }

            else
            {
              llvm::raw_ostream::write(v19, AttrData, v20);
            }
          }
        }

        v24 = v5[4];
        if (v5[3] - v24 > 0xCuLL)
        {
          qmemcpy(v24, ") //----- //\n", 13);
          v5[4] += 13;
        }

        else
        {
          llvm::raw_ostream::write(v5, ") //----- //\n", 0xDuLL);
        }

        ParentOp = v8;
        do
        {
          v26 = ParentOp;
          v27 = *(ParentOp + 16);
          if (!v27)
          {
            break;
          }

          ParentOp = mlir::Block::getParentOp(v27);
        }

        while (ParentOp);
        return mlir::Operation::print(v26, v5, a4);
      }
    }

    else
    {
      llvm::raw_ostream::write(v9, "' operation", 0xBuLL);
      v11 = v8;
      if (!*(v8 + 47))
      {
        goto LABEL_18;
      }
    }

    v30.var0 = "sym_name";
    v30.var1 = 8;
    InherentAttr = mlir::Operation::getInherentAttr(v8, v30);
    v11 = v8;
    if (v14)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v7 <= 0xB)
  {
    v5 = llvm::raw_ostream::write(a3, " //----- //\n", 0xCuLL);
    a1 = v8;
    if (!*(v8 + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(v6 + 8) = 170864416;
  *v6 = *" //----- //\n";
  a3[4] += 12;
  if (*(a1 + 16))
  {
LABEL_12:
    a4 = mlir::OpPrintingFlags::useLocalScope(a4);
    a1 = v8;
  }

LABEL_13:

  return mlir::Operation::print(a1, v5, a4);
}

mlir::detail::AsmStateImpl *llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::IRPrinterInstrumentation::runAfterPass(mlir::Pass *,mlir::Operation *)::$_0>(void **a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = *(this + 4);
  if (*(this + 3) - v5 > 0x18uLL)
  {
    qmemcpy(v5, "// -----// IR Dump After ", 25);
    *(this + 4) += 25;
    v6 = this;
  }

  else
  {
    v6 = llvm::raw_ostream::write(this, "// -----// IR Dump After ", 0x19uLL);
  }

  v8 = (*(***a1 + 16))(**a1);
  v9 = v7;
  v10 = *(v6 + 4);
  if (v7 <= *(v6 + 3) - v10)
  {
    if (v7)
    {
      memcpy(v10, v8, v7);
      v10 = (*(v6 + 4) + v9);
      *(v6 + 4) = v10;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v8, v7);
    v10 = *(v6 + 4);
  }

  if (*(v6 + 3) - v10 > 1uLL)
  {
    *v10 = 10272;
    *(v6 + 4) += 2;
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, " (", 2uLL);
  }

  v12 = (*(***a1 + 32))(**a1);
  v13 = v11;
  v14 = *(v6 + 4);
  if (v11 <= *(v6 + 3) - v14)
  {
    if (v11)
    {
      memcpy(v14, v12, v11);
      v14 = (*(v6 + 4) + v13);
      *(v6 + 4) = v14;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v12, v11);
    v14 = *(v6 + 4);
  }

  if (*(v6 + 3) == v14)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v14 = 41;
    ++*(v6 + 4);
  }

  v15 = *a1[1];
  v16 = v4[1];
  v17 = *(v16 + 8);
  v18 = *(v16 + 32);
  v21[0] = *(v16 + 16);
  v21[1] = v18;
  v21[2] = *(v16 + 48);
  result = printIR(v15, v17, this, v21);
  v20 = *(this + 4);
  if (*(this + 3) - v20 <= 1uLL)
  {
    return llvm::raw_ostream::write(this, "\n\n", 2uLL);
  }

  *v20 = 2570;
  *(this + 4) += 2;
  return result;
}

mlir::detail::AsmStateImpl *llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::IRPrinterInstrumentation::runAfterPassFailed(mlir::Pass *,mlir::Operation *)::$_0>(void **a1, llvm::raw_ostream *a2)
{
  v4 = a1[2];
  v5 = (*(***a1 + 16))(**a1);
  v7 = v6;
  v8 = (*(***a1 + 32))(**a1);
  *&v16 = "// -----// IR Dump After {0} Failed ({1})";
  *(&v16 + 1) = 41;
  *&v17 = v22;
  *(&v17 + 1) = 2;
  LOBYTE(v18) = 1;
  *(&v18 + 1) = &unk_1F5B018F0;
  v19 = v5;
  v20 = v7;
  v21[0] = &unk_1F5B018F0;
  v21[1] = v8;
  v21[2] = v9;
  v22[0] = &v18 + 8;
  v22[1] = v21;
  llvm::raw_ostream::operator<<(a2, &v16);
  v10 = *a1[1];
  v11 = v4[1];
  v12 = *(v11 + 8);
  v13 = *(v11 + 32);
  v16 = *(v11 + 16);
  v17 = v13;
  v18 = *(v11 + 48);
  result = printIR(v10, v12, a2, &v16);
  v15 = *(a2 + 4);
  if (*(a2 + 3) - v15 <= 1uLL)
  {
    return llvm::raw_ostream::write(a2, "\n\n", 2uLL);
  }

  *v15 = 2570;
  *(a2 + 4) += 2;
  return result;
}

void *llvm::support::detail::provider_format_adapter<llvm::StringRef>::format(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v12 = 0;
    AsUnsignedInteger = llvm::getAsUnsignedInteger(a3, a4, 0xA, &v12);
    v7 = v12;
    if (AsUnsignedInteger)
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = *(a1 + 8);
  if (*(a1 + 16) >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(a1 + 16);
  }

  result = a2[4];
  if (v9 > a2[3] - result)
  {
    return llvm::raw_ostream::write(a2, v8, v9);
  }

  if (v9)
  {
    v11 = v9;
    result = memcpy(result, v8, v9);
    a2[4] += v11;
  }

  return result;
}

void anonymous namespace::BasicIRPrinterConfig::~BasicIRPrinterConfig(_anonymous_namespace_::BasicIRPrinterConfig *this)
{
  *this = &unk_1F5B01938;
  v2 = this + 96;
  v3 = *(this + 15);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 11);
    if (v4 != (this + 64))
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return;
  }

  (*(*v3 + 32))(v3);
  v4 = *(this + 11);
  if (v4 == (this + 64))
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }
}

{
  *this = &unk_1F5B01938;
  v2 = this + 96;
  v3 = *(this + 15);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 11);
    if (v4 != (this + 64))
    {
LABEL_5:
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      v5 = this;

      goto LABEL_9;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 11);
    if (v4 != (this + 64))
    {
      goto LABEL_5;
    }
  }

  (*(*v4 + 32))(v4);
  v5 = this;

LABEL_9:
  operator delete(v5);
}

uint64_t anonymous namespace::BasicIRPrinterConfig::printBeforeIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5)
{
  result = *(a1 + 88);
  if (result)
  {
    v9 = a3;
    v10 = a2;
    result = (*(*result + 48))(result, &v10, &v9);
    if (result)
    {
      return a4(a5, *(a1 + 128));
    }
  }

  return result;
}

uint64_t anonymous namespace::BasicIRPrinterConfig::printAfterIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5)
{
  result = *(a1 + 120);
  if (result)
  {
    v9 = a3;
    v10 = a2;
    result = (*(*result + 48))(result, &v10, &v9);
    if (result)
    {
      return a4(a5, *(a1 + 128));
    }
  }

  return result;
}

void *llvm::format_provider<unsigned int,void>::format(unsigned int *a1, llvm::StringRef *a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = a3;
  v16 = a4;
  v6 = llvm::support::detail::HelperFunctions::consumeHexStyle(&v15, a2);
  if ((v6 & 0x100000000) == 0)
  {
    if (v16)
    {
      v8 = 0;
      v9 = *v15;
      if (v9 <= 0x63)
      {
        if (v9 != 68)
        {
          if (v9 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v8 = 0;
        ++v15;
        goto LABEL_19;
      }

      if (v9 == 100)
      {
        goto LABEL_18;
      }

      if (v9 == 110)
      {
LABEL_17:
        ++v15;
        v8 = 1;
LABEL_19:
        --v16;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_20:
    v17 = 0;
    if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
    {
      v14 = 0;
    }

    else
    {
      v14 = v17;
    }

    return llvm::write_integer(a2, *a1, v14, v8);
  }

  v10 = v6;
  v17 = 0;
  if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
  {
    v11 = 0;
  }

  else
  {
    v11 = v17;
  }

  if (llvm::isPrefixedHexStyle(v10))
  {
    v12 = v11 + 2;
  }

  else
  {
    v12 = v11;
  }

  return llvm::write_hex(a2, *a1, v10, v12, 1);
}

llvm::raw_ostream *mlir::PassExecutionAction::print(mlir::PassExecutionAction *this, llvm::raw_ostream *a2)
{
  v4 = (*(**(this + 4) + 16))(*(this + 4));
  v6 = v5;
  v7 = (*(*this + 32))(this);
  if ((*v7 & 6) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 & 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(v8 + 48);
  v11[1] = 38;
  v11[2] = v16;
  v11[3] = 3;
  v12 = 1;
  v13[0] = &unk_1F5B01B88;
  v13[1] = &mlir::PassExecutionAction::tag;
  v14[0] = &unk_1F5B018F0;
  v14[1] = v4;
  v14[2] = v6;
  v15[0] = &unk_1F5B01BD0;
  v15[1] = v9;
  v16[0] = v13;
  v16[1] = v14;
  v16[2] = v15;
  return llvm::raw_ostream::operator<<(a2, v11);
}

uint64_t mlir::Pass::initializeOptions(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void ***), uint64_t a5)
{
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v15 = 0;
  v19 = 0;
  v10 = 1;
  v20 = 1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v14 = &unk_1F5B3FB30;
  v21 = v22;
  llvm::raw_ostream::SetBufferAndMode(&v14, 0, 0, 0);
  if ((mlir::detail::PassOptions::parseFromString(a1 + 152, a2, a3, &v14) & 1) == 0)
  {
    v13 = 260;
    v12 = v22;
    v10 = a4(a5, &v12);
  }

  llvm::raw_ostream::~raw_ostream(&v14);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return v10;
}

void mlir::Pass::printAsTextualPipeline(mlir::Pass *this, llvm::raw_ostream *a2)
{
  v4 = *(this + 1);
  {
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::Pass::printAsTextualPipeline();
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
LABEL_3:
      v5 = (*(*this + 32))(this);
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        v9 = *(a2 + 4);
        if (v6 > *(a2 + 3) - v9)
        {
          v10 = a2;
          v11 = v7;
          v12 = v8;
LABEL_17:
          llvm::raw_ostream::write(v10, v11, v12);
          goto LABEL_18;
        }

        memcpy(v9, v7, v6);
        *(a2 + 4) += v8;
      }

      else
      {
        v13 = *(a2 + 4);
        if (*(a2 + 3) - v13 > 7uLL)
        {
          *v13 = 0x3C6E776F6E6B6E75;
          *(a2 + 4) += 8;
          v14 = a2;
        }

        else
        {
          v14 = llvm::raw_ostream::write(a2, "unknown<", 8uLL);
        }

        v16 = (*(*this + 16))(this);
        v17 = v15;
        v18 = *(v14 + 4);
        if (v15 <= *(v14 + 3) - v18)
        {
          if (v15)
          {
            memcpy(v18, v16, v15);
            v18 = (*(v14 + 4) + v17);
            *(v14 + 4) = v18;
          }
        }

        else
        {
          v14 = llvm::raw_ostream::write(v14, v16, v15);
          v18 = *(v14 + 4);
        }

        if (*(v14 + 3) == v18)
        {
          v11 = ">";
          v10 = v14;
          v12 = 1;
          goto LABEL_17;
        }

        *v18 = 62;
        ++*(v14 + 4);
      }

LABEL_18:

      mlir::detail::PassOptions::print((this + 152), a2);
      return;
    }
  }

  v19 = *(this + 88);
  if (v19)
  {
    v20 = *(this + 43);
    mlir::OpPassManager::printAsTextualPipeline(v20, a2);
    if (v19 != 1)
    {
      v21 = v20 + 1;
      v22 = 8 * v19 - 8;
      do
      {
        while (1)
        {
          v23 = *(a2 + 4);
          if (*(a2 + 3) != v23)
          {
            break;
          }

          llvm::raw_ostream::write(a2, ",", 1uLL);
          mlir::OpPassManager::printAsTextualPipeline(v21++, a2);
          v22 -= 8;
          if (!v22)
          {
            return;
          }
        }

        *v23 = 44;
        ++*(a2 + 4);
        mlir::OpPassManager::printAsTextualPipeline(v21++, a2);
        v22 -= 8;
      }

      while (v22);
    }
  }
}

void mlir::detail::OpPassManagerImpl::addPass(_BYTE *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = a1[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (a1[23])
    {
      goto LABEL_3;
    }

LABEL_21:
    v6 = *a2;
    goto LABEL_22;
  }

  if (!*(a1 + 1))
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v4 >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    a1 = *a1;
    v5 = *(v3 + 1);
  }

  v6 = *a2;
  if (*(*a2 + 32))
  {
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v5 != v7 || v5 && memcmp(a1, *(v6 + 16), v5))
    {
      if (*(v3 + 17))
      {
        v45 = "Can't add pass '";
        v46 = 259;
        v30 = (*(*v6 + 16))(v6);
        v44 = 261;
        v43[0] = v30;
        v43[1] = v31;
        llvm::operator+(&v45, v43, v47);
        v41 = "' restricted to '";
        v42 = 259;
        llvm::operator+(v47, &v41, v48);
        v40 = 261;
        v39[0] = v8;
        v39[1] = v7;
        llvm::operator+(v48, v39, v49);
        v37 = "' on a PassManager intended to run on '";
        v38 = 259;
        llvm::operator+(v49, &v37, v50);
        v36 = 261;
        v35[0] = mlir::detail::OpPassManagerImpl::getOpAnchorName(v3);
        v35[1] = v32;
        llvm::operator+(v50, v35, v51);
        v33 = "', did you intend to nest?";
        v34 = 259;
        llvm::operator+(v51, &v33, v52);
        llvm::report_fatal_error(v52, 1);
      }

      mlir::OpPassManager::OpPassManager(v51, v8, v7, 0);
      v9 = operator new(0x240uLL);
      v52[0] = mlir::detail::OpToOpPassAdaptor::OpToOpPassAdaptor(v9, v51);
      mlir::detail::OpPassManagerImpl::addPass(v3, v52);
      if (v52[0])
      {
        (*(*v52[0] + 8))(v52[0]);
      }

      v10 = v9[43];
      v11 = v51[0];
      v51[0] = 0;
      if (v11)
      {
        v12 = *(v11 + 40);
        if (v12)
        {
          v13 = *(v11 + 48);
          v14 = *(v11 + 40);
          if (v13 != v12)
          {
            do
            {
              v16 = *--v13;
              v15 = v16;
              *v13 = 0;
              if (v16)
              {
                (*(*v15 + 8))(v15);
              }
            }

            while (v13 != v12);
            v14 = *(v11 + 40);
          }

          *(v11 + 48) = v12;
          operator delete(v14);
        }

        if (*(v11 + 23) < 0)
        {
          operator delete(*v11);
        }

        operator delete(v11);
      }

      v28 = *a2;
      *a2 = 0;
      v29 = *v10;
      v52[0] = v28;
      mlir::detail::OpPassManagerImpl::addPass(v29, v52);
      if (v52[0])
      {
        (*(*v52[0] + 8))(v52[0]);
      }

      return;
    }
  }

LABEL_22:
  v18 = *(v3 + 6);
  v17 = *(v3 + 7);
  if (v18 >= v17)
  {
    v20 = *(v3 + 5);
    v21 = v18 - v20;
    v22 = (v18 - v20) >> 3;
    v23 = v22 + 1;
    if ((v22 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v24 = v17 - v20;
    if (v24 >> 2 > v23)
    {
      v23 = v24 >> 2;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v25 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      if (v25 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v26 = operator new(8 * v25);
    }

    else
    {
      v26 = 0;
    }

    v27 = &v26[8 * v22];
    *a2 = 0;
    *v27 = v6;
    v19 = v27 + 8;
    memcpy(v26, v20, v21);
    *(v3 + 5) = v26;
    *(v3 + 6) = v19;
    *(v3 + 7) = &v26[8 * v25];
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *a2 = 0;
    *v18 = v6;
    v19 = v18 + 8;
  }

  *(v3 + 6) = v19;
}

uint64_t mlir::detail::OpPassManagerImpl::nest(uint64_t a1, _BYTE *a2, size_t a3)
{
  mlir::OpPassManager::OpPassManager(&__p, a2, a3, *(a1 + 68));
  v4 = operator new(0x240uLL);
  v14 = mlir::detail::OpToOpPassAdaptor::OpToOpPassAdaptor(v4, &__p);
  mlir::detail::OpPassManagerImpl::addPass(a1, &v14);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v5 = v4[43];
  v6 = __p;
  __p = 0;
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      v8 = v6[6];
      v9 = v6[5];
      if (v8 != v7)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            (*(*v10 + 8))(v10);
          }
        }

        while (v8 != v7);
        v9 = v6[5];
      }

      v6[6] = v7;
      operator delete(v9);
    }

    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete(v6);
  }

  return v5;
}

uint64_t mlir::OpPassManager::addPass(_BYTE **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  mlir::detail::OpPassManagerImpl::addPass(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5();
  }

  return result;
}

const char *mlir::detail::OpPassManagerImpl::getOpAnchorName(const char *this)
{
  v1 = this[23];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (this[23])
    {
      goto LABEL_3;
    }

    return "any";
  }

  if (!*(this + 1))
  {
    return "any";
  }

LABEL_3:
  if (v1 < 0)
  {
    return *this;
  }

  return this;
}

BOOL mlir::detail::OpPassManagerImpl::finalizePassList(mlir::detail::OpPassManagerImpl *this, mlir::MLIRContext *x1_0)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(this + 5);
  v6 = *(this + 6);
  v4 = (this + 40);
  if (v5 == v6)
  {
    goto LABEL_24;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    v7 = *v5;
    v9 = *(*v5 + 8);
    {
      if (v9 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v58 = v9;
      mlir::Pass::printAsTextualPipeline();
      if (v58 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
      {
LABEL_14:
        if (v8 && (mlir::detail::OpToOpPassAdaptor::tryMergeInto(v7, x1_0, v8) & 1) != 0)
        {
          v13 = *v5;
          *v5 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          v7 = v8;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      v10 = *(v8 + 352);
      if (v10)
      {
        v11 = *(v8 + 344);
        v12 = 8 * v10;
        while ((mlir::detail::OpPassManagerImpl::finalizePassList(*v11, x1_0) & 1) != 0)
        {
          ++v11;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_3;
          }
        }

        return 0;
      }
    }

LABEL_3:
    v7 = 0;
LABEL_4:
    ++v5;
  }

  while (v5 != v6);
  if (v7)
  {
    v14 = *(v7 + 352);
    if (v14)
    {
      v15 = *(v7 + 344);
      v16 = 8 * v14;
      while ((mlir::detail::OpPassManagerImpl::finalizePassList(*v15, x1_0) & 1) != 0)
      {
        ++v15;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      return 0;
    }
  }

LABEL_24:
  llvm::erase_if<std::vector<std::unique_ptr<mlir::Pass>>,std::logical_not<std::unique_ptr<mlir::Pass>>>(v4);
  v17 = *(this + 23);
  if (v17 < 0)
  {
    if (!*(this + 1))
    {
      goto LABEL_39;
    }
  }

  else if (!*(this + 23))
  {
    goto LABEL_39;
  }

  if ((*(this + 32) & 1) == 0)
  {
    if (v17 >= 0)
    {
      v19 = this;
    }

    else
    {
      v19 = *this;
    }

    if (v17 >= 0)
    {
      v20 = *(this + 23);
    }

    else
    {
      v20 = *(this + 1);
    }

    mlir::OperationName::OperationName(&v63, v19, v20, x1_0);
    v21 = v63;
    if ((*(this + 32) & 1) == 0)
    {
      *(this + 32) = 1;
    }

    *(this + 3) = v21;
  }

LABEL_39:
  if ((*(this + 8) & 1) == 0)
  {
    return 1;
  }

  v22 = *(*(this + 3) + 16);
  if (v22 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(this + 3);
  }

  v24 = *(this + 5);
  v25 = *(this + 6);
  result = 1;
  if (v24 != v25 && v22 != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    if ((*(**v24 + 72))())
    {
      v27 = v24 + 1;
      while (v27 != v25)
      {
        v28 = *v27++;
        if (((*(*v28 + 72))(v28, v23) & 1) == 0)
        {
          v24 = v27 - 1;
          goto LABEL_50;
        }
      }

      return 1;
    }

LABEL_50:
    v29 = mlir::UnknownLoc::get(x1_0, v26);
    mlir::emitError(v29, v76, &v63);
    if (v63)
    {
      LODWORD(v59) = 3;
      v60 = "unable to schedule pass '";
      v61 = 25;
      v30 = &v59;
      v31 = v65;
      if (v66 >= v67)
      {
        if (v65 <= &v59 && v65 + 24 * v66 > &v59)
        {
          v55 = &v59 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v31 = v65;
          v30 = (v65 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v30 = &v59;
          v31 = v65;
        }
      }

      v32 = &v31[24 * v66];
      v33 = *v30;
      *(v32 + 2) = v30[2];
      *v32 = v33;
      ++v66;
    }

    v34 = (*(**v24 + 16))();
    if (v63)
    {
      v62 = 261;
      v59 = v34;
      v60 = v35;
      mlir::Diagnostic::operator<<(v64, &v59);
      if (v63)
      {
        LODWORD(v59) = 3;
        v60 = "' on a PassManager intended to run on '";
        v61 = 39;
        v36 = &v59;
        v37 = v65;
        if (v66 >= v67)
        {
          if (v65 <= &v59 && v65 + 24 * v66 > &v59)
          {
            v56 = &v59 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v37 = v65;
            v36 = (v65 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v36 = &v59;
            v37 = v65;
          }
        }

        v38 = &v37[24 * v66];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v66;
      }
    }

    v40 = *(this + 23);
    if (v40 < 0)
    {
      if (!*(this + 1))
      {
        goto LABEL_67;
      }

LABEL_59:
      v41 = *this;
      if (v40 < 0)
      {
        v40 = *(this + 1);
      }

      else
      {
        v41 = this;
      }

      if (v63)
      {
LABEL_68:
        v62 = 261;
        v59 = v41;
        v60 = v40;
        mlir::Diagnostic::operator<<(v64, &v59);
        if (v63)
        {
          LODWORD(v59) = 3;
          v60 = "'!";
          v61 = 2;
          v42 = &v59;
          v43 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v59 && v65 + 24 * v66 > &v59)
            {
              v57 = &v59 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v43 = v65;
              v42 = (v65 + v57);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v42 = &v59;
              v43 = v65;
            }
          }

          v44 = &v43[24 * v66];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v66;
        }
      }
    }

    else
    {
      if (*(this + 23))
      {
        goto LABEL_59;
      }

LABEL_67:
      v41 = "any";
      v40 = 3;
      if (v63)
      {
        goto LABEL_68;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
    v46 = result;
    if (v63)
    {
      mlir::InFlightDiagnostic::report(&v63);
      result = v46;
    }

    if (v74)
    {
      if (v73 != &v74)
      {
        free(v73);
        result = v46;
      }

      v47 = __p;
      if (__p)
      {
        v48 = v72;
        v49 = __p;
        if (v72 != __p)
        {
          do
          {
            v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v72 = v47;
        operator delete(v49);
        result = v46;
      }

      v50 = v69;
      if (v69)
      {
        v51 = v70;
        v52 = v69;
        if (v70 != v69)
        {
          do
          {
            v54 = *--v51;
            v53 = v54;
            *v51 = 0;
            if (v54)
            {
              operator delete[](v53);
            }
          }

          while (v51 != v50);
          v52 = v69;
        }

        v70 = v50;
        operator delete(v52);
        result = v46;
      }

      if (v65 != v68)
      {
        free(v65);
        return v46;
      }
    }
  }

  return result;
}

uint64_t mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::detail::OpToOpPassAdaptor *this, mlir::MLIRContext *a2, mlir::detail::OpToOpPassAdaptor *a3)
{
  v3 = a3;
  v5 = *(this + 88);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = *(this + 43);
    while (1)
    {
      v8 = *(*v7 + 23);
      if (v8 < 0)
      {
        v8 = (*v7)[1];
      }

      if (!v8)
      {
        break;
      }

      ++v7;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v7 = *(this + 43);
  }

  if (v7 != (*(this + 43) + 8 * v5))
  {
    v9 = *(a3 + 88);
    if (v9)
    {
      v10 = *(a3 + 43);
      for (i = 8 * v9; i; i -= 8)
      {
        v12 = *v10;
        v13 = *(*v10 + 23);
        if (v13 < 0)
        {
          if (!v12[1])
          {
            goto LABEL_26;
          }
        }

        else if (!*(*v10 + 23))
        {
          goto LABEL_26;
        }

        if ((v12[4] & 1) == 0)
        {
          if (v13 >= 0)
          {
            v14 = *v10;
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(*v10 + 23);
          }

          else
          {
            v15 = v12[1];
          }

          mlir::OperationName::OperationName(&v70, v14, v15, a2);
          if ((v12[4] & 1) == 0)
          {
            *(v12 + 32) = 1;
          }

          v12[3] = v70;
        }

LABEL_26:
        if (v12[4] & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v7, a2, v12[3]))
        {
          return 0;
        }

        ++v10;
      }
    }
  }

LABEL_29:
  v16 = *(v3 + 88);
  if (v16)
  {
    v17 = 8 * v16;
    v18 = *(v3 + 43);
    while (1)
    {
      v19 = *(*v18 + 23);
      if (v19 < 0)
      {
        v19 = (*v18)[1];
      }

      if (!v19)
      {
        break;
      }

      ++v18;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    v18 = *(v3 + 43);
  }

  if (v18 == (*(v3 + 43) + 8 * v16))
  {
LABEL_57:
    v27 = *(this + 88);
    if (!v27)
    {
      goto LABEL_128;
    }

    v28 = *(this + 43);
    v29 = &v28[v27];
    v67 = v29;
    v68 = v3;
    while (1)
    {
      v30 = *v28;
      v31 = *(*v28 + 23);
      if (v31 < 0)
      {
        if (!*(v30 + 8))
        {
LABEL_102:
          v32 = "any";
          v33 = 3;
          v34 = *(v3 + 43);
          v35 = *(v3 + 88);
          if (v35)
          {
            goto LABEL_69;
          }

          goto LABEL_103;
        }
      }

      else if (!*(*v28 + 23))
      {
        goto LABEL_102;
      }

      if (v31 >= 0)
      {
        v32 = *v28;
      }

      else
      {
        v32 = *v30;
      }

      if (v31 >= 0)
      {
        v33 = *(*v28 + 23);
      }

      else
      {
        v33 = *(v30 + 8);
      }

      v34 = *(v3 + 43);
      v35 = *(v3 + 88);
      if (v35)
      {
LABEL_69:
        v36 = 8 * v35;
        v37 = v34;
        if (v33 == 3)
        {
          while (1)
          {
            v42 = *v37;
            v46 = (*v37)[23];
            if (v46 < 0)
            {
              if (!*(v42 + 1))
              {
LABEL_85:
                v42 = "any";
                goto LABEL_86;
              }
            }

            else if (!(*v37)[23])
            {
              goto LABEL_85;
            }

            v47 = *(v42 + 1);
            if (v46 >= 0)
            {
              v47 = (*v37)[23];
            }

            if (v47 != 3)
            {
              goto LABEL_90;
            }

            if (v46 < 0)
            {
              v42 = *v42;
            }

LABEL_86:
            v43 = *v42;
            v44 = *(v42 + 2);
            if (v43 == *v32 && v44 == v32[2])
            {
              goto LABEL_104;
            }

LABEL_90:
            ++v37;
            v36 -= 8;
            if (!v36)
            {
              goto LABEL_59;
            }
          }
        }

        while (2)
        {
          v38 = *v37;
          v39 = (*v37)[23];
          if (v39 < 0)
          {
            if (!*(v38 + 1))
            {
              goto LABEL_71;
            }
          }

          else if (!(*v37)[23])
          {
LABEL_71:
            ++v37;
            v36 -= 8;
            if (!v36)
            {
              goto LABEL_59;
            }

            continue;
          }

          break;
        }

        v40 = *(v38 + 1);
        if (v39 >= 0)
        {
          v40 = (*v37)[23];
        }

        if (v40 == v33)
        {
          if (!v33)
          {
            goto LABEL_104;
          }

          v41 = v39 >= 0 ? *v37 : *v38;
          if (!memcmp(v41, v32, v33))
          {
            goto LABEL_104;
          }
        }

        goto LABEL_71;
      }

LABEL_103:
      v37 = v34;
LABEL_104:
      if (v37 == &v34[v35] || !v37)
      {
LABEL_59:
        llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>(v3 + 344, v28++);
        if (v28 == v29)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v48 = *(v30 + 40);
        v49 = *(v30 + 48);
        if (v48 != v49)
        {
          v50 = *v37;
          v51 = *(*v37 + 6);
          do
          {
            v53 = *(v50 + 7);
            if (v51 < v53)
            {
              v52 = *v48;
              *v48 = 0;
              *v51 = v52;
              v51 += 8;
            }

            else
            {
              v54 = *(v50 + 5);
              v55 = v51 - v54;
              v56 = (v51 - v54) >> 3;
              v57 = v56 + 1;
              if ((v56 + 1) >> 61)
              {
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v58 = v53 - v54;
              if (v58 >> 2 > v57)
              {
                v57 = v58 >> 2;
              }

              if (v58 >= 0x7FFFFFFFFFFFFFF8)
              {
                v59 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v59 = v57;
              }

              if (v59)
              {
                if (v59 >> 61)
                {
                  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
                }

                v60 = operator new(8 * v59);
              }

              else
              {
                v60 = 0;
              }

              v61 = &v60[8 * v56];
              v62 = *v48;
              *v48 = 0;
              *v61 = v62;
              v51 = v61 + 8;
              memcpy(v60, v54, v55);
              *(v50 + 5) = v60;
              *(v50 + 6) = v51;
              *(v50 + 7) = &v60[8 * v59];
              if (v54)
              {
                operator delete(v54);
              }
            }

            *(v50 + 6) = v51;
            ++v48;
          }

          while (v48 != v49);
          v48 = *(v30 + 40);
          v49 = *(v30 + 48);
          v29 = v67;
          v3 = v68;
        }

        while (v49 != v48)
        {
          v64 = *--v49;
          v63 = v64;
          *v49 = 0;
          if (v64)
          {
            (*(*v63 + 8))(v63);
          }
        }

        *(v30 + 48) = v48;
        if (++v28 == v29)
        {
          goto LABEL_128;
        }
      }
    }
  }

  v20 = *(this + 88);
  if (v20)
  {
    v21 = *(this + 43);
    v22 = 8 * v20;
    while (1)
    {
      v23 = *v21;
      v24 = *(*v21 + 23);
      if (v24 < 0)
      {
        if (!v23[1])
        {
          goto LABEL_54;
        }
      }

      else if (!*(*v21 + 23))
      {
        goto LABEL_54;
      }

      if ((v23[4] & 1) == 0)
      {
        if (v24 >= 0)
        {
          v25 = *v21;
        }

        else
        {
          v25 = *v23;
        }

        if (v24 >= 0)
        {
          v26 = *(*v21 + 23);
        }

        else
        {
          v26 = v23[1];
        }

        mlir::OperationName::OperationName(&v70, v25, v26, a2);
        if ((v23[4] & 1) == 0)
        {
          *(v23 + 32) = 1;
        }

        v23[3] = v70;
      }

LABEL_54:
      if (v23[4] & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v18, a2, v23[3]))
      {
        return 0;
      }

      ++v21;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_128:
  llvm::SmallVectorImpl<mlir::OpPassManager>::clear(this + 344);
  v65 = *(v3 + 88);
  if (v65 >= 2)
  {
    qsort(*(v3 + 43), v65, 8uLL, mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::MLIRContext *,mlir::detail::OpToOpPassAdaptor&)::$_2::__invoke);
  }

  return 1;
}

void *llvm::erase_if<std::vector<std::unique_ptr<mlir::Pass>>,std::logical_not<std::unique_ptr<mlir::Pass>>>(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    while (*v2)
    {
      if (++v2 == v3)
      {
        return result;
      }
    }

    if (v2 != v3)
    {
      v4 = v2 + 1;
      if (v2 + 1 != v3)
      {
        do
        {
          v5 = *v4;
          if (*v4)
          {
            *v4 = 0;
            result = *v2;
            *v2 = v5;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            ++v2;
          }

          ++v4;
        }

        while (v4 != v3);
        v3 = v1[1];
      }
    }
  }

  if (v2 != v3)
  {
    while (v3 != v2)
    {
      v6 = *--v3;
      result = v6;
      *v3 = 0;
      if (v6)
      {
        result = (*(*result + 8))(result);
      }
    }

    v1[1] = v2;
  }

  return result;
}

uint64_t mlir::detail::OpPassManagerImpl::canScheduleOn(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (!a1[1])
    {
      goto LABEL_15;
    }
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_15;
  }

  if ((a1[4] & 1) == 0)
  {
    v6 = a3;
    if (v5 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v5 >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = a1[1];
    }

    mlir::OperationName::OperationName(&v17, v7, v8, a2);
    v9 = v17;
    if ((a1[4] & 1) == 0)
    {
      *(a1 + 32) = 1;
    }

    a1[3] = v9;
    a3 = v6;
  }

LABEL_15:
  if (a1[4])
  {
    return a1[3] == a3;
  }

  v11 = *(a3 + 16);
  if (v11 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  if (v11 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 0;
  }

  {
    mlir::detail::OpPassManagerImpl::canScheduleOn();
  }

  result = (*(*v12 + 32))(v12, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v13 = a1[5];
    v14 = a1[6];
    if (v13 == v14)
    {
      return 1;
    }

    else
    {
      v15 = v13 + 8;
      do
      {
        result = (*(**(v15 - 8) + 72))(*(v15 - 8), v12);
        if (result)
        {
          v16 = v15 == v14;
        }

        else
        {
          v16 = 1;
        }

        v15 += 8;
      }

      while (!v16);
    }
  }

  return result;
}

void *mlir::OpPassManager::OpPassManager(void *a1, _BYTE *a2, size_t a3, int a4)
{
  v8 = operator new(0x48uLL);
  v9 = v8;
  if (a3 == 3)
  {
    if (*a2 == 28257 && a2[2] == 121)
    {
      v8[23] = 0;
      *v8 = 0;
      goto LABEL_21;
    }

    if (a2)
    {
      v8[23] = 3;
      v11 = v8;
      goto LABEL_19;
    }
  }

  else if (a2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    if (a3 >= 0x17)
    {
      if ((a3 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (a3 | 7) + 1;
      }

      v11 = operator new(v12);
      *(v9 + 1) = a3;
      *(v9 + 2) = v12 | 0x8000000000000000;
      *v9 = v11;
    }

    else
    {
      v8[23] = a3;
      v11 = v8;
      if (!a3)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    memmove(v11, a2, a3);
LABEL_20:
    *(v11 + a3) = 0;
    goto LABEL_21;
  }

  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
LABEL_21:
  v9[24] = 0;
  v9[32] = 0;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  *(v9 + 5) = 0;
  *(v9 + 16) = 0;
  *(v9 + 17) = a4;
  *a1 = v9;
  return a1;
}

uint64_t *mlir::OpPassManager::OpPassManager(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = *(v4 + 48);
      v7 = *(v4 + 40);
      if (v6 != v5)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            (*(*v8 + 8))(v8);
          }
        }

        while (v6 != v5);
        v7 = *(v4 + 40);
      }

      *(v4 + 48) = v5;
      operator delete(v7);
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }

  return a1;
}

std::string **mlir::OpPassManager::operator=(std::string **a1, const mlir::detail::OpPassManagerImpl **a2)
{
  v3 = *a2;
  v4 = operator new(0x48uLL);
  v5 = mlir::detail::OpPassManagerImpl::OpPassManagerImpl(v4, v3);
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    v7 = v6[1].__r_.__value_.__r.__words[2];
    if (v7)
    {
      data = v6[2].__r_.__value_.__l.__data_;
      v9 = v6[1].__r_.__value_.__r.__words[2];
      if (data != v7)
      {
        do
        {
          v11 = *--data;
          v10 = v11;
          *data = 0;
          if (v11)
          {
            (*(*v10 + 8))(v10);
          }
        }

        while (data != v7);
        v9 = v6[1].__r_.__value_.__r.__words[2];
      }

      v6[2].__r_.__value_.__r.__words[0] = v7;
      operator delete(v9);
    }

    if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6->__r_.__value_.__l.__data_);
    }

    operator delete(v6);
  }

  return a1;
}

void mlir::OpPassManager::~OpPassManager(mlir::OpPassManager *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      v3 = *(v1 + 48);
      v4 = *(v1 + 40);
      if (v3 != v2)
      {
        do
        {
          v6 = *--v3;
          v5 = v6;
          *v3 = 0;
          if (v6)
          {
            (*(*v5 + 8))(v5);
          }
        }

        while (v3 != v2);
        v4 = *(v1 + 40);
      }

      *(v1 + 48) = v2;
      operator delete(v4);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
  }
}

const char *mlir::OpPassManager::getOpAnchorName(mlir::OpPassManager *this)
{
  v1 = *this;
  v2 = *(*this + 23);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (*(*this + 23))
    {
      goto LABEL_3;
    }

    return "any";
  }

  if (!v1[1])
  {
    return "any";
  }

LABEL_3:
  if (v2 >= 0)
  {
    return *this;
  }

  else
  {
    return *v1;
  }
}

void *mlir::OpPassManager::printAsTextualPipeline(const char **this, llvm::raw_ostream *a2)
{
  v3 = *this;
  v4 = (*this)[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((*this)[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    v5 = "any";
    v6 = 3;
    v7 = *(v3 + 5);
    v8 = *(v3 + 6);
    result = *(a2 + 4);
    if (*(a2 + 3) - result < 3uLL)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!*(v3 + 1))
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = (*this)[23];
  }

  else
  {
    v6 = *(v3 + 1);
  }

  v7 = *(v3 + 5);
  v8 = *(v3 + 6);
  result = *(a2 + 4);
  if (v6 > *(a2 + 3) - result)
  {
LABEL_10:
    v10 = llvm::raw_ostream::write(a2, v5, v6);
    result = *(v10 + 4);
    if (*(v10 + 3) != result)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (v6)
  {
    v11 = v6;
    memcpy(result, v5, v6);
    result = (*(a2 + 4) + v11);
    *(a2 + 4) = result;
  }

  v10 = a2;
  if (*(a2 + 3) != result)
  {
LABEL_11:
    *result = 40;
    ++*(v10 + 4);
    if (v7 == v8)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = llvm::raw_ostream::write(v10, "(", 1uLL);
  if (v7 == v8)
  {
    goto LABEL_24;
  }

LABEL_19:
  v13 = *v7;
  v12 = v7 + 1;
  for (result = mlir::Pass::printAsTextualPipeline(v13, a2); v12 != v8; result = mlir::Pass::printAsTextualPipeline(v16, a2))
  {
    while (1)
    {
      v15 = *(a2 + 4);
      if (*(a2 + 3) == v15)
      {
        break;
      }

      *v15 = 44;
      ++*(a2 + 4);
      v14 = *v12++;
      result = mlir::Pass::printAsTextualPipeline(v14, a2);
      if (v12 == v8)
      {
        goto LABEL_24;
      }
    }

    llvm::raw_ostream::write(a2, ",", 1uLL);
    v16 = *v12++;
  }

LABEL_24:
  v17 = *(a2 + 4);
  if (*(a2 + 3) == v17)
  {

    return llvm::raw_ostream::write(a2, ")", 1uLL);
  }

  else
  {
    *v17 = 41;
    ++*(a2 + 4);
  }

  return result;
}

uint64_t mlir::OpPassManager::initialize(mlir::OpPassManager *this, mlir::MLIRContext *a2, unsigned int a3)
{
  v3 = *this;
  if (*(*this + 64) == a3)
  {
    return 1;
  }

  *(v3 + 64) = a3;
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v5 == v6)
  {
    return 1;
  }

  while (1)
  {
    v9 = *v5;
    v10 = *(*v5 + 8);
    {
      break;
    }

    v8 = v9;
    mlir::Pass::printAsTextualPipeline();
    v9 = v8;
    if (v10 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_9;
    }

LABEL_5:
    if (((*(*v9 + 64))(v9, a2) & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (++v5 == v6)
    {
      return 1;
    }
  }

  if (v10 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
  {
    goto LABEL_5;
  }

LABEL_9:
  v11 = *(v9 + 352);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = *(v9 + 344);
  v13 = 8 * v11;
  while ((mlir::OpPassManager::initialize(v12, a2, a3) & 1) != 0)
  {
    v12 = (v12 + 8);
    v13 -= 8;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

unint64_t mlir::OpPassManager::hash(mlir::OpPassManager *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 40);
  v2 = *(*this + 48);
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0uLL;
    while (1)
    {
      v6 = *v1;
      v7 = *(*v1 + 8);
      {
        if (v7 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
          goto LABEL_7;
        }
      }

      else
      {
        mlir::OpPassManager::hash();
        v4 = 0uLL;
        if (v7 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
LABEL_7:
          v8 = *(v6 + 352);
          if (v8)
          {
            v9 = *(v6 + 344);
            v10 = 8 * v8;
            do
            {
              v11 = mlir::OpPassManager::hash(v9);
              v21 = 0;
              v19 = 0u;
              v20 = 0u;
              v17 = 0u;
              v18 = 0u;
              v15 = 0u;
              v16 = 0u;
              v22 = 0xFF51AFD7ED558CCDLL;
              v13 = v3;
              v14 = v11;
              llvm::hashing::detail::hash_combine_recursive_helper::combine(&v13, 0, &v15, &v18);
              v9 = (v9 + 8);
              v10 -= 8;
            }

            while (v10);
            v4 = 0uLL;
          }

          goto LABEL_4;
        }
      }

      v21 = 0;
      v19 = v4;
      v20 = v4;
      v17 = v4;
      v18 = v4;
      v15 = v4;
      v16 = v4;
      v22 = 0xFF51AFD7ED558CCDLL;
      v13 = v3;
      v14 = v6;
      v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v13, 0, &v15, &v18);
      v4 = 0uLL;
      v3 = v5;
LABEL_4:
      if (++v1 == v2)
      {
        return v3;
      }
    }
  }

  return 0;
}

BOOL mlir::detail::OpToOpPassAdaptor::run(uint64_t a1, mlir *a2, mlir::detail::NestedAnalysisMap *a3, char a4, int a5)
{
  v100 = *MEMORY[0x1E69E9840];
  v84 = a1;
  v85 = a3;
  v83 = a2;
  v82 = a4;
  v81 = a5;
  v5 = *(a2 + 6);
  if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v80 = 257;
    mlir::Operation::emitOpError(a2, &v77, v90);
    if (v90[0])
    {
      LODWORD(threadid) = 3;
      v87 = "trying to schedule a pass on an unregistered operation";
      v88 = 54;
      v24 = &threadid;
      v25 = v91;
      if (v92 >= HIDWORD(v92))
      {
        if (v91 <= &threadid && &v91[3 * v92] > &threadid)
        {
          v72 = &threadid - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
          v25 = v91;
          v24 = (v91 + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
          v24 = &threadid;
          v25 = v91;
        }
      }

      v26 = &v25[3 * v92];
      v27 = *v24;
      v26[2] = v24[2];
      *v26 = v27;
      LODWORD(v92) = v92 + 1;
    }

    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
    if (v90[0])
    {
      mlir::InFlightDiagnostic::report(v90);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v29 = v96;
      if (v96)
      {
        v30 = v97;
        v31 = v96;
        if (v97 != v96)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = v96;
        }

        v97 = v29;
        operator delete(v31);
      }

      v32 = v94;
      if (!v94)
      {
        goto LABEL_83;
      }

      v33 = v95;
      v34 = v94;
      if (v95 == v94)
      {
        goto LABEL_82;
      }

      do
      {
        v36 = *--v33;
        v35 = v36;
        *v33 = 0;
        if (v36)
        {
          operator delete[](v35);
        }
      }

      while (v33 != v32);
      goto LABEL_81;
    }
  }

  else
  {
    {
      v58 = v5;
      mlir::detail::OpToOpPassAdaptor::run();
      v5 = v58;
    }

    if ((*(*v5 + 4))(v5, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      v6 = v83;
      v7 = v84;
      if (*(*(v83 + 6) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v83 + 6);
      }

      v9 = (*(*v84 + 72))(v84, v8);
      if (v9)
      {
        v10 = v85;
        v11 = *(v85 + 9);
        v12 = v11 & 0xFFFFFFFFFFFFFFF8;
        if ((v11 & 4) == 0 && v12)
        {
          do
          {
            v13 = *(v12 + 72);
            v12 = v13 & 0xFFFFFFFFFFFFFFF8;
          }

          while ((v13 & 4) == 0 && v12);
        }

        v76 = v12;
        threadid = llvm::get_threadid(v9);
        v87 = v84;
        v90[0] = &v83;
        v90[1] = &v81;
        v90[2] = &v85;
        v91 = &v82;
        v92 = &v76;
        v93[0] = &threadid;
        if (*(v84 + 120) == 1)
        {
          v14 = *(v84 + 64);
          if (v14 != *(v84 + 56))
          {
            free(v14);
            v6 = v83;
            v10 = v85;
            v12 = v76;
          }
        }

        *(v7 + 40) = v6 & 0xFFFFFFFFFFFFFFFBLL;
        *(v7 + 48) = v10;
        *(v7 + 56) = v7 + 88;
        *(v7 + 64) = v7 + 88;
        *(v7 + 72) = 2;
        *(v7 + 80) = 0;
        *(v7 + 104) = llvm::function_ref<llvm::LogicalResult ()(mlir::OpPassManager &,mlir::Operation *)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_0>;
        *(v7 + 112) = v90;
        *(v7 + 120) = 1;
        if (v12)
        {
          v15 = *v12;
          std::recursive_mutex::lock(*v12);
          v16 = *v12;
          v17 = *(*v12 + 72);
          v18 = *&v16[1].__m_.__opaque[8];
          while (v17 != v18)
          {
            v19 = *v17++;
            (*(*v19 + 32))(v19, v7, v6);
          }

          std::recursive_mutex::unlock(v15);
          v6 = v83;
        }

        v75 = 0;
        Context = mlir::Attribute::getContext((v6 + 24));
        v77 = &v84;
        v78 = &v82;
        v79 = &v75;
        v21 = v84;
        v89 = v83 & 0xFFFFFFFFFFFFFFF9;
        if (mlir::MLIRContext::hasActionHandler(Context))
        {
          mlir::MLIRContext::executeActionInternal<mlir::PassExecutionAction,mlir::Pass &>(Context, llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>, &v77, &v89, 1, v21);
          goto LABEL_101;
        }

        v22 = v84;
        v23 = *(v84 + 8);
        {
          if (v23 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
LABEL_23:
            (*(**v77 + 56))();
LABEL_100:
            *v79 = (*(*v77 + 40) & 4) != 0;
LABEL_101:
            mlir::detail::NestedAnalysisMap::invalidate(v85, (v84 + 56));
            v61 = v75;
            if ((v75 & 1) == 0)
            {
              if (v82 == 1)
              {
                v62 = *(v84 + 8);
                {
                  v63 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id;
                  if (mlir::detail::PreservedAnalyses::isAll((v84 + 56)))
                  {
                    goto LABEL_105;
                  }
                }

                else
                {
                  mlir::OpPassManager::hash();
                  v63 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id;
                  if (mlir::detail::PreservedAnalyses::isAll((v84 + 56)))
                  {
LABEL_105:
                    v61 = v75;
                    v64 = v76;
                    if (!v76)
                    {
                      return (v61 & 1) == 0;
                    }

                    goto LABEL_109;
                  }
                }

                v61 = mlir::verify(v83, (v62 != v63)) ^ 1;
                v75 = v61 & 1;
                v64 = v76;
                if (!v76)
                {
                  return (v61 & 1) == 0;
                }

                goto LABEL_109;
              }

              v61 = 0;
            }

            v64 = v76;
            if (!v76)
            {
              return (v61 & 1) == 0;
            }

LABEL_109:
            v66 = v83;
            v65 = v84;
            v67 = *v64;
            std::recursive_mutex::lock(*v64);
            v69 = *(*v64)[1].__m_.__opaque;
            v68 = *&(*v64)[1].__m_.__opaque[8];
            if (v61)
            {
              while (v68 != v69)
              {
                v70 = *(v68 - 8);
                v68 -= 8;
                (*(*v70 + 48))(v70, v65, v66);
              }
            }

            else
            {
              while (v68 != v69)
              {
                v71 = *(v68 - 8);
                v68 -= 8;
                (*(*v71 + 40))(v71, v65, v66);
              }
            }

            std::recursive_mutex::unlock(v67);
            v61 = v75;
            return (v61 & 1) == 0;
          }
        }

        else
        {
          mlir::OpPassManager::hash();
          if (v23 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
            goto LABEL_23;
          }
        }

        v59 = *v78;
        v60 = mlir::Attribute::getContext(((*(v22 + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
        if (mlir::MLIRContext::isMultithreadingEnabled(v60))
        {
          mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(v22, v59);
        }

        mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(v22, v59);
        goto LABEL_100;
      }

      v80 = 257;
      mlir::Operation::emitOpError(v83, &v77, v90);
      if (v90[0])
      {
        LODWORD(threadid) = 3;
        v87 = "trying to schedule a pass on an unsupported operation";
        v88 = 53;
        p_threadid = &threadid;
        v48 = v91;
        if (v92 >= HIDWORD(v92))
        {
          if (v91 <= &threadid && &v91[3 * v92] > &threadid)
          {
            v74 = &threadid - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
            v48 = v91;
            p_threadid = (v91 + v74);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
            p_threadid = &threadid;
            v48 = v91;
          }
        }

        v49 = &v48[3 * v92];
        v50 = *p_threadid;
        v49[2] = p_threadid[2];
        *v49 = v50;
        LODWORD(v92) = v92 + 1;
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
      if (v90[0])
      {
        mlir::InFlightDiagnostic::report(v90);
      }

      if (v99 == 1)
      {
        if (v98 != &v99)
        {
          free(v98);
        }

        v51 = v96;
        if (v96)
        {
          v52 = v97;
          v53 = v96;
          if (v97 != v96)
          {
            do
            {
              v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
            }

            while (v52 != v51);
            v53 = v96;
          }

          v97 = v51;
          operator delete(v53);
        }

        v32 = v94;
        if (!v94)
        {
          goto LABEL_83;
        }

        v54 = v95;
        v34 = v94;
        if (v95 == v94)
        {
LABEL_82:
          v95 = v32;
          operator delete(v34);
LABEL_83:
          if (v91 != v93)
          {
            free(v91);
          }

          return v28;
        }

        do
        {
          v56 = *--v54;
          v55 = v56;
          *v54 = 0;
          if (v56)
          {
            operator delete[](v55);
          }
        }

        while (v54 != v32);
LABEL_81:
        v34 = v94;
        goto LABEL_82;
      }
    }

    else
    {
      v80 = 257;
      mlir::Operation::emitOpError(v83, &v77, v90);
      if (v90[0])
      {
        LODWORD(threadid) = 3;
        v87 = "trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'";
        v88 = 75;
        v37 = &threadid;
        v38 = v91;
        if (v92 >= HIDWORD(v92))
        {
          if (v91 <= &threadid && &v91[3 * v92] > &threadid)
          {
            v73 = &threadid - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
            v38 = v91;
            v37 = (v91 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
            v37 = &threadid;
            v38 = v91;
          }
        }

        v39 = &v38[3 * v92];
        v40 = *v37;
        v39[2] = v37[2];
        *v39 = v40;
        LODWORD(v92) = v92 + 1;
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
      if (v90[0])
      {
        mlir::InFlightDiagnostic::report(v90);
      }

      if (v99 == 1)
      {
        if (v98 != &v99)
        {
          free(v98);
        }

        v41 = v96;
        if (v96)
        {
          v42 = v97;
          v43 = v96;
          if (v97 != v96)
          {
            do
            {
              v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
            }

            while (v42 != v41);
            v43 = v96;
          }

          v97 = v41;
          operator delete(v43);
        }

        v32 = v94;
        if (!v94)
        {
          goto LABEL_83;
        }

        v44 = v95;
        v34 = v94;
        if (v95 == v94)
        {
          goto LABEL_82;
        }

        do
        {
          v46 = *--v44;
          v45 = v46;
          *v44 = 0;
          if (v46)
          {
            operator delete[](v45);
          }
        }

        while (v44 != v32);
        goto LABEL_81;
      }
    }
  }

  return v28;
}