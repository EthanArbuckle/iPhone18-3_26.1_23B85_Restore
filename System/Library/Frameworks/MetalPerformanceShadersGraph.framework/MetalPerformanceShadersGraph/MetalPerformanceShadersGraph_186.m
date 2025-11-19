BOOL mlir::anec::GlobalArgMinMaxAdaptor::verify(mlir::anec::GlobalArgMinMaxAdaptor *this, Location a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v31); i != mlir::DictionaryAttr::end(&v31); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      while (1)
      {
        if (i == mlir::DictionaryAttr::end(&v31))
        {
          v29[0] = "'anec.global_arg_min_max' op requires attribute 'mode'";
          v30 = 259;
          mlir::emitError(a2.var0.var0, v29, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v43 != 1)
          {
            return v5;
          }

          if (v42 != &v43)
          {
            free(v42);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v41;
            v17 = __p;
            if (v41 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v41 = v15;
            operator delete(v17);
          }

          v9 = v38;
          if (!v38)
          {
            goto LABEL_68;
          }

          v18 = v39;
          v11 = v38;
          if (v39 == v38)
          {
            goto LABEL_67;
          }

          do
          {
            v20 = *--v18;
            v19 = v20;
            *v18 = 0;
            if (v20)
            {
              operator delete[](v19);
            }
          }

          while (v18 != v9);
          goto LABEL_66;
        }

        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          break;
        }

        i = (i + 16);
      }

      v21 = *(i + 1);
      if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v29[0] = v14, Value = mlir::AffineMapAttr::getValue(v29), mlir::Type::isUnsignedInteger(&Value, 32)))
      {
        if (!v21)
        {
          return 1;
        }

        if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v29[0] = v21;
          Value = mlir::AffineMapAttr::getValue(v29);
          if (mlir::Type::isSignlessInteger(&Value, 64))
          {
            v33 = v21;
            if (!mlir::IntegerAttr::getInt(&v33))
            {
              return 1;
            }

            v32 = v21;
            if (mlir::IntegerAttr::getInt(&v32) == 1)
            {
              return 1;
            }
          }
        }

        v29[0] = "'anec.global_arg_min_max' op attribute 'mode' failed to satisfy constraint: valid ArgMinMaxMode";
        v30 = 259;
        mlir::emitError(a2.var0.var0, v29, &Value);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
        if (Value)
        {
          mlir::InFlightDiagnostic::report(&Value);
        }

        if (v43 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v35);
        }

        return v5;
      }

      v29[0] = "'anec.global_arg_min_max' op attribute 'axis' failed to satisfy constraint: 32-bit unsigned integer attribute";
      v30 = 259;
      mlir::emitError(a2.var0.var0, v29, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v43 != 1)
      {
        return v5;
      }

      if (v42 != &v43)
      {
        free(v42);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v41;
        v24 = __p;
        if (v41 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v41 = v22;
        operator delete(v24);
      }

      v9 = v38;
      if (!v38)
      {
        goto LABEL_68;
      }

      v25 = v39;
      v11 = v38;
      if (v39 == v38)
      {
        goto LABEL_67;
      }

      do
      {
        v27 = *--v25;
        v26 = v27;
        *v25 = 0;
        if (v27)
        {
          operator delete[](v26);
        }
      }

      while (v25 != v9);
LABEL_66:
      v11 = v38;
      goto LABEL_67;
    }
  }

  v29[0] = "'anec.global_arg_min_max' op requires attribute 'axis'";
  v30 = 259;
  mlir::emitError(a2.var0.var0, v29, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
        goto LABEL_66;
      }

LABEL_67:
      v39 = v9;
      operator delete(v11);
    }

LABEL_68:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

uint64_t mlir::anec::GlobalArgMinMax::getZinIrUnitInfo@<X0>(mlir::anec::GlobalArgMinMax *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  *(v6 + 8) = 0;
  *(v6 + 1) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33F70;
  *(v6 + 1) = 0;
  *(v6 + 10) = 0x40000000BLL;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 16, a2, 0, 0);
  v7 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v18[0] = v7;
  v18[1] = v8;
  Axis = mlir::anec::GlobalArgMinMax::getAxis(this);
  mlir::CallableOpInterface::getArgAttrsAttr(v18);
  DimFromIndex = mlir::anec::getDimFromIndex(Axis, v10);
  if ((DimFromIndex & 0x100000000) != 0)
  {
    v12 = dword_1E0999A44[DimFromIndex];
  }

  else
  {
    v12 = 5;
  }

  *(v6 + 21) = v12;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v14 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v14 + 16 * v15), *(*(*(*this + 48) + 96) + 8));
  result = mlir::IntegerAttr::getInt(&AttrDictionary);
  if (result)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  *(v6 + 20) = v17;
  *a3 = v6;
  return result;
}

void *mlir::anec::GlobalArgMinMax::getAxis(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  mlir::IntegerAttr::getValue(&v9, &__p);
  if (v8 <= 0x40)
  {
    return __p;
  }

  v5 = *__p;
  operator delete[](__p);
  return v5;
}

BOOL mlir::anec::GlobalArgMinMax::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *this, unint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  mlir::CallableOpInterface::getArgAttrsAttr(this);
  v7 = v6;
  Axis = mlir::anec::GlobalArgMinMax::getAxis(a1);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v10 + 16 * v11), *(*(*(*a1 + 6) + 96) + 8));
  mlir::IntegerAttr::getInt(buffer);
  v28 = @"Min";
  v12 = 1;
  *buffer = 1;
  v30[0] = 0;
  ANECUnitValidatorCreate();
  v36[0] = v37;
  v36[1] = 0x100000000;
  v26 = 0;
  v27 = 0;
  if (ANECValidateGlobalArgMinMaxLayer())
  {
    v13 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v30);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, "Invalid configuration", 21);
    std::stringbuf::str();
    v30[0] = *MEMORY[0x1E69E54D8];
    v14 = *(MEMORY[0x1E69E54D8] + 72);
    *(v30 + *(v30[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v31 = v14;
    v32 = MEMORY[0x1E69E5548] + 16;
    if (v34 < 0)
    {
      operator delete(v33[7].__locale_);
    }

    v32 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v33);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v35);
    LOWORD(v33[0].__locale_) = 260;
    v30[0] = &v24;
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v15 = v43;
      if (v43)
      {
        v16 = v44;
        v17 = v43;
        if (v44 != v43)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = v43;
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

    if (v25 < 0)
    {
      operator delete(v24);
    }
  }

  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  ANECUnitValidatorDelete();
  return v12;
}

uint64_t mlir::anec::GlobalArgMinMax::addOpToNetwork(mlir::anec::GlobalArgMinMax *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::GlobalArgMinMax::getZinIrUnitInfo(a1, a2, v22);
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

BOOL mlir::anec::Tile::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58 = *MEMORY[0x1E69E9840];
  v51 = a6;
  LOBYTE(v52) = 0;
  v53 = 0;
  v54 = a7;
  v55 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v51);
    if (v53 == 1)
    {
      v53 = 0;
    }

    mlir::OperationName::OperationName(&v52, "anec.tile", 9, Context);
    v53 = 1;
    a1 = v15;
  }

  v56 = a4;
  v57 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (mlir::anec::TileAdaptor::verify(&v51, v18))
  {
    v48 = v56;
    v49 = 0;
    v19 = (*(mlir::ValueRange::dereference_iterator(&v48, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v19)
    {
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
    }

    else
    {
      v20 = 0;
    }

    v42[0] = v19;
    v42[1] = v20;
    v48 = v50;
    v49 = 0x500000000;
    Value = mlir::AffineMapAttr::getValue(&v51);
    v24 = mlir::DictionaryAttr::end(&v51);
    v25 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v24, **(v52 + 96));
    mlir::getValues<unsigned long>(v25, &v48);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v42);
    v27 = mlir::CallableOpInterface::getArgAttrsAttr(v42);
    v29 = (v27 + 8 * v28);
    v45 = v47;
    v46 = 0x500000000;
    v30 = (v29 - ArgAttrsAttr) >> 3;
    if (v30 < 6)
    {
      v31 = 0;
      v32 = v47;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v30, 8);
      v31 = v46;
      v32 = v45;
    }

    if (v29 != ArgAttrsAttr)
    {
      memcpy(&v32[8 * v31], ArgAttrsAttr, v29 - ArgAttrsAttr);
      v31 = v46;
      v32 = v45;
    }

    v33 = v31 + ((v29 - ArgAttrsAttr) >> 3);
    LODWORD(v46) = v33;
    v34 = v49;
    if (v49 == v33 && v49)
    {
      v35 = v48;
      v36 = v32;
      do
      {
        v37 = *v35++;
        *v36++ *= v37;
        --v34;
      }

      while (v34);
    }

    *&v43 = v32;
    *(&v43 + 1) = v33;
    v44 = 1;
    isSplat = mlir::ElementsAttr::isSplat(v42);
    v39 = mlir::ShapedType::cloneWith(v42, &v43, isSplat);
    v40 = *(a11 + 8);
    if (v40 >= *(a11 + 12))
    {
      v41 = v39;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v40 + 1, 8);
      v39 = v41;
      LODWORD(v40) = *(a11 + 8);
    }

    *(*a11 + 8 * v40) = v39;
    ++*(a11 + 8);
    if (v45 != v47)
    {
      free(v45);
    }

    if (v48 != v50)
    {
      free(v48);
    }

    return 1;
  }

  else
  {
    v21.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v21, "Failed to verify adaptor");
  }
}

BOOL mlir::anec::TileAdaptor::verify(mlir::anec::TileAdaptor *this, Location a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v32); i != mlir::DictionaryAttr::end(&v32); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v30[0] = v14;
        v30[1] = v15;
        Type = mlir::ElementsAttr::getType(v30);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v33[0] = v17;
        v33[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v33);
        if (v18 == 1)
        {
          v27 = v14;
          v28[0] = mlir::ArrayAttr::getValue(&v27);
          v28[1] = v19;
          isSplat = mlir::ElementsAttr::isSplat(v28);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v30[0] = "'anec.tile' op attribute 'multipliers' failed to satisfy constraint: ui64 elements attribute of rank 1";
      v31 = 259;
      mlir::emitError(a2.var0.var0, v30, v33);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }

      if (v41 == 1)
      {
        if (v40 != &v41)
        {
          free(v40);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v39;
          v22 = __p;
          if (v39 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v39 = v20;
          operator delete(v22);
        }

        v9 = v36;
        if (!v36)
        {
          goto LABEL_46;
        }

        v23 = v37;
        v11 = v36;
        if (v37 == v36)
        {
LABEL_45:
          v37 = v9;
          operator delete(v11);
LABEL_46:
          if (v34 != &v35)
          {
            free(v34);
          }

          return v5;
        }

        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v23 != v9);
LABEL_44:
        v11 = v36;
        goto LABEL_45;
      }

      return v5;
    }
  }

  v30[0] = "'anec.tile' op requires attribute 'multipliers'";
  v31 = 259;
  mlir::emitError(a2.var0.var0, v30, v33);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v39;
      v8 = __p;
      if (v39 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v39 = v6;
      operator delete(v8);
    }

    v9 = v36;
    if (!v36)
    {
      goto LABEL_46;
    }

    v10 = v37;
    v11 = v36;
    if (v37 == v36)
    {
      goto LABEL_45;
    }

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
    goto LABEL_44;
  }

  return v5;
}

void mlir::anec::Tile::getZinIrUnitInfo(mlir::anec::Tile *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v22[6] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x78uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33F90;
  *(v6 + 1) = 0;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 28) = 1065353216;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 45, a2, 0, 0);
  v21[0] = v22;
  v21[1] = 0x600000000;
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v20);
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  v8 = mlir::ArrayAttr::getValue(v20);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*this + 48) + 96));
  mlir::getValues<unsigned long>(v10, v21);
  v11 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v20[0] = v11;
  v20[1] = v12;
  mlir::CallableOpInterface::getArgAttrsAttr(v20);
  if (v13)
  {
    v14 = v13;
    for (i = 0; i != v14; i = (i + 1))
    {
      v17 = *(v21[0] + i);
      DimFromIndex = mlir::anec::getDimFromIndex(i, v14);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v16 = dword_1E0999A44[DimFromIndex];
      }

      else
      {
        v16 = 5;
      }

      v19 = v16;
      v20[0] = &v19;
      *(std::__hash_table<std::__hash_value_type<ZinIrDimension,int>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,int>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((v6 + 80), &v19, &std::piecewise_construct, v20) + 5) = v17;
    }
  }

  *a3 = v6;
  if (v21[0] != v22)
  {
    free(v21[0]);
  }
}

BOOL mlir::anec::Tile::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3)
{
  v67 = *MEMORY[0x1E69E9840];
  ANECTileLayerDescInitialize();
  v55 = v57;
  v56 = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::ArrayAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v9, &v55);
  v10 = v56;
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  if (v11 == v10)
  {
    if (v56 == 4)
    {
      *buffer = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v55, v55 + 16, buffer);
    }

    v12 = *(v55 + 1);
    v40 = *v55;
    v43 = v12;
    v44[0] = 0;
    v41 = *(v55 + 1);
    v42 = *(v55 + 4);
    v13 = 1;
    *buffer = 1;
    ANECUnitValidatorCreate();
    v53[0] = v54;
    v53[1] = 0x100000000;
    v38 = 0;
    v39 = 0;
    if (ANECValidateTileLayer())
    {
      v14 = *a1;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v44);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v45, "Invalid configuration", 21);
      std::stringbuf::str();
      v44[0] = *MEMORY[0x1E69E54D8];
      v15 = *(MEMORY[0x1E69E54D8] + 72);
      *(v44 + *(v44[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v45 = v15;
      v46 = MEMORY[0x1E69E5548] + 16;
      if (v51 < 0)
      {
        operator delete(v50[2]);
      }

      v46 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v47);
      std::iostream::~basic_iostream();
      MEMORY[0x1E12E5AA0](&v52);
      LOWORD(v47.__locale_) = 260;
      v44[0] = &v36;
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
      if (*buffer)
      {
        mlir::InFlightDiagnostic::report(buffer);
      }

      if (v66[0] == 1)
      {
        if (v65 != v66)
        {
          free(v65);
        }

        v16 = v63;
        if (v63)
        {
          v17 = v64;
          v18 = v63;
          if (v64 != v63)
          {
            do
            {
              v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
            }

            while (v17 != v16);
            v18 = v63;
          }

          v64 = v16;
          operator delete(v18);
        }

        v19 = v61;
        if (v61)
        {
          v20 = v62;
          v21 = v61;
          if (v62 != v61)
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
            v21 = v61;
          }

          v62 = v19;
          operator delete(v21);
        }

        if (v59 != v60)
        {
          free(v59);
        }
      }

      if (v37 < 0)
      {
        operator delete(v36);
      }
    }

    if (v53[0] != v54)
    {
      free(v53[0]);
    }

    ANECUnitValidatorDelete();
  }

  else
  {
    v24 = *a1;
    v25 = v56;
    mlir::CallableOpInterface::getArgAttrsAttr(a2);
    v44[0] = "failed: the number of multipliers ({0}) must be equal to rank ({1})";
    v44[1] = 67;
    v45 = v50;
    v46 = 2;
    LOBYTE(v47.__locale_) = 1;
    v48[0] = &unk_1F5B2E980;
    v48[1] = v25;
    v49[0] = &unk_1F5B17290;
    v49[1] = v26;
    v50[0] = v48;
    v50[1] = v49;
    v54[8] = 263;
    v53[0] = v44;
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v66[0] == 1)
    {
      if (v65 != v66)
      {
        free(v65);
      }

      v27 = v63;
      if (v63)
      {
        v28 = v64;
        v29 = v63;
        if (v64 != v63)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = v63;
        }

        v64 = v27;
        operator delete(v29);
      }

      v30 = v61;
      if (v61)
      {
        v31 = v62;
        v32 = v61;
        if (v62 != v61)
        {
          do
          {
            v34 = *--v31;
            v33 = v34;
            *v31 = 0;
            if (v34)
            {
              operator delete[](v33);
            }
          }

          while (v31 != v30);
          v32 = v61;
        }

        v62 = v30;
        operator delete(v32);
      }

      if (v59 != v60)
      {
        free(v59);
      }
    }
  }

  if (v55 != v57)
  {
    free(v55);
  }

  return v13;
}

