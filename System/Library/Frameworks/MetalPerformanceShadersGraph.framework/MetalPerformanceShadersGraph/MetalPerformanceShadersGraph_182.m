uint64_t mlir::anec::ANECDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8);
    v10 = a3;
    v11 = v8;
    if (a3)
    {
      return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(a2, a5, &v12, &v10);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return 0;
}

void mlir::anec::getANECInputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v6 = *(a1 + 24);
  v2[0] = "";
  v2[1] = 0;
  v2[2] = "__arg";
  v3 = 773;
  v4[0] = v2;
  v4[2] = &v6;
  v5 = 3330;
  llvm::Twine::str(v4, a2);
}

void mlir::anec::getANECInputName(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v8 = a3;
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = "__arg";
  v5 = 773;
  v6[0] = v4;
  v6[2] = &v8;
  v7 = 3330;
  llvm::Twine::str(v6, a4);
}

void mlir::anec::getANECOutputName(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v8 = a3;
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = "__out:";
  v5 = 773;
  v6[0] = v4;
  v6[2] = &v8;
  v7 = 3330;
  llvm::Twine::str(v6, a4);
}

uint64_t mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  {
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
  }

  if ((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0x100000000;
  }

  v12 = 259;
  mlir::Operation::emitOpError(a1, &v11, v13);
  mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v13[0])
  {
    mlir::InFlightDiagnostic::report(v13);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v19;
      v5 = __p;
      if (v19 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v19 = v3;
      operator delete(v5);
    }

    v6 = v16;
    if (v16)
    {
      v7 = v17;
      v8 = v16;
      if (v17 != v16)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            operator delete[](v9);
          }
        }

        while (v7 != v6);
        v8 = v16;
      }

      v17 = v6;
      operator delete(v8);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }

  return 0;
}

uint64_t mlir::anec::getOpMinimumFamily(mlir::anec *this, mlir::Operation *a2)
{
  {
    mlir::anec::getOpMinimumFamily();
  }

  v3 = 0x100000005;
  if ((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0x100000007;
  }

  {
    mlir::anec::getOpMinimumFamily();
  }

  if ((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0x100000006;
  }

  {
    mlir::anec::getOpMinimumFamily();
  }

  if (((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
  {
    return mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)4>(this) & 0xFFFFFFFFFFLL;
  }

  return v3;
}

BOOL mlir::anec::isCompatibleWithFamily(mlir::anec *a1, mlir::Operation *a2)
{
  v2 = a2;
  OpMinimumFamily = mlir::anec::getOpMinimumFamily(a1, a2);
  return (OpMinimumFamily & 0x100000000) == 0 || OpMinimumFamily <= v2;
}

void mlir::anec::fillZinIrCommonInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  mlir::anec::computeOpKeyString(a1, &__str);
  std::string::operator=((a2 + 8), &__str);
  *(a2 + 32) = a3;
  v12 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v61.__r_.__value_.__r.__words[0] = v12;
  v61.__r_.__value_.__l.__size_ = v13;
  isSplat = mlir::ElementsAttr::isSplat(&v61);
  v55 = a3;
  v54 = a1;
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v58 = *(a1 + 68);
    if (v58)
    {
      v15 = 0;
      v16 = (*(a1 + 72) + 24);
      v56 = a5;
      v57 = a6;
      do
      {
        if ((a6 & (v15 >= a5)) != 0)
        {
          break;
        }

        v17 = *v16;
        if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a4 + 488), &v59))
        {
          if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a4 + 488), &v59))
          {
            v61.__r_.__value_.__s.__data_[0] = 0;
            v62 = 0;
            std::__throw_bad_optional_access[abi:nn200100]();
LABEL_92:
            abort();
          }

          v18 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a4 + 488), &v59);
          if (!v18)
          {
            goto LABEL_92;
          }

          if (*(v18 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(&v61, v18[5], v18[6]);
          }

          else
          {
            v61 = *(v18 + 5);
          }

          v62 = 1;
          std::string::operator=(&v59, &v61);
          if (v62 == 1 && SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }
        }

        v19 = (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v19)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
        }

        else
        {
          v20 = 0;
        }

        v61.__r_.__value_.__r.__words[0] = v19;
        v61.__r_.__value_.__l.__size_ = v20;
        if (isSplat != mlir::ElementsAttr::isSplat(&v61))
        {
          isSplat = 0;
        }

        v22 = *(a2 + 48);
        v21 = *(a2 + 56);
        if (v22 >= v21)
        {
          v25 = *(a2 + 40);
          v26 = v22 - v25;
          v27 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v25) >> 3);
          v28 = v27 + 1;
          if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v29 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v25) >> 3);
          if (2 * v29 > v28)
          {
            v28 = 2 * v29;
          }

          v30 = v29 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v28;
          if (v30)
          {
            if (v30 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            v31 = operator new(24 * v30);
          }

          else
          {
            v31 = 0;
          }

          v32 = &v31[24 * v27];
          if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v32, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
            v25 = *(a2 + 40);
            v26 = *(a2 + 48) - v25;
          }

          else
          {
            *v32 = v59;
          }

          v33 = &v31[24 * v30];
          v24 = v32 + 1;
          v34 = v32 - v26;
          memcpy(v34, v25, v26);
          *(a2 + 40) = v34;
          *(a2 + 48) = v24;
          *(a2 + 56) = v33;
          if (v25)
          {
            operator delete(v25);
          }

          a5 = v56;
          a6 = v57;
        }

        else
        {
          if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(*(a2 + 48), v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
          }

          else
          {
            v23 = *&v59.__r_.__value_.__l.__data_;
            *(v22 + 16) = *(&v59.__r_.__value_.__l + 2);
            *v22 = v23;
          }

          v24 = (v22 + 24);
        }

        *(a2 + 48) = v24;
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        ++v15;
        v16 += 4;
      }

      while (v58 != v15);
    }
  }

  if (isSplat)
  {
    v35 = *(*isSplat + 136);
    v36 = v54;
    if (v35 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v61.__r_.__value_.__r.__words[0] = isSplat;
      Width = mlir::IntegerType::getWidth(&v61);
      if (Width == 16)
      {
        if (mlir::IntegerType::getSignedness(&v61) == 2)
        {
          v38 = 10;
        }

        else
        {
          v38 = 9;
        }
      }

      else if (Width == 8)
      {
        if (mlir::IntegerType::getSignedness(&v61) == 2)
        {
          v38 = 2;
        }

        else
        {
          v38 = 1;
        }
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      if (v35 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
        v37 = 11;
      }

      else
      {
        v37 = 0;
      }

      if (v35 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
      {
        v38 = 3;
      }

      else
      {
        v38 = v37;
      }
    }
  }

  else
  {
    v38 = 0;
    v36 = v54;
  }

  *(a2 + 64) = v38;
  *&v61.__r_.__value_.__l.__data_ = 0uLL;
  if (*(*(v36 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id)
  {
    v39 = (*(*(*(v36 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v39)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v39 = (*(v36 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v39)
    {
LABEL_57:
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v39 + 8);
      goto LABEL_60;
    }
  }

  v40 = 0;
LABEL_60:
  v61.__r_.__value_.__r.__words[0] = v39;
  v61.__r_.__value_.__l.__size_ = v40;
  v41 = mlir::ElementsAttr::isSplat(&v61);
  v42 = *(*v41 + 136);
  if (v42 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v59.__r_.__value_.__r.__words[0] = v41;
    v45 = mlir::IntegerType::getWidth(&v59);
    v43 = v55;
    if (v45 == 16)
    {
      if (mlir::IntegerType::getSignedness(&v59) == 2)
      {
        v44 = 10;
      }

      else
      {
        v44 = 9;
      }
    }

    else if (v45 == 8)
    {
      if (mlir::IntegerType::getSignedness(&v59) == 2)
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v43 = v55;
    if (v42 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v44 = 3;
    }

    else if (v42 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v44 = 11;
    }

    else
    {
      v44 = 0;
    }
  }

  *(a2 + 68) = v44;
  if ((v43 - 23) > 0xFFFFFFFD)
  {
    v50 = 0;
  }

  else
  {
    mlir::CallableOpInterface::getArgAttrsAttr(&v61);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v47);
    if ((v49 & 1) == 0)
    {
      v51 = std::__throw_bad_optional_access[abi:nn200100]();
      return;
    }

    v50 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v61) + 8 * IndexFromDim);
  }

  *(a2 + 72) = v50;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void mlir::anec::anonymous namespace::getZinIrEWUnitInfo(mlir::anec::_anonymous_namespace_ *this@<X0>, mlir::Operation *a2@<X1>, void *a3@<X8>)
{
  v7 = operator new(0x58uLL);
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 8) = 0;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 9) = -1;
  *v7 = &unk_1F5B2E7A0;
  *(v7 + 1) = 0;
  *(v7 + 20) = 0;
  mlir::anec::fillZinIrCommonInfo(this, v7, 4, a2, 0, 0);
  v8 = *(*(this + 6) + 16);
  if (this && v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAbs,void>::id)
  {
    v9 = 9;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqualZero,void>::id)
  {
    v9 = 10;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqualZero,void>::id)
  {
    v9 = 14;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanZero,void>::id)
  {
    v9 = 15;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqualZero,void>::id)
  {
    v9 = 13;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanZero,void>::id)
  {
    v9 = 12;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqualZero,void>::id)
  {
    v9 = 11;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSquare,void>::id)
  {
    v9 = 3;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
  {
    v9 = 1;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
  {
    v9 = 2;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMin,void>::id)
  {
    v9 = 8;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMax,void>::id)
  {
    v9 = 7;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id)
  {
    v9 = 4;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseDiv,void>::id)
  {
    v9 = 6;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwisePower,void>::id)
  {
    v9 = 5;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqual,void>::id)
  {
    v9 = 16;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqual,void>::id)
  {
    v9 = 17;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThan,void>::id)
  {
    v9 = 18;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqual,void>::id)
  {
    v9 = 19;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqual,void>::id)
  {
    v9 = 20;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThan,void>::id)
  {
    v9 = 21;
  }

  else
  {
    v9 = 0;
  }

  *(v7 + 20) = v9;
  *a3 = v7;
}

BOOL mlir::anec::verifyANECBroadcastOp(mlir::anec *this, mlir::Operation *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  v3 = (*(*(*(this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v33[0] = v3;
  v33[1] = v4;
  v6 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v32[0] = v6;
  v32[1] = v7;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v32);
  if (!v9)
  {
    return 1;
  }

  v10 = ArgAttrsAttr;
  v11 = 0;
  v12 = 8 * v9;
  while (1)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v32);
    DimFromIndex = mlir::anec::getDimFromIndex(v11, v13);
    if ((DimFromIndex & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    v15 = DimFromIndex;
    mlir::CallableOpInterface::getArgAttrsAttr(v33);
    IndexFromDim = mlir::anec::getIndexFromDim(v15, v16);
    if (v18)
    {
      v19 = IndexFromDim;
      v20 = *(v10 + 8 * v11);
      if (v20 != *(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * IndexFromDim) && *(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * v19) != 1)
      {
        break;
      }
    }

    v11 = (v11 + 1);
    v12 -= 8;
    if (!v12)
    {
      return 1;
    }
  }

  v30 = "failed: input cannot be broadcasted to the target shape";
  v31 = 259;
  mlir::Operation::emitOpError(this, &v30, v34);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  v21 = result;
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
    result = v21;
  }

  if (v42)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v21;
    }

    v22 = __p;
    if (__p)
    {
      v23 = v40;
      v24 = __p;
      if (v40 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v40 = v22;
      operator delete(v24);
      result = v21;
    }

    v25 = v37;
    if (v37)
    {
      v26 = v38;
      v27 = v37;
      if (v38 != v37)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v26 != v25);
        v27 = v37;
      }

      v38 = v25;
      operator delete(v27);
      result = v21;
    }

    if (v35 != &v36)
    {
      free(v35);
      return v21;
    }
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::defaultVerifyANECOp(mlir::anec::_anonymous_namespace_ *this, mlir::Operation *a2)
{
  v131 = *MEMORY[0x1E69E9840];
  if (*(this + 47) && (v132.var0 = "kernel_palettized_LUT", v132.var1 = 21, InherentAttr = mlir::Operation::getInherentAttr(this, v132), (v4 & 1) != 0))
  {
    if (InherentAttr)
    {
LABEL_4:
      v5 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v133.var0 = "kernel_palettized_LUT";
    v133.var1 = 21;
    if (mlir::DictionaryAttr::contains((this + 56), v133))
    {
      goto LABEL_4;
    }
  }

  if (*(this + 47) && (v134.var0 = "kernel_mutable_palettized_LUT", v134.var1 = 29, v6 = mlir::Operation::getInherentAttr(this, v134), (v7 & 1) != 0))
  {
    v5 = v6 != 0;
  }

  else
  {
    v135.var0 = "kernel_mutable_palettized_LUT";
    v135.var1 = 29;
    v5 = mlir::DictionaryAttr::contains((this + 56), v135);
  }

LABEL_10:
  if ((*(this + 46) & 0x80) != 0 && (v8 = *(this + 17), v8))
  {
    v9 = 0;
    v10 = 32 * v8;
    v11 = *(this + 9) + 24;
    v12 = v5 ^ 1;
    while (1)
    {
      v13 = (*(*(v11 + v9) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
      {
        break;
      }

      v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
      v94 = v13;
      v95 = v14;
      if (!v13)
      {
        goto LABEL_96;
      }

      isSplat = mlir::ElementsAttr::isSplat(&v94);
      if (v9 == 32)
      {
        v15 = v12;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isInteger(&isSplat, 8) && !mlir::Type::isInteger(&isSplat, 16))
        {
          v92 = 257;
          mlir::Operation::emitError(this, &v90, v111);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v111, "ANE-incompatible type: input type has to be fp32/fp16/ui8/i8/u16/i16");
          if (v111[0])
          {
            mlir::InFlightDiagnostic::report(v111);
          }

          if (v121 == 1)
          {
            if (v120 != &v121)
            {
              free(v120);
            }

            v16 = __p;
            if (__p)
            {
              v17 = v119;
              v18 = __p;
              if (v119 != __p)
              {
                do
                {
                  v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
                }

                while (v17 != v16);
                v18 = __p;
              }

              v119 = v16;
              operator delete(v18);
            }

            v19 = v116;
            if (v116)
            {
              v20 = v117;
              v21 = v116;
              if (v117 == v116)
              {
                goto LABEL_192;
              }

              do
              {
                v62 = *--v20;
                v61 = v62;
                *v20 = 0;
                if (v62)
                {
                  operator delete[](v61);
                }
              }

              while (v20 != v19);
LABEL_191:
              v21 = v116;
              goto LABEL_192;
            }

LABEL_193:
            v66 = v112;
            v67 = v111;
LABEL_150:
            if (v66 != v67 + 40)
            {
              free(v66);
            }

            goto LABEL_152;
          }

          goto LABEL_152;
        }
      }

      else if (!mlir::Type::isUnsignedInteger(&isSplat, 2) && !mlir::Type::isUnsignedInteger(&isSplat, 4) && !mlir::Type::isUnsignedInteger(&isSplat, 6) && !mlir::Type::isUnsignedInteger(&isSplat, 8))
      {
        v92 = 257;
        mlir::Operation::emitError(this, &v90, v111);
        if (v111[0])
        {
          LODWORD(v96[0]) = 3;
          v96[1] = "ANE-incompatible type: input type of indices for palettized conv has to be ui2/ui6/ui4/ui8";
          v96[2] = 90;
          v78 = v96;
          v79 = v112;
          if (v113 >= v114)
          {
            if (v112 <= v96 && v112 + 24 * v113 > v96)
            {
              v88 = v96 - v112;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v112, v115, v113 + 1, 24);
              v79 = v112;
              v78 = &v88[v112];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v112, v115, v113 + 1, 24);
              v78 = v96;
              v79 = v112;
            }
          }

          v80 = v79 + 24 * v113;
          v81 = *v78;
          *(v80 + 16) = *(v78 + 2);
          *v80 = v81;
          ++v113;
          if (v111[0])
          {
            mlir::InFlightDiagnostic::report(v111);
          }
        }

        if (v121 == 1)
        {
          if (v120 != &v121)
          {
            free(v120);
          }

          v82 = __p;
          if (__p)
          {
            v83 = v119;
            v84 = __p;
            if (v119 != __p)
            {
              do
              {
                v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
              }

              while (v83 != v82);
              v84 = __p;
            }

            v119 = v82;
            operator delete(v84);
          }

          v19 = v116;
          if (v116)
          {
            v85 = v117;
            v21 = v116;
            if (v117 != v116)
            {
              do
              {
                v87 = *--v85;
                v86 = v87;
                *v85 = 0;
                if (v87)
                {
                  operator delete[](v86);
                }
              }

              while (v85 != v19);
              goto LABEL_191;
            }

LABEL_192:
            v117 = v19;
            operator delete(v21);
          }

          goto LABEL_193;
        }

        goto LABEL_152;
      }

      v9 += 32;
      if (v10 == v9)
      {
        goto LABEL_44;
      }
    }

    v94 = 0;
    v95 = 0;
LABEL_96:
    v111[0] = "Expecting input tensor to be ShapedType";
    LOWORD(v113) = 259;
    mlir::Operation::emitError(this, v111, v122);
    if (*v122)
    {
      mlir::InFlightDiagnostic::report(v122);
    }

    if (v130 == 1)
    {
      if (v129 != &v130)
      {
        free(v129);
      }

      v43 = v127;
      if (v127)
      {
        v44 = v128;
        v45 = v127;
        if (v128 != v127)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = v127;
        }

        v128 = v43;
        operator delete(v45);
      }

      v46 = v125;
      if (v125)
      {
        v47 = v126;
        v48 = v125;
        if (v126 != v125)
        {
          do
          {
            v50 = *--v47;
            v49 = v50;
            *v47 = 0;
            if (v50)
            {
              operator delete[](v49);
            }
          }

          while (v47 != v46);
          v48 = v125;
        }

        v126 = v46;
        operator delete(v48);
      }

      v66 = v123;
      v67 = v122;
      goto LABEL_150;
    }
  }

  else
  {
LABEL_44:
    v22 = *(this + 9);
    if (v22)
    {
      v23 = this - 16;
    }

    else
    {
      v23 = 0;
    }

    if (!v22)
    {
LABEL_71:
      if ((*(this + 46) & 0x80) != 0 && (v33 = *(this + 17), v33))
      {
        v34 = *(this + 9) + 24;
        while (1)
        {
          v35 = (*(*v34 + 8) & 0xFFFFFFFFFFFFFFF8);
          v36 = v35 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8) : 0;
          {
            break;
          }

          v34 += 32;
          if (!--v33)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
LABEL_79:
        {
        }

        if (((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::SupportConstantOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::SupportConstantOperands>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          {
          }

          if (((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
          {
            if ((*(this + 46) & 0x80) == 0 || (v63 = *(this + 17), !v63))
            {
LABEL_194:
              return v122[0];
            }

            v64 = (*(this + 9) + 24);
            while (1)
            {
              *v122 = *v64;
              DefiningOp = mlir::Value::getDefiningOp(v122);
              if (!DefiningOp)
              {
                break;
              }

              {
                v89 = DefiningOp;
                DefiningOp = v89;
              }

              if (((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
              {
                break;
              }

              v64 += 4;
              if (!--v63)
              {
                goto LABEL_194;
              }
            }
          }
        }

        v37 = *(this + 9);
        if (v37)
        {
          v38 = this - 16;
        }

        else
        {
          v38 = 0;
        }

        if (!v37)
        {
          return 1;
        }

        v39 = 0;
        while (1)
        {
          v40 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v38, v39) + 8) & 0xFFFFFFFFFFFFFFF8);
          v41 = v40 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v40 + 8) : 0;
          {
            break;
          }

          if (v37 == ++v39)
          {
            return 1;
          }
        }
      }

      return 0;
    }

    v24 = 0;
    while (1)
    {
      v25 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v23, v24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8))
      {
        v90 = 0;
        v91 = 0;
LABEL_113:
        v111[0] = "Expecting output tensor to be ShapedType";
        LOWORD(v113) = 259;
        mlir::Operation::emitOpError(this, v111, v104);
        if (v104[0])
        {
          mlir::InFlightDiagnostic::report(v104);
        }

        if (v110 == 1)
        {
          if (v109 != &v110)
          {
            free(v109);
          }

          v51 = v107;
          if (v107)
          {
            v52 = v108;
            v53 = v107;
            if (v108 != v107)
            {
              do
              {
                v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
              }

              while (v52 != v51);
              v53 = v107;
            }

            v108 = v51;
            operator delete(v53);
          }

          v54 = v105;
          if (v105)
          {
            v55 = v106;
            v56 = v105;
            if (v106 != v105)
            {
              do
              {
                v58 = *--v55;
                v57 = v58;
                *v55 = 0;
                if (v58)
                {
                  operator delete[](v57);
                }
              }

              while (v55 != v54);
              v56 = v105;
            }

            v106 = v54;
            operator delete(v56);
          }

          v66 = v104[3];
          v67 = v104;
          goto LABEL_150;
        }

        goto LABEL_152;
      }

      v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v90 = v25;
      v91 = v26;
      if (!v25)
      {
        goto LABEL_113;
      }

      v96[0] = mlir::ElementsAttr::isSplat(&v90);
      if (!mlir::Type::isF16(v96) && !mlir::Type::isF32(v96) && !mlir::Type::isInteger(v96, 8) && !mlir::Type::isInteger(v96, 16))
      {
        break;
      }

      if (v22 == ++v24)
      {
        goto LABEL_71;
      }
    }

    v111[0] = "ANE-incompatible type: output type has to be fp32/fp16/ui8/i8/u16/i16";
    LOWORD(v113) = 259;
    mlir::Operation::emitOpError(this, v111, v97);
    if (v97[0])
    {
      mlir::InFlightDiagnostic::report(v97);
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v27 = v100;
      if (v100)
      {
        v28 = v101;
        v29 = v100;
        if (v101 != v100)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = v100;
        }

        v101 = v27;
        operator delete(v29);
      }

      v30 = v98;
      if (v98)
      {
        v31 = v99;
        v32 = v98;
        if (v99 != v98)
        {
          do
          {
            v60 = *--v31;
            v59 = v60;
            *v31 = 0;
            if (v60)
            {
              operator delete[](v59);
            }
          }

          while (v31 != v30);
          v32 = v98;
        }

        v99 = v30;
        operator delete(v32);
      }

      v66 = v97[3];
      v67 = v97;
      goto LABEL_150;
    }
  }

LABEL_152:
  LOWORD(v113) = 257;
  mlir::Operation::emitOpError(this, v111, v122);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v122, "does not have ANE-compatible types");
  v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
  if (*v122)
  {
    mlir::InFlightDiagnostic::report(v122);
  }

  if (v130 == 1)
  {
    if (v129 != &v130)
    {
      free(v129);
    }

    v69 = v127;
    if (v127)
    {
      v70 = v128;
      v71 = v127;
      if (v128 != v127)
      {
        do
        {
          v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
        }

        while (v70 != v69);
        v71 = v127;
      }

      v128 = v69;
      operator delete(v71);
    }

    v72 = v125;
    if (v125)
    {
      v73 = v126;
      v74 = v125;
      if (v126 != v125)
      {
        do
        {
          v76 = *--v73;
          v75 = v76;
          *v73 = 0;
          if (v76)
          {
            operator delete[](v75);
          }
        }

        while (v73 != v72);
        v74 = v125;
      }

      v126 = v72;
      operator delete(v74);
    }

    if (v123 != &v124)
    {
      free(v123);
    }
  }

  return v42;
}

void *mlir::anec::Broadcast::getZinIrUnitInfo@<X0>(mlir::anec::Broadcast *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v5 = operator new(0x78uLL);
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 8) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 9) = -1;
  *v5 = &unk_1F5B33B90;
  *(v5 + 1) = 0;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 28) = 1065353216;
  mlir::anec::fillZinIrCommonInfo(*this, v5, 19, a2, 0, 0);
  v6 = *this;
  v7 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *this;
  }

  else
  {
    v8 = 0;
  }

  v37[0] = v7;
  v37[1] = v8;
  v9 = *(v6 + 36);
  v10 = v6 - 16;
  if (v9)
  {
    v11 = v10;
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

  v36[0] = v12;
  v36[1] = v13;
  result = mlir::CallableOpInterface::getArgAttrsAttr(v36);
  if (v15)
  {
    v16 = result;
    v17 = 0;
    v18 = 8 * v15;
    while (1)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v36);
      DimFromIndex = mlir::anec::getDimFromIndex(v17, v20);
      if ((DimFromIndex & 0x100000000) == 0)
      {
        break;
      }

      v22 = DimFromIndex;
      mlir::CallableOpInterface::getArgAttrsAttr(v37);
      IndexFromDim = mlir::anec::getIndexFromDim(v22, v23);
      if ((v25 & 1) == 0 || (v26 = IndexFromDim, v27 = v16[v17], result = mlir::CallableOpInterface::getArgAttrsAttr(v37), v27 != result[v26]))
      {
        v28 = v16[v17];
        mlir::CallableOpInterface::getArgAttrsAttr(v36);
        v30 = mlir::anec::getDimFromIndex(v17, v29);
        if ((v30 & 0x100000000) != 0)
        {
          v19 = dword_1E0999A44[v30];
        }

        else
        {
          v19 = 5;
        }

        v35 = v19;
        v38 = &v35;
        result = std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((v5 + 80), &v35, &std::piecewise_construct, &v38);
        result[3] = v28;
      }

      v17 = (v17 + 1);
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v31 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::Broadcast::addOpToNetwork(v31, v32, v33);
  }

  else
  {
LABEL_20:
    *a3 = v5;
  }

  return result;
}

