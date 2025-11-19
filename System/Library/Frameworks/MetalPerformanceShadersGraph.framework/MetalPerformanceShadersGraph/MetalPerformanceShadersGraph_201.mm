void ZinIrAllReduceUnitInfo::~ZinIrAllReduceUnitInfo(ZinIrAllReduceUnitInfo *this)
{
  ZinIrCollectiveCommunicationUnitInfo::~ZinIrCollectiveCommunicationUnitInfo(this);

  operator delete(v1);
}

void *std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short const*,unsigned short const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 <= (v7 - *result) >> 1)
  {
    v17 = result[1];
    v18 = v17 - v8;
    if (a4 <= (v17 - v8) >> 1)
    {
      v21 = a3 - __src;
      if (v21)
      {
        result = memmove(*result, __src, v21);
      }

      v22 = v8 + v21;
      goto LABEL_29;
    }

    v19 = &__src[v18];
    if (v17 != v8)
    {
      result = memmove(*result, __src, v18);
    }

    v20 = v6[1];
    v23 = v20;
    if (v19 != a3)
    {
      v24 = &a3[v8] - &__src[v17] - 2;
      if (v24 >= 0x1E)
      {
        v23 = v6[1];
        if (v8 + v20 - &__src[v17] >= 0x20)
        {
          v25 = (v24 >> 1) + 1;
          v26 = 2 * (v25 & 0xFFFFFFFFFFFFFFF0);
          v19 += v26;
          v23 = (v20 + v26);
          v27 = (v20 + 16);
          v28 = &__src[v17 - v8 + 16];
          v29 = v25 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v30 = *v28;
            *(v27 - 1) = *(v28 - 1);
            *v27 = v30;
            v27 += 2;
            v28 += 32;
            v29 -= 16;
          }

          while (v29);
          if (v25 == (v25 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v23 = v6[1];
      }

      do
      {
        v31 = *v19;
        v19 += 2;
        *v23 = v31;
        v23 += 2;
      }

      while (v19 != a3);
    }

LABEL_28:
    v22 = v23;
LABEL_29:
    v6[1] = v22;
    return result;
  }

  if (v8)
  {
    result[1] = v8;
    v9 = v8;
    v10 = a4;
    operator delete(v9);
    a4 = v10;
    v7 = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  if (v7 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v7;
  }

  v12 = v7 >= 0x7FFFFFFFFFFFFFFELL;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v12)
  {
    v13 = v11;
  }

  if (v13 < 0)
  {
LABEL_30:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v14 = 2 * v13;
  result = operator new(2 * v13);
  v15 = result;
  *v6 = result;
  v6[2] = result + v14;
  if (__src != a3)
  {
    v16 = ((a3 - __src - 2) & 0xFFFFFFFFFFFFFFFELL) + 2;
    result = memcpy(result, __src, v16);
    v15 += v16;
  }

  v6[1] = v15;
  return result;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::anec::writeSingleRegionPlist(mlir::Operation *,std::shared_ptr<mlir::anec::ANECIRNetwork> const&,mlir::anec::ANECIRWeightSerializer &,std::map<std::string,std::map<std::string,std::string>> *)::$_0>(uint64_t **a1, mlir::anec::_anonymous_namespace_ *a2)
{
  v15 = a2;
  {
    v11 = a2;
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match();
    a2 = v11;
  }

  v4 = v15;
  {
    return 0;
  }

  v5 = a1[3];
  v14[0] = a1[2];
  v14[1] = &v15;
  v14[2] = v5;
  v6 = **a1;
  v7 = (*(v6 + 424) - *(v6 + 416)) >> 4;
  if (mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(v15))
  {
    if (v4)
    {
      v12 = v4;
      InterfaceFor = mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(v4);
      if ((mlir::ExternalFoldInterface::externalFold(&v12, **a1, a1[1]) & 1) == 0)
      {
        return 0;
      }

      mlir::anec::writeSingleRegionPlist(mlir::Operation *,std::shared_ptr<mlir::anec::ANECIRNetwork> const&,mlir::anec::ANECIRWeightSerializer &,std::map<std::string,std::map<std::string,std::string>> *)::$_0::operator() const(mlir::Operation *)::{lambda(std::vector<std::shared_ptr<mlir::anec::ANECIRUnit>> const&,unsigned long)#1}::operator()(v14, (v6 + 416), v7);
    }

    else
    {
      v12 = 0;
      InterfaceFor = 0;
    }
  }

  else
  {
    v12 = 0;
    InterfaceFor = 0;
  }

  v8 = v15;
  if (!mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(v15))
  {
    v12 = 0;
    InterfaceFor = 0;
    return 1;
  }

  if (!v8)
  {
    v12 = 0;
    InterfaceFor = 0;
    return 1;
  }

  v9 = mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(v8);
  v12 = v8;
  InterfaceFor = v9;
  if (mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v12, *a1[4]))
  {
    mlir::anec::writeSingleRegionPlist(mlir::Operation *,std::shared_ptr<mlir::anec::ANECIRNetwork> const&,mlir::anec::ANECIRWeightSerializer &,std::map<std::string,std::map<std::string,std::string>> *)::$_0::operator() const(mlir::Operation *)::{lambda(std::vector<std::shared_ptr<mlir::anec::ANECIRUnit>> const&,unsigned long)#1}::operator()(v14, (v6 + 416), v7);
    return 1;
  }

  return 0;
}

BOOL mlir::anec::anonymous namespace::addConstToNetwork(mlir::anec::_anonymous_namespace_ *this, mlir::Operation *a2, mlir::anec::ANECIRNetwork *a3, mlir::anec::ANECIRWeightSerializer *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = *(this - 2);
  if (v7)
  {
    while (1)
    {
      v8 = v7[2];
      {
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
      }

      if (((*(**(v8 + 48) + 32))(*(v8 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::HasWeights<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::HasWeights>(void)::Empty>,void>::resolveTypeID(void)::id, a3, a4) & 1) == 0)
      {
        break;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    mlir::anec::ANECIRWeightSerializer::hasConstant(a3, this);
    LOBYTE(v10) = 0;
  }

  else
  {
LABEL_6:
    v10 = 1;
    if (mlir::anec::ANECIRWeightSerializer::hasConstant(a3, this))
    {
      return v10;
    }
  }

  if (mlir::isOpTriviallyDead(this, v9))
  {
    return 1;
  }

  v47 = *(this - 1) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v47);
  v12 = v11;
  v46 = v11;
  mlir::anec::computeOpKeyString(this, &v45);
  v43 = 0;
  v44 = 0;
  v48 = &v43;
  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v48, this) & 1) == 0)
  {
    v40 = "Unable to get Elements from the constant op";
    v42 = 259;
    mlir::Operation::emitOpError(this, &v40, &v48);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
    if (v48)
    {
      mlir::InFlightDiagnostic::report(&v48);
    }

    if (v57 != 1)
    {
      goto LABEL_64;
    }

    if (v56 != &v57)
    {
      free(v56);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v55;
      v15 = __p;
      if (v55 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v55 = v13;
      operator delete(v15);
    }

    v16 = v52;
    if (!v52)
    {
      goto LABEL_54;
    }

    v17 = v53;
    v18 = v52;
    if (v53 == v52)
    {
LABEL_53:
      v53 = v16;
      operator delete(v18);
LABEL_54:
      if (v50 != &v51)
      {
        free(v50);
      }

      goto LABEL_64;
    }

    do
    {
      v20 = *--v17;
      v19 = v20;
      *v17 = 0;
      if (v20)
      {
        operator delete[](v19);
      }
    }

    while (v17 != v16);
LABEL_52:
    v18 = v52;
    goto LABEL_53;
  }

  if (!mlir::ElementsAttr::getNumElements(v43, v44))
  {
    v40 = "Weights should have 1 or more elements";
    v42 = 259;
    mlir::Operation::emitOpError(this, &v40, &v48);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
    if (v48)
    {
      mlir::InFlightDiagnostic::report(&v48);
    }

    if (v57 != 1)
    {
      goto LABEL_64;
    }

    if (v56 != &v57)
    {
      free(v56);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v55;
      v23 = __p;
      if (v55 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v55 = v21;
      operator delete(v23);
    }

    v16 = v52;
    if (!v52)
    {
      goto LABEL_54;
    }

    v24 = v53;
    v18 = v52;
    if (v53 == v52)
    {
      goto LABEL_53;
    }

    do
    {
      v26 = *--v24;
      v25 = v26;
      *v24 = 0;
      if (v26)
      {
        operator delete[](v25);
      }
    }

    while (v24 != v16);
    goto LABEL_52;
  }

  if (v12 < 6)
  {
    if (mlir::anec::ANECIRWeightSerializer::hasConstant(a3, this))
    {
      v27 = mlir::anec::ANECIRWeightSerializer::lookupConstant(a3, this);
    }

    else
    {
      v27 = mlir::anec::ANECIRWeightSerializer::addConstant(a3, this);
    }

    v29 = v27;
    v30 = v28;
    if (v10)
    {
      v10 = 1;
    }

    else
    {
      v48 = &v46;
      v49 = &v47;
      mlir::anec::ANECIRConstant::Create(&v45, &v40);
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v47);
      ANECIRDataType = mlir::anec::getANECIRDataType(RHS);
      v10 = 0;
      if ((ANECIRDataType & 0x100000000) != 0)
      {
        mlir::anec::ANECIRConstant::SetWeight(v40, v29, ANECIRDataType, v30, v31, v32, v33, v34, v35);
        v39[0] = v40;
        v39[1] = v41;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        std::vector<std::shared_ptr<mlir::anec::ANECIRConstant>>::push_back[abi:nn200100](a2 + 440, v39);
        std::shared_ptr<plist::PListInt>::~shared_ptr[abi:nn200100](v39);
        v10 = 1;
      }

      std::shared_ptr<plist::PListInt>::~shared_ptr[abi:nn200100](&v40);
    }
  }

  else
  {
    v40 = "Weights should have a rank less than or equal to 5";
    v42 = 259;
    mlir::Operation::emitOpError(this, &v40, &v48);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
    if (v48)
    {
      mlir::InFlightDiagnostic::report(&v48);
    }

    if (v57 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v49);
    }
  }

LABEL_64:
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  return v10;
}

void mlir::anec::writeSingleRegionPlist(mlir::Operation *,std::shared_ptr<mlir::anec::ANECIRNetwork> const&,mlir::anec::ANECIRWeightSerializer &,std::map<std::string,std::map<std::string,std::string>> *)::$_0::operator() const(mlir::Operation *)::{lambda(std::vector<std::shared_ptr<mlir::anec::ANECIRUnit>> const&,unsigned long)#1}::operator()(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = **a1;
  if (v3)
  {
    memset(&__str, 0, sizeof(__str));
    v21 = 0;
    v25 = 0;
    v26 = 1;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v20 = &unk_1F5B3FB30;
    p_str = &__str;
    llvm::raw_ostream::SetBufferAndMode(&v20, 0, 0, 0);
    __p[0] = *(**(a1 + 8) + 24);
    mlir::Attribute::print(__p, &v20, 0);
    v7 = (a2[1] - *a2) >> 4;
    if (v7 > a3)
    {
      do
      {
        v8 = *(*a2 + 16 * a3);
        if (*(v8 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v19, *(v8 + 8), *(v8 + 16));
        }

        else
        {
          v9 = *(v8 + 8);
          v19.__r_.__value_.__r.__words[2] = *(v8 + 24);
          *&v19.__r_.__value_.__l.__data_ = v9;
        }

        v10 = *(a1 + 16);
        *__p = 0u;
        *v17 = 0u;
        v18 = 1065353216;
        mlir::anec::PrependProcNameToNameAndShorten(&v19, v10, __p);
        v11 = v17[0];
        if (v17[0])
        {
          do
          {
            v15 = *v11;
            if (*(v11 + 39) < 0)
            {
              operator delete(v11[2]);
            }

            operator delete(v11);
            v11 = v15;
          }

          while (v15);
        }

        v12 = __p[0];
        __p[0] = 0;
        if (v12)
        {
          operator delete(v12);
        }

        __p[0] = *(a1 + 16);
        v13 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, __p[0], &std::piecewise_construct, __p);
        __p[0] = &v19;
        v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v13 + 7, &v19.__r_.__value_.__l.__data_, &std::piecewise_construct, __p);
        std::string::operator=((v14 + 7), &__str);
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        ++a3;
      }

      while (a3 != v7);
    }

    llvm::raw_ostream::~raw_ostream(&v20);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void *mlir::anec::ANECIRConstant::Create@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x68uLL);
  *v4 = &unk_1F5B2E868;
  v5 = (v4 + 8);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a1, *(a1 + 8));
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *a1;
    *(v4 + 3) = *(a1 + 16);
  }

  *(v4 + 8) = 16;
  *v4 = &unk_1F5B35500;
  *a2 = v4;
  result = operator new(0x20uLL);
  *result = &unk_1F5B35528;
  result[1] = 0;
  result[2] = 0;
  result[3] = v4;
  a2[1] = result;
  return result;
}

uint64_t mlir::anec::anonymous namespace::addConstToNetwork(mlir::Operation *,mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_1::operator()(uint64_t a1, int a2)
{
  IndexFromDim = mlir::anec::getIndexFromDim(a2, **a1);
  if (v4)
  {
    return *(mlir::ArrayAttr::getValue(*(a1 + 8)) + 8 * IndexFromDim);
  }

  else
  {
    return 1;
  }
}

void mlir::anec::ANECIRConstant::~ANECIRConstant(void **this)
{
  *this = &unk_1F5B2E868;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B2E868;
  if (*(this + 31) < 0)
  {
    v2 = this;
    operator delete(this[1]);
    this = v2;
  }

  operator delete(this);
}

void mlir::anec::ANECIRConstant::UpdateNamesWithProcName(uint64_t a1, uint64_t a2, uint64_t **a3, void *a4)
{
  v6 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v7 = a2;
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
    a2 = v7;
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v6;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 24);
  }

  mlir::anec::PrependProcNameToNameAndShorten(v6, a2, a4);
  v10 = v6;
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v6, &std::piecewise_construct, &v10);
  std::string::operator=((v8 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRConstant *,std::shared_ptr<mlir::anec::ANECIRConstant>::__shared_ptr_default_delete<mlir::anec::ANECIRConstant,mlir::anec::ANECIRConstant>,std::allocator<mlir::anec::ANECIRConstant>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRConstant *,std::shared_ptr<mlir::anec::ANECIRConstant>::__shared_ptr_default_delete<mlir::anec::ANECIRConstant,mlir::anec::ANECIRConstant>,std::allocator<mlir::anec::ANECIRConstant>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    *v1 = &unk_1F5B2E868;
    if (*(v1 + 31) < 0)
    {
      operator delete(v1[1]);
    }

    operator delete(v1);
  }
}

_OWORD *std::vector<std::shared_ptr<mlir::anec::ANECIRConstant>>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::shared_ptr<mlir::anec::ANECIRConstant>>::__emplace_back_slow_path<std::shared_ptr<mlir::anec::ANECIRConstant> const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    result = v3 + 2;
  }

  *(a1 + 8) = result;
  return result;
}

_OWORD *std::vector<std::shared_ptr<mlir::anec::ANECIRConstant>>::__emplace_back_slow_path<std::shared_ptr<mlir::anec::ANECIRConstant> const&>(uint64_t a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = v3 >> 4;
  v5 = (v3 >> 4) + 1;
  if (v5 >> 60)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v8 = *(a1 + 16) - v2;
  if (v8 >> 3 > v5)
  {
    v5 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {
    if (v9 >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v10 = operator new(16 * v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[16 * v4];
  v12 = &v10[16 * v9];
  v13 = *a2;
  *v11 = *a2;
  if (*(&v13 + 1))
  {
    atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    v2 = *a1;
    v3 = *(a1 + 8) - *a1;
    v4 = v3 >> 4;
  }

  v14 = v11 + 16;
  v15 = &v11[-16 * v4];
  memcpy(v15, v2, v3);
  *a1 = v15;
  *(a1 + 8) = v14;
  *(a1 + 16) = v12;
  if (v2)
  {
    operator delete(v2);
  }

  return v14;
}

uint64_t mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::SparseElementsAttr::getValues(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::anec::PlistGeneratorInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::anec::PlistGeneratorInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
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
    v23 = operator new(0x50uLL);
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

    v24[9] = 0;
    v24[8] = 0;
    v24[7] = (v24 + 8);
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

uint64_t mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::SparseElementsAttr::getValues(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::silc::PlistGeneratorInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::silc::PlistGeneratorInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::silc::PlistGeneratorInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::PlistGeneratorInterface]";
  v6 = 85;
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

uint64_t mlir::anec::WriteA12PlistPassBase<mlir::anec::anonymous namespace::WriteA12PlistPass>::WriteA12PlistPassBase(uint64_t a1)
{
  *(a1 + 16) = "anec.A12";
  *(a1 + 24) = 8;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5B355D0;
  *&v6 = "The directory of the input files.";
  *(&v6 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 344, (a1 + 152), "source-directory", 16, &v6);
  *(a1 + 344) = &unk_1F5AFC930;
  *(a1 + 576) = &unk_1F5AFC9B0;
  *&v6 = "The directory in which to place generated plists.";
  *(&v6 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 592, (a1 + 152), "plist-directory", 15, &v6);
  *(a1 + 592) = &unk_1F5AFC930;
  *(a1 + 824) = &unk_1F5AFC9B0;
  *&v6 = "The filename for the plist to be produced.";
  *(&v6 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 840, (a1 + 152), "plist-filename", 14, &v6);
  *(a1 + 840) = &unk_1F5AFC930;
  *(a1 + 1072) = &unk_1F5AFC9B0;
  *&v6 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v6 + 1) = 64;
  v4 = 0;
  v5 = &v4;
  v3 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(a1 + 1088, (a1 + 152), "force-overwrite", 15, &v6, &v5, &v3);
  *(a1 + 1088) = &unk_1F5AFB130;
  *(a1 + 1280) = &unk_1F5AFB1B0;
  *&v6 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v6 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 1296, (a1 + 152), "bundle-name", 11, &v6);
  *(a1 + 1296) = &unk_1F5AFC930;
  *(a1 + 1528) = &unk_1F5AFC9B0;
  *(&v6 + 1) = 158;
  LOBYTE(v3) = 1;
  v5 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1544, (a1 + 152), "keep-unit-name-attrs", 20, &v6, &v5);
  *(a1 + 1544) = &unk_1F5AFB130;
  *(a1 + 1736) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::anec::anonymous namespace::WriteA12PlistPass::~WriteA12PlistPass(mlir::anec::_anonymous_namespace_::WriteA12PlistPass *this)
{
  *this = &unk_1F5B355D0;
  *(this + 193) = &unk_1F5B3E720;
  v2 = this + 1704;
  v3 = *(this + 216);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 193) = &unk_1F5B3E1D8;
  v4 = *(this + 205);
  if (v4 != *(this + 204))
  {
    free(v4);
  }

  v5 = *(this + 201);
  if (v5 != this + 1624)
  {
    free(v5);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1296);
  *(this + 136) = &unk_1F5B3E720;
  v6 = *(this + 159);
  if (v6 == (this + 1248))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 136) = &unk_1F5B3E1D8;
  v7 = *(this + 148);
  if (v7 != *(this + 147))
  {
    free(v7);
  }

  v8 = *(this + 144);
  if (v8 != this + 1168)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 840);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{

  operator delete(v1);
}

BOOL mlir::anec::anonymous namespace::WriteA12PlistPass::runOnOperation(mlir::anec::_anonymous_namespace_::WriteA12PlistPass *this)
{
  v2 = *(this + 495);
  if (v2 >= 0)
  {
    v3.var0.var0 = (this + 472);
  }

  else
  {
    v3.var0.var0 = *(this + 59);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 495);
  }

  else
  {
    v4 = *(this + 60);
  }

  v5 = *(this + 743);
  if (v5 >= 0)
  {
    v6 = this + 720;
  }

  else
  {
    v6 = *(this + 90);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 743);
  }

  else
  {
    v7 = *(this + 91);
  }

  v8 = *(this + 991);
  if (v8 >= 0)
  {
    v9 = this + 968;
  }

  else
  {
    v9 = *(this + 121);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 991);
  }

  else
  {
    v10 = *(this + 122);
  }

  v11 = this + 1424;
  v12 = *(this + 1447);
  if (v12 < 0)
  {
    v11 = *(this + 178);
  }

  if (v12 < 0)
  {
    v12 = *(this + 179);
  }

  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

BOOL mlir::OperationPass<mlir::anec::A12>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t mlir::anec::WriteA12PlistPassBase<mlir::anec::anonymous namespace::WriteA12PlistPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x6D8uLL);
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
  *v4 = &unk_1F5B355D0;
  *&v10 = "The directory of the input files.";
  *(&v10 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "source-directory", 16, &v10);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v10 = "The directory in which to place generated plists.";
  *(&v10 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 37), v4 + 152, "plist-directory", 15, &v10);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *&v10 = "The filename for the plist to be produced.";
  *(&v10 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 840, v4 + 152, "plist-filename", 14, &v10);
  *(v4 + 105) = &unk_1F5AFC930;
  *(v4 + 134) = &unk_1F5AFC9B0;
  *&v10 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v10 + 1) = 64;
  v8 = 0;
  v9 = &v8;
  v7 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>((v4 + 68), v4 + 152, "force-overwrite", 15, &v10, &v9, &v7);
  *(v4 + 136) = &unk_1F5AFB130;
  *(v4 + 160) = &unk_1F5AFB1B0;
  *&v10 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v10 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 81), v4 + 152, "bundle-name", 11, &v10);
  *(v4 + 162) = &unk_1F5AFC930;
  *(v4 + 191) = &unk_1F5AFC9B0;
  *(&v10 + 1) = 158;
  LOBYTE(v7) = 1;
  v9 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1544, v4 + 19, "keep-unit-name-attrs", 20, &v10, &v9);
  *(v4 + 193) = &unk_1F5AFB130;
  *(v4 + 217) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B35560;
  *a2 = v4;
  return result;
}

BOOL mlir::anec::anonymous namespace::writePlist(uint64_t a1, Location a2, size_t a3, uint64_t a4, uint64_t a5, const void *a6, std::string::size_type a7, char a8, const void *a9, std::string::size_type a10, char a11)
{
  v160 = *MEMORY[0x1E69E9840];
  __src = a2.var0.var0;
  __len = a3;
  if (!(a5 | a7))
  {
    mlir::emitError(*(a1 + 24), a2, &__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      LODWORD(v119.__r_.__value_.__l.__data_) = 3;
      v119.__r_.__value_.__l.__size_ = "Missing filename and directory, one or the other must be specified.";
      v119.__r_.__value_.__r.__words[2] = 67;
      v12 = &v119;
      v13 = v150;
      if (v151 >= v152)
      {
        if (v150 <= &v119 && v150 + 24 * v151 > &v119)
        {
          v109 = &v119 - v150;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
          v13 = v150;
          v12 = (v150 + v109);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
          v12 = &v119;
          v13 = v150;
        }
      }

      v14 = &v13[24 * v151];
      v15 = *&v12->__r_.__value_.__l.__data_;
      *(v14 + 2) = *(&v12->__r_.__value_.__l + 2);
      *v14 = v15;
      ++v151;
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__str);
    }

    if (v159 == 1)
    {
      if (v158 != &v159)
      {
        free(v158);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v157;
        v19 = __p;
        if (v157 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v157 = v17;
        operator delete(v19);
      }

      v20 = v154;
      if (v154)
      {
        v21 = v155;
        v22 = v154;
        if (v155 != v154)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              operator delete[](v23);
            }
          }

          while (v21 != v20);
          v22 = v154;
        }

        v155 = v20;
        operator delete(v22);
      }

      if (v150 != v153)
      {
        free(v150);
      }
    }

    return v16;
  }

  if (!*(a1 + 47) || (v161.var0 = "sym_name", v161.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(a1, v161), (v31 & 1) == 0))
  {
    v162.var0 = "sym_name";
    v162.var1 = 8;
    InherentAttr = mlir::DictionaryAttr::get((a1 + 56), v162);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v32 = InherentAttr;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v137 = v32;
  AttrData = mlir::OpaqueAttr::getAttrData(&v137);
  v35 = AttrData;
  v36 = v34;
  if (a7)
  {
    if (a6)
    {
      if (a7 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_233;
      }

      if (a7 >= 0x17)
      {
        if ((a7 | 7) == 0x17)
        {
          v38 = 25;
        }

        else
        {
          v38 = (a7 | 7) + 1;
        }

        p_dst = operator new(v38);
        __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
        __dst.__r_.__value_.__l.__size_ = a7;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = a7;
        p_dst = &__dst;
      }

      memmove(p_dst, a6, a7);
      p_dst->__r_.__value_.__s.__data_[a7] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }
  }

  else
  {
    v130 = 773;
    v129[0] = a4;
    v129[1] = a5;
    v129[2] = "/";
    v119.__r_.__value_.__r.__words[0] = v129;
    v119.__r_.__value_.__r.__words[2] = AttrData;
    v120 = v34;
    LOWORD(v121) = 1282;
    __str.__r_.__value_.__r.__words[0] = &v119;
    __str.__r_.__value_.__r.__words[2] = ".plist";
    LOWORD(v151) = 770;
    llvm::Twine::str(&__str, &__dst);
  }

  LOWORD(v151) = 260;
  __str.__r_.__value_.__r.__words[0] = &__dst;
  if (llvm::sys::fs::access(&__str, 0) || (a8 & 1) != 0)
  {
    *(&__str.__r_.__value_.__s + 23) = 6;
    strcpy(&__str, "1.0.15");
    mlir::anec::ANECIRTop::Create(&__dst, &__str, &v134);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v36 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_233;
    }

    if (v36 >= 0x17)
    {
      if ((v36 | 7) == 0x17)
      {
        v56 = 25;
      }

      else
      {
        v56 = (v36 | 7) + 1;
      }

      p_str = operator new(v56);
      __str.__r_.__value_.__r.__words[2] = v56 | 0x8000000000000000;
      __str.__r_.__value_.__r.__words[0] = p_str;
      __str.__r_.__value_.__l.__size_ = v36;
    }

    else
    {
      *(&__str.__r_.__value_.__s + 23) = v36;
      p_str = &__str;
      if (!v36)
      {
LABEL_78:
        p_str[v36] = 0;
        mlir::anec::ANECIRNetwork::Create(&__str, &v132);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v57 = v132;
        v58 = __src;
        if (!__src)
        {
          memset(&__str, 0, sizeof(__str));
          goto LABEL_92;
        }

        v59 = __len;
        if (__len > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_233;
        }

        if (__len >= 0x17)
        {
          if ((__len | 7) == 0x17)
          {
            v61 = 25;
          }

          else
          {
            v61 = (__len | 7) + 1;
          }

          v60 = operator new(v61);
          __str.__r_.__value_.__r.__words[2] = v61 | 0x8000000000000000;
          __str.__r_.__value_.__r.__words[0] = v60;
          __str.__r_.__value_.__l.__size_ = v59;
        }

        else
        {
          *(&__str.__r_.__value_.__s + 23) = __len;
          v60 = &__str;
          if (!__len)
          {
            goto LABEL_91;
          }
        }

        memmove(v60, v58, v59);
LABEL_91:
        *(v60 + v59) = 0;
LABEL_92:
        std::string::operator=((v57 + 544), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v131.__val_ = 0;
        v131.__cat_ = std::system_category();
        size = SHIBYTE(v134[1].__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) != 0)
        {
          data = v134[1].__r_.__value_.__l.__data_;
          size = v134[1].__r_.__value_.__l.__size_;
        }

        else
        {
          data = v134 + 1;
        }

        llvm::raw_fd_ostream::raw_fd_ostream(v129, data, size, &v131);
        if (v131.__val_)
        {
          std::error_code::message(&v119, &v131);
          LOWORD(v151) = 260;
          __str.__r_.__value_.__r.__words[0] = &v119;
          mlir::Operation::emitError(a1, &__str, v140);
          if (v140[0])
          {
            mlir::InFlightDiagnostic::report(v140);
          }

          if (v148 == 1)
          {
            if (v147 != &v148)
            {
              free(v147);
            }

            v64 = v145;
            if (v145)
            {
              v65 = v146;
              v66 = v145;
              if (v146 != v145)
              {
                do
                {
                  v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
                }

                while (v65 != v64);
                v66 = v145;
              }

              v146 = v64;
              operator delete(v66);
            }

            v67 = v143;
            if (v143)
            {
              v68 = v144;
              v69 = v143;
              if (v144 != v143)
              {
                do
                {
                  v71 = *--v68;
                  v70 = v71;
                  *v68 = 0;
                  if (v71)
                  {
                    operator delete[](v70);
                  }
                }

                while (v68 != v67);
                v69 = v143;
              }

              v144 = v67;
              operator delete(v69);
            }

            if (v141 != &v142)
            {
              free(v141);
            }
          }

          if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v119.__r_.__value_.__l.__data_);
          }

          v16 = 0;
          goto LABEL_203;
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v72 = &__dst;
        }

        else
        {
          v72 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v73 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v73 = __dst.__r_.__value_.__l.__size_;
        }

        v74 = llvm::raw_fd_ostream::raw_fd_ostream(v128, v72, v73, &v131);
        if (v131.__val_)
        {
          v75 = llvm::errs(v74);
          v76 = v75[4];
          if (v75[3] - v76 > 0x1AuLL)
          {
            v75[4] += 27;
          }

          else
          {
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v77 = &__dst;
          }

          else
          {
            v77 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v78 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v78 = __dst.__r_.__value_.__l.__size_;
          }

          v79 = llvm::raw_ostream::write(v75, v77, v78);
          v80 = v79[4];
          if ((v79[3] - v80) > 8)
          {
            *(v80 + 8) = 32;
            v81 = v79;
            v79[4] += 9;
          }

          else
          {
          }

          std::error_code::message(&__str, &v131);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v82 = &__str;
          }

          else
          {
            v82 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v83 = __str.__r_.__value_.__l.__size_;
          }

          v84 = llvm::raw_ostream::write(v81, v82, v83);
          v85 = v84[4];
          if (v84[3] == v85)
          {
            llvm::raw_ostream::write(v84, "\n", 1uLL);
            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_155;
            }
          }

          else
          {
            *v85 = 10;
            ++v84[4];
            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_155:
              v16 = 0;
              llvm::raw_fd_ostream::~raw_fd_ostream(v128);
LABEL_203:
              llvm::raw_fd_ostream::~raw_fd_ostream(v129);
              v105 = v133;
              if (v133 && !atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v105->__on_zero_shared)(v105);
                std::__shared_weak_count::__release_weak(v105);
              }

              v106 = v135;
              if (v135 && !atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v106->__on_zero_shared)(v106);
                std::__shared_weak_count::__release_weak(v106);
              }

              goto LABEL_209;
            }
          }

          operator delete(__str.__r_.__value_.__l.__data_);
          goto LABEL_155;
        }

        if (SHIBYTE(v134[1].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v118, v134[1].__r_.__value_.__l.__data_, v134[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v118 = v134[1];
        }

        memset(&v119, 0, sizeof(v119));
        LODWORD(v120) = 0;
        v121 = &v123;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        v126 = v129;
        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v127, v118.__r_.__value_.__l.__data_, v118.__r_.__value_.__l.__size_);
          if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v118.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v127 = v118;
        }

        if (SHIBYTE(v134[1].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v117, v134[1].__r_.__value_.__l.__data_, v134[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v117 = v134[1];
        }

        memset(&v112, 0, sizeof(v112));
        v86 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = &__dst;
        }

        else
        {
          v87 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v86 = __dst.__r_.__value_.__l.__size_;
        }

        std::string::append[abi:nn200100]<char const*,0>(&v112.__pn_, v87, (v87 + v86));
        v88 = std::__fs::filesystem::path::__parent_path(&v112);
        if (v88.__size_ <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v88.__size_ >= 0x17)
          {
            if ((v88.__size_ | 7) == 0x17)
            {
              v90 = 25;
            }

            else
            {
              v90 = (v88.__size_ | 7) + 1;
            }

            v89 = operator new(v90);
            __str.__r_.__value_.__r.__words[2] = v90 | 0x8000000000000000;
            __str.__r_.__value_.__r.__words[0] = v89;
            __str.__r_.__value_.__l.__size_ = v88.__size_;
          }

          else
          {
            *(&__str.__r_.__value_.__s + 23) = v88.__size_;
            v89 = &__str;
            if (!v88.__size_)
            {
LABEL_180:
              v89[v88.__size_] = 0;
              v116 = __str;
              if (SHIBYTE(v112.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v112.__pn_.__r_.__value_.__l.__data_);
              }

              __str.__r_.__value_.__r.__words[0] = &__src;
              __str.__r_.__value_.__l.__size_ = &v116;
              __str.__r_.__value_.__r.__words[2] = &v132;
              v150 = &v117;
              if (mlir::anec::writeSingleRegionPlist(a1, &v132, &v119, 0))
              {
                ParentOp = a1;
                do
                {
                  ParentOp = mlir::Block::getParentOp(*(ParentOp + 16));
                }

                while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
                v92 = *(ParentOp + 24);
                if (*(*v92 + 136) != &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
                {
                  Context = mlir::Attribute::getContext((a1 + 24));
                  v92 = mlir::FileLineColLoc::get(Context, "unknown", 7uLL, 0, 0);
                }

                v94 = v134;
                v114 = v132;
                v115 = v133;
                if (v133)
                {
                  atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v96 = &v94[3];
                v95 = v94[3].__r_.__value_.__r.__words[0];
                v97 = LODWORD(v94[3].__r_.__value_.__r.__words[1]);
                v98 = &v114;
                if (v97 >= HIDWORD(v94[3].__r_.__value_.__r.__words[1]))
                {
                  v108 = v92;
                  if (v95 <= &v114 && v95 + 16 * v97 > &v114)
                  {
                    v111 = &v114 - v95;
                    v95 = *v96;
                    v98 = &v111[*v96];
                  }

                  else
                  {
                    v95 = *v96;
                    v98 = &v114;
                  }

                  v92 = v108;
                }

                v99 = LODWORD(v94[3].__r_.__value_.__r.__words[1]);
                v100 = *v98;
                *(v95 + 16 * v99) = *v98;
                if (*(&v100 + 1))
                {
                  atomic_fetch_add_explicit((*(&v100 + 1) + 8), 1uLL, memory_order_relaxed);
                  LODWORD(v99) = v94[3].__r_.__value_.__r.__words[1];
                }

                LODWORD(v94[3].__r_.__value_.__r.__words[1]) = v99 + 1;
                v101 = v115;
                if (v115 && !atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v102 = v92;
                  (v101->__on_zero_shared)(v101);
                  std::__shared_weak_count::__release_weak(v101);
                  v92 = v102;
                }

                if (mlir::anec::ANECIRTop::Write(v134, v128, v124 == 0, v92, a9, a10))
                {
                  v103 = mlir::Attribute::getContext((a1 + 24));
                  v104 = mlir::FileLineColLoc::get(v103, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mlir-mps/src/Dialect/ANEC/Transforms/Passes.cpp", 0x72uLL, 0x286u, 0);
                  v112.__pn_.__r_.__value_.__r.__words[0] = "ANEC IR Write failed";
                  v113 = 259;
                  mlir::emitError(v104, &v112, &__str);
                  mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__str);
                  if (__str.__r_.__value_.__r.__words[0])
                  {
                    mlir::InFlightDiagnostic::report(&__str);
                  }

                  if (v159 != 1)
                  {
                    if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_200;
                    }

LABEL_220:
                    operator delete(v116.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_201:
                      if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_202;
                      }

LABEL_222:
                      operator delete(v127.__r_.__value_.__l.__data_);
LABEL_202:
                      llvm::deallocate_buffer(v123, (8 * v125));
                    }

LABEL_221:
                    operator delete(v117.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_202;
                    }

                    goto LABEL_222;
                  }

                  mlir::Diagnostic::~Diagnostic(&__str.__r_.__value_.__r.__words[1]);
                  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_220;
                  }
                }

                else if (a11)
                {
                  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_220;
                  }
                }

                else
                {
                  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_220;
                  }
                }
              }

              else if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_220;
              }

LABEL_200:
              if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_201;
              }

              goto LABEL_221;
            }
          }

          memmove(v89, v88.__data_, v88.__size_);
          goto LABEL_180;
        }

LABEL_233:
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }
    }

    memmove(p_str, v35, v36);
    goto LABEL_78;
  }

  mlir::emitError(*(a1 + 24), v39, &__str);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&__str, "File ");
  if (*v40)
  {
    LOWORD(v121) = 260;
    v119.__r_.__value_.__r.__words[0] = &__dst;
    v41 = v40;
    mlir::Diagnostic::operator<<(v40 + 8, &v119);
    v40 = v41;
    if (*v41)
    {
      v42 = *(v41 + 24);
      LODWORD(v119.__r_.__value_.__l.__data_) = 3;
      v119.__r_.__value_.__l.__size_ = " exists already.";
      v119.__r_.__value_.__r.__words[2] = 16;
      v43 = *(v41 + 32);
      v44 = &v119;
      if (v43 >= *(v41 + 36))
      {
        if (v42 <= &v119 && v42 + 24 * v43 > &v119)
        {
          v110 = &v119 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v41 + 24, v41 + 40, v43 + 1, 24);
          v40 = v41;
          v42 = *(v41 + 24);
          v44 = &v110[v42];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v41 + 24, v41 + 40, v43 + 1, 24);
          v40 = v41;
          v42 = *(v41 + 24);
          v44 = &v119;
        }
      }

      v45 = v42 + 24 * *(v40 + 32);
      v46 = *&v44->__r_.__value_.__l.__data_;
      *(v45 + 16) = *(&v44->__r_.__value_.__l + 2);
      *v45 = v46;
      ++*(v40 + 32);
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
  if (__str.__r_.__value_.__r.__words[0])
  {
    mlir::InFlightDiagnostic::report(&__str);
  }

  if (v159 == 1)
  {
    if (v158 != &v159)
    {
      free(v158);
    }

    v47 = __p;
    if (__p)
    {
      v48 = v157;
      v49 = __p;
      if (v157 != __p)
      {
        do
        {
          v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
        }

        while (v48 != v47);
        v49 = __p;
      }

      v157 = v47;
      operator delete(v49);
    }

    v50 = v154;
    if (v154)
    {
      v51 = v155;
      v52 = v154;
      if (v155 != v154)
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
        v52 = v154;
      }

      v155 = v50;
      operator delete(v52);
    }

    if (v150 != v153)
    {
      free(v150);
    }
  }

LABEL_209:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v16;
}

std::string *mlir::anec::ANECIRTop::Create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string **a3@<X8>)
{
  v6 = operator new(0xA8uLL);
  v7 = v6;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a1, *(a1 + 8));
  }

  else
  {
    *&v6->__r_.__value_.__l.__data_ = *a1;
    v6->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  mlir::anec::ANECIRTop::deriveConvertedWeightsFileName(a1, &v7[1]);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7 + 2, *a2, *(a2 + 8));
  }

  else
  {
    *&v7[2].__r_.__value_.__l.__data_ = *a2;
    v7[2].__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v7[3].__r_.__value_.__r.__words[0] = &v7[3].__r_.__value_.__r.__words[2];
  v7[3].__r_.__value_.__l.__size_ = 0x100000000;
  v7[4].__r_.__value_.__l.__size_ = &v7[5];
  v7[4].__r_.__value_.__r.__words[2] = 0x300000000;
  *a3 = v7;
  result = operator new(0x20uLL);
  result->__r_.__value_.__r.__words[0] = &unk_1F5B35640;
  result->__r_.__value_.__l.__size_ = 0;
  result->__r_.__value_.__r.__words[2] = 0;
  result[1].__r_.__value_.__r.__words[0] = v7;
  a3[1] = result;
  return result;
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRTop *,std::shared_ptr<mlir::anec::ANECIRTop>::__shared_ptr_default_delete<mlir::anec::ANECIRTop,mlir::anec::ANECIRTop>,std::allocator<mlir::anec::ANECIRTop>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRTop *,std::shared_ptr<mlir::anec::ANECIRTop>::__shared_ptr_default_delete<mlir::anec::ANECIRTop,mlir::anec::ANECIRTop>,std::allocator<mlir::anec::ANECIRTop>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    mlir::anec::ANECIRTop::~ANECIRTop(v1);

    operator delete(v2);
  }
}

void mlir::anec::ANECIRTop::~ANECIRTop(mlir::anec::ANECIRTop *this)
{
  v2 = *(this + 13);
  v3 = *(this + 28);
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
    v2 = *(this + 13);
  }

  if (v2 != this + 120)
  {
    free(v2);
  }

  v7 = *(this + 9);
  v8 = *(this + 20);
  if (v8)
  {
    v9 = v7 - 8;
    v10 = 16 * v8;
    do
    {
      v11 = *&v9[v10];
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v10 -= 16;
    }

    while (v10);
    v7 = *(this + 9);
  }

  if (v7 != this + 88)
  {
    free(v7);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_21:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_25:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_25;
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::anec::anonymous namespace::writePlist(mlir::Operation *,llvm::StringRef,llvm::StringRef,llvm::StringRef,BOOL,llvm::StringRef,BOOL)::$_0>(const void ***a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v37 = a2;
    memset(&__p, 0, sizeof(__p));
    mlir::pdl::OperationOp::getOpName(&v37, &__dst);
    if (__dst.__r_.__value_.__s.__data_[16] != 1)
    {
      goto LABEL_18;
    }

    mlir::pdl::OperationOp::getOpName(&v37, &__len);
    v4 = __len.__r_.__value_.__r.__words[0];
    if (!__len.__r_.__value_.__r.__words[0])
    {
      memset(&__dst, 0, sizeof(__dst));
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    size = __len.__r_.__value_.__l.__size_;
    if (__len.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_98;
    }

    if (__len.__r_.__value_.__l.__size_ >= 0x17)
    {
      if ((__len.__r_.__value_.__l.__size_ | 7) == 0x17)
      {
        v7 = 25;
      }

      else
      {
        v7 = (__len.__r_.__value_.__l.__size_ | 7) + 1;
      }

      p_dst = operator new(v7);
      __dst.__r_.__value_.__l.__size_ = size;
      __dst.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = __len.__r_.__value_.__s.__data_[8];
      p_dst = &__dst;
      if (!__len.__r_.__value_.__l.__size_)
      {
LABEL_15:
        p_dst->__r_.__value_.__s.__data_[size] = 0;
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_16:
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

LABEL_17:
        __p.__pn_ = __dst;
LABEL_18:
        Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v37);
        if (!Name)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          memset(&v35, 0, sizeof(v35));
          goto LABEL_30;
        }

        v10 = v9;
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_98;
        }

        v11 = Name;
        if (v9 >= 0x17)
        {
          if ((v9 | 7) == 0x17)
          {
            v16 = 25;
          }

          else
          {
            v16 = (v9 | 7) + 1;
          }

          v12 = operator new(v16);
          v35.__pn_.__r_.__value_.__l.__size_ = v10;
          v35.__pn_.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
          v35.__pn_.__r_.__value_.__r.__words[0] = v12;
        }

        else
        {
          *(&v35.__pn_.__r_.__value_.__s + 23) = v9;
          v12 = &v35;
          if (!v9)
          {
            goto LABEL_29;
          }
        }

        memmove(v12, v11, v10);
LABEL_29:
        *(v12 + v10) = 0;
        v15 = HIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]);
        v13 = v35.__pn_.__r_.__value_.__l.__size_;
        v14 = v35.__pn_.__r_.__value_.__r.__words[0];
LABEL_30:
        memset(&v34, 0, sizeof(v34));
        if ((v15 & 0x80u) == 0)
        {
          v17 = &v35;
        }

        else
        {
          v17 = v14;
        }

        if ((v15 & 0x80u) == 0)
        {
          v13 = v15;
        }

        std::string::append[abi:nn200100]<char const*,0>(&v34.__pn_, &v17->__pn_, (&v17->__pn_ + v13));
        if (std::__fs::filesystem::path::__root_directory(&v34).__size_)
        {
LABEL_52:
          v23 = a1[1];
          std::__fs::filesystem::__weakly_canonical(&__dst, &v34, 0);
          std::__fs::filesystem::__weakly_canonical(&__len, v23, 0);
          std::__fs::filesystem::path::lexically_relative(&v33, &__dst, &__len);
          if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__len.__r_.__value_.__l.__data_);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_54;
            }
          }

          else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_54:
          v24 = *a1[2];
          if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, v34.__pn_.__r_.__value_.__l.__data_, v34.__pn_.__r_.__value_.__l.__size_);
            if ((SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            __dst = v34.__pn_;
            if ((SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_56:
              __len = v33.__pn_;
              goto LABEL_61;
            }
          }

          std::string::__init_copy_ctor_external(&__len, v33.__pn_.__r_.__value_.__l.__data_, v33.__pn_.__r_.__value_.__l.__size_);
LABEL_61:
          mlir::anec::ANECIRNetwork::addWeightFileInfo(v24, &__dst, &__len, &__p);
          if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__len.__r_.__value_.__l.__data_);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_63:
              if ((SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_64;
              }

              goto LABEL_94;
            }
          }

          else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          operator delete(__dst.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_64:
            if ((SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_65;
            }

            goto LABEL_95;
          }

LABEL_94:
          operator delete(v33.__pn_.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_65:
            if ((SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_96;
          }

LABEL_95:
          operator delete(v34.__pn_.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_66:
            if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_67;
            }

LABEL_97:
            operator delete(__p.__pn_.__r_.__value_.__l.__data_);
            goto LABEL_67;
          }

LABEL_96:
          operator delete(v35.__pn_.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_97;
        }

        v18 = *a1;
        v19 = **a1;
        if (!v19)
        {
          memset(&v33, 0, sizeof(v33));
LABEL_48:
          __len = v33.__pn_;
          std::__fs::filesystem::operator/[abi:nn200100](&v34, &__len, &__dst);
          if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__pn_.__r_.__value_.__l.__data_);
          }

          v34.__pn_ = __dst;
          *(&__dst.__r_.__value_.__s + 23) = 0;
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__len.__r_.__value_.__l.__data_);
          }

          goto LABEL_52;
        }

        v20 = v18[1];
        if (v20 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v20 >= 0x17)
          {
            if ((v20 | 7) == 0x17)
            {
              v22 = 25;
            }

            else
            {
              v22 = (v20 | 7) + 1;
            }

            v21 = operator new(v22);
            v33.__pn_.__r_.__value_.__l.__size_ = v20;
            v33.__pn_.__r_.__value_.__r.__words[2] = v22 | 0x8000000000000000;
            v33.__pn_.__r_.__value_.__r.__words[0] = v21;
          }

          else
          {
            *(&v33.__pn_.__r_.__value_.__s + 23) = v18[1];
            v21 = &v33;
            if (!v20)
            {
              goto LABEL_47;
            }
          }

          memmove(v21, v19, v20);
LABEL_47:
          *(v21 + v20) = 0;
          goto LABEL_48;
        }

LABEL_98:
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }
    }

    memmove(p_dst, v4, size);
    goto LABEL_15;
  }

LABEL_67:
  {
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return;
  }

  v25 = a1[3];
  memset(&v35, 0, sizeof(v35));
  v26 = *(v25 + 23);
  if (v26 >= 0)
  {
    v27 = v25;
  }

  else
  {
    v27 = *v25;
  }

  if (v26 >= 0)
  {
    v28 = *(v25 + 23);
  }

  else
  {
    v28 = v25[1];
  }

  std::string::append[abi:nn200100]<char const*,0>(&v35.__pn_, v27, (v28 + v27));
  v29 = a1[1];
  std::__fs::filesystem::__weakly_canonical(&__dst, &v35, 0);
  std::__fs::filesystem::__weakly_canonical(&__len, v29, 0);
  std::__fs::filesystem::path::lexically_relative(&__p, &__dst, &__len);
  if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_82:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

LABEL_83:
    operator delete(v35.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_79;
  }

  operator delete(__len.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_82;
  }

LABEL_78:
  if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_83;
  }

LABEL_79:
  v30 = a1[2];
  v31 = a1[3];
  v32 = *v30;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p.__pn_;
  }

  *(&__len.__r_.__value_.__s + 23) = 0;
  __len.__r_.__value_.__s.__data_[0] = 0;
  mlir::anec::ANECIRNetwork::addWeightFileInfo(v32, v31, &__dst, &__len);
  if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__len.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_87:
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_91:
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_87;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_91;
  }
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::anec::anonymous namespace::writePlist(mlir::Operation *,llvm::StringRef,llvm::StringRef,llvm::StringRef,BOOL,llvm::StringRef,BOOL)::$_1>(int a1, mlir::Operation *this)
{
  if (!*(this + 47) || (v9.var0 = "name", v9.var1 = 4, result = mlir::Operation::getInherentAttr(this, v9), (v4 & 1) == 0))
  {
    v10.var0 = "name";
    v10.var1 = 4;
    result = mlir::DictionaryAttr::contains((this + 56), v10);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    Context = mlir::Attribute::getContext((this + 24));
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(Context, v7);
    return mlir::Operation::removeAttr(this, v6);
  }

  return result;
}

uint64_t mlir::anec::WriteA13PlistPassBase<mlir::anec::anonymous namespace::WriteA13PlistPass>::WriteA13PlistPassBase(uint64_t a1)
{
  *(a1 + 16) = "anec.A13";
  *(a1 + 24) = 8;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5B356E8;
  *&v6 = "The directory of the input files.";
  *(&v6 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 344, (a1 + 152), "source-directory", 16, &v6);
  *(a1 + 344) = &unk_1F5AFC930;
  *(a1 + 576) = &unk_1F5AFC9B0;
  *&v6 = "The directory in which to place generated plists.";
  *(&v6 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 592, (a1 + 152), "plist-directory", 15, &v6);
  *(a1 + 592) = &unk_1F5AFC930;
  *(a1 + 824) = &unk_1F5AFC9B0;
  *&v6 = "The filename for the plist to be produced.";
  *(&v6 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 840, (a1 + 152), "plist-filename", 14, &v6);
  *(a1 + 840) = &unk_1F5AFC930;
  *(a1 + 1072) = &unk_1F5AFC9B0;
  *&v6 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v6 + 1) = 64;
  v4 = 0;
  v5 = &v4;
  v3 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(a1 + 1088, (a1 + 152), "force-overwrite", 15, &v6, &v5, &v3);
  *(a1 + 1088) = &unk_1F5AFB130;
  *(a1 + 1280) = &unk_1F5AFB1B0;
  *&v6 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v6 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 1296, (a1 + 152), "bundle-name", 11, &v6);
  *(a1 + 1296) = &unk_1F5AFC930;
  *(a1 + 1528) = &unk_1F5AFC9B0;
  *(&v6 + 1) = 158;
  LOBYTE(v3) = 1;
  v5 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1544, (a1 + 152), "keep-unit-name-attrs", 20, &v6, &v5);
  *(a1 + 1544) = &unk_1F5AFB130;
  *(a1 + 1736) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::anec::anonymous namespace::WriteA13PlistPass::~WriteA13PlistPass(mlir::anec::_anonymous_namespace_::WriteA13PlistPass *this)
{
  *this = &unk_1F5B356E8;
  *(this + 193) = &unk_1F5B3E720;
  v2 = this + 1704;
  v3 = *(this + 216);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 193) = &unk_1F5B3E1D8;
  v4 = *(this + 205);
  if (v4 != *(this + 204))
  {
    free(v4);
  }

  v5 = *(this + 201);
  if (v5 != this + 1624)
  {
    free(v5);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1296);
  *(this + 136) = &unk_1F5B3E720;
  v6 = *(this + 159);
  if (v6 == (this + 1248))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 136) = &unk_1F5B3E1D8;
  v7 = *(this + 148);
  if (v7 != *(this + 147))
  {
    free(v7);
  }

  v8 = *(this + 144);
  if (v8 != this + 1168)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 840);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{

  operator delete(v1);
}

BOOL mlir::anec::anonymous namespace::WriteA13PlistPass::runOnOperation(mlir::anec::_anonymous_namespace_::WriteA13PlistPass *this)
{
  v2 = *(this + 495);
  if (v2 >= 0)
  {
    v3.var0.var0 = (this + 472);
  }

  else
  {
    v3.var0.var0 = *(this + 59);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 495);
  }

  else
  {
    v4 = *(this + 60);
  }

  v5 = *(this + 743);
  if (v5 >= 0)
  {
    v6 = this + 720;
  }

  else
  {
    v6 = *(this + 90);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 743);
  }

  else
  {
    v7 = *(this + 91);
  }

  v8 = *(this + 991);
  if (v8 >= 0)
  {
    v9 = this + 968;
  }

  else
  {
    v9 = *(this + 121);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 991);
  }

  else
  {
    v10 = *(this + 122);
  }

  v11 = this + 1424;
  v12 = *(this + 1447);
  if (v12 < 0)
  {
    v11 = *(this + 178);
  }

  if (v12 < 0)
  {
    v12 = *(this + 179);
  }

  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

BOOL mlir::OperationPass<mlir::anec::A13>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t mlir::anec::WriteA13PlistPassBase<mlir::anec::anonymous namespace::WriteA13PlistPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x6D8uLL);
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
  *v4 = &unk_1F5B356E8;
  *&v10 = "The directory of the input files.";
  *(&v10 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "source-directory", 16, &v10);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v10 = "The directory in which to place generated plists.";
  *(&v10 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 37), v4 + 152, "plist-directory", 15, &v10);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *&v10 = "The filename for the plist to be produced.";
  *(&v10 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 840, v4 + 152, "plist-filename", 14, &v10);
  *(v4 + 105) = &unk_1F5AFC930;
  *(v4 + 134) = &unk_1F5AFC9B0;
  *&v10 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v10 + 1) = 64;
  v8 = 0;
  v9 = &v8;
  v7 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>((v4 + 68), v4 + 152, "force-overwrite", 15, &v10, &v9, &v7);
  *(v4 + 136) = &unk_1F5AFB130;
  *(v4 + 160) = &unk_1F5AFB1B0;
  *&v10 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v10 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 81), v4 + 152, "bundle-name", 11, &v10);
  *(v4 + 162) = &unk_1F5AFC930;
  *(v4 + 191) = &unk_1F5AFC9B0;
  *(&v10 + 1) = 158;
  LOBYTE(v7) = 1;
  v9 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1544, v4 + 19, "keep-unit-name-attrs", 20, &v10, &v9);
  *(v4 + 193) = &unk_1F5AFB130;
  *(v4 + 217) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B35678;
  *a2 = v4;
  return result;
}

uint64_t mlir::anec::WriteA14PlistPassBase<mlir::anec::anonymous namespace::WriteA14PlistPass>::WriteA14PlistPassBase(uint64_t a1)
{
  *(a1 + 16) = "anec.A14";
  *(a1 + 24) = 8;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5B357C8;
  *&v6 = "The directory of the input files.";
  *(&v6 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 344, (a1 + 152), "source-directory", 16, &v6);
  *(a1 + 344) = &unk_1F5AFC930;
  *(a1 + 576) = &unk_1F5AFC9B0;
  *&v6 = "The directory in which to place generated plists.";
  *(&v6 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 592, (a1 + 152), "plist-directory", 15, &v6);
  *(a1 + 592) = &unk_1F5AFC930;
  *(a1 + 824) = &unk_1F5AFC9B0;
  *&v6 = "The filename for the plist to be produced.";
  *(&v6 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 840, (a1 + 152), "plist-filename", 14, &v6);
  *(a1 + 840) = &unk_1F5AFC930;
  *(a1 + 1072) = &unk_1F5AFC9B0;
  *&v6 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v6 + 1) = 64;
  v4 = 0;
  v5 = &v4;
  v3 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(a1 + 1088, (a1 + 152), "force-overwrite", 15, &v6, &v5, &v3);
  *(a1 + 1088) = &unk_1F5AFB130;
  *(a1 + 1280) = &unk_1F5AFB1B0;
  *&v6 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v6 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 1296, (a1 + 152), "bundle-name", 11, &v6);
  *(a1 + 1296) = &unk_1F5AFC930;
  *(a1 + 1528) = &unk_1F5AFC9B0;
  *(&v6 + 1) = 158;
  LOBYTE(v3) = 1;
  v5 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1544, (a1 + 152), "keep-unit-name-attrs", 20, &v6, &v5);
  *(a1 + 1544) = &unk_1F5AFB130;
  *(a1 + 1736) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::anec::anonymous namespace::WriteA14PlistPass::~WriteA14PlistPass(mlir::anec::_anonymous_namespace_::WriteA14PlistPass *this)
{
  *this = &unk_1F5B357C8;
  *(this + 193) = &unk_1F5B3E720;
  v2 = this + 1704;
  v3 = *(this + 216);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 193) = &unk_1F5B3E1D8;
  v4 = *(this + 205);
  if (v4 != *(this + 204))
  {
    free(v4);
  }

  v5 = *(this + 201);
  if (v5 != this + 1624)
  {
    free(v5);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1296);
  *(this + 136) = &unk_1F5B3E720;
  v6 = *(this + 159);
  if (v6 == (this + 1248))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 136) = &unk_1F5B3E1D8;
  v7 = *(this + 148);
  if (v7 != *(this + 147))
  {
    free(v7);
  }

  v8 = *(this + 144);
  if (v8 != this + 1168)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 840);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{

  operator delete(v1);
}

BOOL mlir::anec::anonymous namespace::WriteA14PlistPass::runOnOperation(mlir::anec::_anonymous_namespace_::WriteA14PlistPass *this)
{
  v2 = *(this + 495);
  if (v2 >= 0)
  {
    v3.var0.var0 = (this + 472);
  }

  else
  {
    v3.var0.var0 = *(this + 59);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 495);
  }

  else
  {
    v4 = *(this + 60);
  }

  v5 = *(this + 743);
  if (v5 >= 0)
  {
    v6 = this + 720;
  }

  else
  {
    v6 = *(this + 90);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 743);
  }

  else
  {
    v7 = *(this + 91);
  }

  v8 = *(this + 991);
  if (v8 >= 0)
  {
    v9 = this + 968;
  }

  else
  {
    v9 = *(this + 121);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 991);
  }

  else
  {
    v10 = *(this + 122);
  }

  v11 = this + 1424;
  v12 = *(this + 1447);
  if (v12 < 0)
  {
    v11 = *(this + 178);
  }

  if (v12 < 0)
  {
    v12 = *(this + 179);
  }

  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

BOOL mlir::OperationPass<mlir::anec::A14>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t mlir::anec::WriteA14PlistPassBase<mlir::anec::anonymous namespace::WriteA14PlistPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x6D8uLL);
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
  *v4 = &unk_1F5B357C8;
  *&v10 = "The directory of the input files.";
  *(&v10 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "source-directory", 16, &v10);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v10 = "The directory in which to place generated plists.";
  *(&v10 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 37), v4 + 152, "plist-directory", 15, &v10);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *&v10 = "The filename for the plist to be produced.";
  *(&v10 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 840, v4 + 152, "plist-filename", 14, &v10);
  *(v4 + 105) = &unk_1F5AFC930;
  *(v4 + 134) = &unk_1F5AFC9B0;
  *&v10 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v10 + 1) = 64;
  v8 = 0;
  v9 = &v8;
  v7 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>((v4 + 68), v4 + 152, "force-overwrite", 15, &v10, &v9, &v7);
  *(v4 + 136) = &unk_1F5AFB130;
  *(v4 + 160) = &unk_1F5AFB1B0;
  *&v10 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v10 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 81), v4 + 152, "bundle-name", 11, &v10);
  *(v4 + 162) = &unk_1F5AFC930;
  *(v4 + 191) = &unk_1F5AFC9B0;
  *(&v10 + 1) = 158;
  LOBYTE(v7) = 1;
  v9 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1544, v4 + 19, "keep-unit-name-attrs", 20, &v10, &v9);
  *(v4 + 193) = &unk_1F5AFB130;
  *(v4 + 217) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B35758;
  *a2 = v4;
  return result;
}

uint64_t mlir::anec::WriteA15PlistPassBase<mlir::anec::anonymous namespace::WriteA15PlistPass>::WriteA15PlistPassBase(uint64_t a1)
{
  *(a1 + 16) = "anec.A15";
  *(a1 + 24) = 8;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5B358A8;
  *&v6 = "The directory of the input files.";
  *(&v6 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 344, (a1 + 152), "source-directory", 16, &v6);
  *(a1 + 344) = &unk_1F5AFC930;
  *(a1 + 576) = &unk_1F5AFC9B0;
  *&v6 = "The directory in which to place generated plists.";
  *(&v6 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 592, (a1 + 152), "plist-directory", 15, &v6);
  *(a1 + 592) = &unk_1F5AFC930;
  *(a1 + 824) = &unk_1F5AFC9B0;
  *&v6 = "The filename for the plist to be produced.";
  *(&v6 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 840, (a1 + 152), "plist-filename", 14, &v6);
  *(a1 + 840) = &unk_1F5AFC930;
  *(a1 + 1072) = &unk_1F5AFC9B0;
  *&v6 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v6 + 1) = 64;
  v4 = 0;
  v5 = &v4;
  v3 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(a1 + 1088, (a1 + 152), "force-overwrite", 15, &v6, &v5, &v3);
  *(a1 + 1088) = &unk_1F5AFB130;
  *(a1 + 1280) = &unk_1F5AFB1B0;
  *&v6 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v6 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 1296, (a1 + 152), "bundle-name", 11, &v6);
  *(a1 + 1296) = &unk_1F5AFC930;
  *(a1 + 1528) = &unk_1F5AFC9B0;
  *(&v6 + 1) = 158;
  LOBYTE(v3) = 1;
  v5 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1544, (a1 + 152), "keep-unit-name-attrs", 20, &v6, &v5);
  *(a1 + 1544) = &unk_1F5AFB130;
  *(a1 + 1736) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::anec::anonymous namespace::WriteA15PlistPass::~WriteA15PlistPass(mlir::anec::_anonymous_namespace_::WriteA15PlistPass *this)
{
  *this = &unk_1F5B358A8;
  *(this + 193) = &unk_1F5B3E720;
  v2 = this + 1704;
  v3 = *(this + 216);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 193) = &unk_1F5B3E1D8;
  v4 = *(this + 205);
  if (v4 != *(this + 204))
  {
    free(v4);
  }

  v5 = *(this + 201);
  if (v5 != this + 1624)
  {
    free(v5);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1296);
  *(this + 136) = &unk_1F5B3E720;
  v6 = *(this + 159);
  if (v6 == (this + 1248))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 136) = &unk_1F5B3E1D8;
  v7 = *(this + 148);
  if (v7 != *(this + 147))
  {
    free(v7);
  }

  v8 = *(this + 144);
  if (v8 != this + 1168)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 840);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{

  operator delete(v1);
}

BOOL mlir::anec::anonymous namespace::WriteA15PlistPass::runOnOperation(mlir::anec::_anonymous_namespace_::WriteA15PlistPass *this)
{
  v2 = *(this + 495);
  if (v2 >= 0)
  {
    v3.var0.var0 = (this + 472);
  }

  else
  {
    v3.var0.var0 = *(this + 59);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 495);
  }

  else
  {
    v4 = *(this + 60);
  }

  v5 = *(this + 743);
  if (v5 >= 0)
  {
    v6 = this + 720;
  }

  else
  {
    v6 = *(this + 90);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 743);
  }

  else
  {
    v7 = *(this + 91);
  }

  v8 = *(this + 991);
  if (v8 >= 0)
  {
    v9 = this + 968;
  }

  else
  {
    v9 = *(this + 121);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 991);
  }

  else
  {
    v10 = *(this + 122);
  }

  v11 = this + 1424;
  v12 = *(this + 1447);
  if (v12 < 0)
  {
    v11 = *(this + 178);
  }

  if (v12 < 0)
  {
    v12 = *(this + 179);
  }

  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

BOOL mlir::OperationPass<mlir::anec::A15>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t mlir::anec::WriteA15PlistPassBase<mlir::anec::anonymous namespace::WriteA15PlistPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x6D8uLL);
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
  *v4 = &unk_1F5B358A8;
  *&v10 = "The directory of the input files.";
  *(&v10 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "source-directory", 16, &v10);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v10 = "The directory in which to place generated plists.";
  *(&v10 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 37), v4 + 152, "plist-directory", 15, &v10);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *&v10 = "The filename for the plist to be produced.";
  *(&v10 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 840, v4 + 152, "plist-filename", 14, &v10);
  *(v4 + 105) = &unk_1F5AFC930;
  *(v4 + 134) = &unk_1F5AFC9B0;
  *&v10 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v10 + 1) = 64;
  v8 = 0;
  v9 = &v8;
  v7 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>((v4 + 68), v4 + 152, "force-overwrite", 15, &v10, &v9, &v7);
  *(v4 + 136) = &unk_1F5AFB130;
  *(v4 + 160) = &unk_1F5AFB1B0;
  *&v10 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v10 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 81), v4 + 152, "bundle-name", 11, &v10);
  *(v4 + 162) = &unk_1F5AFC930;
  *(v4 + 191) = &unk_1F5AFC9B0;
  *(&v10 + 1) = 158;
  LOBYTE(v7) = 1;
  v9 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1544, v4 + 19, "keep-unit-name-attrs", 20, &v10, &v9);
  *(v4 + 193) = &unk_1F5AFB130;
  *(v4 + 217) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B35838;
  *a2 = v4;
  return result;
}

uint64_t mlir::anec::WriteA16PlistPassBase<mlir::anec::anonymous namespace::WriteA16PlistPass>::WriteA16PlistPassBase(uint64_t a1)
{
  *(a1 + 16) = "anec.A16";
  *(a1 + 24) = 8;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5B35988;
  *&v6 = "The directory of the input files.";
  *(&v6 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 344, (a1 + 152), "source-directory", 16, &v6);
  *(a1 + 344) = &unk_1F5AFC930;
  *(a1 + 576) = &unk_1F5AFC9B0;
  *&v6 = "The directory in which to place generated plists.";
  *(&v6 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 592, (a1 + 152), "plist-directory", 15, &v6);
  *(a1 + 592) = &unk_1F5AFC930;
  *(a1 + 824) = &unk_1F5AFC9B0;
  *&v6 = "The filename for the plist to be produced.";
  *(&v6 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 840, (a1 + 152), "plist-filename", 14, &v6);
  *(a1 + 840) = &unk_1F5AFC930;
  *(a1 + 1072) = &unk_1F5AFC9B0;
  *&v6 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v6 + 1) = 64;
  v4 = 0;
  v5 = &v4;
  v3 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(a1 + 1088, (a1 + 152), "force-overwrite", 15, &v6, &v5, &v3);
  *(a1 + 1088) = &unk_1F5AFB130;
  *(a1 + 1280) = &unk_1F5AFB1B0;
  *&v6 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v6 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 1296, (a1 + 152), "bundle-name", 11, &v6);
  *(a1 + 1296) = &unk_1F5AFC930;
  *(a1 + 1528) = &unk_1F5AFC9B0;
  *(&v6 + 1) = 158;
  LOBYTE(v3) = 1;
  v5 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1544, (a1 + 152), "keep-unit-name-attrs", 20, &v6, &v5);
  *(a1 + 1544) = &unk_1F5AFB130;
  *(a1 + 1736) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::anec::anonymous namespace::WriteA16PlistPass::~WriteA16PlistPass(mlir::anec::_anonymous_namespace_::WriteA16PlistPass *this)
{
  *this = &unk_1F5B35988;
  *(this + 193) = &unk_1F5B3E720;
  v2 = this + 1704;
  v3 = *(this + 216);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 193) = &unk_1F5B3E1D8;
  v4 = *(this + 205);
  if (v4 != *(this + 204))
  {
    free(v4);
  }

  v5 = *(this + 201);
  if (v5 != this + 1624)
  {
    free(v5);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1296);
  *(this + 136) = &unk_1F5B3E720;
  v6 = *(this + 159);
  if (v6 == (this + 1248))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 136) = &unk_1F5B3E1D8;
  v7 = *(this + 148);
  if (v7 != *(this + 147))
  {
    free(v7);
  }

  v8 = *(this + 144);
  if (v8 != this + 1168)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 840);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{

  operator delete(v1);
}

BOOL mlir::anec::anonymous namespace::WriteA16PlistPass::runOnOperation(mlir::anec::_anonymous_namespace_::WriteA16PlistPass *this)
{
  v2 = *(this + 495);
  if (v2 >= 0)
  {
    v3.var0.var0 = (this + 472);
  }

  else
  {
    v3.var0.var0 = *(this + 59);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 495);
  }

  else
  {
    v4 = *(this + 60);
  }

  v5 = *(this + 743);
  if (v5 >= 0)
  {
    v6 = this + 720;
  }

  else
  {
    v6 = *(this + 90);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 743);
  }

  else
  {
    v7 = *(this + 91);
  }

  v8 = *(this + 991);
  if (v8 >= 0)
  {
    v9 = this + 968;
  }

  else
  {
    v9 = *(this + 121);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 991);
  }

  else
  {
    v10 = *(this + 122);
  }

  v11 = this + 1424;
  v12 = *(this + 1447);
  if (v12 < 0)
  {
    v11 = *(this + 178);
  }

  if (v12 < 0)
  {
    v12 = *(this + 179);
  }

  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

BOOL mlir::OperationPass<mlir::anec::A16>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t mlir::anec::WriteA16PlistPassBase<mlir::anec::anonymous namespace::WriteA16PlistPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x6D8uLL);
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
  *v4 = &unk_1F5B35988;
  *&v10 = "The directory of the input files.";
  *(&v10 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "source-directory", 16, &v10);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v10 = "The directory in which to place generated plists.";
  *(&v10 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 37), v4 + 152, "plist-directory", 15, &v10);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *&v10 = "The filename for the plist to be produced.";
  *(&v10 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 840, v4 + 152, "plist-filename", 14, &v10);
  *(v4 + 105) = &unk_1F5AFC930;
  *(v4 + 134) = &unk_1F5AFC9B0;
  *&v10 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v10 + 1) = 64;
  v8 = 0;
  v9 = &v8;
  v7 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>((v4 + 68), v4 + 152, "force-overwrite", 15, &v10, &v9, &v7);
  *(v4 + 136) = &unk_1F5AFB130;
  *(v4 + 160) = &unk_1F5AFB1B0;
  *&v10 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v10 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 81), v4 + 152, "bundle-name", 11, &v10);
  *(v4 + 162) = &unk_1F5AFC930;
  *(v4 + 191) = &unk_1F5AFC9B0;
  *(&v10 + 1) = 158;
  LOBYTE(v7) = 1;
  v9 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1544, v4 + 19, "keep-unit-name-attrs", 20, &v10, &v9);
  *(v4 + 193) = &unk_1F5AFB130;
  *(v4 + 217) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B35918;
  *a2 = v4;
  return result;
}

uint64_t mlir::anec::WriteA17PlistPassBase<mlir::anec::anonymous namespace::WriteA17PlistPass>::WriteA17PlistPassBase(uint64_t a1)
{
  *(a1 + 16) = "anec.A17";
  *(a1 + 24) = 8;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5B35A68;
  *&v6 = "The directory of the input files.";
  *(&v6 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 344, (a1 + 152), "source-directory", 16, &v6);
  *(a1 + 344) = &unk_1F5AFC930;
  *(a1 + 576) = &unk_1F5AFC9B0;
  *&v6 = "The directory in which to place generated plists.";
  *(&v6 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 592, (a1 + 152), "plist-directory", 15, &v6);
  *(a1 + 592) = &unk_1F5AFC930;
  *(a1 + 824) = &unk_1F5AFC9B0;
  *&v6 = "The filename for the plist to be produced.";
  *(&v6 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 840, (a1 + 152), "plist-filename", 14, &v6);
  *(a1 + 840) = &unk_1F5AFC930;
  *(a1 + 1072) = &unk_1F5AFC9B0;
  *&v6 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v6 + 1) = 64;
  v4 = 0;
  v5 = &v4;
  v3 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(a1 + 1088, (a1 + 152), "force-overwrite", 15, &v6, &v5, &v3);
  *(a1 + 1088) = &unk_1F5AFB130;
  *(a1 + 1280) = &unk_1F5AFB1B0;
  *&v6 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v6 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 1296, (a1 + 152), "bundle-name", 11, &v6);
  *(a1 + 1296) = &unk_1F5AFC930;
  *(a1 + 1528) = &unk_1F5AFC9B0;
  *(&v6 + 1) = 158;
  LOBYTE(v3) = 1;
  v5 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1544, (a1 + 152), "keep-unit-name-attrs", 20, &v6, &v5);
  *(a1 + 1544) = &unk_1F5AFB130;
  *(a1 + 1736) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::anec::anonymous namespace::WriteA17PlistPass::~WriteA17PlistPass(mlir::anec::_anonymous_namespace_::WriteA17PlistPass *this)
{
  *this = &unk_1F5B35A68;
  *(this + 193) = &unk_1F5B3E720;
  v2 = this + 1704;
  v3 = *(this + 216);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 193) = &unk_1F5B3E1D8;
  v4 = *(this + 205);
  if (v4 != *(this + 204))
  {
    free(v4);
  }

  v5 = *(this + 201);
  if (v5 != this + 1624)
  {
    free(v5);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1296);
  *(this + 136) = &unk_1F5B3E720;
  v6 = *(this + 159);
  if (v6 == (this + 1248))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 136) = &unk_1F5B3E1D8;
  v7 = *(this + 148);
  if (v7 != *(this + 147))
  {
    free(v7);
  }

  v8 = *(this + 144);
  if (v8 != this + 1168)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 840);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{

  operator delete(v1);
}

BOOL mlir::anec::anonymous namespace::WriteA17PlistPass::runOnOperation(mlir::anec::_anonymous_namespace_::WriteA17PlistPass *this)
{
  v2 = *(this + 495);
  if (v2 >= 0)
  {
    v3.var0.var0 = (this + 472);
  }

  else
  {
    v3.var0.var0 = *(this + 59);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 495);
  }

  else
  {
    v4 = *(this + 60);
  }

  v5 = *(this + 743);
  if (v5 >= 0)
  {
    v6 = this + 720;
  }

  else
  {
    v6 = *(this + 90);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 743);
  }

  else
  {
    v7 = *(this + 91);
  }

  v8 = *(this + 991);
  if (v8 >= 0)
  {
    v9 = this + 968;
  }

  else
  {
    v9 = *(this + 121);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 991);
  }

  else
  {
    v10 = *(this + 122);
  }

  v11 = this + 1424;
  v12 = *(this + 1447);
  if (v12 < 0)
  {
    v11 = *(this + 178);
  }

  if (v12 < 0)
  {
    v12 = *(this + 179);
  }

  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

BOOL mlir::OperationPass<mlir::anec::A17>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t mlir::anec::WriteA17PlistPassBase<mlir::anec::anonymous namespace::WriteA17PlistPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x6D8uLL);
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
  *v4 = &unk_1F5B35A68;
  *&v10 = "The directory of the input files.";
  *(&v10 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "source-directory", 16, &v10);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v10 = "The directory in which to place generated plists.";
  *(&v10 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 37), v4 + 152, "plist-directory", 15, &v10);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *&v10 = "The filename for the plist to be produced.";
  *(&v10 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 840, v4 + 152, "plist-filename", 14, &v10);
  *(v4 + 105) = &unk_1F5AFC930;
  *(v4 + 134) = &unk_1F5AFC9B0;
  *&v10 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v10 + 1) = 64;
  v8 = 0;
  v9 = &v8;
  v7 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>((v4 + 68), v4 + 152, "force-overwrite", 15, &v10, &v9, &v7);
  *(v4 + 136) = &unk_1F5AFB130;
  *(v4 + 160) = &unk_1F5AFB1B0;
  *&v10 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v10 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 81), v4 + 152, "bundle-name", 11, &v10);
  *(v4 + 162) = &unk_1F5AFC930;
  *(v4 + 191) = &unk_1F5AFC9B0;
  *(&v10 + 1) = 158;
  LOBYTE(v7) = 1;
  v9 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1544, v4 + 19, "keep-unit-name-attrs", 20, &v10, &v9);
  *(v4 + 193) = &unk_1F5AFB130;
  *(v4 + 217) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B359F8;
  *a2 = v4;
  return result;
}

uint64_t mlir::anec::WriteA18PlistPassBase<mlir::anec::anonymous namespace::WriteA18PlistPass>::WriteA18PlistPassBase(uint64_t a1)
{
  *(a1 + 16) = "anec.A18";
  *(a1 + 24) = 8;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5B35B48;
  *&v6 = "The directory of the input files.";
  *(&v6 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 344, (a1 + 152), "source-directory", 16, &v6);
  *(a1 + 344) = &unk_1F5AFC930;
  *(a1 + 576) = &unk_1F5AFC9B0;
  *&v6 = "The directory in which to place generated plists.";
  *(&v6 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 592, (a1 + 152), "plist-directory", 15, &v6);
  *(a1 + 592) = &unk_1F5AFC930;
  *(a1 + 824) = &unk_1F5AFC9B0;
  *&v6 = "The filename for the plist to be produced.";
  *(&v6 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 840, (a1 + 152), "plist-filename", 14, &v6);
  *(a1 + 840) = &unk_1F5AFC930;
  *(a1 + 1072) = &unk_1F5AFC9B0;
  *&v6 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v6 + 1) = 64;
  v4 = 0;
  v5 = &v4;
  v3 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(a1 + 1088, (a1 + 152), "force-overwrite", 15, &v6, &v5, &v3);
  *(a1 + 1088) = &unk_1F5AFB130;
  *(a1 + 1280) = &unk_1F5AFB1B0;
  *&v6 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v6 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 1296, (a1 + 152), "bundle-name", 11, &v6);
  *(a1 + 1296) = &unk_1F5AFC930;
  *(a1 + 1528) = &unk_1F5AFC9B0;
  *(&v6 + 1) = 158;
  LOBYTE(v3) = 1;
  v5 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1544, (a1 + 152), "keep-unit-name-attrs", 20, &v6, &v5);
  *(a1 + 1544) = &unk_1F5AFB130;
  *(a1 + 1736) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::anec::anonymous namespace::WriteA18PlistPass::~WriteA18PlistPass(mlir::anec::_anonymous_namespace_::WriteA18PlistPass *this)
{
  *this = &unk_1F5B35B48;
  *(this + 193) = &unk_1F5B3E720;
  v2 = this + 1704;
  v3 = *(this + 216);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 193) = &unk_1F5B3E1D8;
  v4 = *(this + 205);
  if (v4 != *(this + 204))
  {
    free(v4);
  }

  v5 = *(this + 201);
  if (v5 != this + 1624)
  {
    free(v5);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1296);
  *(this + 136) = &unk_1F5B3E720;
  v6 = *(this + 159);
  if (v6 == (this + 1248))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 136) = &unk_1F5B3E1D8;
  v7 = *(this + 148);
  if (v7 != *(this + 147))
  {
    free(v7);
  }

  v8 = *(this + 144);
  if (v8 != this + 1168)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 840);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{

  operator delete(v1);
}

BOOL mlir::anec::anonymous namespace::WriteA18PlistPass::runOnOperation(mlir::anec::_anonymous_namespace_::WriteA18PlistPass *this)
{
  v2 = *(this + 495);
  if (v2 >= 0)
  {
    v3.var0.var0 = (this + 472);
  }

  else
  {
    v3.var0.var0 = *(this + 59);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 495);
  }

  else
  {
    v4 = *(this + 60);
  }

  v5 = *(this + 743);
  if (v5 >= 0)
  {
    v6 = this + 720;
  }

  else
  {
    v6 = *(this + 90);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 743);
  }

  else
  {
    v7 = *(this + 91);
  }

  v8 = *(this + 991);
  if (v8 >= 0)
  {
    v9 = this + 968;
  }

  else
  {
    v9 = *(this + 121);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 991);
  }

  else
  {
    v10 = *(this + 122);
  }

  v11 = this + 1424;
  v12 = *(this + 1447);
  if (v12 < 0)
  {
    v11 = *(this + 178);
  }

  if (v12 < 0)
  {
    v12 = *(this + 179);
  }

  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

BOOL mlir::OperationPass<mlir::anec::A18>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t mlir::anec::WriteA18PlistPassBase<mlir::anec::anonymous namespace::WriteA18PlistPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x6D8uLL);
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
  *v4 = &unk_1F5B35B48;
  *&v10 = "The directory of the input files.";
  *(&v10 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "source-directory", 16, &v10);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v10 = "The directory in which to place generated plists.";
  *(&v10 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 37), v4 + 152, "plist-directory", 15, &v10);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *&v10 = "The filename for the plist to be produced.";
  *(&v10 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 840, v4 + 152, "plist-filename", 14, &v10);
  *(v4 + 105) = &unk_1F5AFC930;
  *(v4 + 134) = &unk_1F5AFC9B0;
  *&v10 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v10 + 1) = 64;
  v8 = 0;
  v9 = &v8;
  v7 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>((v4 + 68), v4 + 152, "force-overwrite", 15, &v10, &v9, &v7);
  *(v4 + 136) = &unk_1F5AFB130;
  *(v4 + 160) = &unk_1F5AFB1B0;
  *&v10 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v10 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 81), v4 + 152, "bundle-name", 11, &v10);
  *(v4 + 162) = &unk_1F5AFC930;
  *(v4 + 191) = &unk_1F5AFC9B0;
  *(&v10 + 1) = 158;
  LOBYTE(v7) = 1;
  v9 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1544, v4 + 19, "keep-unit-name-attrs", 20, &v10, &v9);
  *(v4 + 193) = &unk_1F5AFB130;
  *(v4 + 217) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B35AD8;
  *a2 = v4;
  return result;
}

uint64_t mlir::anec::WriteA11LegacyPlistPassBase<mlir::anec::anonymous namespace::WriteA11LegacyPlistPass>::WriteA11LegacyPlistPassBase(uint64_t a1)
{
  *(a1 + 16) = "anec.A11Legacy";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5B35C28;
  *&v6 = "The directory of the input files.";
  *(&v6 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 344, (a1 + 152), "source-directory", 16, &v6);
  *(a1 + 344) = &unk_1F5AFC930;
  *(a1 + 576) = &unk_1F5AFC9B0;
  *&v6 = "The directory in which to place generated plists.";
  *(&v6 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 592, (a1 + 152), "plist-directory", 15, &v6);
  *(a1 + 592) = &unk_1F5AFC930;
  *(a1 + 824) = &unk_1F5AFC9B0;
  *&v6 = "The filename for the plist to be produced.";
  *(&v6 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 840, (a1 + 152), "plist-filename", 14, &v6);
  *(a1 + 840) = &unk_1F5AFC930;
  *(a1 + 1072) = &unk_1F5AFC9B0;
  *&v6 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v6 + 1) = 64;
  v4 = 0;
  v5 = &v4;
  v3 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(a1 + 1088, (a1 + 152), "force-overwrite", 15, &v6, &v5, &v3);
  *(a1 + 1088) = &unk_1F5AFB130;
  *(a1 + 1280) = &unk_1F5AFB1B0;
  *&v6 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v6 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 1296, (a1 + 152), "bundle-name", 11, &v6);
  *(a1 + 1296) = &unk_1F5AFC930;
  *(a1 + 1528) = &unk_1F5AFC9B0;
  *(&v6 + 1) = 158;
  LOBYTE(v3) = 1;
  v5 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1544, (a1 + 152), "keep-unit-name-attrs", 20, &v6, &v5);
  *(a1 + 1544) = &unk_1F5AFB130;
  *(a1 + 1736) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::anec::anonymous namespace::WriteA11LegacyPlistPass::~WriteA11LegacyPlistPass(mlir::anec::_anonymous_namespace_::WriteA11LegacyPlistPass *this)
{
  *this = &unk_1F5B35C28;
  *(this + 193) = &unk_1F5B3E720;
  v2 = this + 1704;
  v3 = *(this + 216);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 193) = &unk_1F5B3E1D8;
  v4 = *(this + 205);
  if (v4 != *(this + 204))
  {
    free(v4);
  }

  v5 = *(this + 201);
  if (v5 != this + 1624)
  {
    free(v5);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1296);
  *(this + 136) = &unk_1F5B3E720;
  v6 = *(this + 159);
  if (v6 == (this + 1248))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 136) = &unk_1F5B3E1D8;
  v7 = *(this + 148);
  if (v7 != *(this + 147))
  {
    free(v7);
  }

  v8 = *(this + 144);
  if (v8 != this + 1168)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 840);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{

  operator delete(v1);
}

BOOL mlir::anec::anonymous namespace::WriteA11LegacyPlistPass::runOnOperation(mlir::anec::_anonymous_namespace_::WriteA11LegacyPlistPass *this)
{
  v2 = *(this + 495);
  if (v2 >= 0)
  {
    v3.var0.var0 = (this + 472);
  }

  else
  {
    v3.var0.var0 = *(this + 59);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 495);
  }

  else
  {
    v4 = *(this + 60);
  }

  v5 = *(this + 743);
  if (v5 >= 0)
  {
    v6 = this + 720;
  }

  else
  {
    v6 = *(this + 90);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 743);
  }

  else
  {
    v7 = *(this + 91);
  }

  v8 = *(this + 991);
  if (v8 >= 0)
  {
    v9 = this + 968;
  }

  else
  {
    v9 = *(this + 121);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 991);
  }

  else
  {
    v10 = *(this + 122);
  }

  v11 = this + 1424;
  v12 = *(this + 1447);
  if (v12 < 0)
  {
    v11 = *(this + 178);
  }

  if (v12 < 0)
  {
    v12 = *(this + 179);
  }

  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

BOOL mlir::OperationPass<mlir::anec::A11Legacy>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t mlir::anec::WriteA11LegacyPlistPassBase<mlir::anec::anonymous namespace::WriteA11LegacyPlistPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x6D8uLL);
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
  *v4 = &unk_1F5B35C28;
  *&v10 = "The directory of the input files.";
  *(&v10 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "source-directory", 16, &v10);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v10 = "The directory in which to place generated plists.";
  *(&v10 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 37), v4 + 152, "plist-directory", 15, &v10);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *&v10 = "The filename for the plist to be produced.";
  *(&v10 + 1) = 42;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 840, v4 + 152, "plist-filename", 14, &v10);
  *(v4 + 105) = &unk_1F5AFC930;
  *(v4 + 134) = &unk_1F5AFC9B0;
  *&v10 = "Force the pass to overwrite any files that already exist. DANGER";
  *(&v10 + 1) = 64;
  v8 = 0;
  v9 = &v8;
  v7 = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>((v4 + 68), v4 + 152, "force-overwrite", 15, &v10, &v9, &v7);
  *(v4 + 136) = &unk_1F5AFB130;
  *(v4 + 160) = &unk_1F5AFB1B0;
  *&v10 = "Bundle name of the framework or application owning the model being compiled.If not provided, no debug info will be added to the plist.";
  *(&v10 + 1) = 134;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 81), v4 + 152, "bundle-name", 11, &v10);
  *(v4 + 162) = &unk_1F5AFC930;
  *(v4 + 191) = &unk_1F5AFC9B0;
  *(&v10 + 1) = 158;
  LOBYTE(v7) = 1;
  v9 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1544, v4 + 19, "keep-unit-name-attrs", 20, &v10, &v9);
  *(v4 + 193) = &unk_1F5AFB130;
  *(v4 + 217) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B35BB8;
  *a2 = v4;
  return result;
}

char *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v38, a2, v8);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v3 = v9;
      if (v9 >= v11)
      {
        v3 = v9 % v11;
      }
    }

    else
    {
      v3 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v3);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        v16 = v5[23];
        if (v16 >= 0)
        {
          v17 = v5[23];
        }

        else
        {
          v17 = *(v5 + 1);
        }

        if (v16 < 0)
        {
          v5 = *v5;
        }

        do
        {
          v18 = *(v15 + 1);
          if (v18 == v10)
          {
            v19 = v15[39];
            v20 = v19;
            if ((v19 & 0x80u) != 0)
            {
              v19 = *(v15 + 3);
            }

            if (v19 == v17)
            {
              v21 = v20 >= 0 ? v15 + 16 : *(v15 + 2);
              if (!memcmp(v21, v5, v17))
              {
                return v15;
              }
            }
          }

          else
          {
            if (v13 <= 1)
            {
              v18 &= v11 - 1;
            }

            else if (v18 >= v11)
            {
              v18 %= v11;
            }

            if (v18 != v3)
            {
              break;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

  v22 = operator new(0x28uLL);
  v15 = v22;
  *v22 = 0;
  *(v22 + 1) = v10;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v22 + 16), *a3, *(a3 + 8));
  }

  else
  {
    *(v22 + 1) = *a3;
    *(v22 + 4) = *(a3 + 16);
  }

  v23 = (*(a1 + 24) + 1);
  v24 = *(a1 + 32);
  if (!v11 || (v24 * v11) < v23)
  {
    v25 = 1;
    if (v11 >= 3)
    {
      v25 = (v11 & (v11 - 1)) != 0;
    }

    v26 = v25 | (2 * v11);
    v27 = vcvtps_u32_f32(v23 / v24);
    if (v26 <= v27)
    {
      prime = v27;
    }

    else
    {
      prime = v26;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v29 = *(a1 + 8);
    if (prime > *&v29)
    {
      goto LABEL_48;
    }

    if (prime < *&v29)
    {
      v30 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (*&v29 < 3uLL || (v31 = vcnt_s8(v29), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL))
      {
        v33 = prime;
        v30 = std::__next_prime(v30);
        prime = v33;
      }

      else
      {
        v32 = 1 << -__clz(v30 - 1);
        if (v30 >= 2)
        {
          v30 = v32;
        }
      }

      if (prime <= v30)
      {
        prime = v30;
      }

      if (prime < *&v29)
      {
LABEL_48:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }

      else
      {
        v3 = v10;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }
  }

  v34 = *a1;
  v35 = *(*a1 + 8 * v3);
  if (v35)
  {
    *v15 = *v35;
LABEL_72:
    *v35 = v15;
    goto LABEL_73;
  }

  *v15 = *(a1 + 16);
  *(a1 + 16) = v15;
  *(v34 + 8 * v3) = a1 + 16;
  if (*v15)
  {
    v36 = *(*v15 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v36 >= v11)
      {
        v36 %= v11;
      }
    }

    else
    {
      v36 &= v11 - 1;
    }

    v35 = (*a1 + 8 * v36);
    goto LABEL_72;
  }

LABEL_73:
  ++*(a1 + 24);
  return v15;
}

void *llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

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
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
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

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
      v9 = &v5[4 * v8];
      v10 = v5 + 4;
      v11 = v8;
      do
      {
        *(v10 - 4) = -4096;
        *v10 = -4096;
        v10 += 8;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[4 * v4];
    do
    {
      *v9 = -4096;
      v9 += 4;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = *(result + 16) - 1;
        v18 = v17 & ((v16 >> 4) ^ (v16 >> 9));
        v13 = *result + 32 * v18;
        v19 = *v13;
        if (v16 != *v13)
        {
          v20 = 0;
          v21 = 1;
          while (v19 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v19 == -8192;
            }

            if (v22)
            {
              v20 = v13;
            }

            v23 = v18 + v21++;
            v18 = v23 & v17;
            v13 = *result + 32 * v18;
            v19 = *v13;
            if (v16 == *v13)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v13 = v20;
          }
        }

LABEL_14:
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = v16;
        *(v13 + 24) = 0;
        *(v13 + 8) = v3[1];
        v3[1] = 0;
        *(v13 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v14 = *(v13 + 20);
        *(v13 + 20) = *(v3 + 5);
        *(v3 + 5) = v14;
        v15 = *(v13 + 24);
        *(v13 + 24) = *(v3 + 6);
        *(v3 + 6) = v15;
        ++*(result + 8);
        llvm::deallocate_buffer(0, (8 * v15));
      }

      v3 += 4;
    }

    while (v3 != a3);
  }

  return result;
}

double mlir::anec::createRegionCanonicalizationPass@<D0>(void *a1@<X8>)
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
  *v3 = &unk_1F5B35C98;
  *a1 = v3;
  return result;
}

void mlir::anec::anonymous namespace::RegionCanonicalization::~RegionCanonicalization(mlir::anec::_anonymous_namespace_::RegionCanonicalization *this)
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

void mlir::anec::anonymous namespace::RegionCanonicalization::runOnOperation(mlir::anec::_anonymous_namespace_::RegionCanonicalization *this)
{
  v179 = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  __p = 0u;
  v166 = 0u;
  v164 = Context;
  v167 = &v169;
  v168 = 0x600000000;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0x2800000000;
  v176 = 0;
  v177 = 0;
  v178 = 0x2800000000;
  v3 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v161, 1);
  mlir::Pattern::Pattern((v3 + 1), "placement.region_call", 21, v161, Context, 0, 0);
  *v3 = &unk_1F5B35D08;
  if (!v3[9])
  {
    v161 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::MakeInputsUnique]";
    v162 = 101;
    v4 = llvm::StringRef::find(&v161, "DesiredTypeName = ", 0x12uLL, 0);
    if (v162 >= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v162;
    }

    v6 = v161 + v5;
    v7 = v162 - v5;
    if (v162 - v5 >= 0x12)
    {
      v8 = 18;
    }

    else
    {
      v8 = v162 - v5;
    }

    v9 = &v6[v8];
    v10 = v7 - v8;
    if (v10 >= v10 - 1)
    {
      --v10;
    }

    v3[8] = v9;
    v3[9] = v10;
  }

  v11 = *(v3 + 22);
  if (v11 > *(v3 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v3 + 10), (v3 + 12), v11, 16);
    LODWORD(v11) = *(v3 + 22);
  }

  *(v3 + 22) = v11;
  v12 = *(&__p + 1);
  if (*(&__p + 1) >= v166)
  {
    v14 = __p;
    v15 = *(&__p + 1) - __p;
    v16 = (*(&__p + 1) - __p) >> 3;
    v17 = v16 + 1;
    if ((v16 + 1) >> 61)
    {
      goto LABEL_212;
    }

    v18 = v166 - __p;
    if ((v166 - __p) >> 2 > v17)
    {
      v17 = v18 >> 2;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (v19 >> 61)
      {
        goto LABEL_213;
      }

      v20 = operator new(8 * v19);
    }

    else
    {
      v20 = 0;
    }

    v21 = &v20[8 * v16];
    *v21 = v3;
    v13 = v21 + 8;
    memcpy(v20, v14, v15);
    *&__p = v20;
    *(&__p + 1) = v13;
    *&v166 = &v20[8 * v19];
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    **(&__p + 1) = v3;
    v13 = (v12 + 8);
  }

  *(&__p + 1) = v13;
  v22 = v164;
  v23 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v161, 1);
  mlir::Pattern::Pattern((v23 + 1), "placement.region_call", 21, v161, v22, 0, 0);
  *v23 = &unk_1F5B35D68;
  if (!v23[9])
  {
    v161 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::MakeOutputsUnique]";
    v162 = 102;
    v24 = llvm::StringRef::find(&v161, "DesiredTypeName = ", 0x12uLL, 0);
    if (v162 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v162;
    }

    v26 = v161 + v25;
    v27 = v162 - v25;
    if (v162 - v25 >= 0x12)
    {
      v28 = 18;
    }

    else
    {
      v28 = v162 - v25;
    }

    v29 = &v26[v28];
    v30 = v27 - v28;
    if (v30 >= v30 - 1)
    {
      --v30;
    }

    v23[8] = v29;
    v23[9] = v30;
  }

  v31 = *(v23 + 22);
  if (v31 > *(v23 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v23 + 10), (v23 + 12), v31, 16);
    LODWORD(v31) = *(v23 + 22);
  }

  *(v23 + 22) = v31;
  v32 = *(&__p + 1);
  if (*(&__p + 1) >= v166)
  {
    v34 = __p;
    v35 = *(&__p + 1) - __p;
    v36 = (*(&__p + 1) - __p) >> 3;
    v37 = v36 + 1;
    if ((v36 + 1) >> 61)
    {
      goto LABEL_212;
    }

    v38 = v166 - __p;
    if ((v166 - __p) >> 2 > v37)
    {
      v37 = v38 >> 2;
    }

    if (v38 >= 0x7FFFFFFFFFFFFFF8)
    {
      v39 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      if (v39 >> 61)
      {
        goto LABEL_213;
      }

      v40 = operator new(8 * v39);
    }

    else
    {
      v40 = 0;
    }

    v41 = &v40[8 * v36];
    *v41 = v23;
    v33 = v41 + 8;
    memcpy(v40, v34, v35);
    *&__p = v40;
    *(&__p + 1) = v33;
    *&v166 = &v40[8 * v39];
    if (v34)
    {
      operator delete(v34);
    }
  }

  else
  {
    **(&__p + 1) = v23;
    v33 = (v32 + 8);
  }

  *(&__p + 1) = v33;
  v42 = v164;
  v43 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v161, 1);
  mlir::Pattern::Pattern((v43 + 1), "placement.region_call", 21, v161, v42, 0, 0);
  *v43 = &unk_1F5B35DC8;
  if (!v43[9])
  {
    v161 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::RemoveUnusedInputs]";
    v162 = 103;
    v44 = llvm::StringRef::find(&v161, "DesiredTypeName = ", 0x12uLL, 0);
    if (v162 >= v44)
    {
      v45 = v44;
    }

    else
    {
      v45 = v162;
    }

    v46 = v161 + v45;
    v47 = v162 - v45;
    if (v162 - v45 >= 0x12)
    {
      v48 = 18;
    }

    else
    {
      v48 = v162 - v45;
    }

    v49 = &v46[v48];
    v50 = v47 - v48;
    if (v50 >= v50 - 1)
    {
      --v50;
    }

    v43[8] = v49;
    v43[9] = v50;
  }

  v51 = *(v43 + 22);
  if (v51 > *(v43 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v43 + 10), (v43 + 12), v51, 16);
    LODWORD(v51) = *(v43 + 22);
  }

  *(v43 + 22) = v51;
  v52 = *(&__p + 1);
  if (*(&__p + 1) >= v166)
  {
    v54 = __p;
    v55 = *(&__p + 1) - __p;
    v56 = (*(&__p + 1) - __p) >> 3;
    v57 = v56 + 1;
    if ((v56 + 1) >> 61)
    {
      goto LABEL_212;
    }

    v58 = v166 - __p;
    if ((v166 - __p) >> 2 > v57)
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
        goto LABEL_213;
      }

      v60 = operator new(8 * v59);
    }

    else
    {
      v60 = 0;
    }

    v61 = &v60[8 * v56];
    *v61 = v43;
    v53 = v61 + 8;
    memcpy(v60, v54, v55);
    *&__p = v60;
    *(&__p + 1) = v53;
    *&v166 = &v60[8 * v59];
    if (v54)
    {
      operator delete(v54);
    }
  }

  else
  {
    **(&__p + 1) = v43;
    v53 = (v52 + 8);
  }

  *(&__p + 1) = v53;
  v62 = v164;
  v63 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v161, 1);
  mlir::Pattern::Pattern((v63 + 1), "placement.region_call", 21, v161, v62, 0, 0);
  *v63 = &unk_1F5B35E28;
  if (!v63[9])
  {
    v161 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::RemoveUnusedOutputs]";
    v162 = 104;
    v64 = llvm::StringRef::find(&v161, "DesiredTypeName = ", 0x12uLL, 0);
    if (v162 >= v64)
    {
      v65 = v64;
    }

    else
    {
      v65 = v162;
    }

    v66 = v161 + v65;
    v67 = v162 - v65;
    if (v162 - v65 >= 0x12)
    {
      v68 = 18;
    }

    else
    {
      v68 = v162 - v65;
    }

    v69 = &v66[v68];
    v70 = v67 - v68;
    if (v70 >= v70 - 1)
    {
      --v70;
    }

    v63[8] = v69;
    v63[9] = v70;
  }

  v71 = *(v63 + 22);
  if (v71 > *(v63 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v63 + 10), (v63 + 12), v71, 16);
    LODWORD(v71) = *(v63 + 22);
  }

  *(v63 + 22) = v71;
  v72 = *(&__p + 1);
  if (*(&__p + 1) >= v166)
  {
    v74 = __p;
    v75 = *(&__p + 1) - __p;
    v76 = (*(&__p + 1) - __p) >> 3;
    v77 = v76 + 1;
    if ((v76 + 1) >> 61)
    {
      goto LABEL_212;
    }

    v78 = v166 - __p;
    if ((v166 - __p) >> 2 > v77)
    {
      v77 = v78 >> 2;
    }

    if (v78 >= 0x7FFFFFFFFFFFFFF8)
    {
      v79 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v79 = v77;
    }

    if (v79)
    {
      if (v79 >> 61)
      {
        goto LABEL_213;
      }

      v80 = operator new(8 * v79);
    }

    else
    {
      v80 = 0;
    }

    v81 = &v80[8 * v76];
    *v81 = v63;
    v73 = v81 + 8;
    memcpy(v80, v74, v75);
    *&__p = v80;
    *(&__p + 1) = v73;
    *&v166 = &v80[8 * v79];
    if (v74)
    {
      operator delete(v74);
    }
  }

  else
  {
    **(&__p + 1) = v63;
    v73 = (v72 + 8);
  }

  *(&__p + 1) = v73;
  v82 = v164;
  v83 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v161, 1);
  mlir::Pattern::Pattern((v83 + 1), "placement.region_call", 21, v161, v82, 0, 0);
  *v83 = &unk_1F5B35E88;
  if (!v83[9])
  {
    v161 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::RemovePassthroughValues]";
    v162 = 108;
    v84 = llvm::StringRef::find(&v161, "DesiredTypeName = ", 0x12uLL, 0);
    if (v162 >= v84)
    {
      v85 = v84;
    }

    else
    {
      v85 = v162;
    }

    v86 = v161 + v85;
    v87 = v162 - v85;
    if (v162 - v85 >= 0x12)
    {
      v88 = 18;
    }

    else
    {
      v88 = v162 - v85;
    }

    v89 = &v86[v88];
    v90 = v87 - v88;
    if (v90 >= v90 - 1)
    {
      --v90;
    }

    v83[8] = v89;
    v83[9] = v90;
  }

  v91 = *(v83 + 22);
  if (v91 > *(v83 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v83 + 10), (v83 + 12), v91, 16);
    LODWORD(v91) = *(v83 + 22);
  }

  *(v83 + 22) = v91;
  v92 = *(&__p + 1);
  if (*(&__p + 1) >= v166)
  {
    v94 = __p;
    v95 = *(&__p + 1) - __p;
    v96 = (*(&__p + 1) - __p) >> 3;
    v97 = v96 + 1;
    if ((v96 + 1) >> 61)
    {
      goto LABEL_212;
    }

    v98 = v166 - __p;
    if ((v166 - __p) >> 2 > v97)
    {
      v97 = v98 >> 2;
    }

    if (v98 >= 0x7FFFFFFFFFFFFFF8)
    {
      v99 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v99 = v97;
    }

    if (v99)
    {
      if (v99 >> 61)
      {
        goto LABEL_213;
      }

      v100 = operator new(8 * v99);
    }

    else
    {
      v100 = 0;
    }

    v101 = &v100[8 * v96];
    *v101 = v83;
    v93 = v101 + 8;
    memcpy(v100, v94, v95);
    *&__p = v100;
    *(&__p + 1) = v93;
    *&v166 = &v100[8 * v99];
    if (v94)
    {
      operator delete(v94);
    }
  }

  else
  {
    **(&__p + 1) = v83;
    v93 = (v92 + 8);
  }

  *(&__p + 1) = v93;
  v102 = v164;
  v103 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v161, 1);
  mlir::Pattern::Pattern((v103 + 1), "placement.region_call", 21, v161, v102, 0, 0);
  *v103 = &unk_1F5B35EE8;
  if (!v103[9])
  {
    v161 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::RemoveOutputReshapes]";
    v162 = 105;
    v104 = llvm::StringRef::find(&v161, "DesiredTypeName = ", 0x12uLL, 0);
    if (v162 >= v104)
    {
      v105 = v104;
    }

    else
    {
      v105 = v162;
    }

    v106 = v161 + v105;
    v107 = v162 - v105;
    if (v162 - v105 >= 0x12)
    {
      v108 = 18;
    }

    else
    {
      v108 = v162 - v105;
    }

    v109 = &v106[v108];
    v110 = v107 - v108;
    if (v110 >= v110 - 1)
    {
      --v110;
    }

    v103[8] = v109;
    v103[9] = v110;
  }

  v111 = *(v103 + 22);
  if (v111 > *(v103 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v103 + 10), (v103 + 12), v111, 16);
    LODWORD(v111) = *(v103 + 22);
  }

  *(v103 + 22) = v111;
  v112 = *(&__p + 1);
  if (*(&__p + 1) >= v166)
  {
    v114 = __p;
    v115 = *(&__p + 1) - __p;
    v116 = (*(&__p + 1) - __p) >> 3;
    v117 = v116 + 1;
    if ((v116 + 1) >> 61)
    {
      goto LABEL_212;
    }

    v118 = v166 - __p;
    if ((v166 - __p) >> 2 > v117)
    {
      v117 = v118 >> 2;
    }

    if (v118 >= 0x7FFFFFFFFFFFFFF8)
    {
      v119 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v119 = v117;
    }

    if (v119)
    {
      if (v119 >> 61)
      {
        goto LABEL_213;
      }

      v120 = operator new(8 * v119);
    }

    else
    {
      v120 = 0;
    }

    v121 = &v120[8 * v116];
    *v121 = v103;
    v113 = v121 + 8;
    memcpy(v120, v114, v115);
    *&__p = v120;
    *(&__p + 1) = v113;
    *&v166 = &v120[8 * v119];
    if (v114)
    {
      operator delete(v114);
    }
  }

  else
  {
    **(&__p + 1) = v103;
    v113 = (v112 + 8);
  }

  *(&__p + 1) = v113;
  v122 = v164;
  v123 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v161, 1);
  mlir::Pattern::Pattern((v123 + 1), "placement.region_call", 21, v161, v122, 0, 0);
  *v123 = &unk_1F5B35F48;
  if (!v123[9])
  {
    v161 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::FoldEmptyRegion]";
    v162 = 100;
    v124 = llvm::StringRef::find(&v161, "DesiredTypeName = ", 0x12uLL, 0);
    if (v162 >= v124)
    {
      v125 = v124;
    }

    else
    {
      v125 = v162;
    }

    v126 = v161 + v125;
    v127 = v162 - v125;
    if (v162 - v125 >= 0x12)
    {
      v128 = 18;
    }

    else
    {
      v128 = v162 - v125;
    }

    v129 = &v126[v128];
    v130 = v127 - v128;
    if (v130 >= v130 - 1)
    {
      --v130;
    }

    v123[8] = v129;
    v123[9] = v130;
  }

  v131 = *(v123 + 22);
  if (v131 > *(v123 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v123 + 10), (v123 + 12), v131, 16);
    LODWORD(v131) = *(v123 + 22);
  }

  *(v123 + 22) = v131;
  v132 = *(&__p + 1);
  if (*(&__p + 1) < v166)
  {
    **(&__p + 1) = v123;
    v133 = (v132 + 8);
    goto LABEL_183;
  }

  v134 = __p;
  v135 = *(&__p + 1) - __p;
  v136 = (*(&__p + 1) - __p) >> 3;
  v137 = v136 + 1;
  if (!((v136 + 1) >> 61))
  {
    v138 = v166 - __p;
    if ((v166 - __p) >> 2 > v137)
    {
      v137 = v138 >> 2;
    }

    if (v138 >= 0x7FFFFFFFFFFFFFF8)
    {
      v139 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v139 = v137;
    }

    if (!v139)
    {
      v140 = 0;
LABEL_181:
      v141 = &v140[8 * v136];
      *v141 = v123;
      v133 = v141 + 8;
      memcpy(v140, v134, v135);
      *&__p = v140;
      *(&__p + 1) = v133;
      *&v166 = &v140[8 * v139];
      if (v134)
      {
        operator delete(v134);
      }

LABEL_183:
      *(&__p + 1) = v133;
      v161 = v163;
      v162 = 0x600000000;
      v142 = *(this + 5);
      v160[0] = &v161;
      v155 = v160;
      mlir::detail::walk<mlir::ForwardIterator>((v142 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4anec12_GLOBAL__N_122RegionCanonicalization14runOnOperationEvEUlNS1_9placement10RegionCallEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v155, 1);
      v143 = v161;
      v144 = v162;
      mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v160, &v164, 0, 0, 0, 0);
      LOBYTE(v155) = 0;
      HIDWORD(v155) = 2;
      v156 = xmmword_1E097BBC0;
      v157 = 0;
      v158 = 1;
      v159 = 0;
      mlir::applyOpPatternsAndFold(v143, v144, v160, &v155, 0, 0);
      std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v160);
      if (v161 != v163)
      {
        free(v161);
      }

      if (HIDWORD(v177) && v177)
      {
        v145 = 0;
        do
        {
          v146 = *(v176 + v145);
          if (v146 != -8 && v146 != 0)
          {
            v148 = *v146;
            v149 = *(v146 + 4);
            if (v149 == (v146 + 8))
            {
              (*(*v149 + 32))(v149);
            }

            else if (v149)
            {
              (*(*v149 + 40))(v149);
            }

            llvm::deallocate_buffer(v146, (v148 + 41));
          }

          v145 += 8;
        }

        while (8 * v177 != v145);
      }

      free(v176);
      if (HIDWORD(v174) && v174)
      {
        v150 = 0;
        do
        {
          v151 = *(v173 + v150);
          if (v151 != -8 && v151 != 0)
          {
            v153 = *v151;
            v154 = *(v151 + 4);
            if (v154 == (v151 + 8))
            {
              (*(*v154 + 32))(v154);
            }

            else if (v154)
            {
              (*(*v154 + 40))(v154);
            }

            llvm::deallocate_buffer(v151, (v153 + 41));
          }

          v150 += 8;
        }

        while (8 * v174 != v150);
      }

      free(v173);
      llvm::deallocate_buffer(v170, (16 * v172));
    }

    if (!(v139 >> 61))
    {
      v140 = operator new(8 * v139);
      goto LABEL_181;
    }

LABEL_213:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_212:
  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
}

double mlir::anec::RegionCanonicalizationBase<mlir::anec::anonymous namespace::RegionCanonicalization>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
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
  *v4 = &unk_1F5B35C98;
  *a2 = v4;
  return result;
}

void mlir::anec::anonymous namespace::MakeInputsUnique::~MakeInputsUnique(mlir::anec::_anonymous_namespace_::MakeInputsUnique *this)
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

uint64_t mlir::anec::anonymous namespace::ANECRegionCallOpRewritePatternBase::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  ParentOp = a2;
  v16 = a2;
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
  v6 = ParentOp;
  Callee = mlir::placement::RegionCall::getCallee(&v16);
  v9 = v8;
  Context = mlir::Attribute::getContext((v6 + 6));
  v19 = 261;
  __p = Callee;
  *&v18 = v9;
  v11 = mlir::StringAttr::get(Context, &__p);
  v12 = mlir::SymbolTable::lookupSymbolIn(v6, v11);
  if (mlir::placement::RegionCall::getRegionType(&v16) == 1)
  {
    if (mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(v12) && v12)
    {
      InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(v12);
      return (*(*a1 + 72))(a1, v16, v12, InterfaceFor, a3);
    }

    __p = operator new(0x30uLL);
    v18 = xmmword_1E0999AD0;
    strcpy(__p, "region was not referencing an ANEC region");
  }

  else
  {
    __p = operator new(0x38uLL);
    v18 = xmmword_1E0982760;
    strcpy(__p, "placement region call was referencing an ANE region");
  }

  result = mlir::logMatchFailure(&__p, *(v16 + 3), a3);
  if (SHIBYTE(v18) < 0)
  {
    v15 = result;
    operator delete(__p);
    return v15;
  }

  return result;
}

void mlir::anec::anonymous namespace::ANECRegionCallOpRewritePatternBase::getDuplicateIndices(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v31 = 0;
  v32 = a1;
  v33 = 0;
  if (!a2)
  {
    v26 = 0;
LABEL_39:
    llvm::deallocate_buffer(v26, a2);
  }

  v4 = a2;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = mlir::ValueRange::dereference_iterator(&v32, v6);
    v27 = v7;
    if (v29)
    {
      v8 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
      v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ (v8 >> 47) ^ v8);
      v10 = (-348639895 * ((v9 >> 47) ^ v9)) & (v29 - 1);
      v11 = *(v28[0] + 16 * v10);
      if (v11 == v7)
      {
LABEL_7:
        if (v10 != v29)
        {
          v12 = v28[0] + 16 * v10;
          v13 = *(a3 + 16);
          if (!v13)
          {
            v16 = 0;
            goto LABEL_20;
          }

          v14 = *(v12 + 8);
          v15 = (v13 - 1) & (((0xBF58476D1CE4E5B9 * v14) >> 31) ^ (484763065 * v14));
          v16 = *a3 + 72 * v15;
          v17 = *v16;
          if (v14 != *v16)
          {
            v18 = 0;
            v19 = 1;
            while (v17 != -1)
            {
              if (v18)
              {
                v20 = 0;
              }

              else
              {
                v20 = v17 == -2;
              }

              if (v20)
              {
                v18 = v16;
              }

              v21 = v15 + v19++;
              v15 = v21 & (v13 - 1);
              v16 = *a3 + 72 * v15;
              v17 = *v16;
              if (v14 == *v16)
              {
                goto LABEL_25;
              }
            }

            if (v18)
            {
              v16 = v18;
            }

LABEL_20:
            v30 = v16;
            v22 = *(a3 + 8);
            if (4 * v22 + 4 >= 3 * v13)
            {
              v13 *= 2;
            }

            else if (v13 + ~v22 - *(a3 + 12) > v13 >> 3)
            {
              goto LABEL_22;
            }

            llvm::DenseMap<unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<unsigned long long,6u>>>::grow(a3, v13);
            llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::LookupBucketFor<unsigned long>(a3, (v12 + 8), &v30);
            v22 = *(a3 + 8);
            v16 = v30;
LABEL_22:
            *(a3 + 8) = v22 + 1;
            if (*v16 != -1)
            {
              --*(a3 + 12);
            }

            *v16 = *(v12 + 8);
            *(v16 + 8) = v16 + 24;
            *(v16 + 16) = 0x600000000;
          }

LABEL_25:
          v23 = *(v16 + 16);
          if (v23 >= *(v16 + 20))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 8, v16 + 24, v23 + 1, 8);
            v23 = *(v16 + 16);
          }

          *(*(v16 + 8) + 8 * v23) = v5;
          ++*(v16 + 16);
          goto LABEL_4;
        }
      }

      else
      {
        v24 = 1;
        while (v11 != -4096)
        {
          v25 = v10 + v24++;
          v10 = v25 & (v29 - 1);
          v11 = *(v28[0] + 16 * v10);
          if (v11 == v7)
          {
            goto LABEL_7;
          }
        }
      }
    }

    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>,mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>::operator[](v28, &v27) = v5;
LABEL_4:
    v5 = v31 + 1;
    v6 = v33 + 1;
    ++v31;
    v33 = v6;
    if (v6 == v4)
    {
      v26 = v28[0];
      a2 = (16 * v29);
      goto LABEL_39;
    }
  }
}

void *llvm::DenseMap<unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<unsigned long long,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 9 * v3;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<unsigned long long,6u>>>,unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<unsigned long long,6u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 72 * v11 - 72;
    if (v12 < 0x48)
    {
      v13 = result;
LABEL_14:
      v17 = &result[9 * v11];
      do
      {
        *v13 = -1;
        v13 += 9;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x48 + 1;
    v13 = &result[9 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -1;
      v15[9] = -1;
      v15 += 18;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<unsigned long long,6u>>>,unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<unsigned long long,6u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[9 * v6];
      do
      {
        *v9 = -1;
        v9 += 9;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[9 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[9] = -1;
      v11 += 18;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if (*v4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & (((0xBF58476D1CE4E5B9 * v14) >> 31) ^ (484763065 * v14));
        v17 = (*a1 + 72 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -1)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -2;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = (*a1 + 72 * (v23 & v15));
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v17 = v20;
          }
        }

LABEL_14:
        *v17 = v14;
        v17[1] = v17 + 3;
        v17[2] = 0x600000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned long long>::operator=((v17 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v19 = v4[1];
        if (v19 != (v4 + 3))
        {
          free(v19);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

uint64_t mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::ArrayRef<mlir::Type>,llvm::StringRef,mlir::placement::RegionType,llvm::SmallVector<mlir::Value,6u> &>(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int *a5, uint64_t a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(v23, v25, v24);
  }

  mlir::OperationState::OperationState(v23, a2, v13);
  mlir::ValueRange::ValueRange(v25, *a3, *(a3 + 8));
  v16 = *a4;
  v15 = a4[1];
  v17 = *a5;
  mlir::ValueRange::ValueRange(v24, *a6, *(a6 + 8));
  mlir::placement::RegionCall::build(a1, v23, v25[0], v25[1], v16, v15, v17, v18, v24[0], v24[1]);
  v19 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v20;
}

BOOL llvm::function_ref<BOOL ()(mlir::BlockArgument)>::callback_fn<mlir::anec::anonymous namespace::ANECRegionCallOpRewritePatternBase::removeInputsAndOutputs(mlir::placement::RegionCall,mlir::TargetLegalizerInterface,mlir::PatternRewriter &,llvm::DenseSet<unsigned long long,llvm::DenseMapInfo<unsigned long long,void>>,llvm::DenseSet<unsigned long long,llvm::DenseMapInfo<unsigned long long,void>>)::{lambda(mlir::BlockArgument)#1}>(uint64_t **a1, uint64_t a2)
{
  v2 = *(*a1 + 4);
  if (!v2)
  {
LABEL_7:
    v5 = *(*a1 + 4);
    return v5 != v2;
  }

  v3 = *(a2 + 24);
  v4 = **a1;
  v5 = (v2 - 1) & (((0xBF58476D1CE4E5B9 * v3) >> 31) ^ (484763065 * v3));
  v6 = *(v4 + 8 * v5);
  if (v3 != v6)
  {
    v7 = 1;
    while (v6 != -1)
    {
      v8 = v5 + v7++;
      v5 = v8 & (v2 - 1);
      v6 = *(v4 + 8 * v5);
      if (v3 == v6)
      {
        return v5 != v2;
      }
    }

    goto LABEL_7;
  }

  return v5 != v2;
}

void mlir::anec::anonymous namespace::MakeOutputsUnique::~MakeOutputsUnique(mlir::anec::_anonymous_namespace_::MakeOutputsUnique *this)
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

void mlir::anec::anonymous namespace::RemoveUnusedInputs::~RemoveUnusedInputs(mlir::anec::_anonymous_namespace_::RemoveUnusedInputs *this)
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

void mlir::anec::anonymous namespace::RemoveUnusedInputs::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  BodyBlock = mlir::TargetLegalizerInterface::getBodyBlock(v12);
  v5 = *(BodyBlock + 48);
  v6 = *(BodyBlock + 56);
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      if (!**v5)
      {
        v8 = v7;
        llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v9, &v8, v13);
      }

      ++v7;
      ++v5;
    }

    while (v5 != v6);
    if (v10)
    {
      llvm::deallocate_buffer(0, 0);
    }
  }

  llvm::deallocate_buffer(v9, (8 * v11));
}

void sub_1E0474C20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *buffer, uint64_t a13, unsigned int a14, uint64_t a15, void *__src, uint64_t a17, unsigned int a18)
{
  a14 = a18;
  if (a18)
  {
    v22 = 8 * a18;
    buffer = llvm::allocate_buffer(v22, 8uLL);
    a13 = a17;
    memcpy(buffer, __src, v22);
  }

  else
  {
    buffer = 0;
    a13 = 0;
  }

  a9 = 0;
  a10 = 0;
  a11 = 0;
}

void mlir::anec::anonymous namespace::RemoveUnusedOutputs::~RemoveUnusedOutputs(mlir::anec::_anonymous_namespace_::RemoveUnusedOutputs *this)
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

void mlir::anec::anonymous namespace::RemoveUnusedOutputs::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      if (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v3, i))
      {
        v5 = i;
        llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v6, &v5, v9);
      }
    }

    if (v7)
    {
      llvm::deallocate_buffer(0, 0);
    }
  }

  llvm::deallocate_buffer(v6, (8 * v8));
}

void sub_1E0474E40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *buffer, uint64_t a10, unsigned int a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__src, uint64_t a18, unsigned int a19)
{
  a11 = a19;
  if (a19)
  {
    v23 = 8 * a19;
    buffer = llvm::allocate_buffer(v23, 8uLL);
    a10 = a18;
    memcpy(buffer, __src, v23);
  }

  else
  {
    buffer = 0;
    a10 = 0;
  }
}

void mlir::anec::anonymous namespace::RemovePassthroughValues::~RemovePassthroughValues(mlir::anec::_anonymous_namespace_::RemovePassthroughValues *this)
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

void mlir::anec::anonymous namespace::RemoveOutputReshapes::~RemoveOutputReshapes(mlir::anec::_anonymous_namespace_::RemoveOutputReshapes *this)
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

uint64_t mlir::anec::anonymous namespace::RemoveOutputReshapes::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  v12[3] = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  v10[1] = a4;
  if (a3 && *(*(a3 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id)
  {
    BodyBlock = mlir::TargetLegalizerInterface::getBodyBlock(v10);
    Terminator = mlir::Block::getTerminator(BodyBlock, v6);
    if ((*(Terminator + 46) & 0x80) != 0)
    {
      v8 = *(Terminator + 72);
      v9 = *(Terminator + 68);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    mlir::ValueRange::ValueRange(v11, v8, v9);
  }

  return result;
}

void mlir::anec::anonymous namespace::FoldEmptyRegion::~FoldEmptyRegion(mlir::anec::_anonymous_namespace_::FoldEmptyRegion *this)
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

uint64_t mlir::anec::anonymous namespace::FoldEmptyRegion::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 36))
  {
    return 0;
  }

  (*(*a5 + 16))(a5, a3);
  (*(*a5 + 16))(a5, a2);
  return 1;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4anec12_GLOBAL__N_122RegionCanonicalization14runOnOperationEvEUlNS1_9placement10RegionCallEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
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

void OUTLINED_FUNCTION_0_22(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
}

void OUTLINED_FUNCTION_1_31()
{

  llvm::deallocate_buffer(0, 0);
}

void OUTLINED_FUNCTION_2_24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, llvm *a13, uint64_t a14, unsigned int a15)
{

  llvm::deallocate_buffer(a13, (8 * a15));
}

void *OUTLINED_FUNCTION_3_23@<X0>(uint64_t a1@<X8>)
{

  return llvm::allocate_buffer(8 * a1, 8uLL);
}

void OUTLINED_FUNCTION_7_18(llvm *a1@<X0>, uint64_t a2@<X8>)
{

  llvm::deallocate_buffer(a1, (8 * a2));
}

void OUTLINED_FUNCTION_10_19(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, a4, a1 + 1, 8);
}

void mlir::silc::MeshAttr::getMeshVector(mlir::silc::MeshAttr *this@<X0>, char **a2@<X8>)
{
  Value = mlir::ArrayAttr::getValue(this);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4)
  {
    if (v4 < 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v5 = Value;
    v6 = 2 * v4;
    v7 = v4;
    v8 = operator new(2 * v4);
    v9 = &v8[v6];
    *a2 = v8;
    a2[1] = v8;
    a2[2] = &v8[v6];
    v10 = 8 * v7;
    v11 = v8;
    do
    {
      while (1)
      {
        v20 = *v5;
        Size = mlir::silc::MeshAxisAttr::getSize(&v20);
        if (v8 >= v9)
        {
          break;
        }

        *v8 = Size;
        v8 += 2;
        a2[1] = v8;
        ++v5;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_22;
        }
      }

      v13 = v8 - v11;
      v14 = (v8 - v11) >> 1;
      if (v14 <= -2)
      {
        a2[2] = v9;
        *a2 = v11;
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      if (v9 - v11 <= (v14 + 1))
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = v9 - v11;
      }

      if ((v9 - v11) >= 0x7FFFFFFFFFFFFFFELL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        if (v16 < 0)
        {
          a2[2] = v9;
          *a2 = v11;
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v17 = Size;
        v18 = operator new(2 * v16);
        Size = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = &v18[2 * v14];
      v9 = &v18[2 * v16];
      *v19 = Size;
      v8 = v19 + 2;
      memcpy(v18, v11, v13);
      a2[1] = v8;
      if (v11)
      {
        operator delete(v11);
      }

      v11 = v18;
      a2[1] = v8;
      ++v5;
      v10 -= 8;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v9 = 0;
  }

LABEL_22:
  a2[2] = v9;
  *a2 = v11;
}

uint64_t mlir::silc::getMeshOrLookup(uint64_t a1, uint64_t a2)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    v17[5] = v2;
    v17[6] = v3;
    v16 = a2;
    LeafReference = mlir::SymbolRefAttr::getLeafReference(&v16);
    AttrData = mlir::OpaqueAttr::getAttrData(&LeafReference);
    v7 = v6;
    Context = mlir::Attribute::getContext((a1 + 24));
    v9 = mlir::SymbolRefAttr::get(Context, AttrData, v7);
    v10 = mlir::SymbolTable::lookupNearestSymbolFrom(a1, v9);
    if (v10 && ((v11 = *(*(v10 + 48) + 16), v12 = v11 == &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id, v11 != &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id) ? (v13 = 0) : (v13 = v10), v17[0] = v13, v12))
    {
      return mlir::pdl::OperationOp::getAttributeValueNames(v17);
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

void mlir::silc::TensorAxisRefAttr::getMeshAxesVector(mlir::ArrayAttr *a1@<X0>, mlir::ArrayAttr *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  Value = mlir::ArrayAttr::getValue(a1);
  if (v5)
  {
    v6 = Value;
    v7 = 0;
    v8 = 0;
    v9 = (Value + 8 * v5);
    do
    {
      while (1)
      {
        v30 = *v6;
        v10 = mlir::ArrayAttr::getValue(&v30);
        v12 = v11;
        v13 = mlir::ArrayAttr::getValue(a2);
        if (v14)
        {
          v15 = v13;
          v16 = 8 * v14;
          v17 = 0;
          if (v12)
          {
            while (1)
            {
              v31 = *(v15 + 8 * v17);
              v26 = mlir::ArrayAttr::getValue(&v31);
              if (v27 == v12 && !memcmp(v26, v10, v12))
              {
                break;
              }

              ++v17;
              v16 -= 8;
              if (!v16)
              {
                goto LABEL_8;
              }
            }
          }

          else
          {
            while (1)
            {
              v31 = *(v15 + 8 * v17);
              mlir::ArrayAttr::getValue(&v31);
              if (!v18)
              {
                break;
              }

              ++v17;
              v16 -= 8;
              if (!v16)
              {
                goto LABEL_8;
              }
            }
          }
        }

        else
        {
LABEL_8:
          LOWORD(v17) = -1;
        }

        v19 = a3[2];
        if (v7 >= v19)
        {
          break;
        }

        *v7 = v17;
        v7 += 2;
        a3[1] = v7;
        if (++v6 == v9)
        {
          goto LABEL_30;
        }
      }

      v20 = v7 - v8;
      v21 = (v7 - v8) >> 1;
      if (v21 <= -2)
      {
        *a3 = v8;
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = v19 - v8;
      if (v22 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      else
      {
        v23 = v22;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        if (v24 < 0)
        {
          *a3 = v8;
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v25 = operator new(2 * v24);
      }

      else
      {
        v25 = 0;
      }

      v28 = &v25[2 * v21];
      *v28 = v17;
      v7 = v28 + 2;
      memcpy(v25, v8, v20);
      a3[1] = v7;
      a3[2] = &v25[2 * v24];
      if (v8)
      {
        operator delete(v8);
      }

      v8 = v25;
      a3[1] = v7;
      ++v6;
    }

    while (v6 != v9);
  }

  else
  {
    v8 = 0;
  }

LABEL_30:
  *a3 = v8;
}

uint64_t mlir::silc::ShardingAttr::getMesh(mlir::silc::ShardingAttr *this, mlir::Operation *a2)
{
  Value = mlir::AffineMapAttr::getValue(this);

  return mlir::silc::getMeshOrLookup(a2, Value);
}

void mlir::silc::ShardingAttr::getMeshVector(mlir::silc::ShardingAttr *this@<X0>, mlir::Operation *a2@<X1>, char **a3@<X8>)
{
  Value = mlir::AffineMapAttr::getValue(this);
  MeshOrLookup = mlir::silc::getMeshOrLookup(a2, Value);
  mlir::silc::MeshAttr::getMeshVector(&MeshOrLookup, a3);
}

void *mlir::silc::ShardingAttr::getMeshAxesVector@<X0>(mlir::OpaqueAttr *a1@<X0>, mlir::ArrayAttr *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = mlir::OpaqueAttr::getAttrData(a1);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v31 = &result[v5];
    do
    {
      v32 = result;
      v35 = *result;
      Value = mlir::ArrayAttr::getValue(&v35);
      if (v9)
      {
        v10 = Value;
        v11 = (Value + 8 * v9);
        do
        {
          while (1)
          {
            v34 = *v10;
            v12 = mlir::ArrayAttr::getValue(&v34);
            v14 = v13;
            v15 = mlir::ArrayAttr::getValue(a2);
            if (v16)
            {
              v17 = v15;
              v18 = 8 * v16;
              v19 = 0;
              if (v14)
              {
                while (1)
                {
                  v36 = *(v17 + 8 * v19);
                  v28 = mlir::ArrayAttr::getValue(&v36);
                  if (v29 == v14 && !memcmp(v28, v12, v14))
                  {
                    break;
                  }

                  ++v19;
                  v18 -= 8;
                  if (!v18)
                  {
                    goto LABEL_11;
                  }
                }
              }

              else
              {
                while (1)
                {
                  v36 = *(v17 + 8 * v19);
                  mlir::ArrayAttr::getValue(&v36);
                  if (!v20)
                  {
                    break;
                  }

                  ++v19;
                  v18 -= 8;
                  if (!v18)
                  {
                    goto LABEL_11;
                  }
                }
              }
            }

            else
            {
LABEL_11:
              LOWORD(v19) = -1;
            }

            v21 = a3[2];
            if (v6 >= v21)
            {
              break;
            }

            *v6 = v19;
            v6 += 2;
            a3[1] = v6;
            if (++v10 == v11)
            {
              goto LABEL_3;
            }
          }

          v22 = v6 - v7;
          v23 = (v6 - v7) >> 1;
          if (v23 <= -2)
          {
            *a3 = v7;
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v24 = v21 - v7;
          if (v24 <= v23 + 1)
          {
            v25 = v23 + 1;
          }

          else
          {
            v25 = v24;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v26 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v25;
          }

          if (v26)
          {
            if (v26 < 0)
            {
              *a3 = v7;
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            v27 = operator new(2 * v26);
          }

          else
          {
            v27 = 0;
          }

          v30 = &v27[2 * v23];
          *v30 = v19;
          v6 = v30 + 2;
          memcpy(v27, v7, v22);
          a3[1] = v6;
          a3[2] = &v27[2 * v26];
          if (v7)
          {
            operator delete(v7);
          }

          v7 = v27;
          a3[1] = v6;
          ++v10;
        }

        while (v10 != v11);
      }

LABEL_3:
      *a3 = v7;
      result = v32 + 1;
    }

    while (v32 + 1 != v31);
  }

  return result;
}

void *mlir::silc::ShardingAttr::getMeshAxesVector@<X0>(mlir::silc::ShardingAttr *this@<X0>, mlir::Operation *a2@<X1>, void *a3@<X8>)
{
  Value = mlir::AffineMapAttr::getValue(this);
  MeshOrLookup = mlir::silc::getMeshOrLookup(a2, Value);
  return mlir::silc::ShardingAttr::getMeshAxesVector(this, &MeshOrLookup, a3);
}

void mlir::silc::ShardingAttr::getTensorAxesVector(mlir::silc::ShardingAttr *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  AttrData = mlir::OpaqueAttr::getAttrData(this);
  if (v4)
  {
    v5 = AttrData;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v19 = (AttrData + 8 * v4);
    do
    {
      v20 = *v5;
      mlir::ArrayAttr::getValue(&v20);
      if (v9)
      {
        v10 = 8 * v9;
        do
        {
          while (1)
          {
            v11 = a2[2];
            if (v6 >= v11)
            {
              break;
            }

            *v6 = v8;
            v6 += 2;
            a2[1] = v6;
            v10 -= 8;
            if (!v10)
            {
              goto LABEL_3;
            }
          }

          v12 = v6 - v7;
          v13 = (v6 - v7) >> 1;
          if (v13 <= -2)
          {
            *a2 = v7;
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v14 = v11 - v7;
          if (v14 <= v13 + 1)
          {
            v15 = v13 + 1;
          }

          else
          {
            v15 = v14;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v16 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            if (v16 < 0)
            {
              *a2 = v7;
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            v17 = operator new(2 * v16);
          }

          else
          {
            v17 = 0;
          }

          v18 = &v17[2 * v13];
          *v18 = v8;
          v6 = v18 + 2;
          memcpy(v17, v7, v12);
          a2[1] = v6;
          a2[2] = &v17[2 * v16];
          if (v7)
          {
            operator delete(v7);
          }

          v7 = v17;
          a2[1] = v6;
          v10 -= 8;
        }

        while (v10);
      }

LABEL_3:
      *a2 = v7;
      ++v8;
      ++v5;
    }

    while (v5 != v19);
  }
}

uint64_t mlir::silc::ShardingAttr::inflateRank(mlir::silc::ShardingAttr *this, int a2, int a3)
{
  AttrData = mlir::OpaqueAttr::getAttrData(this);
  if (a3)
  {
    v8 = 5;
  }

  else
  {
    v8 = 4;
  }

  if (v7 >= v8)
  {
    return *this;
  }

  v9 = AttrData;
  v10 = v7;
  Context = mlir::Attribute::getContext(this);
  v12 = mlir::silc::TensorAxisRefAttr::get(Context, 0, 0);
  v13 = operator new(8 * v8);
  v14 = v13;
  v15 = (v8 + 7) & 7;
  v16 = vdupq_n_s64(v15);
  v17 = v15 - ((v8 + 7) & 1);
  v18 = vmovn_s64(vcgeq_u64(v16, xmmword_1E09700F0));
  if ((v18.i8[0] & 1) == 0)
  {
    v19 = v17 + 2;
    if ((v18.i8[4] & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v13[1] = v12;
    if (v19 == 2)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  *v13 = v12;
  v19 = v17 + 2;
  if (v18.i8[4])
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v19 == 2)
  {
    goto LABEL_22;
  }

LABEL_12:
  v21 = vmovn_s64(vcgtq_u64(v16, xmmword_1E0970220));
  if (v21.i8[0])
  {
    v13[2] = v12;
    if ((v21.i8[4] & 1) == 0)
    {
LABEL_14:
      if (v19 == 4)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if ((v21.i8[4] & 1) == 0)
  {
    goto LABEL_14;
  }

  v13[3] = v12;
  if (v19 == 4)
  {
    goto LABEL_22;
  }

LABEL_18:
  v22 = vmovn_s64(vcgtq_u64(v16, xmmword_1E0970230));
  if (v22.i8[0])
  {
    v13[4] = v12;
  }

  if (v22.i8[4])
  {
    v13[5] = v12;
  }

LABEL_22:
  if (a3)
  {
    if (v10 <= 2)
    {
      v23 = 4;
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v24 = 8;
          v25 = 2;
          v26 = v9;
LABEL_50:
          v13[v25] = *v26;
          v9 = (v9 + v24);
          goto LABEL_51;
        }

        goto LABEL_52;
      }

LABEL_51:
      v13[v23] = *v9;
      goto LABEL_52;
    }

    if (v10 == 4)
    {
      v31 = v9 + 1;
      *v13 = *v9;
      v29 = v13 + 2;
      v23 = 4;
      v25 = 3;
      v27 = 2;
      v24 = 24;
      goto LABEL_49;
    }

    if (v10 != 3)
    {
      goto LABEL_52;
    }

    v24 = 16;
    if (a2)
    {
      v30 = 2;
    }

    else
    {
      v30 = 0;
    }

    v29 = &v13[v30];
    if (a2)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v23 = 4;
    v27 = 1;
LABEL_46:
    v31 = v9;
LABEL_49:
    *v29 = *v31;
    v26 = &v9[v27];
    goto LABEL_50;
  }

  v23 = 3;
  switch(v10)
  {
    case 1:
      goto LABEL_51;
    case 2:
      v25 = 1;
      v26 = v9;
      v24 = 8;
      goto LABEL_50;
    case 3:
      v27 = 1;
      if (a2)
      {
        v28 = 1;
      }

      else
      {
        v28 = 0;
      }

      v29 = &v13[v28];
      v24 = 16;
      if (a2)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      v23 = 3;
      goto LABEL_46;
  }

LABEL_52:
  v32 = mlir::Attribute::getContext(this);
  Value = mlir::AffineMapAttr::getValue(this);
  v34 = mlir::silc::ShardingAttr::get(v32, Value, v14, v8);
  operator delete(v14);
  return v34;
}

void mlir::function_interface_impl::setResultAttr<mlir::func::FuncOp>(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v15[9] = *MEMORY[0x1E69E9840];
  v13 = a4;
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  ResultAttrDict = mlir::function_interface_impl::getResultAttrDict(a1, InterfaceFor, a2);
  mlir::NamedAttrList::NamedAttrList(v14, ResultAttrDict);
  if (mlir::NamedAttrList::set(v14, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext(&v13);
    Dictionary = mlir::NamedAttrList::getDictionary(v14, Context);
    if (a1)
    {
      v12 = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
    }

    else
    {
      v12 = 0;
    }

    mlir::function_interface_impl::setResultAttrs(a1, v12, a2, Dictionary);
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }
}

uint64_t mlir::silc::TensorAxisRefAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24TensorAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17TensorAxisRefAttrEJNS_8ArrayRefINS2_15MeshAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::silc::ShardingAttr::get(mlir::MLIRContext *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id;
  v13[1] = a1;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19ShardingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12ShardingAttrEJNS1_9AttributeENS_8ArrayRefINS2_17TensorAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v17[1] = v13;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a3, &a3[2 * a4]);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ (a2 >> 4) ^ (a2 >> 9) ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ (a2 >> 4) ^ (a2 >> 9) ^ 0xFF51AFD7ED558CCDLL)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id, (-348639895 * ((v11 >> 47) ^ v11)) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::silc::ReductionKindAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24ReductionKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionKindAttrEJNS2_13ReductionKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::AsmParser::parseString(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 264))(a1, a2))
  {
    return 1;
  }

  v15 = "expected string";
  v16 = 259;
  (*(*a1 + 24))(v17, a1, v4, &v15);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v23;
      v8 = __p;
      if (v23 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v23 = v6;
      operator delete(v8);
    }

    v9 = v20;
    if (v20)
    {
      v10 = v21;
      v11 = v20;
      if (v21 != v20)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        v11 = v20;
      }

      v21 = v9;
      operator delete(v11);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v5;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::silc::detail::TensorAxisRefAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::silc::detail::TensorAxisRefAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *a2;
    v4 = 8 * v2;
    a1[10] += 8 * v2;
    Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = Slow + 8 * v2;
    if (*a1)
    {
      v7 = v6 > a1[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
      a1 = v17;
      v8 = v4 - 8;
      if ((v4 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v6;
      v8 = v4 - 8;
      if ((v4 - 8) >= 0x18)
      {
LABEL_7:
        v9 = Slow;
        v10 = v3;
        if (Slow - v3 >= 0x20)
        {
          v11 = (v8 >> 3) + 1;
          v12 = 8 * (v11 & 0x3FFFFFFFFFFFFFFCLL);
          v9 = (Slow + v12);
          v10 = (v3 + v12);
          v13 = (v3 + 16);
          v14 = (Slow + 16);
          v15 = v11 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v16 = *v13;
            *(v14 - 1) = *(v13 - 1);
            *v14 = v16;
            v13 += 2;
            v14 += 2;
            v15 -= 4;
          }

          while (v15);
          if (v11 == (v11 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v9 = Slow;
    v10 = v3;
    do
    {
LABEL_15:
      v18 = *v10++;
      *v9++ = v18;
    }

    while (v10 != (v3 + 8 * v2));
    goto LABEL_16;
  }

  Slow = 0;
LABEL_16:
  a1[10] += 24;
  v19 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19 + 3;
  if (*a1)
  {
    v21 = v20 > a1[1];
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v19 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 24, 24, 3);
  }

  else
  {
    *a1 = v20;
  }

  *v19 = 0;
  v19[1] = Slow;
  v19[2] = v2;
  return v19;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::SymbolRefAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    *(Slow + 8) = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

void mlir::silc::SilcAllGatherOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a5;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v8 = *(a2 + 256);
  if (v8)
  {
    *v8 = a4;
    v9 = *(a2 + 72);
    if (v9 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v9 + 1, 8);
      LODWORD(v9) = *(a2 + 72);
    }
  }

  else
  {
    v10 = operator new(8uLL);
    *v10 = 0;
    *(a2 + 256) = v10;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v13;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v12;
    {
      mlir::silc::SilcAllGatherOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = a4;
    v9 = *(a2 + 72);
    if (v9 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

void mlir::silc::SilcAllReduceOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v20 = a4;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    v14 = operator new(0x18uLL);
    v14[1] = 0;
    v14[2] = 0;
    *v14 = 0;
    *(a2 + 256) = v14;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v22;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v21;
    {
      mlir::silc::SilcAllReduceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v13 = *(a2 + 256);
  }

  *v13 = a5;
  v13[1] = a6;
  v15 = mlir::silc::ReductionKindAttr::get(*a1, a7);
  v16 = v15;
  v17 = *(a2 + 256);
  if (v17)
  {
    *(v17 + 16) = v15;
    v18 = *(a2 + 72);
    if (v18 >= *(a2 + 76))
    {
LABEL_7:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18 + 1, 8);
      LODWORD(v18) = *(a2 + 72);
    }
  }

  else
  {
    v19 = operator new(0x18uLL);
    v19[1] = 0;
    v19[2] = 0;
    *v19 = 0;
    *(a2 + 256) = v19;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v24;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v23;
    {
      mlir::silc::SilcAllReduceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 16) = v16;
    v18 = *(a2 + 72);
    if (v18 >= *(a2 + 76))
    {
      goto LABEL_7;
    }
  }

  *(*(a2 + 64) + 8 * v18) = a3;
  ++*(a2 + 72);
}

void mlir::silc::SilcAllSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a5;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v8 = *(a2 + 256);
  if (v8)
  {
    *v8 = a4;
    v9 = *(a2 + 72);
    if (v9 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v9 + 1, 8);
      LODWORD(v9) = *(a2 + 72);
    }
  }

  else
  {
    v10 = operator new(8uLL);
    *v10 = 0;
    *(a2 + 256) = v10;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v13;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v12;
    {
      mlir::silc::SilcAllSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = a4;
    v9 = *(a2 + 72);
    if (v9 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties]";
  v6 = 115;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties]";
  v6 = 115;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties]";
  v6 = 114;
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

double mlir::createCoreMLFlattenGraphPass@<D0>(void *a1@<X8>)
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
  *v3 = &unk_1F5B35FA8;
  *a1 = v3;
  return result;
}

void anonymous namespace::CoreMLFlattenGraph::~CoreMLFlattenGraph(_anonymous_namespace_::CoreMLFlattenGraph *this)
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

void *mlir::CoreMLFlattenGraphBase<anonymous namespace::CoreMLFlattenGraph>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAFA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, "func", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5B36018;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, "coreml", 6uLL, v4);
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

uint64_t anonymous namespace::CoreMLFlattenGraph::runOnOperation(_anonymous_namespace_::CoreMLFlattenGraph *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v17[1] = mlir::Attribute::getContext((v2 + 24));
  memset(&v17[2], 0, 24);
  v17[0] = &unk_1F5AFAFF0;
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v20 = v2;
  v30 = &v20;
  v31 = this;
  v32[0] = &Context;
  v18[0] = &v30;
  mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNK12_GLOBAL__N_118CoreMLFlattenGraph15handleCallSitesENS1_8ModuleOpEPNS1_11MLIRContextEEUlNS1_4ODIE8Compiler6CoreML7GraphOpEE_SJ_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESS_E4typeES3_OT1_EUlS3_E_EEvlS3_, v18, 1);
  v18[2] = &v30;
  Context = v2;
  v30 = v32;
  v31 = 0x400000000;
  v18[0] = &Context;
  v18[1] = v17;
  v20 = v18;
  v4 = mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNK12_GLOBAL__N_118CoreMLFlattenGraph12handleModuleENS1_8ModuleOpERNS1_10IRRewriterEEUlNS1_4ODIE8Compiler6CoreML8ModuleOpEE_SK_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v20, 1);
  v5 = v30;
  if (v4 && v31)
  {
    v6 = 8 * v31;
    do
    {
      v7 = *v5++;
      (*(v17[0] + 16))(v17, v7);
      v6 -= 8;
    }

    while (v6);
    v5 = v30;
  }

  if (v5 != v32)
  {
    free(v5);
  }

  if (!v4)
  {
    v18[0] = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
    v30 = "failed to flatten nested coreml graphs";
    v33 = 259;
    mlir::OpState::emitOpError(v18, &v30, v21);
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v27;
        v10 = __p;
        if (v27 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v27 = v8;
        operator delete(v10);
      }

      v11 = v24;
      if (v24)
      {
        v12 = v25;
        v13 = v24;
        if (v25 != v24)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              operator delete[](v14);
            }
          }

          while (v12 != v11);
          v13 = v24;
        }

        v25 = v11;
        operator delete(v13);
      }

      if (v22 != &v23)
      {
        free(v22);
      }
    }

    *(this + 5) |= 4uLL;
  }

  return MPSGraphDelegateCompiler.precompilationDescriptor.modify(v17, v3);
}

double mlir::CoreMLFlattenGraphBase<anonymous namespace::CoreMLFlattenGraph>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
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
  *v4 = &unk_1F5B35FA8;
  *a2 = v4;
  return result;
}

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B36018;
  return result;
}

mlir::ODIE::Compiler::CoreML::CoreMLDialect *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::CoreMLDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, mlir::ODIE::Compiler::CoreML::CoreMLDialect **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x68uLL);
  result = mlir::ODIE::Compiler::CoreML::CoreMLDialect::CoreMLDialect(v4, v3);
  *a2 = result;
  return result;
}

mlir::Block *_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNK12_GLOBAL__N_118CoreMLFlattenGraph15handleCallSitesENS1_8ModuleOpEPNS1_11MLIRContextEEUlNS1_4ODIE8Compiler6CoreML7GraphOpEE_SJ_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESS_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::Block *result, mlir::ForwardIterator *a2)
{
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
  {
    v2 = *result;
    v3 = *(*result + 8);
    result = *(a2 + 2);
    if (result)
    {
      v4 = a2;
      result = mlir::Block::getParentOp(result);
      a2 = v4;
    }

    if (result == **v2)
    {
      v5 = *(v2 + 16);
      v6[0] = v3;
      v6[1] = v5;
      v7 = v6;
      return mlir::detail::walk<mlir::ForwardIterator>(a2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNK12_GLOBAL__N_118CoreMLFlattenGraph15handleCallSitesENS1_8ModuleOpEPNS1_11MLIRContextEENKUlNS1_4ODIE8Compiler6CoreML7GraphOpEE_clESJ_EUlNSI_8InvokeOpEE_SL_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESU_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v7, 1);
    }
  }

  return result;
}

void *_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNK12_GLOBAL__N_118CoreMLFlattenGraph15handleCallSitesENS1_8ModuleOpEPNS1_11MLIRContextEENKUlNS1_4ODIE8Compiler6CoreML7GraphOpEE_clESJ_EUlNSI_8InvokeOpEE_SL_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESU_E4typeES3_OT1_EUlS3_E_EEvlS3_(void *result, uint64_t a2)
{
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
  {
    return result;
  }

  v2 = *result;
  v31 = a2;
  ResolvedCallee = mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(&v31);
  v4 = **(v2 + 8);
  v37 = ResolvedCallee;
  __p[0] = mlir::AffineMapAttr::getValue(&v37);
  AttrData = mlir::OpaqueAttr::getAttrData(__p);
  if (AttrData)
  {
    v7 = v6;
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_53:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v8 = AttrData;
    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v6 | 7) + 1;
      }

      p_dst = operator new(v10);
      __dst.__r_.__value_.__l.__size_ = v7;
      __dst.__r_.__value_.__r.__words[2] = v10 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v6;
      p_dst = &__dst;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    memmove(p_dst, v8, v7);
LABEL_14:
    p_dst->__r_.__value_.__s.__data_[v7] = 0;
    goto LABEL_15;
  }

  memset(&__dst, 0, sizeof(__dst));
LABEL_15:
  v11 = mlir::OpaqueAttr::getAttrData(&v37);
  if (v12)
  {
    v13 = v11;
    for (i = 8 * v12; i; i -= 8)
    {
      v35 = *v13;
      __p[0] = mlir::AffineMapAttr::getValue(&v35);
      v15 = mlir::OpaqueAttr::getAttrData(__p);
      if (!v15)
      {
        memset(&v32, 0, sizeof(v32));
        goto LABEL_30;
      }

      v17 = v16;
      if (v16 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_53;
      }

      v18 = v15;
      if (v16 >= 0x17)
      {
        if ((v16 | 7) == 0x17)
        {
          v20 = 25;
        }

        else
        {
          v20 = (v16 | 7) + 1;
        }

        v19 = operator new(v20);
        v32.__r_.__value_.__l.__size_ = v17;
        v32.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
        v32.__r_.__value_.__r.__words[0] = v19;
      }

      else
      {
        *(&v32.__r_.__value_.__s + 23) = v16;
        v19 = &v32;
        if (!v16)
        {
          goto LABEL_29;
        }
      }

      memmove(v19, v18, v17);
LABEL_29:
      *(v19 + v17) = 0;
LABEL_30:
      v21 = std::string::insert(&v32, 0, "::");
      v22 = v21->__r_.__value_.__r.__words[2];
      *__p = *&v21->__r_.__value_.__l.__data_;
      v34 = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (v34 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      if (v34 >= 0)
      {
        v24 = HIBYTE(v34);
      }

      else
      {
        v24 = __p[1];
      }

      std::string::append(&__dst, v23, v24);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_40:
          operator delete(v32.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_40;
      }

      ++v13;
    }
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &__dst;
  }

  else
  {
    v25 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v27 = mlir::SymbolRefAttr::get(v4, v25, size, 0, 0);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v28 = v27;
    operator delete(__dst.__r_.__value_.__l.__data_);
    v27 = v28;
  }

  result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v27);
  v29 = result;
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(*result + 8);
  }

  v30 = v31 + 16 * ((*(v31 + 44) >> 23) & 1);
  *(v30 + 64) = v29;
  *(v30 + 72) = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNK12_GLOBAL__N_118CoreMLFlattenGraph12handleModuleENS1_8ModuleOpERNS1_10IRRewriterEEUlNS1_4ODIE8Compiler6CoreML8ModuleOpEE_SK_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t *a1, mlir::ForwardIterator *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  result = 1;
  if (!a2 || *(*(a2 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id)
  {
    return result;
  }

  v5 = *a1;
  v32 = a2;
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp != **v5)
  {
    __dst = "Error: nested regions are not supported.";
    v31 = 259;
    mlir::Operation::emitError(a2, &__dst, v34);
    if (v34[0])
    {
      mlir::InFlightDiagnostic::report(v34);
    }

    if (v42)
    {
      if (v41 != &v42)
      {
        free(v41);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v40;
        v9 = __p;
        if (v40 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v40 = v7;
        operator delete(v9);
      }

      v10 = v37;
      if (v37)
      {
        v11 = v38;
        v12 = v37;
        if (v38 != v37)
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
          v12 = v37;
        }

        v38 = v10;
        operator delete(v12);
      }

      if (v35 != &v36)
      {
        free(v35);
      }
    }

    return 0;
  }

  Name = mlir::pdl::ApplyNativeConstraintOp::getName(&v32);
  if (Name)
  {
    v17 = v16;
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v18 = Name;
    if (v16 >= 0x17)
    {
      if ((v16 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v16 | 7) + 1;
      }

      p_dst = operator new(v20);
      v29 = v17;
      v30 = v20 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v30) = v16;
      p_dst = &__dst;
      if (!v16)
      {
        goto LABEL_38;
      }
    }

    memmove(p_dst, v18, v17);
LABEL_38:
    *(p_dst + v17) = 0;
    goto LABEL_39;
  }

  __dst = 0;
  v29 = 0;
  v30 = 0;
LABEL_39:
  v21 = *(v5 + 8);
  v22 = *(v32 + 2);
  v23 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v32, v16);
  *(v21 + 24) = v22;
  *(v21 + 32) = v23;
  v27[0] = *(v5 + 8);
  v27[1] = &__dst;
  v33 = v27;
  mlir::detail::walk<mlir::ForwardIterator>(v32, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNK12_GLOBAL__N_118CoreMLFlattenGraph12handleModuleENS1_8ModuleOpERNS1_10IRRewriterEENKUlNS1_4ODIE8Compiler6CoreML8ModuleOpEE_clESJ_EUlNSI_7GraphOpEE_SL_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESU_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v33, 1);
  v24 = *(v5 + 16);
  v25 = v32;
  v26 = *(v24 + 8);
  if (v26 >= *(v24 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(v5 + 16), v24 + 16, v26 + 1, 8);
    LODWORD(v26) = *(v24 + 8);
  }

  *(*v24 + 8 * v26) = v25;
  ++*(v24 + 8);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__dst);
  }

  return 1;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNK12_GLOBAL__N_118CoreMLFlattenGraph12handleModuleENS1_8ModuleOpERNS1_10IRRewriterEENKUlNS1_4ODIE8Compiler6CoreML8ModuleOpEE_clESJ_EUlNSI_7GraphOpEE_SL_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESU_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t result, mlir::Operation *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      mlir::OpBuilder::clone((**result + 8), a2);
    }
  }

  return result;
}

uint64_t mlir::moduleHasIndependentAdapters(mlir *this, ModuleOp a2)
{
  v4 = 0;
  v3 = &v4;
  v5 = &v3;
  mlir::detail::walk<mlir::ForwardIterator>(this, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_28moduleHasIndependentAdaptersENS1_8ModuleOpEE3__0NS1_4ODIE8Compiler6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v5, 1);
  return v4;
}

double mlir::createCoreMLToMPSPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x280uLL);
  bzero(v3 + 32, 0x260uLL);
  *(v3 + 2) = "builtin.module";
  *(v3 + 3) = 14;
  v3[32] = 1;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 22) = 0;
  *(v3 + 23) = v3 + 200;
  *(v3 + 49) = 4;
  *(v3 + 29) = v3 + 248;
  *(v3 + 61) = 4;
  *(v3 + 280) = 0u;
  *(v3 + 37) = 0x1000000000;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 42) = 0;
  *v3 = &unk_1F5B360D0;
  *(&v5 + 1) = 171;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v3 + 344), v3 + 152, "mutable-weights-path", 20, &v5);
  *(v3 + 43) = &unk_1F5AFC930;
  *(v3 + 72) = &unk_1F5AFC9B0;
  *v3 = &unk_1F5B36060;
  result = 0.0;
  *(v3 + 37) = 0u;
  *(v3 + 152) = 0;
  *(v3 + 616) = 0u;
  *(v3 + 158) = 0;
  *a1 = v3;
  return result;
}

_BYTE ***_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_28moduleHasIndependentAdaptersENS1_8ModuleOpEE3__0NS1_4ODIE8Compiler6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(_BYTE ***result, mlir::Operation *this)
{
  if (this && *(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
  {
    v2 = *result;
    if (*(this + 47) && (v3 = this, v4 = this, v8.var0 = "neutron.isIndependentAdapter", v8.var1 = 28, result = mlir::Operation::getInherentAttr(v3, v8), v6 = v5, this = v4, (v6 & 1) != 0))
    {
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v7 = (this + 56);
      v9.var0 = "neutron.isIndependentAdapter";
      v9.var1 = 28;
      result = mlir::DictionaryAttr::contains(v7, v9);
      if (!result)
      {
        return result;
      }
    }

    **v2 = 1;
  }

  return result;
}

void anonymous namespace::CoreMLToMPS::~CoreMLToMPS(llvm **this)
{
  *this = &unk_1F5B36060;
  llvm::deallocate_buffer(this[77], (16 * *(this + 158)));
}

{
}

void sub_1E04785EC(void *__p)
{

  operator delete(__p);
}

void *mlir::CoreMLToMPSBase<anonymous namespace::CoreMLToMPS>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
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

  v4[0] = &unk_1F5AFAFA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, "func", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5B36018;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, "coreml", 6uLL, v4);
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

void anonymous namespace::CoreMLToMPS::runOnOperation(_anonymous_namespace_::CoreMLToMPS *this)
{
  v1503 = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v1489[2] = 0;
  v1489[0] = &unk_1F5AFD7B0;
  v1489[1] = 0;
  v1490 = 0;
  v1496 = 0;
  v1495 = 0;
  v1491 = v1493;
  v1492 = 0;
  v1493[1] = 0;
  v1493[0] = 0;
  v1494 = 0;
  v1497 = 0x1000000000;
  v1498 = 0;
  v1499 = 0;
  v1500 = 0x2800000000;
  v1501 = 0;
  v1502 = Context;
  *(&v1475 + 1) = "builtin";
  *&v1476 = 7;
  mlir::ConversionTarget::setDialectAction(v1489, &v1475 + 8, 1, 0);
  *(&v1475 + 1) = "func";
  *&v1476 = 4;
  mlir::ConversionTarget::setDialectAction(v1489, &v1475 + 8, 1, 0);
  *(&v1475 + 1) = "mps";
  *&v1476 = 3;
  mlir::ConversionTarget::setDialectAction(v1489, &v1475 + 8, 1, 0);
  *(&v1475 + 1) = "mpsx";
  *&v1476 = 4;
  mlir::ConversionTarget::setDialectAction(v1489, &v1475 + 8, 1, 0);
  *(&v1475 + 1) = "scf";
  *&v1476 = 3;
  mlir::ConversionTarget::setDialectAction(v1489, &v1475 + 8, 1, 0);
  v1474 = &v1475 + 8;
  *(&v1475 + 1) = "tensor";
  *&v1476 = 6;
  *&v1475 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v1489, &v1475 + 8, 1, 0);
  v3 = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v1475 = 0u;
  v1476 = 0u;
  v1474 = v3;
  v1477 = &v1479;
  v1478 = 0x600000000;
  v1480 = 0;
  v1481 = 0;
  v1482 = 0;
  v1483 = 0;
  v1484 = 0;
  v1485 = 0x2800000000;
  v1486 = 0;
  v1487 = 0;
  v1488 = 0x2800000000;
  if (*(this + 495) < 0)
  {
    std::string::__init_copy_ctor_external(&v1470, *(this + 59), *(this + 60));
  }

  else
  {
    v1470 = *(this + 472);
  }

  v4 = operator new(0x80uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v4 + 8), "coreml.constant", 15, __p[0], Context, 0, 0);
  *(v4 + 12) = 0;
  *v4 = &unk_1F5B36140;
  if (SHIBYTE(v1470.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 104), v1470.__r_.__value_.__l.__data_, v1470.__r_.__value_.__l.__size_);
    if (*(v4 + 9))
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(v4 + 104) = v1470;
    if (*(v4 + 9))
    {
      goto LABEL_15;
    }
  }

  __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConstantOpLowering]";
  __p[1] = 91;
  v5 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
  if (__p[1] >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = __p[0] + v6;
  v8 = (__p[1] - v6);
  if ((__p[1] - v6) >= 0x12)
  {
    v9 = 18;
  }

  else
  {
    v9 = __p[1] - v6;
  }

  v10 = &v7[v9];
  v11 = &v8[-v9];
  if (v11 >= v11 - 1)
  {
    --v11;
  }

  *(v4 + 8) = v10;
  *(v4 + 9) = v11;
LABEL_15:
  v12 = *(v4 + 22);
  if (v12 > *(v4 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 80), (v4 + 96), v12, 16);
    LODWORD(v12) = *(v4 + 22);
  }

  *(v4 + 22) = v12;
  v13 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v15 = v1475;
    v16 = *(&v1475 + 1) - v1475;
    v17 = (*(&v1475 + 1) - v1475) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v19 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        goto LABEL_2011;
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v4;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *&v1475 = v21;
    *(&v1475 + 1) = v14;
    *&v1476 = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    **(&v1475 + 1) = v4;
    v14 = (v13 + 8);
  }

  *(&v1475 + 1) = v14;
  v23 = operator new(0x70uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v23 + 1), "coreml.graph", 12, __p[0], Context, 0, 0);
  v23[12] = 0;
  *v23 = &unk_1F5B361A8;
  v23[13] = this + 592;
  if (!v23[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::GraphOpPattern]";
    __p[1] = 87;
    v24 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = __p[1];
    }

    v26 = __p[0] + v25;
    v27 = (__p[1] - v25);
    if ((__p[1] - v25) >= 0x12)
    {
      v28 = 18;
    }

    else
    {
      v28 = __p[1] - v25;
    }

    v29 = &v26[v28];
    v30 = &v27[-v28];
    if (v30 >= v30 - 1)
    {
      --v30;
    }

    v23[8] = v29;
    v23[9] = v30;
  }

  v31 = *(v23 + 22);
  if (v31 > *(v23 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v23 + 10), (v23 + 12), v31, 16);
    LODWORD(v31) = *(v23 + 22);
  }

  *(v23 + 22) = v31;
  v32 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v34 = v1475;
    v35 = *(&v1475 + 1) - v1475;
    v36 = (*(&v1475 + 1) - v1475) >> 3;
    v37 = v36 + 1;
    if ((v36 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v38 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v37)
    {
      v37 = v38 >> 2;
    }

    if (v38 >= 0x7FFFFFFFFFFFFFF8)
    {
      v39 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      if (v39 >> 61)
      {
        goto LABEL_2011;
      }

      v40 = operator new(8 * v39);
    }

    else
    {
      v40 = 0;
    }

    v41 = &v40[8 * v36];
    *v41 = v23;
    v33 = v41 + 8;
    memcpy(v40, v34, v35);
    *&v1475 = v40;
    *(&v1475 + 1) = v33;
    *&v1476 = &v40[8 * v39];
    if (v34)
    {
      operator delete(v34);
    }
  }

  else
  {
    **(&v1475 + 1) = v23;
    v33 = (v32 + 8);
  }

  *(&v1475 + 1) = v33;
  v42 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v42 + 1), "coreml.batch_matmul", 19, __p[0], Context, 0, 0);
  v42[12] = 0;
  *v42 = &unk_1F5B36210;
  if (!v42[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::BatchMatmulOpPattern]";
    __p[1] = 93;
    v43 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = __p[1];
    }

    v45 = __p[0] + v44;
    v46 = (__p[1] - v44);
    if ((__p[1] - v44) >= 0x12)
    {
      v47 = 18;
    }

    else
    {
      v47 = __p[1] - v44;
    }

    v48 = &v45[v47];
    v49 = &v46[-v47];
    if (v49 >= v49 - 1)
    {
      --v49;
    }

    v42[8] = v48;
    v42[9] = v49;
  }

  v50 = *(v42 + 22);
  if (v50 > *(v42 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v42 + 10), (v42 + 12), v50, 16);
    LODWORD(v50) = *(v42 + 22);
  }

  *(v42 + 22) = v50;
  v51 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v53 = v1475;
    v54 = *(&v1475 + 1) - v1475;
    v55 = (*(&v1475 + 1) - v1475) >> 3;
    v56 = v55 + 1;
    if ((v55 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v57 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v56)
    {
      v56 = v57 >> 2;
    }

    if (v57 >= 0x7FFFFFFFFFFFFFF8)
    {
      v58 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v58 = v56;
    }

    if (v58)
    {
      if (v58 >> 61)
      {
        goto LABEL_2011;
      }

      v59 = operator new(8 * v58);
    }

    else
    {
      v59 = 0;
    }

    v60 = &v59[8 * v55];
    *v60 = v42;
    v52 = v60 + 8;
    memcpy(v59, v53, v54);
    *&v1475 = v59;
    *(&v1475 + 1) = v52;
    *&v1476 = &v59[8 * v58];
    if (v53)
    {
      operator delete(v53);
    }
  }

  else
  {
    **(&v1475 + 1) = v42;
    v52 = (v51 + 8);
  }

  *(&v1475 + 1) = v52;
  v61 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v61 + 1), "coreml.module", 13, __p[0], Context, 0, 0);
  v61[12] = 0;
  *v61 = &unk_1F5B36278;
  if (!v61[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ModuleOpPattern]";
    __p[1] = 88;
    v62 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = __p[1];
    }

    v64 = __p[0] + v63;
    v65 = (__p[1] - v63);
    if ((__p[1] - v63) >= 0x12)
    {
      v66 = 18;
    }

    else
    {
      v66 = __p[1] - v63;
    }

    v67 = &v64[v66];
    v68 = &v65[-v66];
    if (v68 >= v68 - 1)
    {
      --v68;
    }

    v61[8] = v67;
    v61[9] = v68;
  }

  v69 = *(v61 + 22);
  if (v69 > *(v61 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v61 + 10), (v61 + 12), v69, 16);
    LODWORD(v69) = *(v61 + 22);
  }

  *(v61 + 22) = v69;
  v70 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v72 = v1475;
    v73 = *(&v1475 + 1) - v1475;
    v74 = (*(&v1475 + 1) - v1475) >> 3;
    v75 = v74 + 1;
    if ((v74 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v76 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v75)
    {
      v75 = v76 >> 2;
    }

    if (v76 >= 0x7FFFFFFFFFFFFFF8)
    {
      v77 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v77 = v75;
    }

    if (v77)
    {
      if (v77 >> 61)
      {
        goto LABEL_2011;
      }

      v78 = operator new(8 * v77);
    }

    else
    {
      v78 = 0;
    }

    v79 = &v78[8 * v74];
    *v79 = v61;
    v71 = v79 + 8;
    memcpy(v78, v72, v73);
    *&v1475 = v78;
    *(&v1475 + 1) = v71;
    *&v1476 = &v78[8 * v77];
    if (v72)
    {
      operator delete(v72);
    }
  }

  else
  {
    **(&v1475 + 1) = v61;
    v71 = (v70 + 8);
  }

  *(&v1475 + 1) = v71;
  v80 = operator new(0x70uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v80 + 1), "coreml.output", 13, __p[0], Context, 0, 0);
  v80[12] = 0;
  *v80 = &unk_1F5B362E0;
  v80[13] = this + 616;
  if (!v80[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::OutputOpPattern]";
    __p[1] = 88;
    v81 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v81)
    {
      v82 = v81;
    }

    else
    {
      v82 = __p[1];
    }

    v83 = __p[0] + v82;
    v84 = (__p[1] - v82);
    if ((__p[1] - v82) >= 0x12)
    {
      v85 = 18;
    }

    else
    {
      v85 = __p[1] - v82;
    }

    v86 = &v83[v85];
    v87 = &v84[-v85];
    if (v87 >= v87 - 1)
    {
      --v87;
    }

    v80[8] = v86;
    v80[9] = v87;
  }

  v88 = *(v80 + 22);
  if (v88 > *(v80 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v80 + 10), (v80 + 12), v88, 16);
    LODWORD(v88) = *(v80 + 22);
  }

  *(v80 + 22) = v88;
  v89 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v91 = v1475;
    v92 = *(&v1475 + 1) - v1475;
    v93 = (*(&v1475 + 1) - v1475) >> 3;
    v94 = v93 + 1;
    if ((v93 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v95 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v94)
    {
      v94 = v95 >> 2;
    }

    if (v95 >= 0x7FFFFFFFFFFFFFF8)
    {
      v96 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v96 = v94;
    }

    if (v96)
    {
      if (v96 >> 61)
      {
        goto LABEL_2011;
      }

      v97 = operator new(8 * v96);
    }

    else
    {
      v97 = 0;
    }

    v98 = &v97[8 * v93];
    *v98 = v80;
    v90 = v98 + 8;
    memcpy(v97, v91, v92);
    *&v1475 = v97;
    *(&v1475 + 1) = v90;
    *&v1476 = &v97[8 * v96];
    if (v91)
    {
      operator delete(v91);
    }
  }

  else
  {
    **(&v1475 + 1) = v80;
    v90 = (v89 + 8);
  }

  *(&v1475 + 1) = v90;
  v99 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v99 + 1), "coreml.add", 10, __p[0], Context, 0, 0);
  v99[12] = 0;
  *v99 = &unk_1F5B36348;
  if (!v99[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::AddOp, mlir::mps::AddOp>]";
    __p[1] = 142;
    v100 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v100)
    {
      v101 = v100;
    }

    else
    {
      v101 = __p[1];
    }

    v102 = __p[0] + v101;
    v103 = (__p[1] - v101);
    if ((__p[1] - v101) >= 0x12)
    {
      v104 = 18;
    }

    else
    {
      v104 = __p[1] - v101;
    }

    v105 = &v102[v104];
    v106 = &v103[-v104];
    if (v106 >= v106 - 1)
    {
      --v106;
    }

    v99[8] = v105;
    v99[9] = v106;
  }

  v107 = *(v99 + 22);
  if (v107 > *(v99 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v99 + 10), (v99 + 12), v107, 16);
    LODWORD(v107) = *(v99 + 22);
  }

  *(v99 + 22) = v107;
  v108 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v110 = v1475;
    v111 = *(&v1475 + 1) - v1475;
    v112 = (*(&v1475 + 1) - v1475) >> 3;
    v113 = v112 + 1;
    if ((v112 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v114 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v113)
    {
      v113 = v114 >> 2;
    }

    if (v114 >= 0x7FFFFFFFFFFFFFF8)
    {
      v115 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v115 = v113;
    }

    if (v115)
    {
      if (v115 >> 61)
      {
        goto LABEL_2011;
      }

      v116 = operator new(8 * v115);
    }

    else
    {
      v116 = 0;
    }

    v117 = &v116[8 * v112];
    *v117 = v99;
    v109 = v117 + 8;
    memcpy(v116, v110, v111);
    *&v1475 = v116;
    *(&v1475 + 1) = v109;
    *&v1476 = &v116[8 * v115];
    if (v110)
    {
      operator delete(v110);
    }
  }

  else
  {
    **(&v1475 + 1) = v99;
    v109 = (v108 + 8);
  }

  *(&v1475 + 1) = v109;
  v118 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v118 + 1), "coreml.sub", 10, __p[0], Context, 0, 0);
  v118[12] = 0;
  *v118 = &unk_1F5B363B0;
  if (!v118[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::SubOp, mlir::mps::SubtractOp>]";
    __p[1] = 147;
    v119 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v119)
    {
      v120 = v119;
    }

    else
    {
      v120 = __p[1];
    }

    v121 = __p[0] + v120;
    v122 = (__p[1] - v120);
    if ((__p[1] - v120) >= 0x12)
    {
      v123 = 18;
    }

    else
    {
      v123 = __p[1] - v120;
    }

    v124 = &v121[v123];
    v125 = &v122[-v123];
    if (v125 >= v125 - 1)
    {
      --v125;
    }

    v118[8] = v124;
    v118[9] = v125;
  }

  v126 = *(v118 + 22);
  if (v126 > *(v118 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v118 + 10), (v118 + 12), v126, 16);
    LODWORD(v126) = *(v118 + 22);
  }

  *(v118 + 22) = v126;
  v127 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v129 = v1475;
    v130 = *(&v1475 + 1) - v1475;
    v131 = (*(&v1475 + 1) - v1475) >> 3;
    v132 = v131 + 1;
    if ((v131 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v133 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v132)
    {
      v132 = v133 >> 2;
    }

    if (v133 >= 0x7FFFFFFFFFFFFFF8)
    {
      v134 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v134 = v132;
    }

    if (v134)
    {
      if (v134 >> 61)
      {
        goto LABEL_2011;
      }

      v135 = operator new(8 * v134);
    }

    else
    {
      v135 = 0;
    }

    v136 = &v135[8 * v131];
    *v136 = v118;
    v128 = v136 + 8;
    memcpy(v135, v129, v130);
    *&v1475 = v135;
    *(&v1475 + 1) = v128;
    *&v1476 = &v135[8 * v134];
    if (v129)
    {
      operator delete(v129);
    }
  }

  else
  {
    **(&v1475 + 1) = v118;
    v128 = (v127 + 8);
  }

  *(&v1475 + 1) = v128;
  v137 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v137 + 1), "coreml.mul", 10, __p[0], Context, 0, 0);
  v137[12] = 0;
  *v137 = &unk_1F5B36418;
  if (!v137[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::MulOp, mlir::mps::MultiplyOp>]";
    __p[1] = 147;
    v138 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v138)
    {
      v139 = v138;
    }

    else
    {
      v139 = __p[1];
    }

    v140 = __p[0] + v139;
    v141 = (__p[1] - v139);
    if ((__p[1] - v139) >= 0x12)
    {
      v142 = 18;
    }

    else
    {
      v142 = __p[1] - v139;
    }

    v143 = &v140[v142];
    v144 = &v141[-v142];
    if (v144 >= v144 - 1)
    {
      --v144;
    }

    v137[8] = v143;
    v137[9] = v144;
  }

  v145 = *(v137 + 22);
  if (v145 > *(v137 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v137 + 10), (v137 + 12), v145, 16);
    LODWORD(v145) = *(v137 + 22);
  }

  *(v137 + 22) = v145;
  v146 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v148 = v1475;
    v149 = *(&v1475 + 1) - v1475;
    v150 = (*(&v1475 + 1) - v1475) >> 3;
    v151 = v150 + 1;
    if ((v150 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v152 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v151)
    {
      v151 = v152 >> 2;
    }

    if (v152 >= 0x7FFFFFFFFFFFFFF8)
    {
      v153 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v153 = v151;
    }

    if (v153)
    {
      if (v153 >> 61)
      {
        goto LABEL_2011;
      }

      v154 = operator new(8 * v153);
    }

    else
    {
      v154 = 0;
    }

    v155 = &v154[8 * v150];
    *v155 = v137;
    v147 = v155 + 8;
    memcpy(v154, v148, v149);
    *&v1475 = v154;
    *(&v1475 + 1) = v147;
    *&v1476 = &v154[8 * v153];
    if (v148)
    {
      operator delete(v148);
    }
  }

  else
  {
    **(&v1475 + 1) = v137;
    v147 = (v146 + 8);
  }

  *(&v1475 + 1) = v147;
  v156 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v156 + 1), "coreml.floor_divide", 19, __p[0], Context, 0, 0);
  v156[12] = 0;
  *v156 = &unk_1F5B36480;
  if (!v156[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::FloorDivideOp, mlir::mps::FloorDivideOp>]";
    __p[1] = 158;
    v157 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v157)
    {
      v158 = v157;
    }

    else
    {
      v158 = __p[1];
    }

    v159 = __p[0] + v158;
    v160 = (__p[1] - v158);
    if ((__p[1] - v158) >= 0x12)
    {
      v161 = 18;
    }

    else
    {
      v161 = __p[1] - v158;
    }

    v162 = &v159[v161];
    v163 = &v160[-v161];
    if (v163 >= v163 - 1)
    {
      --v163;
    }

    v156[8] = v162;
    v156[9] = v163;
  }

  v164 = *(v156 + 22);
  if (v164 > *(v156 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v156 + 10), (v156 + 12), v164, 16);
    LODWORD(v164) = *(v156 + 22);
  }

  *(v156 + 22) = v164;
  v165 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v167 = v1475;
    v168 = *(&v1475 + 1) - v1475;
    v169 = (*(&v1475 + 1) - v1475) >> 3;
    v170 = v169 + 1;
    if ((v169 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v171 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v170)
    {
      v170 = v171 >> 2;
    }

    if (v171 >= 0x7FFFFFFFFFFFFFF8)
    {
      v172 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v172 = v170;
    }

    if (v172)
    {
      if (v172 >> 61)
      {
        goto LABEL_2011;
      }

      v173 = operator new(8 * v172);
    }

    else
    {
      v173 = 0;
    }

    v174 = &v173[8 * v169];
    *v174 = v156;
    v166 = v174 + 8;
    memcpy(v173, v167, v168);
    *&v1475 = v173;
    *(&v1475 + 1) = v166;
    *&v1476 = &v173[8 * v172];
    if (v167)
    {
      operator delete(v167);
    }
  }

  else
  {
    **(&v1475 + 1) = v156;
    v166 = (v165 + 8);
  }

  *(&v1475 + 1) = v166;
  v175 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v175 + 1), "coreml.divide", 13, __p[0], Context, 0, 0);
  v175[12] = 0;
  *v175 = &unk_1F5B364E8;
  if (!v175[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::DivideOp, mlir::mps::DivideOp>]";
    __p[1] = 148;
    v176 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v176)
    {
      v177 = v176;
    }

    else
    {
      v177 = __p[1];
    }

    v178 = __p[0] + v177;
    v179 = (__p[1] - v177);
    if ((__p[1] - v177) >= 0x12)
    {
      v180 = 18;
    }

    else
    {
      v180 = __p[1] - v177;
    }

    v181 = &v178[v180];
    v182 = &v179[-v180];
    if (v182 >= v182 - 1)
    {
      --v182;
    }

    v175[8] = v181;
    v175[9] = v182;
  }

  v183 = *(v175 + 22);
  if (v183 > *(v175 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v175 + 10), (v175 + 12), v183, 16);
    LODWORD(v183) = *(v175 + 22);
  }

  *(v175 + 22) = v183;
  v184 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v186 = v1475;
    v187 = *(&v1475 + 1) - v1475;
    v188 = (*(&v1475 + 1) - v1475) >> 3;
    v189 = v188 + 1;
    if ((v188 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v190 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v189)
    {
      v189 = v190 >> 2;
    }

    if (v190 >= 0x7FFFFFFFFFFFFFF8)
    {
      v191 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v191 = v189;
    }

    if (v191)
    {
      if (v191 >> 61)
      {
        goto LABEL_2011;
      }

      v192 = operator new(8 * v191);
    }

    else
    {
      v192 = 0;
    }

    v193 = &v192[8 * v188];
    *v193 = v175;
    v185 = v193 + 8;
    memcpy(v192, v186, v187);
    *&v1475 = v192;
    *(&v1475 + 1) = v185;
    *&v1476 = &v192[8 * v191];
    if (v186)
    {
      operator delete(v186);
    }
  }

  else
  {
    **(&v1475 + 1) = v175;
    v185 = (v184 + 8);
  }

  *(&v1475 + 1) = v185;
  v194 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v194 + 1), "coreml.pow", 10, __p[0], Context, 0, 0);
  v194[12] = 0;
  *v194 = &unk_1F5B36550;
  if (!v194[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::PowOp, mlir::mps::PowerOp>]";
    __p[1] = 144;
    v195 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v195)
    {
      v196 = v195;
    }

    else
    {
      v196 = __p[1];
    }

    v197 = __p[0] + v196;
    v198 = (__p[1] - v196);
    if ((__p[1] - v196) >= 0x12)
    {
      v199 = 18;
    }

    else
    {
      v199 = __p[1] - v196;
    }

    v200 = &v197[v199];
    v201 = &v198[-v199];
    if (v201 >= v201 - 1)
    {
      --v201;
    }

    v194[8] = v200;
    v194[9] = v201;
  }

  v202 = *(v194 + 22);
  if (v202 > *(v194 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v194 + 10), (v194 + 12), v202, 16);
    LODWORD(v202) = *(v194 + 22);
  }

  *(v194 + 22) = v202;
  v203 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v205 = v1475;
    v206 = *(&v1475 + 1) - v1475;
    v207 = (*(&v1475 + 1) - v1475) >> 3;
    v208 = v207 + 1;
    if ((v207 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v209 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v208)
    {
      v208 = v209 >> 2;
    }

    if (v209 >= 0x7FFFFFFFFFFFFFF8)
    {
      v210 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v210 = v208;
    }

    if (v210)
    {
      if (v210 >> 61)
      {
        goto LABEL_2011;
      }

      v211 = operator new(8 * v210);
    }

    else
    {
      v211 = 0;
    }

    v212 = &v211[8 * v207];
    *v212 = v194;
    v204 = v212 + 8;
    memcpy(v211, v205, v206);
    *&v1475 = v211;
    *(&v1475 + 1) = v204;
    *&v1476 = &v211[8 * v210];
    if (v205)
    {
      operator delete(v205);
    }
  }

  else
  {
    **(&v1475 + 1) = v194;
    v204 = (v203 + 8);
  }

  *(&v1475 + 1) = v204;
  v213 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v213 + 1), "coreml.minimum", 14, __p[0], Context, 0, 0);
  v213[12] = 0;
  *v213 = &unk_1F5B365B8;
  if (!v213[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::MinimumOp, mlir::mps::MinimumOp>]";
    __p[1] = 150;
    v214 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v214)
    {
      v215 = v214;
    }

    else
    {
      v215 = __p[1];
    }

    v216 = __p[0] + v215;
    v217 = (__p[1] - v215);
    if ((__p[1] - v215) >= 0x12)
    {
      v218 = 18;
    }

    else
    {
      v218 = __p[1] - v215;
    }

    v219 = &v216[v218];
    v220 = &v217[-v218];
    if (v220 >= v220 - 1)
    {
      --v220;
    }

    v213[8] = v219;
    v213[9] = v220;
  }

  v221 = *(v213 + 22);
  if (v221 > *(v213 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v213 + 10), (v213 + 12), v221, 16);
    LODWORD(v221) = *(v213 + 22);
  }

  *(v213 + 22) = v221;
  v222 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v224 = v1475;
    v225 = *(&v1475 + 1) - v1475;
    v226 = (*(&v1475 + 1) - v1475) >> 3;
    v227 = v226 + 1;
    if ((v226 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v228 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v227)
    {
      v227 = v228 >> 2;
    }

    if (v228 >= 0x7FFFFFFFFFFFFFF8)
    {
      v229 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v229 = v227;
    }

    if (v229)
    {
      if (v229 >> 61)
      {
        goto LABEL_2011;
      }

      v230 = operator new(8 * v229);
    }

    else
    {
      v230 = 0;
    }

    v231 = &v230[8 * v226];
    *v231 = v213;
    v223 = v231 + 8;
    memcpy(v230, v224, v225);
    *&v1475 = v230;
    *(&v1475 + 1) = v223;
    *&v1476 = &v230[8 * v229];
    if (v224)
    {
      operator delete(v224);
    }
  }

  else
  {
    **(&v1475 + 1) = v213;
    v223 = (v222 + 8);
  }

  *(&v1475 + 1) = v223;
  v232 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v232 + 1), "coreml.maximum", 14, __p[0], Context, 0, 0);
  v232[12] = 0;
  *v232 = &unk_1F5B36620;
  if (!v232[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::MaximumOp, mlir::mps::MaximumOp>]";
    __p[1] = 150;
    v233 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v233)
    {
      v234 = v233;
    }

    else
    {
      v234 = __p[1];
    }

    v235 = __p[0] + v234;
    v236 = (__p[1] - v234);
    if ((__p[1] - v234) >= 0x12)
    {
      v237 = 18;
    }

    else
    {
      v237 = __p[1] - v234;
    }

    v238 = &v235[v237];
    v239 = &v236[-v237];
    if (v239 >= v239 - 1)
    {
      --v239;
    }

    v232[8] = v238;
    v232[9] = v239;
  }

  v240 = *(v232 + 22);
  if (v240 > *(v232 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v232 + 10), (v232 + 12), v240, 16);
    LODWORD(v240) = *(v232 + 22);
  }

  *(v232 + 22) = v240;
  v241 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v243 = v1475;
    v244 = *(&v1475 + 1) - v1475;
    v245 = (*(&v1475 + 1) - v1475) >> 3;
    v246 = v245 + 1;
    if ((v245 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v247 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v246)
    {
      v246 = v247 >> 2;
    }

    if (v247 >= 0x7FFFFFFFFFFFFFF8)
    {
      v248 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v248 = v246;
    }

    if (v248)
    {
      if (v248 >> 61)
      {
        goto LABEL_2011;
      }

      v249 = operator new(8 * v248);
    }

    else
    {
      v249 = 0;
    }

    v250 = &v249[8 * v245];
    *v250 = v232;
    v242 = v250 + 8;
    memcpy(v249, v243, v244);
    *&v1475 = v249;
    *(&v1475 + 1) = v242;
    *&v1476 = &v249[8 * v248];
    if (v243)
    {
      operator delete(v243);
    }
  }

  else
  {
    **(&v1475 + 1) = v232;
    v242 = (v241 + 8);
  }

  *(&v1475 + 1) = v242;
  v251 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v251 + 1), "coreml.modulo", 13, __p[0], Context, 0, 0);
  v251[12] = 0;
  *v251 = &unk_1F5B36688;
  if (!v251[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::ModuloOp, mlir::mps::ModuloOp>]";
    __p[1] = 148;
    v252 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v252)
    {
      v253 = v252;
    }

    else
    {
      v253 = __p[1];
    }

    v254 = __p[0] + v253;
    v255 = (__p[1] - v253);
    if ((__p[1] - v253) >= 0x12)
    {
      v256 = 18;
    }

    else
    {
      v256 = __p[1] - v253;
    }

    v257 = &v254[v256];
    v258 = &v255[-v256];
    if (v258 >= v258 - 1)
    {
      --v258;
    }

    v251[8] = v257;
    v251[9] = v258;
  }

  v259 = *(v251 + 22);
  if (v259 > *(v251 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v251 + 10), (v251 + 12), v259, 16);
    LODWORD(v259) = *(v251 + 22);
  }

  *(v251 + 22) = v259;
  v260 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v262 = v1475;
    v263 = *(&v1475 + 1) - v1475;
    v264 = (*(&v1475 + 1) - v1475) >> 3;
    v265 = v264 + 1;
    if ((v264 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v266 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v265)
    {
      v265 = v266 >> 2;
    }

    if (v266 >= 0x7FFFFFFFFFFFFFF8)
    {
      v267 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v267 = v265;
    }

    if (v267)
    {
      if (v267 >> 61)
      {
        goto LABEL_2011;
      }

      v268 = operator new(8 * v267);
    }

    else
    {
      v268 = 0;
    }

    v269 = &v268[8 * v264];
    *v269 = v251;
    v261 = v269 + 8;
    memcpy(v268, v262, v263);
    *&v1475 = v268;
    *(&v1475 + 1) = v261;
    *&v1476 = &v268[8 * v267];
    if (v262)
    {
      operator delete(v262);
    }
  }

  else
  {
    **(&v1475 + 1) = v251;
    v261 = (v260 + 8);
  }

  *(&v1475 + 1) = v261;
  v270 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v270 + 1), "coreml.cos", 10, __p[0], Context, 0, 0);
  v270[12] = 0;
  *v270 = &unk_1F5B366F0;
  if (!v270[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::CosOp, mlir::mps::CosOp>]";
    __p[1] = 142;
    v271 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v271)
    {
      v272 = v271;
    }

    else
    {
      v272 = __p[1];
    }

    v273 = __p[0] + v272;
    v274 = (__p[1] - v272);
    if ((__p[1] - v272) >= 0x12)
    {
      v275 = 18;
    }

    else
    {
      v275 = __p[1] - v272;
    }

    v276 = &v273[v275];
    v277 = &v274[-v275];
    if (v277 >= v277 - 1)
    {
      --v277;
    }

    v270[8] = v276;
    v270[9] = v277;
  }

  v278 = *(v270 + 22);
  if (v278 > *(v270 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v270 + 10), (v270 + 12), v278, 16);
    LODWORD(v278) = *(v270 + 22);
  }

  *(v270 + 22) = v278;
  v279 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v281 = v1475;
    v282 = *(&v1475 + 1) - v1475;
    v283 = (*(&v1475 + 1) - v1475) >> 3;
    v284 = v283 + 1;
    if ((v283 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v285 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v284)
    {
      v284 = v285 >> 2;
    }

    if (v285 >= 0x7FFFFFFFFFFFFFF8)
    {
      v286 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v286 = v284;
    }

    if (v286)
    {
      if (v286 >> 61)
      {
        goto LABEL_2011;
      }

      v287 = operator new(8 * v286);
    }

    else
    {
      v287 = 0;
    }

    v288 = &v287[8 * v283];
    *v288 = v270;
    v280 = v288 + 8;
    memcpy(v287, v281, v282);
    *&v1475 = v287;
    *(&v1475 + 1) = v280;
    *&v1476 = &v287[8 * v286];
    if (v281)
    {
      operator delete(v281);
    }
  }

  else
  {
    **(&v1475 + 1) = v270;
    v280 = (v279 + 8);
  }

  *(&v1475 + 1) = v280;
  v289 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v289 + 1), "coreml.log", 10, __p[0], Context, 0, 0);
  v289[12] = 0;
  *v289 = &unk_1F5B36758;
  if (!v289[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::LogOp, mlir::mps::LogarithmOp>]";
    __p[1] = 148;
    v290 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v290)
    {
      v291 = v290;
    }

    else
    {
      v291 = __p[1];
    }

    v292 = __p[0] + v291;
    v293 = (__p[1] - v291);
    if ((__p[1] - v291) >= 0x12)
    {
      v294 = 18;
    }

    else
    {
      v294 = __p[1] - v291;
    }

    v295 = &v292[v294];
    v296 = &v293[-v294];
    if (v296 >= v296 - 1)
    {
      --v296;
    }

    v289[8] = v295;
    v289[9] = v296;
  }

  v297 = *(v289 + 22);
  if (v297 > *(v289 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v289 + 10), (v289 + 12), v297, 16);
    LODWORD(v297) = *(v289 + 22);
  }

  *(v289 + 22) = v297;
  v298 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v300 = v1475;
    v301 = *(&v1475 + 1) - v1475;
    v302 = (*(&v1475 + 1) - v1475) >> 3;
    v303 = v302 + 1;
    if ((v302 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v304 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v303)
    {
      v303 = v304 >> 2;
    }

    if (v304 >= 0x7FFFFFFFFFFFFFF8)
    {
      v305 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v305 = v303;
    }

    if (v305)
    {
      if (v305 >> 61)
      {
        goto LABEL_2011;
      }

      v306 = operator new(8 * v305);
    }

    else
    {
      v306 = 0;
    }

    v307 = &v306[8 * v302];
    *v307 = v289;
    v299 = v307 + 8;
    memcpy(v306, v300, v301);
    *&v1475 = v306;
    *(&v1475 + 1) = v299;
    *&v1476 = &v306[8 * v305];
    if (v300)
    {
      operator delete(v300);
    }
  }

  else
  {
    **(&v1475 + 1) = v289;
    v299 = (v298 + 8);
  }

  *(&v1475 + 1) = v299;
  v308 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v308 + 1), "coreml.silu", 11, __p[0], Context, 0, 0);
  v308[12] = 0;
  *v308 = &unk_1F5B367C0;
  if (!v308[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::SiluOp, mlir::mps::SwishOp>]";
    __p[1] = 145;
    v309 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v309)
    {
      v310 = v309;
    }

    else
    {
      v310 = __p[1];
    }

    v311 = __p[0] + v310;
    v312 = (__p[1] - v310);
    if ((__p[1] - v310) >= 0x12)
    {
      v313 = 18;
    }

    else
    {
      v313 = __p[1] - v310;
    }

    v314 = &v311[v313];
    v315 = &v312[-v313];
    if (v315 >= v315 - 1)
    {
      --v315;
    }

    v308[8] = v314;
    v308[9] = v315;
  }

  v316 = *(v308 + 22);
  if (v316 > *(v308 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v308 + 10), (v308 + 12), v316, 16);
    LODWORD(v316) = *(v308 + 22);
  }

  *(v308 + 22) = v316;
  v317 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v319 = v1475;
    v320 = *(&v1475 + 1) - v1475;
    v321 = (*(&v1475 + 1) - v1475) >> 3;
    v322 = v321 + 1;
    if ((v321 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v323 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v322)
    {
      v322 = v323 >> 2;
    }

    if (v323 >= 0x7FFFFFFFFFFFFFF8)
    {
      v324 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v324 = v322;
    }

    if (v324)
    {
      if (v324 >> 61)
      {
        goto LABEL_2011;
      }

      v325 = operator new(8 * v324);
    }

    else
    {
      v325 = 0;
    }

    v326 = &v325[8 * v321];
    *v326 = v308;
    v318 = v326 + 8;
    memcpy(v325, v319, v320);
    *&v1475 = v325;
    *(&v1475 + 1) = v318;
    *&v1476 = &v325[8 * v324];
    if (v319)
    {
      operator delete(v319);
    }
  }

  else
  {
    **(&v1475 + 1) = v308;
    v318 = (v317 + 8);
  }

  *(&v1475 + 1) = v318;
  v327 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v327 + 1), "coreml.sin", 10, __p[0], Context, 0, 0);
  v327[12] = 0;
  *v327 = &unk_1F5B36828;
  if (!v327[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::SinOp, mlir::mps::SinOp>]";
    __p[1] = 142;
    v328 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v328)
    {
      v329 = v328;
    }

    else
    {
      v329 = __p[1];
    }

    v330 = __p[0] + v329;
    v331 = (__p[1] - v329);
    if ((__p[1] - v329) >= 0x12)
    {
      v332 = 18;
    }

    else
    {
      v332 = __p[1] - v329;
    }

    v333 = &v330[v332];
    v334 = &v331[-v332];
    if (v334 >= v334 - 1)
    {
      --v334;
    }

    v327[8] = v333;
    v327[9] = v334;
  }

  v335 = *(v327 + 22);
  if (v335 > *(v327 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v327 + 10), (v327 + 12), v335, 16);
    LODWORD(v335) = *(v327 + 22);
  }

  *(v327 + 22) = v335;
  v336 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v338 = v1475;
    v339 = *(&v1475 + 1) - v1475;
    v340 = (*(&v1475 + 1) - v1475) >> 3;
    v341 = v340 + 1;
    if ((v340 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v342 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v341)
    {
      v341 = v342 >> 2;
    }

    if (v342 >= 0x7FFFFFFFFFFFFFF8)
    {
      v343 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v343 = v341;
    }

    if (v343)
    {
      if (v343 >> 61)
      {
        goto LABEL_2011;
      }

      v344 = operator new(8 * v343);
    }

    else
    {
      v344 = 0;
    }

    v345 = &v344[8 * v340];
    *v345 = v327;
    v337 = v345 + 8;
    memcpy(v344, v338, v339);
    *&v1475 = v344;
    *(&v1475 + 1) = v337;
    *&v1476 = &v344[8 * v343];
    if (v338)
    {
      operator delete(v338);
    }
  }

  else
  {
    **(&v1475 + 1) = v327;
    v337 = (v336 + 8);
  }

  *(&v1475 + 1) = v337;
  v346 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v346 + 1), "coreml.rsqrt", 12, __p[0], Context, 0, 0);
  v346[12] = 0;
  *v346 = &unk_1F5B36890;
  if (!v346[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::RsqrtOp, mlir::mps::ReciprocalSquareRootOp>]";
    __p[1] = 161;
    v347 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v347)
    {
      v348 = v347;
    }

    else
    {
      v348 = __p[1];
    }

    v349 = __p[0] + v348;
    v350 = (__p[1] - v348);
    if ((__p[1] - v348) >= 0x12)
    {
      v351 = 18;
    }

    else
    {
      v351 = __p[1] - v348;
    }

    v352 = &v349[v351];
    v353 = &v350[-v351];
    if (v353 >= v353 - 1)
    {
      --v353;
    }

    v346[8] = v352;
    v346[9] = v353;
  }

  v354 = *(v346 + 22);
  if (v354 > *(v346 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v346 + 10), (v346 + 12), v354, 16);
    LODWORD(v354) = *(v346 + 22);
  }

  *(v346 + 22) = v354;
  v355 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v357 = v1475;
    v358 = *(&v1475 + 1) - v1475;
    v359 = (*(&v1475 + 1) - v1475) >> 3;
    v360 = v359 + 1;
    if ((v359 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v361 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v360)
    {
      v360 = v361 >> 2;
    }

    if (v361 >= 0x7FFFFFFFFFFFFFF8)
    {
      v362 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v362 = v360;
    }

    if (v362)
    {
      if (v362 >> 61)
      {
        goto LABEL_2011;
      }

      v363 = operator new(8 * v362);
    }

    else
    {
      v363 = 0;
    }

    v364 = &v363[8 * v359];
    *v364 = v346;
    v356 = v364 + 8;
    memcpy(v363, v357, v358);
    *&v1475 = v363;
    *(&v1475 + 1) = v356;
    *&v1476 = &v363[8 * v362];
    if (v357)
    {
      operator delete(v357);
    }
  }

  else
  {
    **(&v1475 + 1) = v346;
    v356 = (v355 + 8);
  }

  *(&v1475 + 1) = v356;
  v365 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v365 + 1), "coreml.sqrt", 11, __p[0], Context, 0, 0);
  v365[12] = 0;
  *v365 = &unk_1F5B368F8;
  if (!v365[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::SqrtOp, mlir::mps::SquareRootOp>]";
    __p[1] = 150;
    v366 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v366)
    {
      v367 = v366;
    }

    else
    {
      v367 = __p[1];
    }

    v368 = __p[0] + v367;
    v369 = (__p[1] - v367);
    if ((__p[1] - v367) >= 0x12)
    {
      v370 = 18;
    }

    else
    {
      v370 = __p[1] - v367;
    }

    v371 = &v368[v370];
    v372 = &v369[-v370];
    if (v372 >= v372 - 1)
    {
      --v372;
    }

    v365[8] = v371;
    v365[9] = v372;
  }

  v373 = *(v365 + 22);
  if (v373 > *(v365 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v365 + 10), (v365 + 12), v373, 16);
    LODWORD(v373) = *(v365 + 22);
  }

  *(v365 + 22) = v373;
  v374 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v376 = v1475;
    v377 = *(&v1475 + 1) - v1475;
    v378 = (*(&v1475 + 1) - v1475) >> 3;
    v379 = v378 + 1;
    if ((v378 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v380 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v379)
    {
      v379 = v380 >> 2;
    }

    if (v380 >= 0x7FFFFFFFFFFFFFF8)
    {
      v381 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v381 = v379;
    }

    if (v381)
    {
      if (v381 >> 61)
      {
        goto LABEL_2011;
      }

      v382 = operator new(8 * v381);
    }

    else
    {
      v382 = 0;
    }

    v383 = &v382[8 * v378];
    *v383 = v365;
    v375 = v383 + 8;
    memcpy(v382, v376, v377);
    *&v1475 = v382;
    *(&v1475 + 1) = v375;
    *&v1476 = &v382[8 * v381];
    if (v376)
    {
      operator delete(v376);
    }
  }

  else
  {
    **(&v1475 + 1) = v365;
    v375 = (v374 + 8);
  }

  *(&v1475 + 1) = v375;
  v384 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v384 + 1), "coreml.tanh", 11, __p[0], Context, 0, 0);
  v384[12] = 0;
  *v384 = &unk_1F5B36960;
  if (!v384[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::TanhOp, mlir::mps::TanhOp>]";
    __p[1] = 144;
    v385 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v385)
    {
      v386 = v385;
    }

    else
    {
      v386 = __p[1];
    }

    v387 = __p[0] + v386;
    v388 = (__p[1] - v386);
    if ((__p[1] - v386) >= 0x12)
    {
      v389 = 18;
    }

    else
    {
      v389 = __p[1] - v386;
    }

    v390 = &v387[v389];
    v391 = &v388[-v389];
    if (v391 >= v391 - 1)
    {
      --v391;
    }

    v384[8] = v390;
    v384[9] = v391;
  }

  v392 = *(v384 + 22);
  if (v392 > *(v384 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v384 + 10), (v384 + 12), v392, 16);
    LODWORD(v392) = *(v384 + 22);
  }

  *(v384 + 22) = v392;
  v393 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v395 = v1475;
    v396 = *(&v1475 + 1) - v1475;
    v397 = (*(&v1475 + 1) - v1475) >> 3;
    v398 = v397 + 1;
    if ((v397 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v399 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v398)
    {
      v398 = v399 >> 2;
    }

    if (v399 >= 0x7FFFFFFFFFFFFFF8)
    {
      v400 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v400 = v398;
    }

    if (v400)
    {
      if (v400 >> 61)
      {
        goto LABEL_2011;
      }

      v401 = operator new(8 * v400);
    }

    else
    {
      v401 = 0;
    }

    v402 = &v401[8 * v397];
    *v402 = v384;
    v394 = v402 + 8;
    memcpy(v401, v395, v396);
    *&v1475 = v401;
    *(&v1475 + 1) = v394;
    *&v1476 = &v401[8 * v400];
    if (v395)
    {
      operator delete(v395);
    }
  }

  else
  {
    **(&v1475 + 1) = v384;
    v394 = (v393 + 8);
  }

  *(&v1475 + 1) = v394;
  v403 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v403 + 1), "coreml.equal", 12, __p[0], Context, 0, 0);
  v403[12] = 0;
  *v403 = &unk_1F5B369C8;
  if (!v403[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::EqualOp, mlir::mps::EqualToOp>]";
    __p[1] = 148;
    v404 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v404)
    {
      v405 = v404;
    }

    else
    {
      v405 = __p[1];
    }

    v406 = __p[0] + v405;
    v407 = (__p[1] - v405);
    if ((__p[1] - v405) >= 0x12)
    {
      v408 = 18;
    }

    else
    {
      v408 = __p[1] - v405;
    }

    v409 = &v406[v408];
    v410 = &v407[-v408];
    if (v410 >= v410 - 1)
    {
      --v410;
    }

    v403[8] = v409;
    v403[9] = v410;
  }

  v411 = *(v403 + 22);
  if (v411 > *(v403 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v403 + 10), (v403 + 12), v411, 16);
    LODWORD(v411) = *(v403 + 22);
  }

  *(v403 + 22) = v411;
  v412 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v414 = v1475;
    v415 = *(&v1475 + 1) - v1475;
    v416 = (*(&v1475 + 1) - v1475) >> 3;
    v417 = v416 + 1;
    if ((v416 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v418 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v417)
    {
      v417 = v418 >> 2;
    }

    if (v418 >= 0x7FFFFFFFFFFFFFF8)
    {
      v419 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v419 = v417;
    }

    if (v419)
    {
      if (v419 >> 61)
      {
        goto LABEL_2011;
      }

      v420 = operator new(8 * v419);
    }

    else
    {
      v420 = 0;
    }

    v421 = &v420[8 * v416];
    *v421 = v403;
    v413 = v421 + 8;
    memcpy(v420, v414, v415);
    *&v1475 = v420;
    *(&v1475 + 1) = v413;
    *&v1476 = &v420[8 * v419];
    if (v414)
    {
      operator delete(v414);
    }
  }

  else
  {
    **(&v1475 + 1) = v403;
    v413 = (v412 + 8);
  }

  *(&v1475 + 1) = v413;
  v422 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v422 + 1), "coreml.greater", 14, __p[0], Context, 0, 0);
  v422[12] = 0;
  *v422 = &unk_1F5B36A30;
  if (!v422[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::GreaterOp, mlir::mps::GreaterThanOp>]";
    __p[1] = 154;
    v423 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v423)
    {
      v424 = v423;
    }

    else
    {
      v424 = __p[1];
    }

    v425 = __p[0] + v424;
    v426 = (__p[1] - v424);
    if ((__p[1] - v424) >= 0x12)
    {
      v427 = 18;
    }

    else
    {
      v427 = __p[1] - v424;
    }

    v428 = &v425[v427];
    v429 = &v426[-v427];
    if (v429 >= v429 - 1)
    {
      --v429;
    }

    v422[8] = v428;
    v422[9] = v429;
  }

  v430 = *(v422 + 22);
  if (v430 > *(v422 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v422 + 10), (v422 + 12), v430, 16);
    LODWORD(v430) = *(v422 + 22);
  }

  *(v422 + 22) = v430;
  v431 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v433 = v1475;
    v434 = *(&v1475 + 1) - v1475;
    v435 = (*(&v1475 + 1) - v1475) >> 3;
    v436 = v435 + 1;
    if ((v435 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v437 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v436)
    {
      v436 = v437 >> 2;
    }

    if (v437 >= 0x7FFFFFFFFFFFFFF8)
    {
      v438 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v438 = v436;
    }

    if (v438)
    {
      if (v438 >> 61)
      {
        goto LABEL_2011;
      }

      v439 = operator new(8 * v438);
    }

    else
    {
      v439 = 0;
    }

    v440 = &v439[8 * v435];
    *v440 = v422;
    v432 = v440 + 8;
    memcpy(v439, v433, v434);
    *&v1475 = v439;
    *(&v1475 + 1) = v432;
    *&v1476 = &v439[8 * v438];
    if (v433)
    {
      operator delete(v433);
    }
  }

  else
  {
    **(&v1475 + 1) = v422;
    v432 = (v431 + 8);
  }

  *(&v1475 + 1) = v432;
  v441 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v441 + 1), "coreml.not_equal", 16, __p[0], Context, 0, 0);
  v441[12] = 0;
  *v441 = &unk_1F5B36A98;
  if (!v441[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::NotEqualOp, mlir::mps::NotEqualToOp>]";
    __p[1] = 154;
    v442 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v442)
    {
      v443 = v442;
    }

    else
    {
      v443 = __p[1];
    }

    v444 = __p[0] + v443;
    v445 = (__p[1] - v443);
    if ((__p[1] - v443) >= 0x12)
    {
      v446 = 18;
    }

    else
    {
      v446 = __p[1] - v443;
    }

    v447 = &v444[v446];
    v448 = &v445[-v446];
    if (v448 >= v448 - 1)
    {
      --v448;
    }

    v441[8] = v447;
    v441[9] = v448;
  }

  v449 = *(v441 + 22);
  if (v449 > *(v441 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v441 + 10), (v441 + 12), v449, 16);
    LODWORD(v449) = *(v441 + 22);
  }

  *(v441 + 22) = v449;
  v450 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v452 = v1475;
    v453 = *(&v1475 + 1) - v1475;
    v454 = (*(&v1475 + 1) - v1475) >> 3;
    v455 = v454 + 1;
    if ((v454 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v456 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v455)
    {
      v455 = v456 >> 2;
    }

    if (v456 >= 0x7FFFFFFFFFFFFFF8)
    {
      v457 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v457 = v455;
    }

    if (v457)
    {
      if (v457 >> 61)
      {
        goto LABEL_2011;
      }

      v458 = operator new(8 * v457);
    }

    else
    {
      v458 = 0;
    }

    v459 = &v458[8 * v454];
    *v459 = v441;
    v451 = v459 + 8;
    memcpy(v458, v452, v453);
    *&v1475 = v458;
    *(&v1475 + 1) = v451;
    *&v1476 = &v458[8 * v457];
    if (v452)
    {
      operator delete(v452);
    }
  }

  else
  {
    **(&v1475 + 1) = v441;
    v451 = (v450 + 8);
  }

  *(&v1475 + 1) = v451;
  v460 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v460 + 1), "coreml.and", 10, __p[0], Context, 0, 0);
  v460[12] = 0;
  *v460 = &unk_1F5B36B00;
  if (!v460[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::AndOp, mlir::mps::AndOp>]";
    __p[1] = 142;
    v461 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v461)
    {
      v462 = v461;
    }

    else
    {
      v462 = __p[1];
    }

    v463 = __p[0] + v462;
    v464 = (__p[1] - v462);
    if ((__p[1] - v462) >= 0x12)
    {
      v465 = 18;
    }

    else
    {
      v465 = __p[1] - v462;
    }

    v466 = &v463[v465];
    v467 = &v464[-v465];
    if (v467 >= v467 - 1)
    {
      --v467;
    }

    v460[8] = v466;
    v460[9] = v467;
  }

  v468 = *(v460 + 22);
  if (v468 > *(v460 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v460 + 10), (v460 + 12), v468, 16);
    LODWORD(v468) = *(v460 + 22);
  }

  *(v460 + 22) = v468;
  v469 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v471 = v1475;
    v472 = *(&v1475 + 1) - v1475;
    v473 = (*(&v1475 + 1) - v1475) >> 3;
    v474 = v473 + 1;
    if ((v473 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v475 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v474)
    {
      v474 = v475 >> 2;
    }

    if (v475 >= 0x7FFFFFFFFFFFFFF8)
    {
      v476 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v476 = v474;
    }

    if (v476)
    {
      if (v476 >> 61)
      {
        goto LABEL_2011;
      }

      v477 = operator new(8 * v476);
    }

    else
    {
      v477 = 0;
    }

    v478 = &v477[8 * v473];
    *v478 = v460;
    v470 = v478 + 8;
    memcpy(v477, v471, v472);
    *&v1475 = v477;
    *(&v1475 + 1) = v470;
    *&v1476 = &v477[8 * v476];
    if (v471)
    {
      operator delete(v471);
    }
  }

  else
  {
    **(&v1475 + 1) = v460;
    v470 = (v469 + 8);
  }

  *(&v1475 + 1) = v470;
  v479 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v479 + 1), "coreml.or", 9, __p[0], Context, 0, 0);
  v479[12] = 0;
  *v479 = &unk_1F5B36B68;
  if (!v479[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::OrOp, mlir::mps::OrOp>]";
    __p[1] = 140;
    v480 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v480)
    {
      v481 = v480;
    }

    else
    {
      v481 = __p[1];
    }

    v482 = __p[0] + v481;
    v483 = (__p[1] - v481);
    if ((__p[1] - v481) >= 0x12)
    {
      v484 = 18;
    }

    else
    {
      v484 = __p[1] - v481;
    }

    v485 = &v482[v484];
    v486 = &v483[-v484];
    if (v486 >= v486 - 1)
    {
      --v486;
    }

    v479[8] = v485;
    v479[9] = v486;
  }

  v487 = *(v479 + 22);
  if (v487 > *(v479 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v479 + 10), (v479 + 12), v487, 16);
    LODWORD(v487) = *(v479 + 22);
  }

  *(v479 + 22) = v487;
  v488 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v490 = v1475;
    v491 = *(&v1475 + 1) - v1475;
    v492 = (*(&v1475 + 1) - v1475) >> 3;
    v493 = v492 + 1;
    if ((v492 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v494 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v493)
    {
      v493 = v494 >> 2;
    }

    if (v494 >= 0x7FFFFFFFFFFFFFF8)
    {
      v495 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v495 = v493;
    }

    if (v495)
    {
      if (v495 >> 61)
      {
        goto LABEL_2011;
      }

      v496 = operator new(8 * v495);
    }

    else
    {
      v496 = 0;
    }

    v497 = &v496[8 * v492];
    *v497 = v479;
    v489 = v497 + 8;
    memcpy(v496, v490, v491);
    *&v1475 = v496;
    *(&v1475 + 1) = v489;
    *&v1476 = &v496[8 * v495];
    if (v490)
    {
      operator delete(v490);
    }
  }

  else
  {
    **(&v1475 + 1) = v479;
    v489 = (v488 + 8);
  }

  *(&v1475 + 1) = v489;
  v498 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v498 + 1), "coreml.not", 10, __p[0], Context, 0, 0);
  v498[12] = 0;
  *v498 = &unk_1F5B36BD0;
  if (!v498[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::NotOp, mlir::mps::NotOp>]";
    __p[1] = 142;
    v499 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v499)
    {
      v500 = v499;
    }

    else
    {
      v500 = __p[1];
    }

    v501 = __p[0] + v500;
    v502 = (__p[1] - v500);
    if ((__p[1] - v500) >= 0x12)
    {
      v503 = 18;
    }

    else
    {
      v503 = __p[1] - v500;
    }

    v504 = &v501[v503];
    v505 = &v502[-v503];
    if (v505 >= v505 - 1)
    {
      --v505;
    }

    v498[8] = v504;
    v498[9] = v505;
  }

  v506 = *(v498 + 22);
  if (v506 > *(v498 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v498 + 10), (v498 + 12), v506, 16);
    LODWORD(v506) = *(v498 + 22);
  }

  *(v498 + 22) = v506;
  v507 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v509 = v1475;
    v510 = *(&v1475 + 1) - v1475;
    v511 = (*(&v1475 + 1) - v1475) >> 3;
    v512 = v511 + 1;
    if ((v511 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v513 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v512)
    {
      v512 = v513 >> 2;
    }

    if (v513 >= 0x7FFFFFFFFFFFFFF8)
    {
      v514 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v514 = v512;
    }

    if (v514)
    {
      if (v514 >> 61)
      {
        goto LABEL_2011;
      }

      v515 = operator new(8 * v514);
    }

    else
    {
      v515 = 0;
    }

    v516 = &v515[8 * v511];
    *v516 = v498;
    v508 = v516 + 8;
    memcpy(v515, v509, v510);
    *&v1475 = v515;
    *(&v1475 + 1) = v508;
    *&v1476 = &v515[8 * v514];
    if (v509)
    {
      operator delete(v509);
    }
  }

  else
  {
    **(&v1475 + 1) = v498;
    v508 = (v507 + 8);
  }

  *(&v1475 + 1) = v508;
  v517 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v517 + 1), "coreml.where", 12, __p[0], Context, 0, 0);
  v517[12] = 0;
  *v517 = &unk_1F5B36C38;
  if (!v517[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::WhereOp, mlir::mps::SelectOp>]";
    __p[1] = 147;
    v518 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v518)
    {
      v519 = v518;
    }

    else
    {
      v519 = __p[1];
    }

    v520 = __p[0] + v519;
    v521 = (__p[1] - v519);
    if ((__p[1] - v519) >= 0x12)
    {
      v522 = 18;
    }

    else
    {
      v522 = __p[1] - v519;
    }

    v523 = &v520[v522];
    v524 = &v521[-v522];
    if (v524 >= v524 - 1)
    {
      --v524;
    }

    v517[8] = v523;
    v517[9] = v524;
  }

  v525 = *(v517 + 22);
  if (v525 > *(v517 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v517 + 10), (v517 + 12), v525, 16);
    LODWORD(v525) = *(v517 + 22);
  }

  *(v517 + 22) = v525;
  v526 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v528 = v1475;
    v529 = *(&v1475 + 1) - v1475;
    v530 = (*(&v1475 + 1) - v1475) >> 3;
    v531 = v530 + 1;
    if ((v530 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v532 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v531)
    {
      v531 = v532 >> 2;
    }

    if (v532 >= 0x7FFFFFFFFFFFFFF8)
    {
      v533 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v533 = v531;
    }

    if (v533)
    {
      if (v533 >> 61)
      {
        goto LABEL_2011;
      }

      v534 = operator new(8 * v533);
    }

    else
    {
      v534 = 0;
    }

    v535 = &v534[8 * v530];
    *v535 = v517;
    v527 = v535 + 8;
    memcpy(v534, v528, v529);
    *&v1475 = v534;
    *(&v1475 + 1) = v527;
    *&v1476 = &v534[8 * v533];
    if (v528)
    {
      operator delete(v528);
    }
  }

  else
  {
    **(&v1475 + 1) = v517;
    v527 = (v526 + 8);
  }

  *(&v1475 + 1) = v527;
  v536 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v536 + 1), "coreml.sigmoid", 14, __p[0], Context, 0, 0);
  v536[12] = 0;
  *v536 = &unk_1F5B36CA0;
  if (!v536[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::SigmoidOp, mlir::mps::SigmoidOp>]";
    __p[1] = 150;
    v537 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v537)
    {
      v538 = v537;
    }

    else
    {
      v538 = __p[1];
    }

    v539 = __p[0] + v538;
    v540 = (__p[1] - v538);
    if ((__p[1] - v538) >= 0x12)
    {
      v541 = 18;
    }

    else
    {
      v541 = __p[1] - v538;
    }

    v542 = &v539[v541];
    v543 = &v540[-v541];
    if (v543 >= v543 - 1)
    {
      --v543;
    }

    v536[8] = v542;
    v536[9] = v543;
  }

  v544 = *(v536 + 22);
  if (v544 > *(v536 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v536 + 10), (v536 + 12), v544, 16);
    LODWORD(v544) = *(v536 + 22);
  }

  *(v536 + 22) = v544;
  v545 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v547 = v1475;
    v548 = *(&v1475 + 1) - v1475;
    v549 = (*(&v1475 + 1) - v1475) >> 3;
    v550 = v549 + 1;
    if ((v549 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v551 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v550)
    {
      v550 = v551 >> 2;
    }

    if (v551 >= 0x7FFFFFFFFFFFFFF8)
    {
      v552 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v552 = v550;
    }

    if (v552)
    {
      if (v552 >> 61)
      {
        goto LABEL_2011;
      }

      v553 = operator new(8 * v552);
    }

    else
    {
      v553 = 0;
    }

    v554 = &v553[8 * v549];
    *v554 = v536;
    v546 = v554 + 8;
    memcpy(v553, v547, v548);
    *&v1475 = v553;
    *(&v1475 + 1) = v546;
    *&v1476 = &v553[8 * v552];
    if (v547)
    {
      operator delete(v547);
    }
  }

  else
  {
    **(&v1475 + 1) = v536;
    v546 = (v545 + 8);
  }

  *(&v1475 + 1) = v546;
  v555 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v555 + 1), "coreml.relu", 11, __p[0], Context, 0, 0);
  v555[12] = 0;
  *v555 = &unk_1F5B36D08;
  if (!v555[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::ReLUOp, mlir::mps::ReluOp>]";
    __p[1] = 144;
    v556 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v556)
    {
      v557 = v556;
    }

    else
    {
      v557 = __p[1];
    }

    v558 = __p[0] + v557;
    v559 = (__p[1] - v557);
    if ((__p[1] - v557) >= 0x12)
    {
      v560 = 18;
    }

    else
    {
      v560 = __p[1] - v557;
    }

    v561 = &v558[v560];
    v562 = &v559[-v560];
    if (v562 >= v562 - 1)
    {
      --v562;
    }

    v555[8] = v561;
    v555[9] = v562;
  }

  v563 = *(v555 + 22);
  if (v563 > *(v555 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v555 + 10), (v555 + 12), v563, 16);
    LODWORD(v563) = *(v555 + 22);
  }

  *(v555 + 22) = v563;
  v564 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v566 = v1475;
    v567 = *(&v1475 + 1) - v1475;
    v568 = (*(&v1475 + 1) - v1475) >> 3;
    v569 = v568 + 1;
    if ((v568 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v570 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v569)
    {
      v569 = v570 >> 2;
    }

    if (v570 >= 0x7FFFFFFFFFFFFFF8)
    {
      v571 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v571 = v569;
    }

    if (v571)
    {
      if (v571 >> 61)
      {
        goto LABEL_2011;
      }

      v572 = operator new(8 * v571);
    }

    else
    {
      v572 = 0;
    }

    v573 = &v572[8 * v568];
    *v573 = v555;
    v565 = v573 + 8;
    memcpy(v572, v566, v567);
    *&v1475 = v572;
    *(&v1475 + 1) = v565;
    *&v1476 = &v572[8 * v571];
    if (v566)
    {
      operator delete(v566);
    }
  }

  else
  {
    **(&v1475 + 1) = v555;
    v565 = (v564 + 8);
  }

  *(&v1475 + 1) = v565;
  v574 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v574 + 1), "coreml.softmax", 14, __p[0], Context, 0, 0);
  v574[12] = 0;
  *v574 = &unk_1F5B36D70;
  if (!v574[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::SoftmaxOp, mlir::mps::SoftmaxOp>]";
    __p[1] = 150;
    v575 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v575)
    {
      v576 = v575;
    }

    else
    {
      v576 = __p[1];
    }

    v577 = __p[0] + v576;
    v578 = (__p[1] - v576);
    if ((__p[1] - v576) >= 0x12)
    {
      v579 = 18;
    }

    else
    {
      v579 = __p[1] - v576;
    }

    v580 = &v577[v579];
    v581 = &v578[-v579];
    if (v581 >= v581 - 1)
    {
      --v581;
    }

    v574[8] = v580;
    v574[9] = v581;
  }

  v582 = *(v574 + 22);
  if (v582 > *(v574 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v574 + 10), (v574 + 12), v582, 16);
    LODWORD(v582) = *(v574 + 22);
  }

  *(v574 + 22) = v582;
  v583 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v585 = v1475;
    v586 = *(&v1475 + 1) - v1475;
    v587 = (*(&v1475 + 1) - v1475) >> 3;
    v588 = v587 + 1;
    if ((v587 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v589 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v588)
    {
      v588 = v589 >> 2;
    }

    if (v589 >= 0x7FFFFFFFFFFFFFF8)
    {
      v590 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v590 = v588;
    }

    if (v590)
    {
      if (v590 >> 61)
      {
        goto LABEL_2011;
      }

      v591 = operator new(8 * v590);
    }

    else
    {
      v591 = 0;
    }

    v592 = &v591[8 * v587];
    *v592 = v574;
    v584 = v592 + 8;
    memcpy(v591, v585, v586);
    *&v1475 = v591;
    *(&v1475 + 1) = v584;
    *&v1476 = &v591[8 * v590];
    if (v585)
    {
      operator delete(v585);
    }
  }

  else
  {
    **(&v1475 + 1) = v574;
    v584 = (v583 + 8);
  }

  *(&v1475 + 1) = v584;
  v593 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v593 + 1), "coreml.gelu", 11, __p[0], Context, 0, 0);
  v593[12] = 0;
  *v593 = &unk_1F5B36DD8;
  if (!v593[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::GeluOpPattern]";
    __p[1] = 86;
    v594 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v594)
    {
      v595 = v594;
    }

    else
    {
      v595 = __p[1];
    }

    v596 = __p[0] + v595;
    v597 = (__p[1] - v595);
    if ((__p[1] - v595) >= 0x12)
    {
      v598 = 18;
    }

    else
    {
      v598 = __p[1] - v595;
    }

    v599 = &v596[v598];
    v600 = &v597[-v598];
    if (v600 >= v600 - 1)
    {
      --v600;
    }

    v593[8] = v599;
    v593[9] = v600;
  }

  v601 = *(v593 + 22);
  if (v601 > *(v593 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v593 + 10), (v593 + 12), v601, 16);
    LODWORD(v601) = *(v593 + 22);
  }

  *(v593 + 22) = v601;
  v602 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v604 = v1475;
    v605 = *(&v1475 + 1) - v1475;
    v606 = (*(&v1475 + 1) - v1475) >> 3;
    v607 = v606 + 1;
    if ((v606 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v608 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v607)
    {
      v607 = v608 >> 2;
    }

    if (v608 >= 0x7FFFFFFFFFFFFFF8)
    {
      v609 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v609 = v607;
    }

    if (v609)
    {
      if (v609 >> 61)
      {
        goto LABEL_2011;
      }

      v610 = operator new(8 * v609);
    }

    else
    {
      v610 = 0;
    }

    v611 = &v610[8 * v606];
    *v611 = v593;
    v603 = v611 + 8;
    memcpy(v610, v604, v605);
    *&v1475 = v610;
    *(&v1475 + 1) = v603;
    *&v1476 = &v610[8 * v609];
    if (v604)
    {
      operator delete(v604);
    }
  }

  else
  {
    **(&v1475 + 1) = v593;
    v603 = (v602 + 8);
  }

  *(&v1475 + 1) = v603;
  v612 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v612 + 1), "coreml.expand_dims", 18, __p[0], Context, 0, 0);
  v612[12] = 0;
  *v612 = &unk_1F5B36E40;
  if (!v612[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::ExpandDimsOp, mlir::mps::ExpandDimsOp>]";
    __p[1] = 156;
    v613 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v613)
    {
      v614 = v613;
    }

    else
    {
      v614 = __p[1];
    }

    v615 = __p[0] + v614;
    v616 = (__p[1] - v614);
    if ((__p[1] - v614) >= 0x12)
    {
      v617 = 18;
    }

    else
    {
      v617 = __p[1] - v614;
    }

    v618 = &v615[v617];
    v619 = &v616[-v617];
    if (v619 >= v619 - 1)
    {
      --v619;
    }

    v612[8] = v618;
    v612[9] = v619;
  }

  v620 = *(v612 + 22);
  if (v620 > *(v612 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v612 + 10), (v612 + 12), v620, 16);
    LODWORD(v620) = *(v612 + 22);
  }

  *(v612 + 22) = v620;
  v621 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v623 = v1475;
    v624 = *(&v1475 + 1) - v1475;
    v625 = (*(&v1475 + 1) - v1475) >> 3;
    v626 = v625 + 1;
    if ((v625 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v627 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v626)
    {
      v626 = v627 >> 2;
    }

    if (v627 >= 0x7FFFFFFFFFFFFFF8)
    {
      v628 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v628 = v626;
    }

    if (v628)
    {
      if (v628 >> 61)
      {
        goto LABEL_2011;
      }

      v629 = operator new(8 * v628);
    }

    else
    {
      v629 = 0;
    }

    v630 = &v629[8 * v625];
    *v630 = v612;
    v622 = v630 + 8;
    memcpy(v629, v623, v624);
    *&v1475 = v629;
    *(&v1475 + 1) = v622;
    *&v1476 = &v629[8 * v628];
    if (v623)
    {
      operator delete(v623);
    }
  }

  else
  {
    **(&v1475 + 1) = v612;
    v622 = (v621 + 8);
  }

  *(&v1475 + 1) = v622;
  v631 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v631 + 1), "coreml.shrink_dims", 18, __p[0], Context, 0, 0);
  v631[12] = 0;
  *v631 = &unk_1F5B36EA8;
  if (!v631[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp, mlir::mps::SqueezeOp>]";
    __p[1] = 153;
    v632 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v632)
    {
      v633 = v632;
    }

    else
    {
      v633 = __p[1];
    }

    v634 = __p[0] + v633;
    v635 = (__p[1] - v633);
    if ((__p[1] - v633) >= 0x12)
    {
      v636 = 18;
    }

    else
    {
      v636 = __p[1] - v633;
    }

    v637 = &v634[v636];
    v638 = &v635[-v636];
    if (v638 >= v638 - 1)
    {
      --v638;
    }

    v631[8] = v637;
    v631[9] = v638;
  }

  v639 = *(v631 + 22);
  if (v639 > *(v631 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v631 + 10), (v631 + 12), v639, 16);
    LODWORD(v639) = *(v631 + 22);
  }

  *(v631 + 22) = v639;
  v640 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v642 = v1475;
    v643 = *(&v1475 + 1) - v1475;
    v644 = (*(&v1475 + 1) - v1475) >> 3;
    v645 = v644 + 1;
    if ((v644 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v646 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v645)
    {
      v645 = v646 >> 2;
    }

    if (v646 >= 0x7FFFFFFFFFFFFFF8)
    {
      v647 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v647 = v645;
    }

    if (v647)
    {
      if (v647 >> 61)
      {
        goto LABEL_2011;
      }

      v648 = operator new(8 * v647);
    }

    else
    {
      v648 = 0;
    }

    v649 = &v648[8 * v644];
    *v649 = v631;
    v641 = v649 + 8;
    memcpy(v648, v642, v643);
    *&v1475 = v648;
    *(&v1475 + 1) = v641;
    *&v1476 = &v648[8 * v647];
    if (v642)
    {
      operator delete(v642);
    }
  }

  else
  {
    **(&v1475 + 1) = v631;
    v641 = (v640 + 8);
  }

  *(&v1475 + 1) = v641;
  v650 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v650 + 1), "coreml.reshape", 14, __p[0], Context, 0, 0);
  v650[12] = 0;
  *v650 = &unk_1F5B36F10;
  if (!v650[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::ReshapeOp, mlir::mps::ReshapeOp>]";
    __p[1] = 150;
    v651 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v651)
    {
      v652 = v651;
    }

    else
    {
      v652 = __p[1];
    }

    v653 = __p[0] + v652;
    v654 = (__p[1] - v652);
    if ((__p[1] - v652) >= 0x12)
    {
      v655 = 18;
    }

    else
    {
      v655 = __p[1] - v652;
    }

    v656 = &v653[v655];
    v657 = &v654[-v655];
    if (v657 >= v657 - 1)
    {
      --v657;
    }

    v650[8] = v656;
    v650[9] = v657;
  }

  v658 = *(v650 + 22);
  if (v658 > *(v650 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v650 + 10), (v650 + 12), v658, 16);
    LODWORD(v658) = *(v650 + 22);
  }

  *(v650 + 22) = v658;
  v659 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v661 = v1475;
    v662 = *(&v1475 + 1) - v1475;
    v663 = (*(&v1475 + 1) - v1475) >> 3;
    v664 = v663 + 1;
    if ((v663 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v665 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v664)
    {
      v664 = v665 >> 2;
    }

    if (v665 >= 0x7FFFFFFFFFFFFFF8)
    {
      v666 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v666 = v664;
    }

    if (v666)
    {
      if (v666 >> 61)
      {
        goto LABEL_2011;
      }

      v667 = operator new(8 * v666);
    }

    else
    {
      v667 = 0;
    }

    v668 = &v667[8 * v663];
    *v668 = v650;
    v660 = v668 + 8;
    memcpy(v667, v661, v662);
    *&v1475 = v667;
    *(&v1475 + 1) = v660;
    *&v1476 = &v667[8 * v666];
    if (v661)
    {
      operator delete(v661);
    }
  }

  else
  {
    **(&v1475 + 1) = v650;
    v660 = (v659 + 8);
  }

  *(&v1475 + 1) = v660;
  v669 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v669 + 1), "coreml.cast", 11, __p[0], Context, 0, 0);
  v669[12] = 0;
  *v669 = &unk_1F5B36F78;
  if (!v669[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::CastOpPattern]";
    __p[1] = 86;
    v670 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v670)
    {
      v671 = v670;
    }

    else
    {
      v671 = __p[1];
    }

    v672 = __p[0] + v671;
    v673 = (__p[1] - v671);
    if ((__p[1] - v671) >= 0x12)
    {
      v674 = 18;
    }

    else
    {
      v674 = __p[1] - v671;
    }

    v675 = &v672[v674];
    v676 = &v673[-v674];
    if (v676 >= v676 - 1)
    {
      --v676;
    }

    v669[8] = v675;
    v669[9] = v676;
  }

  v677 = *(v669 + 22);
  if (v677 > *(v669 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v669 + 10), (v669 + 12), v677, 16);
    LODWORD(v677) = *(v669 + 22);
  }

  *(v669 + 22) = v677;
  v678 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v680 = v1475;
    v681 = *(&v1475 + 1) - v1475;
    v682 = (*(&v1475 + 1) - v1475) >> 3;
    v683 = v682 + 1;
    if ((v682 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v684 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v683)
    {
      v683 = v684 >> 2;
    }

    if (v684 >= 0x7FFFFFFFFFFFFFF8)
    {
      v685 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v685 = v683;
    }

    if (v685)
    {
      if (v685 >> 61)
      {
        goto LABEL_2011;
      }

      v686 = operator new(8 * v685);
    }

    else
    {
      v686 = 0;
    }

    v687 = &v686[8 * v682];
    *v687 = v669;
    v679 = v687 + 8;
    memcpy(v686, v680, v681);
    *&v1475 = v686;
    *(&v1475 + 1) = v679;
    *&v1476 = &v686[8 * v685];
    if (v680)
    {
      operator delete(v680);
    }
  }

  else
  {
    **(&v1475 + 1) = v669;
    v679 = (v678 + 8);
  }

  *(&v1475 + 1) = v679;
  v688 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v688 + 1), "coreml.reduce_mean", 18, __p[0], Context, 0, 0);
  v688[12] = 0;
  *v688 = &unk_1F5B36FE0;
  if (!v688[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceMeanOp, mlir::mps::ReductionMeanOp>]";
    __p[1] = 158;
    v689 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v689)
    {
      v690 = v689;
    }

    else
    {
      v690 = __p[1];
    }

    v691 = __p[0] + v690;
    v692 = (__p[1] - v690);
    if ((__p[1] - v690) >= 0x12)
    {
      v693 = 18;
    }

    else
    {
      v693 = __p[1] - v690;
    }

    v694 = &v691[v693];
    v695 = &v692[-v693];
    if (v695 >= v695 - 1)
    {
      --v695;
    }

    v688[8] = v694;
    v688[9] = v695;
  }

  v696 = *(v688 + 22);
  if (v696 > *(v688 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v688 + 10), (v688 + 12), v696, 16);
    LODWORD(v696) = *(v688 + 22);
  }

  *(v688 + 22) = v696;
  v697 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v699 = v1475;
    v700 = *(&v1475 + 1) - v1475;
    v701 = (*(&v1475 + 1) - v1475) >> 3;
    v702 = v701 + 1;
    if ((v701 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v703 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v702)
    {
      v702 = v703 >> 2;
    }

    if (v703 >= 0x7FFFFFFFFFFFFFF8)
    {
      v704 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v704 = v702;
    }

    if (v704)
    {
      if (v704 >> 61)
      {
        goto LABEL_2011;
      }

      v705 = operator new(8 * v704);
    }

    else
    {
      v705 = 0;
    }

    v706 = &v705[8 * v701];
    *v706 = v688;
    v698 = v706 + 8;
    memcpy(v705, v699, v700);
    *&v1475 = v705;
    *(&v1475 + 1) = v698;
    *&v1476 = &v705[8 * v704];
    if (v699)
    {
      operator delete(v699);
    }
  }

  else
  {
    **(&v1475 + 1) = v688;
    v698 = (v697 + 8);
  }

  *(&v1475 + 1) = v698;
  v707 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v707 + 1), "coreml.reduce_sum", 17, __p[0], Context, 0, 0);
  v707[12] = 0;
  *v707 = &unk_1F5B37048;
  if (!v707[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceSumOp, mlir::mps::ReductionSumOp>]";
    __p[1] = 156;
    v708 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v708)
    {
      v709 = v708;
    }

    else
    {
      v709 = __p[1];
    }

    v710 = __p[0] + v709;
    v711 = (__p[1] - v709);
    if ((__p[1] - v709) >= 0x12)
    {
      v712 = 18;
    }

    else
    {
      v712 = __p[1] - v709;
    }

    v713 = &v710[v712];
    v714 = &v711[-v712];
    if (v714 >= v714 - 1)
    {
      --v714;
    }

    v707[8] = v713;
    v707[9] = v714;
  }

  v715 = *(v707 + 22);
  if (v715 > *(v707 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v707 + 10), (v707 + 12), v715, 16);
    LODWORD(v715) = *(v707 + 22);
  }

  *(v707 + 22) = v715;
  v716 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v718 = v1475;
    v719 = *(&v1475 + 1) - v1475;
    v720 = (*(&v1475 + 1) - v1475) >> 3;
    v721 = v720 + 1;
    if ((v720 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v722 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v721)
    {
      v721 = v722 >> 2;
    }

    if (v722 >= 0x7FFFFFFFFFFFFFF8)
    {
      v723 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v723 = v721;
    }

    if (v723)
    {
      if (v723 >> 61)
      {
        goto LABEL_2011;
      }

      v724 = operator new(8 * v723);
    }

    else
    {
      v724 = 0;
    }

    v725 = &v724[8 * v720];
    *v725 = v707;
    v717 = v725 + 8;
    memcpy(v724, v718, v719);
    *&v1475 = v724;
    *(&v1475 + 1) = v717;
    *&v1476 = &v724[8 * v723];
    if (v718)
    {
      operator delete(v718);
    }
  }

  else
  {
    **(&v1475 + 1) = v707;
    v717 = (v716 + 8);
  }

  *(&v1475 + 1) = v717;
  v726 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v726 + 1), "coreml.any", 10, __p[0], Context, 0, 0);
  v726[12] = 0;
  *v726 = &unk_1F5B370B0;
  if (!v726[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ReducePattern<mlir::ODIE::Compiler::CoreML::AnyOp, mlir::mps::ReductionOrOp>]";
    __p[1] = 149;
    v727 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v727)
    {
      v728 = v727;
    }

    else
    {
      v728 = __p[1];
    }

    v729 = __p[0] + v728;
    v730 = (__p[1] - v728);
    if ((__p[1] - v728) >= 0x12)
    {
      v731 = 18;
    }

    else
    {
      v731 = __p[1] - v728;
    }

    v732 = &v729[v731];
    v733 = &v730[-v731];
    if (v733 >= v733 - 1)
    {
      --v733;
    }

    v726[8] = v732;
    v726[9] = v733;
  }

  v734 = *(v726 + 22);
  if (v734 > *(v726 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v726 + 10), (v726 + 12), v734, 16);
    LODWORD(v734) = *(v726 + 22);
  }

  *(v726 + 22) = v734;
  v735 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v737 = v1475;
    v738 = *(&v1475 + 1) - v1475;
    v739 = (*(&v1475 + 1) - v1475) >> 3;
    v740 = v739 + 1;
    if ((v739 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v741 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v740)
    {
      v740 = v741 >> 2;
    }

    if (v741 >= 0x7FFFFFFFFFFFFFF8)
    {
      v742 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v742 = v740;
    }

    if (v742)
    {
      if (v742 >> 61)
      {
        goto LABEL_2011;
      }

      v743 = operator new(8 * v742);
    }

    else
    {
      v743 = 0;
    }

    v744 = &v743[8 * v739];
    *v744 = v726;
    v736 = v744 + 8;
    memcpy(v743, v737, v738);
    *&v1475 = v743;
    *(&v1475 + 1) = v736;
    *&v1476 = &v743[8 * v742];
    if (v737)
    {
      operator delete(v737);
    }
  }

  else
  {
    **(&v1475 + 1) = v726;
    v736 = (v735 + 8);
  }

  *(&v1475 + 1) = v736;
  v745 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v745 + 1), "coreml.all", 10, __p[0], Context, 0, 0);
  v745[12] = 0;
  *v745 = &unk_1F5B37118;
  if (!v745[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ReducePattern<mlir::ODIE::Compiler::CoreML::AllOp, mlir::mps::ReductionAndOp>]";
    __p[1] = 150;
    v746 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v746)
    {
      v747 = v746;
    }

    else
    {
      v747 = __p[1];
    }

    v748 = __p[0] + v747;
    v749 = (__p[1] - v747);
    if ((__p[1] - v747) >= 0x12)
    {
      v750 = 18;
    }

    else
    {
      v750 = __p[1] - v747;
    }

    v751 = &v748[v750];
    v752 = &v749[-v750];
    if (v752 >= v752 - 1)
    {
      --v752;
    }

    v745[8] = v751;
    v745[9] = v752;
  }

  v753 = *(v745 + 22);
  if (v753 > *(v745 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v745 + 10), (v745 + 12), v753, 16);
    LODWORD(v753) = *(v745 + 22);
  }

  *(v745 + 22) = v753;
  v754 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v756 = v1475;
    v757 = *(&v1475 + 1) - v1475;
    v758 = (*(&v1475 + 1) - v1475) >> 3;
    v759 = v758 + 1;
    if ((v758 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v760 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v759)
    {
      v759 = v760 >> 2;
    }

    if (v760 >= 0x7FFFFFFFFFFFFFF8)
    {
      v761 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v761 = v759;
    }

    if (v761)
    {
      if (v761 >> 61)
      {
        goto LABEL_2011;
      }

      v762 = operator new(8 * v761);
    }

    else
    {
      v762 = 0;
    }

    v763 = &v762[8 * v758];
    *v763 = v745;
    v755 = v763 + 8;
    memcpy(v762, v756, v757);
    *&v1475 = v762;
    *(&v1475 + 1) = v755;
    *&v1476 = &v762[8 * v761];
    if (v756)
    {
      operator delete(v756);
    }
  }

  else
  {
    **(&v1475 + 1) = v745;
    v755 = (v754 + 8);
  }

  *(&v1475 + 1) = v755;
  v764 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v764 + 1), "coreml.slice", 12, __p[0], Context, 0, 0);
  v764[12] = 0;
  *v764 = &unk_1F5B37180;
  if (!v764[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SliceOpPattern]";
    __p[1] = 87;
    v765 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v765)
    {
      v766 = v765;
    }

    else
    {
      v766 = __p[1];
    }

    v767 = __p[0] + v766;
    v768 = (__p[1] - v766);
    if ((__p[1] - v766) >= 0x12)
    {
      v769 = 18;
    }

    else
    {
      v769 = __p[1] - v766;
    }

    v770 = &v767[v769];
    v771 = &v768[-v769];
    if (v771 >= v771 - 1)
    {
      --v771;
    }

    v764[8] = v770;
    v764[9] = v771;
  }

  v772 = *(v764 + 22);
  if (v772 > *(v764 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v764 + 10), (v764 + 12), v772, 16);
    LODWORD(v772) = *(v764 + 22);
  }

  *(v764 + 22) = v772;
  v773 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v775 = v1475;
    v776 = *(&v1475 + 1) - v1475;
    v777 = (*(&v1475 + 1) - v1475) >> 3;
    v778 = v777 + 1;
    if ((v777 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v779 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v778)
    {
      v778 = v779 >> 2;
    }

    if (v779 >= 0x7FFFFFFFFFFFFFF8)
    {
      v780 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v780 = v778;
    }

    if (v780)
    {
      if (v780 >> 61)
      {
        goto LABEL_2011;
      }

      v781 = operator new(8 * v780);
    }

    else
    {
      v781 = 0;
    }

    v782 = &v781[8 * v777];
    *v782 = v764;
    v774 = v782 + 8;
    memcpy(v781, v775, v776);
    *&v1475 = v781;
    *(&v1475 + 1) = v774;
    *&v1476 = &v781[8 * v780];
    if (v775)
    {
      operator delete(v775);
    }
  }

  else
  {
    **(&v1475 + 1) = v764;
    v774 = (v773 + 8);
  }

  *(&v1475 + 1) = v774;
  v783 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v783 + 1), "coreml.slice_update", 19, __p[0], Context, 0, 0);
  v783[12] = 0;
  *v783 = &unk_1F5B371E8;
  if (!v783[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SliceUpdateOpPattern]";
    __p[1] = 93;
    v784 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v784)
    {
      v785 = v784;
    }

    else
    {
      v785 = __p[1];
    }

    v786 = __p[0] + v785;
    v787 = (__p[1] - v785);
    if ((__p[1] - v785) >= 0x12)
    {
      v788 = 18;
    }

    else
    {
      v788 = __p[1] - v785;
    }

    v789 = &v786[v788];
    v790 = &v787[-v788];
    if (v790 >= v790 - 1)
    {
      --v790;
    }

    v783[8] = v789;
    v783[9] = v790;
  }

  v791 = *(v783 + 22);
  if (v791 > *(v783 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v783 + 10), (v783 + 12), v791, 16);
    LODWORD(v791) = *(v783 + 22);
  }

  *(v783 + 22) = v791;
  v792 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v794 = v1475;
    v795 = *(&v1475 + 1) - v1475;
    v796 = (*(&v1475 + 1) - v1475) >> 3;
    v797 = v796 + 1;
    if ((v796 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v798 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v797)
    {
      v797 = v798 >> 2;
    }

    if (v798 >= 0x7FFFFFFFFFFFFFF8)
    {
      v799 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v799 = v797;
    }

    if (v799)
    {
      if (v799 >> 61)
      {
        goto LABEL_2011;
      }

      v800 = operator new(8 * v799);
    }

    else
    {
      v800 = 0;
    }

    v801 = &v800[8 * v796];
    *v801 = v783;
    v793 = v801 + 8;
    memcpy(v800, v794, v795);
    *&v1475 = v800;
    *(&v1475 + 1) = v793;
    *&v1476 = &v800[8 * v799];
    if (v794)
    {
      operator delete(v794);
    }
  }

  else
  {
    **(&v1475 + 1) = v783;
    v793 = (v792 + 8);
  }

  *(&v1475 + 1) = v793;
  v802 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v802 + 1), "coreml.select", 13, __p[0], Context, 0, 0);
  v802[12] = 0;
  *v802 = &unk_1F5B37250;
  if (!v802[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SelectOpPattern]";
    __p[1] = 88;
    v803 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v803)
    {
      v804 = v803;
    }

    else
    {
      v804 = __p[1];
    }

    v805 = __p[0] + v804;
    v806 = (__p[1] - v804);
    if ((__p[1] - v804) >= 0x12)
    {
      v807 = 18;
    }

    else
    {
      v807 = __p[1] - v804;
    }

    v808 = &v805[v807];
    v809 = &v806[-v807];
    if (v809 >= v809 - 1)
    {
      --v809;
    }

    v802[8] = v808;
    v802[9] = v809;
  }

  v810 = *(v802 + 22);
  if (v810 > *(v802 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v802 + 10), (v802 + 12), v810, 16);
    LODWORD(v810) = *(v802 + 22);
  }

  *(v802 + 22) = v810;
  v811 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v813 = v1475;
    v814 = *(&v1475 + 1) - v1475;
    v815 = (*(&v1475 + 1) - v1475) >> 3;
    v816 = v815 + 1;
    if ((v815 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v817 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v816)
    {
      v816 = v817 >> 2;
    }

    if (v817 >= 0x7FFFFFFFFFFFFFF8)
    {
      v818 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v818 = v816;
    }

    if (v818)
    {
      if (v818 >> 61)
      {
        goto LABEL_2011;
      }

      v819 = operator new(8 * v818);
    }

    else
    {
      v819 = 0;
    }

    v820 = &v819[8 * v815];
    *v820 = v802;
    v812 = v820 + 8;
    memcpy(v819, v813, v814);
    *&v1475 = v819;
    *(&v1475 + 1) = v812;
    *&v1476 = &v819[8 * v818];
    if (v813)
    {
      operator delete(v813);
    }
  }

  else
  {
    **(&v1475 + 1) = v802;
    v812 = (v811 + 8);
  }

  *(&v1475 + 1) = v812;
  v821 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v821 + 1), "coreml.conv2d", 13, __p[0], Context, 0, 0);
  v821[12] = 0;
  *v821 = &unk_1F5B372B8;
  if (!v821[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::Conv2dOpPattern]";
    __p[1] = 88;
    v822 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v822)
    {
      v823 = v822;
    }

    else
    {
      v823 = __p[1];
    }

    v824 = __p[0] + v823;
    v825 = (__p[1] - v823);
    if ((__p[1] - v823) >= 0x12)
    {
      v826 = 18;
    }

    else
    {
      v826 = __p[1] - v823;
    }

    v827 = &v824[v826];
    v828 = &v825[-v826];
    if (v828 >= v828 - 1)
    {
      --v828;
    }

    v821[8] = v827;
    v821[9] = v828;
  }

  v829 = *(v821 + 22);
  if (v829 > *(v821 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v821 + 10), (v821 + 12), v829, 16);
    LODWORD(v829) = *(v821 + 22);
  }

  *(v821 + 22) = v829;
  v830 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v832 = v1475;
    v833 = *(&v1475 + 1) - v1475;
    v834 = (*(&v1475 + 1) - v1475) >> 3;
    v835 = v834 + 1;
    if ((v834 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v836 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v835)
    {
      v835 = v836 >> 2;
    }

    if (v836 >= 0x7FFFFFFFFFFFFFF8)
    {
      v837 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v837 = v835;
    }

    if (v837)
    {
      if (v837 >> 61)
      {
        goto LABEL_2011;
      }

      v838 = operator new(8 * v837);
    }

    else
    {
      v838 = 0;
    }

    v839 = &v838[8 * v834];
    *v839 = v821;
    v831 = v839 + 8;
    memcpy(v838, v832, v833);
    *&v1475 = v838;
    *(&v1475 + 1) = v831;
    *&v1476 = &v838[8 * v837];
    if (v832)
    {
      operator delete(v832);
    }
  }

  else
  {
    **(&v1475 + 1) = v821;
    v831 = (v830 + 8);
  }

  *(&v1475 + 1) = v831;
  v840 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v840 + 1), "coreml.broadcast_in_dims", 24, __p[0], Context, 0, 0);
  v840[12] = 0;
  *v840 = &unk_1F5B37320;
  if (!v840[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::BroadcastInDimsOpPattern]";
    __p[1] = 97;
    v841 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v841)
    {
      v842 = v841;
    }

    else
    {
      v842 = __p[1];
    }

    v843 = __p[0] + v842;
    v844 = (__p[1] - v842);
    if ((__p[1] - v842) >= 0x12)
    {
      v845 = 18;
    }

    else
    {
      v845 = __p[1] - v842;
    }

    v846 = &v843[v845];
    v847 = &v844[-v845];
    if (v847 >= v847 - 1)
    {
      --v847;
    }

    v840[8] = v846;
    v840[9] = v847;
  }

  v848 = *(v840 + 22);
  if (v848 > *(v840 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v840 + 10), (v840 + 12), v848, 16);
    LODWORD(v848) = *(v840 + 22);
  }

  *(v840 + 22) = v848;
  v849 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v851 = v1475;
    v852 = *(&v1475 + 1) - v1475;
    v853 = (*(&v1475 + 1) - v1475) >> 3;
    v854 = v853 + 1;
    if ((v853 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v855 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v854)
    {
      v854 = v855 >> 2;
    }

    if (v855 >= 0x7FFFFFFFFFFFFFF8)
    {
      v856 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v856 = v854;
    }

    if (v856)
    {
      if (v856 >> 61)
      {
        goto LABEL_2011;
      }

      v857 = operator new(8 * v856);
    }

    else
    {
      v857 = 0;
    }

    v858 = &v857[8 * v853];
    *v858 = v840;
    v850 = v858 + 8;
    memcpy(v857, v851, v852);
    *&v1475 = v857;
    *(&v1475 + 1) = v850;
    *&v1476 = &v857[8 * v856];
    if (v851)
    {
      operator delete(v851);
    }
  }

  else
  {
    **(&v1475 + 1) = v840;
    v850 = (v849 + 8);
  }

  *(&v1475 + 1) = v850;
  v859 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v859 + 1), "coreml.broadcast_to", 19, __p[0], Context, 0, 0);
  v859[12] = 0;
  *v859 = &unk_1F5B37388;
  if (!v859[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::BroadcastToOpPattern]";
    __p[1] = 93;
    v860 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v860)
    {
      v861 = v860;
    }

    else
    {
      v861 = __p[1];
    }

    v862 = __p[0] + v861;
    v863 = (__p[1] - v861);
    if ((__p[1] - v861) >= 0x12)
    {
      v864 = 18;
    }

    else
    {
      v864 = __p[1] - v861;
    }

    v865 = &v862[v864];
    v866 = &v863[-v864];
    if (v866 >= v866 - 1)
    {
      --v866;
    }

    v859[8] = v865;
    v859[9] = v866;
  }

  v867 = *(v859 + 22);
  if (v867 > *(v859 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v859 + 10), (v859 + 12), v867, 16);
    LODWORD(v867) = *(v859 + 22);
  }

  *(v859 + 22) = v867;
  v868 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v870 = v1475;
    v871 = *(&v1475 + 1) - v1475;
    v872 = (*(&v1475 + 1) - v1475) >> 3;
    v873 = v872 + 1;
    if ((v872 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v874 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v873)
    {
      v873 = v874 >> 2;
    }

    if (v874 >= 0x7FFFFFFFFFFFFFF8)
    {
      v875 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v875 = v873;
    }

    if (v875)
    {
      if (v875 >> 61)
      {
        goto LABEL_2011;
      }

      v876 = operator new(8 * v875);
    }

    else
    {
      v876 = 0;
    }

    v877 = &v876[8 * v872];
    *v877 = v859;
    v869 = v877 + 8;
    memcpy(v876, v870, v871);
    *&v1475 = v876;
    *(&v1475 + 1) = v869;
    *&v1476 = &v876[8 * v875];
    if (v870)
    {
      operator delete(v870);
    }
  }

  else
  {
    **(&v1475 + 1) = v859;
    v869 = (v868 + 8);
  }

  *(&v1475 + 1) = v869;
  v878 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v878 + 1), "coreml.fill", 11, __p[0], Context, 0, 0);
  v878[12] = 0;
  *v878 = &unk_1F5B373F0;
  if (!v878[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FillOpPattern]";
    __p[1] = 86;
    v879 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v879)
    {
      v880 = v879;
    }

    else
    {
      v880 = __p[1];
    }

    v881 = __p[0] + v880;
    v882 = (__p[1] - v880);
    if ((__p[1] - v880) >= 0x12)
    {
      v883 = 18;
    }

    else
    {
      v883 = __p[1] - v880;
    }

    v884 = &v881[v883];
    v885 = &v882[-v883];
    if (v885 >= v885 - 1)
    {
      --v885;
    }

    v878[8] = v884;
    v878[9] = v885;
  }

  v886 = *(v878 + 22);
  if (v886 > *(v878 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v878 + 10), (v878 + 12), v886, 16);
    LODWORD(v886) = *(v878 + 22);
  }

  *(v878 + 22) = v886;
  v887 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v889 = v1475;
    v890 = *(&v1475 + 1) - v1475;
    v891 = (*(&v1475 + 1) - v1475) >> 3;
    v892 = v891 + 1;
    if ((v891 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v893 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v892)
    {
      v892 = v893 >> 2;
    }

    if (v893 >= 0x7FFFFFFFFFFFFFF8)
    {
      v894 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v894 = v892;
    }

    if (v894)
    {
      if (v894 >> 61)
      {
        goto LABEL_2011;
      }

      v895 = operator new(8 * v894);
    }

    else
    {
      v895 = 0;
    }

    v896 = &v895[8 * v891];
    *v896 = v878;
    v888 = v896 + 8;
    memcpy(v895, v889, v890);
    *&v1475 = v895;
    *(&v1475 + 1) = v888;
    *&v1476 = &v895[8 * v894];
    if (v889)
    {
      operator delete(v889);
    }
  }

  else
  {
    **(&v1475 + 1) = v878;
    v888 = (v887 + 8);
  }

  *(&v1475 + 1) = v888;
  v897 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v897 + 1), "coreml.gather_nd", 16, __p[0], Context, 0, 0);
  v897[12] = 0;
  *v897 = &unk_1F5B37458;
  if (!v897[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::GatherNdOpPattern]";
    __p[1] = 90;
    v898 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v898)
    {
      v899 = v898;
    }

    else
    {
      v899 = __p[1];
    }

    v900 = __p[0] + v899;
    v901 = (__p[1] - v899);
    if ((__p[1] - v899) >= 0x12)
    {
      v902 = 18;
    }

    else
    {
      v902 = __p[1] - v899;
    }

    v903 = &v900[v902];
    v904 = &v901[-v902];
    if (v904 >= v904 - 1)
    {
      --v904;
    }

    v897[8] = v903;
    v897[9] = v904;
  }

  v905 = *(v897 + 22);
  if (v905 > *(v897 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v897 + 10), (v897 + 12), v905, 16);
    LODWORD(v905) = *(v897 + 22);
  }

  *(v897 + 22) = v905;
  v906 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v908 = v1475;
    v909 = *(&v1475 + 1) - v1475;
    v910 = (*(&v1475 + 1) - v1475) >> 3;
    v911 = v910 + 1;
    if ((v910 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v912 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v911)
    {
      v911 = v912 >> 2;
    }

    if (v912 >= 0x7FFFFFFFFFFFFFF8)
    {
      v913 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v913 = v911;
    }

    if (v913)
    {
      if (v913 >> 61)
      {
        goto LABEL_2011;
      }

      v914 = operator new(8 * v913);
    }

    else
    {
      v914 = 0;
    }

    v915 = &v914[8 * v910];
    *v915 = v897;
    v907 = v915 + 8;
    memcpy(v914, v908, v909);
    *&v1475 = v914;
    *(&v1475 + 1) = v907;
    *&v1476 = &v914[8 * v913];
    if (v908)
    {
      operator delete(v908);
    }
  }

  else
  {
    **(&v1475 + 1) = v897;
    v907 = (v906 + 8);
  }

  *(&v1475 + 1) = v907;
  v916 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v916 + 1), "coreml.scatter_nd", 17, __p[0], Context, 0, 0);
  v916[12] = 0;
  *v916 = &unk_1F5B374C0;
  if (!v916[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ScatterNdOpPattern]";
    __p[1] = 91;
    v917 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v917)
    {
      v918 = v917;
    }

    else
    {
      v918 = __p[1];
    }

    v919 = __p[0] + v918;
    v920 = (__p[1] - v918);
    if ((__p[1] - v918) >= 0x12)
    {
      v921 = 18;
    }

    else
    {
      v921 = __p[1] - v918;
    }

    v922 = &v919[v921];
    v923 = &v920[-v921];
    if (v923 >= v923 - 1)
    {
      --v923;
    }

    v916[8] = v922;
    v916[9] = v923;
  }

  v924 = *(v916 + 22);
  if (v924 > *(v916 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v916 + 10), (v916 + 12), v924, 16);
    LODWORD(v924) = *(v916 + 22);
  }

  *(v916 + 22) = v924;
  v925 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v927 = v1475;
    v928 = *(&v1475 + 1) - v1475;
    v929 = (*(&v1475 + 1) - v1475) >> 3;
    v930 = v929 + 1;
    if ((v929 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v931 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v930)
    {
      v930 = v931 >> 2;
    }

    if (v931 >= 0x7FFFFFFFFFFFFFF8)
    {
      v932 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v932 = v930;
    }

    if (v932)
    {
      if (v932 >> 61)
      {
        goto LABEL_2011;
      }

      v933 = operator new(8 * v932);
    }

    else
    {
      v933 = 0;
    }

    v934 = &v933[8 * v929];
    *v934 = v916;
    v926 = v934 + 8;
    memcpy(v933, v927, v928);
    *&v1475 = v933;
    *(&v1475 + 1) = v926;
    *&v1476 = &v933[8 * v932];
    if (v927)
    {
      operator delete(v927);
    }
  }

  else
  {
    **(&v1475 + 1) = v916;
    v926 = (v925 + 8);
  }

  *(&v1475 + 1) = v926;
  v935 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v935 + 1), "coreml.transpose", 16, __p[0], Context, 0, 0);
  v935[12] = 0;
  *v935 = &unk_1F5B37528;
  if (!v935[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::TransposeOp, mlir::mps::PermuteOp>]";
    __p[1] = 152;
    v936 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v936)
    {
      v937 = v936;
    }

    else
    {
      v937 = __p[1];
    }

    v938 = __p[0] + v937;
    v939 = (__p[1] - v937);
    if ((__p[1] - v937) >= 0x12)
    {
      v940 = 18;
    }

    else
    {
      v940 = __p[1] - v937;
    }

    v941 = &v938[v940];
    v942 = &v939[-v940];
    if (v942 >= v942 - 1)
    {
      --v942;
    }

    v935[8] = v941;
    v935[9] = v942;
  }

  v943 = *(v935 + 22);
  if (v943 > *(v935 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v935 + 10), (v935 + 12), v943, 16);
    LODWORD(v943) = *(v935 + 22);
  }

  *(v935 + 22) = v943;
  v944 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v946 = v1475;
    v947 = *(&v1475 + 1) - v1475;
    v948 = (*(&v1475 + 1) - v1475) >> 3;
    v949 = v948 + 1;
    if ((v948 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v950 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v949)
    {
      v949 = v950 >> 2;
    }

    if (v950 >= 0x7FFFFFFFFFFFFFF8)
    {
      v951 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v951 = v949;
    }

    if (v951)
    {
      if (v951 >> 61)
      {
        goto LABEL_2011;
      }

      v952 = operator new(8 * v951);
    }

    else
    {
      v952 = 0;
    }

    v953 = &v952[8 * v948];
    *v953 = v935;
    v945 = v953 + 8;
    memcpy(v952, v946, v947);
    *&v1475 = v952;
    *(&v1475 + 1) = v945;
    *&v1476 = &v952[8 * v951];
    if (v946)
    {
      operator delete(v946);
    }
  }

  else
  {
    **(&v1475 + 1) = v935;
    v945 = (v944 + 8);
  }

  *(&v1475 + 1) = v945;
  v954 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v954 + 1), "coreml.split", 12, __p[0], Context, 0, 0);
  v954[12] = 0;
  *v954 = &unk_1F5B37590;
  if (!v954[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SplitOpPattern]";
    __p[1] = 87;
    v955 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v955)
    {
      v956 = v955;
    }

    else
    {
      v956 = __p[1];
    }

    v957 = __p[0] + v956;
    v958 = (__p[1] - v956);
    if ((__p[1] - v956) >= 0x12)
    {
      v959 = 18;
    }

    else
    {
      v959 = __p[1] - v956;
    }

    v960 = &v957[v959];
    v961 = &v958[-v959];
    if (v961 >= v961 - 1)
    {
      --v961;
    }

    v954[8] = v960;
    v954[9] = v961;
  }

  v962 = *(v954 + 22);
  if (v962 > *(v954 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v954 + 10), (v954 + 12), v962, 16);
    LODWORD(v962) = *(v954 + 22);
  }

  *(v954 + 22) = v962;
  v963 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v965 = v1475;
    v966 = *(&v1475 + 1) - v1475;
    v967 = (*(&v1475 + 1) - v1475) >> 3;
    v968 = v967 + 1;
    if ((v967 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v969 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v968)
    {
      v968 = v969 >> 2;
    }

    if (v969 >= 0x7FFFFFFFFFFFFFF8)
    {
      v970 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v970 = v968;
    }

    if (v970)
    {
      if (v970 >> 61)
      {
        goto LABEL_2011;
      }

      v971 = operator new(8 * v970);
    }

    else
    {
      v971 = 0;
    }

    v972 = &v971[8 * v967];
    *v972 = v954;
    v964 = v972 + 8;
    memcpy(v971, v965, v966);
    *&v1475 = v971;
    *(&v1475 + 1) = v964;
    *&v1476 = &v971[8 * v970];
    if (v965)
    {
      operator delete(v965);
    }
  }

  else
  {
    **(&v1475 + 1) = v954;
    v964 = (v963 + 8);
  }

  *(&v1475 + 1) = v964;
  v973 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v973 + 1), "coreml.concat", 13, __p[0], Context, 0, 0);
  v973[12] = 0;
  *v973 = &unk_1F5B375F8;
  if (!v973[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConcatOpPattern]";
    __p[1] = 88;
    v974 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v974)
    {
      v975 = v974;
    }

    else
    {
      v975 = __p[1];
    }

    v976 = __p[0] + v975;
    v977 = (__p[1] - v975);
    if ((__p[1] - v975) >= 0x12)
    {
      v978 = 18;
    }

    else
    {
      v978 = __p[1] - v975;
    }

    v979 = &v976[v978];
    v980 = &v977[-v978];
    if (v980 >= v980 - 1)
    {
      --v980;
    }

    v973[8] = v979;
    v973[9] = v980;
  }

  v981 = *(v973 + 22);
  if (v981 > *(v973 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v973 + 10), (v973 + 12), v981, 16);
    LODWORD(v981) = *(v973 + 22);
  }

  *(v973 + 22) = v981;
  v982 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v984 = v1475;
    v985 = *(&v1475 + 1) - v1475;
    v986 = (*(&v1475 + 1) - v1475) >> 3;
    v987 = v986 + 1;
    if ((v986 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v988 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v987)
    {
      v987 = v988 >> 2;
    }

    if (v988 >= 0x7FFFFFFFFFFFFFF8)
    {
      v989 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v989 = v987;
    }

    if (v989)
    {
      if (v989 >> 61)
      {
        goto LABEL_2011;
      }

      v990 = operator new(8 * v989);
    }

    else
    {
      v990 = 0;
    }

    v991 = &v990[8 * v986];
    *v991 = v973;
    v983 = v991 + 8;
    memcpy(v990, v984, v985);
    *&v1475 = v990;
    *(&v1475 + 1) = v983;
    *&v1476 = &v990[8 * v989];
    if (v984)
    {
      operator delete(v984);
    }
  }

  else
  {
    **(&v1475 + 1) = v973;
    v983 = (v982 + 8);
  }

  *(&v1475 + 1) = v983;
  v992 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v992 + 1), "coreml.stack", 12, __p[0], Context, 0, 0);
  v992[12] = 0;
  *v992 = &unk_1F5B37660;
  if (!v992[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::StackOpPattern]";
    __p[1] = 87;
    v993 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v993)
    {
      v994 = v993;
    }

    else
    {
      v994 = __p[1];
    }

    v995 = __p[0] + v994;
    v996 = (__p[1] - v994);
    if ((__p[1] - v994) >= 0x12)
    {
      v997 = 18;
    }

    else
    {
      v997 = __p[1] - v994;
    }

    v998 = &v995[v997];
    v999 = &v996[-v997];
    if (v999 >= v999 - 1)
    {
      --v999;
    }

    v992[8] = v998;
    v992[9] = v999;
  }

  v1000 = *(v992 + 22);
  if (v1000 > *(v992 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v992 + 10), (v992 + 12), v1000, 16);
    LODWORD(v1000) = *(v992 + 22);
  }

  *(v992 + 22) = v1000;
  v1001 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1003 = v1475;
    v1004 = *(&v1475 + 1) - v1475;
    v1005 = (*(&v1475 + 1) - v1475) >> 3;
    v1006 = v1005 + 1;
    if ((v1005 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1007 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1006)
    {
      v1006 = v1007 >> 2;
    }

    if (v1007 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1008 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1008 = v1006;
    }

    if (v1008)
    {
      if (v1008 >> 61)
      {
        goto LABEL_2011;
      }

      v1009 = operator new(8 * v1008);
    }

    else
    {
      v1009 = 0;
    }

    v1010 = &v1009[8 * v1005];
    *v1010 = v992;
    v1002 = v1010 + 8;
    memcpy(v1009, v1003, v1004);
    *&v1475 = v1009;
    *(&v1475 + 1) = v1002;
    *&v1476 = &v1009[8 * v1008];
    if (v1003)
    {
      operator delete(v1003);
    }
  }

  else
  {
    **(&v1475 + 1) = v992;
    v1002 = (v1001 + 8);
  }

  *(&v1475 + 1) = v1002;
  v1011 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1011 + 1), "coreml.batchnorm", 16, __p[0], Context, 0, 0);
  v1011[12] = 0;
  *v1011 = &unk_1F5B376C8;
  if (!v1011[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::BatchNormOpPattern]";
    __p[1] = 91;
    v1012 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1012)
    {
      v1013 = v1012;
    }

    else
    {
      v1013 = __p[1];
    }

    v1014 = __p[0] + v1013;
    v1015 = (__p[1] - v1013);
    if ((__p[1] - v1013) >= 0x12)
    {
      v1016 = 18;
    }

    else
    {
      v1016 = __p[1] - v1013;
    }

    v1017 = &v1014[v1016];
    v1018 = &v1015[-v1016];
    if (v1018 >= v1018 - 1)
    {
      --v1018;
    }

    v1011[8] = v1017;
    v1011[9] = v1018;
  }

  v1019 = *(v1011 + 22);
  if (v1019 > *(v1011 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1011 + 10), (v1011 + 12), v1019, 16);
    LODWORD(v1019) = *(v1011 + 22);
  }

  *(v1011 + 22) = v1019;
  v1020 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1022 = v1475;
    v1023 = *(&v1475 + 1) - v1475;
    v1024 = (*(&v1475 + 1) - v1475) >> 3;
    v1025 = v1024 + 1;
    if ((v1024 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1026 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1025)
    {
      v1025 = v1026 >> 2;
    }

    if (v1026 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1027 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1027 = v1025;
    }

    if (v1027)
    {
      if (v1027 >> 61)
      {
        goto LABEL_2011;
      }

      v1028 = operator new(8 * v1027);
    }

    else
    {
      v1028 = 0;
    }

    v1029 = &v1028[8 * v1024];
    *v1029 = v1011;
    v1021 = v1029 + 8;
    memcpy(v1028, v1022, v1023);
    *&v1475 = v1028;
    *(&v1475 + 1) = v1021;
    *&v1476 = &v1028[8 * v1027];
    if (v1022)
    {
      operator delete(v1022);
    }
  }

  else
  {
    **(&v1475 + 1) = v1011;
    v1021 = (v1020 + 8);
  }

  *(&v1475 + 1) = v1021;
  v1030 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1030 + 1), "coreml.get_shape", 16, __p[0], Context, 0, 0);
  v1030[12] = 0;
  *v1030 = &unk_1F5B37730;
  if (!v1030[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::GetShapeOp, mlir::mps::ShapeOp>]";
    __p[1] = 149;
    v1031 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1031)
    {
      v1032 = v1031;
    }

    else
    {
      v1032 = __p[1];
    }

    v1033 = __p[0] + v1032;
    v1034 = (__p[1] - v1032);
    if ((__p[1] - v1032) >= 0x12)
    {
      v1035 = 18;
    }

    else
    {
      v1035 = __p[1] - v1032;
    }

    v1036 = &v1033[v1035];
    v1037 = &v1034[-v1035];
    if (v1037 >= v1037 - 1)
    {
      --v1037;
    }

    v1030[8] = v1036;
    v1030[9] = v1037;
  }

  v1038 = *(v1030 + 22);
  if (v1038 > *(v1030 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1030 + 10), (v1030 + 12), v1038, 16);
    LODWORD(v1038) = *(v1030 + 22);
  }

  *(v1030 + 22) = v1038;
  v1039 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1041 = v1475;
    v1042 = *(&v1475 + 1) - v1475;
    v1043 = (*(&v1475 + 1) - v1475) >> 3;
    v1044 = v1043 + 1;
    if ((v1043 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1045 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1044)
    {
      v1044 = v1045 >> 2;
    }

    if (v1045 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1046 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1046 = v1044;
    }

    if (v1046)
    {
      if (v1046 >> 61)
      {
        goto LABEL_2011;
      }

      v1047 = operator new(8 * v1046);
    }

    else
    {
      v1047 = 0;
    }

    v1048 = &v1047[8 * v1043];
    *v1048 = v1030;
    v1040 = v1048 + 8;
    memcpy(v1047, v1041, v1042);
    *&v1475 = v1047;
    *(&v1475 + 1) = v1040;
    *&v1476 = &v1047[8 * v1046];
    if (v1041)
    {
      operator delete(v1041);
    }
  }

  else
  {
    **(&v1475 + 1) = v1030;
    v1040 = (v1039 + 8);
  }

  *(&v1475 + 1) = v1040;
  v1049 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1049 + 1), "coreml.tile", 11, __p[0], Context, 0, 0);
  v1049[12] = 0;
  *v1049 = &unk_1F5B37798;
  if (!v1049[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::TileOp, mlir::mps::TileOp>]";
    __p[1] = 144;
    v1050 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1050)
    {
      v1051 = v1050;
    }

    else
    {
      v1051 = __p[1];
    }

    v1052 = __p[0] + v1051;
    v1053 = (__p[1] - v1051);
    if ((__p[1] - v1051) >= 0x12)
    {
      v1054 = 18;
    }

    else
    {
      v1054 = __p[1] - v1051;
    }

    v1055 = &v1052[v1054];
    v1056 = &v1053[-v1054];
    if (v1056 >= v1056 - 1)
    {
      --v1056;
    }

    v1049[8] = v1055;
    v1049[9] = v1056;
  }

  v1057 = *(v1049 + 22);
  if (v1057 > *(v1049 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1049 + 10), (v1049 + 12), v1057, 16);
    LODWORD(v1057) = *(v1049 + 22);
  }

  *(v1049 + 22) = v1057;
  v1058 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1060 = v1475;
    v1061 = *(&v1475 + 1) - v1475;
    v1062 = (*(&v1475 + 1) - v1475) >> 3;
    v1063 = v1062 + 1;
    if ((v1062 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1064 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1063)
    {
      v1063 = v1064 >> 2;
    }

    if (v1064 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1065 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1065 = v1063;
    }

    if (v1065)
    {
      if (v1065 >> 61)
      {
        goto LABEL_2011;
      }

      v1066 = operator new(8 * v1065);
    }

    else
    {
      v1066 = 0;
    }

    v1067 = &v1066[8 * v1062];
    *v1067 = v1049;
    v1059 = v1067 + 8;
    memcpy(v1066, v1060, v1061);
    *&v1475 = v1066;
    *(&v1475 + 1) = v1059;
    *&v1476 = &v1066[8 * v1065];
    if (v1060)
    {
      operator delete(v1060);
    }
  }

  else
  {
    **(&v1475 + 1) = v1049;
    v1059 = (v1058 + 8);
  }

  *(&v1475 + 1) = v1059;
  v1068 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1068 + 1), "coreml.non_zero", 15, __p[0], Context, 0, 0);
  v1068[12] = 0;
  *v1068 = &unk_1F5B37800;
  if (!v1068[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::NonZeroOp, mlir::mps::NonZeroOp>]";
    __p[1] = 150;
    v1069 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1069)
    {
      v1070 = v1069;
    }

    else
    {
      v1070 = __p[1];
    }

    v1071 = __p[0] + v1070;
    v1072 = (__p[1] - v1070);
    if ((__p[1] - v1070) >= 0x12)
    {
      v1073 = 18;
    }

    else
    {
      v1073 = __p[1] - v1070;
    }

    v1074 = &v1071[v1073];
    v1075 = &v1072[-v1073];
    if (v1075 >= v1075 - 1)
    {
      --v1075;
    }

    v1068[8] = v1074;
    v1068[9] = v1075;
  }

  v1076 = *(v1068 + 22);
  if (v1076 > *(v1068 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1068 + 10), (v1068 + 12), v1076, 16);
    LODWORD(v1076) = *(v1068 + 22);
  }

  *(v1068 + 22) = v1076;
  v1077 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1079 = v1475;
    v1080 = *(&v1475 + 1) - v1475;
    v1081 = (*(&v1475 + 1) - v1475) >> 3;
    v1082 = v1081 + 1;
    if ((v1081 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1083 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1082)
    {
      v1082 = v1083 >> 2;
    }

    if (v1083 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1084 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1084 = v1082;
    }

    if (v1084)
    {
      if (v1084 >> 61)
      {
        goto LABEL_2011;
      }

      v1085 = operator new(8 * v1084);
    }

    else
    {
      v1085 = 0;
    }

    v1086 = &v1085[8 * v1081];
    *v1086 = v1068;
    v1078 = v1086 + 8;
    memcpy(v1085, v1079, v1080);
    *&v1475 = v1085;
    *(&v1475 + 1) = v1078;
    *&v1476 = &v1085[8 * v1084];
    if (v1079)
    {
      operator delete(v1079);
    }
  }

  else
  {
    **(&v1475 + 1) = v1068;
    v1078 = (v1077 + 8);
  }

  *(&v1475 + 1) = v1078;
  v1087 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1087 + 1), "coreml.max_pool_2d", 18, __p[0], Context, 0, 0);
  v1087[12] = 0;
  *v1087 = &unk_1F5B37868;
  if (!v1087[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::MaxPool2dOpPattern]";
    __p[1] = 91;
    v1088 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1088)
    {
      v1089 = v1088;
    }

    else
    {
      v1089 = __p[1];
    }

    v1090 = __p[0] + v1089;
    v1091 = (__p[1] - v1089);
    if ((__p[1] - v1089) >= 0x12)
    {
      v1092 = 18;
    }

    else
    {
      v1092 = __p[1] - v1089;
    }

    v1093 = &v1090[v1092];
    v1094 = &v1091[-v1092];
    if (v1094 >= v1094 - 1)
    {
      --v1094;
    }

    v1087[8] = v1093;
    v1087[9] = v1094;
  }

  v1095 = *(v1087 + 22);
  if (v1095 > *(v1087 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1087 + 10), (v1087 + 12), v1095, 16);
    LODWORD(v1095) = *(v1087 + 22);
  }

  *(v1087 + 22) = v1095;
  v1096 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1098 = v1475;
    v1099 = *(&v1475 + 1) - v1475;
    v1100 = (*(&v1475 + 1) - v1475) >> 3;
    v1101 = v1100 + 1;
    if ((v1100 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1102 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1101)
    {
      v1101 = v1102 >> 2;
    }

    if (v1102 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1103 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1103 = v1101;
    }

    if (v1103)
    {
      if (v1103 >> 61)
      {
        goto LABEL_2011;
      }

      v1104 = operator new(8 * v1103);
    }

    else
    {
      v1104 = 0;
    }

    v1105 = &v1104[8 * v1100];
    *v1105 = v1087;
    v1097 = v1105 + 8;
    memcpy(v1104, v1098, v1099);
    *&v1475 = v1104;
    *(&v1475 + 1) = v1097;
    *&v1476 = &v1104[8 * v1103];
    if (v1098)
    {
      operator delete(v1098);
    }
  }

  else
  {
    **(&v1475 + 1) = v1087;
    v1097 = (v1096 + 8);
  }

  *(&v1475 + 1) = v1097;
  v1106 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1106 + 1), "coreml.avg_pool_2d", 18, __p[0], Context, 0, 0);
  v1106[12] = 0;
  *v1106 = &unk_1F5B378E8;
  if (!v1106[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::AvgPool2dOpPattern]";
    __p[1] = 91;
    v1107 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1107)
    {
      v1108 = v1107;
    }

    else
    {
      v1108 = __p[1];
    }

    v1109 = __p[0] + v1108;
    v1110 = (__p[1] - v1108);
    if ((__p[1] - v1108) >= 0x12)
    {
      v1111 = 18;
    }

    else
    {
      v1111 = __p[1] - v1108;
    }

    v1112 = &v1109[v1111];
    v1113 = &v1110[-v1111];
    if (v1113 >= v1113 - 1)
    {
      --v1113;
    }

    v1106[8] = v1112;
    v1106[9] = v1113;
  }

  v1114 = *(v1106 + 22);
  if (v1114 > *(v1106 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1106 + 10), (v1106 + 12), v1114, 16);
    LODWORD(v1114) = *(v1106 + 22);
  }

  *(v1106 + 22) = v1114;
  v1115 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1117 = v1475;
    v1118 = *(&v1475 + 1) - v1475;
    v1119 = (*(&v1475 + 1) - v1475) >> 3;
    v1120 = v1119 + 1;
    if ((v1119 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1121 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1120)
    {
      v1120 = v1121 >> 2;
    }

    if (v1121 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1122 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1122 = v1120;
    }

    if (v1122)
    {
      if (v1122 >> 61)
      {
        goto LABEL_2011;
      }

      v1123 = operator new(8 * v1122);
    }

    else
    {
      v1123 = 0;
    }

    v1124 = &v1123[8 * v1119];
    *v1124 = v1106;
    v1116 = v1124 + 8;
    memcpy(v1123, v1117, v1118);
    *&v1475 = v1123;
    *(&v1475 + 1) = v1116;
    *&v1476 = &v1123[8 * v1122];
    if (v1117)
    {
      operator delete(v1117);
    }
  }

  else
  {
    **(&v1475 + 1) = v1106;
    v1116 = (v1115 + 8);
  }

  *(&v1475 + 1) = v1116;
  v1125 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1125 + 1), "coreml.invoke", 13, __p[0], Context, 0, 0);
  v1125[12] = 0;
  *v1125 = &unk_1F5B37968;
  if (!v1125[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::InvokeOpPattern]";
    __p[1] = 88;
    v1126 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1126)
    {
      v1127 = v1126;
    }

    else
    {
      v1127 = __p[1];
    }

    v1128 = __p[0] + v1127;
    v1129 = (__p[1] - v1127);
    if ((__p[1] - v1127) >= 0x12)
    {
      v1130 = 18;
    }

    else
    {
      v1130 = __p[1] - v1127;
    }

    v1131 = &v1128[v1130];
    v1132 = &v1129[-v1130];
    if (v1132 >= v1132 - 1)
    {
      --v1132;
    }

    v1125[8] = v1131;
    v1125[9] = v1132;
  }

  v1133 = *(v1125 + 22);
  if (v1133 > *(v1125 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1125 + 10), (v1125 + 12), v1133, 16);
    LODWORD(v1133) = *(v1125 + 22);
  }

  *(v1125 + 22) = v1133;
  v1134 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1136 = v1475;
    v1137 = *(&v1475 + 1) - v1475;
    v1138 = (*(&v1475 + 1) - v1475) >> 3;
    v1139 = v1138 + 1;
    if ((v1138 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1140 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1139)
    {
      v1139 = v1140 >> 2;
    }

    if (v1140 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1141 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1141 = v1139;
    }

    if (v1141)
    {
      if (v1141 >> 61)
      {
        goto LABEL_2011;
      }

      v1142 = operator new(8 * v1141);
    }

    else
    {
      v1142 = 0;
    }

    v1143 = &v1142[8 * v1138];
    *v1143 = v1125;
    v1135 = v1143 + 8;
    memcpy(v1142, v1136, v1137);
    *&v1475 = v1142;
    *(&v1475 + 1) = v1135;
    *&v1476 = &v1142[8 * v1141];
    if (v1136)
    {
      operator delete(v1136);
    }
  }

  else
  {
    **(&v1475 + 1) = v1125;
    v1135 = (v1134 + 8);
  }

  *(&v1475 + 1) = v1135;
  v1144 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1144 + 1), "coremlax.quantize", 17, __p[0], Context, 0, 0);
  v1144[12] = 0;
  *v1144 = &unk_1F5B379D0;
  if (!v1144[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::QuantizeBaseOpPattern<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp, mlir::mps::QuantizeOp>]";
    __p[1] = 161;
    v1145 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1145)
    {
      v1146 = v1145;
    }

    else
    {
      v1146 = __p[1];
    }

    v1147 = __p[0] + v1146;
    v1148 = (__p[1] - v1146);
    if ((__p[1] - v1146) >= 0x12)
    {
      v1149 = 18;
    }

    else
    {
      v1149 = __p[1] - v1146;
    }

    v1150 = &v1147[v1149];
    v1151 = &v1148[-v1149];
    if (v1151 >= v1151 - 1)
    {
      --v1151;
    }

    v1144[8] = v1150;
    v1144[9] = v1151;
  }

  v1152 = *(v1144 + 22);
  if (v1152 > *(v1144 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1144 + 10), (v1144 + 12), v1152, 16);
    LODWORD(v1152) = *(v1144 + 22);
  }

  *(v1144 + 22) = v1152;
  v1153 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1155 = v1475;
    v1156 = *(&v1475 + 1) - v1475;
    v1157 = (*(&v1475 + 1) - v1475) >> 3;
    v1158 = v1157 + 1;
    if ((v1157 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1159 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1158)
    {
      v1158 = v1159 >> 2;
    }

    if (v1159 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1160 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1160 = v1158;
    }

    if (v1160)
    {
      if (v1160 >> 61)
      {
        goto LABEL_2011;
      }

      v1161 = operator new(8 * v1160);
    }

    else
    {
      v1161 = 0;
    }

    v1162 = &v1161[8 * v1157];
    *v1162 = v1144;
    v1154 = v1162 + 8;
    memcpy(v1161, v1155, v1156);
    *&v1475 = v1161;
    *(&v1475 + 1) = v1154;
    *&v1476 = &v1161[8 * v1160];
    if (v1155)
    {
      operator delete(v1155);
    }
  }

  else
  {
    **(&v1475 + 1) = v1144;
    v1154 = (v1153 + 8);
  }

  *(&v1475 + 1) = v1154;
  v1163 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1163 + 1), "coremlax.dequantize", 19, __p[0], Context, 0, 0);
  v1163[12] = 0;
  *v1163 = &unk_1F5B37A38;
  if (!v1163[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::QuantizeBaseOpPattern<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp, mlir::mps::DequantizeOp>]";
    __p[1] = 165;
    v1164 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1164)
    {
      v1165 = v1164;
    }

    else
    {
      v1165 = __p[1];
    }

    v1166 = __p[0] + v1165;
    v1167 = (__p[1] - v1165);
    if ((__p[1] - v1165) >= 0x12)
    {
      v1168 = 18;
    }

    else
    {
      v1168 = __p[1] - v1165;
    }

    v1169 = &v1166[v1168];
    v1170 = &v1167[-v1168];
    if (v1170 >= v1170 - 1)
    {
      --v1170;
    }

    v1163[8] = v1169;
    v1163[9] = v1170;
  }

  v1171 = *(v1163 + 22);
  if (v1171 > *(v1163 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1163 + 10), (v1163 + 12), v1171, 16);
    LODWORD(v1171) = *(v1163 + 22);
  }

  *(v1163 + 22) = v1171;
  v1172 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1174 = v1475;
    v1175 = *(&v1475 + 1) - v1475;
    v1176 = (*(&v1475 + 1) - v1475) >> 3;
    v1177 = v1176 + 1;
    if ((v1176 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1178 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1177)
    {
      v1177 = v1178 >> 2;
    }

    if (v1178 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1179 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1179 = v1177;
    }

    if (v1179)
    {
      if (v1179 >> 61)
      {
        goto LABEL_2011;
      }

      v1180 = operator new(8 * v1179);
    }

    else
    {
      v1180 = 0;
    }

    v1181 = &v1180[8 * v1176];
    *v1181 = v1163;
    v1173 = v1181 + 8;
    memcpy(v1180, v1174, v1175);
    *&v1475 = v1180;
    *(&v1475 + 1) = v1173;
    *&v1476 = &v1180[8 * v1179];
    if (v1174)
    {
      operator delete(v1174);
    }
  }

  else
  {
    **(&v1475 + 1) = v1163;
    v1173 = (v1172 + 8);
  }

  *(&v1475 + 1) = v1173;
  v1182 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1182 + 1), "coremlax.constexpr_lut_to_dense", 31, __p[0], Context, 0, 0);
  v1182[12] = 0;
  *v1182 = &unk_1F5B37AA0;
  if (!v1182[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConstexprLutToDenseOpPattern]";
    __p[1] = 101;
    v1183 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1183)
    {
      v1184 = v1183;
    }

    else
    {
      v1184 = __p[1];
    }

    v1185 = __p[0] + v1184;
    v1186 = (__p[1] - v1184);
    if ((__p[1] - v1184) >= 0x12)
    {
      v1187 = 18;
    }

    else
    {
      v1187 = __p[1] - v1184;
    }

    v1188 = &v1185[v1187];
    v1189 = &v1186[-v1187];
    if (v1189 >= v1189 - 1)
    {
      --v1189;
    }

    v1182[8] = v1188;
    v1182[9] = v1189;
  }

  v1190 = *(v1182 + 22);
  if (v1190 > *(v1182 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1182 + 10), (v1182 + 12), v1190, 16);
    LODWORD(v1190) = *(v1182 + 22);
  }

  *(v1182 + 22) = v1190;
  v1191 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1193 = v1475;
    v1194 = *(&v1475 + 1) - v1475;
    v1195 = (*(&v1475 + 1) - v1475) >> 3;
    v1196 = v1195 + 1;
    if ((v1195 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1197 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1196)
    {
      v1196 = v1197 >> 2;
    }

    if (v1197 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1198 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1198 = v1196;
    }

    if (v1198)
    {
      if (v1198 >> 61)
      {
        goto LABEL_2011;
      }

      v1199 = operator new(8 * v1198);
    }

    else
    {
      v1199 = 0;
    }

    v1200 = &v1199[8 * v1195];
    *v1200 = v1182;
    v1192 = v1200 + 8;
    memcpy(v1199, v1193, v1194);
    *&v1475 = v1199;
    *(&v1475 + 1) = v1192;
    *&v1476 = &v1199[8 * v1198];
    if (v1193)
    {
      operator delete(v1193);
    }
  }

  else
  {
    **(&v1475 + 1) = v1182;
    v1192 = (v1191 + 8);
  }

  *(&v1475 + 1) = v1192;
  v1201 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1201 + 1), "coremlax.constexpr_blockwise_shift_scale", 40, __p[0], Context, 0, 0);
  v1201[12] = 0;
  *v1201 = &unk_1F5B37B08;
  if (!v1201[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConstexprBlockwiseShiftScaleOpPattern]";
    __p[1] = 110;
    v1202 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1202)
    {
      v1203 = v1202;
    }

    else
    {
      v1203 = __p[1];
    }

    v1204 = __p[0] + v1203;
    v1205 = (__p[1] - v1203);
    if ((__p[1] - v1203) >= 0x12)
    {
      v1206 = 18;
    }

    else
    {
      v1206 = __p[1] - v1203;
    }

    v1207 = &v1204[v1206];
    v1208 = &v1205[-v1206];
    if (v1208 >= v1208 - 1)
    {
      --v1208;
    }

    v1201[8] = v1207;
    v1201[9] = v1208;
  }

  v1209 = *(v1201 + 22);
  if (v1209 > *(v1201 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1201 + 10), (v1201 + 12), v1209, 16);
    LODWORD(v1209) = *(v1201 + 22);
  }

  *(v1201 + 22) = v1209;
  v1210 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1212 = v1475;
    v1213 = *(&v1475 + 1) - v1475;
    v1214 = (*(&v1475 + 1) - v1475) >> 3;
    v1215 = v1214 + 1;
    if ((v1214 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1216 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1215)
    {
      v1215 = v1216 >> 2;
    }

    if (v1216 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1217 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1217 = v1215;
    }

    if (v1217)
    {
      if (v1217 >> 61)
      {
        goto LABEL_2011;
      }

      v1218 = operator new(8 * v1217);
    }

    else
    {
      v1218 = 0;
    }

    v1219 = &v1218[8 * v1214];
    *v1219 = v1201;
    v1211 = v1219 + 8;
    memcpy(v1218, v1212, v1213);
    *&v1475 = v1218;
    *(&v1475 + 1) = v1211;
    *&v1476 = &v1218[8 * v1217];
    if (v1212)
    {
      operator delete(v1212);
    }
  }

  else
  {
    **(&v1475 + 1) = v1201;
    v1211 = (v1210 + 8);
  }

  *(&v1475 + 1) = v1211;
  v1220 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1220 + 1), "coreml.create_complex", 21, __p[0], Context, 0, 0);
  v1220[12] = 0;
  *v1220 = &unk_1F5B37B70;
  if (!v1220[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::CreateComplexOp, mlir::mps::CreateComplexOp>]";
    __p[1] = 162;
    v1221 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1221)
    {
      v1222 = v1221;
    }

    else
    {
      v1222 = __p[1];
    }

    v1223 = __p[0] + v1222;
    v1224 = (__p[1] - v1222);
    if ((__p[1] - v1222) >= 0x12)
    {
      v1225 = 18;
    }

    else
    {
      v1225 = __p[1] - v1222;
    }

    v1226 = &v1223[v1225];
    v1227 = &v1224[-v1225];
    if (v1227 >= v1227 - 1)
    {
      --v1227;
    }

    v1220[8] = v1226;
    v1220[9] = v1227;
  }

  v1228 = *(v1220 + 22);
  if (v1228 > *(v1220 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1220 + 10), (v1220 + 12), v1228, 16);
    LODWORD(v1228) = *(v1220 + 22);
  }

  *(v1220 + 22) = v1228;
  v1229 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1231 = v1475;
    v1232 = *(&v1475 + 1) - v1475;
    v1233 = (*(&v1475 + 1) - v1475) >> 3;
    v1234 = v1233 + 1;
    if ((v1233 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1235 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1234)
    {
      v1234 = v1235 >> 2;
    }

    if (v1235 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1236 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1236 = v1234;
    }

    if (v1236)
    {
      if (v1236 >> 61)
      {
        goto LABEL_2011;
      }

      v1237 = operator new(8 * v1236);
    }

    else
    {
      v1237 = 0;
    }

    v1238 = &v1237[8 * v1233];
    *v1238 = v1220;
    v1230 = v1238 + 8;
    memcpy(v1237, v1231, v1232);
    *&v1475 = v1237;
    *(&v1475 + 1) = v1230;
    *&v1476 = &v1237[8 * v1236];
    if (v1231)
    {
      operator delete(v1231);
    }
  }

  else
  {
    **(&v1475 + 1) = v1220;
    v1230 = (v1229 + 8);
  }

  *(&v1475 + 1) = v1230;
  v1239 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1239 + 1), "coreml.real_part", 16, __p[0], Context, 0, 0);
  v1239[12] = 0;
  *v1239 = &unk_1F5B37BD8;
  if (!v1239[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::RealPartOp, mlir::mps::RealPartOp>]";
    __p[1] = 152;
    v1240 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1240)
    {
      v1241 = v1240;
    }

    else
    {
      v1241 = __p[1];
    }

    v1242 = __p[0] + v1241;
    v1243 = (__p[1] - v1241);
    if ((__p[1] - v1241) >= 0x12)
    {
      v1244 = 18;
    }

    else
    {
      v1244 = __p[1] - v1241;
    }

    v1245 = &v1242[v1244];
    v1246 = &v1243[-v1244];
    if (v1246 >= v1246 - 1)
    {
      --v1246;
    }

    v1239[8] = v1245;
    v1239[9] = v1246;
  }

  v1247 = *(v1239 + 22);
  if (v1247 > *(v1239 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1239 + 10), (v1239 + 12), v1247, 16);
    LODWORD(v1247) = *(v1239 + 22);
  }

  *(v1239 + 22) = v1247;
  v1248 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1250 = v1475;
    v1251 = *(&v1475 + 1) - v1475;
    v1252 = (*(&v1475 + 1) - v1475) >> 3;
    v1253 = v1252 + 1;
    if ((v1252 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1254 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1253)
    {
      v1253 = v1254 >> 2;
    }

    if (v1254 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1255 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1255 = v1253;
    }

    if (v1255)
    {
      if (v1255 >> 61)
      {
        goto LABEL_2011;
      }

      v1256 = operator new(8 * v1255);
    }

    else
    {
      v1256 = 0;
    }

    v1257 = &v1256[8 * v1252];
    *v1257 = v1239;
    v1249 = v1257 + 8;
    memcpy(v1256, v1250, v1251);
    *&v1475 = v1256;
    *(&v1475 + 1) = v1249;
    *&v1476 = &v1256[8 * v1255];
    if (v1250)
    {
      operator delete(v1250);
    }
  }

  else
  {
    **(&v1475 + 1) = v1239;
    v1249 = (v1248 + 8);
  }

  *(&v1475 + 1) = v1249;
  v1258 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1258 + 1), "coreml.imaginary_part", 21, __p[0], Context, 0, 0);
  v1258[12] = 0;
  *v1258 = &unk_1F5B37C40;
  if (!v1258[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp, mlir::mps::ImaginaryPartOp>]";
    __p[1] = 162;
    v1259 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1259)
    {
      v1260 = v1259;
    }

    else
    {
      v1260 = __p[1];
    }

    v1261 = __p[0] + v1260;
    v1262 = (__p[1] - v1260);
    if ((__p[1] - v1260) >= 0x12)
    {
      v1263 = 18;
    }

    else
    {
      v1263 = __p[1] - v1260;
    }

    v1264 = &v1261[v1263];
    v1265 = &v1262[-v1263];
    if (v1265 >= v1265 - 1)
    {
      --v1265;
    }

    v1258[8] = v1264;
    v1258[9] = v1265;
  }

  v1266 = *(v1258 + 22);
  if (v1266 > *(v1258 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1258 + 10), (v1258 + 12), v1266, 16);
    LODWORD(v1266) = *(v1258 + 22);
  }

  *(v1258 + 22) = v1266;
  v1267 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1269 = v1475;
    v1270 = *(&v1475 + 1) - v1475;
    v1271 = (*(&v1475 + 1) - v1475) >> 3;
    v1272 = v1271 + 1;
    if ((v1271 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1273 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1272)
    {
      v1272 = v1273 >> 2;
    }

    if (v1273 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1274 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1274 = v1272;
    }

    if (v1274)
    {
      if (v1274 >> 61)
      {
        goto LABEL_2011;
      }

      v1275 = operator new(8 * v1274);
    }

    else
    {
      v1275 = 0;
    }

    v1276 = &v1275[8 * v1271];
    *v1276 = v1258;
    v1268 = v1276 + 8;
    memcpy(v1275, v1269, v1270);
    *&v1475 = v1275;
    *(&v1475 + 1) = v1268;
    *&v1476 = &v1275[8 * v1274];
    if (v1269)
    {
      operator delete(v1269);
    }
  }

  else
  {
    **(&v1475 + 1) = v1258;
    v1268 = (v1267 + 8);
  }

  *(&v1475 + 1) = v1268;
  v1277 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1277 + 1), "coreml.if", 9, __p[0], Context, 0, 0);
  v1277[12] = 0;
  *v1277 = &unk_1F5B37CA8;
  if (!v1277[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::IfOpPattern]";
    __p[1] = 84;
    v1278 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1278)
    {
      v1279 = v1278;
    }

    else
    {
      v1279 = __p[1];
    }

    v1280 = __p[0] + v1279;
    v1281 = (__p[1] - v1279);
    if ((__p[1] - v1279) >= 0x12)
    {
      v1282 = 18;
    }

    else
    {
      v1282 = __p[1] - v1279;
    }

    v1283 = &v1280[v1282];
    v1284 = &v1281[-v1282];
    if (v1284 >= v1284 - 1)
    {
      --v1284;
    }

    v1277[8] = v1283;
    v1277[9] = v1284;
  }

  v1285 = *(v1277 + 22);
  if (v1285 > *(v1277 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1277 + 10), (v1277 + 12), v1285, 16);
    LODWORD(v1285) = *(v1277 + 22);
  }

  *(v1277 + 22) = v1285;
  v1286 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1288 = v1475;
    v1289 = *(&v1475 + 1) - v1475;
    v1290 = (*(&v1475 + 1) - v1475) >> 3;
    v1291 = v1290 + 1;
    if ((v1290 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1292 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1291)
    {
      v1291 = v1292 >> 2;
    }

    if (v1292 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1293 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1293 = v1291;
    }

    if (v1293)
    {
      if (v1293 >> 61)
      {
        goto LABEL_2011;
      }

      v1294 = operator new(8 * v1293);
    }

    else
    {
      v1294 = 0;
    }

    v1295 = &v1294[8 * v1290];
    *v1295 = v1277;
    v1287 = v1295 + 8;
    memcpy(v1294, v1288, v1289);
    *&v1475 = v1294;
    *(&v1475 + 1) = v1287;
    *&v1476 = &v1294[8 * v1293];
    if (v1288)
    {
      operator delete(v1288);
    }
  }

  else
  {
    **(&v1475 + 1) = v1277;
    v1287 = (v1286 + 8);
  }

  *(&v1475 + 1) = v1287;
  v1296 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1296 + 1), "coreml.yield", 12, __p[0], Context, 0, 0);
  v1296[12] = 0;
  *v1296 = &unk_1F5B37D10;
  if (!v1296[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialPattern<mlir::ODIE::Compiler::CoreML::YieldOp, mlir::scf::YieldOp>]";
    __p[1] = 146;
    v1297 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1297)
    {
      v1298 = v1297;
    }

    else
    {
      v1298 = __p[1];
    }

    v1299 = __p[0] + v1298;
    v1300 = (__p[1] - v1298);
    if ((__p[1] - v1298) >= 0x12)
    {
      v1301 = 18;
    }

    else
    {
      v1301 = __p[1] - v1298;
    }

    v1302 = &v1299[v1301];
    v1303 = &v1300[-v1301];
    if (v1303 >= v1303 - 1)
    {
      --v1303;
    }

    v1296[8] = v1302;
    v1296[9] = v1303;
  }

  v1304 = *(v1296 + 22);
  if (v1304 > *(v1296 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1296 + 10), (v1296 + 12), v1304, 16);
    LODWORD(v1304) = *(v1296 + 22);
  }

  *(v1296 + 22) = v1304;
  v1305 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1307 = v1475;
    v1308 = *(&v1475 + 1) - v1475;
    v1309 = (*(&v1475 + 1) - v1475) >> 3;
    v1310 = v1309 + 1;
    if ((v1309 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1311 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1310)
    {
      v1310 = v1311 >> 2;
    }

    if (v1311 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1312 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1312 = v1310;
    }

    if (v1312)
    {
      if (v1312 >> 61)
      {
        goto LABEL_2011;
      }

      v1313 = operator new(8 * v1312);
    }

    else
    {
      v1313 = 0;
    }

    v1314 = &v1313[8 * v1309];
    *v1314 = v1296;
    v1306 = v1314 + 8;
    memcpy(v1313, v1307, v1308);
    *&v1475 = v1313;
    *(&v1475 + 1) = v1306;
    *&v1476 = &v1313[8 * v1312];
    if (v1307)
    {
      operator delete(v1307);
    }
  }

  else
  {
    **(&v1475 + 1) = v1296;
    v1306 = (v1305 + 8);
  }

  *(&v1475 + 1) = v1306;
  v1315 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1315 + 1), "coreml.while", 12, __p[0], Context, 0, 0);
  v1315[12] = 0;
  *v1315 = &unk_1F5B37D78;
  if (!v1315[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::WhileOpPattern]";
    __p[1] = 87;
    v1316 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1316)
    {
      v1317 = v1316;
    }

    else
    {
      v1317 = __p[1];
    }

    v1318 = __p[0] + v1317;
    v1319 = (__p[1] - v1317);
    if ((__p[1] - v1317) >= 0x12)
    {
      v1320 = 18;
    }

    else
    {
      v1320 = __p[1] - v1317;
    }

    v1321 = &v1318[v1320];
    v1322 = &v1319[-v1320];
    if (v1322 >= v1322 - 1)
    {
      --v1322;
    }

    v1315[8] = v1321;
    v1315[9] = v1322;
  }

  v1323 = *(v1315 + 22);
  if (v1323 > *(v1315 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1315 + 10), (v1315 + 12), v1323, 16);
    LODWORD(v1323) = *(v1315 + 22);
  }

  *(v1315 + 22) = v1323;
  v1324 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1326 = v1475;
    v1327 = *(&v1475 + 1) - v1475;
    v1328 = (*(&v1475 + 1) - v1475) >> 3;
    v1329 = v1328 + 1;
    if ((v1328 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1330 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1329)
    {
      v1329 = v1330 >> 2;
    }

    if (v1330 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1331 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1331 = v1329;
    }

    if (v1331)
    {
      if (v1331 >> 61)
      {
        goto LABEL_2011;
      }

      v1332 = operator new(8 * v1331);
    }

    else
    {
      v1332 = 0;
    }

    v1333 = &v1332[8 * v1328];
    *v1333 = v1315;
    v1325 = v1333 + 8;
    memcpy(v1332, v1326, v1327);
    *&v1475 = v1332;
    *(&v1475 + 1) = v1325;
    *&v1476 = &v1332[8 * v1331];
    if (v1326)
    {
      operator delete(v1326);
    }
  }

  else
  {
    **(&v1475 + 1) = v1315;
    v1325 = (v1324 + 8);
  }

  *(&v1475 + 1) = v1325;
  v1334 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1334 + 1), "coreml.condition", 16, __p[0], Context, 0, 0);
  v1334[12] = 0;
  *v1334 = &unk_1F5B37DE0;
  if (!v1334[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConditionOpOpPattern]";
    __p[1] = 93;
    v1335 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1335)
    {
      v1336 = v1335;
    }

    else
    {
      v1336 = __p[1];
    }

    v1337 = __p[0] + v1336;
    v1338 = (__p[1] - v1336);
    if ((__p[1] - v1336) >= 0x12)
    {
      v1339 = 18;
    }

    else
    {
      v1339 = __p[1] - v1336;
    }

    v1340 = &v1337[v1339];
    v1341 = &v1338[-v1339];
    if (v1341 >= v1341 - 1)
    {
      --v1341;
    }

    v1334[8] = v1340;
    v1334[9] = v1341;
  }

  v1342 = *(v1334 + 22);
  if (v1342 > *(v1334 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1334 + 10), (v1334 + 12), v1342, 16);
    LODWORD(v1342) = *(v1334 + 22);
  }

  *(v1334 + 22) = v1342;
  v1343 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1345 = v1475;
    v1346 = *(&v1475 + 1) - v1475;
    v1347 = (*(&v1475 + 1) - v1475) >> 3;
    v1348 = v1347 + 1;
    if ((v1347 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1349 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1348)
    {
      v1348 = v1349 >> 2;
    }

    if (v1349 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1350 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1350 = v1348;
    }

    if (v1350)
    {
      if (v1350 >> 61)
      {
        goto LABEL_2011;
      }

      v1351 = operator new(8 * v1350);
    }

    else
    {
      v1351 = 0;
    }

    v1352 = &v1351[8 * v1347];
    *v1352 = v1334;
    v1344 = v1352 + 8;
    memcpy(v1351, v1345, v1346);
    *&v1475 = v1351;
    *(&v1475 + 1) = v1344;
    *&v1476 = &v1351[8 * v1350];
    if (v1345)
    {
      operator delete(v1345);
    }
  }

  else
  {
    **(&v1475 + 1) = v1334;
    v1344 = (v1343 + 8);
  }

  *(&v1475 + 1) = v1344;
  v1353 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1353 + 1), "coreml.create_token", 19, __p[0], Context, 0, 0);
  v1353[12] = 0;
  *v1353 = &unk_1F5B37E48;
  if (!v1353[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::CreateTokenOpPattern]";
    __p[1] = 93;
    v1354 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1354)
    {
      v1355 = v1354;
    }

    else
    {
      v1355 = __p[1];
    }

    v1356 = __p[0] + v1355;
    v1357 = (__p[1] - v1355);
    if ((__p[1] - v1355) >= 0x12)
    {
      v1358 = 18;
    }

    else
    {
      v1358 = __p[1] - v1355;
    }

    v1359 = &v1356[v1358];
    v1360 = &v1357[-v1358];
    if (v1360 >= v1360 - 1)
    {
      --v1360;
    }

    v1353[8] = v1359;
    v1353[9] = v1360;
  }

  v1361 = *(v1353 + 22);
  if (v1361 > *(v1353 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1353 + 10), (v1353 + 12), v1361, 16);
    LODWORD(v1361) = *(v1353 + 22);
  }

  *(v1353 + 22) = v1361;
  v1362 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1364 = v1475;
    v1365 = *(&v1475 + 1) - v1475;
    v1366 = (*(&v1475 + 1) - v1475) >> 3;
    v1367 = v1366 + 1;
    if ((v1366 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1368 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1367)
    {
      v1367 = v1368 >> 2;
    }

    if (v1368 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1369 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1369 = v1367;
    }

    if (v1369)
    {
      if (v1369 >> 61)
      {
        goto LABEL_2011;
      }

      v1370 = operator new(8 * v1369);
    }

    else
    {
      v1370 = 0;
    }

    v1371 = &v1370[8 * v1366];
    *v1371 = v1353;
    v1363 = v1371 + 8;
    memcpy(v1370, v1364, v1365);
    *&v1475 = v1370;
    *(&v1475 + 1) = v1363;
    *&v1476 = &v1370[8 * v1369];
    if (v1364)
    {
      operator delete(v1364);
    }
  }

  else
  {
    **(&v1475 + 1) = v1353;
    v1363 = (v1362 + 8);
  }

  *(&v1475 + 1) = v1363;
  v1372 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1372 + 1), "coreml.write_handle", 19, __p[0], Context, 0, 0);
  v1372[12] = 0;
  *v1372 = &unk_1F5B37EB0;
  if (!v1372[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::WriteHandleOpPattern]";
    __p[1] = 93;
    v1373 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1373)
    {
      v1374 = v1373;
    }

    else
    {
      v1374 = __p[1];
    }

    v1375 = __p[0] + v1374;
    v1376 = (__p[1] - v1374);
    if ((__p[1] - v1374) >= 0x12)
    {
      v1377 = 18;
    }

    else
    {
      v1377 = __p[1] - v1374;
    }

    v1378 = &v1375[v1377];
    v1379 = &v1376[-v1377];
    if (v1379 >= v1379 - 1)
    {
      --v1379;
    }

    v1372[8] = v1378;
    v1372[9] = v1379;
  }

  v1380 = *(v1372 + 22);
  if (v1380 > *(v1372 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1372 + 10), (v1372 + 12), v1380, 16);
    LODWORD(v1380) = *(v1372 + 22);
  }

  *(v1372 + 22) = v1380;
  v1381 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1383 = v1475;
    v1384 = *(&v1475 + 1) - v1475;
    v1385 = (*(&v1475 + 1) - v1475) >> 3;
    v1386 = v1385 + 1;
    if ((v1385 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1387 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1386)
    {
      v1386 = v1387 >> 2;
    }

    if (v1387 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1388 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1388 = v1386;
    }

    if (v1388)
    {
      if (v1388 >> 61)
      {
        goto LABEL_2011;
      }

      v1389 = operator new(8 * v1388);
    }

    else
    {
      v1389 = 0;
    }

    v1390 = &v1389[8 * v1385];
    *v1390 = v1372;
    v1382 = v1390 + 8;
    memcpy(v1389, v1383, v1384);
    *&v1475 = v1389;
    *(&v1475 + 1) = v1382;
    *&v1476 = &v1389[8 * v1388];
    if (v1383)
    {
      operator delete(v1383);
    }
  }

  else
  {
    **(&v1475 + 1) = v1372;
    v1382 = (v1381 + 8);
  }

  *(&v1475 + 1) = v1382;
  v1391 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1391 + 1), "coreml.read_handle", 18, __p[0], Context, 0, 0);
  v1391[12] = 0;
  *v1391 = &unk_1F5B37F18;
  if (!v1391[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ReadHandleOpPattern]";
    __p[1] = 92;
    v1392 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1392)
    {
      v1393 = v1392;
    }

    else
    {
      v1393 = __p[1];
    }

    v1394 = __p[0] + v1393;
    v1395 = (__p[1] - v1393);
    if ((__p[1] - v1393) >= 0x12)
    {
      v1396 = 18;
    }

    else
    {
      v1396 = __p[1] - v1393;
    }

    v1397 = &v1394[v1396];
    v1398 = &v1395[-v1396];
    if (v1398 >= v1398 - 1)
    {
      --v1398;
    }

    v1391[8] = v1397;
    v1391[9] = v1398;
  }

  v1399 = *(v1391 + 22);
  if (v1399 > *(v1391 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1391 + 10), (v1391 + 12), v1399, 16);
    LODWORD(v1399) = *(v1391 + 22);
  }

  *(v1391 + 22) = v1399;
  v1400 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1402 = v1475;
    v1403 = *(&v1475 + 1) - v1475;
    v1404 = (*(&v1475 + 1) - v1475) >> 3;
    v1405 = v1404 + 1;
    if ((v1404 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1406 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1405)
    {
      v1405 = v1406 >> 2;
    }

    if (v1406 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1407 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1407 = v1405;
    }

    if (v1407)
    {
      if (v1407 >> 61)
      {
        goto LABEL_2011;
      }

      v1408 = operator new(8 * v1407);
    }

    else
    {
      v1408 = 0;
    }

    v1409 = &v1408[8 * v1404];
    *v1409 = v1391;
    v1401 = v1409 + 8;
    memcpy(v1408, v1402, v1403);
    *&v1475 = v1408;
    *(&v1475 + 1) = v1401;
    *&v1476 = &v1408[8 * v1407];
    if (v1402)
    {
      operator delete(v1402);
    }
  }

  else
  {
    **(&v1475 + 1) = v1391;
    v1401 = (v1400 + 8);
  }

  *(&v1475 + 1) = v1401;
  v1410 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1410 + 1), "coreml.write_handle", 19, __p[0], Context, 0, 0);
  v1410[12] = 0;
  *v1410 = &unk_1F5B37F80;
  if (!v1410[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::WriteHandleWithConstraintsPattern]";
    __p[1] = 106;
    v1411 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1411)
    {
      v1412 = v1411;
    }

    else
    {
      v1412 = __p[1];
    }

    v1413 = __p[0] + v1412;
    v1414 = (__p[1] - v1412);
    if ((__p[1] - v1412) >= 0x12)
    {
      v1415 = 18;
    }

    else
    {
      v1415 = __p[1] - v1412;
    }

    v1416 = &v1413[v1415];
    v1417 = &v1414[-v1415];
    if (v1417 >= v1417 - 1)
    {
      --v1417;
    }

    v1410[8] = v1416;
    v1410[9] = v1417;
  }

  v1418 = *(v1410 + 22);
  if (v1418 > *(v1410 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1410 + 10), (v1410 + 12), v1418, 16);
    LODWORD(v1418) = *(v1410 + 22);
  }

  *(v1410 + 22) = v1418;
  v1419 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1421 = v1475;
    v1422 = *(&v1475 + 1) - v1475;
    v1423 = (*(&v1475 + 1) - v1475) >> 3;
    v1424 = v1423 + 1;
    if ((v1423 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1425 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1424)
    {
      v1424 = v1425 >> 2;
    }

    if (v1425 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1426 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1426 = v1424;
    }

    if (v1426)
    {
      if (v1426 >> 61)
      {
        goto LABEL_2011;
      }

      v1427 = operator new(8 * v1426);
    }

    else
    {
      v1427 = 0;
    }

    v1428 = &v1427[8 * v1423];
    *v1428 = v1410;
    v1420 = v1428 + 8;
    memcpy(v1427, v1421, v1422);
    *&v1475 = v1427;
    *(&v1475 + 1) = v1420;
    *&v1476 = &v1427[8 * v1426];
    if (v1421)
    {
      operator delete(v1421);
    }
  }

  else
  {
    **(&v1475 + 1) = v1410;
    v1420 = (v1419 + 8);
  }

  *(&v1475 + 1) = v1420;
  v1429 = operator new(0x70uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1429 + 1), "coremlax.copy_discarding_constraints", 36, __p[0], Context, 0, 0);
  v1429[12] = 0;
  *v1429 = &unk_1F5B37FE8;
  v1429[13] = this + 592;
  if (!v1429[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::CopyDiscardingConstraintsOpPattern]";
    __p[1] = 107;
    v1430 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1430)
    {
      v1431 = v1430;
    }

    else
    {
      v1431 = __p[1];
    }

    v1432 = __p[0] + v1431;
    v1433 = (__p[1] - v1431);
    if ((__p[1] - v1431) >= 0x12)
    {
      v1434 = 18;
    }

    else
    {
      v1434 = __p[1] - v1431;
    }

    v1435 = &v1432[v1434];
    v1436 = &v1433[-v1434];
    if (v1436 >= v1436 - 1)
    {
      --v1436;
    }

    v1429[8] = v1435;
    v1429[9] = v1436;
  }

  v1437 = *(v1429 + 22);
  if (v1437 > *(v1429 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1429 + 10), (v1429 + 12), v1437, 16);
    LODWORD(v1437) = *(v1429 + 22);
  }

  *(v1429 + 22) = v1437;
  v1438 = *(&v1475 + 1);
  if (*(&v1475 + 1) >= v1476)
  {
    v1440 = v1475;
    v1441 = *(&v1475 + 1) - v1475;
    v1442 = (*(&v1475 + 1) - v1475) >> 3;
    v1443 = v1442 + 1;
    if ((v1442 + 1) >> 61)
    {
      goto LABEL_2010;
    }

    v1444 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1443)
    {
      v1443 = v1444 >> 2;
    }

    if (v1444 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1445 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1445 = v1443;
    }

    if (v1445)
    {
      if (v1445 >> 61)
      {
        goto LABEL_2011;
      }

      v1446 = operator new(8 * v1445);
    }

    else
    {
      v1446 = 0;
    }

    v1447 = &v1446[8 * v1442];
    *v1447 = v1429;
    v1439 = v1447 + 8;
    memcpy(v1446, v1440, v1441);
    *&v1475 = v1446;
    *(&v1475 + 1) = v1439;
    *&v1476 = &v1446[8 * v1445];
    if (v1440)
    {
      operator delete(v1440);
    }
  }

  else
  {
    **(&v1475 + 1) = v1429;
    v1439 = (v1438 + 8);
  }

  *(&v1475 + 1) = v1439;
  v1448 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(__p, 1);
  mlir::Pattern::Pattern((v1448 + 1), "coremlax.copy_discarding_constraints", 36, __p[0], Context, 0, 0);
  v1448[12] = 0;
  *v1448 = &unk_1F5B38050;
  if (!v1448[9])
  {
    __p[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ReadHandleWithConstraintsPattern]";
    __p[1] = 105;
    v1449 = llvm::StringRef::find(__p, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[1] >= v1449)
    {
      v1450 = v1449;
    }

    else
    {
      v1450 = __p[1];
    }

    v1451 = __p[0] + v1450;
    v1452 = (__p[1] - v1450);
    if ((__p[1] - v1450) >= 0x12)
    {
      v1453 = 18;
    }

    else
    {
      v1453 = __p[1] - v1450;
    }

    v1454 = &v1451[v1453];
    v1455 = &v1452[-v1453];
    if (v1455 >= v1455 - 1)
    {
      --v1455;
    }

    v1448[8] = v1454;
    v1448[9] = v1455;
  }

  v1456 = *(v1448 + 22);
  if (v1456 > *(v1448 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v1448 + 10), (v1448 + 12), v1456, 16);
    LODWORD(v1456) = *(v1448 + 22);
  }

  *(v1448 + 22) = v1456;
  v1457 = *(&v1475 + 1);
  if (*(&v1475 + 1) < v1476)
  {
    **(&v1475 + 1) = v1448;
    v1458 = (v1457 + 8);
    goto LABEL_2009;
  }

  v1459 = v1475;
  v1460 = *(&v1475 + 1) - v1475;
  v1461 = (*(&v1475 + 1) - v1475) >> 3;
  v1462 = v1461 + 1;
  if (!((v1461 + 1) >> 61))
  {
    v1463 = v1476 - v1475;
    if ((v1476 - v1475) >> 2 > v1462)
    {
      v1462 = v1463 >> 2;
    }

    if (v1463 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1464 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v1464 = v1462;
    }

    if (!v1464)
    {
      v1465 = 0;
LABEL_2007:
      v1466 = &v1465[8 * v1461];
      *v1466 = v1448;
      v1458 = v1466 + 8;
      memcpy(v1465, v1459, v1460);
      *&v1475 = v1465;
      *(&v1475 + 1) = v1458;
      *&v1476 = &v1465[8 * v1464];
      if (v1459)
      {
        operator delete(v1459);
      }

LABEL_2009:
      *(&v1475 + 1) = v1458;
      mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v1469, &v1474, 0, 0, 0, 0);
      v1468 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
      __p[0] = &v1467;
      mlir::detail::walk<mlir::ForwardIterator>(v1468, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_117lowerCompositeOpsENS1_8ModuleOpEE3__0NS1_4ODIE8Compiler6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, __p, 1);
      v1472 = 0u;
      *v1473 = 0u;
      *__p = 0u;
      LOBYTE(v1473[1]) = 1;
      mlir::applyPartialConversion(v1468, v1489, v1469, __p);
    }

    if (!(v1464 >> 61))
    {
      v1465 = operator new(8 * v1464);
      goto LABEL_2007;
    }

LABEL_2011:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_2010:
  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
}