uint64_t mlir::anec::Tile::addOpToNetwork(mlir::anec::Tile *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Tile::getZinIrUnitInfo(a1, a2, v22);
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

BOOL mlir::anec::DeQuant::getZinIrUnitInfo@<W0>(mlir::anec::DeQuant *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x90uLL);
  *(v6 + 1) = 0u;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33FB0;
  *(v6 + 1) = 0;
  v6[80] = 0;
  *(v6 + 84) = -1;
  *(v6 + 12) = -1;
  v6[104] = 0;
  *(v6 + 108) = -1;
  *(v6 + 15) = -1;
  *(v6 + 32) = 1065353216;
  *(v6 + 132) = 0x600000000;
  *(v6 + 35) = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 59, a2, 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9 - 16), **(*(*this + 48) + 96));
  mlir::FloatAttr::getValue(&v14, &AttrDictionary);
  *(v6 + 32) = llvm::APFloat::convertToFloat(&AttrDictionary);
  v10 = v16[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v11) == v10)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
  }

  *(v6 + 33) = mlir::anec::DeQuant::getZeroPoint(this);
  AttrDictionary = mlir::getElementTypeOrSelf(*(*(*this + 72) + 24));
  result = mlir::Type::isSignedInteger(&AttrDictionary);
  if (result)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *(v6 + 35) = v13;
  *a3 = v6;
  return result;
}

void *mlir::anec::DeQuant::getScale@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 16), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

uint64_t mlir::anec::DeQuant::getZeroPoint(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  mlir::IntegerAttr::getValue(&v9, &__p);
  if (v8 > 0x40)
  {
    v5 = *__p;
    operator delete[](__p);
  }

  else if (v8)
  {
    return ((__p << -v8) >> -v8);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t mlir::anec::DeQuant::addOpToNetwork(mlir::anec::DeQuant *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::DeQuant::getZinIrUnitInfo(a1, a2, v22);
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

uint64_t mlir::anec::Quant::getZinIrUnitInfo@<X0>(mlir::anec::Quant *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x90uLL);
  *(v6 + 1) = 0u;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33FD0;
  *(v6 + 1) = 0;
  v6[80] = 0;
  *(v6 + 84) = -1;
  *(v6 + 12) = -1;
  v6[104] = 0;
  *(v6 + 108) = -1;
  *(v6 + 15) = -1;
  *(v6 + 32) = 1065353216;
  *(v6 + 132) = 0x600000000;
  *(v6 + 35) = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 58, a2, 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9 - 16), **(*(*this + 48) + 96));
  mlir::FloatAttr::getValue(&v13, &AttrDictionary);
  *(v6 + 32) = llvm::APFloat::convertToFloat(&AttrDictionary);
  v10 = v15[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v11) == v10)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v15);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v15);
  }

  result = mlir::anec::DeQuant::getZeroPoint(this);
  *(v6 + 33) = result;
  *a3 = v6;
  return result;
}

uint64_t mlir::anec::Quant::addOpToNetwork(mlir::anec::Quant *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Quant::getZinIrUnitInfo(a1, a2, v22);
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

BOOL mlir::anec::Resample::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = a6;
  v28[0] = 0;
  v29 = 0;
  v30 = a7;
  v31 = a8;
  if (a6)
  {
    v13 = a1;
    Context = mlir::Attribute::getContext(&v27);
    if (v29 == 1)
    {
      v29 = 0;
    }

    mlir::OperationName::OperationName(v28, "anec.resample", 13, Context);
    v29 = 1;
    a1 = v13;
  }

  v32 = a4;
  v33 = a5;
  v15 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v16.var0.var0 = a2;
  }

  else
  {
    v16.var0.var0 = v15;
  }

  if (mlir::anec::ResampleAdaptor::verify(&v27, v16))
  {
    v17 = mlir::TypeRange::dereference_iterator(a9, 0);
    v18 = v17;
    if (v17)
    {
      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    }

    v24[0] = v18;
    v24[1] = v17;
    v19 = mlir::TypeRange::dereference_iterator(a9, 1);
    if (v19)
    {
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
    }

    mlir::CallableOpInterface::getArgAttrsAttr(v24);
    if ((v20 - 6) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v25[0] = &v26;
      v25[1] = 0xC00000000;
      mlir::anec::getANEDefaultLayout(v20, v25);
    }

    v21.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v21, "Unsupported promoted rank.");
  }

  else
  {
    v23.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v23, "Failed to verify adaptor");
  }
}

BOOL mlir::anec::ResampleAdaptor::verify(mlir::anec::ResampleAdaptor *this, Location a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v75 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v75); i != mlir::DictionaryAttr::end(&v75); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v75))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v75))
          {
            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v75))
              {
                if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 24))
                {
                  v36 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v72 = "'anec.resample' op requires attribute 'padding_modes'";
                      v74 = 259;
                      mlir::emitError(a2.var0.var0, &v72, &Value);
                      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                      if (Value)
                      {
                        mlir::InFlightDiagnostic::report(&Value);
                      }

                      if (v86 == 1)
                      {
                        mlir::Diagnostic::~Diagnostic(&v78);
                      }

                      return v5;
                    }

                    if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 32))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v37 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v38 = "'anec.resample' op requires attribute 'sampling_method'";
                      goto LABEL_151;
                    }

                    if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 40))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v39 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v38 = "'anec.resample' op requires attribute 'warp_coordinate_mode'";
                      goto LABEL_151;
                    }

                    if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 48))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v40 = *(i + 1);
                  if (!v21)
                  {
                    goto LABEL_154;
                  }

                  v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                  v72 = v21;
                  v73 = v41;
                  Type = mlir::ElementsAttr::getType(&v72);
                  v43 = Type;
                  if (Type)
                  {
                    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                  }

                  Value = v43;
                  v78 = Type;
                  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                  v76 = 2;
                  if (v45 == 1 && *ArgAttrsAttr == v76 && (v71 = v21, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_0>(&v71) & 1) != 0))
                  {
LABEL_154:
                    if (!v36)
                    {
                      goto LABEL_155;
                    }

                    v46 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v36 + 8);
                    v72 = v36;
                    v73 = v46;
                    v47 = mlir::ElementsAttr::getType(&v72);
                    v48 = v47;
                    if (v47)
                    {
                      v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
                    }

                    Value = v48;
                    v78 = v47;
                    v49 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                    v76 = 2;
                    if (v50 == 1 && *v49 == v76 && (v71 = v36, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                    {
LABEL_155:
                      if (!v28)
                      {
                        goto LABEL_156;
                      }

                      v51 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                      v72 = v28;
                      v73 = v51;
                      v52 = mlir::ElementsAttr::getType(&v72);
                      v53 = v52;
                      if (v52)
                      {
                        v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                      }

                      Value = v53;
                      v78 = v52;
                      v54 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                      v76 = 2;
                      if (v55 == 1 && *v54 == v76 && (v71 = v28, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                      {
LABEL_156:
                        if (!v40)
                        {
                          goto LABEL_157;
                        }

                        v56 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v40 + 8);
                        v72 = v40;
                        v73 = v56;
                        v57 = mlir::ElementsAttr::getType(&v72);
                        v58 = v57;
                        if (v57)
                        {
                          v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v57 + 8);
                        }

                        Value = v58;
                        v78 = v57;
                        v59 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                        v76 = 1;
                        if (v60 == 1 && *v59 == v76 && (v71 = v40, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                        {
LABEL_157:
                          if (!v39)
                          {
                            goto LABEL_158;
                          }

                          v61 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v39 + 8);
                          v72 = v39;
                          v73 = v61;
                          v62 = mlir::ElementsAttr::getType(&v72);
                          v63 = v62;
                          if (v62)
                          {
                            v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v62 + 8);
                          }

                          Value = v63;
                          v78 = v62;
                          v64 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                          v76 = 2;
                          if (v65 == 1 && *v64 == v76 && (v71 = v39, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                          {
LABEL_158:
                            if (!v37)
                            {
                              goto LABEL_159;
                            }

                            v66 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v37 + 8);
                            v72 = v37;
                            v73 = v66;
                            v67 = mlir::ElementsAttr::getType(&v72);
                            v68 = v67;
                            if (v67)
                            {
                              v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
                            }

                            Value = v68;
                            v78 = v67;
                            v69 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                            v76 = 2;
                            if (v70 == 1 && *v69 == v76 && (v71 = v37, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_4>(&v71) & 1) != 0))
                            {
LABEL_159:
                              if (!v14)
                              {
                                return 1;
                              }

                              if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
                              {
                                v72 = v14;
                                Value = mlir::AffineMapAttr::getValue(&v72);
                                if (mlir::Type::isF16(&Value))
                                {
                                  return 1;
                                }
                              }

                              v38 = "'anec.resample' op attribute 'background_value' failed to satisfy constraint: 16-bit float attribute";
                            }

                            else
                            {
                              v38 = "'anec.resample' op attribute 'padding_modes' failed to satisfy constraint: PaddingMode elements attribute of shape {2}";
                            }
                          }

                          else
                          {
                            v38 = "'anec.resample' op attribute 'sampling_method' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {2}";
                          }
                        }

                        else
                        {
                          v38 = "'anec.resample' op attribute 'warp_coordinate_mode' failed to satisfy constraint: WarpCoordinateMode elements attribute of shape {1}";
                        }
                      }

                      else
                      {
                        v38 = "'anec.resample' op attribute 'coordinate_type' failed to satisfy constraint: CoordinateType elements attribute of shape {2}";
                      }
                    }

                    else
                    {
                      v38 = "'anec.resample' op attribute 'normalized_range' failed to satisfy constraint: NormalizedCoordinateRange elements attribute of shape {2}";
                    }
                  }

                  else
                  {
                    v38 = "'anec.resample' op attribute 'coordinate_mode' failed to satisfy constraint: CoordinateMode elements attribute of shape {2}";
                  }

LABEL_151:
                  v72 = v38;
                  v74 = 259;
                  mlir::emitError(a2.var0.var0, &v72, &Value);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
                  return v5;
                }

                i = (i + 16);
              }

              v72 = "'anec.resample' op requires attribute 'normalized_range'";
              v74 = 259;
              mlir::emitError(a2.var0.var0, &v72, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v86 != 1)
              {
                return v5;
              }

              if (v85 != &v86)
              {
                free(v85);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v84;
                v31 = __p;
                if (v84 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v84 = v29;
                operator delete(v31);
              }

              v9 = v81;
              if (!v81)
              {
                goto LABEL_83;
              }

              v32 = v82;
              v11 = v81;
              if (v82 == v81)
              {
                goto LABEL_82;
              }

              do
              {
                v34 = *--v32;
                v33 = v34;
                *v32 = 0;
                if (v34)
                {
                  operator delete[](v33);
                }
              }

              while (v32 != v9);
              goto LABEL_81;
            }

            i = (i + 16);
          }

          v72 = "'anec.resample' op requires attribute 'coordinate_type'";
          v74 = 259;
          mlir::emitError(a2.var0.var0, &v72, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v86 != 1)
          {
            return v5;
          }

          if (v85 != &v86)
          {
            free(v85);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v84;
            v24 = __p;
            if (v84 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v84 = v22;
            operator delete(v24);
          }

          v9 = v81;
          if (!v81)
          {
            goto LABEL_83;
          }

          v25 = v82;
          v11 = v81;
          if (v82 == v81)
          {
            goto LABEL_82;
          }

          do
          {
            v27 = *--v25;
            v26 = v27;
            *v25 = 0;
            if (v27)
            {
              operator delete[](v26);
            }
          }

          while (v25 != v9);
          goto LABEL_81;
        }

        i = (i + 16);
      }

      v72 = "'anec.resample' op requires attribute 'coordinate_mode'";
      v74 = 259;
      mlir::emitError(a2.var0.var0, &v72, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v86 != 1)
      {
        return v5;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v84;
        v17 = __p;
        if (v84 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v84 = v15;
        operator delete(v17);
      }

      v9 = v81;
      if (!v81)
      {
        goto LABEL_83;
      }

      v18 = v82;
      v11 = v81;
      if (v82 == v81)
      {
        goto LABEL_82;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v18 != v9);
LABEL_81:
      v11 = v81;
      goto LABEL_82;
    }
  }

  v72 = "'anec.resample' op requires attribute 'background_value'";
  v74 = 259;
  mlir::emitError(a2.var0.var0, &v72, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v84;
      v8 = __p;
      if (v84 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v84 = v6;
      operator delete(v8);
    }

    v9 = v81;
    if (v81)
    {
      v10 = v82;
      v11 = v81;
      if (v82 != v81)
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
        goto LABEL_81;
      }

LABEL_82:
      v82 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v79 != &v80)
    {
      free(v79);
    }
  }

  return v5;
}

void mlir::anec::Resample::getZinIrUnitInfo(mlir::anec::Resample *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v5 = operator new(0xC0uLL);
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 8) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 9) = -1;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 138) = 0u;
  *v5 = &unk_1F5B33FF0;
  *(v5 + 1) = 0;
  *(v5 + 20) = 0;
  v6 = (v5 + 160);
  *(v5 + 21) = 0;
  *(v5 + 22) = 0;
  *(v5 + 46) = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v5, 43, a2, 0, 0);
  v58[0] = v59;
  v58[1] = 0x200000000;
  v56[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v56);
  v56[0] = mlir::Operation::getAttrDictionary(*this);
  v8 = mlir::ArrayAttr::getValue(v56);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v8 + 16 * v9 - 80), *(*(*(*this + 48) + 96) + 8));
  mlir::getValues<unsigned long>(v10, v58);
  v56[0] = v57;
  v56[1] = 0x200000000;
  v54[0] = mlir::Operation::getAttrDictionary(*this);
  v11 = mlir::ArrayAttr::getValue(v54);
  v54[0] = mlir::Operation::getAttrDictionary(*this);
  v12 = mlir::ArrayAttr::getValue(v54);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v11 + 48), (v12 + 16 * v13 - 48), *(*(*(*this + 48) + 96) + 24));
  mlir::getValues<unsigned long>(v14, v56);
  v54[0] = v55;
  v54[1] = 0x200000000;
  v52[0] = mlir::Operation::getAttrDictionary(*this);
  v15 = mlir::ArrayAttr::getValue(v52);
  v52[0] = mlir::Operation::getAttrDictionary(*this);
  v16 = mlir::ArrayAttr::getValue(v52);
  v18 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v15 + 64), (v16 + 16 * v17 - 32), *(*(*(*this + 48) + 96) + 32));
  mlir::getValues<unsigned long>(v18, v54);
  v52[0] = v53;
  v52[1] = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v19 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v20 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v22 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v19 + 80), (v20 + 16 * v21 - 16), *(*(*(*this + 48) + 96) + 40));
  mlir::getValues<unsigned long>(v22, v52);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v23 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v24 = mlir::ArrayAttr::getValue(&AttrDictionary);
  __p = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v23, (v24 + 16 * v25 - 96), **(*(*this + 48) + 96));
  v26 = mlir::FloatAttr::getValue(&__p, &AttrDictionary);
  v27 = v50;
  v28 = llvm::APFloatBase::PPCDoubleDouble(v26);
  if (v28 == v27)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v50, &__p);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v50, &__p);
  }

  v29 = v47;
  if (v47 < 0x41)
  {
    if (__p >= 0xFFFF)
    {
      LOWORD(v30) = -1;
    }

    else
    {
      LOWORD(v30) = __p;
    }

    goto LABEL_15;
  }

  if (v29 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
  {
    if (*__p >= 0xFFFFuLL)
    {
      LOWORD(v30) = -1;
    }

    else
    {
      v30 = *__p;
    }

    goto LABEL_14;
  }

  LOWORD(v30) = -1;
  if (__p)
  {
LABEL_14:
    operator delete[](__p);
  }

LABEL_15:
  if (v28 == v50)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v50);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v50);
  }

  AttrDictionary = v51;
  v50 = 0x200000000;
  __p = mlir::Operation::getAttrDictionary(*this);
  v31 = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v32 = mlir::ArrayAttr::getValue(&__p);
  v34 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v31 + 32), (v32 + 16 * v33 - 64), *(*(*(*this + 48) + 96) + 16));
  mlir::getValues<unsigned long>(v34, &AttrDictionary);
  DimFromIndex = mlir::anec::getDimFromIndex(0, 2uLL);
  if ((DimFromIndex & 0x100000000) != 0)
  {
    v36 = dword_1E0999A44[DimFromIndex];
  }

  else
  {
    v36 = 5;
  }

  LODWORD(__p) = v36;
  HIDWORD(__p) = *AttrDictionary != 0;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](v6, &__p);
  __p = 0;
  v37 = mlir::anec::getDimFromIndex(1, 2uLL);
  if ((v37 & 0x100000000) != 0)
  {
    v38 = dword_1E0999A44[v37];
  }

  else
  {
    v38 = 5;
  }

  __p = __PAIR64__(*(AttrDictionary + 1) != 0, v38);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](v6, &__p);
  __p = &v48;
  v47 = 0x100000000;
  v45 = mlir::Operation::getAttrDictionary(*this);
  v39 = mlir::ArrayAttr::getValue(&v45);
  v45 = mlir::Operation::getAttrDictionary(*this);
  v40 = mlir::ArrayAttr::getValue(&v45);
  v42 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v39 + 96), (v40 + 16 * v41), *(*(*(*this + 48) + 96) + 48));
  mlir::getValues<unsigned long>(v42, &__p);
  v43 = __p;
  *(v5 + 46) = *__p != 0;
  *a3 = v5;
  if (v43 != &v48)
  {
    free(v43);
  }

  if (AttrDictionary != v51)
  {
    free(AttrDictionary);
  }

  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  if (v54[0] != v55)
  {
    free(v54[0]);
  }

  if (v56[0] != v57)
  {
    free(v56[0]);
  }

  if (v58[0] != v59)
  {
    free(v58[0]);
  }
}