uint64_t mlir::anec::Broadcast::addOpToNetwork(mlir::anec::Broadcast *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Broadcast::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
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
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

void mlir::anec::ANECIRNetwork::AddUnit(void *a1, __int128 *a2)
{
  v3 = a1[53];
  v4 = a1[54];
  if (v3 >= v4)
  {
    v7 = a1[52];
    v8 = v3 - v7;
    v9 = (v3 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 60)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v13 = a2;
      v14 = operator new(16 * v12);
      a2 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[16 * v9];
    v16 = &v14[16 * v12];
    v17 = *a2;
    *v15 = *a2;
    if (*(&v17 + 1))
    {
      atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
      v7 = a1[52];
      v8 = a1[53] - v7;
      v9 = v8 >> 4;
    }

    v6 = v15 + 16;
    v18 = &v15[-16 * v9];
    memcpy(v18, v7, v8);
    a1[52] = v18;
    a1[53] = v6;
    a1[54] = v16;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    *(v3 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 16;
  }

  a1[53] = v6;
}

BOOL mlir::anec::Convolution::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *x1_0, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v105 = *MEMORY[0x1E69E9840];
  v98 = a6;
  LOBYTE(v99) = 0;
  v100 = 0;
  v101 = a7;
  v102 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v98);
    if (v100 == 1)
    {
      v100 = 0;
    }

    mlir::OperationName::OperationName(&v99, "anec.convolution", 16, Context);
    v100 = 1;
    a1 = v15;
  }

  v103 = a4;
  v104 = a5;
  v17 = mlir::UnknownLoc::get(a1, x1_0);
  if (a3)
  {
    v18.var0.var0 = x1_0;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::ConvolutionAdaptor::verify(&v98, v18))
  {
    v25.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(x1_0, v25, "invalid conv attributes");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  if (!v19)
  {
    v82 = 0;
    v83 = 0;
    v26.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(x1_0, v26, "input must be a ShapedType");
  }

  v20 = v19;
  v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  v82 = v20;
  v83 = v21;
  mlir::CallableOpInterface::getArgAttrsAttr(&v82);
  if (v22 >= 6)
  {
    v23.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(x1_0, v23, "input must be a tensor of rank 4 or 5");
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v82);
  v96[0] = v97;
  v96[1] = 0x300000000;
  Value = mlir::AffineMapAttr::getValue(&v98);
  v29 = mlir::DictionaryAttr::end(&v98);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), v29, *(*(v99 + 96) + 72));
  mlir::getValues<unsigned long>(v30, v96);
  v94[0] = v95;
  v94[1] = 0x300000000;
  v31 = mlir::AffineMapAttr::getValue(&v98);
  v32 = mlir::DictionaryAttr::end(&v98);
  v33 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v31, (v32 - 32), *(*(v99 + 96) + 8));
  mlir::getValues<unsigned long>(v33, v94);
  v92[0] = v93;
  v92[1] = 0x600000000;
  v34 = mlir::AffineMapAttr::getValue(&v98);
  v35 = mlir::DictionaryAttr::end(&v98);
  v36 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v34 + 16), (v35 - 16), *(*(v99 + 96) + 56));
  mlir::getValues<unsigned long>(v36, v92);
  v37 = mlir::TypeRange::dereference_iterator(a9, 1);
  v38 = v37;
  if (v37)
  {
    v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
  }

  v81[0] = v38;
  v81[1] = v37;
  v39 = mlir::CallableOpInterface::getArgAttrsAttr(v81);
  mlir::CallableOpInterface::getArgAttrsAttr(v81);
  if (v40 < 6)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v81);
    if (v42 == 4)
    {
      v43 = -1;
    }

    else
    {
      v43 = 4;
    }

    Groups = mlir::anec::detail::ConvolutionGenericAdaptorBase::getGroups(&v98);
    mlir::CallableOpInterface::getArgAttrsAttr(&v82);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
    if (v46)
    {
      v79 = ArgAttrsAttr[IndexFromDim];
      if (v79 % Groups)
      {
        v85 = "input channels {0} should be divisible by groups {1}";
        v86 = 52;
        v87[0] = v91;
        v87[1] = 2;
        v88 = 1;
        v89[0] = &unk_1F5B17218;
        v89[1] = &v79;
        v90[0] = &unk_1F5B17218;
        v90[1] = &Groups;
        v91[0] = v89;
        v91[1] = v90;
LABEL_30:
        v51.var0.var0 = a3;
        result = mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(x1_0, v51, &v85);
        goto LABEL_31;
      }

      v47 = mlir::AffineMapAttr::getValue(&v98);
      v48 = mlir::DictionaryAttr::end(&v98);
      v49 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v47, (v48 - 48), **(v99 + 96));
      if (v49 && *(*v49 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v50 = v39[1] * *v39;
      }

      else
      {
        v50 = *v39;
      }

      v78 = v50;
      if (v50 % Groups)
      {
        llvm::formatv<long long &,long long &>("output channels {0} should be divisible by groups {1}", 1, &v78, &Groups, &v85);
        goto LABEL_30;
      }

      mlir::CallableOpInterface::getArgAttrsAttr(&v82);
      mlir::anec::getIndexFromDim(1, v53);
      if (v54)
      {
        if (v39[1] * Groups == v79)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(&v82);
          v56 = mlir::anec::getIndexFromDim(3, v55);
          if (v57)
          {
            v58 = v56;
            mlir::CallableOpInterface::getArgAttrsAttr(&v82);
            v60 = mlir::anec::getIndexFromDim(4, v59);
            if (v61)
            {
              v62 = v94[0];
              v63 = (*(v92[0] + 2) + ArgAttrsAttr[v58] + *(v92[0] + 3) - v39[2] + v62[1] - 1 - (v62[1] - 1) * v39[2]) / *(v96[0] + 1) + 1;
              v64 = (*(v92[0] + 4) + ArgAttrsAttr[v60] + *(v92[0] + 5) - v39[3] + v62[2] - 1 - (v62[2] - 1) * v39[3]) / *(v96[0] + 2) + 1;
              v65 = *ArgAttrsAttr;
              mlir::CallableOpInterface::getArgAttrsAttr(&v82);
              v67 = mlir::anec::getIndexFromDim(2, v66);
              if (v68)
              {
                v69 = (*v92[0] + ArgAttrsAttr[v67] + *(v92[0] + 1) - v39[v43] + *v94[0] - 1 - (*v94[0] - 1) * v39[v43]) / *v96[0] + 1;
              }

              else
              {
                v69 = 0;
              }

              v84[0] = v65;
              v84[1] = v50;
              v84[2] = v63;
              v84[3] = v64;
              llvm::SmallVector<long long,6u>::SmallVector(&v85, v84, 4);
              if (v69)
              {
                v84[0] = v69;
                llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v85, v85 + 8, v84);
              }

              v71 = v85;
              v72 = v86;
              isSplat = mlir::ElementsAttr::isSplat(&v82);
              v74 = mlir::MemRefType::get(v71, v72, isSplat, 0, 0, 0);
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v74);
              if (v85 != v87)
              {
                free(v85);
              }

              result = 1;
              goto LABEL_31;
            }
          }
        }

        else if (a3)
        {
          llvm::formatv<long long const&,long long &,long long &>("Filter shape Cin {0} * groups {1} must match input Cin {2}", 1, (v39 + 1), &Groups, &v79, v84);
          v77 = 263;
          v76 = v84;
          mlir::emitError(x1_0, &v76, &v85);
          v70 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v85);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v85);
          result = v70;
          goto LABEL_31;
        }
      }
    }

    v75 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::ConvolutionAdaptor::verify(v75, v106);
  }

  v41.var0.var0 = a3;
  result = mlir::emitOptionalError<char const(&)[39]>(x1_0, v41, "filter must be a tensor of rank 4 or 5");
LABEL_31:
  v52 = result;
  if (v92[0] != v93)
  {
    free(v92[0]);
    result = v52;
  }

  if (v94[0] != v95)
  {
    free(v94[0]);
    result = v52;
  }

  if (v96[0] != v97)
  {
    free(v96[0]);
    return v52;
  }

  return result;
}

BOOL mlir::anec::ConvolutionAdaptor::verify(mlir::anec::ConvolutionAdaptor *this, Location a2)
{
  v157 = *MEMORY[0x1E69E9840];
  v144 = *this;
  Value = mlir::AffineMapAttr::getValue(&v144);
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_7:
    v141 = "'anec.convolution' op requires attribute 'dilation'";
    v143 = 259;
    mlir::emitError(a2.var0.var0, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v154;
      v9 = __p;
      if (v154 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v154 = v7;
      operator delete(v9);
    }

    v10 = v151;
    if (v151)
    {
      v11 = v152;
      v12 = v151;
      if (v152 == v151)
      {
        goto LABEL_119;
      }

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
LABEL_118:
      v12 = v151;
LABEL_119:
      v152 = v10;
      operator delete(v12);
    }

LABEL_120:
    if (v149 != &v150)
    {
      free(v149);
    }

    return v6;
  }

  v5 = 0;
  while (mlir::CallGraphNode::getCallableRegion(Value) != *(*(*(this + 1) + 96) + 8))
  {
    if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
    {
      v5 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_7;
    }
  }

  v15 = Value[1];
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_37:
    v141 = "'anec.convolution' op requires attribute 'padding'";
    v143 = 259;
    mlir::emitError(a2.var0.var0, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v154;
      v23 = __p;
      if (v154 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v154 = v21;
      operator delete(v23);
    }

    v10 = v151;
    if (v151)
    {
      v24 = v152;
      v12 = v151;
      if (v152 == v151)
      {
        goto LABEL_119;
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

      while (v24 != v10);
      goto LABEL_118;
    }

    goto LABEL_120;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  while (mlir::CallGraphNode::getCallableRegion(Value) != *(*(*(this + 1) + 96) + 56))
  {
    if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 16))
    {
      v16 = Value[1];
    }

    else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 24))
    {
      v17 = Value[1];
    }

    else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 32))
    {
      v18 = Value[1];
    }

    else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 40))
    {
      v19 = Value[1];
    }

    else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 48))
    {
      v20 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_37;
    }
  }

  v120 = v20;
  v121 = Value[1];
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_59:
    v141 = "'anec.convolution' op requires attribute 'stride'";
    v143 = 259;
    mlir::emitError(a2.var0.var0, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v154;
      v30 = __p;
      if (v154 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v154 = v28;
      operator delete(v30);
    }

    v10 = v151;
    if (v151)
    {
      v31 = v152;
      v12 = v151;
      if (v152 == v151)
      {
        goto LABEL_119;
      }

      do
      {
        v33 = *--v31;
        v32 = v33;
        *v31 = 0;
        if (v33)
        {
          operator delete[](v32);
        }
      }

      while (v31 != v10);
      goto LABEL_118;
    }

    goto LABEL_120;
  }

  v27 = 0;
  while (mlir::CallGraphNode::getCallableRegion(Value) != *(*(*(this + 1) + 96) + 72))
  {
    if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 64))
    {
      v27 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_59;
    }
  }

  v34 = Value[1];
  if (v34)
  {
    if (!mlir::DenseIntElementsAttr::classof(Value[1]))
    {
      goto LABEL_102;
    }

    v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v34 + 8);
    v141 = v34;
    v142 = v35;
    Type = mlir::ElementsAttr::getType(&v141);
    v37 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v147 = v37;
    v148 = Type;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v147);
    v145 = 3;
    if (v39 != 1 || *ArgAttrsAttr != v145 || (v135 = v34, v139 = mlir::ArrayAttr::getValue(&v135), v140 = v40, isSplat = mlir::ElementsAttr::isSplat(&v139), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
    {
LABEL_102:
      v141 = "'anec.convolution' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v143 = 259;
      mlir::emitError(a2.var0.var0, &v141, &v147);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
      if (v147)
      {
        mlir::InFlightDiagnostic::report(&v147);
      }

      if (v156 != 1)
      {
        return v6;
      }

      if (v155 != &v156)
      {
        free(v155);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v154;
        v57 = __p;
        if (v154 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v154 = v55;
        operator delete(v57);
      }

      v10 = v151;
      if (v151)
      {
        v58 = v152;
        v12 = v151;
        if (v152 == v151)
        {
          goto LABEL_119;
        }

        do
        {
          v60 = *--v58;
          v59 = v60;
          *v58 = 0;
          if (v60)
          {
            operator delete[](v59);
          }
        }

        while (v58 != v10);
        goto LABEL_118;
      }

      goto LABEL_120;
    }
  }

  if (!v15)
  {
    goto LABEL_193;
  }

  if (mlir::DenseIntElementsAttr::classof(v15))
  {
    v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v15 + 8);
    v141 = v15;
    v142 = v41;
    v42 = mlir::ElementsAttr::getType(&v141);
    v43 = v42;
    if (v42)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
    }

    v147 = v43;
    v148 = v42;
    v44 = mlir::CallableOpInterface::getArgAttrsAttr(&v147);
    v145 = 3;
    if (v45 == 1 && *v44 == v145)
    {
      v135 = v15;
      v139 = mlir::ArrayAttr::getValue(&v135);
      v140 = v46;
      isSplat = mlir::ElementsAttr::isSplat(&v139);
      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
LABEL_193:
        if (!v121)
        {
          goto LABEL_97;
        }

        if (mlir::DenseIntElementsAttr::classof(v121))
        {
          v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v121 + 8);
          v141 = v121;
          v142 = v47;
          v48 = mlir::ElementsAttr::getType(&v141);
          v49 = v48;
          if (v48)
          {
            v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
          }

          v147 = v49;
          v148 = v48;
          v50 = mlir::CallableOpInterface::getArgAttrsAttr(&v147);
          v145 = 6;
          if (v51 == 1 && *v50 == v145)
          {
            v135 = v121;
            v139 = mlir::ArrayAttr::getValue(&v135);
            v140 = v52;
            isSplat = mlir::ElementsAttr::isSplat(&v139);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
LABEL_97:
              if (v27 && (mlir::anec::PaddingModeAttr::classof(v27) & 1) == 0)
              {
                v54 = "'anec.convolution' op attribute 'padding_mode' failed to satisfy constraint: valid PaddingMode";
                goto LABEL_128;
              }

              if (v16)
              {
                v53 = v120;
                if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v141 = v16, v147 = mlir::AffineMapAttr::getValue(&v141), !mlir::Type::isUnsignedInteger(&v147, 64)))
                {
                  v54 = "'anec.convolution' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
LABEL_128:
                  v141 = v54;
                  v143 = 259;
                  mlir::emitError(a2.var0.var0, &v141, &v147);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v147);
                  return v6;
                }
              }

              else
              {
                v53 = v120;
              }

              if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                if (!v19)
                {
                  goto LABEL_194;
                }

                if (!mlir::DenseFPElementsAttr::classof(v19))
                {
                  goto LABEL_187;
                }

                v62 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                v141 = v19;
                v142 = v62;
                v63 = mlir::ElementsAttr::getType(&v141);
                v64 = v63;
                if (v63)
                {
                  v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
                }

                v147 = v64;
                v148 = v63;
                mlir::CallableOpInterface::getArgAttrsAttr(&v147);
                if (v65)
                {
                  v66 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                  v145 = v19;
                  v146 = v66;
                  v67 = mlir::ElementsAttr::getType(&v145);
                  v68 = v67;
                  if (v67)
                  {
                    v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
                  }

                  v139 = v68;
                  v140 = v67;
                  mlir::CallableOpInterface::getArgAttrsAttr(&v139);
                  v53 = v120;
                  if (v69 != 1)
                  {
                    v70 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                    v135 = v19;
                    v136 = v70;
                    v71 = mlir::ElementsAttr::getType(&v135);
                    v72 = v71;
                    if (v71)
                    {
                      v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
                    }

                    isSplat = v72;
                    v138 = v71;
                    mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
                    v53 = v120;
                    if (v73 != 4)
                    {
                      goto LABEL_187;
                    }
                  }
                }

                v129[0] = v19;
                v133 = mlir::ArrayAttr::getValue(v129);
                v134 = v74;
                v130[0] = mlir::ElementsAttr::isSplat(&v133);
                if (mlir::Type::isF16(v130) || (v127[0] = v19, v131 = mlir::ArrayAttr::getValue(v127), v132 = v75, v128[0] = mlir::ElementsAttr::isSplat(&v131), mlir::Type::isF32(v128)))
                {
LABEL_194:
                  if (!v53)
                  {
                    goto LABEL_195;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v53))
                  {
                    goto LABEL_188;
                  }

                  v76 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v53 + 8);
                  v141 = v53;
                  v142 = v76;
                  v77 = mlir::ElementsAttr::getType(&v141);
                  v78 = v77;
                  if (v77)
                  {
                    v77 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v77 + 8);
                  }

                  v147 = v78;
                  v148 = v77;
                  mlir::CallableOpInterface::getArgAttrsAttr(&v147);
                  v79 = v120;
                  if (v80)
                  {
                    v81 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                    v145 = v120;
                    v146 = v81;
                    v82 = mlir::ElementsAttr::getType(&v145);
                    v83 = v82;
                    if (v82)
                    {
                      v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
                    }

                    v139 = v83;
                    v140 = v82;
                    mlir::CallableOpInterface::getArgAttrsAttr(&v139);
                    v79 = v120;
                    if (v84 != 1)
                    {
                      v85 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                      v135 = v120;
                      v136 = v85;
                      v86 = mlir::ElementsAttr::getType(&v135);
                      v87 = v86;
                      if (v86)
                      {
                        v86 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
                      }

                      isSplat = v87;
                      v138 = v86;
                      mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
                      v79 = v120;
                      if (v88 != 4)
                      {
                        goto LABEL_188;
                      }
                    }
                  }

                  v129[0] = v79;
                  v133 = mlir::ArrayAttr::getValue(v129);
                  v134 = v89;
                  v130[0] = mlir::ElementsAttr::isSplat(&v133);
                  if (mlir::Type::isSignedInteger(v130, 8) || (v127[0] = v79, v131 = mlir::ArrayAttr::getValue(v127), v132 = v90, v128[0] = mlir::ElementsAttr::isSplat(&v131), mlir::Type::isUnsignedInteger(v128, 8)))
                  {
LABEL_195:
                    if (!v18)
                    {
                      goto LABEL_185;
                    }

                    if (!mlir::DenseElementsAttr::classof(v18))
                    {
                      goto LABEL_189;
                    }

                    v91 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                    v141 = v18;
                    v142 = v91;
                    v92 = mlir::ElementsAttr::getType(&v141);
                    v93 = v92;
                    if (v92)
                    {
                      v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v92 + 8);
                    }

                    v147 = v93;
                    v148 = v92;
                    mlir::CallableOpInterface::getArgAttrsAttr(&v147);
                    if (v94)
                    {
                      v95 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                      v145 = v18;
                      v146 = v95;
                      v96 = mlir::ElementsAttr::getType(&v145);
                      v97 = v96;
                      if (v96)
                      {
                        v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
                      }

                      v139 = v97;
                      v140 = v96;
                      mlir::CallableOpInterface::getArgAttrsAttr(&v139);
                      if (v98 != 1)
                      {
                        v99 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                        v135 = v18;
                        v136 = v99;
                        v100 = mlir::ElementsAttr::getType(&v135);
                        v101 = v100;
                        if (v100)
                        {
                          v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v100 + 8);
                        }

                        isSplat = v101;
                        v138 = v100;
                        mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
                        if (v102 != 2)
                        {
                          v103 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                          v131 = v18;
                          v132 = v103;
                          v104 = mlir::ElementsAttr::getType(&v131);
                          v105 = v104;
                          if (v104)
                          {
                            v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
                          }

                          v133 = v105;
                          v134 = v104;
                          mlir::CallableOpInterface::getArgAttrsAttr(&v133);
                          if (v106 != 3)
                          {
                            v107 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                            v129[0] = v18;
                            v129[1] = v107;
                            v108 = mlir::ElementsAttr::getType(v129);
                            v109 = v108;
                            if (v108)
                            {
                              v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v108 + 8);
                            }

                            v130[0] = v109;
                            v130[1] = v108;
                            mlir::CallableOpInterface::getArgAttrsAttr(v130);
                            if (v110 != 4)
                            {
                              v111 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                              v127[0] = v18;
                              v127[1] = v111;
                              v112 = mlir::ElementsAttr::getType(v127);
                              v113 = v112;
                              if (v112)
                              {
                                v112 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v112 + 8);
                              }

                              v128[0] = v113;
                              v128[1] = v112;
                              mlir::CallableOpInterface::getArgAttrsAttr(v128);
                              if (v114 != 5)
                              {
                                v115 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                                v125[0] = v18;
                                v125[1] = v115;
                                v116 = mlir::ElementsAttr::getType(v125);
                                v117 = v116;
                                if (v116)
                                {
                                  v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v116 + 8);
                                }

                                v126[0] = v117;
                                v126[1] = v116;
                                mlir::CallableOpInterface::getArgAttrsAttr(v126);
                                if (v118 != 6)
                                {
                                  goto LABEL_189;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v122 = v18;
                    v123[0] = mlir::ArrayAttr::getValue(&v122);
                    v123[1] = v119;
                    v124 = mlir::ElementsAttr::isSplat(v123);
                    if (mlir::Type::isF16(&v124))
                    {
LABEL_185:
                      if (!v17 || *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
                      {
                        return 1;
                      }

                      v54 = "'anec.convolution' op attribute 'kernel_mutable_palettized_LUT' failed to satisfy constraint: dictionary of named attribute values";
                    }

                    else
                    {
LABEL_189:
                      v54 = "'anec.convolution' op attribute 'kernel_palettized_LUT' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
                    }
                  }

                  else
                  {
LABEL_188:
                    v54 = "'anec.convolution' op attribute 'kernel_zero_point' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1/4";
                  }
                }

                else
                {
LABEL_187:
                  v54 = "'anec.convolution' op attribute 'kernel_scale' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1/4";
                }
              }

              else
              {
                v54 = "'anec.convolution' op attribute 'channel_wise' failed to satisfy constraint: unit attribute";
              }

              goto LABEL_128;
            }
          }
        }

        v54 = "'anec.convolution' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        goto LABEL_128;
      }
    }
  }

  v141 = "'anec.convolution' op attribute 'dilation' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v143 = 259;
  mlir::emitError(a2.var0.var0, &v141, &v147);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
  if (v147)
  {
    mlir::InFlightDiagnostic::report(&v147);
  }

  if (v156 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v148);
  }

  return v6;
}

BOOL mlir::emitOptionalError<char const(&)[39]>(mlir *a1, Location a2, char *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, v15);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, a3);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v4);
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v5;
}

void *mlir::anec::detail::ConvolutionGenericAdaptorBase::getGroups(mlir::anec::detail::ConvolutionGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 - 32), *(*(*(this + 1) + 96) + 16));
  if (v4)
  {
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = v5;
  mlir::IntegerAttr::getValue(&v10, &__p);
  if (v9 <= 0x40)
  {
    return __p;
  }

  v6 = *__p;
  operator delete[](__p);
  return v6;
}

uint64_t mlir::anec::anonymous namespace::defaultMixedDataTypesIsCompatibleReturnType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    if (a4 == v8)
    {
      return 1;
    }

    v9 = mlir::TypeRange::dereference_iterator(a1, v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, v8);
    if (v9)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v20 = v9;
      v21 = v11;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      if (!v10)
      {
LABEL_8:
        v12 = 0;
        goto LABEL_9;
      }
    }

    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
LABEL_9:
    v19[0] = v10;
    v19[1] = v12;
    if (!mlir::CallOpInterface::getArgOperands(&v20))
    {
      return 0;
    }

    if (!mlir::CallOpInterface::getArgOperands(v19))
    {
      return 0;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v20);
    v15 = v14;
    v16 = mlir::CallableOpInterface::getArgAttrsAttr(v19);
    if (v15 != v17 || memcmp(ArgAttrsAttr, v16, 8 * v15))
    {
      return 0;
    }

    if (a2 == ++v8)
    {
      return 1;
    }
  }
}