uint64_t mlir::anec::Resample::getCoordinateMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::Resample::getNormalizedRange(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 48), *(*(*(*this + 6) + 96) + 24));
}

uint64_t mlir::anec::Resample::getPaddingModes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 64), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 32));
}

uint64_t mlir::anec::Resample::getSamplingMethod(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 80), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 40));
}

void *mlir::anec::Resample::getBackgroundValue@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 96), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

uint64_t mlir::anec::Resample::getCoordinateType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 64), *(*(*(*this + 6) + 96) + 16));
}

uint64_t mlir::anec::Resample::getWarpCoordinateMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 96), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 48));
}

uint64_t mlir::anec::Resample::addOpToNetwork(mlir::anec::Resample *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Resample::getZinIrUnitInfo(a1, a2, v22);
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

uint64_t mlir::anec::State::addOpToNetwork(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  Context = mlir::Attribute::getContext((v3 + 24));
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v12 = 261;
  v11[0] = p_p;
  v11[1] = size;
  v7 = mlir::StringAttr::get(Context, v11);
  v8 = mlir::Attribute::getContext((v3 + 24));
  v15 = 261;
  v14[0] = "name";
  v14[1] = 4;
  v9 = mlir::StringAttr::get(v8, v14);
  mlir::Operation::setAttr(v3, v9, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void mlir::anec::anonymous namespace::computeValueName(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v13 = a1;
  if (mlir::Value::getDefiningOp(&v13))
  {
    DefiningOp = mlir::Value::getDefiningOp(&v13);
    mlir::anec::computeOpKeyString(DefiningOp, a3);
    return;
  }

  v6 = v13;
  if ((~*(v13 + 8) & 7) != 0)
  {
    v6 = 0;
  }

  v19 = *(v6 + 24);
  v14[0] = "";
  v14[1] = 0;
  v14[2] = "__arg";
  v15 = 773;
  v16.__r_.__value_.__r.__words[0] = v14;
  v16.__r_.__value_.__r.__words[2] = &v19;
  v18 = 3330;
  llvm::Twine::str(&v16, &__p);
  v7 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a2 + 584), &__p);
  v8 = v7 != 0;
  if (v7)
  {
    v9 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a2 + 584), &__p);
    if (!v9)
    {
      abort();
    }

    if (*(v9 + 63) < 0)
    {
      p_p = &v16;
      std::string::__init_copy_ctor_external(&v16, v9[5], v9[6]);
    }

    else
    {
      v16 = *(v9 + 5);
      p_p = &v16;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
    v16.__r_.__value_.__s.__data_[0] = 0;
    p_p = &__p;
  }

  v17 = v11;
  if (SHIBYTE(p_p->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, p_p->__r_.__value_.__l.__data_, p_p->__r_.__value_.__l.__size_);
    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    goto LABEL_18;
  }

  *&a3->__r_.__value_.__l.__data_ = *&p_p->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = p_p->__r_.__value_.__r.__words[2];
  if (v8)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t mlir::anec::RingBufferWriter::addOpToNetwork(mlir::Block ***a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    AttrDictionary = "network should not be nullptr";
    v46[4] = 259;
    mlir::OpState::emitError(a1, &AttrDictionary, &v53);
    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
    if (v53.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v53);
    }

    if (v61 == 1)
    {
      if (v60 != &v61)
      {
        free(v60);
      }

      v32 = v58;
      if (v58)
      {
        v33 = v59;
        v34 = v58;
        if (v59 != v58)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = v58;
        }

        v59 = v32;
        operator delete(v34);
      }

      v35 = v56;
      if (v56)
      {
        v36 = v57;
        v37 = v56;
        if (v57 != v56)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              operator delete[](v38);
            }
          }

          while (v36 != v35);
          v37 = v56;
        }

        v57 = v35;
        operator delete(v37);
      }

      if (v54 != &v55)
      {
        free(v54);
      }
    }

    return v31;
  }

  v3 = *a1;
  v43 = *((*a1)[9] + 3);
  v4 = v43;
  v5 = operator new(0xA0uLL);
  *(v5 + 1) = 0;
  v6 = (v5 + 8);
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 8) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 9) = -1;
  *v5 = &unk_1F5B34018;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 28) = 1065353216;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 38) = 1065353216;
  mlir::anec::fillZinIrCommonInfo(v3, v5, 61, a2, 2uLL, 1u);
  v7 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v7 = 0;
  }

  v53.__r_.__value_.__r.__words[0] = v7;
  mlir::ArrayAttr::getValue(&v53);
  v9 = v8;
  v53.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v3);
  Value = mlir::ArrayAttr::getValue(&v53);
  v53.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v3);
  v11 = mlir::ArrayAttr::getValue(&v53);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v11 + 16 * v12), *(*(v3[6] + 12) + 8));
  v53.__r_.__value_.__r.__words[0] = &v53.__r_.__value_.__r.__words[2];
  v53.__r_.__value_.__l.__size_ = 0x500000000;
  mlir::getValues<unsigned long>(v13, &v53);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v14 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v15 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v17 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v14, (v15 + 16 * v16 - 16), **(v3[6] + 12));
  AttrDictionary = v46;
  v45 = xmmword_1E0999990;
  mlir::getValues<unsigned char>(v17, &AttrDictionary);
  v50 = &v52;
  v51 = xmmword_1E0999990;
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v18 = v3[9];
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v18 = 0;
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = v18 + 64;
  do
  {
    DimFromIndex = mlir::anec::getDimFromIndex(v19, v9);
    if ((DimFromIndex & 0x100000000) != 0)
    {
      v23 = dword_1E0999A44[DimFromIndex];
    }

    else
    {
      v23 = 5;
    }

    if (*(v19 + AttrDictionary))
    {
      if ((~*(*&v21[32 * v20 + 24] + 8) & 7) != 0)
      {
        v24 = 0;
      }

      else
      {
        v24 = *&v21[32 * v20 + 24];
      }

      LODWORD(v47) = v23;
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v49;
      }

      std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,std::string>>((v5 + 80), &v47, &v47);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_24:
          operator delete(v49.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_24;
      }

      ++v20;
      goto LABEL_8;
    }

    v25 = *(v53.__r_.__value_.__r.__words[0] + 8 * v19);
    v47 = v23;
    __p.__r_.__value_.__r.__words[0] = v25;
    std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,unsigned long>>((v5 + 120), &v47, &v47);
LABEL_8:
    v19 = (v19 + 1);
  }

  while (v9 != v19);
  v6 = (v5 + 8);
  if (v50 != &v52)
  {
    free(v50);
  }

LABEL_27:
  if (AttrDictionary != v46)
  {
    free(AttrDictionary);
  }

  if (v53.__r_.__value_.__l.__data_ != &v53.__r_.__value_.__r.__words[2])
  {
    free(v53.__r_.__value_.__l.__data_);
  }

  DefiningOp = mlir::Value::getDefiningOp(&v43);
  mlir::anec::computeOpKeyString(DefiningOp, &v53);
  AttrDictionary = &v53;
  v27 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 61), &v53, &std::piecewise_construct, &AttrDictionary);
  std::string::operator=((v27 + 40), v6);
  v28 = operator new(0xC8uLL);
  v29 = v28;
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *v28 = &unk_1F5B2E830;
  v30 = v28 + 24;
  *(v28 + 3) = &unk_1F5B2E868;
  if (v5[31] < 0)
  {
    std::string::__init_copy_ctor_external((v28 + 32), *(v5 + 1), *(v5 + 2));
  }

  else
  {
    *(v28 + 2) = *&v6->__r_.__value_.__l.__data_;
    *(v28 + 6) = *(&v6->__r_.__value_.__l + 2);
  }

  *(v29 + 14) = 17;
  *(v29 + 3) = &unk_1F5B34308;
  *(v29 + 8) = v5;
  v29[72] = 0;
  *(v29 + 10) = 0;
  *(v29 + 11) = v29 + 104;
  *(v29 + 12) = 0x100000000;
  *(v29 + 17) = v29 + 152;
  *(v29 + 18) = 0x300000000;
  *&v42 = v30;
  *(&v42 + 1) = v29;
  mlir::anec::ANECIRNetwork::AddUnit(a2, &v42);
  v40 = *(&v42 + 1);
  if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_53:
      operator delete(v53.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_53;
  }

  return 1;
}

uint64_t mlir::anec::RingBufferReader::inferPromotedReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36[6] = *MEMORY[0x1E69E9840];
  v27 = a6;
  v11 = mlir::TypeRange::dereference_iterator(a9, 0);
  v12 = v11;
  if (v11)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  v26[0] = v12;
  v26[1] = v11;
  mlir::CallableOpInterface::getArgAttrsAttr(v26);
  v14 = v13;
  v37.var0 = "slice_size";
  v37.var1 = 10;
  v15 = mlir::DictionaryAttr::get(&v27, v37);
  if (v15)
  {
    v16 = v15;
    if (mlir::DenseIntElementsAttr::classof(v15))
    {
      v15 = v16;
    }

    else
    {
      v15 = 0;
    }
  }

  v34 = v36;
  v35 = 0x600000000;
  mlir::getValues<long long>(v15, &v34);
  v17 = v35;
  if (v14 > v35)
  {
    __src = v33;
    v32 = 6;
    if (v14 <= 6)
    {
      v19 = 8 * v14;
      v18 = v33;
    }

    else
    {
      v31 = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v33, v14, 8);
      v18 = __src;
      v19 = 8 * v14;
    }

    memset_pattern16(v18, &unk_1E096FAE0, v19);
    v31 = v14;
    v28[0] = &v29;
    v28[1] = 0xC00000000;
    mlir::anec::getANEDefaultLayout(v17, v28);
  }

  v20 = v34;
  isSplat = mlir::ElementsAttr::isSplat(v26);
  v22 = mlir::MemRefType::get(v20, v17, isSplat, 0, 0, 0);
  v23 = *(a11 + 8);
  if (v23 >= *(a11 + 12))
  {
    v25 = v22;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v23 + 1, 8);
    v22 = v25;
    LODWORD(v23) = *(a11 + 8);
  }

  *(*a11 + 8 * v23) = v22;
  ++*(a11 + 8);
  if (v34 != v36)
  {
    free(v34);
  }

  return 1;
}

uint64_t mlir::anec::RingBufferReader::addOpToNetwork(mlir::Block ***a1, void *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a1;
    v4 = *((*a1)[9] + 3);
    v5 = operator new(0xC8uLL);
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 8) = 0;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 9) = -1;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 28) = 1065353216;
    *(v5 + 120) = 0u;
    *(v5 + 136) = 0u;
    *(v5 + 38) = 1065353216;
    *v5 = &unk_1F5B34038;
    *(v5 + 10) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 48) = 1065353216;
    mlir::anec::fillZinIrCommonInfo(v3, v5, 62, a2, 1uLL, 1u);
    v6 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v6 = 0;
    }

    v54[0] = v6;
    mlir::ArrayAttr::getValue(v54);
    v8 = v7;
    v54[0] = mlir::Operation::getAttrDictionary(v3);
    Value = mlir::ArrayAttr::getValue(v54);
    v54[0] = mlir::Operation::getAttrDictionary(v3);
    v10 = mlir::ArrayAttr::getValue(v54);
    v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v10 + 16 * v11 - 16), *(*(*(v3 + 48) + 96) + 8));
    v54[0] = &v55;
    v54[1] = 0x500000000;
    mlir::getValues<unsigned long>(v12, v54);
    AttrDictionary = mlir::Operation::getAttrDictionary(v3);
    v13 = mlir::ArrayAttr::getValue(&AttrDictionary);
    AttrDictionary = mlir::Operation::getAttrDictionary(v3);
    v14 = mlir::ArrayAttr::getValue(&AttrDictionary);
    v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v13, (v14 + 16 * v15 - 32), **(*(v3 + 48) + 96));
    AttrDictionary = v47;
    v46 = xmmword_1E0999990;
    mlir::getValues<unsigned char>(v16, &AttrDictionary);
    v51 = &v53;
    v52 = xmmword_1E0999990;
    v48 = mlir::Operation::getAttrDictionary(v3);
    v17 = mlir::ArrayAttr::getValue(&v48);
    v48 = mlir::Operation::getAttrDictionary(v3);
    v18 = mlir::ArrayAttr::getValue(&v48);
    v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v17 + 32), (v18 + 16 * v19), *(*(*(v3 + 48) + 96) + 16));
    mlir::getValues<unsigned char>(v20, &v51);
    if ((*(v3 + 46) & 0x80) != 0)
    {
      v21 = *(v3 + 72);
      if (v8)
      {
LABEL_6:
        v22 = 0;
        v23 = 0;
        v24 = v21 + 32;
        do
        {
          DimFromIndex = mlir::anec::getDimFromIndex(v22, v8);
          if ((DimFromIndex & 0x100000000) != 0)
          {
            v27 = dword_1E0999A44[DimFromIndex];
          }

          else
          {
            v27 = 5;
          }

          if (!*(v22 + AttrDictionary))
          {
            v29 = *(v54[0] + v22);
            v48 = v27;
            __p.__r_.__value_.__r.__words[0] = v29;
            std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,unsigned long>>((v5 + 120), &v48, &v48);
            goto LABEL_8;
          }

          if ((~*(*(v24 + 32 * v23 + 24) + 8) & 7) != 0)
          {
            v28 = 0;
          }

          else
          {
            v28 = *(v24 + 32 * v23 + 24);
          }

          LODWORD(v48) = v27;
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v50;
          }

          std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,std::string>>((v5 + 80), &v48, &v48);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_24:
              operator delete(v50.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_24;
          }

          ++v23;
LABEL_8:
          v25 = *(v22 + v51);
          LODWORD(v48) = v27;
          BYTE4(v48) = v25;
          std::__hash_table<std::__hash_value_type<ZinIrDimension,long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,long>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,unsigned char>>((v5 + 160), &v48, &v48);
          v22 = (v22 + 1);
        }

        while (v8 != v22);
      }
    }

    else
    {
      v21 = 0;
      if (v8)
      {
        goto LABEL_6;
      }
    }

    if (v51 != &v53)
    {
      free(v51);
    }

    if (AttrDictionary != v47)
    {
      free(AttrDictionary);
    }

    if (v54[0] != &v55)
    {
      free(v54[0]);
    }

    v39 = operator new(0xC8uLL);
    v40 = v39;
    *(v39 + 1) = 0;
    *(v39 + 2) = 0;
    *v39 = &unk_1F5B2E830;
    v41 = v39 + 24;
    *(v39 + 3) = &unk_1F5B2E868;
    if (v5[31] < 0)
    {
      std::string::__init_copy_ctor_external((v39 + 32), *(v5 + 1), *(v5 + 2));
    }

    else
    {
      *(v39 + 2) = *(v5 + 8);
      *(v39 + 6) = *(v5 + 3);
    }

    *(v40 + 14) = 17;
    *(v40 + 3) = &unk_1F5B34308;
    *(v40 + 8) = v5;
    v40[72] = 0;
    *(v40 + 10) = 0;
    *(v40 + 11) = v40 + 104;
    *(v40 + 12) = 0x100000000;
    *(v40 + 17) = v40 + 152;
    *(v40 + 18) = 0x300000000;
    *&v44 = v41;
    *(&v44 + 1) = v40;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v44);
    v42 = *(&v44 + 1);
    if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v42->__on_zero_shared)(v42);
      std::__shared_weak_count::__release_weak(v42);
    }

    return 1;
  }

  else
  {
    AttrDictionary = "network should not be nullptr";
    v47[4] = 259;
    mlir::OpState::emitError(a1, &AttrDictionary, v54);
    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v31 = v60;
      if (v60)
      {
        v32 = v61;
        v33 = v60;
        if (v61 != v60)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = v60;
        }

        v61 = v31;
        operator delete(v33);
      }

      v34 = v58;
      if (v58)
      {
        v35 = v59;
        v36 = v58;
        if (v59 != v58)
        {
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
          v36 = v58;
        }

        v59 = v34;
        operator delete(v36);
      }

      if (v56 != &v57)
      {
        free(v56);
      }
    }
  }

  return v30;
}

uint64_t mlir::anec::getPromotedReturnTypeForTensorBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v36[6] = *MEMORY[0x1E69E9840];
  v31 = a3;
  v5 = mlir::TypeRange::dereference_iterator(a1, 0);
  v6 = v5;
  if (v5)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  v30[0] = v6;
  v30[1] = v5;
  v35[0] = v36;
  v35[1] = 0x600000000;
  v37.var0 = "interleave";
  v37.var1 = 10;
  v7 = mlir::DictionaryAttr::get(&v31, v37);
  if (v7)
  {
    v8 = v7;
    if (mlir::DenseIntElementsAttr::classof(v7))
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  mlir::getValues<unsigned long>(v7, v35);
  v9 = *v35[0];
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v30);
  v12 = v10;
  v32 = v34;
  v33 = 0x600000000;
  v13 = (8 * v10) >> 3;
  if (v13 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v13, 8);
    v14 = v33;
    v15 = 8 * v12;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = 0;
  v15 = 8 * v10;
  if (v10)
  {
LABEL_11:
    memcpy(v32 + 8 * v14, ArgAttrsAttr, v15);
    v14 = v33;
  }

LABEL_12:
  LODWORD(v33) = v14 + (v15 >> 3);
  mlir::CallableOpInterface::getArgAttrsAttr(v30);
  IndexFromDim = mlir::anec::getIndexFromDim(4, v16);
  if ((v18 & 1) == 0 || (v19 = IndexFromDim, mlir::CallableOpInterface::getArgAttrsAttr(v30), v21 = mlir::anec::getIndexFromDim(1, v20), (v22 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v23 = v32;
  v24 = *(v32 + v19);
  if (a4)
  {
    *(v32 + v19) = v24 / v9;
    v25 = v23[v21] * v9;
  }

  else
  {
    *(v32 + v19) = v24 * v9;
    v25 = v23[v21] / v9;
  }

  v23[v21] = v25;
  v26 = v33;
  isSplat = mlir::ElementsAttr::isSplat(v30);
  v28 = mlir::MemRefType::get(v23, v26, isSplat, 0, 0, 0);
  if (v32 != v34)
  {
    free(v32);
  }

  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  return v28;
}

uint64_t mlir::anec::ScaledDotProductAttention::inferPromotedReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v11 = mlir::TypeRange::dereference_iterator(a9, 0);
  v12 = v11;
  if (v11)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  v25[0] = v12;
  v25[1] = v11;
  v13 = mlir::TypeRange::dereference_iterator(a9, 1);
  if (v13)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v14 = *mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v15 = *(mlir::CallableOpInterface::getArgAttrsAttr(v25) + 24);
  v16 = *(mlir::CallableOpInterface::getArgAttrsAttr(v25) + 8);
  v17 = *(mlir::CallableOpInterface::getArgAttrsAttr(v25) + 16);
  __src[3] = v15;
  v27 = v29;
  v28 = 0x400000000;
  __src[0] = v14;
  __src[1] = v16;
  __src[2] = v17;
  llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v27, v29, __src, &v27);
  v18 = v27;
  v19 = v28;
  isSplat = mlir::ElementsAttr::isSplat(v25);
  v21 = mlir::MemRefType::get(v18, v19, isSplat, 0, 0, 0);
  v22 = *(a11 + 8);
  if (v22 >= *(a11 + 12))
  {
    v24 = v21;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v22 + 1, 8);
    v21 = v24;
    LODWORD(v22) = *(a11 + 8);
  }

  *(*a11 + 8 * v22) = v21;
  ++*(a11 + 8);
  if (v27 != v29)
  {
    free(v27);
  }

  return 1;
}

float mlir::anec::ScaledDotProductAttention::getExecutionCost(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 72);
  v4 = v3[7];
  v5 = v3[11];
  v6 = (*(v3[3] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v68[0] = v6;
  v68[1] = v7;
  v8 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v67[0] = v8;
  v67[1] = v9;
  v10 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v66[0] = v10;
  v66[1] = v11;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v68);
  v13 = mlir::CallableOpInterface::getArgAttrsAttr(v67);
  v14 = mlir::CallableOpInterface::getArgAttrsAttr(v66);
  mlir::CallableOpInterface::getArgAttrsAttr(v68);
  v16 = v15;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v15);
  v18 = mlir::anec::getIndexFromDim(1, v16);
  v19 = mlir::anec::getIndexFromDim(4, v16);
  isSplat = mlir::ElementsAttr::isSplat(v68);
  v69 = mlir::ElementsAttr::isSplat(v68);
  v21 = mlir::Type::getIntOrFloatBitWidth(&v69) >> 3;
  v22 = mlir::CallableOpInterface::getArgAttrsAttr(v67);
  v24 = 2 * mlir::ShapedType::getNumElements(v22, v23) * v21;
  v25 = 0.0;
  if (v24 <= 0x200000)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v24;
  }

  v69 = isSplat;
  v27 = *(a2 + 40) * 1.0e12;
  isF16 = mlir::Type::isF16(&v69);
  v29 = v27 + v27;
  if (isF16)
  {
    v29 = v27;
  }

  v30 = 0.0 / v29;
  if (v30 >= (v26 / (*(a2 + 44) * 1000000000.0)))
  {
    v31 = v30;
  }

  else
  {
    v31 = v26 / (*(a2 + 44) * 1000000000.0);
  }

  v32 = *(v13 + 8 * v18) * *(ArgAttrsAttr + 8 * v18) * *(ArgAttrsAttr + 8 * IndexFromDim);
  v33 = 2 * v32;
  v34 = 2 * v32 * *(ArgAttrsAttr + 8 * v19);
  v35 = mlir::CallableOpInterface::getArgAttrsAttr(v68);
  NumElements = mlir::ShapedType::getNumElements(v35, v36);
  v38 = mlir::CallableOpInterface::getArgAttrsAttr(v67);
  v40 = (NumElements + mlir::ShapedType::getNumElements(v38, v39) + v32) * v21;
  if (v40 <= 0x200000)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v40;
  }

  v69 = isSplat;
  v42 = *(a2 + 40) * 1.0e12;
  v43 = mlir::Type::isF16(&v69);
  v44 = v42 + v42;
  if (v43)
  {
    v44 = v42;
  }

  v45 = *(a2 + 40);
  v46 = (v34 / v44) / 0.65;
  if (v46 < (v41 / (*(a2 + 44) * 1000000000.0)))
  {
    v46 = v41 / (*(a2 + 44) * 1000000000.0);
  }

  v47 = v31 + v46;
  if (v33 * v21 <= 0x200000)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = (v33 * v21);
  }

  v69 = isSplat;
  v49 = v45 * 1.0e12;
  v50 = mlir::Type::isF16(&v69);
  v51 = v49 + v49;
  if (v50)
  {
    v51 = v49;
  }

  v52 = (5 * v32) / v51;
  if (v52 < (v48 / (*(a2 + 44) * 1000000000.0)))
  {
    v52 = v48 / (*(a2 + 44) * 1000000000.0);
  }

  v53 = v47 + v52;
  v54 = *(v14 + 8 * v19) * v33;
  v55 = mlir::CallableOpInterface::getArgAttrsAttr(v68);
  v57 = mlir::ShapedType::getNumElements(v55, v56);
  v58 = mlir::CallableOpInterface::getArgAttrsAttr(v66);
  v60 = (v57 + mlir::ShapedType::getNumElements(v58, v59) + v32) * v21;
  if (v60 > 0x200000)
  {
    v25 = v60;
  }

  v69 = isSplat;
  v61 = *(a2 + 40) * 1.0e12;
  v62 = mlir::Type::isF16(&v69);
  v63 = v61 + v61;
  if (v62)
  {
    v63 = v61;
  }

  v64 = (v54 / v63) / 0.65;
  if (v64 < (v25 / (*(a2 + 44) * 1000000000.0)))
  {
    v64 = v25 / (*(a2 + 44) * 1000000000.0);
  }

  return v53 + v64;
}

uint64_t mlir::anec::ScaledDotProductAttention::addOpToNetwork(uint64_t *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = operator new(0x58uLL);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 9) = -1;
    *v4 = &unk_1F5B34058;
    v4[80] = 0;
    *(v4 + 8) = 77;
    mlir::anec::fillZinIrCommonInfo(*a1, v4, 77, a2, 0, 0);
    v4[80] = 0;
    v5 = operator new(0xC8uLL);
    v6 = v5;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *v5 = &unk_1F5B2E830;
    v7 = v5 + 24;
    *(v5 + 3) = &unk_1F5B2E868;
    if (v4[31] < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 32), *(v4 + 1), *(v4 + 2));
    }

    else
    {
      *(v5 + 2) = *(v4 + 8);
      *(v5 + 6) = *(v4 + 3);
    }

    *(v6 + 14) = 17;
    *(v6 + 3) = &unk_1F5B34308;
    *(v6 + 8) = v4;
    v6[72] = 0;
    *(v6 + 10) = 0;
    *(v6 + 11) = v6 + 104;
    *(v6 + 12) = 0x100000000;
    *(v6 + 17) = v6 + 152;
    *(v6 + 18) = 0x300000000;
    *&v19 = v7;
    *(&v19 + 1) = v6;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
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

uint64_t mlir::anec::A11Legacy::getSymName(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  return mlir::OpaqueAttr::getAttrData(&AttrDictionary);
}

void mlir::anec::A11Legacy::build(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, mlir::IRMapping *a5, void *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, mlir::Operation **a15, uint64_t a16, void *__src, uint64_t a18)
{
  v78 = *MEMORY[0x1E69E9840];
  *(a2 + 192) = 0;
  v24 = *(a2 + 120);
  if (a18 + v24 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a18 + v24, 16);
    LODWORD(v24) = *(a2 + 120);
  }

  if (a18)
  {
    memcpy((*(a2 + 112) + 16 * v24), __src, 16 * a18);
    LODWORD(v24) = *(a2 + 120);
  }

  *(a2 + 120) = v24 + a18;
  v73[8] = 261;
  v71 = a3;
  v72 = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, &v71);
  Context = mlir::Attribute::getContext(a2);
  v70 = 261;
  v67 = "sym_name";
  v68 = 8;
  v27 = mlir::StringAttr::get(Context, &v67);
  mlir::NamedAttribute::NamedAttribute(&v74, v27, StringAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v74, v75);
  v28 = a9;
  v29 = mlir::FunctionType::get(*a1, a9, a10, a13, a14);
  v30 = *(*(*(a2 + 8) + 96) + 8);
  v31 = mlir::TypeAttr::get(v29);
  mlir::NamedAttribute::NamedAttribute(&v67, v30, v31);
  mlir::NamedAttrList::push_back(a2 + 112, v67, v68);
  v32 = mlir::OperationState::addRegion(a2);
  v33 = operator new(0x48uLL);
  *v33 = 0u;
  v33[1] = 0u;
  *(v33 + 4) = v33 + 2;
  *(v33 + 5) = v33 + 2;
  *(v33 + 7) = 0;
  *(v33 + 8) = 0;
  *(v33 + 6) = 0;
  v71 = v73;
  v72 = 0x400000000;
  v67 = a6;
  v68 = 0;
  if (a7)
  {
    v34 = 0;
    do
    {
      v74 = mlir::ValueRange::dereference_iterator(&v67, v34);
      Loc = mlir::Value::getLoc(&v74);
      v36 = v72;
      if (v72 >= HIDWORD(v72))
      {
        v38 = Loc;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v72 + 1, 8);
        Loc = v38;
        v28 = a9;
        v36 = v72;
      }

      *(v71 + v36) = Loc;
      v37 = (v72 + 1);
      LODWORD(v72) = v72 + 1;
      v34 = v68 + 1;
      v68 = v34;
    }

    while (v34 != a7);
    v39 = v71;
  }

  else
  {
    v37 = 0;
    v39 = v73;
  }

  mlir::Block::addArguments(v33, v28, a10, v39, v37);
  llvm::ilist_traits<mlir::Block>::addNodeToList(v32, v33);
  v40 = *v32;
  *(v33 + 2) = v32;
  *(v33 + 1) = v40;
  *(v40 + 8) = v33 + 8;
  *v32 = v33 + 8;
  v41 = (a1 + 16);
  v65 = *(a1 + 16);
  v43 = *(v33 + 5);
  v42 = *(v33 + 6);
  *(a1 + 16) = v33;
  *(a1 + 24) = v43;
  v44 = *(v33 + 7);
  v67 = a6;
  v68 = 0;
  v69[0] = v42;
  if (a7 && v42 != v44)
  {
    v45 = 0;
    do
    {
      v46 = mlir::ValueRange::dereference_iterator(&v67, v45);
      v47 = *v69[0];
      v74 = v46;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, &v74) = v47;
      v45 = v68 + 1;
      v48 = v69[0] + 8;
      v68 = v45;
      v69[0] += 8;
    }

    while (v45 != a7 && v48 != v44);
  }

  if (a16)
  {
    v51 = 8 * a16;
    do
    {
      v52 = *a15++;
      mlir::OpBuilder::clone(a1, v52, a5);
      v51 -= 8;
    }

    while (v51);
  }

  v67 = v69;
  v68 = 0x600000000;
  if (a12 < 7)
  {
    v53 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, a12, 8);
    v53 = v68;
  }

  v74 = a11;
  v75 = 0;
  v76 = a5;
  v77 = 1;
  if (a12)
  {
    v54 = 0;
    v55 = (v67 + 8 * v53);
    do
    {
      v56 = mlir::ValueRange::dereference_iterator(&v74, v54);
      v57 = *(v76 + 4);
      if (v57)
      {
        v58 = *v76;
        v59 = 0x9DDFEA08EB382D69 * ((8 * v56 - 0xAE502812AA7333) ^ HIDWORD(v56));
        v60 = 0x9DDFEA08EB382D69 * (HIDWORD(v56) ^ (v59 >> 47) ^ v59);
        v61 = (-348639895 * ((v60 >> 47) ^ v60)) & (v57 - 1);
        v62 = *(*v76 + 16 * v61);
        if (v62 == v56)
        {
LABEL_31:
          if (v61 != v57)
          {
            v56 = *(v58 + 16 * v61 + 8);
          }
        }

        else
        {
          v63 = 1;
          while (v62 != -4096)
          {
            v64 = v61 + v63++;
            v61 = v64 & (v57 - 1);
            v62 = *(v58 + 16 * v61);
            if (v62 == v56)
            {
              goto LABEL_31;
            }
          }
        }
      }

      *v55++ = v56;
      v54 = v75 + 1;
      v75 = v54;
    }

    while (v54 != a12);
    v53 = v68;
  }

  LODWORD(v68) = v53 + a12;
  mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::SmallVector<mlir::Value,6u> &>(a1, *a2, &v67);
  if (v67 != v69)
  {
    free(v67);
  }

  if (v65)
  {
    *v41 = v65;
  }

  else
  {
    *v41 = 0;
    *(a1 + 24) = 0;
  }

  if (v71 != v73)
  {
    free(v71);
  }
}