uint64_t mlir::anec::anonymous namespace::doAttributesVerificationWithANEC(uint64_t a1, uint64_t a2)
{
  v38[6] = *MEMORY[0x1E69E9840];
  v36 = v38;
  v37 = 0x300000000;
  if ((*(a1 + 46) & 0x80) != 0 && (v4 = *(a1 + 68), v4))
  {
    v5 = *(a1 + 72) + 24;
    while (1)
    {
      v6 = (*(*v5 + 8) & 0xFFFFFFFFFFFFFFF8);
      v7 = v6 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8) : 0;
      *&v26 = mlir::getRankPromotionTypeForANE(v6, v7);
      *(&v26 + 1) = v8;
      mlir::CallableOpInterface::getArgAttrsAttr(&v26);
      if (v9 >= 6)
      {
        break;
      }

      v10 = v26;
      v11 = v37;
      if (v37 >= HIDWORD(v37))
      {
        v23 = v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v37 + 1, 16);
        v10 = v23;
        v11 = v37;
      }

      v36[v11] = v10;
      LODWORD(v37) = v37 + 1;
      v5 += 32;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    v24 = "unsupported operand with rank > 5";
    v25 = 259;
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35)
    {
      if (v34 != &v35)
      {
        free(v34);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v33;
        v17 = __p;
        if (v33 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v33 = v15;
        operator delete(v17);
      }

      v18 = v30;
      if (v30)
      {
        v19 = v31;
        v20 = v30;
        if (v31 != v30)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              operator delete[](v21);
            }
          }

          while (v19 != v18);
          v20 = v30;
        }

        v31 = v18;
        operator delete(v20);
      }

      if (v28 != &v29)
      {
        free(v28);
      }
    }
  }

  else
  {
LABEL_11:
    InterfaceFor = mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor(a1);
    v13 = (*InterfaceFor)(InterfaceFor, a1, v36, v37, a2);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  return v13;
}

uint64_t mlir::anec::anonymous namespace::doCustomVerificationWithANEC(mlir::anec::_anonymous_namespace_ *this, mlir::Operation *a2)
{
  v19[6] = *MEMORY[0x1E69E9840];
  v17 = v19;
  v18 = 0x300000000;
  if ((*(this + 46) & 0x80) == 0)
  {
    goto LABEL_11;
  }

  v3 = *(this + 17);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = 0;
  v5 = *(this + 9) + 24;
  do
  {
    v6 = (*(*v5 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
      v4 = v18;
    }

    else
    {
      v7 = 0;
    }

    if (v4 >= HIDWORD(v18))
    {
      v9 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v4 + 1, 16);
      v7 = v9;
      v4 = v18;
    }

    v8 = v17 + 16 * v4;
    *v8 = v6;
    v8[1] = v7;
    v4 = v18 + 1;
    LODWORD(v18) = v18 + 1;
    v5 += 32;
    --v3;
  }

  while (v3);
  if (!this)
  {
    InterfaceFor = 0;
  }

  else
  {
LABEL_11:
    InterfaceFor = mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor(this);
    v4 = v18;
  }

  v11 = v17;
  v12 = v4;
  v13 = *(*(mlir::Block::getParentOp(*(this + 2)) + 48) + 16);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id)
  {
    v14 = 0;
  }

  else if (v13 == &mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id)
  {
    v14 = 1;
  }

  else if (v13 == &mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id)
  {
    v14 = 2;
  }

  else if (v13 == &mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id)
  {
    v14 = 3;
  }

  else if (v13 == &mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id)
  {
    v14 = 4;
  }

  else if (v13 == &mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id)
  {
    v14 = 5;
  }

  else if (v13 == &mlir::detail::TypeIDResolver<mlir::anec::A18,void>::id)
  {
    v14 = 6;
  }

  else
  {
    v14 = 7;
  }

  result = (*InterfaceFor)(InterfaceFor, this, v11, v12, v14);
  if (v17 != v19)
  {
    v16 = result;
    free(v17);
    return v16;
  }

  return result;
}

BOOL mlir::anec::Convolution::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v171 = *MEMORY[0x1E69E9840];
  ANECConvLayerDescInitialize();
  v6 = *a2;
  if (*a2)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v151[0] = v6;
  v151[1] = v7;
  v8 = *(a2 + 2);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v150[0] = v8;
  v150[1] = v9;
  mlir::CallableOpInterface::getArgAttrsAttr(v151);
  v11 = v10;
  mlir::CallableOpInterface::getArgAttrsAttr(v151);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v12);
  if ((v14 & 1) == 0)
  {
    v158 = "Failed to get channel index for Conv";
    v160[8] = 259;
    mlir::OpState::emitOpError(a1, &v158, &AttrDictionary);
    v45 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v170 == 1)
    {
      if (v169 != &v170)
      {
        free(v169);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v168;
        v48 = __p;
        if (v168 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v168 = v46;
        operator delete(v48);
      }

      v49 = v165;
      if (v165)
      {
        v50 = v166;
        v51 = v165;
        if (v166 != v165)
        {
          do
          {
            v53 = *--v50;
            v52 = v53;
            *v50 = 0;
            if (v53)
            {
              operator delete[](v52);
            }
          }

          while (v50 != v49);
          v51 = v165;
        }

        v166 = v49;
        operator delete(v51);
      }

      if (v163 != v164)
      {
        free(v163);
      }
    }

    if (!v45)
    {
      return 0;
    }

    return mlir::anec::verifyConvolutionWithANEC(&v124, *a1, a2, a3);
  }

  v15 = IndexFromDim;
  v155 = v157;
  v156 = 0x300000000;
  v152 = v154;
  v153 = 0x300000000;
  v158 = v160;
  v159 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v17 + 16 * v18), *(*(*(*a1 + 48) + 96) + 72));
  mlir::getValues<int>(v19, &v155);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v20 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v21 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v20, (v21 + 16 * v22 - 32), *(*(*(*a1 + 48) + 96) + 8));
  mlir::getValues<int>(v23, &v152);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v24 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v25 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v24 + 16), (v25 + 16 * v26 - 16), *(*(*(*a1 + 48) + 96) + 56));
  mlir::getValues<int>(v27, &v158);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v151);
  v29 = mlir::CallableOpInterface::getArgAttrsAttr(v150);
  v30 = *(ArgAttrsAttr + 8 * v15);
  if (!v153)
  {
    v34 = 0;
    if (v11 == 5)
    {
      goto LABEL_16;
    }

LABEL_50:
    v54 = (v29 + 24);
    v115 = v29;
    v55 = (v29 + 16);
    v56 = 1;
    goto LABEL_51;
  }

  v31 = 4 * v153 - 4;
  v32 = v152;
  do
  {
    v33 = *v32++;
    v34 = v33 != 1;
    v35 = v33 != 1 || v31 == 0;
    v31 -= 4;
  }

  while (!v35);
  if (v11 != 5)
  {
    goto LABEL_50;
  }

LABEL_16:
  if (v156 <= 2)
  {
    v148[0] = "failed: found 2 strides, but the convolution op is 3d";
    v149 = 259;
    mlir::OpState::emitOpError(a1, v148, &AttrDictionary);
    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v170 == 1)
    {
      if (v169 != &v170)
      {
        free(v169);
      }

      v37 = __p;
      if (__p)
      {
        v38 = v168;
        v39 = __p;
        if (v168 != __p)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v168 = v37;
        operator delete(v39);
      }

      v40 = v165;
      if (!v165)
      {
        goto LABEL_120;
      }

      v41 = v166;
      v42 = v165;
      if (v166 == v165)
      {
LABEL_119:
        v166 = v40;
        operator delete(v42);
LABEL_120:
        if (v163 != v164)
        {
          free(v163);
        }

        goto LABEL_169;
      }

      do
      {
        v44 = *--v41;
        v43 = v44;
        *v41 = 0;
        if (v44)
        {
          operator delete[](v43);
        }
      }

      while (v41 != v40);
LABEL_118:
      v42 = v165;
      goto LABEL_119;
    }

    goto LABEL_169;
  }

  if (v153 > 2)
  {
    if (v159 <= 5)
    {
      v79 = "failed: found 4 paddings, but the convolution op is 3d";
LABEL_165:
      v148[0] = v79;
      v149 = 259;
      mlir::OpState::emitOpError(a1, v148, &AttrDictionary);
      v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v170 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v162);
      }

      goto LABEL_169;
    }

    v54 = (v29 + 32);
    v55 = (v29 + 24);
    v115 = v29;
    v56 = *(v29 + 16);
LABEL_51:
    v118 = *v55;
    v119 = *v54;
    v117 = *(v155 + 2);
    v57 = *v155;
    v122 = *(v152 + 1);
    v123 = *(v152 + 2);
    v121 = *v152;
    v116 = *(v158 + 2);
    v120 = *v158;
    IncPadAttr = mlir::anec::AveragePool::getIncPadAttr(a1);
    if (!IncPadAttr || !v34)
    {
      if (IncPadAttr)
      {
        v60 = 0;
      }

      else
      {
        v60 = v34;
      }

      if (v60)
      {
        v59 = @"DilatedConv";
      }

      else
      {
        if (IncPadAttr)
        {
          v68 = v34;
        }

        else
        {
          v68 = 1;
        }

        if (v68)
        {
          v59 = @"Conv";
        }

        else
        {
          v59 = @"ChannelWiseConv";
        }
      }
    }

    else
    {
      v59 = @"ChannelWiseDilatedConv";
    }

    v124 = v59;
    v69 = *a1;
    if (*(*a1 + 47) && (v172.var0 = "kernel_palettized_LUT", v172.var1 = 21, InherentAttr = mlir::Operation::getInherentAttr(*a1, v172), (v71 & 1) != 0))
    {
      v72 = InherentAttr != 0;
    }

    else
    {
      v173.var0 = "kernel_palettized_LUT";
      v173.var1 = 21;
      v72 = mlir::DictionaryAttr::contains((v69 + 56), v173);
    }

    v73 = *a1;
    if (*(*a1 + 47) && (v174.var0 = "kernel_mutable_palettized_LUT", v174.var1 = 29, v74 = mlir::Operation::getInherentAttr(*a1, v174), (v75 & 1) != 0))
    {
      if (!(v72 & 1 | (v74 != 0)))
      {
LABEL_95:
        v125 = @"Dense";
        AttrDictionary = mlir::ElementsAttr::isSplat(v150);
        if (mlir::Type::isF16(&AttrDictionary))
        {
          v76 = @"Float16";
        }

        else if (mlir::Type::isF32(&AttrDictionary))
        {
          v76 = @"Float32";
        }

        else if (mlir::Type::isUnsignedInteger(&AttrDictionary, 8))
        {
          v76 = @"UInt8";
        }

        else
        {
          mlir::Type::isInteger(&AttrDictionary, 8);
          v76 = @"Int8";
        }

        v126 = v76;
        goto LABEL_141;
      }
    }

    else
    {
      v175.var0 = "kernel_mutable_palettized_LUT";
      v175.var1 = 29;
      if (((v72 | mlir::DictionaryAttr::contains((v73 + 56), v175)) & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    v77 = v150[0];
    if (v150[0])
    {
      v78 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150[0] + 8);
    }

    else
    {
      v78 = 0;
    }

    v147[0] = v77;
    v147[1] = v78;
    AttrDictionary = mlir::ElementsAttr::isSplat(v147);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
    v81 = IntOrFloatBitWidth;
    if (v72)
    {
      v82 = IntOrFloatBitWidth;
      v83 = a3;
      v84 = v56;
      v85 = *a1;
      if (!*(*a1 + 47) || (v176.var0 = "kernel_palettized_LUT", v176.var1 = 21, v86 = mlir::Operation::getInherentAttr(*a1, v176), (v87 & 1) == 0))
      {
        v177.var0 = "kernel_palettized_LUT";
        v177.var1 = 21;
        v86 = mlir::DictionaryAttr::get((v85 + 56), v177);
      }

      v88 = v86;
      v56 = v84;
      if (v86)
      {
        v89 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v86 + 8);
      }

      else
      {
        v89 = 0;
      }

      a3 = v83;
      v148[0] = v88;
      v148[1] = v89;
      Type = mlir::ElementsAttr::getType(v148);
      v96 = Type;
      v81 = v82;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      AttrDictionary = v96;
      v162 = Type;
      isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
    }

    else
    {
      v90 = *a1;
      if (!*(*a1 + 47) || (v178.var0 = "kernel_mutable_palettized_LUT", v178.var1 = 29, v91 = mlir::Operation::getInherentAttr(*a1, v178), (v92 & 1) == 0))
      {
        v179.var0 = "kernel_mutable_palettized_LUT";
        v179.var1 = 29;
        v91 = mlir::DictionaryAttr::get((v90 + 56), v179);
      }

      v148[0] = v91;
      v180.var0 = "type";
      v180.var1 = 4;
      v93 = mlir::DictionaryAttr::get(v148, v180);
      if (v93)
      {
        if (*(*v93 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v94 = v93;
        }

        else
        {
          v94 = 0;
        }
      }

      else
      {
        v94 = 0;
      }

      v146 = v94;
      v98 = mlir::AffineMapAttr::getValue(&v146);
      v99 = v98;
      if (v98)
      {
        v98 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v98 + 8);
      }

      AttrDictionary = v99;
      v162 = v98;
      isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
    }

    AttrDictionary = isSplat;
    if (mlir::Type::isF16(&AttrDictionary))
    {
      v100 = @"Float16";
    }

    else if (mlir::Type::isF32(&AttrDictionary))
    {
      v100 = @"Float32";
    }

    else if (mlir::Type::isUnsignedInteger(&AttrDictionary, 8))
    {
      v100 = @"UInt8";
    }

    else
    {
      mlir::Type::isInteger(&AttrDictionary, 8);
      v100 = @"Int8";
    }

    v126 = v100;
    v114 = v81 - 2;
    if ((v81 - 2) >= 7 || ((0x55u >> v114) & 1) == 0)
    {
      v79 = "failed: only 2-bit, 4-bit, 6-bit and 8-bit palettization is supported";
      goto LABEL_165;
    }

    v125 = *(&off_1E86D3898 + v114);
LABEL_141:
    AttrDictionary = mlir::anec::Convolution::getPaddingModeAttr(a1);
    v127 = *(&off_1E86D3980 + mlir::IntegerAttr::getInt(&AttrDictionary));
    v101 = mlir::anec::AveragePool::getIncPadAttr(a1);
    v102 = v30;
    if (!v101)
    {
      v102 = *v115;
    }

    v128 = v102;
    if (!mlir::anec::AveragePool::getIncPadAttr(a1))
    {
      v148[0] = mlir::anec::Convolution::getGroupsAttr(a1);
      mlir::IntegerAttr::getValue(v148, &AttrDictionary);
      if (v162 > 0x40)
      {
        v30 = *AttrDictionary;
        operator delete[](AttrDictionary);
      }

      else
      {
        v30 = AttrDictionary;
      }
    }

    v129 = v30;
    v130 = 0;
    v131 = v119;
    v132 = v118;
    v133 = v56;
    v134 = v117;
    *&v103 = vrev64_s32(v57);
    *(&v103 + 1) = v116;
    v135 = v103;
    v136 = vextq_s8(v120, v120, 8uLL);
    v137 = 0;
    v138 = v123;
    v139 = v122;
    v140 = v121;
    if (mlir::anec::Convolution::getKernelScaleAttr(a1))
    {
      KernelScaleAttr = mlir::anec::Convolution::getKernelScaleAttr(a1);
      if (KernelScaleAttr)
      {
        v105 = KernelScaleAttr;
        v106 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScaleAttr + 8);
        SplatFloat = mlir::getSplatFloatValue<float>(v105, v106);
        if ((SplatFloat & 0x100000000) == 0)
        {
LABEL_150:
          v141 = 1;
          v108 = mlir::anec::Convolution::getKernelScaleAttr(a1);
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(v108);
          goto LABEL_153;
        }
      }

      else
      {
        SplatFloat = mlir::getSplatFloatValue<float>(0, 0);
        if ((SplatFloat & 0x100000000) == 0)
        {
          goto LABEL_150;
        }
      }

      v142 = SplatFloat;
    }

LABEL_153:
    if (!mlir::anec::Convolution::getKernelZeroPointAttr(a1))
    {
      v36 = 1;
      goto LABEL_169;
    }

    KernelZeroPointAttr = mlir::anec::Convolution::getKernelZeroPointAttr(a1);
    if (KernelZeroPointAttr)
    {
      v111 = KernelZeroPointAttr;
      v112 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPointAttr + 8);
      SplatInt = mlir::getSplatIntValue<int>(v111, v112);
      if ((SplatInt & 0x100000000) == 0)
      {
LABEL_156:
        v36 = 1;
        v144 = 1;
        goto LABEL_169;
      }
    }

    else
    {
      SplatInt = mlir::getSplatIntValue<int>(0, 0);
      if ((SplatInt & 0x100000000) == 0)
      {
        goto LABEL_156;
      }
    }

    v145 = SplatInt;
    v36 = 1;
    goto LABEL_169;
  }

  v148[0] = "failed: found 2 dilations, but the convolution op is 3d";
  v149 = 259;
  mlir::OpState::emitOpError(a1, v148, &AttrDictionary);
  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v170 == 1)
  {
    if (v169 != &v170)
    {
      free(v169);
    }

    v61 = __p;
    if (__p)
    {
      v62 = v168;
      v63 = __p;
      if (v168 != __p)
      {
        do
        {
          v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
        }

        while (v62 != v61);
        v63 = __p;
      }

      v168 = v61;
      operator delete(v63);
    }

    v40 = v165;
    if (!v165)
    {
      goto LABEL_120;
    }

    v64 = v166;
    v42 = v165;
    if (v166 == v165)
    {
      goto LABEL_119;
    }

    do
    {
      v66 = *--v64;
      v65 = v66;
      *v64 = 0;
      if (v66)
      {
        operator delete[](v65);
      }
    }

    while (v64 != v40);
    goto LABEL_118;
  }

LABEL_169:
  if (v158 != v160)
  {
    free(v158);
  }

  if (v152 != v154)
  {
    free(v152);
  }

  if (v155 != v157)
  {
    free(v155);
  }

  if (v36)
  {
    return mlir::anec::verifyConvolutionWithANEC(&v124, *a1, a2, a3);
  }

  return 0;
}

BOOL mlir::anec::verifyConvolutionWithANEC(uint64_t a1, uint64_t a2, mlir::ElementsAttr *a3, unint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v26[0] = v27;
  v26[1] = 0x100000000;
  v18 = 0;
  v19 = 0;
  v5 = 1;
  *buffer = 1;
  v20[0] = 0;
  ANECUnitValidatorCreate();
  if (ANECValidateConvLayer())
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v20);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "Invalid configuration", 21);
    std::stringbuf::str();
    v20[0] = *MEMORY[0x1E69E54D8];
    v6 = *(MEMORY[0x1E69E54D8] + 72);
    *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v21 = v6;
    v22 = MEMORY[0x1E69E5548] + 16;
    if (v24 < 0)
    {
      operator delete(v23[7].__locale_);
    }

    v22 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v23);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v25);
    LOWORD(v23[0].__locale_) = 260;
    v20[0] = &v16;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v7 = v33;
      if (v33)
      {
        v8 = v34;
        v9 = v33;
        if (v34 != v33)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = v33;
        }

        v34 = v7;
        operator delete(v9);
      }

      v10 = v31;
      if (v31)
      {
        v11 = v32;
        v12 = v31;
        if (v32 != v31)
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
          v12 = v31;
        }

        v32 = v10;
        operator delete(v12);
      }

      if (v29 != &v30)
      {
        free(v29);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  ANECUnitValidatorDelete();
  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  return v5;
}

BOOL mlir::anec::Convolution::addOpToNetwork(mlir::Operation **a1, void *a2, uint64_t a3)
{
  v178 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v160 = *a1;
  if (!a2)
  {
    v161[0] = "network should not be nullptr";
    v162[8] = 259;
    mlir::Operation::emitError(v3, v161, v168);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v168);
    if (v168[0])
    {
      mlir::InFlightDiagnostic::report(v168);
    }

    if (v177 == 1)
    {
      if (v176 != &v177)
      {
        free(v176);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v175;
        v18 = __p;
        if (v175 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v175 = v16;
        operator delete(v18);
      }

      v19 = v172;
      if (v172)
      {
        v20 = v173;
        v21 = v172;
        if (v173 != v172)
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
          v21 = v172;
        }

        v173 = v19;
        operator delete(v21);
      }

      v94 = v170[0];
      if (v170[0] != v171)
      {
        goto LABEL_206;
      }
    }

    return v15;
  }

  v6 = *(v3 + 9);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  if (*(v3 + 9))
  {
    v9 = v3 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v168[0] = mlir::Operation::getAttrDictionary(v3);
  Value = mlir::ArrayAttr::getValue(v168);
  v168[0] = mlir::Operation::getAttrDictionary(v160);
  v11 = mlir::ArrayAttr::getValue(v168);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v11 + 16 * v12 - 32), *(*(*(v160 + 6) + 96) + 16));
  if (v13)
  {
    if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v161[0] = v14;
  mlir::IntegerAttr::getValue(v161, v168);
  if (LODWORD(v168[1]) > 0x40)
  {
    v147 = *v168[0];
    operator delete[](v168[0]);
  }

  else
  {
    v147 = v168[0];
  }

  v168[0] = mlir::Operation::getAttrDictionary(v160);
  v24 = mlir::ArrayAttr::getValue(v168);
  v168[0] = mlir::Operation::getAttrDictionary(v160);
  v25 = mlir::ArrayAttr::getValue(v168);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v24, (v25 + 16 * v26 - 48), **(*(v160 + 6) + 96));
  if (v27)
  {
    v28 = *(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  }

  else
  {
    v28 = 0;
  }

  v166[0] = v167;
  v166[1] = 0x200000000;
  v168[0] = mlir::Operation::getAttrDictionary(v160);
  v29 = mlir::ArrayAttr::getValue(v168);
  v168[0] = mlir::Operation::getAttrDictionary(v160);
  v30 = mlir::ArrayAttr::getValue(v168);
  v32 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v29 + 32), (v30 + 16 * v31), *(*(*(v160 + 6) + 96) + 72));
  mlir::getValues<unsigned long>(v32, v166);
  __src = v165;
  v164 = 0x200000000;
  v168[0] = mlir::Operation::getAttrDictionary(v160);
  v33 = mlir::ArrayAttr::getValue(v168);
  v168[0] = mlir::Operation::getAttrDictionary(v160);
  v34 = mlir::ArrayAttr::getValue(v168);
  v36 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v33, (v34 + 16 * v35 - 32), *(*(*(v160 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v36, &__src);
  v161[0] = v162;
  v161[1] = 0x400000000;
  v168[0] = mlir::Operation::getAttrDictionary(v160);
  v37 = mlir::ArrayAttr::getValue(v168);
  v168[0] = mlir::Operation::getAttrDictionary(v160);
  v38 = mlir::ArrayAttr::getValue(v168);
  v40 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v37 + 16), (v38 + 16 * v39 - 16), *(*(*(v160 + 6) + 96) + 56));
  mlir::getValues<unsigned long>(v40, v161);
  v41 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v41)
  {
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
  }

  else
  {
    v42 = 0;
  }

  v158[0] = v41;
  v158[1] = v42;
  mlir::CallableOpInterface::getArgAttrsAttr(v158);
  v43 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v43)
  {
    v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
  }

  else
  {
    v44 = 0;
  }

  v157[0] = v43;
  v157[1] = v44;
  mlir::CallableOpInterface::getArgAttrsAttr(v157);
  v45 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
  if (v45)
  {
    v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  *&v156 = v45;
  *(&v156 + 1) = v46;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v156);
  v49 = v48;
  v155[0] = 0;
  v155[1] = 0;
  v148[0] = v155;
  v168[0] = v8;
  DefiningOp = mlir::Value::getDefiningOp(v168);
  if (DefiningOp)
  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v148, DefiningOp);
  }

  v153 = 0;
  v154 = 0;
  v152 = 0;
  v15 = 0;
  {
    v51 = operator new(0x150uLL);
    *v51 = 0u;
    *(v51 + 1) = 0u;
    *(v51 + 2) = 0u;
    *(v51 + 3) = 0u;
    *(v51 + 4) = 0u;
    *(v51 + 5) = 0u;
    *(v51 + 6) = 0u;
    *(v51 + 7) = 0u;
    *(v51 + 8) = 0u;
    *(v51 + 9) = 0u;
    *(v51 + 10) = 0u;
    *(v51 + 11) = 0u;
    *(v51 + 12) = 0u;
    *(v51 + 13) = 0u;
    *(v51 + 14) = 0u;
    *(v51 + 15) = 0u;
    *(v51 + 16) = 0u;
    *(v51 + 17) = 0u;
    *(v51 + 18) = 0u;
    *(v51 + 19) = 0u;
    *(v51 + 20) = 0u;
    *(v51 + 9) = -1;
    *(v51 + 22) = -1;
    *(v51 + 12) = -1;
    *(v51 + 26) = -1;
    *(v51 + 14) = -1;
    *(v51 + 120) = 0u;
    *(v51 + 136) = 0u;
    *(v51 + 152) = 0u;
    *(v51 + 21) = 0;
    *(v51 + 44) = 1;
    *(v51 + 48) = -1;
    *(v51 + 25) = -1;
    *(v51 + 52) = -1;
    *(v51 + 27) = -1;
    *(v51 + 28) = 0x3F80000000000006;
    v52 = vdupq_n_s64(1uLL);
    *v51 = &unk_1F5B33BB0;
    *(v51 + 248) = v52;
    *&v53 = 0x100000001;
    *(&v53 + 1) = 0x100000001;
    *(v51 + 264) = v52;
    *(v51 + 280) = v53;
    *(v51 + 37) = 0x100000001;
    *(v51 + 38) = 0;
    *(v51 + 39) = 0;
    *(v51 + 40) = 0;
    *(v51 + 82) = 1;
    mlir::anec::fillZinIrCommonInfo(v160, v51, 1, a2, 1uLL, 1u);
    v168[0] = v160;
    v168[1] = v170;
    v169 = 0x200000000;
    v54 = v164;
    if (!v164)
    {
      v171[0] = v28;
      v57 = v170;
LABEL_54:
      if (v28)
      {
        v59 = 2;
      }

      else
      {
        v59 = 1;
      }

LABEL_57:
      if (v57 != v170)
      {
        free(v57);
      }

      *(v51 + 60) = v59;
      v60 = mlir::Value::getDefiningOp(&NextResultAtOffset);
      v61 = v60;
      if (*(v60 + 47) && (v179.var0 = "kernel_palettized_LUT", v179.var1 = 21, InherentAttr = mlir::Operation::getInherentAttr(v60, v179), (v63 & 1) != 0))
      {
        if (InherentAttr)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v180.var0 = "kernel_palettized_LUT";
        v180.var1 = 21;
        if (mlir::DictionaryAttr::contains((v61 + 56), v180))
        {
          goto LABEL_67;
        }
      }

      v64 = mlir::Value::getDefiningOp(&NextResultAtOffset);
      v65 = v64;
      if (*(v64 + 47) && (v181.var0 = "kernel_mutable_palettized_LUT", v181.var1 = 29, v66 = mlir::Operation::getInherentAttr(v64, v181), (v67 & 1) != 0))
      {
        if (v66)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v188.var0 = "kernel_mutable_palettized_LUT";
        v188.var1 = 29;
        if (mlir::DictionaryAttr::contains((v65 + 56), v188))
        {
LABEL_67:
          v150 = 0;
          v151 = 0;
          if (v152 != 1)
          {
            v77 = mlir::Value::getDefiningOp(&NextResultAtOffset);
            v78 = v77;
            if (!*(v77 + 47) || (v186.var0 = "kernel_palettized_LUT", v186.var1 = 21, v79 = mlir::Operation::getInherentAttr(v77, v186), (v80 & 1) == 0))
            {
              v187.var0 = "kernel_palettized_LUT";
              v187.var1 = 21;
              v79 = mlir::DictionaryAttr::get((v78 + 56), v187);
            }

            v81 = v79;
            if (v79)
            {
              v82 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v79 + 8);
            }

            else
            {
              v82 = 0;
            }

            v168[0] = v81;
            v168[1] = v82;
            UInt = mlir::anec::ANECIRWeightSerializer::addConstant(a3, v81, v82);
            v97 = v96;
            Type = mlir::ElementsAttr::getType(v168);
            v99 = Type;
            if (Type)
            {
              v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            else
            {
              v100 = 0;
            }

            v150 = v99;
            v151 = v100;
LABEL_132:
            {
              v148[0] = "Failed to retrieve the palettized kernel info";
              v149 = 259;
              mlir::Operation::emitError(v160, v148, v168);
              v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v168);
              if (v168[0])
              {
                mlir::InFlightDiagnostic::report(v168);
              }

              if (v177 != 1)
              {
                goto LABEL_153;
              }

              if (v176 != &v177)
              {
                free(v176);
              }

              v109 = __p;
              if (__p)
              {
                v110 = v175;
                v111 = __p;
                if (v175 != __p)
                {
                  do
                  {
                    v110 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v110 - 1);
                  }

                  while (v110 != v109);
                  v111 = __p;
                }

                v175 = v109;
                operator delete(v111);
              }

              v89 = v172;
              if (!v172)
              {
LABEL_151:
                if (v170[0] != v171)
                {
                  free(v170[0]);
                }

LABEL_153:
                (*(*v51 + 8))(v51);
                goto LABEL_201;
              }

              v112 = v173;
              v91 = v172;
              if (v173 == v172)
              {
LABEL_150:
                v173 = v89;
                operator delete(v91);
                goto LABEL_151;
              }

              do
              {
                v114 = *--v112;
                v113 = v114;
                *v112 = 0;
                if (v114)
                {
                  operator delete[](v113);
                }
              }

              while (v112 != v89);
LABEL_149:
              v91 = v172;
              goto LABEL_150;
            }

LABEL_159:
            v51[244] = 0;
            *(v51 + 31) = v147;
            v115 = v154;
            *(v51 + 22) = v153;
            *(v51 + 12) = v115;
            *(v51 + 16) = vextq_s8(*(ArgAttrsAttr + 8 * v49 - 16), *(ArgAttrsAttr + 8 * v49 - 16), 8uLL);
            if (v49 == 5)
            {
              v116 = *(ArgAttrsAttr + 16);
            }

            else
            {
              v116 = 1;
            }

            *(v51 + 34) = v116;
            v117 = __src;
            *(v51 + 70) = *(__src + 2);
            v118 = *v117;
            v119 = v166[0];
            *(v51 + 284) = vrev64q_s32(vuzp1q_s32(v118, *(v166[0] + 8)));
            *(v51 + 75) = *v119;
            v120 = v161[0];
            *(v51 + 19) = vuzp1q_s32(*(v161[0] + 2), *(v161[0] + 1));
            *(v51 + 40) = vmovn_s64(*v120);
            v168[0] = mlir::anec::Convolution::getPaddingModeAttr(&v160);
            *(v51 + 82) = dword_1E0999A24[mlir::IntegerAttr::getInt(v168)];
            v51[180] = v152;
            if (!mlir::anec::Convolution::getKernelScaleAttr(&v160))
            {
LABEL_185:
              if (mlir::anec::Convolution::getKernelZeroPointAttr(&v160))
              {
                KernelZeroPointAttr = mlir::anec::Convolution::getKernelZeroPointAttr(&v160);
                if (KernelZeroPointAttr)
                {
                  v135 = KernelZeroPointAttr;
                  v136 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPointAttr + 8);
                  SplatInt = mlir::getSplatIntValue<int>(v135, v136);
                  if ((SplatInt & 0x100000000) == 0)
                  {
LABEL_188:
                    v138 = mlir::anec::Convolution::getKernelZeroPointAttr(&v160);
                    v139 = v138;
                    if (v138)
                    {
                      v140 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v138 + 8);
                    }

                    else
                    {
                      v140 = 0;
                    }

                    v141 = mlir::anec::ANECIRWeightSerializer::addConstant(a3, v139, v140);
                    v51[185] = 1;
                    *(v51 + 52) = 0;
                    *(v51 + 27) = v141;
                    goto LABEL_194;
                  }
                }

                else
                {
                  SplatInt = mlir::getSplatIntValue<int>(0, 0);
                  if ((SplatInt & 0x100000000) == 0)
                  {
                    goto LABEL_188;
                  }
                }

                *(v51 + 58) = SplatInt;
              }

LABEL_194:
              v142 = operator new(0xC8uLL);
              v143 = v142;
              *(v142 + 1) = 0;
              *(v142 + 2) = 0;
              *v142 = &unk_1F5B2E830;
              v144 = v142 + 24;
              *(v142 + 3) = &unk_1F5B2E868;
              if (v51[31] < 0)
              {
                std::string::__init_copy_ctor_external((v142 + 32), *(v51 + 1), *(v51 + 2));
              }

              else
              {
                *(v142 + 2) = *(v51 + 8);
                *(v142 + 6) = *(v51 + 3);
              }

              v143[14] = 17;
              *(v143 + 3) = &unk_1F5B34308;
              *(v143 + 8) = v51;
              *(v143 + 72) = 0;
              *(v143 + 10) = 0;
              *(v143 + 11) = v143 + 26;
              *(v143 + 12) = 0x100000000;
              *(v143 + 17) = v143 + 38;
              *(v143 + 18) = 0x300000000;
              v168[0] = v144;
              v168[1] = v143;
              mlir::anec::ANECIRNetwork::AddUnit(a2, v168);
              v145 = v168[1];
              if (v168[1] && !atomic_fetch_add(v168[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v145->__on_zero_shared)(v145);
                std::__shared_weak_count::__release_weak(v145);
              }

              v15 = 1;
              goto LABEL_201;
            }

            KernelScaleAttr = mlir::anec::Convolution::getKernelScaleAttr(&v160);
            if (KernelScaleAttr)
            {
              v122 = KernelScaleAttr;
              v123 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScaleAttr + 8);
              SplatFloat = mlir::getSplatFloatValue<float>(v122, v123);
              if ((SplatFloat & 0x100000000) == 0)
              {
                goto LABEL_165;
              }
            }

            else
            {
              SplatFloat = mlir::getSplatFloatValue<float>(0, 0);
              if ((SplatFloat & 0x100000000) == 0)
              {
LABEL_165:
                v125 = mlir::anec::Convolution::getKernelScaleAttr(&v160);
                v126 = v125;
                if (v125)
                {
                  v127 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v125 + 8);
                }

                else
                {
                  v127 = 0;
                }

                v128 = mlir::anec::ANECIRWeightSerializer::addConstant(a3, v126, v127);
                v150 = mlir::anec::Convolution::getKernelScaleAttr(&v160);
                v168[0] = mlir::ArrayAttr::getValue(&v150);
                v168[1] = v129;
                isSplat = mlir::ElementsAttr::isSplat(v168);
                v131 = *(*isSplat + 136);
                if (v131 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
                {
                  if (v131 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
                  {
                    v132 = 4;
                  }

                  else if (v131 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
                  {
                    v132 = 6;
                  }

                  else
                  {
                    v132 = 0;
                  }

                  goto LABEL_184;
                }

                v148[0] = isSplat;
                Width = mlir::IntegerType::getWidth(v148);
                if (Width == 16)
                {
                  if (mlir::IntegerType::getSignedness(v148) == 1)
                  {
                    v132 = 3;
LABEL_184:
                    *(v51 + 56) = v132;
                    v51[184] = 1;
                    *(v51 + 48) = 0;
                    *(v51 + 25) = v128;
                    goto LABEL_185;
                  }
                }

                else if (Width == 8)
                {
                  if (mlir::IntegerType::getSignedness(v148) == 2)
                  {
                    v132 = 2;
                  }

                  else
                  {
                    v132 = 1;
                  }

                  goto LABEL_184;
                }

                v132 = 0;
                goto LABEL_184;
              }
            }

            *(v51 + 57) = SplatFloat;
            goto LABEL_185;
          }

          v68 = mlir::Value::getDefiningOp(&NextResultAtOffset);
          v69 = v68;
          if (*(v68 + 47) && (v182.var0 = "kernel_mutable_palettized_LUT", v182.var1 = 29, v70 = mlir::Operation::getInherentAttr(v68, v182), (v71 & 1) != 0))
          {
            if (v70)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v189.var0 = "kernel_mutable_palettized_LUT";
            v189.var1 = 29;
            if (mlir::DictionaryAttr::contains((v69 + 56), v189))
            {
LABEL_71:
              v72 = v160;
              if (!*(v160 + 47) || (v183.var0 = "kernel_mutable_palettized_LUT", v183.var1 = 29, v73 = mlir::Operation::getInherentAttr(v160, v183), (v74 & 1) == 0))
              {
                v184.var0 = "kernel_mutable_palettized_LUT";
                v184.var1 = 29;
                v73 = mlir::DictionaryAttr::get((v72 + 56), v184);
              }

              v148[0] = v73;
              v185.var0 = "offset";
              v185.var1 = 6;
              v75 = mlir::DictionaryAttr::get(v148, v185);
              if (v75)
              {
                if (*(*v75 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
                {
                  v76 = v75;
                }

                else
                {
                  v76 = 0;
                }
              }

              else
              {
                v76 = 0;
              }

              v168[0] = v76;
              UInt = mlir::IntegerAttr::getUInt(v168);
              v190.var0 = "type";
              v190.var1 = 4;
              v102 = mlir::DictionaryAttr::get(v148, v190);
              if (v102)
              {
                if (*(*v102 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
                {
                  v103 = v102;
                }

                else
                {
                  v103 = 0;
                }
              }

              else
              {
                v103 = 0;
              }

              v168[0] = v103;
              v104 = mlir::AffineMapAttr::getValue(v168);
              v105 = v104;
              if (v104)
              {
                v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
              }

              v150 = v105;
              v151 = v104;
              v168[0] = mlir::ElementsAttr::isSplat(&v150);
              IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v168);
              v107 = mlir::CallableOpInterface::getArgAttrsAttr(&v150);
              v97 = mlir::ShapedType::getNumElements(v107, v108) * IntOrFloatBitWidth / 8;
              v99 = v150;
              v100 = v151;
              goto LABEL_132;
            }
          }

          v148[0] = "Failed to find mutable LUT attribute";
          v149 = 259;
          mlir::Operation::emitError(v160, v148, v168);
          v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v168);
          if (v168[0])
          {
            mlir::InFlightDiagnostic::report(v168);
          }

          if (v177 != 1)
          {
            goto LABEL_153;
          }

          if (v176 != &v177)
          {
            free(v176);
          }

          v86 = __p;
          if (__p)
          {
            v87 = v175;
            v88 = __p;
            if (v175 != __p)
            {
              do
              {
                v87 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v87 - 1);
              }

              while (v87 != v86);
              v88 = __p;
            }

            v175 = v86;
            operator delete(v88);
          }

          v89 = v172;
          if (!v172)
          {
            goto LABEL_151;
          }

          v90 = v173;
          v91 = v172;
          if (v173 == v172)
          {
            goto LABEL_150;
          }

          do
          {
            v93 = *--v90;
            v92 = v93;
            *v90 = 0;
            if (v93)
            {
              operator delete[](v92);
            }
          }

          while (v90 != v89);
          goto LABEL_149;
        }
      }

      *v168 = v156;
      v83 = mlir::ElementsAttr::isSplat(v168);
      v84 = *(*v83 + 136);
      if (v84 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        if (v84 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
        {
          v85 = 4;
        }

        else if (v84 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
        {
          v85 = 6;
        }

        else
        {
          v85 = 0;
        }

        goto LABEL_158;
      }

      v148[0] = v83;
      v101 = mlir::IntegerType::getWidth(v148);
      if (v101 == 16)
      {
        if (mlir::IntegerType::getSignedness(v148) == 1)
        {
          v85 = 3;
LABEL_158:
          *(v51 + 20) = 1;
          *(v51 + 21) = v85;
          goto LABEL_159;
        }
      }

      else if (v101 == 8)
      {
        if (mlir::IntegerType::getSignedness(v148) == 2)
        {
          v85 = 2;
        }

        else
        {
          v85 = 1;
        }

        goto LABEL_158;
      }

      v85 = 0;
      goto LABEL_158;
    }

    if (v164 < 3)
    {
      v55 = v164;
      v56 = v170;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v168[1], v170, v164, 8);
      v55 = v164;
      if (!v164)
      {
        goto LABEL_51;
      }

      v56 = v168[1];
    }

    memcpy(v56, __src, 8 * v55);
LABEL_51:
    v58 = 0;
    LODWORD(v169) = v54;
    v57 = v168[1];
    v171[0] = v28;
    while (*(v168[1] + v58) == 1)
    {
      v58 += 8;
      if (8 * v54 == v58)
      {
        goto LABEL_54;
      }
    }

    if (v28)
    {
      v59 = 6;
    }

    else
    {
      v59 = 5;
    }

    goto LABEL_57;
  }

LABEL_201:
  if (v161[0] != v162)
  {
    free(v161[0]);
  }

  if (__src != v165)
  {
    free(__src);
  }

  v94 = v166[0];
  if (v166[0] != v167)
  {
LABEL_206:
    free(v94);
  }

  return v15;
}

uint64_t mlir::anec::findDilatedConvTiles(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v12 = 1;
  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v13 = a3;
    do
    {
      v14 = v13 >> 1;
      ++v12;
      v15 = v13;
      v13 >>= 1;
    }

    while ((v15 & 2) == 0);
  }

  if (0xAAAAAAAAAAAAAAABLL * v14 + 0x2AAAAAAAAAAAAAAALL <= 0x5555555555555554)
  {
    v16 = 1;
    do
    {
      v14 /= 3;
      ++v16;
    }

    while ((0x2AAAAAAAAAAAAAAALL - 0x5555555555555555 * v14) < 0x5555555555555555);
  }

  else
  {
    v16 = 1;
  }

  v17 = 1;
  if (a4)
  {
    v19 = a4;
  }

  else
  {
    v18 = a4;
    do
    {
      v19 = v18 >> 1;
      ++v17;
      v20 = v18;
      v18 >>= 1;
    }

    while ((v20 & 2) == 0);
  }

  if (0xAAAAAAAAAAAAAAABLL * v19 + 0x2AAAAAAAAAAAAAAALL <= 0x5555555555555554)
  {
    v21 = 1;
    do
    {
      v19 /= 3;
      ++v21;
    }

    while ((0x2AAAAAAAAAAAAAAALL - 0x5555555555555555 * v19) < 0x5555555555555555);
  }

  else
  {
    v21 = 1;
  }

  v22 = 0;
  v23 = a5 - 1;
  v24 = a6 - 1;
  v25 = this - 1;
  v26 = a2 - 1;
  v48 = -1;
  do
  {
    v27 = (&unk_1E09999A0 + 16 * v22);
    v28 = *v27;
    v29 = v27[1];
    v30 = 1;
    v31 = 1;
    do
    {
      if (v16)
      {
        v32 = 0;
        v33 = -1;
        v34 = 1;
        v35 = v30;
        do
        {
          v36 = v12;
          for (i = v34; v36; --v36)
          {
            if (i > v30 && (v33 == -1 || ((v25 + i) / i + v29 - 1) / v29 * v29 * i - this <= v33))
            {
              v33 = ((v25 + i) / i + v29 - 1) / v29 * v29 * i - this;
              v35 = i;
            }

            i *= 2;
          }

          ++v32;
          v34 *= 3;
        }

        while (v32 != v16);
      }

      else
      {
        v35 = v30;
      }

      v38 = a7 + a7 * a3 / v35 * v23;
      v39 = v38 + v38 * a4 / v31 * v24;
      if (v35 * v31 > 8)
      {
        v39 /= 2;
      }

      if (v39 < 65537)
      {
        v43 = v31;
        goto LABEL_50;
      }

      v40 = 0;
      v41 = -1;
      v42 = 1;
      v43 = v31;
      do
      {
        v44 = v17;
        v45 = v42;
        do
        {
          if (v45 > v31 && (v41 == -1 || ((v26 + v45) / v45 + v28 - 1) / v28 * v28 * v45 - a2 <= v41))
          {
            v41 = ((v26 + v45) / v45 + v28 - 1) / v28 * v28 * v45 - a2;
            v43 = v45;
          }

          v45 *= 2;
          --v44;
        }

        while (v44);
        ++v40;
        v42 *= 3;
      }

      while (v40 != v21);
      v46 = v38 + v38 * a4 / v43 * v24;
      if (v43 * v35 > 8)
      {
        v46 /= 2;
      }

      if (v41 == -1)
      {
        break;
      }

      v30 = v35;
      v31 = v43;
    }

    while (v46 >= 65537);
    if (v46 >= 65537)
    {
      goto LABEL_21;
    }

LABEL_50:
    if (v48 == -1 || v35 * v28 * v43 * ((v28 + (v26 + v43) / v43 - 1) / v28) * ((v25 + v35) / v35 + v29 - 1) / v29 * v29 - a2 * this < v48)
    {
      *a8 = v29;
      *a9 = v28;
      *a10 = v35;
      v48 = v35 * v28 * v43 * ((v28 + (v26 + v43) / v43 - 1) / v28) * ((v25 + v35) / v35 + v29 - 1) / v29 * v29 - a2 * this;
      *a11 = v43;
    }

LABEL_21:
    ++v22;
  }

  while (v22 != 4);
  return this;
}