uint64_t mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::ArrayRef<mlir::Value> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id)
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

BOOL mlir::anec::A11Legacy::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x1E69E9840];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v27);
  if (!v3)
  {
LABEL_7:
    v25[0] = "requires attribute 'function_type'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v7;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v33;
      v10 = __p;
      if (v33 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v33 = v8;
      operator delete(v10);
    }

    v11 = v30;
    if (v30)
    {
      v12 = v31;
      v13 = v30;
      if (v31 == v30)
      {
        goto LABEL_46;
      }

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
LABEL_45:
      v13 = v30;
LABEL_46:
      v31 = v11;
      operator delete(v13);
    }

LABEL_47:
    if (v28 != &v29)
    {
      free(v28);
    }

    return v7;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::CallGraphNode::getCallableRegion(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (mlir::CallGraphNode::getCallableRegion(v4) == **(*(*this + 6) + 96))
    {
      v5 = v4[1];
    }

    v4 += 2;
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_29:
    v25[0] = "requires attribute 'sym_name'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v7;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v33;
      v20 = __p;
      if (v33 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v33 = v18;
      operator delete(v20);
    }

    v11 = v30;
    if (v30)
    {
      v21 = v31;
      v13 = v30;
      if (v31 == v30)
      {
        goto LABEL_46;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          operator delete[](v22);
        }
      }

      while (v21 != v11);
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  v16 = 0;
  v17 = v4[1];
  while (mlir::CallGraphNode::getCallableRegion(v4) != *(*(*(*this + 6) + 96) + 24))
  {
    if (mlir::CallGraphNode::getCallableRegion(v4) == *(*(*(*this + 6) + 96) + 16))
    {
      v16 = v4[1];
    }

    v4 += 2;
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps1(*this, v4[1], "sym_name", 8) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(*this, v17, "function_type", 0xD) & 1) != 0 && (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps7(*this, v5, "arg_attrs", 9) & 1) != 0 && (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps7(*this, v16, "res_attrs", 9))
  {
    return mlir::mpsx::__mlir_ods_local_region_constraint_MPSXOps2(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "body", 4, 0) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps1(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  v27 = 257;
  mlir::Operation::emitOpError(a1, &v24, v28);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v28, "attribute '");
  if (*v6)
  {
    v27 = 261;
    v24 = a3;
    v25 = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<(v6 + 8, &v24);
    v6 = v7;
    if (*v7)
    {
      v8 = *(v7 + 24);
      LODWORD(v24) = 3;
      v25 = "' failed to satisfy constraint: string attribute";
      v26 = 48;
      v9 = *(v7 + 32);
      v10 = &v24;
      if (v9 >= *(v7 + 36))
      {
        if (v8 <= &v24 && v8 + 24 * v9 > &v24)
        {
          v23 = &v24 - v8;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v23[v8];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v24;
        }
      }

      v11 = v8 + 24 * *(v6 + 32);
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      ++*(v6 + 32);
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v28[0])
  {
    mlir::InFlightDiagnostic::report(v28);
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v34;
      v16 = __p;
      if (v34 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v34 = v14;
      operator delete(v16);
    }

    v17 = v31;
    if (v31)
    {
      v18 = v32;
      v19 = v31;
      if (v32 != v31)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            operator delete[](v20);
          }
        }

        while (v18 != v17);
        v19 = v31;
      }

      v32 = v17;
      operator delete(v19);
    }

    if (v29 != &v30)
    {
      free(v29);
    }
  }

  return v13;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ArgMinMax>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v28, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v31;
      }

      *(v30 + v21) = RankPromotionTypeForANE;
      v22 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v17 = v29 + 1;
      v29 = v17;
      if (v17 == a5)
      {
        v26 = v30;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v26, v22);
    result = mlir::anec::ArgMinMax::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::ArgMinMax::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v28 = a3;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v32);
  v15 = *(*(*(a2 + 8) + 96) + 16);
  v16 = mlir::IntegerType::get(*a1, 64, 0);
  v17 = mlir::IntegerAttr::get(v16, a5);
  mlir::NamedAttribute::NamedAttribute(&__src, v15, v17);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v32);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v32);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 32), a7);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v32);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 24), a8);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v32);
  __src = v33;
  v32 = 0x200000000;
  v18 = *a1;
  v19 = *a2;
  mlir::ValueRange::ValueRange(v30, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v22 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v29, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ArgMinMax>::inferReturnTypes(v18, v19, 1, v30[0], v30[1], Dictionary, v22, v23, v29[0], v29[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = __src;
  v25 = v32;
  v26 = *(a2 + 72);
  v27 = v26 + v32;
  if (v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v27, 8);
    LODWORD(v26) = *(a2 + 72);
  }

  if (v25)
  {
    memcpy((*(a2 + 64) + 8 * v26), v24, 8 * v25);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + v25;
  if (__src != v33)
  {
    free(__src);
  }
}

BOOL mlir::anec::ArgMinMax::verifyInvariantsImpl(mlir::Operation **this)
{
  v97 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_5:
    v83 = "requires attribute 'axes'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v83, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v96 != 1)
    {
      return v6;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v94;
      v9 = __p;
      if (v94 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v94 = v7;
      operator delete(v9);
    }

    v10 = v91;
    if (v91)
    {
      v11 = v92;
      v12 = v91;
      if (v92 == v91)
      {
        goto LABEL_82;
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
LABEL_81:
      v12 = v91;
LABEL_82:
      v92 = v10;
      operator delete(v12);
    }

LABEL_83:
    if (v89 != v90)
    {
      free(v89);
    }

    return v6;
  }

  v4 = 16 * v3;
  v5 = (Value + 8);
  while (mlir::CallGraphNode::getCallableRegion((v5 - 1)) != **(*(*this + 6) + 96))
  {
    v5 += 2;
    v4 -= 16;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if (!v4)
  {
LABEL_25:
    v83 = "requires attribute 'kernel_size'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v83, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v96 != 1)
    {
      return v6;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v94;
      v20 = __p;
      if (v94 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v94 = v18;
      operator delete(v20);
    }

    v10 = v91;
    if (v91)
    {
      v21 = v92;
      v12 = v91;
      if (v92 == v91)
      {
        goto LABEL_82;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          operator delete[](v22);
        }
      }

      while (v21 != v10);
      goto LABEL_81;
    }

    goto LABEL_83;
  }

  v15 = 0;
  v16 = *v5;
  while (1)
  {
    v17 = &v5[v15 / 8];
    if (mlir::CallGraphNode::getCallableRegion(&v5[v15 / 8 - 1]) == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v15 += 16;
    if (v4 == v15)
    {
      goto LABEL_25;
    }
  }

  v24 = v4 - v15;
  if (v4 == v15)
  {
LABEL_45:
    v83 = "requires attribute 'mode'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v83, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v96 != 1)
    {
      return v6;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v94;
      v28 = __p;
      if (v94 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v94 = v26;
      operator delete(v28);
    }

    v10 = v91;
    if (v91)
    {
      v29 = v92;
      v12 = v91;
      if (v92 == v91)
      {
        goto LABEL_82;
      }

      do
      {
        v31 = *--v29;
        v30 = v31;
        *v29 = 0;
        if (v31)
        {
          operator delete[](v30);
        }
      }

      while (v29 != v10);
      goto LABEL_81;
    }

    goto LABEL_83;
  }

  v25 = *v17;
  while (mlir::CallGraphNode::getCallableRegion((v17 - 1)) != *(*(*(*this + 6) + 96) + 16))
  {
    v17 += 2;
    v24 -= 16;
    if (!v24)
    {
      goto LABEL_45;
    }
  }

  if (!v24)
  {
LABEL_65:
    v83 = "requires attribute 'pad_values'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v83, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v96 != 1)
    {
      return v6;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v94;
      v37 = __p;
      if (v94 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v94 = v35;
      operator delete(v37);
    }

    v10 = v91;
    if (v91)
    {
      v38 = v92;
      v12 = v91;
      if (v92 == v91)
      {
        goto LABEL_82;
      }

      do
      {
        v40 = *--v38;
        v39 = v40;
        *v38 = 0;
        if (v40)
        {
          operator delete[](v39);
        }
      }

      while (v38 != v10);
      goto LABEL_81;
    }

    goto LABEL_83;
  }

  v32 = 0;
  v33 = *v17;
  while (1)
  {
    v34 = &v17[v32 / 8];
    if (mlir::CallGraphNode::getCallableRegion(&v17[v32 / 8 - 1]) == *(*(*(*this + 6) + 96) + 24))
    {
      break;
    }

    v32 += 16;
    if (v24 == v32)
    {
      goto LABEL_65;
    }
  }

  v42 = v24 - v32;
  if (v42)
  {
    v45 = *v34;
    v44 = (v34 - 1);
    v43 = v45;
    while (1)
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v44);
      v47 = *this;
      if (CallableRegion == *(*(*(*this + 6) + 96) + 32))
      {
        break;
      }

      v44 = (v44 + 16);
      v42 -= 16;
      if (!v42)
      {
        goto LABEL_90;
      }
    }

    v48 = *(v44 + 1);
    if (v16)
    {
      if (!mlir::DenseIntElementsAttr::classof(v16))
      {
        goto LABEL_105;
      }

      v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v16 + 8);
      v83 = v16;
      v84 = v49;
      Type = mlir::ElementsAttr::getType(&v83);
      v51 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      AttrDictionary = v51;
      v88 = Type;
      mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary);
      if (v52)
      {
        v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v16 + 8);
        v81[0] = v16;
        v81[1] = v53;
        v54 = mlir::ElementsAttr::getType(v81);
        v55 = v54;
        if (v54)
        {
          v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        }

        v82[0] = v55;
        v82[1] = v54;
        mlir::CallableOpInterface::getArgAttrsAttr(v82);
        if (v56 != 1)
        {
          goto LABEL_105;
        }
      }

      if (!mlir::hasUniqueValues(v16) || (v80 = v16, !mlir::DenseElementsAttr::getNumElements(&v80)) || (v77 = v16, v78[0] = mlir::ArrayAttr::getValue(&v77), v78[1] = v57, isSplat = mlir::ElementsAttr::isSplat(v78), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_105:
        v86 = 257;
        mlir::Operation::emitOpError(v47, &v83, &AttrDictionary);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "attribute '");
        if (*v58)
        {
          v86 = 261;
          v83 = "axes";
          v84 = 4;
          v59 = v58;
          mlir::Diagnostic::operator<<(v58 + 8, &v83);
          v58 = v59;
          if (*v59)
          {
            v60 = *(v59 + 24);
            LODWORD(v83) = 3;
            v84 = "' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 0/1";
            v85 = 85;
            v61 = *(v59 + 32);
            v62 = &v83;
            if (v61 >= *(v59 + 36))
            {
              if (v60 <= &v83 && v60 + 24 * v61 > &v83)
              {
                v76 = &v83 - v60;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v59 + 24, v59 + 40, v61 + 1, 24);
                v58 = v59;
                v60 = *(v59 + 24);
                v62 = &v76[v60];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v59 + 24, v59 + 40, v61 + 1, 24);
                v58 = v59;
                v60 = *(v59 + 24);
                v62 = &v83;
              }
            }

            v63 = v60 + 24 * *(v58 + 32);
            v64 = *v62;
            *(v63 + 16) = v62[2];
            *v63 = v64;
            ++*(v58 + 32);
          }
        }

        v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
        if (AttrDictionary)
        {
          mlir::InFlightDiagnostic::report(&AttrDictionary);
        }

        if (v96 == 1)
        {
          if (v95 != &v96)
          {
            free(v95);
          }

          v66 = __p;
          if (__p)
          {
            v67 = v94;
            v68 = __p;
            if (v94 != __p)
            {
              do
              {
                v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
              }

              while (v67 != v66);
              v68 = __p;
            }

            v94 = v66;
            operator delete(v68);
          }

          v69 = v91;
          if (v91)
          {
            v70 = v92;
            v71 = v91;
            if (v92 != v91)
            {
              do
              {
                v73 = *--v70;
                v72 = v73;
                *v70 = 0;
                if (v73)
                {
                  operator delete[](v72);
                }
              }

              while (v70 != v69);
              v71 = v91;
            }

            v92 = v69;
            operator delete(v71);
          }

          if (v89 != v90)
          {
            free(v89);
          }
        }

        if (!v65)
        {
          return 0;
        }
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps5(*this, v33, "mode", 4) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(*this, v25, "kernel_size", 11) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(*this, v48, "stride_values", 13) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps7(*this, v43, "pad_values", 10) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v74 = *this - 16;
      }

      else
      {
        v74 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v74, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_90:
    v83 = "requires attribute 'stride_values'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v83, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v96 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v88);
    }
  }

  return v6;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v25[0] = a2;
    v6 = a1;
    v27[0] = mlir::AffineMapAttr::getValue(v25);
    isSignlessInteger = mlir::Type::isSignlessInteger(v27, 64);
    a1 = v6;
    if (isSignlessInteger)
    {
      v24 = a2;
      if (!mlir::IntegerAttr::getInt(&v24))
      {
        return 1;
      }

      v23 = a2;
      v9 = mlir::IntegerAttr::getInt(&v23) == 1;
      a1 = v6;
      if (v9)
      {
        return 1;
      }
    }
  }

  v26 = 257;
  mlir::Operation::emitOpError(a1, v25, v27);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v27, "attribute '");
  if (*v11)
  {
    v26 = 261;
    v25[0] = a3;
    v25[1] = a4;
    v12 = v11;
    mlir::Diagnostic::operator<<((v11 + 1), v25);
    v11 = v12;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v11, "' failed to satisfy constraint: valid ArgMinMaxMode");
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v33;
      v16 = __p;
      if (v33 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v33 = v14;
      operator delete(v16);
    }

    v17 = v30;
    if (v30)
    {
      v18 = v31;
      v19 = v30;
      if (v31 != v30)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            operator delete[](v20);
          }
        }

        while (v18 != v17);
        v19 = v30;
      }

      v31 = v17;
      operator delete(v19);
    }

    if (v28 != &v29)
    {
      free(v28);
    }
  }

  return v10;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v42 = 2;
  if (v12 == 1 && *ArgAttrsAttr == v42)
  {
    v27 = a2;
    v28[0] = mlir::ArrayAttr::getValue(&v27);
    v28[1] = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(a1, &v30, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {2}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps7(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v42 = 4;
  if (v12 == 1 && *ArgAttrsAttr == v42)
  {
    v27 = a2;
    v28[0] = mlir::ArrayAttr::getValue(&v27);
    v28[1] = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(a1, &v30, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {4}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v59[0] = a2;
    v59[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v59);
    if (mlir::Type::isF16(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 4))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v51 = a2;
      v52 = v11;
      if (mlir::CallOpInterface::getArgOperands(&v51))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v56 = a2;
        v57 = v12;
        mlir::CallableOpInterface::getArgAttrsAttr(&v56);
        if (v13 == 4)
        {
          return 1;
        }

        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v54[0] = a2;
        v54[1] = v14;
        mlir::CallableOpInterface::getArgAttrsAttr(v54);
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v53 = 261;
  v51 = a3;
  v52 = a4;
  mlir::Operation::emitOpError(a1, &v51, v59);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v59, " #");
  if (*v17)
  {
    v19 = v17 + 24;
    v18 = *(v17 + 24);
    LODWORD(v56) = 5;
    v57 = a5;
    v20 = *(v17 + 32);
    v21 = &v56;
    if (v20 >= *(v17 + 36))
    {
      if (v18 <= &v56 && v18 + 24 * v20 > &v56)
      {
        v46 = &v56 - v18;
        v47 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, v17 + 40, v20 + 1, 24);
        v17 = v47;
        v18 = *(v47 + 24);
        v21 = &v46[v18];
      }

      else
      {
        v44 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, v17 + 40, v20 + 1, 24);
        v17 = v44;
        v18 = *(v44 + 24);
        v21 = &v56;
      }
    }

    v22 = v18 + 24 * *(v17 + 32);
    v23 = *v21;
    *(v22 + 16) = *(v21 + 2);
    *v22 = v23;
    v24 = (*(v17 + 32) + 1);
    *(v17 + 32) = v24;
    if (*v17)
    {
      LODWORD(v56) = 3;
      v57 = " must be 4D/5D memref of 16-bit float or 8-bit signed integer or 8-bit unsigned integer or 4-bit signed integer values, but got ";
      v58 = 128;
      v25 = *(v17 + 24);
      v26 = &v56;
      if (v24 >= *(v17 + 36))
      {
        if (v25 <= &v56 && v25 + 24 * v24 > &v56)
        {
          v48 = &v56 - v25;
          v49 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v17 + 40, v24 + 1, 24);
          v17 = v49;
          v25 = *(v49 + 24);
          v26 = &v48[v25];
        }

        else
        {
          v45 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v17 + 40, v24 + 1, 24);
          v17 = v45;
          v25 = *(v45 + 24);
          v26 = &v56;
        }
      }

      v27 = v25 + 24 * *(v17 + 32);
      v28 = *v26;
      *(v27 + 16) = *(v26 + 2);
      *v27 = v28;
      ++*(v17 + 32);
      if (*v17)
      {
        v29 = &v56;
        v30 = v17;
        mlir::DiagnosticArgument::DiagnosticArgument(&v56, a2);
        v17 = v30;
        v31 = *(v30 + 32);
        v32 = *(v30 + 24);
        if (v31 >= *(v30 + 36))
        {
          if (v32 <= &v56 && v32 + 24 * v31 > &v56)
          {
            v50 = &v56 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v30 + 40, v31 + 1, 24);
            v17 = v30;
            v32 = *(v30 + 24);
            v29 = &v50[v32];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v30 + 40, v31 + 1, 24);
            v17 = v30;
            v32 = *(v30 + 24);
            v29 = &v56;
          }
        }

        v33 = v32 + 24 * *(v17 + 32);
        v34 = *v29;
        *(v33 + 16) = *(v29 + 2);
        *v33 = v34;
        ++*(v17 + 32);
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v65;
      v37 = __p;
      if (v65 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v65 = v35;
      operator delete(v37);
    }

    v38 = v62;
    if (v62)
    {
      v39 = v63;
      v40 = v62;
      if (v63 != v62)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            operator delete[](v41);
          }
        }

        while (v39 != v38);
        v40 = v62;
      }

      v63 = v38;
      operator delete(v40);
    }

    if (v60 != &v61)
    {
      free(v60);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v59[0] = a2;
    v59[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v59);
    if (mlir::Type::isF16(&isSplat) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 4))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v51 = a2;
      v52 = v11;
      if (mlir::CallOpInterface::getArgOperands(&v51))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v56 = a2;
        v57 = v12;
        mlir::CallableOpInterface::getArgAttrsAttr(&v56);
        if (v13 == 4)
        {
          return 1;
        }

        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v54[0] = a2;
        v54[1] = v14;
        mlir::CallableOpInterface::getArgAttrsAttr(v54);
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v53 = 261;
  v51 = a3;
  v52 = a4;
  mlir::Operation::emitOpError(a1, &v51, v59);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v59, " #");
  if (*v17)
  {
    v19 = v17 + 24;
    v18 = *(v17 + 24);
    LODWORD(v56) = 5;
    v57 = a5;
    v20 = *(v17 + 32);
    v21 = &v56;
    if (v20 >= *(v17 + 36))
    {
      if (v18 <= &v56 && v18 + 24 * v20 > &v56)
      {
        v46 = &v56 - v18;
        v47 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, v17 + 40, v20 + 1, 24);
        v17 = v47;
        v18 = *(v47 + 24);
        v21 = &v46[v18];
      }

      else
      {
        v44 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, v17 + 40, v20 + 1, 24);
        v17 = v44;
        v18 = *(v44 + 24);
        v21 = &v56;
      }
    }

    v22 = v18 + 24 * *(v17 + 32);
    v23 = *v21;
    *(v22 + 16) = *(v21 + 2);
    *v22 = v23;
    v24 = (*(v17 + 32) + 1);
    *(v17 + 32) = v24;
    if (*v17)
    {
      LODWORD(v56) = 3;
      v57 = " must be 4D/5D memref of 16-bit float or 16-bit unsigned integer or 16-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or 4-bit signed integer values, but got ";
      v58 = 180;
      v25 = *(v17 + 24);
      v26 = &v56;
      if (v24 >= *(v17 + 36))
      {
        if (v25 <= &v56 && v25 + 24 * v24 > &v56)
        {
          v48 = &v56 - v25;
          v49 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v17 + 40, v24 + 1, 24);
          v17 = v49;
          v25 = *(v49 + 24);
          v26 = &v48[v25];
        }

        else
        {
          v45 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v17 + 40, v24 + 1, 24);
          v17 = v45;
          v25 = *(v45 + 24);
          v26 = &v56;
        }
      }

      v27 = v25 + 24 * *(v17 + 32);
      v28 = *v26;
      *(v27 + 16) = *(v26 + 2);
      *v27 = v28;
      ++*(v17 + 32);
      if (*v17)
      {
        v29 = &v56;
        v30 = v17;
        mlir::DiagnosticArgument::DiagnosticArgument(&v56, a2);
        v17 = v30;
        v31 = *(v30 + 32);
        v32 = *(v30 + 24);
        if (v31 >= *(v30 + 36))
        {
          if (v32 <= &v56 && v32 + 24 * v31 > &v56)
          {
            v50 = &v56 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v30 + 40, v31 + 1, 24);
            v17 = v30;
            v32 = *(v30 + 24);
            v29 = &v50[v32];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v30 + 40, v31 + 1, 24);
            v17 = v30;
            v32 = *(v30 + 24);
            v29 = &v56;
          }
        }

        v33 = v32 + 24 * *(v17 + 32);
        v34 = *v29;
        *(v33 + 16) = *(v29 + 2);
        *v33 = v34;
        ++*(v17 + 32);
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v65;
      v37 = __p;
      if (v65 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v65 = v35;
      operator delete(v37);
    }

    v38 = v62;
    if (v62)
    {
      v39 = v63;
      v40 = v62;
      if (v63 != v62)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            operator delete[](v41);
          }
        }

        while (v39 != v38);
        v40 = v62;
      }

      v63 = v38;
      operator delete(v40);
    }

    if (v60 != &v61)
    {
      free(v60);
    }
  }

  return v16;
}