float mlir::anec::Convolution::getExecutionCost(mlir::Operation **a1, uint64_t a2)
{
  v163[6] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(*a1 + 9);
  v5 = (*(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    v3 = *a1;
    v4 = *(*a1 + 9);
  }

  else
  {
    v6 = 0;
  }

  v157[0] = v5;
  v157[1] = v6;
  v7 = (*(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v3 = *a1;
  }

  else
  {
    v8 = 0;
  }

  v156[0] = v7;
  v156[1] = v8;
  v9 = *(v3 + 9);
  v10 = v3 - 16;
  if (v9)
  {
    v11 = v10;
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

  v155[0] = v12;
  v155[1] = v13;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v157);
  v15 = mlir::CallableOpInterface::getArgAttrsAttr(v156);
  v17 = v16;
  v18 = mlir::CallableOpInterface::getArgAttrsAttr(v155);
  v144 = *v15;
  v19 = &v15[v17];
  v20 = *(v19 - 1);
  v148 = *(v19 - 2);
  isSplat = mlir::ElementsAttr::isSplat(v156);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
  mlir::CallableOpInterface::getArgAttrsAttr(v157);
  IndexFromDim = mlir::anec::getIndexFromDim(0, v22);
  if ((v24 & 1) == 0 || (v25 = IndexFromDim, mlir::CallableOpInterface::getArgAttrsAttr(v157), v27 = mlir::anec::getIndexFromDim(1, v26), (v28 & 1) == 0) || (v29 = v27, mlir::CallableOpInterface::getArgAttrsAttr(v157), v31 = mlir::anec::getIndexFromDim(3, v30), (v32 & 1) == 0) || (v33 = v31, mlir::CallableOpInterface::getArgAttrsAttr(v157), v35 = mlir::anec::getIndexFromDim(4, v34), (v36 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v143 = *(ArgAttrsAttr + 8 * v25);
  v37 = *(ArgAttrsAttr + 8 * v29);
  v38 = *(v18 + 8 * v33);
  v147 = *(v18 + 8 * v35);
  mlir::CallableOpInterface::getArgAttrsAttr(v157);
  v40 = mlir::anec::getIndexFromDim(2, v39);
  if (v41)
  {
    v145 = *(v18 + 8 * v40);
    v42 = *(v19 - 2);
    v20 = *(v19 - 2);
    v148 = *(v19 - 3);
  }

  else
  {
    v145 = 1;
    v42 = 1;
  }

  v151 = IntOrFloatBitWidth >> 3;
  isSplat = v163;
  v162 = 0xC00000000;
  __p = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*a1);
  v44 = mlir::ArrayAttr::getValue(&__p);
  v46 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v44 + 16 * v45 - 32), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<int>(v46, &isSplat);
  if (v162)
  {
    v47 = *isSplat;
    if (v162 == 1)
    {
      v48 = 1;
      v49 = 1;
    }

    else
    {
      v48 = isSplat[1];
      if (v162 < 3)
      {
        v49 = 1;
      }

      else
      {
        v49 = isSplat[2];
      }
    }
  }

  else
  {
    v48 = 1;
    v47 = 1;
    v49 = 1;
  }

  v50 = v49;
  v142 = v42;
  v51 = v47 * (v42 - 1) + 1;
  GroupsAttr = mlir::anec::Convolution::getGroupsAttr(a1);
  mlir::IntegerAttr::getValue(&GroupsAttr, &__p);
  if (v159 > 0x40)
  {
    v52 = *__p;
    operator delete[](__p);
  }

  else
  {
    v52 = __p;
  }

  v53 = v20 - 1;
  v150 = v148 - 1;
  v54 = v48;
  v55 = v51;
  if (v38 <= 0)
  {
    v56 = -(-v38 & 7);
  }

  else
  {
    v56 = v38 & 7;
  }

  v57 = v56 == 0;
  v58 = v38 - v56 + 8;
  v60 = v145 < 9 && v38 < 9;
  if (v60 && v147 < 9 || v57)
  {
    v61 = v38;
  }

  else
  {
    v61 = v58;
  }

  if (v48 > 5 || v50 > 5)
  {
    v141 = v55;
    GroupsAttr = 8;
    v154 = 16;
    v152 = 1;
    v153 = 1;
    v146 = v20;
    mlir::anec::findDilatedConvTiles(v147, v38, v50, v48, v20, v148, v37, &GroupsAttr, &v154, &v153, &v152, v139);
    v62 = v38;
    v63 = v152;
    v64 = v153;
    v65 = v50 / v153;
    v66 = v54 / v152;
    v67 = (v147 + v153 - 1) / v153;
    v68 = (v62 + v152 - 1) / v152;
    v69 = v65 * v53 + 1;
    v70 = v66 * v150 + 1;
    v71 = v37 / v52;
    if (v153 == 1)
    {
      v72 = 0.0;
      if (v152 == 1)
      {
LABEL_58:
        v91 = 0x10000 / (v141 * v151 * v69 * v71 * v70);
        if (v91 <= 1)
        {
          v91 = 1;
        }

        if (v91 >= 8)
        {
          v91 = 8;
        }

        v92 = 16 * v91;
        v93 = v144 / (16 * v91);
        v94 = v64 * v143 * v63 * ((v67 + GroupsAttr - 1) / GroupsAttr) * ((v68 + v154 - 1) / v154);
        v95 = v148 * v146 * v142 * v71;
        v96 = (v95 * 16 * v91 * v94 * v93) << 9;
        v97 = (v94 * v93) << 8;
        if (v144 != v93 * v92)
        {
          v98 = v144 - v92 * v93;
          v99 = v98 + 15;
          v100 = v98 + 30;
          if (v99 >= 0)
          {
            v100 = v99;
          }

          v96 += 32 * v95 * (v100 >> 4) * (v94 << 8);
          v97 += v94 << 8;
        }

        v101 = (v97 * v71);
        __p = mlir::ElementsAttr::isSplat(v155);
        v102 = mlir::Type::getIntOrFloatBitWidth(&__p) >> 3;
        v103 = mlir::CallableOpInterface::getArgAttrsAttr(v155);
        v105 = v101 + (mlir::ShapedType::getNumElements(v103, v104) * v102);
        v106 = mlir::ElementsAttr::isSplat(v157);
        if (v105 <= 2097200.0)
        {
          v105 = 0.0;
        }

        __p = v106;
        v107 = *(a2 + 40) * 1.0e12;
        isF16 = mlir::Type::isF16(&__p);
        v109 = v107 + v107;
        if (isF16)
        {
          v109 = v107;
        }

        v110 = (v96 / v109) / 0.65;
        if (v110 < (v105 / (*(a2 + 44) * 1000000000.0)))
        {
          v110 = v105 / (*(a2 + 44) * 1000000000.0);
        }

        v111 = v72 + v110;
        goto LABEL_73;
      }
    }

    v73 = (v62 + v152 - 1) / v152;
    if (v153 == 1)
    {
      v77 = 0;
      if (v152 == 1)
      {
LABEL_51:
        __p = mlir::ElementsAttr::isSplat(v155);
        v81 = mlir::Type::getIntOrFloatBitWidth(&__p);
        v82 = mlir::CallableOpInterface::getArgAttrsAttr(v155);
        v84 = v77 + mlir::ShapedType::getNumElements(v82, v83) * ((v81 >> 2) & 0x3FFFFFFE);
        v85 = v84;
        v86 = mlir::ElementsAttr::isSplat(v157);
        if (v84 <= 0x200000)
        {
          v85 = 0.0;
        }

        __p = v86;
        v87 = *(a2 + 40) * 1.0e12;
        v88 = mlir::Type::isF16(&__p);
        v89 = v87 + v87;
        if (v88)
        {
          v89 = v87;
        }

        v90 = (0.0 / v89) / 0.65;
        if (v90 < (v85 / (*(a2 + 44) * 1000000000.0)))
        {
          v90 = v85 / (*(a2 + 44) * 1000000000.0);
        }

        v72 = v90 + 0.0;
        v68 = v73;
        goto LABEL_58;
      }
    }

    else
    {
      __p = mlir::ElementsAttr::isSplat(v157);
      v74 = mlir::Type::getIntOrFloatBitWidth(&__p);
      v75 = mlir::CallableOpInterface::getArgAttrsAttr(v157);
      v77 = mlir::ShapedType::getNumElements(v75, v76) * ((v74 >> 2) & 0x3FFFFFFE);
      if (v63 == 1)
      {
        goto LABEL_51;
      }
    }

    __p = mlir::ElementsAttr::isSplat(v157);
    v78 = mlir::Type::getIntOrFloatBitWidth(&__p);
    v79 = mlir::CallableOpInterface::getArgAttrsAttr(v157);
    v77 += mlir::ShapedType::getNumElements(v79, v80) * ((v78 >> 2) & 0x3FFFFFFE);
    goto LABEL_51;
  }

  v113 = v150 * v48 + 1;
  v140 = v38;
  if (v50 == 1)
  {
    v114 = v53 * v50 + 1;
  }

  else
  {
    v37 *= v50;
    v52 *= v50;
    v114 = v20;
  }

  if ((v148 * v20 * v151 * v142 * (v37 / v52)) <= 0x8000)
  {
    v121 = v113 == v148 && v114 == v20;
    v115 = 0.0;
    if (!v121 && (v113 * v55 * v114 * (v37 / v52) * v151) > 0x8000)
    {
      v122 = v20 * v55;
      do
      {
        if (v115 == 0.0)
        {
          __p = mlir::ElementsAttr::isSplat(v157);
          v125 = mlir::Type::getIntOrFloatBitWidth(&__p) >> 3;
          v126 = mlir::CallableOpInterface::getArgAttrsAttr(v157);
          v128 = mlir::ShapedType::getNumElements(v126, v127) * v125;
          __p = mlir::ElementsAttr::isSplat(v155);
          v129 = mlir::Type::getIntOrFloatBitWidth(&__p) >> 3;
          v130 = mlir::CallableOpInterface::getArgAttrsAttr(v155);
          v132 = 2 * (v128 + mlir::ShapedType::getNumElements(v130, v131) * v129);
          v133 = v132;
          v134 = mlir::ElementsAttr::isSplat(v157);
          if (v132 <= 0x200000)
          {
            v133 = 0.0;
          }

          __p = v134;
          v135 = *(a2 + 40) * 1.0e12;
          v136 = mlir::Type::isF16(&__p);
          v137 = v135 + v135;
          if (v136)
          {
            v137 = v135;
          }

          v138 = (0.0 / v137) / 0.65;
          if (v138 >= (v133 / (*(a2 + 44) * 1000000000.0)))
          {
            v115 = v138;
          }

          else
          {
            v115 = v133 / (*(a2 + 44) * 1000000000.0);
          }
        }

        if (v48)
        {
          if (v48 != 3 * (v48 / 3))
          {
            break;
          }

          v123 = 2;
          v124 = 3;
          v48 /= 3;
          v37 *= 3;
          v52 *= 3;
        }

        else
        {
          v48 >>= 1;
          v37 *= 2;
          v123 = 1;
          v124 = 2;
          v52 *= 2;
        }

        v61 = (v61 + v123) / v124;
      }

      while (((v122 * (v37 / v52) + v122 * (v37 / v52) * v150 * v48) * v151) > 0x8000);
    }
  }

  else
  {
    v115 = 0.0;
  }

  v116 = *a1;
  v117 = mlir::ElementsAttr::isSplat(v157);
  v111 = v115 + v118;
  __p = mlir::ElementsAttr::isSplat(v157);
  if (((v147 * v140 * v145 * (mlir::Type::getIntOrFloatBitWidth(&__p) >> 3)) & 0x7FFFF) == 0 && v37 >= v144 && v37 >= 64)
  {
    v111 = v111 + v111;
  }

LABEL_73:
  if (isSplat != v163)
  {
    free(isSplat);
  }

  return v111;
}

void mlir::getValues<int>(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v11, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v13);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v10, a1, NumElements);
  for (i = v12; i != v10[2]; i = ++v12)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v11, &__p);
    if (v9 > 0x40)
    {
      v6 = *__p;
    }

    else if (v9)
    {
      v6 = (__p << -v9) >> -v9;
    }

    else
    {
      LODWORD(v6) = 0;
    }

    v7 = *(a2 + 8);
    if (v7 >= *(a2 + 12))
    {
      llvm::SmallVectorTemplateBase<int,true>::push_back(a2, v6);
    }

    else
    {
      *(*a2 + 4 * v7) = v6;
      ++*(a2 + 8);
    }

    if (v9 >= 0x41)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }
  }
}

uint64_t mlir::anec::Convolution::getDilation(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 8));
}

void *mlir::anec::Convolution::getGroups(mlir::Operation **this)
{
  GroupsAttr = mlir::anec::Convolution::getGroupsAttr(this);
  mlir::IntegerAttr::getValue(&GroupsAttr, &__p);
  if (v4 <= 0x40)
  {
    return __p;
  }

  v1 = *__p;
  operator delete[](__p);
  return v1;
}

BOOL mlir::anec::Linear::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *x1_0, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = *MEMORY[0x1E69E9840];
  v47 = a6;
  v48[0] = 0;
  v49 = 0;
  v50 = a7;
  v51 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v47);
    if (v49 == 1)
    {
      v49 = 0;
    }

    mlir::OperationName::OperationName(v48, "anec.linear", 11, Context);
    v49 = 1;
    a1 = v15;
  }

  v52 = a4;
  v53 = a5;
  v17 = mlir::UnknownLoc::get(a1, x1_0);
  if (a3)
  {
    v18.var0.var0 = x1_0;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::LinearAdaptor::verify(&v47, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v43[0] = v20;
  v43[1] = v19;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  v23 = v22;
  v24 = mlir::TypeRange::dereference_iterator(a9, 1);
  v25 = v24;
  if (v24)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  }

  v42[0] = v25;
  v42[1] = v24;
  v26 = *(mlir::CallableOpInterface::getArgAttrsAttr(v42) + 8);
  mlir::CallableOpInterface::getArgAttrsAttr(v43);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v27);
  if ((v29 & 1) == 0)
  {
    v41 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::LinearAdaptor::verify(v41, v55);
  }

  v30 = IndexFromDim;
  v44 = v46;
  v45 = 0x600000000;
  v31 = (8 * v23) >> 3;
  if (v31 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v31, 8);
    v32 = v45;
    v33 = v44;
    v34 = 8 * v23;
    if (!v23)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v32 = 0;
  v33 = v46;
  v34 = 8 * v23;
  if (v23)
  {
LABEL_19:
    memcpy(&v33[v32], ArgAttrsAttr, v34);
    v32 = v45;
    v33 = v44;
  }

LABEL_20:
  v36 = (v32 + (v34 >> 3));
  LODWORD(v45) = v32 + (v34 >> 3);
  v33[v30] = v26;
  isSplat = mlir::ElementsAttr::isSplat(v43);
  v38 = mlir::MemRefType::get(v33, v36, isSplat, 0, 0, 0);
  v39 = *(a11 + 8);
  if (v39 >= *(a11 + 12))
  {
    v40 = v38;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v39 + 1, 8);
    v38 = v40;
    LODWORD(v39) = *(a11 + 8);
  }

  *(*a11 + 8 * v39) = v38;
  ++*(a11 + 8);
  if (v44 != v46)
  {
    free(v44);
  }

  return 1;
}

BOOL mlir::anec::LinearAdaptor::verify(mlir::anec::LinearAdaptor *this, Location a2)
{
  v112 = *MEMORY[0x1E69E9840];
  v101 = *this;
  Value = mlir::AffineMapAttr::getValue(&v101);
  if (Value == mlir::DictionaryAttr::end(&v101))
  {
    v5 = 0;
    v7 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
      {
        v5 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 8))
      {
        v6 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 16))
      {
        v7 = *(Value + 1);
      }

      Value = (Value + 16);
    }

    while (Value != mlir::DictionaryAttr::end(&v101));
    if (v6)
    {
      if (!mlir::DenseFPElementsAttr::classof(v6))
      {
        goto LABEL_20;
      }

      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
      v90 = v6;
      v91 = v8;
      Type = mlir::ElementsAttr::getType(&v90);
      v10 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v102 = v10;
      v103 = Type;
      mlir::CallableOpInterface::getArgAttrsAttr(&v102);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
        v97 = v6;
        v98 = v12;
        v13 = mlir::ElementsAttr::getType(&v97);
        v14 = v13;
        if (v13)
        {
          v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
        }

        v99 = v14;
        v100 = v13;
        mlir::CallableOpInterface::getArgAttrsAttr(&v99);
        if (v15 != 1)
        {
          goto LABEL_20;
        }
      }

      v88[0] = v6;
      v95 = mlir::ArrayAttr::getValue(v88);
      v96 = v16;
      v89[0] = mlir::ElementsAttr::isSplat(&v95);
      if (!mlir::Type::isF16(v89))
      {
        v86[0] = v6;
        v93 = mlir::ArrayAttr::getValue(v86);
        v94 = v17;
        v87[0] = mlir::ElementsAttr::isSplat(&v93);
        if (!mlir::Type::isF32(v87))
        {
LABEL_20:
          v90 = "'anec.linear' op attribute 'kernel_scale' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1";
          v92 = 259;
          mlir::emitError(a2.var0.var0, &v90, &v102);
          v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
          if (v102)
          {
            mlir::InFlightDiagnostic::report(&v102);
          }

          if (v111 == 1)
          {
            if (v110 != &v111)
            {
              free(v110);
            }

            v19 = __p;
            if (__p)
            {
              v20 = v109;
              v21 = __p;
              if (v109 != __p)
              {
                do
                {
                  v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
                }

                while (v20 != v19);
                v21 = __p;
              }

              v109 = v19;
              operator delete(v21);
            }

            v22 = v106;
            if (!v106)
            {
              goto LABEL_106;
            }

            v23 = v107;
            v24 = v106;
            if (v107 == v106)
            {
LABEL_105:
              v107 = v22;
              operator delete(v24);
LABEL_106:
              if (v104 != &v105)
              {
                free(v104);
              }

              return v18;
            }

            do
            {
              v26 = *--v23;
              v25 = v26;
              *v23 = 0;
              if (v26)
              {
                operator delete[](v25);
              }
            }

            while (v23 != v22);
LABEL_104:
            v24 = v106;
            goto LABEL_105;
          }

          return v18;
        }
      }
    }
  }

  if (!v7)
  {
    goto LABEL_111;
  }

  if (!mlir::DenseIntElementsAttr::classof(v7))
  {
    goto LABEL_72;
  }

  v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
  v90 = v7;
  v91 = v27;
  v28 = mlir::ElementsAttr::getType(&v90);
  v29 = v28;
  if (v28)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
  }

  v102 = v29;
  v103 = v28;
  mlir::CallableOpInterface::getArgAttrsAttr(&v102);
  if (v30)
  {
    v31 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    v97 = v7;
    v98 = v31;
    v32 = mlir::ElementsAttr::getType(&v97);
    v33 = v32;
    if (v32)
    {
      v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    }

    v99 = v33;
    v100 = v32;
    mlir::CallableOpInterface::getArgAttrsAttr(&v99);
    if (v34 != 1)
    {
      goto LABEL_72;
    }
  }

  v88[0] = v7;
  v95 = mlir::ArrayAttr::getValue(v88);
  v96 = v35;
  v89[0] = mlir::ElementsAttr::isSplat(&v95);
  if (mlir::Type::isSignedInteger(v89, 8) || (v86[0] = v7, v93 = mlir::ArrayAttr::getValue(v86), v94 = v36, v87[0] = mlir::ElementsAttr::isSplat(&v93), mlir::Type::isUnsignedInteger(v87, 8)))
  {
LABEL_111:
    if (!v5)
    {
      return 1;
    }

    if (mlir::DenseElementsAttr::classof(v5))
    {
      v37 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v90 = v5;
      v91 = v37;
      v38 = mlir::ElementsAttr::getType(&v90);
      v39 = v38;
      if (v38)
      {
        v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
      }

      v102 = v39;
      v103 = v38;
      mlir::CallableOpInterface::getArgAttrsAttr(&v102);
      if (!v40)
      {
        goto LABEL_112;
      }

      v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v97 = v5;
      v98 = v41;
      v42 = mlir::ElementsAttr::getType(&v97);
      v43 = v42;
      if (v42)
      {
        v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
      }

      v99 = v43;
      v100 = v42;
      mlir::CallableOpInterface::getArgAttrsAttr(&v99);
      if (v44 == 1)
      {
        goto LABEL_112;
      }

      v45 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v93 = v5;
      v94 = v45;
      v46 = mlir::ElementsAttr::getType(&v93);
      v47 = v46;
      if (v46)
      {
        v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v46 + 8);
      }

      v95 = v47;
      v96 = v46;
      mlir::CallableOpInterface::getArgAttrsAttr(&v95);
      if (v48 == 2)
      {
        goto LABEL_112;
      }

      v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v88[0] = v5;
      v88[1] = v49;
      v50 = mlir::ElementsAttr::getType(v88);
      v51 = v50;
      if (v50)
      {
        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v50 + 8);
      }

      v89[0] = v51;
      v89[1] = v50;
      mlir::CallableOpInterface::getArgAttrsAttr(v89);
      if (v52 == 3)
      {
        goto LABEL_112;
      }

      v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v86[0] = v5;
      v86[1] = v53;
      v54 = mlir::ElementsAttr::getType(v86);
      v55 = v54;
      if (v54)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
      }

      v87[0] = v55;
      v87[1] = v54;
      mlir::CallableOpInterface::getArgAttrsAttr(v87);
      if (v56 == 4)
      {
        goto LABEL_112;
      }

      v57 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v84[0] = v5;
      v84[1] = v57;
      v58 = mlir::ElementsAttr::getType(v84);
      v59 = v58;
      if (v58)
      {
        v58 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8);
      }

      v85[0] = v59;
      v85[1] = v58;
      mlir::CallableOpInterface::getArgAttrsAttr(v85);
      if (v60 == 5)
      {
        goto LABEL_112;
      }

      v61 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v82[0] = v5;
      v82[1] = v61;
      v62 = mlir::ElementsAttr::getType(v82);
      v63 = v62;
      if (v62)
      {
        v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v62 + 8);
      }

      v83[0] = v63;
      v83[1] = v62;
      mlir::CallableOpInterface::getArgAttrsAttr(v83);
      if (v64 == 6)
      {
LABEL_112:
        v79 = v5;
        v80[0] = mlir::ArrayAttr::getValue(&v79);
        v80[1] = v65;
        isSplat = mlir::ElementsAttr::isSplat(v80);
        if (mlir::Type::isF16(&isSplat))
        {
          return 1;
        }
      }
    }

    v90 = "'anec.linear' op attribute 'kernel_lut' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
    v92 = 259;
    mlir::emitError(a2.var0.var0, &v90, &v102);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
    if (v102)
    {
      mlir::InFlightDiagnostic::report(&v102);
    }

    if (v111 == 1)
    {
      if (v110 != &v111)
      {
        free(v110);
      }

      v72 = __p;
      if (__p)
      {
        v73 = v109;
        v74 = __p;
        if (v109 != __p)
        {
          do
          {
            v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
          }

          while (v73 != v72);
          v74 = __p;
        }

        v109 = v72;
        operator delete(v74);
      }

      v22 = v106;
      if (!v106)
      {
        goto LABEL_106;
      }

      v75 = v107;
      v24 = v106;
      if (v107 == v106)
      {
        goto LABEL_105;
      }

      do
      {
        v77 = *--v75;
        v76 = v77;
        *v75 = 0;
        if (v77)
        {
          operator delete[](v76);
        }
      }

      while (v75 != v22);
      goto LABEL_104;
    }
  }

  else
  {
LABEL_72:
    v90 = "'anec.linear' op attribute 'kernel_zero_point' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1";
    v92 = 259;
    mlir::emitError(a2.var0.var0, &v90, &v102);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
    if (v102)
    {
      mlir::InFlightDiagnostic::report(&v102);
    }

    if (v111 == 1)
    {
      if (v110 != &v111)
      {
        free(v110);
      }

      v66 = __p;
      if (__p)
      {
        v67 = v109;
        v68 = __p;
        if (v109 != __p)
        {
          do
          {
            v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
          }

          while (v67 != v66);
          v68 = __p;
        }

        v109 = v66;
        operator delete(v68);
      }

      v22 = v106;
      if (!v106)
      {
        goto LABEL_106;
      }

      v69 = v107;
      v24 = v106;
      if (v107 == v106)
      {
        goto LABEL_105;
      }

      do
      {
        v71 = *--v69;
        v70 = v71;
        *v69 = 0;
        if (v71)
        {
          operator delete[](v70);
        }
      }

      while (v69 != v22);
      goto LABEL_104;
    }
  }

  return v18;
}

BOOL mlir::anec::Linear::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v94 = *MEMORY[0x1E69E9840];
  ANECLinearLayerDescInitialize();
  v6 = *a2;
  if (*a2)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v81 = v6;
  v82 = v7;
  v8 = *(a2 + 2);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v60[0] = v8;
  v60[1] = v9;
  mlir::CallableOpInterface::getArgAttrsAttr(&v81);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v60);
  if (mlir::anec::Linear::getKernelLutAttr(a1))
  {
    v11 = v60[0];
    if (v60[0])
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60[0] + 8);
    }

    else
    {
      v12 = 0;
    }

    v74[0] = v11;
    v74[1] = v12;
    *buffer = mlir::ElementsAttr::isSplat(v74);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(buffer);
    KernelLutAttr = mlir::anec::Linear::getKernelLutAttr(a1);
    v16 = KernelLutAttr;
    if (KernelLutAttr)
    {
      KernelLutAttr = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelLutAttr + 8);
    }

    v75[0] = v16;
    v75[1] = KernelLutAttr;
    Type = mlir::ElementsAttr::getType(v75);
    v18 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    *buffer = v18;
    v85 = Type;
    *buffer = mlir::ElementsAttr::isSplat(buffer);
    if (mlir::Type::isF16(buffer))
    {
      v19 = @"Float16";
    }

    else if (mlir::Type::isF32(buffer))
    {
      v19 = @"Float32";
    }

    else if (mlir::Type::isUnsignedInteger(buffer, 8))
    {
      v19 = @"UInt8";
    }

    else
    {
      mlir::Type::isInteger(buffer, 8);
      v19 = @"Int8";
    }

    v64 = v19;
    v20 = IntOrFloatBitWidth - 2;
    if ((IntOrFloatBitWidth - 2) >= 7 || ((0x55u >> v20) & 1) == 0)
    {
      v75[0] = "failed: only 2-bit, 4-bit, 6-bit and 8-bit palettization is supported";
      LOWORD(v78[0].__locale_) = 259;
      mlir::OpState::emitOpError(a1, v75, buffer);
      v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
      if (*buffer)
      {
        mlir::InFlightDiagnostic::report(buffer);
      }

      if (v93[0] == 1)
      {
        if (v92 != v93)
        {
          free(v92);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v91;
          v24 = __p;
          if (v91 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v91 = v22;
          operator delete(v24);
        }

        v25 = v88;
        if (v88)
        {
          v26 = v89;
          v27 = v88;
          if (v89 != v88)
          {
            do
            {
              v29 = *--v26;
              v28 = v29;
              *v26 = 0;
              if (v29)
              {
                operator delete[](v28);
              }
            }

            while (v26 != v25);
            v27 = v88;
          }

          v89 = v25;
          operator delete(v27);
        }

        if (v86 != v87)
        {
          free(v86);
        }
      }

      if (!v21)
      {
        return 0;
      }

      goto LABEL_67;
    }

    v63 = *(&off_1E86D3898 + v20);
  }

  else
  {
    v63 = @"Dense";
    *buffer = mlir::ElementsAttr::isSplat(v60);
    if (mlir::Type::isF16(buffer))
    {
      v13 = @"Float16";
    }

    else if (mlir::Type::isF32(buffer))
    {
      v13 = @"Float32";
    }

    else if (mlir::Type::isUnsignedInteger(buffer, 8))
    {
      v13 = @"UInt8";
    }

    else
    {
      mlir::Type::isInteger(buffer, 8);
      v13 = @"Int8";
    }

    v64 = v13;
  }

  v65 = *(ArgAttrsAttr + 8);
  v66 = @"Batch";
  v67 = 0;
  v73 = 1;
  if (mlir::anec::Linear::getKernelScaleAttr(a1))
  {
    KernelScaleAttr = mlir::anec::Linear::getKernelScaleAttr(a1);
    if (KernelScaleAttr)
    {
      v32 = KernelScaleAttr;
      v33 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScaleAttr + 8);
      SplatFloat = mlir::getSplatFloatValue<float>(v32, v33);
      if ((SplatFloat & 0x100000000) == 0)
      {
LABEL_58:
        v68 = 1;
        v35 = mlir::anec::Linear::getKernelScaleAttr(a1);
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v35);
        goto LABEL_61;
      }
    }

    else
    {
      SplatFloat = mlir::getSplatFloatValue<float>(0, 0);
      if ((SplatFloat & 0x100000000) == 0)
      {
        goto LABEL_58;
      }
    }

    v69 = SplatFloat;
  }

LABEL_61:
  if (mlir::placement::MemrefToTensor::getShapeAttr(a1))
  {
    ShapeAttr = mlir::placement::MemrefToTensor::getShapeAttr(a1);
    if (ShapeAttr)
    {
      v38 = ShapeAttr;
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ShapeAttr + 8);
      SplatInt = mlir::getSplatIntValue<int>(v38, v39);
      if ((SplatInt & 0x100000000) == 0)
      {
LABEL_64:
        v71 = 1;
        goto LABEL_67;
      }
    }

    else
    {
      SplatInt = mlir::getSplatIntValue<int>(0, 0);
      if ((SplatInt & 0x100000000) == 0)
      {
        goto LABEL_64;
      }
    }

    v72 = SplatInt;
  }

LABEL_67:
  v81 = v83;
  v82 = 0x100000000;
  v74[0] = 0;
  v62 = 0;
  v30 = 1;
  *buffer = 1;
  v75[0] = 0;
  ANECUnitValidatorCreate();
  if (ANECValidateLinearLayer())
  {
    v41 = *a1;
    v42 = v62;
    v43 = v74[0];
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v75);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v76, "Invalid configuration", 21);
    if (v42)
    {
      if (v43)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v76, " for the following reasons: ", 28);
        v44 = *v43;
        if (*v43)
        {
          v45 = 0;
          do
          {
            v46 = v44 - 1;
            CFStringGetCString(v43[v45 + 1], buffer, 512, 0x8000100u);
            v47 = strlen(buffer);
            v48 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v76, buffer, v47);
            if (v45 == v46)
            {
              v49 = "";
            }

            else
            {
              v49 = ", ";
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, v49, 2 * (v45++ != v46));
            v44 = *v43;
          }

          while (*v43 > v45);
        }
      }
    }

    std::stringbuf::str();
    v75[0] = *MEMORY[0x1E69E54D8];
    v50 = *(MEMORY[0x1E69E54D8] + 72);
    *(v75 + *(v75[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
    v76 = v50;
    v77 = MEMORY[0x1E69E5548] + 16;
    if (v79 < 0)
    {
      operator delete(v78[7].__locale_);
    }

    v77 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v78);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v80);
    LOWORD(v78[0].__locale_) = 260;
    v75[0] = v60;
    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v93[0] == 1)
    {
      if (v92 != v93)
      {
        free(v92);
      }

      v51 = __p;
      if (__p)
      {
        v52 = v91;
        v53 = __p;
        if (v91 != __p)
        {
          do
          {
            v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
          }

          while (v52 != v51);
          v53 = __p;
        }

        v91 = v51;
        operator delete(v53);
      }

      v54 = v88;
      if (v88)
      {
        v55 = v89;
        v56 = v88;
        if (v89 != v88)
        {
          do
          {
            v58 = *--v55;
            v57 = v58;
            *v55 = 0;
            if (v58)
            {
              operator delete[](v57);
            }
          }

          while (v55 != v54);
          v56 = v88;
        }

        v89 = v54;
        operator delete(v56);
      }

      if (v86 != v87)
      {
        free(v86);
      }
    }

    if (v61 < 0)
    {
      operator delete(v60[0]);
    }
  }

  ANECUnitValidatorDelete();
  if (v81 != v83)
  {
    free(v81);
  }

  return v30;
}

void mlir::anec::anonymous namespace::getANECTensorDescs(mlir::ElementsAttr *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8) = 0;
  if (a2 > *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, a2, 64);
LABEL_4:
    v8 = 16 * a2;
    for (i = 24; ; i += 32)
    {
      isSplat = mlir::ElementsAttr::isSplat(a1);
      v11 = *(*isSplat + 136);
      if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v56 = isSplat;
        v50 = @"Int8";
        if (mlir::IntegerType::getSignedness(&v56) != 1)
        {
          if (mlir::IntegerType::getSignedness(&v56))
          {
            v50 = @"UInt8";
          }

          else
          {
            v50 = @"Int8";
          }
        }
      }

      else
      {
        v12 = v11 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
        v13 = v12 || v11 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
        v14 = v13 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
        v15 = v14 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
        v16 = v15 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
        v17 = v16 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
        v18 = v17 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
        v19 = v18 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
        v20 = v19 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
        v21 = v20 || v11 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
        v22 = v21 || v11 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
        v23 = v22 || v11 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
        v24 = v23 || v11 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
        v25 = v24 || v11 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
        v26 = v25 || v11 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
        if (v26 || v11 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          v56 = isSplat;
          v50 = mlir::Type::isF16(&v56) ? @"Float16" : @"Float32";
        }

        else
        {
          v50 = @"Float32";
        }
      }

      mlir::CallableOpInterface::getArgAttrsAttr(a1);
      v29 = *(*(a3 + 72) + i);
      v56 = v50;
      if (v28 < 1)
      {
        break;
      }

      v30 = v28;
      IndexFromDim = mlir::anec::getIndexFromDim(0, v28);
      if ((v32 & 1) == 0 || (v57.i64[0] = *(mlir::CallableOpInterface::getArgAttrsAttr(a1) + 8 * IndexFromDim), v33 = mlir::anec::getIndexFromDim(1, v30), (v34 & 1) == 0) || (v57.i64[1] = *(mlir::CallableOpInterface::getArgAttrsAttr(a1) + 8 * v33), v35 = mlir::anec::getIndexFromDim(3, v30), (v36 & 1) == 0) || (v58.i64[0] = *(mlir::CallableOpInterface::getArgAttrsAttr(a1) + 8 * v35), v37 = mlir::anec::getIndexFromDim(4, v30), (v38 & 1) == 0))
      {
LABEL_86:
        v53 = std::__throw_bad_optional_access[abi:nn200100]();
        return;
      }

      v58.i64[1] = *(mlir::CallableOpInterface::getArgAttrsAttr(a1) + 8 * v37);
      if (v30 != 5)
      {
        goto LABEL_72;
      }

      v39 = mlir::anec::getIndexFromDim(2, 5uLL);
      if ((v40 & 1) == 0)
      {
        goto LABEL_86;
      }

      v41 = *(mlir::CallableOpInterface::getArgAttrsAttr(a1) + 8 * v39);
LABEL_73:
      v59 = v41;
      v60 = 1;
      v61 = 0;
      v63 = v29;
      DefiningOp = mlir::Value::getDefiningOp(&v63);
      if (DefiningOp)
      {
        {
          v51 = DefiningOp;
          DefiningOp = v51;
        }

        LOBYTE(DefiningOp) = (*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
      }

      v62 = DefiningOp;
      v43 = *(a4 + 8);
      v44 = *a4;
      if (v43 >= *(a4 + 12))
      {
        if (v44 <= &v56 && v44 + (v43 << 6) > &v56)
        {
          v52 = &v56 - v44;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v43 + 1, 64);
          v44 = *a4;
          v45 = &v52[*a4];
          goto LABEL_79;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v43 + 1, 64);
        v44 = *a4;
      }

      v45 = &v56;
LABEL_79:
      v46 = (v44 + (*(a4 + 8) << 6));
      v47 = *v45;
      v48 = *(v45 + 1);
      v49 = *(v45 + 3);
      v46[2] = *(v45 + 2);
      v46[3] = v49;
      *v46 = v47;
      v46[1] = v48;
      ++*(a4 + 8);
      a1 = (a1 + 16);
      v8 -= 16;
      if (!v8)
      {
        return;
      }
    }

    v57 = vdupq_n_s64(1uLL);
    v58 = v57;
LABEL_72:
    v41 = 1;
    goto LABEL_73;
  }

  if (a2)
  {
    goto LABEL_4;
  }
}

mlir::Diagnostic *mlir::anec::anonymous namespace::emitOpWarning@<X0>(uint64_t a1@<X0>, Location a2@<X1>, uint64_t a3@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = (a1 + 24);
  mlir::emitWarning(*(a1 + 24), a2, v38);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, "'");
  v8 = v7;
  if (*v7)
  {
    mlir::Diagnostic::operator<<((v7 + 1), *(a1 + 48));
    if (*v8)
    {
      v9 = (v8 + 3);
      v10 = v8[3];
      v35 = 3;
      v36 = "' op ";
      v37 = 5;
      v11 = *(v8 + 8);
      v12 = &v35;
      if (v11 >= *(v8 + 9))
      {
        if (v10 <= &v35 && v10 + 24 * v11 > &v35)
        {
          v34 = &v35 - v10;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v8 + 5), v11 + 1, 24);
          v10 = v8[3];
          v12 = &v34[v10];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v8 + 5), v11 + 1, 24);
          v10 = v8[3];
          v12 = &v35;
        }
      }

      v13 = v10 + 24 * *(v8 + 8);
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      ++*(v8 + 8);
      if (*v8)
      {
        mlir::Diagnostic::operator<<((v8 + 1), a2.var0.var0);
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a3, v8);
  if (v38[0])
  {
    mlir::InFlightDiagnostic::report(v38);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v44;
      v17 = __p;
      if (v44 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v44 = v15;
      operator delete(v17);
    }

    v18 = v41;
    if (v41)
    {
      v19 = v42;
      v20 = v41;
      if (v42 != v41)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            operator delete[](v21);
          }
        }

        while (v19 != v18);
        v20 = v41;
      }

      v42 = v18;
      operator delete(v20);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  Context = mlir::Attribute::getContext(v6);
  result = mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context);
  if (result)
  {
    v25 = mlir::Diagnostic::attachNote((a3 + 8), *v6, 1);
    v26 = v25;
    v27 = *(v25 + 16);
    LODWORD(v38[0]) = 3;
    v38[1] = "see current operation: ";
    v38[2] = 23;
    v28 = *(v25 + 24);
    v29 = v38;
    if (v28 >= *(v25 + 28))
    {
      if (v27 <= v38 && v27 + 24 * v28 > v38)
      {
        v33 = v38 - v27;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 16, v25 + 32, v28 + 1, 24);
        v27 = *(v26 + 16);
        v29 = &v33[v27];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 16, v25 + 32, v28 + 1, 24);
        v27 = *(v26 + 16);
        v29 = v38;
      }
    }

    v30 = v27 + 24 * *(v26 + 24);
    v31 = *v29;
    *(v30 + 16) = *(v29 + 2);
    *v30 = v31;
    ++*(v26 + 24);
    mlir::OpPrintingFlags::OpPrintingFlags(v38);
    v32 = mlir::OpPrintingFlags::printGenericOpForm(v38, 1);
    return mlir::Diagnostic::appendOp(v26, a1, v32);
  }

  return result;
}

uint64_t mlir::anec::Linear::addOpToNetwork(uint64_t *a1, void *a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (a2)
  {
    v7 = *(v4 + 72);
    v8 = *(v7 + 24);
    v9 = *(v7 + 56);
    if (*(v4 + 36))
    {
      v10 = v4 - 16;
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

    v84[0] = v11;
    v84[1] = v12;
    mlir::CallableOpInterface::getArgAttrsAttr(v84);
    v21 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v21)
    {
      v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    }

    else
    {
      v22 = 0;
    }

    v83[0] = v21;
    v83[1] = v22;
    mlir::CallableOpInterface::getArgAttrsAttr(v83);
    v23 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v23)
    {
      v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
    }

    else
    {
      v24 = 0;
    }

    *&v82 = v23;
    *(&v82 + 1) = v24;
    mlir::CallableOpInterface::getArgAttrsAttr(&v82);
    v80 = 0;
    v81 = 0;
    v79 = 0;
    result = 0;
    if ((v25 & 1) == 0)
    {
      return result;
    }

    v27 = operator new(0x150uLL);
    *v27 = 0u;
    *(v27 + 1) = 0u;
    *(v27 + 2) = 0u;
    *(v27 + 3) = 0u;
    *(v27 + 4) = 0u;
    *(v27 + 5) = 0u;
    *(v27 + 6) = 0u;
    *(v27 + 7) = 0u;
    *(v27 + 8) = 0u;
    *(v27 + 9) = 0u;
    *(v27 + 10) = 0u;
    *(v27 + 11) = 0u;
    *(v27 + 12) = 0u;
    *(v27 + 13) = 0u;
    *(v27 + 14) = 0u;
    *(v27 + 15) = 0u;
    *(v27 + 16) = 0u;
    *(v27 + 17) = 0u;
    *(v27 + 18) = 0u;
    *(v27 + 19) = 0u;
    *(v27 + 20) = 0u;
    *(v27 + 9) = -1;
    *(v27 + 22) = -1;
    *(v27 + 12) = -1;
    *(v27 + 26) = -1;
    *(v27 + 14) = -1;
    *(v27 + 120) = 0u;
    *(v27 + 136) = 0u;
    *(v27 + 152) = 0u;
    *(v27 + 21) = 0;
    *(v27 + 44) = 1;
    *(v27 + 48) = -1;
    *(v27 + 25) = -1;
    *(v27 + 52) = -1;
    *(v27 + 27) = -1;
    *(v27 + 28) = 0x3F80000000000006;
    *v27 = &unk_1F5B2E7F0;
    *(v27 + 60) = 5;
    *(v27 + 41) = -1;
    mlir::anec::fillZinIrCommonInfo(*a1, v27, 60, a2, 1uLL, 1u);
    *(v27 + 60) = 5;
    v27[180] = v79;
    v28 = v81;
    *(v27 + 22) = v80;
    *(v27 + 12) = v28;
    KernelLutAttr = mlir::anec::Linear::getKernelLutAttr(a1);
    v78 = KernelLutAttr;
    if (KernelLutAttr)
    {
      v30 = KernelLutAttr;
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelLutAttr + 8);
      v32 = mlir::anec::ANECIRWeightSerializer::addConstant(a3, v30, v31);
      v34 = v33;
      v35 = v82;
      Value = mlir::ArrayAttr::getValue(&v78);
      {
        v38 = *a1;
        v85[0] = "Failed to retrieve the palettized kernel info";
        v86 = 259;
        mlir::Operation::emitError(v38, v85, &v87);
        v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
        if (v87)
        {
          mlir::InFlightDiagnostic::report(&v87);
        }

        if (v95[0])
        {
          if (v94 != v95)
          {
            free(v94);
          }

          v40 = __p;
          if (__p)
          {
            v41 = v93;
            v42 = __p;
            if (v93 != __p)
            {
              do
              {
                v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
              }

              while (v41 != v40);
              v42 = __p;
            }

            v93 = v40;
            operator delete(v42);
          }

          v43 = v90;
          if (v90)
          {
            v44 = v91;
            v45 = v90;
            if (v91 != v90)
            {
              do
              {
                v47 = *--v44;
                v46 = v47;
                *v44 = 0;
                if (v47)
                {
                  operator delete[](v46);
                }
              }

              while (v44 != v43);
              v45 = v90;
            }

            v91 = v43;
            operator delete(v45);
          }

          if (v88 != v89)
          {
            free(v88);
          }
        }

        (*(*v27 + 8))(v27);
        return v39;
      }

      goto LABEL_105;
    }

    v87 = v82;
    isSplat = mlir::ElementsAttr::isSplat(&v87);
    v49 = *(*isSplat + 136);
    if (v49 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (v49 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
      {
        v50 = 4;
      }

      else if (v49 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
        v50 = 6;
      }

      else
      {
        v50 = 0;
      }

      goto LABEL_73;
    }

    v85[0] = isSplat;
    Width = mlir::IntegerType::getWidth(v85);
    if (Width == 16)
    {
      if (mlir::IntegerType::getSignedness(v85) == 1)
      {
        v50 = 3;
        goto LABEL_73;
      }
    }

    else if (Width == 8)
    {
      if (mlir::IntegerType::getSignedness(v85) == 2)
      {
        v50 = 2;
      }

      else
      {
        v50 = 1;
      }

LABEL_73:
      *(v27 + 20) = 1;
      *(v27 + 21) = v50;
      if (!mlir::anec::Linear::getKernelScaleAttr(a1))
      {
        goto LABEL_96;
      }

      KernelScaleAttr = mlir::anec::Linear::getKernelScaleAttr(a1);
      if (KernelScaleAttr)
      {
        v53 = KernelScaleAttr;
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScaleAttr + 8);
        SplatFloat = mlir::getSplatFloatValue<float>(v53, v54);
        if ((SplatFloat & 0x100000000) == 0)
        {
          goto LABEL_76;
        }
      }

      else
      {
        SplatFloat = mlir::getSplatFloatValue<float>(0, 0);
        if ((SplatFloat & 0x100000000) == 0)
        {
LABEL_76:
          v56 = mlir::anec::Linear::getKernelScaleAttr(a1);
          v57 = v56;
          if (v56)
          {
            v58 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v56 + 8);
          }

          else
          {
            v58 = 0;
          }

          v59 = mlir::anec::ANECIRWeightSerializer::addConstant(a3, v57, v58);
          v77 = mlir::anec::Linear::getKernelScaleAttr(a1);
          *&v87 = mlir::ArrayAttr::getValue(&v77);
          *(&v87 + 1) = v60;
          v61 = mlir::ElementsAttr::isSplat(&v87);
          v62 = *(*v61 + 136);
          if (v62 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            if (v62 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
            {
              v63 = 4;
            }

            else if (v62 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
            {
              v63 = 6;
            }

            else
            {
              v63 = 0;
            }

            goto LABEL_95;
          }

          v85[0] = v61;
          v64 = mlir::IntegerType::getWidth(v85);
          if (v64 == 16)
          {
            if (mlir::IntegerType::getSignedness(v85) == 1)
            {
              v63 = 3;
LABEL_95:
              *(v27 + 56) = v63;
              v27[184] = 1;
              *(v27 + 48) = 0;
              *(v27 + 25) = v59;
LABEL_96:
              if (mlir::placement::MemrefToTensor::getShapeAttr(a1))
              {
                ShapeAttr = mlir::placement::MemrefToTensor::getShapeAttr(a1);
                if (ShapeAttr)
                {
                  v66 = ShapeAttr;
                  v67 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ShapeAttr + 8);
                  SplatInt = mlir::getSplatIntValue<int>(v66, v67);
                  if ((SplatInt & 0x100000000) == 0)
                  {
LABEL_99:
                    v69 = mlir::placement::MemrefToTensor::getShapeAttr(a1);
                    v70 = v69;
                    if (v69)
                    {
                      v71 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v69 + 8);
                    }

                    else
                    {
                      v71 = 0;
                    }

                    v72 = mlir::anec::ANECIRWeightSerializer::addConstant(a3, v70, v71);
                    v27[185] = 1;
                    *(v27 + 52) = 0;
                    *(v27 + 27) = v72;
                    goto LABEL_105;
                  }
                }

                else
                {
                  SplatInt = mlir::getSplatIntValue<int>(0, 0);
                  if ((SplatInt & 0x100000000) == 0)
                  {
                    goto LABEL_99;
                  }
                }

                *(v27 + 58) = SplatInt;
              }

LABEL_105:
              v73 = operator new(0xC8uLL);
              v74 = v73;
              *(v73 + 1) = 0;
              *(v73 + 2) = 0;
              *v73 = &unk_1F5B2E830;
              v75 = v73 + 24;
              *(v73 + 3) = &unk_1F5B2E868;
              if (v27[31] < 0)
              {
                std::string::__init_copy_ctor_external((v73 + 32), *(v27 + 1), *(v27 + 2));
              }

              else
              {
                *(v73 + 2) = *(v27 + 8);
                *(v73 + 6) = *(v27 + 3);
              }

              *(v74 + 14) = 17;
              *(v74 + 3) = &unk_1F5B34308;
              *(v74 + 8) = v27;
              v74[72] = 0;
              *(v74 + 10) = 0;
              *(v74 + 11) = v74 + 104;
              *(v74 + 12) = 0x100000000;
              *(v74 + 17) = v74 + 152;
              *(v74 + 18) = 0x300000000;
              *&v87 = v75;
              *(&v87 + 1) = v74;
              mlir::anec::ANECIRNetwork::AddUnit(a2, &v87);
              v76 = *(&v87 + 1);
              if (*(&v87 + 1) && !atomic_fetch_add((*(&v87 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v76->__on_zero_shared)(v76);
                std::__shared_weak_count::__release_weak(v76);
              }

              return 1;
            }
          }

          else if (v64 == 8)
          {
            if (mlir::IntegerType::getSignedness(v85) == 2)
            {
              v63 = 2;
            }

            else
            {
              v63 = 1;
            }

            goto LABEL_95;
          }

          v63 = 0;
          goto LABEL_95;
        }
      }

      *(v27 + 57) = SplatFloat;
      goto LABEL_96;
    }

    v50 = 0;
    goto LABEL_73;
  }

  v85[0] = "network should not be nullptr";
  v86 = 259;
  mlir::Operation::emitError(v4, v85, &v87);
  if (v87)
  {
    mlir::InFlightDiagnostic::report(&v87);
  }

  if (v95[0] == 1)
  {
    if (v94 != v95)
    {
      free(v94);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v93;
      v15 = __p;
      if (v93 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v93 = v13;
      operator delete(v15);
    }

    v16 = v90;
    if (v90)
    {
      v17 = v91;
      v18 = v90;
      if (v91 != v90)
      {
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
        v18 = v90;
      }

      v91 = v16;
      operator delete(v18);
    }

    if (v88 != v89)
    {
      free(v88);
    }
  }

  return 0;
}

BOOL mlir::anec::Deconvolution::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *x1_0, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v101 = *MEMORY[0x1E69E9840];
  v94 = a6;
  LOBYTE(v95) = 0;
  v96 = 0;
  v97 = a7;
  v98 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v94);
    if (v96 == 1)
    {
      v96 = 0;
    }

    mlir::OperationName::OperationName(&v95, "anec.deconvolution", 18, Context);
    v96 = 1;
    a1 = v15;
  }

  v99 = a4;
  v100 = a5;
  v17 = mlir::UnknownLoc::get(a1, x1_0);
  if (a3)
  {
    v18.var0.var0 = x1_0;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::DeconvolutionAdaptor::verify(&v94, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8))
  {
    v77 = 0;
    v78 = 0;
    goto LABEL_15;
  }

  v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  v77 = v19;
  v78 = v20;
  if (!v19)
  {
LABEL_15:
    v25.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(x1_0, v25, "input must be a ShapedType");
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v77);
  if (v22 >= 6)
  {
    v23.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(x1_0, v23, "input tensor rank of 4 or 5 are supported");
  }

  v26 = ArgAttrsAttr;
  v92[0] = v93;
  v92[1] = 0x300000000;
  Value = mlir::AffineMapAttr::getValue(&v94);
  v28 = mlir::DictionaryAttr::end(&v94);
  v29 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), v28, *(*(v95 + 96) + 72));
  mlir::getValues<unsigned long>(v29, v92);
  v90[0] = v91;
  v90[1] = 0x300000000;
  v30 = mlir::AffineMapAttr::getValue(&v94);
  v31 = mlir::DictionaryAttr::end(&v94);
  v32 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v30, (v31 - 32), *(*(v95 + 96) + 8));
  mlir::getValues<unsigned long>(v32, v90);
  v88[0] = v89;
  v88[1] = 0x600000000;
  v33 = mlir::AffineMapAttr::getValue(&v94);
  v34 = mlir::DictionaryAttr::end(&v94);
  v35 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v33 + 16), (v34 - 16), *(*(v95 + 96) + 56));
  mlir::getValues<unsigned long>(v35, v88);
  v36 = mlir::TypeRange::dereference_iterator(a9, 1);
  v37 = v36;
  if (v36)
  {
    v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
  }

  v76[0] = v37;
  v76[1] = v36;
  v38 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
  mlir::CallableOpInterface::getArgAttrsAttr(v76);
  if (v39 < 6)
  {
    Groups = mlir::anec::detail::ConvolutionGenericAdaptorBase::getGroups(&v94);
    v75 = Groups;
    mlir::CallableOpInterface::getArgAttrsAttr(&v77);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v42);
    if (v44)
    {
      v74 = v26[IndexFromDim];
      if (v74 % Groups)
      {
        v80 = "input channels {0} should be divisible by groups {1}";
        v81 = 52;
        v82 = v87;
        v83 = 2;
        LOBYTE(v84) = 1;
        v85[0] = &unk_1F5B17218;
        v85[1] = &v74;
        v86[0] = &unk_1F5B17218;
        v86[1] = &v75;
        v87[0] = v85;
        v87[1] = v86;
        v45.var0.var0 = a3;
        result = mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(x1_0, v45, &v80);
        goto LABEL_38;
      }

      v46 = v38[1];
      mlir::CallableOpInterface::getArgAttrsAttr(&v77);
      v48 = mlir::anec::getIndexFromDim(3, v47);
      if (v49)
      {
        v50 = v48;
        mlir::CallableOpInterface::getArgAttrsAttr(&v77);
        v52 = mlir::anec::getIndexFromDim(4, v51);
        if (v53)
        {
          v54 = v52;
          v73 = v46 * Groups;
          mlir::CallableOpInterface::getArgAttrsAttr(v76);
          v56 = v55;
          v57 = *(v88[0] + 2) + *(v92[0] + 1) * v26[v50] + *(v88[0] + 3) - v38[2] + 1;
          v58 = *(v88[0] + 4) + *(v92[0] + 2) * v26[v54] + *(v88[0] + 5) - v38[3] + 1;
          v59 = *v26;
          mlir::CallableOpInterface::getArgAttrsAttr(&v77);
          v61 = mlir::anec::getIndexFromDim(2, v60);
          if (v62)
          {
            v63 = 4;
            if (v56 == 4)
            {
              v63 = 0x1FFFFFFFFFFFFFFFLL;
            }

            v64 = *v88[0] + *v92[0] * v26[v61] + *(v88[0] + 1) - v38[v63] + 1;
          }

          else
          {
            v64 = 0;
          }

          v80 = &v82;
          v82 = v59;
          v83 = v73;
          v84 = v57;
          v85[0] = v58;
          v81 = 0x600000004;
          if (v64)
          {
            v79 = v64;
            llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v80, &v83, &v79);
            v65 = v80;
            v66 = v81;
          }

          else
          {
            v66 = 4;
            v65 = &v82;
          }

          isSplat = mlir::ElementsAttr::isSplat(&v77);
          v68 = mlir::MemRefType::get(v65, v66, isSplat, 0, 0, 0);
          v69 = *(a11 + 8);
          if (v69 >= *(a11 + 12))
          {
            v71 = v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v69 + 1, 8);
            v68 = v71;
            LODWORD(v69) = *(a11 + 8);
          }

          *(*a11 + 8 * v69) = v68;
          ++*(a11 + 8);
          if (v80 != &v82)
          {
            free(v80);
          }

          result = 1;
          goto LABEL_38;
        }
      }
    }

    v72 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::DeconvolutionAdaptor::verify(v72, v102);
  }

  v40.var0.var0 = a3;
  result = mlir::emitOptionalError<char const(&)[39]>(x1_0, v40, "filter must be a tensor of rank 4 or 5");
LABEL_38:
  v70 = result;
  if (v88[0] != v89)
  {
    free(v88[0]);
    result = v70;
  }

  if (v90[0] != v91)
  {
    free(v90[0]);
    result = v70;
  }

  if (v92[0] != v93)
  {
    free(v92[0]);
    return v70;
  }

  return result;
}