uint64_t mlir::anec::AveragePool::getIncPadAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 48), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::anec::AveragePool::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v23 = a3;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 24), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v27);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 16), a5);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v27);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v27);
  if (a7)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a7);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v27);
  }

  __src = v28;
  v27 = 0x200000000;
  v13 = *a1;
  v14 = *a2;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v17 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::AveragePool>::inferReturnTypes(v13, v14, 1, v25[0], v25[1], Dictionary, v17, v18, v24[0], v24[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = __src;
  v20 = v27;
  v21 = *(a2 + 72);
  v22 = v21 + v27;
  if (v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v22, 8);
    LODWORD(v21) = *(a2 + 72);
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v20);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v28)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::AveragePool>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v28, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v31;
      }

      *(v30 + v21) = RankPromotionTypeForANE;
      v22 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v17 = v29 + 1;
      v29 = v17;
      if (v17 == a5)
      {
        v26 = v30;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v26, v22);
    result = mlir::anec::AveragePool::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::AveragePool::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v12, 16);
    LODWORD(v12) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v26;
  v25 = 0x200000000;
  v13 = *a1;
  v14 = *a2;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v17 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v23, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::AveragePool>::inferReturnTypes(v13, v14, 1, a3, a4, Dictionary, v17, v18, v23[0], v23[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = __src;
  v20 = v25;
  v21 = *(a2 + 72);
  v22 = v21 + v25;
  if (v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v22, 8);
    LODWORD(v21) = *(a2 + 72);
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v20);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v26)
  {
    free(__src);
  }
}

BOOL mlir::anec::AveragePool::verifyInvariantsImpl(mlir::Operation **this)
{
  v47 = *MEMORY[0x1E69E9840];
  v38[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v38);
  if (!v3)
  {
LABEL_7:
    v36[0] = "requires attribute 'ksize'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 != 1)
    {
      return v7;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v44;
      v10 = __p;
      if (v44 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v44 = v8;
      operator delete(v10);
    }

    v11 = v41;
    if (v41)
    {
      v12 = v42;
      v13 = v41;
      if (v42 == v41)
      {
        goto LABEL_64;
      }

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
LABEL_63:
      v13 = v41;
LABEL_64:
      v42 = v11;
      operator delete(v13);
    }

LABEL_65:
    if (v39 != &v40)
    {
      free(v39);
    }

    return v7;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::CallGraphNode::getCallableRegion(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (mlir::CallGraphNode::getCallableRegion(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_27:
    v36[0] = "requires attribute 'padding'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 != 1)
    {
      return v7;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v44;
      v21 = __p;
      if (v44 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v44 = v19;
      operator delete(v21);
    }

    v11 = v41;
    if (v41)
    {
      v22 = v42;
      v13 = v41;
      if (v42 == v41)
      {
        goto LABEL_64;
      }

      do
      {
        v24 = *--v22;
        v23 = v24;
        *v22 = 0;
        if (v24)
        {
          operator delete[](v23);
        }
      }

      while (v22 != v11);
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  v16 = 0;
  v17 = *(v4 + 1);
  while (1)
  {
    v18 = (v4 + v16);
    if (mlir::CallGraphNode::getCallableRegion((v4 + v16)) == *(*(*(*this + 6) + 96) + 16))
    {
      break;
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_27;
    }
  }

  v25 = v6 - v16;
  if (!v25)
  {
LABEL_47:
    v36[0] = "requires attribute 'stride'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 != 1)
    {
      return v7;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v44;
      v29 = __p;
      if (v44 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v44 = v27;
      operator delete(v29);
    }

    v11 = v41;
    if (v41)
    {
      v30 = v42;
      v13 = v41;
      if (v42 == v41)
      {
        goto LABEL_64;
      }

      do
      {
        v32 = *--v30;
        v31 = v32;
        *v30 = 0;
        if (v32)
        {
          operator delete[](v31);
        }
      }

      while (v30 != v11);
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  v26 = *(v18 + 1);
  while (mlir::CallGraphNode::getCallableRegion(v18) != *(*(*(*this + 6) + 96) + 24))
  {
    v18 = (v18 + 16);
    v25 -= 16;
    if (!v25)
    {
      goto LABEL_47;
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, *(v18 + 1), "stride", 6) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps9(*this, v26, "padding", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v17, "ksize", 5) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, v5, "inc_pad", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v34 = *this - 16;
  }

  else
  {
    v34 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v34, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v42 = 3;
  if (v12 == 1 && *ArgAttrsAttr == v42)
  {
    v27 = a2;
    v28[0] = mlir::ArrayAttr::getValue(&v27);
    v28[1] = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(a1, &v30, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {3}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps9(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v42 = 6;
  if (v12 == 1 && *ArgAttrsAttr == v42)
  {
    v27 = a2;
    v28[0] = mlir::ArrayAttr::getValue(&v27);
    v28[1] = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(a1, &v30, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {6}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchNorm>::inferReturnTypes(mlir::Float16Type *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38[6] = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = v38;
  v37 = 0x600000000;
  v34 = a4;
  if (a5)
  {
    v16 = 0;
    while (1)
    {
      v17 = (*(mlir::ValueRange::dereference_iterator(&v34, v16) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8))
      {
        break;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
      if (!v17)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v17, v18);
      v20 = v37;
      if (v37 >= HIDWORD(v37))
      {
        v22 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v37 + 1, 8);
        RankPromotionTypeForANE = v22;
        v20 = v37;
      }

      *(v36 + v20) = RankPromotionTypeForANE;
      v21 = (v37 + 1);
      LODWORD(v37) = v37 + 1;
      v16 = v35 + 1;
      v35 = v16;
      if (v16 == a5)
      {
        v25 = v36;
        goto LABEL_13;
      }
    }

    v23.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v23, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v25 = v38;
LABEL_13:
    mlir::ValueRange::ValueRange(&v34, v25, v21);
    result = mlir::anec::InstanceNorm::inferPromotedReturnTypes(a1, v26, v27, a4, a5, v28, v29, v30, v32, v33, a11);
  }

  if (v36 != v38)
  {
    v31 = result;
    free(v36);
    return v31;
  }

  return result;
}

void mlir::anec::BatchNorm::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v28 = a4;
  v29 = a3;
  v26 = a6;
  v27 = a5;
  v25 = a7;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  v11 = **(*(a2 + 8) + 96);
  F32Type = mlir::Builder::getF32Type(a1, v12);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a8);
  mlir::NamedAttribute::NamedAttribute(&__src, v11, FloatAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v33);
  __src = v34;
  v33 = 0x200000000;
  v15 = *a1;
  v16 = *a2;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v19 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v30, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchNorm>::inferReturnTypes(v15, v16, 1, v31[0], v31[1], Dictionary, v19, v20, v30[0], v30[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v21 = __src;
  v22 = v33;
  v23 = *(a2 + 72);
  v24 = v23 + v33;
  if (v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v24, 8);
    LODWORD(v23) = *(a2 + 72);
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v23), v21, 8 * v22);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v34)
  {
    free(__src);
  }
}

BOOL mlir::anec::BatchNorm::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::CallGraphNode::getCallableRegion(v4) != **(*(*this + 6) + 96))
    {
      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, *(v4 + 1), "epsilon", 7) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'epsilon'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
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
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::AffineMapAttr::getValue(v21);
    isF32 = mlir::Type::isF32(v23);
    a1 = v6;
    if (isF32)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(a1, v21, v23);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "attribute '");
  if (*v9)
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v21);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: 32-bit float attribute");
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
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
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v10 = a1;
    v52[0] = a2;
    v52[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v9 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v52);
    isF16 = mlir::Type::isF16(&isSplat);
    a1 = v10;
    if (isF16)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v45 = a2;
      v46 = v12;
      ArgOperands = mlir::CallOpInterface::getArgOperands(&v45);
      a1 = v10;
      if (ArgOperands)
      {
        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v50 = a2;
        v51 = v14;
        mlir::CallableOpInterface::getArgAttrsAttr(&v50);
        if (v15 == 4)
        {
          return 1;
        }

        v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v48[0] = a2;
        v48[1] = v16;
        mlir::CallableOpInterface::getArgAttrsAttr(v48);
        a1 = v10;
        if (v17 == 5)
        {
          return 1;
        }
      }
    }
  }

  v47 = 261;
  v45 = a3;
  v46 = a4;
  mlir::Operation::emitOpError(a1, &v45, v52);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, " #");
  if (*v19)
  {
    v20 = *(v19 + 24);
    LODWORD(v50) = 5;
    v51 = a5;
    v21 = *(v19 + 32);
    v22 = &v50;
    if (v21 >= *(v19 + 36))
    {
      if (v20 <= &v50 && v20 + 24 * v21 > &v50)
      {
        v42 = &v50 - v20;
        v43 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, v19 + 40, v21 + 1, 24);
        v19 = v43;
        v20 = *(v43 + 24);
        v22 = &v42[v20];
      }

      else
      {
        v41 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, v19 + 40, v21 + 1, 24);
        v19 = v41;
        v20 = *(v41 + 24);
        v22 = &v50;
      }
    }

    v23 = v20 + 24 * *(v19 + 32);
    v24 = *v22;
    *(v23 + 16) = *(v22 + 2);
    *v23 = v24;
    ++*(v19 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v19, " must be 4D/5D memref of 16-bit float values, but got ");
  if (*v25)
  {
    v26 = &v50;
    v27 = v25;
    mlir::DiagnosticArgument::DiagnosticArgument(&v50, a2);
    v25 = v27;
    v28 = *(v27 + 24);
    v29 = *(v27 + 32);
    if (v29 >= *(v27 + 36))
    {
      if (v28 <= &v50 && v28 + 24 * v29 > &v50)
      {
        v44 = &v50 - v28;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 24, v27 + 40, v29 + 1, 24);
        v25 = v27;
        v28 = *(v27 + 24);
        v26 = &v44[v28];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 24, v27 + 40, v29 + 1, 24);
        v25 = v27;
        v28 = *(v27 + 24);
        v26 = &v50;
      }
    }

    v30 = v28 + 24 * *(v25 + 32);
    v31 = *v26;
    *(v30 + 16) = *(v26 + 2);
    *v30 = v31;
    ++*(v25 + 32);
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v52[0])
  {
    mlir::InFlightDiagnostic::report(v52);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v58;
      v34 = __p;
      if (v58 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v58 = v32;
      operator delete(v34);
    }

    v35 = v55;
    if (v55)
    {
      v36 = v56;
      v37 = v55;
      if (v56 != v55)
      {
        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            operator delete[](v38);
          }
        }

        while (v36 != v35);
        v37 = v55;
      }

      v56 = v35;
      operator delete(v37);
    }

    if (v53 != &v54)
    {
      free(v53);
    }
  }

  return v18;
}

void mlir::anec::BatchToSpace::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v21);
  __src = v22;
  v21 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v18, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchToSpace>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = __src;
  v14 = v21;
  v15 = *(a2 + 72);
  v16 = v15 + v21;
  if (v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v14);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v22)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchToSpace>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v28, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v31;
      }

      *(v30 + v21) = RankPromotionTypeForANE;
      v22 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v17 = v29 + 1;
      v29 = v17;
      if (v17 == a5)
      {
        v26 = v30;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v26, v22);
    result = mlir::anec::BatchToSpace::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