BOOL mlir::anec::DeconvolutionAdaptor::verify(mlir::anec::DeconvolutionAdaptor *this, Location a2)
{
  v157 = *MEMORY[0x1E69E9840];
  v144 = *this;
  Value = mlir::AffineMapAttr::getValue(&v144);
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_7:
    v141 = "'anec.deconvolution' op requires attribute 'dilation'";
    v143 = 259;
    mlir::emitError(a2.var0.var0, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v154;
      v9 = __p;
      if (v154 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v154 = v7;
      operator delete(v9);
    }

    v10 = v151;
    if (v151)
    {
      v11 = v152;
      v12 = v151;
      if (v152 == v151)
      {
        goto LABEL_119;
      }

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
LABEL_118:
      v12 = v151;
LABEL_119:
      v152 = v10;
      operator delete(v12);
    }

LABEL_120:
    if (v149 != &v150)
    {
      free(v149);
    }

    return v6;
  }

  v5 = 0;
  while (mlir::CallGraphNode::getCallableRegion(Value) != *(*(*(this + 1) + 96) + 8))
  {
    if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
    {
      v5 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_7;
    }
  }

  v15 = Value[1];
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_37:
    v141 = "'anec.deconvolution' op requires attribute 'padding'";
    v143 = 259;
    mlir::emitError(a2.var0.var0, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v154;
      v23 = __p;
      if (v154 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v154 = v21;
      operator delete(v23);
    }

    v10 = v151;
    if (v151)
    {
      v24 = v152;
      v12 = v151;
      if (v152 == v151)
      {
        goto LABEL_119;
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

      while (v24 != v10);
      goto LABEL_118;
    }

    goto LABEL_120;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  while (mlir::CallGraphNode::getCallableRegion(Value) != *(*(*(this + 1) + 96) + 56))
  {
    if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 16))
    {
      v16 = Value[1];
    }

    else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 24))
    {
      v17 = Value[1];
    }

    else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 32))
    {
      v18 = Value[1];
    }

    else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 40))
    {
      v19 = Value[1];
    }

    else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 48))
    {
      v20 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_37;
    }
  }

  v120 = v20;
  v121 = Value[1];
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_59:
    v141 = "'anec.deconvolution' op requires attribute 'stride'";
    v143 = 259;
    mlir::emitError(a2.var0.var0, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v154;
      v30 = __p;
      if (v154 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v154 = v28;
      operator delete(v30);
    }

    v10 = v151;
    if (v151)
    {
      v31 = v152;
      v12 = v151;
      if (v152 == v151)
      {
        goto LABEL_119;
      }

      do
      {
        v33 = *--v31;
        v32 = v33;
        *v31 = 0;
        if (v33)
        {
          operator delete[](v32);
        }
      }

      while (v31 != v10);
      goto LABEL_118;
    }

    goto LABEL_120;
  }

  v27 = 0;
  while (mlir::CallGraphNode::getCallableRegion(Value) != *(*(*(this + 1) + 96) + 72))
  {
    if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 64))
    {
      v27 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_59;
    }
  }

  v34 = Value[1];
  if (v34)
  {
    if (!mlir::DenseIntElementsAttr::classof(Value[1]))
    {
      goto LABEL_102;
    }

    v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v34 + 8);
    v141 = v34;
    v142 = v35;
    Type = mlir::ElementsAttr::getType(&v141);
    v37 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v147 = v37;
    v148 = Type;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v147);
    v145 = 3;
    if (v39 != 1 || *ArgAttrsAttr != v145 || (v135 = v34, v139 = mlir::ArrayAttr::getValue(&v135), v140 = v40, isSplat = mlir::ElementsAttr::isSplat(&v139), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
    {
LABEL_102:
      v141 = "'anec.deconvolution' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v143 = 259;
      mlir::emitError(a2.var0.var0, &v141, &v147);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
      if (v147)
      {
        mlir::InFlightDiagnostic::report(&v147);
      }

      if (v156 != 1)
      {
        return v6;
      }

      if (v155 != &v156)
      {
        free(v155);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v154;
        v57 = __p;
        if (v154 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v154 = v55;
        operator delete(v57);
      }

      v10 = v151;
      if (v151)
      {
        v58 = v152;
        v12 = v151;
        if (v152 == v151)
        {
          goto LABEL_119;
        }

        do
        {
          v60 = *--v58;
          v59 = v60;
          *v58 = 0;
          if (v60)
          {
            operator delete[](v59);
          }
        }

        while (v58 != v10);
        goto LABEL_118;
      }

      goto LABEL_120;
    }
  }

  if (!v15)
  {
    goto LABEL_193;
  }

  if (mlir::DenseIntElementsAttr::classof(v15))
  {
    v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v15 + 8);
    v141 = v15;
    v142 = v41;
    v42 = mlir::ElementsAttr::getType(&v141);
    v43 = v42;
    if (v42)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
    }

    v147 = v43;
    v148 = v42;
    v44 = mlir::CallableOpInterface::getArgAttrsAttr(&v147);
    v145 = 3;
    if (v45 == 1 && *v44 == v145)
    {
      v135 = v15;
      v139 = mlir::ArrayAttr::getValue(&v135);
      v140 = v46;
      isSplat = mlir::ElementsAttr::isSplat(&v139);
      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
LABEL_193:
        if (!v121)
        {
          goto LABEL_97;
        }

        if (mlir::DenseIntElementsAttr::classof(v121))
        {
          v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v121 + 8);
          v141 = v121;
          v142 = v47;
          v48 = mlir::ElementsAttr::getType(&v141);
          v49 = v48;
          if (v48)
          {
            v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
          }

          v147 = v49;
          v148 = v48;
          v50 = mlir::CallableOpInterface::getArgAttrsAttr(&v147);
          v145 = 6;
          if (v51 == 1 && *v50 == v145)
          {
            v135 = v121;
            v139 = mlir::ArrayAttr::getValue(&v135);
            v140 = v52;
            isSplat = mlir::ElementsAttr::isSplat(&v139);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
LABEL_97:
              if (v27 && (mlir::anec::PaddingModeAttr::classof(v27) & 1) == 0)
              {
                v54 = "'anec.deconvolution' op attribute 'padding_mode' failed to satisfy constraint: valid PaddingMode";
                goto LABEL_128;
              }

              if (v16)
              {
                v53 = v120;
                if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v141 = v16, v147 = mlir::AffineMapAttr::getValue(&v141), !mlir::Type::isUnsignedInteger(&v147, 64)))
                {
                  v54 = "'anec.deconvolution' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
LABEL_128:
                  v141 = v54;
                  v143 = 259;
                  mlir::emitError(a2.var0.var0, &v141, &v147);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v147);
                  return v6;
                }
              }

              else
              {
                v53 = v120;
              }

              if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                if (!v19)
                {
                  goto LABEL_194;
                }

                if (!mlir::DenseFPElementsAttr::classof(v19))
                {
                  goto LABEL_187;
                }

                v62 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                v141 = v19;
                v142 = v62;
                v63 = mlir::ElementsAttr::getType(&v141);
                v64 = v63;
                if (v63)
                {
                  v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
                }

                v147 = v64;
                v148 = v63;
                mlir::CallableOpInterface::getArgAttrsAttr(&v147);
                if (v65)
                {
                  v66 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                  v145 = v19;
                  v146 = v66;
                  v67 = mlir::ElementsAttr::getType(&v145);
                  v68 = v67;
                  if (v67)
                  {
                    v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
                  }

                  v139 = v68;
                  v140 = v67;
                  mlir::CallableOpInterface::getArgAttrsAttr(&v139);
                  v53 = v120;
                  if (v69 != 1)
                  {
                    v70 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                    v135 = v19;
                    v136 = v70;
                    v71 = mlir::ElementsAttr::getType(&v135);
                    v72 = v71;
                    if (v71)
                    {
                      v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
                    }

                    isSplat = v72;
                    v138 = v71;
                    mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
                    v53 = v120;
                    if (v73 != 4)
                    {
                      goto LABEL_187;
                    }
                  }
                }

                v129[0] = v19;
                v133 = mlir::ArrayAttr::getValue(v129);
                v134 = v74;
                v130[0] = mlir::ElementsAttr::isSplat(&v133);
                if (mlir::Type::isF16(v130) || (v127[0] = v19, v131 = mlir::ArrayAttr::getValue(v127), v132 = v75, v128[0] = mlir::ElementsAttr::isSplat(&v131), mlir::Type::isF32(v128)))
                {
LABEL_194:
                  if (!v53)
                  {
                    goto LABEL_195;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v53))
                  {
                    goto LABEL_188;
                  }

                  v76 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v53 + 8);
                  v141 = v53;
                  v142 = v76;
                  v77 = mlir::ElementsAttr::getType(&v141);
                  v78 = v77;
                  if (v77)
                  {
                    v77 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v77 + 8);
                  }

                  v147 = v78;
                  v148 = v77;
                  mlir::CallableOpInterface::getArgAttrsAttr(&v147);
                  v79 = v120;
                  if (v80)
                  {
                    v81 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                    v145 = v120;
                    v146 = v81;
                    v82 = mlir::ElementsAttr::getType(&v145);
                    v83 = v82;
                    if (v82)
                    {
                      v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
                    }

                    v139 = v83;
                    v140 = v82;
                    mlir::CallableOpInterface::getArgAttrsAttr(&v139);
                    v79 = v120;
                    if (v84 != 1)
                    {
                      v85 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                      v135 = v120;
                      v136 = v85;
                      v86 = mlir::ElementsAttr::getType(&v135);
                      v87 = v86;
                      if (v86)
                      {
                        v86 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
                      }

                      isSplat = v87;
                      v138 = v86;
                      mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
                      v79 = v120;
                      if (v88 != 4)
                      {
                        goto LABEL_188;
                      }
                    }
                  }

                  v129[0] = v79;
                  v133 = mlir::ArrayAttr::getValue(v129);
                  v134 = v89;
                  v130[0] = mlir::ElementsAttr::isSplat(&v133);
                  if (mlir::Type::isSignedInteger(v130, 8) || (v127[0] = v79, v131 = mlir::ArrayAttr::getValue(v127), v132 = v90, v128[0] = mlir::ElementsAttr::isSplat(&v131), mlir::Type::isUnsignedInteger(v128, 8)))
                  {
LABEL_195:
                    if (!v18)
                    {
                      goto LABEL_185;
                    }

                    if (!mlir::DenseElementsAttr::classof(v18))
                    {
                      goto LABEL_189;
                    }

                    v91 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                    v141 = v18;
                    v142 = v91;
                    v92 = mlir::ElementsAttr::getType(&v141);
                    v93 = v92;
                    if (v92)
                    {
                      v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v92 + 8);
                    }

                    v147 = v93;
                    v148 = v92;
                    mlir::CallableOpInterface::getArgAttrsAttr(&v147);
                    if (v94)
                    {
                      v95 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                      v145 = v18;
                      v146 = v95;
                      v96 = mlir::ElementsAttr::getType(&v145);
                      v97 = v96;
                      if (v96)
                      {
                        v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
                      }

                      v139 = v97;
                      v140 = v96;
                      mlir::CallableOpInterface::getArgAttrsAttr(&v139);
                      if (v98 != 1)
                      {
                        v99 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                        v135 = v18;
                        v136 = v99;
                        v100 = mlir::ElementsAttr::getType(&v135);
                        v101 = v100;
                        if (v100)
                        {
                          v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v100 + 8);
                        }

                        isSplat = v101;
                        v138 = v100;
                        mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
                        if (v102 != 2)
                        {
                          v103 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                          v131 = v18;
                          v132 = v103;
                          v104 = mlir::ElementsAttr::getType(&v131);
                          v105 = v104;
                          if (v104)
                          {
                            v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
                          }

                          v133 = v105;
                          v134 = v104;
                          mlir::CallableOpInterface::getArgAttrsAttr(&v133);
                          if (v106 != 3)
                          {
                            v107 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                            v129[0] = v18;
                            v129[1] = v107;
                            v108 = mlir::ElementsAttr::getType(v129);
                            v109 = v108;
                            if (v108)
                            {
                              v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v108 + 8);
                            }

                            v130[0] = v109;
                            v130[1] = v108;
                            mlir::CallableOpInterface::getArgAttrsAttr(v130);
                            if (v110 != 4)
                            {
                              v111 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                              v127[0] = v18;
                              v127[1] = v111;
                              v112 = mlir::ElementsAttr::getType(v127);
                              v113 = v112;
                              if (v112)
                              {
                                v112 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v112 + 8);
                              }

                              v128[0] = v113;
                              v128[1] = v112;
                              mlir::CallableOpInterface::getArgAttrsAttr(v128);
                              if (v114 != 5)
                              {
                                v115 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                                v125[0] = v18;
                                v125[1] = v115;
                                v116 = mlir::ElementsAttr::getType(v125);
                                v117 = v116;
                                if (v116)
                                {
                                  v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v116 + 8);
                                }

                                v126[0] = v117;
                                v126[1] = v116;
                                mlir::CallableOpInterface::getArgAttrsAttr(v126);
                                if (v118 != 6)
                                {
                                  goto LABEL_189;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v122 = v18;
                    v123[0] = mlir::ArrayAttr::getValue(&v122);
                    v123[1] = v119;
                    v124 = mlir::ElementsAttr::isSplat(v123);
                    if (mlir::Type::isF16(&v124))
                    {
LABEL_185:
                      if (!v17 || *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
                      {
                        return 1;
                      }

                      v54 = "'anec.deconvolution' op attribute 'kernel_mutable_palettized_LUT' failed to satisfy constraint: dictionary of named attribute values";
                    }

                    else
                    {
LABEL_189:
                      v54 = "'anec.deconvolution' op attribute 'kernel_palettized_LUT' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
                    }
                  }

                  else
                  {
LABEL_188:
                    v54 = "'anec.deconvolution' op attribute 'kernel_zero_point' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1/4";
                  }
                }

                else
                {
LABEL_187:
                  v54 = "'anec.deconvolution' op attribute 'kernel_scale' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1/4";
                }
              }

              else
              {
                v54 = "'anec.deconvolution' op attribute 'channel_wise' failed to satisfy constraint: unit attribute";
              }

              goto LABEL_128;
            }
          }
        }

        v54 = "'anec.deconvolution' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        goto LABEL_128;
      }
    }
  }

  v141 = "'anec.deconvolution' op attribute 'dilation' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v143 = 259;
  mlir::emitError(a2.var0.var0, &v141, &v147);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
  if (v147)
  {
    mlir::InFlightDiagnostic::report(&v147);
  }

  if (v156 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v148);
  }

  return v6;
}

BOOL mlir::anec::Deconvolution::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v164 = *MEMORY[0x1E69E9840];
  ANECConvLayerDescInitialize();
  v6 = *a2;
  if (*a2)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v144[0] = v6;
  v144[1] = v7;
  v8 = *(a2 + 2);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v143[0] = v8;
  v143[1] = v9;
  mlir::CallableOpInterface::getArgAttrsAttr(v144);
  v11 = v10;
  mlir::CallableOpInterface::getArgAttrsAttr(v144);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v12);
  if ((v14 & 1) == 0)
  {
    v151 = "Failed to get channel index for Conv";
    v153[8] = 259;
    mlir::OpState::emitOpError(a1, &v151, &AttrDictionary);
    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v163 == 1)
    {
      if (v162 != &v163)
      {
        free(v162);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v161;
        v41 = __p;
        if (v161 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v161 = v39;
        operator delete(v41);
      }

      v42 = v158;
      if (v158)
      {
        v43 = v159;
        v44 = v158;
        if (v159 != v158)
        {
          do
          {
            v46 = *--v43;
            v45 = v46;
            *v43 = 0;
            if (v46)
            {
              operator delete[](v45);
            }
          }

          while (v43 != v42);
          v44 = v158;
        }

        v159 = v42;
        operator delete(v44);
      }

      v69 = v156;
      if (v156 != v157)
      {
        goto LABEL_154;
      }
    }

    return mlir::anec::verifyConvolutionWithANEC(&v117, *a1, a2, a3);
  }

  v15 = IndexFromDim;
  v148 = v150;
  v149 = 0x300000000;
  v145 = v147;
  v146 = 0x300000000;
  v151 = v153;
  v152 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v17 + 16 * v18), *(*(*(*a1 + 48) + 96) + 72));
  mlir::getValues<int>(v19, &v148);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v20 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v21 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v20, (v21 + 16 * v22 - 32), *(*(*(*a1 + 48) + 96) + 8));
  mlir::getValues<int>(v23, &v145);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v24 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v25 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v24 + 16), (v25 + 16 * v26 - 16), *(*(*(*a1 + 48) + 96) + 56));
  mlir::getValues<int>(v27, &v151);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v144);
  v29 = mlir::CallableOpInterface::getArgAttrsAttr(v143);
  v30 = *(ArgAttrsAttr + 8 * v15);
  if (v11 != 5)
  {
    v47 = (v29 + 24);
    v108 = v29;
    v48 = (v29 + 16);
    v49 = 1;
    goto LABEL_43;
  }

  if (v149 <= 2)
  {
    v141[0] = "failed: found 2 strides, but the convolution op is 3d";
    v142 = 259;
    mlir::OpState::emitOpError(a1, v141, &AttrDictionary);
    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v163 == 1)
    {
      if (v162 != &v163)
      {
        free(v162);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v161;
        v33 = __p;
        if (v161 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v161 = v31;
        operator delete(v33);
      }

      v34 = v158;
      if (!v158)
      {
        goto LABEL_98;
      }

      v35 = v159;
      v36 = v158;
      if (v159 == v158)
      {
LABEL_97:
        v159 = v34;
        operator delete(v36);
LABEL_98:
        if (v156 != v157)
        {
          free(v156);
        }

        goto LABEL_149;
      }

      do
      {
        v38 = *--v35;
        v37 = v38;
        *v35 = 0;
        if (v38)
        {
          operator delete[](v37);
        }
      }

      while (v35 != v34);
LABEL_96:
      v36 = v158;
      goto LABEL_97;
    }

    goto LABEL_149;
  }

  if (v146 > 2)
  {
    if (v152 <= 5)
    {
      v70 = "failed: found 4 paddings, but the convolution op is 3d";
LABEL_145:
      v141[0] = v70;
      v142 = 259;
      mlir::OpState::emitOpError(a1, v141, &AttrDictionary);
      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v163 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v155);
      }

      goto LABEL_149;
    }

    v47 = (v29 + 32);
    v48 = (v29 + 24);
    v108 = v29;
    v49 = *(v29 + 16);
LABEL_43:
    v111 = *v48;
    v112 = *v47;
    v110 = *(v148 + 2);
    v50 = *v148;
    v115 = *(v145 + 1);
    v116 = *(v145 + 2);
    v114 = *v145;
    v109 = *(v151 + 2);
    v113 = *v151;
    IncPadAttr = mlir::anec::AveragePool::getIncPadAttr(a1);
    v52 = @"ChannelWiseDeConv";
    if (!IncPadAttr)
    {
      v52 = @"DeConv";
    }

    v117 = v52;
    v53 = *a1;
    if (*(*a1 + 47) && (v165.var0 = "kernel_palettized_LUT", v165.var1 = 21, InherentAttr = mlir::Operation::getInherentAttr(*a1, v165), (v55 & 1) != 0))
    {
      v56 = InherentAttr != 0;
    }

    else
    {
      v166.var0 = "kernel_palettized_LUT";
      v166.var1 = 21;
      v56 = mlir::DictionaryAttr::contains((v53 + 56), v166);
    }

    v57 = *a1;
    if (*(*a1 + 47) && (v167.var0 = "kernel_mutable_palettized_LUT", v167.var1 = 29, v58 = mlir::Operation::getInherentAttr(*a1, v167), (v59 & 1) != 0))
    {
      if (!(v56 & 1 | (v58 != 0)))
      {
LABEL_52:
        v118 = @"Dense";
        AttrDictionary = mlir::ElementsAttr::isSplat(v143);
        if (mlir::Type::isF16(&AttrDictionary))
        {
          v60 = @"Float16";
        }

        else if (mlir::Type::isF32(&AttrDictionary))
        {
          v60 = @"Float32";
        }

        else if (mlir::Type::isUnsignedInteger(&AttrDictionary, 8))
        {
          v60 = @"UInt8";
        }

        else
        {
          mlir::Type::isInteger(&AttrDictionary, 8);
          v60 = @"Int8";
        }

        v119 = v60;
        goto LABEL_119;
      }
    }

    else
    {
      v168.var0 = "kernel_mutable_palettized_LUT";
      v168.var1 = 29;
      if (((v56 | mlir::DictionaryAttr::contains((v57 + 56), v168)) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v61 = v143[0];
    if (v143[0])
    {
      v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v143[0] + 8);
    }

    else
    {
      v62 = 0;
    }

    v140[0] = v61;
    v140[1] = v62;
    AttrDictionary = mlir::ElementsAttr::isSplat(v140);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
    v72 = IntOrFloatBitWidth;
    if (v56)
    {
      v73 = IntOrFloatBitWidth;
      v74 = v49;
      v75 = *a1;
      if (!*(*a1 + 47) || (v169.var0 = "kernel_palettized_LUT", v169.var1 = 21, v76 = mlir::Operation::getInherentAttr(*a1, v169), (v77 & 1) == 0))
      {
        v170.var0 = "kernel_palettized_LUT";
        v170.var1 = 21;
        v76 = mlir::DictionaryAttr::get((v75 + 56), v170);
      }

      v78 = v76;
      v49 = v74;
      if (v76)
      {
        v79 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v76 + 8);
      }

      else
      {
        v79 = 0;
      }

      v72 = v73;
      v141[0] = v78;
      v141[1] = v79;
      Type = mlir::ElementsAttr::getType(v141);
      v86 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      AttrDictionary = v86;
      v155 = Type;
      isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
    }

    else
    {
      v80 = *a1;
      if (!*(*a1 + 47) || (v171.var0 = "kernel_mutable_palettized_LUT", v171.var1 = 29, v81 = mlir::Operation::getInherentAttr(*a1, v171), (v82 & 1) == 0))
      {
        v172.var0 = "kernel_mutable_palettized_LUT";
        v172.var1 = 29;
        v81 = mlir::DictionaryAttr::get((v80 + 56), v172);
      }

      v141[0] = v81;
      v173.var0 = "type";
      v173.var1 = 4;
      v83 = mlir::DictionaryAttr::get(v141, v173);
      if (v83)
      {
        if (*(*v83 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v84 = v83;
        }

        else
        {
          v84 = 0;
        }
      }

      else
      {
        v84 = 0;
      }

      v139 = v84;
      v88 = mlir::AffineMapAttr::getValue(&v139);
      v89 = v88;
      if (v88)
      {
        v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v88 + 8);
      }

      AttrDictionary = v89;
      v155 = v88;
      isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
    }

    AttrDictionary = isSplat;
    if (mlir::Type::isF16(&AttrDictionary))
    {
      v90 = @"Float16";
    }

    else if (mlir::Type::isF32(&AttrDictionary))
    {
      v90 = @"Float32";
    }

    else if (mlir::Type::isUnsignedInteger(&AttrDictionary, 8))
    {
      v90 = @"UInt8";
    }

    else
    {
      mlir::Type::isInteger(&AttrDictionary, 8);
      v90 = @"Int8";
    }

    v119 = v90;
    v106 = v72 - 2;
    if ((v72 - 2) >= 7 || ((0x55u >> v106) & 1) == 0)
    {
      v70 = "failed: only 2-bit, 4-bit, 6-bit and 8-bit palettization is supported";
      goto LABEL_145;
    }

    v118 = *(&off_1E86D3898 + v106);
LABEL_119:
    AttrDictionary = mlir::anec::Convolution::getPaddingModeAttr(a1);
    v120 = *(&off_1E86D3980 + mlir::IntegerAttr::getInt(&AttrDictionary));
    v91 = mlir::anec::AveragePool::getIncPadAttr(a1);
    v92 = v30;
    if (!v91)
    {
      v93 = *(v108 + 8);
      v141[0] = mlir::anec::Convolution::getGroupsAttr(a1);
      mlir::IntegerAttr::getValue(v141, &AttrDictionary);
      if (v155 > 0x40)
      {
        v94 = *AttrDictionary;
        operator delete[](AttrDictionary);
      }

      else
      {
        v94 = AttrDictionary;
      }

      v92 = v94 * v93;
    }

    v121 = v92;
    if (!mlir::anec::AveragePool::getIncPadAttr(a1))
    {
      v141[0] = mlir::anec::Convolution::getGroupsAttr(a1);
      mlir::IntegerAttr::getValue(v141, &AttrDictionary);
      if (v155 > 0x40)
      {
        v30 = *AttrDictionary;
        operator delete[](AttrDictionary);
      }

      else
      {
        v30 = AttrDictionary;
      }
    }

    v122 = v30;
    v123 = 0;
    v124 = v112;
    v125 = v111;
    v126 = v49;
    v127 = v110;
    *&v95 = vrev64_s32(v50);
    *(&v95 + 1) = v109;
    v128 = v95;
    v129 = vextq_s8(v113, v113, 8uLL);
    v130 = 0;
    v131 = v116;
    v132 = v115;
    v133 = v114;
    if (mlir::anec::Convolution::getKernelScaleAttr(a1))
    {
      KernelScaleAttr = mlir::anec::Convolution::getKernelScaleAttr(a1);
      if (KernelScaleAttr)
      {
        v97 = KernelScaleAttr;
        v98 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScaleAttr + 8);
        SplatFloat = mlir::getSplatFloatValue<float>(v97, v98);
        if ((SplatFloat & 0x100000000) == 0)
        {
LABEL_131:
          v134 = 1;
          v100 = mlir::anec::Convolution::getKernelScaleAttr(a1);
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(v100);
          goto LABEL_134;
        }
      }

      else
      {
        SplatFloat = mlir::getSplatFloatValue<float>(0, 0);
        if ((SplatFloat & 0x100000000) == 0)
        {
          goto LABEL_131;
        }
      }

      v135 = SplatFloat;
    }