BOOL mlir::anec::BatchToSpace::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::CallGraphNode::getCallableRegion(v4) != **(*(*this + 6) + 96))
    {
      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, *(v4 + 1), "factors", 7) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'factors'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
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
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

uint64_t mlir::anec::Cast::verifyInvariantsImpl(mlir::anec::Cast *this)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || ((v63[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v63[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8), v5 = *(*mlir::ElementsAttr::isSplat(v63) + 136), v5 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v6 = v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v6 = 1), !v6 ? (v7 = v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v8 = 1), !v8 ? (v9 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v9 = 1), !v9 ? (v10 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v10 = 1), !v10 ? (v11 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v11 = 1), !v11 ? (v12 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v14 = 1), !v14 ? (v15 = v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v15 = 1), !v15 ? (v16 = v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v17 = 1), !v17 ? (v18 = v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v19 = 1), !v19 ? (v20 = v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) : (v20 = 1), !v20 ? (v21 = v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id) : (v21 = 1), !v21 ? (v22 = v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id) : (v22 = 1), !v22 || (v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8), v57 = v3, v58 = v23, !mlir::CallOpInterface::getArgOperands(&v57)) || (v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8), v61 = v3, v62 = v24, mlir::CallableOpInterface::getArgAttrsAttr(&v61), v25 != 4) && (v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8), v60[0] = v3, v60[1] = v26, mlir::CallableOpInterface::getArgAttrsAttr(v60), v27 != 5)))
  {
    v59 = 261;
    v57 = "operand";
    v58 = 7;
    mlir::Operation::emitOpError(v2, &v57, v63);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v63, " #");
    if (*v28)
    {
      v29 = *(v28 + 24);
      LODWORD(v61) = 5;
      v62 = 0;
      v30 = *(v28 + 32);
      v31 = &v61;
      if (v30 >= *(v28 + 36))
      {
        if (v29 <= &v61 && v29 + 24 * v30 > &v61)
        {
          v54 = &v61 - v29;
          v55 = v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v28 + 24, v28 + 40, v30 + 1, 24);
          v28 = v55;
          v29 = *(v55 + 24);
          v31 = &v54[v29];
        }

        else
        {
          v53 = v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v28 + 24, v28 + 40, v30 + 1, 24);
          v28 = v53;
          v29 = *(v53 + 24);
          v31 = &v61;
        }
      }

      v32 = v29 + 24 * *(v28 + 32);
      v33 = *v31;
      *(v32 + 16) = *(v31 + 2);
      *v32 = v33;
      ++*(v28 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v28, " must be 4D/5D memref of floating-point or integer values, but got ");
    if (*v34)
    {
      v35 = &v61;
      v36 = v34;
      mlir::DiagnosticArgument::DiagnosticArgument(&v61, v3);
      v34 = v36;
      v37 = *(v36 + 24);
      v38 = *(v36 + 32);
      if (v38 >= *(v36 + 36))
      {
        if (v37 <= &v61 && v37 + 24 * v38 > &v61)
        {
          v56 = &v61 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v36 + 24, v36 + 40, v38 + 1, 24);
          v34 = v36;
          v37 = *(v36 + 24);
          v35 = &v56[v37];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v36 + 24, v36 + 40, v38 + 1, 24);
          v34 = v36;
          v37 = *(v36 + 24);
          v35 = &v61;
        }
      }

      v39 = v37 + 24 * *(v34 + 32);
      v40 = *v35;
      *(v39 + 16) = *(v35 + 2);
      *v39 = v40;
      ++*(v34 + 32);
    }

    v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v63[0])
    {
      mlir::InFlightDiagnostic::report(v63);
    }

    if (v71 == 1)
    {
      if (v70 != &v71)
      {
        free(v70);
      }

      v42 = __p;
      if (__p)
      {
        v43 = v69;
        v44 = __p;
        if (v69 != __p)
        {
          do
          {
            v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
          }

          while (v43 != v42);
          v44 = __p;
        }

        v69 = v42;
        operator delete(v44);
      }

      v45 = v66;
      if (v66)
      {
        v46 = v67;
        v47 = v66;
        if (v67 != v66)
        {
          do
          {
            v49 = *--v46;
            v48 = v49;
            *v46 = 0;
            if (v49)
            {
              operator delete[](v48);
            }
          }

          while (v46 != v45);
          v47 = v66;
        }

        v67 = v45;
        operator delete(v47);
      }

      if (v64 != &v65)
      {
        free(v64);
      }
    }

    if (!v41)
    {
      return 0;
    }
  }

  if (*(*this + 36))
  {
    v50 = *this - 16;
  }

  else
  {
    v50 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36[6] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = v36;
  v35 = 0x600000000;
  v32 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v32, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v35;
      if (v35 >= HIDWORD(v35))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v35 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v35;
      }

      *(v34 + v19) = RankPromotionTypeForANE;
      v20 = (v35 + 1);
      LODWORD(v35) = v35 + 1;
      v15 = v33 + 1;
      v33 = v15;
      if (v15 == a5)
      {
        v24 = v34;
        goto LABEL_13;
      }
    }

    v22.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v22, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v24 = v36;
LABEL_13:
    v25 = mlir::ValueRange::ValueRange(&v32, v24, v20);
    result = mlir::anec::inferElementwiseReturnTypes(v25, v26, v27, a4, a5, v28, v29, v30, v32, v33, a11);
  }

  if (v34 != v36)
  {
    v31 = result;
    free(v34);
    return v31;
  }

  return result;
}

void mlir::anec::Ceil::build(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v12, 16);
    LODWORD(v12) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v26;
  v25 = 0x200000000;
  v13 = *a1;
  v14 = *a2;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v17 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v23, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(v13, v14, 1, a3, a4, Dictionary, v17, v18, v23[0], v23[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = __src;
  v20 = v25;
  v21 = *(a2 + 72);
  v22 = v21 + v25;
  if (v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v22, 8);
    LODWORD(v21) = *(a2 + 72);
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v20);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v26)
  {
    free(__src);
  }
}

void mlir::anec::ChannelToSpace::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v21);
  __src = v22;
  v21 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v18, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ChannelToSpace>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = __src;
  v14 = v21;
  v15 = *(a2 + 72);
  v16 = v15 + v21;
  if (v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v14);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v22)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ChannelToSpace>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v28, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v31;
      }

      *(v30 + v21) = RankPromotionTypeForANE;
      v22 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v17 = v29 + 1;
      v29 = v17;
      if (v17 == a5)
      {
        v26 = v30;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v26, v22);
    result = mlir::anec::ChannelToSpace::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::ClampedRelu::build(mlir::Float16Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v27 = a3;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v9 = *(*(*(a2 + 8) + 96) + 8);
  F16Type = mlir::Builder::getF16Type(a1, v10);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F16Type, a4);
  mlir::NamedAttribute::NamedAttribute(&__src, v9, FloatAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v31);
  v13 = **(*(a2 + 8) + 96);
  v15 = mlir::Builder::getF16Type(a1, v14);
  v16 = mlir::Builder::getFloatAttr(a1, v15, a5);
  mlir::NamedAttribute::NamedAttribute(&__src, v13, v16);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v31);
  __src = v32;
  v31 = 0x200000000;
  v17 = *a1;
  v18 = *a2;
  mlir::ValueRange::ValueRange(v29, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v21 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v28, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(v17, v18, 1, v29[0], v29[1], Dictionary, v21, v22, v28[0], v28[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v23 = __src;
  v24 = v31;
  v25 = *(a2 + 72);
  v26 = v25 + v31;
  if (v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v26, 8);
    LODWORD(v25) = *(a2 + 72);
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v25), v23, 8 * v24);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v32)
  {
    free(__src);
  }
}

BOOL mlir::anec::ClampedRelu::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x1E69E9840];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v27);
  if (!v3)
  {
LABEL_5:
    v25[0] = "requires attribute 'max_value'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v33;
      v9 = __p;
      if (v33 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v33 = v7;
      operator delete(v9);
    }

    v10 = v30;
    if (v30)
    {
      v11 = v31;
      v12 = v30;
      if (v31 == v30)
      {
        goto LABEL_42;
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
LABEL_41:
      v12 = v30;
LABEL_42:
      v31 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v28 != &v29)
    {
      free(v28);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::CallGraphNode::getCallableRegion(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v25[0] = "requires attribute 'min_value'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v33;
      v18 = __p;
      if (v33 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v33 = v16;
      operator delete(v18);
    }

    v10 = v30;
    if (v30)
    {
      v19 = v31;
      v12 = v30;
      if (v31 == v30)
      {
        goto LABEL_42;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          operator delete[](v20);
        }
      }

      while (v19 != v10);
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v15 = *(v4 + 1);
  while (mlir::CallGraphNode::getCallableRegion(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, *(v4 + 1), "min_value", 9) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v15, "max_value", 9) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::AffineMapAttr::getValue(v21);
    isF16 = mlir::Type::isF16(v23);
    a1 = v6;
    if (isF16)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(a1, v21, v23);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "attribute '");
  if (*v9)
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v21);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: 16-bit float attribute");
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
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
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

uint64_t mlir::anec::Concat::getInterleaveAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Concat>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v28, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v31;
      }

      *(v30 + v21) = RankPromotionTypeForANE;
      v22 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v17 = v29 + 1;
      v29 = v17;
      if (v17 == a5)
      {
        v26 = v30;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v26, v22);
    result = mlir::anec::Concat::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::Concat::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v30[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  v10 = **(*(a2 + 8) + 96);
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a5);
  mlir::NamedAttribute::NamedAttribute(&__src, v10, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v29);
  if (a6)
  {
    v14 = *(*(*(a2 + 8) + 96) + 8);
    UnitAttr = mlir::Builder::getUnitAttr(a1, v13);
    mlir::NamedAttribute::NamedAttribute(&__src, v14, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v29);
  }

  __src = v30;
  v29 = 0x200000000;
  v16 = *a1;
  v17 = *a2;
  mlir::ValueRange::ValueRange(v27, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v20 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Concat>::inferReturnTypes(v16, v17, 1, v27[0], v27[1], Dictionary, v20, v21, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = __src;
  v23 = v29;
  v24 = *(a2 + 72);
  v25 = v24 + v29;
  if (v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v25, 8);
    LODWORD(v24) = *(a2 + 72);
  }

  if (v23)
  {
    memcpy((*(a2 + 64) + 8 * v24), v22, 8 * v23);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v30)
  {
    free(__src);
  }
}

uint64_t mlir::anec::Concat::verifyInvariantsImpl(mlir::Operation **this)
{
  v100 = *MEMORY[0x1E69E9840];
  v91[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v91);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v7 = *this;
      if (CallableRegion == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    for (i = 0; v5; v5 -= 16)
    {
      v26 = mlir::CallGraphNode::getCallableRegion(v4);
      v7 = *this;
      if (v26 == *(*(*(*this + 6) + 96) + 8))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(v7, v17, "axis", 4) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, i, "interleave", 0xA))
    {
      v19 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        v20 = *(v19 + 17);
        if (v20)
        {
          v21 = 0;
          v22 = *(v19 + 9);
          v23 = &v99;
          v24 = v93;
          v25 = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
          v82 = v22;
          while (1)
          {
            v27 = *this;
            v28 = (*(*(v22 + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (*(*v28 + 136) != v25)
            {
              break;
            }

            v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
            v91[0] = v28;
            v91[1] = v29;
            isSplat = mlir::ElementsAttr::isSplat(v91);
            if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 4))
            {
              break;
            }

            v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
            v83 = v28;
            v84 = v30;
            if (!mlir::CallOpInterface::getArgOperands(&v83))
            {
              break;
            }

            v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
            v88 = v28;
            v89 = v31;
            mlir::CallableOpInterface::getArgAttrsAttr(&v88);
            if (v32 != 4)
            {
              v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
              v86[0] = v28;
              v86[1] = v33;
              mlir::CallableOpInterface::getArgAttrsAttr(v86);
              if (v34 != 5)
              {
                break;
              }
            }

LABEL_31:
            if (++v21 == v20)
            {
              v19 = *this;
              goto LABEL_88;
            }
          }

          v85 = 261;
          v83 = "operand";
          v84 = 7;
          mlir::Operation::emitOpError(v27, &v83, v91);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v91, " #");
          if (!*v35)
          {
LABEL_49:
            v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
            if (v91[0])
            {
              mlir::InFlightDiagnostic::report(v91);
            }

            if (v99 == 1)
            {
              if (v98 != v23)
              {
                free(v98);
              }

              v58 = __p;
              if (__p)
              {
                v59 = v97;
                v60 = __p;
                if (v97 != __p)
                {
                  do
                  {
                    v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
                  }

                  while (v59 != v58);
                  v60 = __p;
                }

                v97 = v58;
                operator delete(v60);
              }

              v61 = v94;
              if (v94)
              {
                v62 = v95;
                v63 = v94;
                if (v95 != v94)
                {
                  do
                  {
                    v65 = *--v62;
                    v64 = v65;
                    *v62 = 0;
                    if (v65)
                    {
                      operator delete[](v64);
                    }
                  }

                  while (v62 != v61);
                  v63 = v94;
                }

                v95 = v61;
                operator delete(v63);
              }

              if (v92 != v24)
              {
                free(v92);
              }
            }

            if (!v57)
            {
              return 0;
            }

            goto LABEL_31;
          }

          v37 = v35 + 24;
          v36 = *(v35 + 24);
          LODWORD(v88) = 5;
          v89 = v21;
          v38 = *(v35 + 32);
          if (v38 >= *(v35 + 36))
          {
            if (v36 <= &v88 && v36 + 24 * v38 > &v88)
            {
              v68 = v20;
              v69 = v25;
              v70 = v24;
              v71 = v23;
              v72 = &v88 - v36;
              v73 = v35;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v35 + 24, v35 + 40, v38 + 1, 24);
              v35 = v73;
              v36 = *(v73 + 24);
              v39 = &v72[v36];
              v23 = v71;
              v24 = v70;
              v25 = v69;
              v20 = v68;
              v22 = v82;
LABEL_43:
              v40 = v36 + 24 * *(v35 + 32);
              v41 = *v39;
              *(v40 + 16) = *(v39 + 2);
              *v40 = v41;
              v42 = (*(v35 + 32) + 1);
              *(v35 + 32) = v42;
              if (!*v35)
              {
                goto LABEL_49;
              }

              LODWORD(v88) = 3;
              v89 = " must be variadic of 4D/5D memref of 16-bit float or 8-bit signed integer or 8-bit unsigned integer or 4-bit signed integer values, but got ";
              v90 = 140;
              v43 = *(v35 + 24);
              if (v42 >= *(v35 + 36))
              {
                if (v43 <= &v88 && v43 + 24 * v42 > &v88)
                {
                  v74 = v20;
                  v75 = v25;
                  v76 = v24;
                  v77 = v23;
                  v78 = &v88 - v43;
                  v79 = v35;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v37, v35 + 40, v42 + 1, 24);
                  v35 = v79;
                  v43 = *(v79 + 24);
                  v44 = &v78[v43];
                  v23 = v77;
                  v24 = v76;
                  v25 = v75;
                  v20 = v74;
                  v22 = v82;
LABEL_46:
                  v45 = v43 + 24 * *(v35 + 32);
                  v46 = *v44;
                  *(v45 + 16) = *(v44 + 2);
                  *v45 = v46;
                  ++*(v35 + 32);
                  if (*v35)
                  {
                    v47 = v20;
                    v48 = v25;
                    v49 = v24;
                    v50 = v23;
                    v51 = &v88;
                    v52 = v35;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v88, v28);
                    v35 = v52;
                    v53 = *(v52 + 32);
                    v54 = *(v52 + 24);
                    if (v53 >= *(v52 + 36))
                    {
                      if (v54 <= &v88 && v54 + 24 * v53 > &v88)
                      {
                        v80 = &v88 - v54;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(v37, v52 + 40, v53 + 1, 24);
                        v35 = v52;
                        v54 = *(v52 + 24);
                        v51 = &v80[v54];
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(v37, v52 + 40, v53 + 1, 24);
                        v35 = v52;
                        v54 = *(v52 + 24);
                        v51 = &v88;
                      }
                    }

                    v55 = v54 + 24 * *(v35 + 32);
                    v56 = *v51;
                    *(v55 + 16) = *(v51 + 2);
                    *v55 = v56;
                    ++*(v35 + 32);
                    v23 = v50;
                    v24 = v49;
                    v25 = v48;
                    v20 = v47;
                    v22 = v82;
                  }

                  goto LABEL_49;
                }

                v67 = v35;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v37, v35 + 40, v42 + 1, 24);
                v35 = v67;
                v43 = *(v67 + 24);
              }

              v44 = &v88;
              goto LABEL_46;
            }

            v66 = v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v35 + 24, v35 + 40, v38 + 1, 24);
            v35 = v66;
            v36 = *(v66 + 24);
          }

          v39 = &v88;
          goto LABEL_43;
        }
      }