LABEL_134:
    if (!mlir::anec::Convolution::getKernelZeroPointAttr(a1))
    {
      goto LABEL_149;
    }

    KernelZeroPointAttr = mlir::anec::Convolution::getKernelZeroPointAttr(a1);
    if (KernelZeroPointAttr)
    {
      v103 = KernelZeroPointAttr;
      v104 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPointAttr + 8);
      SplatInt = mlir::getSplatIntValue<int>(v103, v104);
      if ((SplatInt & 0x100000000) == 0)
      {
LABEL_137:
        v137 = 1;
        goto LABEL_149;
      }
    }

    else
    {
      SplatInt = mlir::getSplatIntValue<int>(0, 0);
      if ((SplatInt & 0x100000000) == 0)
      {
        goto LABEL_137;
      }
    }

    v138 = SplatInt;
    goto LABEL_149;
  }

  v141[0] = "failed: found 2 dilations, but the convolution op is 3d";
  v142 = 259;
  mlir::OpState::emitOpError(a1, v141, &AttrDictionary);
  mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v163 == 1)
  {
    if (v162 != &v163)
    {
      free(v162);
    }

    v63 = __p;
    if (__p)
    {
      v64 = v161;
      v65 = __p;
      if (v161 != __p)
      {
        do
        {
          v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
        }

        while (v64 != v63);
        v65 = __p;
      }

      v161 = v63;
      operator delete(v65);
    }

    v34 = v158;
    if (!v158)
    {
      goto LABEL_98;
    }

    v66 = v159;
    v36 = v158;
    if (v159 == v158)
    {
      goto LABEL_97;
    }

    do
    {
      v68 = *--v66;
      v67 = v68;
      *v66 = 0;
      if (v68)
      {
        operator delete[](v67);
      }
    }

    while (v66 != v34);
    goto LABEL_96;
  }

LABEL_149:
  if (v151 != v153)
  {
    free(v151);
  }

  if (v145 != v147)
  {
    free(v145);
  }

  v69 = v148;
  if (v148 != v150)
  {
LABEL_154:
    free(v69);
  }

  return mlir::anec::verifyConvolutionWithANEC(&v117, *a1, a2, a3);
}

BOOL mlir::anec::Deconvolution::addOpToNetwork(mlir::Operation **a1, void *a2, uint64_t a3)
{
  v183 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v165 = *a1;
  if (!a2)
  {
    v166[0] = "network should not be nullptr";
    v167[8] = 259;
    mlir::Operation::emitError(v3, v166, v173);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v173);
    if (v173[0])
    {
      mlir::InFlightDiagnostic::report(v173);
    }

    if (v182 == 1)
    {
      if (v181 != &v182)
      {
        free(v181);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v180;
        v18 = __p;
        if (v180 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v180 = v16;
        operator delete(v18);
      }

      v19 = v177;
      if (v177)
      {
        v20 = v178;
        v21 = v177;
        if (v178 != v177)
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
          v21 = v177;
        }

        v178 = v19;
        operator delete(v21);
      }

      v64 = v175[0];
      if (v175[0] != v176)
      {
        goto LABEL_216;
      }
    }

    return v15;
  }

  v6 = *(v3 + 9);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  if (*(v3 + 9))
  {
    v9 = v3 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v173[0] = mlir::Operation::getAttrDictionary(v3);
  Value = mlir::ArrayAttr::getValue(v173);
  v173[0] = mlir::Operation::getAttrDictionary(v165);
  v11 = mlir::ArrayAttr::getValue(v173);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v11 + 16 * v12 - 32), *(*(*(v165 + 6) + 96) + 16));
  if (v13)
  {
    if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v166[0] = v14;
  mlir::IntegerAttr::getValue(v166, v173);
  if (LODWORD(v173[1]) > 0x40)
  {
    v152 = *v173[0];
    operator delete[](v173[0]);
  }

  else
  {
    v152 = v173[0];
  }

  v173[0] = mlir::Operation::getAttrDictionary(v165);
  v24 = mlir::ArrayAttr::getValue(v173);
  v173[0] = mlir::Operation::getAttrDictionary(v165);
  v25 = mlir::ArrayAttr::getValue(v173);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v24, (v25 + 16 * v26 - 48), **(*(v165 + 6) + 96));
  if (v27)
  {
    v28 = *(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  }

  else
  {
    v28 = 0;
  }

  v171[0] = v172;
  v171[1] = 0x200000000;
  v173[0] = mlir::Operation::getAttrDictionary(v165);
  v29 = mlir::ArrayAttr::getValue(v173);
  v173[0] = mlir::Operation::getAttrDictionary(v165);
  v30 = mlir::ArrayAttr::getValue(v173);
  v32 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v29 + 32), (v30 + 16 * v31), *(*(*(v165 + 6) + 96) + 72));
  mlir::getValues<unsigned long>(v32, v171);
  __src = v170;
  v169 = 0x200000000;
  v173[0] = mlir::Operation::getAttrDictionary(v165);
  v33 = mlir::ArrayAttr::getValue(v173);
  v173[0] = mlir::Operation::getAttrDictionary(v165);
  v34 = mlir::ArrayAttr::getValue(v173);
  v36 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v33, (v34 + 16 * v35 - 32), *(*(*(v165 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v36, &__src);
  v166[0] = v167;
  v166[1] = 0x400000000;
  v173[0] = mlir::Operation::getAttrDictionary(v165);
  v37 = mlir::ArrayAttr::getValue(v173);
  v173[0] = mlir::Operation::getAttrDictionary(v165);
  v38 = mlir::ArrayAttr::getValue(v173);
  v40 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v37 + 16), (v38 + 16 * v39 - 16), *(*(*(v165 + 6) + 96) + 56));
  mlir::getValues<unsigned long>(v40, v166);
  v41 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v41)
  {
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
  }

  else
  {
    v42 = 0;
  }

  v163[0] = v41;
  v163[1] = v42;
  mlir::CallableOpInterface::getArgAttrsAttr(v163);
  v43 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v43)
  {
    v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
  }

  else
  {
    v44 = 0;
  }

  v162[0] = v43;
  v162[1] = v44;
  mlir::CallableOpInterface::getArgAttrsAttr(v162);
  v45 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
  if (v45)
  {
    v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  *&v161 = v45;
  *(&v161 + 1) = v46;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v161);
  v49 = v48;
  v160[0] = 0;
  v160[1] = 0;
  v153[0] = v160;
  v173[0] = v8;
  DefiningOp = mlir::Value::getDefiningOp(v173);
  if (DefiningOp)
  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v153, DefiningOp);
  }

  v158 = 0;
  v159 = 0;
  v157 = 0;
  v15 = 0;
  {
    v51 = operator new(0x150uLL);
    *v51 = 0u;
    *(v51 + 1) = 0u;
    *(v51 + 2) = 0u;
    *(v51 + 3) = 0u;
    *(v51 + 4) = 0u;
    *(v51 + 5) = 0u;
    *(v51 + 6) = 0u;
    *(v51 + 7) = 0u;
    *(v51 + 8) = 0u;
    *(v51 + 9) = 0u;
    *(v51 + 10) = 0u;
    *(v51 + 11) = 0u;
    *(v51 + 12) = 0u;
    *(v51 + 13) = 0u;
    *(v51 + 14) = 0u;
    *(v51 + 15) = 0u;
    *(v51 + 16) = 0u;
    *(v51 + 17) = 0u;
    *(v51 + 18) = 0u;
    *(v51 + 19) = 0u;
    *(v51 + 20) = 0u;
    *(v51 + 9) = -1;
    *(v51 + 22) = -1;
    *(v51 + 12) = -1;
    *(v51 + 26) = -1;
    *(v51 + 14) = -1;
    *(v51 + 120) = 0u;
    *(v51 + 136) = 0u;
    *(v51 + 152) = 0u;
    *(v51 + 21) = 0;
    *(v51 + 44) = 1;
    *(v51 + 48) = -1;
    *(v51 + 25) = -1;
    *(v51 + 52) = -1;
    *(v51 + 27) = -1;
    *(v51 + 28) = 0x3F80000000000006;
    v52 = vdupq_n_s64(1uLL);
    *v51 = &unk_1F5B33BB0;
    *(v51 + 248) = v52;
    *&v53 = 0x100000001;
    *(&v53 + 1) = 0x100000001;
    *(v51 + 264) = v52;
    *(v51 + 280) = v53;
    *(v51 + 37) = 0x100000001;
    *(v51 + 38) = 0;
    *(v51 + 39) = 0;
    *(v51 + 40) = 0;
    *(v51 + 82) = 1;
    mlir::anec::fillZinIrCommonInfo(v165, v51, 1, a2, 1uLL, 1u);
    v54 = v165;
    v173[0] = v165;
    v173[1] = v175;
    v174 = 0x200000000;
    v55 = v169;
    if (!v169)
    {
      v58 = 0;
      v176[0] = v28;
      v59 = v175;
      goto LABEL_58;
    }

    if (v169 < 3)
    {
      v56 = v169;
      v57 = v175;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v173[1], v175, v169, 8);
      v56 = v169;
      if (!v169)
      {
        goto LABEL_51;
      }

      v57 = v173[1];
    }

    memcpy(v57, __src, 8 * v56);
LABEL_51:
    v60 = 0;
    LODWORD(v174) = v55;
    v59 = v173[1];
    v176[0] = v28;
    do
    {
      v61 = *(v173[1] + v60);
      v62 = v61 == 1;
      v58 = v61 != 1;
      v62 = !v62 || 8 * v55 - 8 == v60;
      v60 += 8;
    }

    while (!v62);
    v54 = v173[0];
LABEL_58:
    if (*(*(v54 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
    {
      if (v28 && v58)
      {
        v63 = 6;
        if (v59 == v175)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v58)
        {
          v65 = 5;
        }

        else
        {
          v65 = 1;
        }

        if (v28)
        {
          v63 = 2;
        }

        else
        {
          v63 = v65;
        }

        if (v59 == v175)
        {
LABEL_76:
          *(v51 + 60) = v63;
          v66 = mlir::Value::getDefiningOp(&NextResultAtOffset);
          v67 = v66;
          if (*(v66 + 47) && (v184.var0 = "kernel_palettized_LUT", v184.var1 = 21, InherentAttr = mlir::Operation::getInherentAttr(v66, v184), (v69 & 1) != 0))
          {
            if (InherentAttr)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v185.var0 = "kernel_palettized_LUT";
            v185.var1 = 21;
            if (mlir::DictionaryAttr::contains((v67 + 56), v185))
            {
              goto LABEL_84;
            }
          }

          v70 = mlir::Value::getDefiningOp(&NextResultAtOffset);
          v71 = v70;
          if (*(v70 + 47) && (v186.var0 = "kernel_mutable_palettized_LUT", v186.var1 = 29, v72 = mlir::Operation::getInherentAttr(v70, v186), (v73 & 1) != 0))
          {
            if (v72)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v193.var0 = "kernel_mutable_palettized_LUT";
            v193.var1 = 29;
            if (mlir::DictionaryAttr::contains((v71 + 56), v193))
            {
LABEL_84:
              v155 = 0;
              v156 = 0;
              if (v157 != 1)
              {
                v83 = mlir::Value::getDefiningOp(&NextResultAtOffset);
                v84 = v83;
                if (!*(v83 + 47) || (v191.var0 = "kernel_palettized_LUT", v191.var1 = 21, v85 = mlir::Operation::getInherentAttr(v83, v191), (v86 & 1) == 0))
                {
                  v192.var0 = "kernel_palettized_LUT";
                  v192.var1 = 21;
                  v85 = mlir::DictionaryAttr::get((v84 + 56), v192);
                }

                v87 = v85;
                if (v85)
                {
                  v88 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v85 + 8);
                }

                else
                {
                  v88 = 0;
                }

                v173[0] = v87;
                v173[1] = v88;
                UInt = mlir::anec::ANECIRWeightSerializer::addConstant(a3, v87, v88);
                v102 = v101;
                Type = mlir::ElementsAttr::getType(v173);
                v104 = Type;
                if (Type)
                {
                  v105 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                }

                else
                {
                  v105 = 0;
                }

                v155 = v104;
                v156 = v105;
LABEL_142:
                {
                  v153[0] = "Failed to retrieve the palettized kernel info";
                  v154 = 259;
                  mlir::Operation::emitError(v165, v153, v173);
                  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v173);
                  if (v173[0])
                  {
                    mlir::InFlightDiagnostic::report(v173);
                  }

                  if (v182 != 1)
                  {
                    goto LABEL_163;
                  }

                  if (v181 != &v182)
                  {
                    free(v181);
                  }

                  v114 = __p;
                  if (__p)
                  {
                    v115 = v180;
                    v116 = __p;
                    if (v180 != __p)
                    {
                      do
                      {
                        v115 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v115 - 1);
                      }

                      while (v115 != v114);
                      v116 = __p;
                    }

                    v180 = v114;
                    operator delete(v116);
                  }

                  v95 = v177;
                  if (!v177)
                  {
LABEL_161:
                    if (v175[0] != v176)
                    {
                      free(v175[0]);
                    }

LABEL_163:
                    (*(*v51 + 8))(v51);
                    goto LABEL_211;
                  }

                  v117 = v178;
                  v97 = v177;
                  if (v178 == v177)
                  {
LABEL_160:
                    v178 = v95;
                    operator delete(v97);
                    goto LABEL_161;
                  }

                  do
                  {
                    v119 = *--v117;
                    v118 = v119;
                    *v117 = 0;
                    if (v119)
                    {
                      operator delete[](v118);
                    }
                  }

                  while (v117 != v95);
LABEL_159:
                  v97 = v177;
                  goto LABEL_160;
                }

LABEL_169:
                v51[244] = 0;
                *(v51 + 31) = v152;
                v120 = v159;
                *(v51 + 22) = v158;
                *(v51 + 12) = v120;
                *(v51 + 16) = vextq_s8(*(ArgAttrsAttr + 8 * v49 - 16), *(ArgAttrsAttr + 8 * v49 - 16), 8uLL);
                if (v49 == 5)
                {
                  v121 = *(ArgAttrsAttr + 16);
                }

                else
                {
                  v121 = 1;
                }

                *(v51 + 34) = v121;
                v122 = __src;
                *(v51 + 70) = *(__src + 2);
                v123 = *v122;
                v124 = v171[0];
                *(v51 + 284) = vrev64q_s32(vuzp1q_s32(v123, *(v171[0] + 8)));
                *(v51 + 75) = *v124;
                v125 = v166[0];
                *(v51 + 19) = vuzp1q_s32(*(v166[0] + 2), *(v166[0] + 1));
                *(v51 + 40) = vmovn_s64(*v125);
                v173[0] = mlir::anec::Convolution::getPaddingModeAttr(&v165);
                *(v51 + 82) = dword_1E0999A24[mlir::IntegerAttr::getInt(v173)];
                v51[180] = v157;
                if (!mlir::anec::Convolution::getKernelScaleAttr(&v165))
                {
LABEL_195:
                  if (mlir::anec::Convolution::getKernelZeroPointAttr(&v165))
                  {
                    KernelZeroPointAttr = mlir::anec::Convolution::getKernelZeroPointAttr(&v165);
                    if (KernelZeroPointAttr)
                    {
                      v140 = KernelZeroPointAttr;
                      v141 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPointAttr + 8);
                      SplatInt = mlir::getSplatIntValue<int>(v140, v141);
                      if ((SplatInt & 0x100000000) == 0)
                      {
LABEL_198:
                        v143 = mlir::anec::Convolution::getKernelZeroPointAttr(&v165);
                        v144 = v143;
                        if (v143)
                        {
                          v145 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v143 + 8);
                        }

                        else
                        {
                          v145 = 0;
                        }

                        v146 = mlir::anec::ANECIRWeightSerializer::addConstant(a3, v144, v145);
                        v51[185] = 1;
                        *(v51 + 52) = 0;
                        *(v51 + 27) = v146;
                        goto LABEL_204;
                      }
                    }

                    else
                    {
                      SplatInt = mlir::getSplatIntValue<int>(0, 0);
                      if ((SplatInt & 0x100000000) == 0)
                      {
                        goto LABEL_198;
                      }
                    }

                    *(v51 + 58) = SplatInt;
                  }

LABEL_204:
                  v147 = operator new(0xC8uLL);
                  v148 = v147;
                  *(v147 + 1) = 0;
                  *(v147 + 2) = 0;
                  *v147 = &unk_1F5B2E830;
                  v149 = v147 + 24;
                  *(v147 + 3) = &unk_1F5B2E868;
                  if (v51[31] < 0)
                  {
                    std::string::__init_copy_ctor_external((v147 + 32), *(v51 + 1), *(v51 + 2));
                  }

                  else
                  {
                    *(v147 + 2) = *(v51 + 8);
                    *(v147 + 6) = *(v51 + 3);
                  }

                  v148[14] = 17;
                  *(v148 + 3) = &unk_1F5B34308;
                  *(v148 + 8) = v51;
                  *(v148 + 72) = 0;
                  *(v148 + 10) = 0;
                  *(v148 + 11) = v148 + 26;
                  *(v148 + 12) = 0x100000000;
                  *(v148 + 17) = v148 + 38;
                  *(v148 + 18) = 0x300000000;
                  v173[0] = v149;
                  v173[1] = v148;
                  mlir::anec::ANECIRNetwork::AddUnit(a2, v173);
                  v150 = v173[1];
                  if (v173[1] && !atomic_fetch_add(v173[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v150->__on_zero_shared)(v150);
                    std::__shared_weak_count::__release_weak(v150);
                  }

                  v15 = 1;
                  goto LABEL_211;
                }

                KernelScaleAttr = mlir::anec::Convolution::getKernelScaleAttr(&v165);
                if (KernelScaleAttr)
                {
                  v127 = KernelScaleAttr;
                  v128 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScaleAttr + 8);
                  SplatFloat = mlir::getSplatFloatValue<float>(v127, v128);
                  if ((SplatFloat & 0x100000000) == 0)
                  {
                    goto LABEL_175;
                  }
                }

                else
                {
                  SplatFloat = mlir::getSplatFloatValue<float>(0, 0);
                  if ((SplatFloat & 0x100000000) == 0)
                  {
LABEL_175:
                    v130 = mlir::anec::Convolution::getKernelScaleAttr(&v165);
                    v131 = v130;
                    if (v130)
                    {
                      v132 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v130 + 8);
                    }

                    else
                    {
                      v132 = 0;
                    }

                    v133 = mlir::anec::ANECIRWeightSerializer::addConstant(a3, v131, v132);
                    v155 = mlir::anec::Convolution::getKernelScaleAttr(&v165);
                    v173[0] = mlir::ArrayAttr::getValue(&v155);
                    v173[1] = v134;
                    isSplat = mlir::ElementsAttr::isSplat(v173);
                    v136 = *(*isSplat + 136);
                    if (v136 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
                    {
                      if (v136 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
                      {
                        v137 = 4;
                      }

                      else if (v136 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
                      {
                        v137 = 6;
                      }

                      else
                      {
                        v137 = 0;
                      }

                      goto LABEL_194;
                    }

                    v153[0] = isSplat;
                    Width = mlir::IntegerType::getWidth(v153);
                    if (Width == 16)
                    {
                      if (mlir::IntegerType::getSignedness(v153) == 1)
                      {
                        v137 = 3;
LABEL_194:
                        *(v51 + 56) = v137;
                        v51[184] = 1;
                        *(v51 + 48) = 0;
                        *(v51 + 25) = v133;
                        goto LABEL_195;
                      }
                    }

                    else if (Width == 8)
                    {
                      if (mlir::IntegerType::getSignedness(v153) == 2)
                      {
                        v137 = 2;
                      }

                      else
                      {
                        v137 = 1;
                      }

                      goto LABEL_194;
                    }

                    v137 = 0;
                    goto LABEL_194;
                  }
                }

                *(v51 + 57) = SplatFloat;
                goto LABEL_195;
              }

              v74 = mlir::Value::getDefiningOp(&NextResultAtOffset);
              v75 = v74;
              if (*(v74 + 47) && (v187.var0 = "kernel_mutable_palettized_LUT", v187.var1 = 29, v76 = mlir::Operation::getInherentAttr(v74, v187), (v77 & 1) != 0))
              {
                if (v76)
                {
                  goto LABEL_88;
                }
              }

              else
              {
                v194.var0 = "kernel_mutable_palettized_LUT";
                v194.var1 = 29;
                if (mlir::DictionaryAttr::contains((v75 + 56), v194))
                {
LABEL_88:
                  v78 = v165;
                  if (!*(v165 + 47) || (v188.var0 = "kernel_mutable_palettized_LUT", v188.var1 = 29, v79 = mlir::Operation::getInherentAttr(v165, v188), (v80 & 1) == 0))
                  {
                    v189.var0 = "kernel_mutable_palettized_LUT";
                    v189.var1 = 29;
                    v79 = mlir::DictionaryAttr::get((v78 + 56), v189);
                  }

                  v153[0] = v79;
                  v190.var0 = "offset";
                  v190.var1 = 6;
                  v81 = mlir::DictionaryAttr::get(v153, v190);
                  if (v81)
                  {
                    if (*(*v81 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
                    {
                      v82 = v81;
                    }

                    else
                    {
                      v82 = 0;
                    }
                  }

                  else
                  {
                    v82 = 0;
                  }

                  v173[0] = v82;
                  UInt = mlir::IntegerAttr::getUInt(v173);
                  v195.var0 = "type";
                  v195.var1 = 4;
                  v107 = mlir::DictionaryAttr::get(v153, v195);
                  if (v107)
                  {
                    if (*(*v107 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
                    {
                      v108 = v107;
                    }

                    else
                    {
                      v108 = 0;
                    }
                  }

                  else
                  {
                    v108 = 0;
                  }

                  v173[0] = v108;
                  v109 = mlir::AffineMapAttr::getValue(v173);
                  v110 = v109;
                  if (v109)
                  {
                    v109 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v109 + 8);
                  }

                  v155 = v110;
                  v156 = v109;
                  v173[0] = mlir::ElementsAttr::isSplat(&v155);
                  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v173);
                  v112 = mlir::CallableOpInterface::getArgAttrsAttr(&v155);
                  v102 = mlir::ShapedType::getNumElements(v112, v113) * IntOrFloatBitWidth / 8;
                  v104 = v155;
                  v105 = v156;
                  goto LABEL_142;
                }
              }

              v153[0] = "Failed to find mutable LUT attribute";
              v154 = 259;
              mlir::Operation::emitError(v165, v153, v173);
              v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v173);
              if (v173[0])
              {
                mlir::InFlightDiagnostic::report(v173);
              }

              if (v182 != 1)
              {
                goto LABEL_163;
              }

              if (v181 != &v182)
              {
                free(v181);
              }

              v92 = __p;
              if (__p)
              {
                v93 = v180;
                v94 = __p;
                if (v180 != __p)
                {
                  do
                  {
                    v93 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v93 - 1);
                  }

                  while (v93 != v92);
                  v94 = __p;
                }

                v180 = v92;
                operator delete(v94);
              }

              v95 = v177;
              if (!v177)
              {
                goto LABEL_161;
              }

              v96 = v178;
              v97 = v177;
              if (v178 == v177)
              {
                goto LABEL_160;
              }

              do
              {
                v99 = *--v96;
                v98 = v99;
                *v96 = 0;
                if (v99)
                {
                  operator delete[](v98);
                }
              }

              while (v96 != v95);
              goto LABEL_159;
            }
          }

          *v173 = v161;
          v89 = mlir::ElementsAttr::isSplat(v173);
          v90 = *(*v89 + 136);
          if (v90 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            if (v90 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
            {
              v91 = 4;
            }

            else if (v90 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
            {
              v91 = 6;
            }

            else
            {
              v91 = 0;
            }

            goto LABEL_168;
          }

          v153[0] = v89;
          v106 = mlir::IntegerType::getWidth(v153);
          if (v106 == 16)
          {
            if (mlir::IntegerType::getSignedness(v153) == 1)
            {
              v91 = 3;
LABEL_168:
              *(v51 + 20) = 1;
              *(v51 + 21) = v91;
              goto LABEL_169;
            }
          }

          else if (v106 == 8)
          {
            if (mlir::IntegerType::getSignedness(v153) == 2)
            {
              v91 = 2;
            }

            else
            {
              v91 = 1;
            }

            goto LABEL_168;
          }

          v91 = 0;
          goto LABEL_168;
        }
      }
    }

    else
    {
      v63 = 3;
      if (v59 == v175)
      {
        goto LABEL_76;
      }
    }

    free(v59);
    goto LABEL_76;
  }

LABEL_211:
  if (v166[0] != v167)
  {
    free(v166[0]);
  }

  if (__src != v170)
  {
    free(__src);
  }

  v64 = v171[0];
  if (v171[0] != v172)
  {
LABEL_216:
    free(v64);
  }

  return v15;
}