LABEL_88:
      mlir::anec::Concat::verifyInvariantsImpl(v19, this, v91);
      return LOBYTE(v91[0]);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v83 = "requires attribute 'axis'";
    v85 = 259;
    mlir::OpState::emitOpError(this, &v83, v91);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v91);
    if (v91[0])
    {
      mlir::InFlightDiagnostic::report(v91);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v97;
        v11 = __p;
        if (v97 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v97 = v9;
        operator delete(v11);
      }

      v12 = v94;
      if (v94)
      {
        v13 = v95;
        v14 = v94;
        if (v95 != v94)
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
          v14 = v94;
        }

        v95 = v12;
        operator delete(v14);
      }

      if (v92 != v93)
      {
        free(v92);
      }
    }
  }

  return v8;
}

uint64_t mlir::anec::Convolution::getStride(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 72));
}

uint64_t mlir::anec::Convolution::getPadding(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 56));
}

uint64_t mlir::anec::Convolution::getPaddingModeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 64));
  if (result)
  {
    v6 = result;
    if (mlir::anec::PaddingModeAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getGroupsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 16));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getKernelScaleAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 40));
  if (result)
  {
    v6 = result;
    if (mlir::DenseFPElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getKernelZeroPointAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 48));
  if (result)
  {
    v6 = result;
    if (mlir::DenseIntElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getKernelPalettized_LUTAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 32));
  if (result)
  {
    v6 = result;
    if (mlir::DenseElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getKernelMutablePalettized_LUTAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 24));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::anec::Convolution::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v36 = a5;
  v37 = a4;
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  v47 = &v49;
  v50 = 1;
  v49 = xmmword_1E09999E0;
  v48 = 0x300000003;
  v44 = v46;
  v45 = 0x300000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, 6uLL, 8);
  v8 = v45;
  v9 = v44 + 8 * v45;
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  LODWORD(v45) = v8 + 6;
  v43 = 3;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v11 = mlir::RankedTensorType::get(&v43, 1, IntegerType, 0);
  if (v11)
  {
    v12 = v11;
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    v11 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = mlir::DenseElementsAttr::getFromRawBuffer(v11, v13, v47, 8 * v48, 8, 1, 0);
  Context = mlir::Attribute::getContext(a2);
  v40 = 261;
  v38 = "stride";
  v39 = 6;
  v16 = mlir::StringAttr::get(Context, &v38);
  mlir::NamedAttribute::NamedAttribute(&v41, v16, v14);
  mlir::NamedAttrList::push_back(a2 + 112, v41, v42);
  v43 = 3;
  v17 = mlir::Builder::getIntegerType(a1, 64, 0);
  v18 = mlir::RankedTensorType::get(&v43, 1, v17, 0);
  if (v18)
  {
    v19 = v18;
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v18 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = mlir::DenseElementsAttr::getFromRawBuffer(v18, v20, v47, 8 * v48, 8, 1, 0);
  v22 = mlir::Attribute::getContext(a2);
  v40 = 261;
  v38 = "dilation";
  v39 = 8;
  v23 = mlir::StringAttr::get(v22, &v38);
  mlir::NamedAttribute::NamedAttribute(&v41, v23, v21);
  mlir::NamedAttrList::push_back(a2 + 112, v41, v42);
  v43 = 6;
  v24 = mlir::Builder::getIntegerType(a1, 64, 0);
  v25 = mlir::RankedTensorType::get(&v43, 1, v24, 0);
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

  v28 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, v44, 8 * v45, 8, 1, 0);
  v29 = mlir::Attribute::getContext(a2);
  v40 = 261;
  v38 = "padding";
  v39 = 7;
  v30 = mlir::StringAttr::get(v29, &v38);
  mlir::NamedAttribute::NamedAttribute(&v41, v30, v28);
  mlir::NamedAttrList::push_back(a2 + 112, v41, v42);
  v31 = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v31, 1);
  v33 = mlir::Attribute::getContext(a2);
  v40 = 261;
  v38 = "groups";
  v39 = 6;
  v34 = mlir::StringAttr::get(v33, &v38);
  mlir::NamedAttribute::NamedAttribute(&v41, v34, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v41, v42);
  v35 = *(a2 + 72);
  if (v35 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v35 + 1, 8);
    LODWORD(v35) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v35) = a3;
  ++*(a2 + 72);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47 != &v49)
  {
    free(v47);
  }
}

void mlir::anec::Convolution::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v30 = a4;
  v31 = a3;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 72), a5);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v35);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v35);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 56), a7);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v35);
  if (a8)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 64), a8);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v35);
  }

  if (a9)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 16), a9);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v35);
  }

  if (a10)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a10);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v35);
  }

  if (a11)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 40), a11);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v35);
  }

  if (a12)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 48), a12);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v35);
  }

  if (a13)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 32), a13);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v35);
  }

  if (a14)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 24), a14);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v35);
  }

  __src = v36;
  v35 = 0x200000000;
  v20 = *a1;
  v21 = *a2;
  mlir::ValueRange::ValueRange(v33, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v24 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v32, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Convolution>::inferReturnTypes(v20, v21, 1, v33[0], v33[1], Dictionary, v24, v25, v32[0], v32[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v26 = __src;
  v27 = v35;
  v28 = *(a2 + 72);
  v29 = v28 + v35;
  if (v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v29, 8);
    LODWORD(v28) = *(a2 + 72);
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v28), v26, 8 * v27);
    LODWORD(v28) = *(a2 + 72);
  }

  *(a2 + 72) = v28 + v27;
  if (__src != v36)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Convolution>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v28, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v31;
      }

      *(v30 + v21) = RankPromotionTypeForANE;
      v22 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v17 = v29 + 1;
      v29 = v17;
      if (v17 == a5)
      {
        v26 = v30;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v26, v22);
    result = mlir::anec::Convolution::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::Convolution::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v39 = a4;
  v40 = a3;
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  mlir::OperationState::addOperands(a2, &v39, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 72), a5);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 56), a7);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  v20 = *(*(*(a2 + 8) + 96) + 64);
  v21 = mlir::IntegerType::get(*a1, 64, 0);
  v22 = mlir::IntegerAttr::get(v21, a8);
  mlir::NamedAttribute::NamedAttribute(&__src, v20, v22);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  v23 = *(*(*(a2 + 8) + 96) + 16);
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a9);
  mlir::NamedAttribute::NamedAttribute(&__src, v23, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  if (a10)
  {
    v27 = **(*(a2 + 8) + 96);
    UnitAttr = mlir::Builder::getUnitAttr(a1, v26);
    mlir::NamedAttribute::NamedAttribute(&__src, v27, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  }

  if (a11)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 40), a11);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  }

  if (a12)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 48), a12);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  }

  if (a13)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 32), a13);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  }

  if (a14)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 24), a14);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  }

  __src = v45;
  v44 = 0x200000000;
  v29 = *a1;
  v30 = *a2;
  mlir::ValueRange::ValueRange(v42, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v33 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v41, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Convolution>::inferReturnTypes(v29, v30, 1, v42[0], v42[1], Dictionary, v33, v34, v41[0], v41[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v35 = __src;
  v36 = v44;
  v37 = *(a2 + 72);
  v38 = v37 + v44;
  if (v38 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v38, 8);
    LODWORD(v37) = *(a2 + 72);
  }

  if (v36)
  {
    memcpy((*(a2 + 64) + 8 * v37), v35, 8 * v36);
    LODWORD(v37) = *(a2 + 72);
  }

  *(a2 + 72) = v37 + v36;
  if (__src != v45)
  {
    free(__src);
  }
}

uint64_t mlir::anec::Convolution::populateDefaultAttrs(mlir::anec::Convolution *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  v13 = Context;
  if (!mlir::NamedAttrList::get(a2, v4[8]))
  {
    v6 = v4[8];
    v7 = mlir::IntegerType::get(Context, 64, 0);
    v8 = mlir::IntegerAttr::get(v7, 0);
    mlir::NamedAttribute::NamedAttribute(&v14, v6, v8);
    mlir::NamedAttrList::push_back(a2, v14, v15);
  }

  result = mlir::NamedAttrList::get(a2, v4[2]);
  if (!result)
  {
    v10 = v4[2];
    IntegerType = mlir::Builder::getIntegerType(&v13, 64, 0);
    IntegerAttr = mlir::Builder::getIntegerAttr(&v13, IntegerType, 1);
    mlir::NamedAttribute::NamedAttribute(&v14, v10, IntegerAttr);
    return mlir::NamedAttrList::push_back(a2, v14, v15);
  }

  return result;
}

BOOL mlir::anec::Convolution::verifyInvariantsImpl(mlir::Operation **this)
{
  v53 = *MEMORY[0x1E69E9840];
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v44);
  if (!v3)
  {
LABEL_7:
    v42[0] = "requires attribute 'dilation'";
    v43 = 259;
    mlir::OpState::emitOpError(this, v42, v44);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 != 1)
    {
      return v7;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v50;
      v10 = __p;
      if (v50 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v50 = v8;
      operator delete(v10);
    }

    v11 = v47;
    if (v47)
    {
      v12 = v48;
      v13 = v47;
      if (v48 == v47)
      {
        goto LABEL_76;
      }

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
LABEL_75:
      v13 = v47;
LABEL_76:
      v48 = v11;
      operator delete(v13);
    }

LABEL_77:
    if (v45 != &v46)
    {
      free(v45);
    }

    return v7;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::CallGraphNode::getCallableRegion(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (mlir::CallGraphNode::getCallableRegion(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_37:
    v42[0] = "requires attribute 'padding'";
    v43 = 259;
    mlir::OpState::emitOpError(this, v42, v44);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 != 1)
    {
      return v7;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v50;
      v24 = __p;
      if (v50 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v50 = v22;
      operator delete(v24);
    }

    v11 = v47;
    if (v47)
    {
      v25 = v48;
      v13 = v47;
      if (v48 == v47)
      {
        goto LABEL_76;
      }

      do
      {
        v27 = *--v25;
        v26 = v27;
        *v25 = 0;
        if (v27)
        {
          operator delete[](v26);
        }
      }

      while (v25 != v11);
      goto LABEL_75;
    }

    goto LABEL_77;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v40 = *(v4 + 1);
  v41 = 0;
  while (1)
  {
    v21 = (v4 + v16);
    if (mlir::CallGraphNode::getCallableRegion((v4 + v16)) == *(*(*(*this + 6) + 96) + 56))
    {
      break;
    }

    if (mlir::CallGraphNode::getCallableRegion((v4 + v16)) == *(*(*(*this + 6) + 96) + 16))
    {
      v17 = *(v4 + v16 + 8);
    }

    else if (mlir::CallGraphNode::getCallableRegion((v4 + v16)) == *(*(*(*this + 6) + 96) + 24))
    {
      v18 = *(v4 + v16 + 8);
    }

    else if (mlir::CallGraphNode::getCallableRegion((v4 + v16)) == *(*(*(*this + 6) + 96) + 32))
    {
      v19 = *(v4 + v16 + 8);
    }

    else if (mlir::CallGraphNode::getCallableRegion((v4 + v16)) == *(*(*(*this + 6) + 96) + 40))
    {
      v20 = *(v4 + v16 + 8);
    }

    else if (mlir::CallGraphNode::getCallableRegion((v4 + v16)) == *(*(*(*this + 6) + 96) + 48))
    {
      v41 = *(v4 + v16 + 8);
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_37;
    }
  }

  v28 = v6 - v16;
  if (!v28)
  {
LABEL_59:
    v42[0] = "requires attribute 'stride'";
    v43 = 259;
    mlir::OpState::emitOpError(this, v42, v44);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 != 1)
    {
      return v7;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v50;
      v33 = __p;
      if (v50 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v50 = v31;
      operator delete(v33);
    }

    v11 = v47;
    if (v47)
    {
      v34 = v48;
      v13 = v47;
      if (v48 == v47)
      {
        goto LABEL_76;
      }

      do
      {
        v36 = *--v34;
        v35 = v36;
        *v34 = 0;
        if (v36)
        {
          operator delete[](v35);
        }
      }

      while (v34 != v11);
      goto LABEL_75;
    }

    goto LABEL_77;
  }

  v29 = 0;
  v30 = *(v21 + 1);
  while (mlir::CallGraphNode::getCallableRegion(v21) != *(*(*(*this + 6) + 96) + 72))
  {
    if (mlir::CallGraphNode::getCallableRegion(v21) == *(*(*(*this + 6) + 96) + 64))
    {
      v29 = *(v21 + 1);
    }

    v21 = (v21 + 16);
    v28 -= 16;
    if (!v28)
    {
      goto LABEL_59;
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, *(v21 + 1), "stride", 6) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v40, "dilation", 8) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps9(*this, v30, "padding", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps14(*this, v29, "padding_mode", 0xC) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v17, "groups", 6) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, v5, "channel_wise", 0xC) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps15(*this, v20, "kernel_scale", 12) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps16(*this, v41, "kernel_zero_point", 17) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps17(*this, v19, "kernel_palettized_LUT", 0x15) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps18(*this, v18, "kernel_mutable_palettized_LUT", 0x1D) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps6(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v38 = *this - 16;
  }

  else
  {
    v38 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v38, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps14(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2 || (mlir::anec::PaddingModeAttr::classof(a2) & 1) != 0)
  {
    return 1;
  }

  v21 = 257;
  mlir::Operation::emitOpError(a1, v20, v22);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v22, "attribute '");
  if (*v9)
  {
    v21 = 261;
    v20[0] = a3;
    v20[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v20);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: valid PaddingMode");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
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

    v12 = __p;
    if (__p)
    {
      v13 = v28;
      v14 = __p;
      if (v28 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v28 = v12;
      operator delete(v14);
    }

    v15 = v25;
    if (v25)
    {
      v16 = v26;
      v17 = v25;
      if (v26 != v25)
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
        v17 = v25;
      }

      v26 = v15;
      operator delete(v17);
    }

    if (v23 != &v24)
    {
      free(v23);
    }
  }

  return v7;
}