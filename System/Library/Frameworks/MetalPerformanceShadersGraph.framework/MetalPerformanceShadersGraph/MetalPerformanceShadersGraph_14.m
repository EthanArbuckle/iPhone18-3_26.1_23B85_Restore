uint64_t mlir::detail::Parser::parseAttributeDict(mlir::detail::Parser *this, mlir::NamedAttrList *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 1;
  v5 = -4096;
  v6 = -4096;
  v7 = -4096;
  v8 = -4096;
  v3[0] = this;
  v3[1] = &v4;
  v3[2] = a2;
  result = mlir::detail::Parser::parseCommaSeparatedList(this, 4, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttributeDict(mlir::NamedAttrList &)::$_0>, v3, " in attribute dictionary", 24);
  if ((v4 & 1) == 0)
  {
    llvm::deallocate_buffer(v5, (8 * v6));
  }

  return result;
}

uint64_t *mlir::detail::Parser::parseFloatAttr(mlir::detail::Parser *a1, uint64_t F64Type, int a3)
{
  v71 = *MEMORY[0x1E69E9840];
  FloatingPointValue = mlir::Token::getFloatingPointValue((*(a1 + 1) + 56));
  if ((v7 & 1) == 0)
  {
    *&v50 = "floating point value too large for attribute";
    v52 = 259;
    mlir::detail::Parser::emitError(a1, &v50, v62);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if (v70 != 1)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v68;
      v17 = __p;
      if (v68 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v68 = v15;
      operator delete(v17);
    }

    v18 = v65;
    if (v65)
    {
      v19 = v66;
      v20 = v65;
      if (v66 != v65)
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
        v20 = v65;
      }

      v66 = v18;
      operator delete(v20);
    }

    v23 = v63;
    if (v63 == &v64)
    {
      return 0;
    }

LABEL_25:
    free(v23);
    return 0;
  }

  v8 = *&FloatingPointValue;
  v9 = *(a1 + 1);
  *(v9 + 80) = *(v9 + 56);
  *(v9 + 96) = *(v9 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v50);
  v11 = *(a1 + 1);
  *(v11 + 56) = v50;
  *(v11 + 72) = v51;
  if (!F64Type)
  {
    v12 = *(a1 + 1);
    if (*(v12 + 56) == 15)
    {
      *(v12 + 80) = *(v12 + 56);
      *(v12 + 96) = *(v12 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v50);
      v13 = *(a1 + 1);
      *(v13 + 56) = v50;
      *(v13 + 72) = v51;
      result = mlir::detail::Parser::parseType(a1);
      F64Type = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      F64Type = mlir::Builder::getF64Type(a1, v10);
    }
  }

  v24 = *(*F64Type + 136);
  if (v24 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    *&v50 = "floating point value not valid for specified type";
    v52 = 259;
    mlir::detail::Parser::emitError(a1, &v50, v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return 0;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v42 = v58;
    if (v58)
    {
      v43 = v59;
      v44 = v58;
      if (v59 != v58)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = v58;
      }

      v59 = v42;
      operator delete(v44);
    }

    v45 = v56;
    if (v56)
    {
      v46 = v57;
      v47 = v56;
      if (v57 != v56)
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
        v47 = v56;
      }

      v57 = v45;
      operator delete(v47);
    }

    v23 = v54;
    if (v54 == &v55)
    {
      return 0;
    }

    goto LABEL_25;
  }

  v41 = v8;
  if (a3)
  {
    v41 = -v8;
  }

  return mlir::FloatAttr::get(F64Type, v41);
}

llvm::APFloatBase *mlir::detail::Parser::parseDecOrHexAttr(uint64_t a1, uint64_t a2, int a3)
{
  IntegerType = a2;
  v81 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v48 = *(v6 + 56);
  v7 = *(v6 + 72);
  v49 = v7;
  v50 = a2;
  v8 = *(&v48 + 1);
  Loc = mlir::Token::getLoc(&v48);
  v10 = *(a1 + 8);
  *(v10 + 96) = *(v10 + 72);
  *(v10 + 80) = *(v10 + 56);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v78);
  v11 = *(a1 + 8);
  *(v11 + 56) = v78;
  *(v11 + 72) = v79;
  if (!IntegerType)
  {
    v19 = *(a1 + 8);
    if (*(v19 + 56) != 15)
    {
      IntegerType = mlir::Builder::getIntegerType(a1, 64);
      v50 = IntegerType;
      v12 = *(*IntegerType + 136);
      if (v12 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
      {
        goto LABEL_3;
      }

LABEL_38:
      v45 = IntegerType;
      LOBYTE(v78) = 0;
      LOBYTE(v80) = 0;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v45);
      Width = mlir::FloatType::getWidth(&v45);
      if (mlir::detail::Parser::parseFloatFromIntegerLiteral(a1, &v78, &v48, a3, FloatSemantics, Width))
      {
        result = mlir::FloatAttr::get(v45, &v78);
        if (v80 != 1)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v80 != 1)
        {
          return result;
        }
      }

      v24 = result;
      v25 = *(&v78 + 1);
      if (llvm::APFloatBase::PPCDoubleDouble(result) == v25)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v78 + 8));
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat((&v78 + 8));
      }

      return v24;
    }

    *(v19 + 80) = *(v19 + 56);
    *(v19 + 96) = *(v19 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v78);
    v20 = *(a1 + 8);
    *(v20 + 56) = v78;
    *(v20 + 72) = v79;
    result = mlir::detail::Parser::parseType(a1);
    IntegerType = result;
    v50 = result;
    if (!result)
    {
      return result;
    }
  }

  v12 = *(*IntegerType + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    goto LABEL_38;
  }

LABEL_3:
  if (v12 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    goto LABEL_38;
  }

  if (v12 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    *&v78 = "integer literal not valid for specified type";
    v80 = 259;
    mlir::detail::Parser::emitError(a1, Loc, &v78, v69);
    if (v69[0])
    {
      mlir::InFlightDiagnostic::report(v69);
    }

    if (v77 != 1)
    {
      return 0;
    }

    if (v76 != &v77)
    {
      free(v76);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v75;
      v15 = __p;
      if (v75 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v75 = v13;
      operator delete(v15);
    }

    v16 = v72;
    if (v72)
    {
      v17 = v73;
      v18 = v72;
      if (v73 != v72)
      {
        do
        {
          v27 = *--v17;
          v26 = v27;
          *v17 = 0;
          if (v27)
          {
            operator delete[](v26);
          }
        }

        while (v17 != v16);
        v18 = v72;
      }

      v73 = v16;
      operator delete(v18);
    }

    v44 = v70;
    if (v70 == &v71)
    {
      return 0;
    }

    goto LABEL_90;
  }

  if (a3)
  {
    if (mlir::Type::isUnsignedInteger(&v50))
    {
      *&v78 = "negative integer literal not valid for unsigned integer type";
      v80 = 259;
      mlir::detail::Parser::emitError(a1, Loc, &v78, v60);
      if (v60[0])
      {
        mlir::InFlightDiagnostic::report(v60);
      }

      if (v68 != 1)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v28 = v65;
      if (v65)
      {
        v29 = v66;
        v30 = v65;
        if (v66 != v65)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = v65;
        }

        v66 = v28;
        operator delete(v30);
      }

      v31 = v63;
      if (v63)
      {
        v32 = v64;
        v33 = v63;
        if (v64 != v63)
        {
          do
          {
            v35 = *--v32;
            v34 = v35;
            *v32 = 0;
            if (v35)
            {
              operator delete[](v34);
            }
          }

          while (v32 != v31);
          v33 = v63;
        }

        v64 = v31;
        operator delete(v33);
      }

      v44 = v61;
      if (v61 == &v62)
      {
        return 0;
      }

LABEL_90:
      free(v44);
      return 0;
    }

    IntegerType = v50;
  }

  buildAttributeAPInt(&v45, IntegerType, a3, v8, v7);
  if (v47)
  {
    result = mlir::Builder::getIntegerAttr(a1, v50, &v45);
  }

  else
  {
    *&v78 = "integer constant out of range for attribute";
    v80 = 259;
    mlir::detail::Parser::emitError(a1, Loc, &v78, v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v36 = v56;
      if (v56)
      {
        v37 = v57;
        v38 = v56;
        if (v57 != v56)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = v56;
        }

        v57 = v36;
        operator delete(v38);
      }

      v39 = v54;
      if (v54)
      {
        v40 = v55;
        v41 = v54;
        if (v55 != v54)
        {
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
          v41 = v54;
        }

        v55 = v39;
        operator delete(v41);
      }

      if (v52 != &v53)
      {
        free(v52);
      }
    }

    result = 0;
  }

  if (v47 == 1 && v46 >= 0x41 && v45)
  {
    v24 = result;
    operator delete[](v45);
    return v24;
  }

  return result;
}

const char *mlir::detail::Parser::parseSparseElementsAttr(char *a1, uint64_t *a2)
{
  v70[1] = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v5 = *(a1 + 1);
  *(v5 + 96) = *(v5 + 72);
  *(v5 + 80) = *(v5 + 56);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v62);
  v6 = *(a1 + 1);
  *(v6 + 56) = v62;
  *(v6 + 72) = v63;
  *&v62 = "Expected '<' after 'sparse'";
  v64[4] = 259;
  if ((mlir::detail::Parser::parseToken(a1, 23, &v62) & 1) == 0)
  {
    return 0;
  }

  IntegerType = mlir::Builder::getIntegerType(a1, 64);
  v8 = *(a1 + 1);
  v9 = (v8 + 56);
  if (*(v8 + 56) == 19)
  {
    *(v8 + 80) = *v9;
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v62);
    v10 = *(a1 + 1);
    *(v10 + 56) = v62;
    *(v10 + 72) = v63;
    result = mlir::detail::Parser::parseElementsLiteralType(a1, a2);
    v52 = result;
    v53 = v12;
    if (result)
    {
      *&v62 = 0;
      mlir::CallableOpInterface::getArgAttrsAttr(&v52);
      *(&v62 + 1) = v13;
      *&v49 = mlir::RankedTensorType::get(&v62, 2, IntegerType, 0);
      v14 = mlir::TensorType::operator mlir::ShapedType(&v49);
      v16 = v15;
      *&v49 = 0;
      isSplat = mlir::ElementsAttr::isSplat(&v52);
      *&v62 = mlir::RankedTensorType::get(&v49, 1, isSplat, 0);
      v18 = mlir::TensorType::operator mlir::ShapedType(&v62);
      v20 = v19;
      v21 = mlir::DenseElementsAttr::get(v14, v16, 0, 0);
      v22 = mlir::DenseElementsAttr::get(v18, v20, 0, 0);
      *&v49 = Loc;
      *&v62 = a1;
      *(&v62 + 1) = &v49;
      return mlir::SparseElementsAttr::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr &&)::{lambda(void)#1}>, &v62, v52, v53, v21, v22);
    }

    return result;
  }

  v23 = mlir::Token::getLoc(v9);
  *&v62 = a1;
  *(&v62 + 1) = v64;
  v63 = 0x400000000;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v68 = 0;
  if (*(*(a1 + 1) + 56) == 22)
  {
    {
      goto LABEL_14;
    }
  }

  {
    goto LABEL_14;
  }

  v52 = "expected ','";
  v55[4] = 259;
  if (mlir::detail::Parser::parseToken(a1, 16, &v52))
  {
    v24 = mlir::Token::getLoc((*(a1 + 1) + 56));
    v52 = a1;
    v53 = v55;
    v54 = 0x400000000;
    v61 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    LOBYTE(v59) = 0;
    v25 = *(a1 + 1);
    v26 = (v25 + 56);
    v27 = *(v25 + 56);
    if (v27 == 22)
    {
      {
        goto LABEL_27;
      }
    }

    else if (v27 == 11)
    {
      v28 = *v26;
      v60 = *(v25 + 72);
      v59 = v28;
      v61 = 1;
      *(v25 + 80) = *v26;
      *(v25 + 96) = *(v25 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v49);
      v29 = *(a1 + 1);
      *(v29 + 56) = v49;
      *(v29 + 72) = v50;
    }

    {
      goto LABEL_27;
    }

    *&v49 = "expected '>'";
    v51 = 259;
    if (mlir::detail::Parser::parseToken(a1, 19, &v49))
    {
      result = mlir::detail::Parser::parseElementsLiteralType(a1, a2);
      v47 = result;
      v48 = v32;
      if (result)
      {
        if (v63)
        {
          *&v49 = mlir::RankedTensorType::get(*(&v62 + 1), v63, IntegerType, 0);
          v33 = &v49;
        }

        else
        {
          *&v49 = 1;
          mlir::CallableOpInterface::getArgAttrsAttr(&v47);
          *(&v49 + 1) = v37;
          v46[0] = mlir::RankedTensorType::get(&v49, 2, IntegerType, 0);
          v33 = v46;
        }

        v46[0] = mlir::TensorType::operator mlir::ShapedType(v33);
        v46[1] = v38;
        v40 = mlir::ElementsAttr::isSplat(&v47);
        v41 = v54;
        if (v54)
        {
          v42 = v53;
        }

        else
        {
          v70[0] = *mlir::CallableOpInterface::getArgAttrsAttr(v46);
          v42 = v70;
          v41 = 1;
        }

        *&v49 = mlir::RankedTensorType::get(v42, v41, v40, 0);
        v43 = mlir::TensorType::operator mlir::ShapedType(&v49);
        v70[0] = Loc;
        *&v49 = a1;
        *(&v49 + 1) = v70;
        result = mlir::SparseElementsAttr::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &)::{lambda(void)#1}>, &v49, v47, v48, Attr, v45);
        v34 = v56;
        if (!v56)
        {
LABEL_30:
          if (v53 != v55)
          {
            v36 = result;
            free(v53);
            result = v36;
          }

          goto LABEL_15;
        }

LABEL_29:
        v57 = v34;
        v35 = result;
        operator delete(v34);
        result = v35;
        goto LABEL_30;
      }

LABEL_28:
      v34 = v56;
      if (!v56)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_27:
    result = 0;
    goto LABEL_28;
  }

LABEL_14:
  result = 0;
LABEL_15:
  if (__p)
  {
    v66 = __p;
    v30 = result;
    operator delete(__p);
    result = v30;
  }

  if (*(&v62 + 1) != v64)
  {
    v31 = result;
    free(*(&v62 + 1));
    return v31;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseStridedLayoutAttr(mlir::detail::Parser *this)
{
  v34 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v29[0] = this;
  v29[1] = &Loc;
  v2 = *(this + 1);
  *(v2 + 96) = *(v2 + 72);
  *(v2 + 80) = *(v2 + 56);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v31);
  v3 = *(this + 1);
  *(v3 + 56) = v31;
  *(v3 + 72) = v32[0];
  *&v31 = "expected '<' after 'strided'";
  v33 = 259;
  if ((mlir::detail::Parser::parseToken(this, 23, &v31) & 1) == 0)
  {
    return 0;
  }

  *&v26 = "expected '['";
  v28 = 259;
  if ((mlir::detail::Parser::parseToken(this, 22, &v26) & 1) == 0)
  {
    return 0;
  }

  *&v31 = v32;
  *(&v31 + 1) = 0x600000000;
  if (*(*(this + 1) + 56) != 29)
  {
    v11 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(this);
    if ((v12 & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v13 = DWORD2(v31);
      if (DWORD2(v31) >= HIDWORD(v31))
      {
        v17 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v32, DWORD2(v31) + 1, 8);
        v11 = v17;
        v13 = DWORD2(v31);
      }

      *(v31 + 8 * v13) = v11;
      ++DWORD2(v31);
      v14 = *(this + 1);
      if (*(v14 + 56) != 16)
      {
        break;
      }

      *(v14 + 80) = *(v14 + 56);
      *(v14 + 96) = *(v14 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
      v15 = *(this + 1);
      *(v15 + 56) = v26;
      *(v15 + 72) = v27;
      v11 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(this);
      if ((v16 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  *&v26 = "expected ']'";
  v28 = 259;
  if (mlir::detail::Parser::parseToken(this, 29, &v26))
  {
    v4 = *(this + 1);
    if (*(v4 + 56) == 19)
    {
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
      v5 = *(this + 1);
      *(v5 + 56) = v26;
      *(v5 + 72) = v27;
      if (mlir::StridedLayoutAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseStridedLayoutAttr(void)::$_0>, v29, 0, v31, DWORD2(v31)))
      {
        v6 = ***(this + 1);
        v7 = v31;
        v8 = DWORD2(v31);
        v9 = 0;
LABEL_8:
        result = mlir::StridedLayoutAttr::get(v6, v9, v7, v8);
        goto LABEL_25;
      }
    }

    else
    {
      *&v26 = "expected ','";
      v28 = 259;
      if (mlir::detail::Parser::parseToken(this, 16, &v26))
      {
        v24 = "expected 'offset' after comma";
        v25 = 259;
        if (mlir::detail::Parser::parseToken(this, 70, &v24))
        {
          v22 = "expected ':' after 'offset'";
          v23 = 259;
          if (mlir::detail::Parser::parseToken(this, 15, &v22))
          {
            v18 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(this);
            if (v19)
            {
              v20 = v18;
              *&v26 = "expected '>'";
              v28 = 259;
              if (mlir::detail::Parser::parseToken(this, 19, &v26) & 1) != 0 && (mlir::StridedLayoutAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseStridedLayoutAttr(void)::$_0>, v29, v20, v31, DWORD2(v31)))
              {
                v6 = ***(this + 1);
                v7 = v31;
                v8 = DWORD2(v31);
                v9 = v20;
                goto LABEL_8;
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  result = 0;
LABEL_25:
  if (v31 != v32)
  {
    v21 = result;
    free(v31);
    return v21;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseDistinctAttr(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(a1 + 8) + 56));
  v5 = *(a1 + 8);
  *(v5 + 96) = *(v5 + 72);
  *(v5 + 80) = *(v5 + 56);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v33);
  v6 = *(a1 + 8);
  *(v6 + 56) = v33;
  *(v6 + 72) = v34;
  *&v33 = "expected '[' after 'distinct'";
  v35 = 259;
  if (mlir::detail::Parser::parseToken(a1, 22, &v33))
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 64);
    v9 = *(v7 + 72);
    *&v33 = "expected distinct ID";
    v35 = 259;
    if (mlir::detail::Parser::parseToken(a1, 10, &v33))
    {
      UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(v8, v9);
      v32 = v10;
      if ((v10 & 1) == 0)
      {
        *&v33 = "expected an unsigned 64-bit integer";
        v35 = 259;
        mlir::detail::Parser::emitError(a1, &v33, v37);
        if (v37[0])
        {
          mlir::InFlightDiagnostic::report(v37);
        }

        if (v45 == 1)
        {
          if (v44 != &v45)
          {
            free(v44);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v43;
            v17 = __p;
            if (v43 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v43 = v15;
            operator delete(v17);
          }

          v18 = v40;
          if (v40)
          {
            v19 = v41;
            v20 = v40;
            if (v41 != v40)
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
              v20 = v40;
            }

            v41 = v18;
            operator delete(v20);
          }

          if (v38 != &v39)
          {
            free(v38);
          }
        }

        return 0;
      }

      *&v33 = "expected ']' to close distinct ID";
      v35 = 259;
      if (mlir::detail::Parser::parseToken(a1, 29, &v33))
      {
        v29[0] = "expected '<' after distinct ID";
        v30 = 259;
        if (mlir::detail::Parser::parseToken(a1, 23, v29))
        {
          v11 = *(a1 + 8);
          if (*(v11 + 56) == 19)
          {
            *(v11 + 80) = *(v11 + 56);
            *(v11 + 96) = *(v11 + 72);
            mlir::Lexer::lexToken((*(a1 + 8) + 8), &v33);
            v12 = *(a1 + 8);
            *(v12 + 56) = v33;
            *(v12 + 72) = v34;
            UnitAttr = mlir::Builder::getUnitAttr(a1, v13);
            goto LABEL_32;
          }

          v24 = mlir::detail::Parser::parseAttribute(a1, a2);
          if (!v24)
          {
            *&v33 = "expected attribute";
            v35 = 259;
            mlir::detail::Parser::emitError(a1, &v33, v36);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
            return 0;
          }

          UnitAttr = v24;
          *&v33 = "expected '>' to close distinct attribute";
          v35 = 259;
          if (mlir::detail::Parser::parseToken(a1, 19, &v33))
          {
LABEL_32:
            v25 = *(*(a1 + 8) + 104);
            v26 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::find((v25 + 72), &UInt64IntegerValue);
            if (*(v25 + 72) + 16 * *(v25 + 88) == v26)
            {
              v29[0] = mlir::DistinctAttr::create(UnitAttr);
              llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::try_emplace<mlir::DistinctAttr&>(v25 + 72, &UInt64IntegerValue, v29, &v33);
              v27 = v33;
            }

            else
            {
              v27 = v26;
              if (mlir::AffineMapAttr::getValue((v26 + 8)) != UnitAttr)
              {
                v29[0] = "referenced attribute does not match previous definition: ";
                v30 = 259;
                mlir::detail::Parser::emitError(a1, Loc, v29, &v33);
                Value = mlir::AffineMapAttr::getValue((v27 + 8));
                mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(&v33, &Value);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
                return 0;
              }
            }

            return *(v27 + 8);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::parseOptionalAttribute(mlir::detail::Parser *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a1 + 1) + 56);
  v5 = (v4 - 4) > 0x3C || ((1 << (v4 - 4)) & 0x10800060C01500E3) == 0;
  if (v5 && ((v8 = v4 - 72, v9 = v8 > 0xA, v10 = (1 << v8) & 0x481, !v9) ? (v11 = v10 == 0) : (v11 = 1), v11))
  {
    v15 = 0;
    v12 = mlir::detail::Parser::parseOptionalType(a1, &v15);
    if (v12 & 0x100) != 0 && (v12)
    {
      v13 = v12;
      v14 = mlir::TypeAttr::get(v15);
      v12 = v13;
      *a2 = v14;
    }

    return v12 | (HIBYTE(v12) << 8);
  }

  else
  {
    v6 = mlir::detail::Parser::parseAttribute(a1, a3);
    *a2 = v6;
    return (v6 != 0) | 0x100u;
  }
}

uint64_t mlir::detail::Parser::parseOptionalAttribute(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  if (*(*(a1 + 8) + 56) != 22)
  {
    return 0;
  }

  v4 = mlir::detail::Parser::parseAttribute(a1, a3);
  if (!v4)
  {
    return 256;
  }

  *a2 = v4;
  return 257;
}

{
  if (*(*(a1 + 8) + 56) != 11)
  {
    return 0;
  }

  v4 = mlir::detail::Parser::parseAttribute(a1, a3);
  if (!v4)
  {
    return 256;
  }

  *a2 = v4;
  return 257;
}

{
  if (*(*(a1 + 8) + 56) != 4)
  {
    return 0;
  }

  v4 = mlir::detail::Parser::parseAttribute(a1, a3);
  if (!v4)
  {
    return 256;
  }

  *a2 = v4;
  return 257;
}

void buildAttributeAPInt(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v19[1] = a5;
  v20 = a2;
  v19[0] = a4;
  v18 = 1;
  v7 = 10;
  __p = 0;
  if (a5 >= 2)
  {
    if (*(a4 + 1) == 120)
    {
      v7 = 0;
    }

    else
    {
      v7 = 10;
    }
  }

  if (!llvm::StringRef::getAsInteger(v19, v7, &__p))
  {
    if (mlir::Type::isIndex(&v20))
    {
      IntOrFloatBitWidth = 64;
      v9 = v18;
      v11 = v18 - 64;
      v10 = v18 > 0x40;
      if (v18 >= 0x40)
      {
        goto LABEL_10;
      }
    }

    else
    {
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v20);
      v9 = v18;
      v11 = v18 - IntOrFloatBitWidth;
      v10 = v18 > IntOrFloatBitWidth;
      if (v18 >= IntOrFloatBitWidth)
      {
LABEL_10:
        if (v10)
        {
          if (v9 > 0x40)
          {
            if (llvm::APInt::countLeadingZerosSlowCase(&__p) < v11)
            {
              goto LABEL_43;
            }
          }

          else if (v9 + __clz(__p) - 64 < v11)
          {
            goto LABEL_43;
          }

          llvm::APInt::trunc(&__p, IntOrFloatBitWidth, &v15);
          if (v18 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          __p = v15;
          v9 = v16;
          v18 = v16;
        }

        if (!IntOrFloatBitWidth)
        {
          if (a3)
          {
            goto LABEL_43;
          }

          goto LABEL_47;
        }

LABEL_26:
        if (a3)
        {
          if (v9 > 0x40)
          {
            llvm::APInt::flipAllBitsSlowCase(&__p);
          }

          else
          {
            v12 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
            if (!v9)
            {
              v12 = 0;
            }

            __p = (v12 & ~__p);
          }

          llvm::APInt::operator++(&__p);
          v9 = v18;
          p_p = (__p + 8 * ((v18 - 1) >> 6));
          if (v18 < 0x41)
          {
            p_p = &__p;
          }

          if (((*p_p >> (v18 - 1)) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (mlir::Type::isSignedInteger(&v20) || mlir::Type::isIndex(&v20))
        {
          v9 = v18;
          v13 = (__p + 8 * ((v18 - 1) >> 6));
          if (v18 < 0x41)
          {
            v13 = &__p;
          }

          if ((*v13 >> (v18 - 1)))
          {
LABEL_43:
            *a1 = 0;
            *(a1 + 16) = 0;
            if (v9 < 0x41)
            {
              return;
            }

            goto LABEL_44;
          }
        }

        else
        {
          v9 = v18;
        }

LABEL_47:
        *(a1 + 8) = v9;
        *a1 = __p;
        *(a1 + 16) = 1;
        return;
      }
    }

    llvm::APInt::zext(&__p, IntOrFloatBitWidth, &v15);
    if (v18 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    __p = v15;
    v9 = v16;
    v18 = v16;
    goto LABEL_26;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v18 < 0x41)
  {
    return;
  }

LABEL_44:
  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t *mlir::detail::Parser::parseElementsLiteralType(mlir::detail::Parser *a1, uint64_t *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_2;
  }

  v26[0] = "expected ':'";
  v27 = 259;
  if ((mlir::detail::Parser::parseToken(a1, 15, v26) & 1) == 0)
  {
    return 0;
  }

  result = mlir::detail::Parser::parseType(a1);
  a2 = result;
  if (result)
  {
LABEL_2:
    v25[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
    v25[1] = v3;
    if (v25[0])
    {
      if (mlir::CallOpInterface::getArgOperands(v25))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v25);
        if (!v5)
        {
          return v25[0];
        }

        v6 = 8 * v5;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v6 -= 8;
          if (!v6)
          {
            return v25[0];
          }
        }
      }

      v26[0] = "elements literal type must have static shape";
      v27 = 259;
      mlir::detail::Parser::emitError(a1, v26, v28);
      if (v28[0])
      {
        mlir::InFlightDiagnostic::report(v28);
      }

      if (v36 != 1)
      {
        return 0;
      }

      if (v35 != &v36)
      {
        free(v35);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v34;
        v10 = __p;
        if (v34 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v34 = v8;
        operator delete(v10);
      }

      v11 = v31;
      if (v31)
      {
        v12 = v32;
        v13 = v31;
        if (v32 != v31)
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
          v13 = v31;
        }

        v32 = v11;
        operator delete(v13);
      }

      v24 = v29;
      if (v29 == &v30)
      {
        return 0;
      }
    }

    else
    {
      v26[0] = "elements literal must be a shaped type";
      v27 = 259;
      mlir::detail::Parser::emitError(a1, v26, v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 != 1)
      {
        return 0;
      }

      if (v44 != &v45)
      {
        free(v44);
      }

      v16 = v42;
      if (v42)
      {
        v17 = v43;
        v18 = v42;
        if (v43 != v42)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = v42;
        }

        v43 = v16;
        operator delete(v18);
      }

      v19 = v40;
      if (v40)
      {
        v20 = v41;
        v21 = v40;
        if (v41 != v40)
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
          v21 = v40;
        }

        v41 = v19;
        operator delete(v21);
      }

      v24 = v38;
      if (v38 == &v39)
      {
        return 0;
      }
    }

    free(v24);
    return 0;
  }

  return result;
}

uint64_t anonymous namespace::TensorLiteralParser::getAttr(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v320 = *MEMORY[0x1E69E9840];
  *&v299 = a3;
  *(&v299 + 1) = a4;
  isSplat = mlir::ElementsAttr::isSplat(&v299);
  if (*(a1 + 104) == 1 && (mlir::Type::isIntOrIndexOrFloat(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
  {
    v304 = v299;
    v303 = mlir::ElementsAttr::isSplat(&v304);
    if (!mlir::Type::isIntOrIndexOrFloat(&v303) && *(*v303 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v35 = *a1;
      v308 = 257;
      mlir::detail::Parser::emitError(v35, a2, &v307, &v309);
      if (v309)
      {
        LODWORD(v305[0]) = 3;
        v305[1] = "expected floating-point, integer, or complex element type, got ";
        v306 = 63;
        v36 = v305;
        v37 = *(&v310 + 1);
        if (v311 >= v312)
        {
          if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
          {
            v283 = v305 - *(&v310 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v37 = *(&v310 + 1);
            v36 = &v283[*(&v310 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v36 = v305;
            v37 = *(&v310 + 1);
          }
        }

        v38 = v37 + 24 * v311;
        v39 = *v36;
        *(v38 + 16) = v36[2];
        *v38 = v39;
        ++v311;
        if (v309)
        {
          v40 = v305;
          mlir::DiagnosticArgument::DiagnosticArgument(v305, v303);
          v41 = *(&v310 + 1);
          if (v311 >= v312)
          {
            if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
            {
              v285 = v305 - *(&v310 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
              v41 = *(&v310 + 1);
              v40 = &v285[*(&v310 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
              v40 = v305;
              v41 = *(&v310 + 1);
            }
          }

          v42 = v41 + 24 * v311;
          v43 = *v40;
          *(v42 + 16) = v40[2];
          *v42 = v43;
          ++v311;
          if (v309)
          {
            mlir::InFlightDiagnostic::report(&v309);
          }
        }
      }

      if (v319[0] != 1)
      {
        return 0;
      }

      if (v318 != v319)
      {
        free(v318);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v317;
        v46 = __p;
        if (v317 != __p)
        {
          do
          {
            v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v317 = v44;
        operator delete(v46);
      }

      v30 = v314;
      if (!v314)
      {
        goto LABEL_240;
      }

      v47 = v315;
      v32 = v314;
      if (v315 == v314)
      {
        goto LABEL_239;
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

      while (v47 != v30);
      goto LABEL_238;
    }

    v301[0] = 0;
    v301[1] = 0;
    v302 = 0;
    v77 = *a1;
    *v305 = *(a1 + 80);
    v306 = *(a1 + 96);
    mlir::Token::getHexStringValue(v305, &v309);
    if (BYTE8(v310) == 1)
    {
      if (SHIBYTE(v302) < 0)
      {
        operator delete(v301[0]);
      }

      *v301 = v309;
      v302 = v310;
    }

    else
    {
      Loc = mlir::Token::getLoc(v305);
      v308 = 259;
      mlir::detail::Parser::emitError(v77, Loc, &v307, &v309);
      v79 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v309);
      if (v309)
      {
        mlir::InFlightDiagnostic::report(&v309);
      }

      if (v319[0] == 1)
      {
        if (v318 != v319)
        {
          free(v318);
        }

        v80 = __p;
        if (__p)
        {
          v81 = v317;
          v82 = __p;
          if (v317 != __p)
          {
            do
            {
              v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
            }

            while (v81 != v80);
            v82 = __p;
          }

          v317 = v80;
          operator delete(v82);
        }

        v83 = v314;
        if (v314)
        {
          v84 = v315;
          v85 = v314;
          if (v315 != v314)
          {
            do
            {
              v87 = *--v84;
              v86 = v87;
              *v84 = 0;
              if (v87)
              {
                operator delete[](v86);
              }
            }

            while (v84 != v83);
            v85 = v314;
          }

          v315 = v83;
          operator delete(v85);
        }

        if (*(&v310 + 1) != v313)
        {
          free(*(&v310 + 1));
        }
      }

      if (!v79)
      {
        goto LABEL_338;
      }
    }

    if (SHIBYTE(v302) >= 0)
    {
      v180 = v301;
    }

    else
    {
      v180 = v301[0];
    }

    if (SHIBYTE(v302) >= 0)
    {
      v181 = HIBYTE(v302);
    }

    else
    {
      v181 = v301[1];
    }

    v300 = 0;
    if (mlir::DenseElementsAttr::isValidRawBuffer(v304, *(&v304 + 1), v180, v181, &v300))
    {
      result = mlir::DenseElementsAttr::getFromRawBuffer(v304, *(&v304 + 1), v180, v181, v182, v183, v184);
      if ((SHIBYTE(v302) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_339:
      v213 = v301[0];
      goto LABEL_340;
    }

    v185 = *a1;
    v308 = 257;
    mlir::detail::Parser::emitError(v185, a2, &v307, &v309);
    if (v309)
    {
      LODWORD(v305[0]) = 3;
      v305[1] = "elements hex data size is invalid for provided type: ";
      v306 = 53;
      v186 = v305;
      v187 = *(&v310 + 1);
      if (v311 >= v312)
      {
        if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
        {
          v284 = v305 - *(&v310 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
          v187 = *(&v310 + 1);
          v186 = &v284[*(&v310 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
          v186 = v305;
          v187 = *(&v310 + 1);
        }
      }

      v188 = v187 + 24 * v311;
      v189 = *v186;
      *(v188 + 16) = v186[2];
      *v188 = v189;
      ++v311;
      if (v309)
      {
        v190 = v305;
        mlir::DiagnosticArgument::DiagnosticArgument(v305, v304);
        v191 = *(&v310 + 1);
        if (v311 >= v312)
        {
          if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
          {
            v286 = v305 - *(&v310 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v191 = *(&v310 + 1);
            v190 = &v286[*(&v310 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v190 = v305;
            v191 = *(&v310 + 1);
          }
        }

        v192 = v191 + 24 * v311;
        v193 = *v190;
        *(v192 + 16) = v190[2];
        *v192 = v193;
        ++v311;
        if (v309)
        {
          mlir::InFlightDiagnostic::report(&v309);
        }
      }
    }

    if (v319[0] == 1)
    {
      if (v318 != v319)
      {
        free(v318);
      }

      v194 = __p;
      if (__p)
      {
        v195 = v317;
        v196 = __p;
        if (v317 != __p)
        {
          do
          {
            v195 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v195 - 1);
          }

          while (v195 != v194);
          v196 = __p;
        }

        v317 = v194;
        operator delete(v196);
      }

      v197 = v314;
      if (v314)
      {
        v198 = v315;
        v199 = v314;
        if (v315 != v314)
        {
          do
          {
            v201 = *--v198;
            v200 = v201;
            *v198 = 0;
            if (v201)
            {
              operator delete[](v200);
            }
          }

          while (v198 != v197);
          v199 = v314;
        }

        v315 = v197;
        operator delete(v199);
      }

      if (*(&v310 + 1) != v313)
      {
        free(*(&v310 + 1));
      }
    }

LABEL_338:
    result = 0;
    if ((SHIBYTE(v302) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_339;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v4 = *(a1 + 8);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v299);
    if (v9 != v7 || memcmp(v4, ArgAttrsAttr, 8 * v7))
    {
      v10 = *a1;
      v308 = 257;
      mlir::detail::Parser::emitError(v10, a2, &v307, &v309);
      if (v309)
      {
        LODWORD(v305[0]) = 3;
        v305[1] = "inferred shape of elements literal ([";
        v306 = 37;
        v11 = v305;
        v12 = *(&v310 + 1);
        if (v311 >= v312)
        {
          if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
          {
            v280 = v305 - *(&v310 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v12 = *(&v310 + 1);
            v11 = &v280[*(&v310 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v11 = v305;
            v12 = *(&v310 + 1);
          }
        }

        v13 = v12 + 24 * v311;
        v14 = *v11;
        *(v13 + 16) = v11[2];
        *v13 = v14;
        ++v311;
        if (v309)
        {
          v15 = *(a1 + 16);
          v16 = *(a1 + 8);
          v305[0] = ", ";
          llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(v16, &v16[v15], &v309 + 8, &v309 + 8, v305);
          if (v309)
          {
            LODWORD(v305[0]) = 3;
            v305[1] = "]) does not match type ([";
            v306 = 25;
            v17 = v305;
            v18 = *(&v310 + 1);
            if (v311 >= v312)
            {
              if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
              {
                v282 = v305 - *(&v310 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
                v18 = *(&v310 + 1);
                v17 = &v282[*(&v310 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
                v17 = v305;
                v18 = *(&v310 + 1);
              }
            }

            v19 = v18 + 24 * v311;
            v20 = *v17;
            *(v19 + 16) = v17[2];
            *v19 = v20;
            ++v311;
          }
        }
      }

      v21 = mlir::CallableOpInterface::getArgAttrsAttr(&v299);
      if (v309)
      {
        v305[0] = ", ";
        llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(v21, &v21[v22], &v309 + 8, &v309 + 8, v305);
        if (v309)
        {
          LODWORD(v305[0]) = 3;
          v305[1] = "])";
          v306 = 2;
          v23 = v305;
          v24 = *(&v310 + 1);
          if (v311 >= v312)
          {
            if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
            {
              v281 = v305 - *(&v310 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
              v24 = *(&v310 + 1);
              v23 = &v281[*(&v310 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
              v23 = v305;
              v24 = *(&v310 + 1);
            }
          }

          v25 = v24 + 24 * v311;
          v26 = *v23;
          *(v25 + 16) = v23[2];
          *v25 = v26;
          ++v311;
          if (v309)
          {
            mlir::InFlightDiagnostic::report(&v309);
          }
        }
      }

      if (v319[0] != 1)
      {
        return 0;
      }

      if (v318 != v319)
      {
        free(v318);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v317;
        v29 = __p;
        if (v317 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v317 = v27;
        operator delete(v29);
      }

      v30 = v314;
      if (!v314)
      {
LABEL_240:
        if (*(&v310 + 1) != v313)
        {
          free(*(&v310 + 1));
        }

        return 0;
      }

      v31 = v315;
      v32 = v314;
      if (v315 == v314)
      {
LABEL_239:
        v315 = v30;
        operator delete(v32);
        goto LABEL_240;
      }

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
LABEL_238:
      v32 = v314;
      goto LABEL_239;
    }
  }

  if ((*(a1 + 104) & 1) == 0 && *(a1 + 56) == *(a1 + 64))
  {
    v129 = mlir::CallableOpInterface::getArgAttrsAttr(&v299);
    if (mlir::ShapedType::getNumElements(v129, v130))
    {
      v131 = *a1;
      v308 = 257;
      mlir::detail::Parser::emitError(v131, a2, &v307, &v309);
      if (v309)
      {
        LODWORD(v305[0]) = 3;
        v305[1] = "parsed zero elements, but type (";
        v306 = 32;
        v132 = v305;
        v133 = *(&v310 + 1);
        if (v311 >= v312)
        {
          if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
          {
            v288 = v305 - *(&v310 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v133 = *(&v310 + 1);
            v132 = &v288[*(&v310 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v132 = v305;
            v133 = *(&v310 + 1);
          }
        }

        v134 = v133 + 24 * v311;
        v135 = *v132;
        *(v134 + 16) = v132[2];
        *v134 = v135;
        ++v311;
        if (v309)
        {
          v136 = v305;
          mlir::DiagnosticArgument::DiagnosticArgument(v305, v299);
          v137 = *(&v310 + 1);
          if (v311 >= v312)
          {
            if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
            {
              v290 = v305 - *(&v310 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
              v137 = *(&v310 + 1);
              v136 = &v290[*(&v310 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
              v136 = v305;
              v137 = *(&v310 + 1);
            }
          }

          v138 = v137 + 24 * v311;
          v139 = *v136;
          *(v138 + 16) = v136[2];
          *v138 = v139;
          v140 = ++v311;
          if (v309)
          {
            LODWORD(v305[0]) = 3;
            v305[1] = ") expected at least 1";
            v306 = 21;
            v141 = v305;
            v142 = *(&v310 + 1);
            if (v140 >= v312)
            {
              if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v140 > v305)
              {
                v292 = v305 - *(&v310 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v140 + 1, 24);
                v142 = *(&v310 + 1);
                v141 = &v292[*(&v310 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v140 + 1, 24);
                v141 = v305;
                v142 = *(&v310 + 1);
              }
            }

            v143 = v142 + 24 * v311;
            v144 = *v141;
            *(v143 + 16) = v141[2];
            *v143 = v144;
            ++v311;
            if (v309)
            {
              mlir::InFlightDiagnostic::report(&v309);
            }
          }
        }
      }

      if (v319[0] != 1)
      {
        return 0;
      }

      if (v318 != v319)
      {
        free(v318);
      }

      v145 = __p;
      if (__p)
      {
        v146 = v317;
        v147 = __p;
        if (v317 != __p)
        {
          do
          {
            v146 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v146 - 1);
          }

          while (v146 != v145);
          v147 = __p;
        }

        v317 = v145;
        operator delete(v147);
      }

      v30 = v314;
      if (!v314)
      {
        goto LABEL_240;
      }

      v148 = v315;
      v32 = v314;
      if (v315 == v314)
      {
        goto LABEL_239;
      }

      do
      {
        v150 = *--v148;
        v149 = v150;
        *v148 = 0;
        if (v150)
        {
          operator delete[](v149);
        }
      }

      while (v148 != v30);
      goto LABEL_238;
    }
  }

  v50 = isSplat;
  v51 = *(*isSplat + 136);
  if (v51 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v50 = 0;
  }

  *&v309 = v50;
  if (v51 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    isSplat = mlir::AffineMapAttr::getValue(&v309);
    if (mlir::Type::isIntOrIndex(&isSplat))
    {
      goto LABEL_60;
    }

    goto LABEL_131;
  }

  if (!mlir::Type::isIntOrIndex(&isSplat))
  {
LABEL_131:
    v88 = *(*isSplat + 136);
    if (v88 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v250 = *(&v299 + 1);
      v251 = v299;
      mlir::ElementsAttr::isSplat(&v299);
      if (*(a1 + 104) != 1)
      {
        v254 = *(a1 + 56);
        v297 = *(a1 + 64);
        v255 = v297 - v254;
        if (v297 == v254)
        {
          v260 = 0;
          v259 = 0;
          v257 = 0;
        }

        else
        {
          v294 = v251;
          v295 = v250;
          v256 = v255 >> 5;
          if ((v255 >> 5) > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_539:
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v257 = operator new(24 * v256);
          v258 = &v257[24 * v256];
          v259 = operator new(v255 >> 1);
          v255 = v257;
          v260 = v259;
          v261 = &v259[16 * v256];
          do
          {
            while (1)
            {
              v264 = *(v254 + 1);
              v309 = *v254;
              v310 = v264;
              mlir::Token::getStringValue((&v309 + 8), &v307);
              if (v255 >= v258)
              {
                v265 = v255 - v257;
                v266 = 0xAAAAAAAAAAAAAAABLL * ((v255 - v257) >> 3);
                v267 = v266 + 1;
                if (v266 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_539;
                }

                if (0x5555555555555556 * ((v258 - v257) >> 3) > v267)
                {
                  v267 = 0x5555555555555556 * ((v258 - v257) >> 3);
                }

                v268 = 0xAAAAAAAAAAAAAAABLL * ((v258 - v257) >> 3) >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v267;
                if (v268)
                {
                  if (v268 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_538;
                  }

                  v269 = operator new(24 * v268);
                }

                else
                {
                  v269 = 0;
                }

                v255 = &v269[24 * v266];
                *v255 = v307;
                v258 = &v269[24 * v268];
                memset(&v307, 0, sizeof(v307));
                memcpy((v255 - v265), v257, v265);
                if (v257)
                {
                  operator delete(v257);
                  if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v307.__r_.__value_.__l.__data_);
                  }
                }

                v257 = (v255 - v265);
              }

              else
              {
                *v255 = v307;
              }

              if (v259 >= v261)
              {
                break;
              }

              if (*(v255 + 23) >= 0)
              {
                v262 = v255;
              }

              else
              {
                v262 = *v255;
              }

              *v259 = v262;
              v263 = *(v255 + 23);
              if ((v263 & 0x80u) != 0)
              {
                v263 = *(v255 + 8);
              }

              *(v259 + 1) = v263;
              v259 += 16;
              v255 += 24;
              v254 += 32;
              if (v254 == v297)
              {
                goto LABEL_472;
              }
            }

            v270 = v259 - v260;
            v271 = (v259 - v260) >> 4;
            v272 = v271 + 1;
            if ((v271 + 1) >> 60)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            if ((v261 - v260) >> 3 > v272)
            {
              v272 = (v261 - v260) >> 3;
            }

            if ((v261 - v260) >= 0x7FFFFFFFFFFFFFF0)
            {
              v273 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v273 = v272;
            }

            if (v273)
            {
              if (v273 >> 60)
              {
LABEL_538:
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v274 = operator new(16 * v273);
            }

            else
            {
              v274 = 0;
            }

            v275 = &v274[16 * v271];
            v261 = &v274[16 * v273];
            v276 = *(v255 + 23);
            v277 = *v255;
            if (v276 >= 0)
            {
              v277 = v255;
            }

            *v275 = v277;
            if (v276 < 0)
            {
              v276 = *(v255 + 8);
            }

            v275[1] = v276;
            v259 = (v275 + 2);
            memcpy(v274, v260, v270);
            if (v260)
            {
              operator delete(v260);
            }

            v260 = v274;
            v255 += 24;
            v254 += 32;
          }

          while (v254 != v297);
LABEL_472:
          v251 = v294;
          v250 = v295;
        }

        result = mlir::DenseStringElementsAttr::get(v251, v250, v260, (v259 - v260) >> 4);
        if (v260)
        {
          v278 = result;
          operator delete(v260);
          result = v278;
        }

        if (!v257)
        {
          return result;
        }

        v241 = result;
        while (v255 != v257)
        {
          v279 = *(v255 - 1);
          v255 -= 24;
          if (v279 < 0)
          {
            operator delete(*v255);
          }
        }

        v243 = v257;
        goto LABEL_420;
      }

      mlir::Token::getStringValue((a1 + 80), &v309);
      v252 = SBYTE7(v310);
      v253 = v309;
      if ((SBYTE7(v310) & 0x80u) == 0)
      {
        v253 = &v309;
      }

      if (SBYTE7(v310) < 0)
      {
        v252 = *(&v309 + 1);
      }

      v307.__r_.__value_.__r.__words[0] = v253;
      v307.__r_.__value_.__l.__size_ = v252;
      result = mlir::DenseStringElementsAttr::get(v251, v250, &v307, 1);
      if ((SBYTE7(v310) & 0x80000000) == 0)
      {
        return result;
      }

      v213 = v309;
LABEL_340:
      v214 = result;
      v215 = v213;
      goto LABEL_396;
    }

    v301[0] = 0;
    v301[1] = 0;
    v302 = 0;
    *&v304 = isSplat;
    std::vector<llvm::APFloat>::reserve(v301, (*(a1 + 64) - *(a1 + 56)) >> 5);
    v105 = *(a1 + 56);
    v106 = *(a1 + 64);
    if (v105 == v106)
    {
LABEL_402:
      if (v51 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        result = mlir::DenseElementsAttr::get(v299, *(&v299 + 1), v301[0], ((v301[1] - v301[0]) >> 5) >> 1);
        v240 = v301[0];
        if (!v301[0])
        {
          return result;
        }
      }

      else
      {
        result = mlir::DenseElementsAttr::get(v299, *(&v299 + 1), v301[0], (v301[1] - v301[0]) >> 5);
        v240 = v301[0];
        if (!v301[0])
        {
          return result;
        }
      }

      goto LABEL_413;
    }

    while (1)
    {
      v107 = *v105;
      v108 = *(v105 + 2);
      if (v108 != 9)
      {
        if (v108 != 10 || *(v105 + 3) < 2uLL || **(v105 + 2) != 30768)
        {
          v152 = *a1;
          v308 = 257;
          mlir::detail::Parser::emitError(v152, &v307, &v309);
          if (v309)
          {
            LODWORD(v305[0]) = 3;
            v305[1] = "expected floating-point elements, but parsed integer";
            v306 = 52;
            v153 = v305;
            v154 = *(&v310 + 1);
            if (v311 >= v312)
            {
              if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
              {
                v287 = v305 - *(&v310 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
                v154 = *(&v310 + 1);
                v153 = &v287[*(&v310 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
                v153 = v305;
                v154 = *(&v310 + 1);
              }
            }

            v155 = v154 + 24 * v311;
            v156 = *v153;
            *(v155 + 16) = v153[2];
            *v155 = v156;
            ++v311;
          }

          v157 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v309);
          if (v309)
          {
            mlir::InFlightDiagnostic::report(&v309);
          }

          if (v319[0] == 1)
          {
            if (v318 != v319)
            {
              free(v318);
            }

            v158 = __p;
            if (__p)
            {
              v159 = v317;
              v160 = __p;
              if (v317 != __p)
              {
                do
                {
                  v159 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v159 - 1);
                }

                while (v159 != v158);
                v160 = __p;
              }

              v317 = v158;
              operator delete(v160);
            }

            v161 = v314;
            if (v314)
            {
              v162 = v315;
              v163 = v314;
              if (v315 != v314)
              {
                do
                {
                  v165 = *--v162;
                  v164 = v165;
                  *v162 = 0;
                  if (v165)
                  {
                    operator delete[](v164);
                  }
                }

                while (v162 != v161);
                v163 = v314;
              }

              v315 = v161;
              operator delete(v163);
            }

            if (*(&v310 + 1) != v313)
            {
              free(*(&v310 + 1));
            }
          }

          if (v157)
          {
            goto LABEL_402;
          }

LABEL_412:
          result = 0;
          v240 = v301[0];
          if (!v301[0])
          {
            return result;
          }

LABEL_413:
          v241 = result;
          v242 = v301[1];
          v243 = v240;
          if (v301[1] != v240)
          {
            v244 = llvm::APFloatBase::PPCDoubleDouble(v240);
            v245 = (v242 - 24);
            do
            {
              while (v244 == *v245)
              {
                llvm::detail::DoubleAPFloat::~DoubleAPFloat(v245);
                v247 = (v246 - 8);
                v245 = (v246 - 32);
                if (v247 == v240)
                {
                  goto LABEL_418;
                }
              }

              llvm::detail::IEEEFloat::~IEEEFloat(v245);
              v249 = (v248 - 8);
              v245 = (v248 - 32);
            }

            while (v249 != v240);
LABEL_418:
            v243 = v301[0];
          }

          v301[1] = v240;
LABEL_420:
          operator delete(v243);
          return v241;
        }

        LOBYTE(v309) = 0;
        LOBYTE(v311) = 0;
        v109 = *a1;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v304);
        Width = mlir::FloatType::getWidth(&v304);
        v112 = mlir::detail::Parser::parseFloatFromIntegerLiteral(v109, &v309, (v105 + 8), v107, FloatSemantics, Width);
        v113 = v112;
        if (v112)
        {
          v114 = v301[1];
          if (v301[1] >= v302)
          {
            v112 = std::vector<llvm::APFloat>::__emplace_back_slow_path<llvm::APFloat const&>(v301, &v309);
            v301[1] = v112;
            if (v311 == 1)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v115 = *(&v309 + 1);
            if (llvm::APFloatBase::PPCDoubleDouble(v112) == v115)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(v114 + 1, (&v309 + 8));
              v112 = v114 + 32;
              v301[1] = (v114 + 32);
              if (v311 == 1)
              {
                goto LABEL_205;
              }
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat((v114 + 8), (&v309 + 8));
              v112 = v114 + 32;
              v301[1] = (v114 + 32);
              if (v311 == 1)
              {
                goto LABEL_205;
              }
            }
          }
        }

        else if (v311 == 1)
        {
LABEL_205:
          v126 = *(&v309 + 1);
          if (llvm::APFloatBase::PPCDoubleDouble(v112) == v126)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v309 + 8));
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat((&v309 + 8));
          }
        }

        if ((v113 & 1) == 0)
        {
          goto LABEL_412;
        }

        goto LABEL_185;
      }

      v116 = COERCE_DOUBLE(mlir::Token::getFloatingPointValue((v105 + 8)));
      if ((v117 & 1) == 0)
      {
        v216 = *a1;
        v307.__r_.__value_.__r.__words[0] = "floating point value too large for attribute";
        v308 = 259;
        mlir::detail::Parser::emitError(v216, &v307, &v309);
        v217 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v309);
        if (v309)
        {
          mlir::InFlightDiagnostic::report(&v309);
        }

        if (v319[0] == 1)
        {
          if (v318 != v319)
          {
            free(v318);
          }

          v218 = __p;
          if (__p)
          {
            v219 = v317;
            v220 = __p;
            if (v317 != __p)
            {
              do
              {
                v219 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v219 - 1);
              }

              while (v219 != v218);
              v220 = __p;
            }

            v317 = v218;
            operator delete(v220);
          }

          v221 = v314;
          if (v314)
          {
            v222 = v315;
            v223 = v314;
            if (v315 != v314)
            {
              do
              {
                v225 = *--v222;
                v224 = v225;
                *v222 = 0;
                if (v225)
                {
                  operator delete[](v224);
                }
              }

              while (v222 != v221);
              v223 = v314;
            }

            v315 = v221;
            operator delete(v223);
          }

          if (*(&v310 + 1) != v313)
          {
            free(*(&v310 + 1));
          }
        }

        if (v217)
        {
          goto LABEL_402;
        }

        goto LABEL_412;
      }

      v118 = v116;
      if (v107)
      {
        v118 = -v116;
      }

      v119 = llvm::detail::IEEEFloat::IEEEFloat(&v307, v118);
      v120 = llvm::APFloatBase::IEEEdouble(v119);
      llvm::APFloat::Storage::Storage(&v309 + 8, &v307, v120);
      llvm::detail::IEEEFloat::~IEEEFloat(&v307);
      isF64 = mlir::Type::isF64(&v304);
      if ((isF64 & 1) == 0)
      {
        v307.__r_.__value_.__s.__data_[0] = 0;
        v122 = mlir::FloatType::getFloatSemantics(&v304);
        isF64 = llvm::APFloat::convert(&v309, v122, 1, &v307);
      }

      v123 = v301[1];
      if (v301[1] >= v302)
      {
        v127 = std::vector<llvm::APFloat>::__emplace_back_slow_path<llvm::APFloat const&>(v301, &v309);
        v128 = llvm::APFloatBase::PPCDoubleDouble(v127);
        v301[1] = v127;
        if (v128 != *(&v309 + 1))
        {
          goto LABEL_208;
        }
      }

      else
      {
        v124 = *(&v309 + 1);
        v125 = llvm::APFloatBase::PPCDoubleDouble(isF64);
        if (v125 == v124)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v123 + 1, (&v309 + 8));
          v301[1] = (v123 + 32);
          if (v125 != *(&v309 + 1))
          {
LABEL_208:
            llvm::detail::IEEEFloat::~IEEEFloat((&v309 + 8));
            goto LABEL_185;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat((v123 + 8), (&v309 + 8));
          v301[1] = (v123 + 32);
          if (v125 != *(&v309 + 1))
          {
            goto LABEL_208;
          }
        }
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v309 + 8));
LABEL_185:
      v105 += 32;
      if (v105 == v106)
      {
        goto LABEL_402;
      }
    }
  }

LABEL_60:
  v296 = v51;
  v301[0] = 0;
  v301[1] = 0;
  v302 = 0;
  *&v304 = isSplat;
  v52 = *(a1 + 64) - *(a1 + 56);
  if (v52)
  {
    v53 = v52 >> 5;
    if ((v52 >> 5) >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v301[0] = operator new(v52 >> 1);
    v301[1] = v301[0];
    v302 = (v301[0] + 16 * v53);
  }

  isUnsignedInteger = mlir::Type::isUnsignedInteger(&v304);
  v55 = *(a1 + 56);
  v56 = *(a1 + 64);
  if (v55 == v56)
  {
LABEL_381:
    if (v296 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      result = mlir::DenseElementsAttr::get(v299, *(&v299 + 1), v301[0], ((v301[1] - v301[0]) >> 4) >> 1);
      v237 = v301[0];
      if (v301[0])
      {
        goto LABEL_388;
      }
    }

    else
    {
      result = mlir::DenseElementsAttr::get(v299, *(&v299 + 1), v301[0], (v301[1] - v301[0]) >> 4);
      v237 = v301[0];
      if (v301[0])
      {
        goto LABEL_388;
      }
    }

    return result;
  }

  v57 = isUnsignedInteger;
  while (1)
  {
    v58 = (v55 + 8);
    v59 = *v55;
    v60 = mlir::Token::getLoc((v55 + 8));
    if ((v59 & v57) == 1)
    {
      v166 = *a1;
      v308 = 257;
      mlir::detail::Parser::emitError(v166, v60, &v307, &v309);
      if (v309)
      {
        LODWORD(v305[0]) = 3;
        v305[1] = "expected unsigned integer elements, but parsed negative value";
        v306 = 61;
        v167 = v305;
        v168 = *(&v310 + 1);
        if (v311 >= v312)
        {
          if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
          {
            v289 = v305 - *(&v310 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v168 = *(&v310 + 1);
            v167 = &v289[*(&v310 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v167 = v305;
            v168 = *(&v310 + 1);
          }
        }

        v169 = v168 + 24 * v311;
        v170 = *v167;
        *(v169 + 16) = v167[2];
        *v169 = v170;
        ++v311;
      }

      v171 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v309);
      if (v309)
      {
        mlir::InFlightDiagnostic::report(&v309);
      }

      if (v319[0] == 1)
      {
        if (v318 != v319)
        {
          free(v318);
        }

        v172 = __p;
        if (__p)
        {
          v173 = v317;
          v174 = __p;
          if (v317 != __p)
          {
            do
            {
              v173 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v173 - 1);
            }

            while (v173 != v172);
            v174 = __p;
          }

          v317 = v172;
          operator delete(v174);
        }

        v175 = v314;
        if (!v314)
        {
          goto LABEL_378;
        }

        v176 = v315;
        v177 = v314;
        if (v315 == v314)
        {
          goto LABEL_377;
        }

        do
        {
          v179 = *--v176;
          v178 = v179;
          *v176 = 0;
          if (v179)
          {
            operator delete[](v178);
          }
        }

        while (v176 != v175);
        goto LABEL_376;
      }

      goto LABEL_380;
    }

    v61 = *v58;
    if (*v58 != 59 && v61 != 79)
    {
      break;
    }

    if (!mlir::Type::isInteger(&v304, 1))
    {
      v202 = *a1;
      v308 = 257;
      mlir::detail::Parser::emitError(v202, v60, &v307, &v309);
      if (v309)
      {
        LODWORD(v305[0]) = 3;
        v305[1] = "expected i1 type for 'true' or 'false' values";
        v306 = 45;
        v203 = v305;
        v204 = *(&v310 + 1);
        if (v311 >= v312)
        {
          if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
          {
            v291 = v305 - *(&v310 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v204 = *(&v310 + 1);
            v203 = &v291[*(&v310 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
            v203 = v305;
            v204 = *(&v310 + 1);
          }
        }

        v205 = v204 + 24 * v311;
        v206 = *v203;
        *(v205 + 16) = v203[2];
        *v205 = v206;
        ++v311;
      }

      v171 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v309);
      if (v309)
      {
        mlir::InFlightDiagnostic::report(&v309);
      }

      if (v319[0] == 1)
      {
        if (v318 != v319)
        {
          free(v318);
        }

        v207 = __p;
        if (__p)
        {
          v208 = v317;
          v209 = __p;
          if (v317 != __p)
          {
            do
            {
              v208 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v208 - 1);
            }

            while (v208 != v207);
            v209 = __p;
          }

          v317 = v207;
          operator delete(v209);
        }

        v175 = v314;
        if (!v314)
        {
          goto LABEL_378;
        }

        v210 = v315;
        v177 = v314;
        if (v315 == v314)
        {
          goto LABEL_377;
        }

        do
        {
          v212 = *--v210;
          v211 = v212;
          *v210 = 0;
          if (v212)
          {
            operator delete[](v211);
          }
        }

        while (v210 != v175);
        goto LABEL_376;
      }

LABEL_380:
      if (v171)
      {
        goto LABEL_381;
      }

      goto LABEL_387;
    }

    v65 = *v58 == 79;
    DWORD2(v309) = 1;
    *&v309 = v65;
    v66 = v301[1];
    if (v301[1] >= v302)
    {
      v301[1] = std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(v301, &v309);
      if (DWORD2(v309) >= 0x41)
      {
LABEL_80:
        if (v309)
        {
          operator delete[](v309);
        }
      }
    }

    else
    {
      *(v301[1] + 2) = 1;
      *v66 = v65;
      v301[1] = (v66 + 16);
      if (DWORD2(v309) >= 0x41)
      {
        goto LABEL_80;
      }
    }

LABEL_66:
    v55 += 32;
    if (v55 == v56)
    {
      goto LABEL_381;
    }
  }

  if (v61 == 9)
  {
    v226 = *a1;
    v308 = 257;
    mlir::detail::Parser::emitError(v226, v60, &v307, &v309);
    if (v309)
    {
      LODWORD(v305[0]) = 3;
      v305[1] = "expected integer elements, but parsed floating-point";
      v306 = 52;
      v227 = v305;
      v228 = *(&v310 + 1);
      if (v311 >= v312)
      {
        if (*(&v310 + 1) <= v305 && *(&v310 + 1) + 24 * v311 > v305)
        {
          v293 = v305 - *(&v310 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
          v228 = *(&v310 + 1);
          v227 = &v293[*(&v310 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v310 + 8, v313, v311 + 1, 24);
          v227 = v305;
          v228 = *(&v310 + 1);
        }
      }

      v229 = v228 + 24 * v311;
      v230 = *v227;
      *(v229 + 16) = v227[2];
      *v229 = v230;
      ++v311;
    }

    v171 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v309);
    if (v309)
    {
      mlir::InFlightDiagnostic::report(&v309);
    }

    if (v319[0] == 1)
    {
      if (v318 != v319)
      {
        free(v318);
      }

      v231 = __p;
      if (__p)
      {
        v232 = v317;
        v233 = __p;
        if (v317 != __p)
        {
          do
          {
            v232 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v232 - 1);
          }

          while (v232 != v231);
          v233 = __p;
        }

        v317 = v231;
        operator delete(v233);
      }

      v175 = v314;
      if (!v314)
      {
        goto LABEL_378;
      }

      v234 = v315;
      v177 = v314;
      if (v315 == v314)
      {
LABEL_377:
        v315 = v175;
        operator delete(v177);
LABEL_378:
        if (*(&v310 + 1) != v313)
        {
          free(*(&v310 + 1));
        }

        goto LABEL_380;
      }

      do
      {
        v236 = *--v234;
        v235 = v236;
        *v234 = 0;
        if (v236)
        {
          operator delete[](v235);
        }
      }

      while (v234 != v175);
LABEL_376:
      v177 = v314;
      goto LABEL_377;
    }

    goto LABEL_380;
  }

  buildAttributeAPInt(v305, v304, v59 & 1, *(v55 + 2), *(v55 + 3));
  v62 = v306;
  if (v306)
  {
    v63 = v301[1];
    if (v301[1] >= v302)
    {
      v76 = std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(v301, v305);
    }

    else
    {
      v64 = v305[1];
      *(v301[1] + 2) = v305[1];
      if (v64 > 0x40)
      {
        llvm::APInt::initSlowCase(v63, v305);
      }

      else
      {
        *v63 = v305[0];
      }

      v76 = (v63 + 2);
    }

    v301[1] = v76;
  }

  else
  {
    v67 = *a1;
    v307.__r_.__value_.__r.__words[0] = "integer constant out of range for type";
    v308 = 259;
    mlir::detail::Parser::emitError(v67, v60, &v307, &v309);
    LOBYTE(v4) = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v309);
    if (v309)
    {
      mlir::InFlightDiagnostic::report(&v309);
    }

    if (v319[0] == 1)
    {
      if (v318 != v319)
      {
        free(v318);
      }

      v68 = __p;
      if (__p)
      {
        v69 = v317;
        v70 = __p;
        if (v317 != __p)
        {
          do
          {
            v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
          }

          while (v69 != v68);
          v70 = __p;
        }

        v317 = v68;
        operator delete(v70);
      }

      v71 = v314;
      if (v314)
      {
        v72 = v315;
        v73 = v314;
        if (v315 != v314)
        {
          do
          {
            v75 = *--v72;
            v74 = v75;
            *v72 = 0;
            if (v75)
            {
              operator delete[](v74);
            }
          }

          while (v72 != v71);
          v73 = v314;
        }

        v315 = v71;
        operator delete(v73);
      }

      if (*(&v310 + 1) != v313)
      {
        free(*(&v310 + 1));
      }
    }
  }

  if (v306 == 1 && LODWORD(v305[1]) >= 0x41 && v305[0])
  {
    operator delete[](v305[0]);
  }

  if (v62)
  {
    goto LABEL_66;
  }

  if (v4)
  {
    goto LABEL_381;
  }

LABEL_387:
  result = 0;
  v237 = v301[0];
  if (v301[0])
  {
LABEL_388:
    v214 = result;
    v238 = v301[1];
    v215 = v237;
    if (v301[1] != v237)
    {
      do
      {
        v239 = *(v238 - 2);
        v238 -= 2;
        if (v239 >= 0x41 && *v238)
        {
          operator delete[](*v238);
        }
      }

      while (v238 != v237);
      v215 = v301[0];
    }

    v301[1] = v237;
LABEL_396:
    operator delete(v215);
    return v214;
  }

  return result;
}

void *mlir::TensorType::operator mlir::ShapedType(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      mlir::TensorType::operator mlir::ShapedType();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

unint64_t mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (v2 + 56);
  if (*(v2 + 56) == 26)
  {
    *(v2 + 80) = *v3;
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v17);
    v4 = 0;
    v5 = *(a1 + 8);
    *(v5 + 56) = v17;
    *(v5 + 72) = v18;
    v6 = 0x8000000000000000;
    return v6 | v4;
  }

  Loc = mlir::Token::getLoc(v3);
  v9 = *(a1 + 8);
  v10 = *(v9 + 56);
  if (v10 == 24)
  {
    *(v9 + 80) = *(v9 + 56);
    *(v9 + 96) = *(v9 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v17);
    v11 = *(a1 + 8);
    *(v11 + 56) = v17;
    *(v11 + 72) = v18;
    v9 = *(a1 + 8);
    if (*(v9 + 56) != 10)
    {
      goto LABEL_14;
    }
  }

  else if (v10 != 10)
  {
    goto LABEL_14;
  }

  UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(v9 + 64), *(v9 + 72));
  if (v13)
  {
    v14 = UInt64IntegerValue;
    if ((UInt64IntegerValue & 0x8000000000000000) == 0)
    {
      v15 = *(a1 + 8);
      *(v15 + 80) = *(v15 + 56);
      *(v15 + 96) = *(v15 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v17);
      v16 = *(a1 + 8);
      *(v16 + 56) = v17;
      *(v16 + 72) = v18;
      if (v10 == 24)
      {
        v4 = -v14;
      }

      else
      {
        v4 = v14;
      }

      v6 = v4 & 0xFFFFFFFFFFFFFF00;
      v4 = v4;
      return v6 | v4;
    }
  }

LABEL_14:
  mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator() const(void)::{lambda(void)#1}::operator()(a1, Loc);
  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::find(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v5 = *(v2 + 16 * v4);
    if (*a2 == v5)
    {
      return v2 + 16 * v4;
    }

    v7 = 1;
    while (v5 != -1)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v3 - 1);
      v5 = *(v2 + 16 * v4);
      if (*a2 == v5)
      {
        return v2 + 16 * v4;
      }
    }
  }

  return v2 + 16 * v3;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::try_emplace<mlir::DistinctAttr&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = (v5 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -1)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -2;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = (v6 + 16 * (v16 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -1)
      {
LABEL_9:
        *v9 = *a2;
        v9[1] = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

__n128 mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = v10;
    mlir::DiagnosticArgument::DiagnosticArgument(v10, *a2);
    v4 = a1;
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    if (v6 >= *(a1 + 36))
    {
      if (v5 <= v10 && v5 + 24 * v6 > v10)
      {
        v9 = &v10[-v5];
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v6 + 1, 24);
        v4 = a1;
        v5 = *(a1 + 24);
        v2 = &v9[v5];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v6 + 1, 24);
        v4 = a1;
        v5 = *(a1 + 24);
        v2 = v10;
      }
    }

    v7 = (v5 + 24 * *(v4 + 32));
    result = *v2;
    v7[1].n128_u64[0] = v2[1].n128_u64[0];
    *v7 = result;
    ++*(v4 + 32);
  }

  return result;
}

uint64_t anonymous namespace::TensorLiteralParser::parseList(uint64_t *a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a1;
  __src = v18;
  v17 = 0x400000000;
  v13 = 0;
  v12[0] = a1;
  v12[1] = &v13;
  v12[2] = &v14;
  v12[3] = &v15;
  v12[4] = &__src;
  v3 = 0;
  {
    *(a2 + 8) = 0;
    v4 = v13;
    if (*(a2 + 12))
    {
      v5 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, 1uLL, 8);
      v5 = *(a2 + 8);
    }

    *(*a2 + 8 * v5) = v4;
    v6 = *(a2 + 12);
    v7 = (*(a2 + 8) + 1);
    *(a2 + 8) = v7;
    v8 = __src;
    v9 = v17;
    v10 = v17 + v7;
    if (v10 > v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v10, 8);
      LODWORD(v7) = *(a2 + 8);
    }

    if (v9)
    {
      memcpy((*a2 + 8 * v7), v8, 8 * v9);
      LODWORD(v7) = *(a2 + 8);
    }

    *(a2 + 8) = v7 + v9;
    v3 = 1;
  }

  if (__src != v18)
  {
    free(__src);
  }

  return v3;
}

uint64_t anonymous namespace::TensorLiteralParser::parseElement(_anonymous_namespace_::TensorLiteralParser *this)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 8);
  v5 = (v3 + 56);
  v4 = *(v3 + 56);
  if (v4 <= 23)
  {
    if ((v4 - 9) >= 2 && v4 != 11)
    {
      if (v4 == 21)
      {
        *(v3 + 80) = *v5;
        *(v3 + 96) = *(v3 + 72);
        mlir::Lexer::lexToken((*(v2 + 8) + 8), &v51);
        v6 = *(v2 + 8);
        *(v6 + 56) = v51;
        *(v6 + 72) = v52;
        {
          return 0;
        }

        v7 = *this;
        *&v51 = "expected ',' between complex elements";
        v54 = 259;
        if ((mlir::detail::Parser::parseToken(v7, 16, &v51) & 1) == 0)
        {
          return 0;
        }

        {
          return 0;
        }

        v8 = *this;
        v49[0] = "expected ')' after complex elements";
        v50 = 259;
        return (mlir::detail::Parser::parseToken(v8, 28, v49) & 1) != 0;
      }

LABEL_28:
      v49[0] = "expected element literal of primitive type";
      v50 = 259;
      mlir::detail::Parser::emitError(v2, v49, &v51);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
      v26 = result;
      if (v51)
      {
        mlir::InFlightDiagnostic::report(&v51);
        result = v26;
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
          result = v26;
        }

        v27 = __p;
        if (__p)
        {
          v28 = v59;
          v29 = __p;
          if (v59 != __p)
          {
            do
            {
              v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
            }

            while (v28 != v27);
            v29 = __p;
          }

          v59 = v27;
          operator delete(v29);
          result = v26;
        }

        v30 = v56;
        if (!v56)
        {
          goto LABEL_69;
        }

        v31 = v57;
        v32 = v56;
        if (v57 == v56)
        {
LABEL_68:
          v57 = v30;
          operator delete(v32);
          result = v26;
LABEL_69:
          if (v53 != &v55)
          {
            free(v53);
            return v26;
          }

          return result;
        }

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
LABEL_67:
        v32 = v56;
        goto LABEL_68;
      }

      return result;
    }

LABEL_13:
    v10 = *(this + 8);
    v11 = *(this + 9);
    if (v10 < v11)
    {
      *v10 = 0;
LABEL_15:
      v12 = *v5;
      *(v10 + 24) = *(v5 + 2);
      *(v10 + 8) = v12;
      v13 = (v10 + 32);
LABEL_48:
      *(this + 8) = v13;
      v37 = *this;
      v38 = *(v37 + 8);
      *(v38 + 80) = *(v38 + 56);
      *(v38 + 96) = *(v38 + 72);
      mlir::Lexer::lexToken((*(v37 + 8) + 8), &v51);
      v39 = *(v37 + 8);
      *(v39 + 56) = v51;
      *(v39 + 72) = v52;
      return 1;
    }

    v14 = *(this + 7);
    v15 = v10 - v14;
    v16 = (v10 - v14) >> 5;
    v17 = v16 + 1;
    if (!((v16 + 1) >> 59))
    {
      v18 = v11 - v14;
      if (v18 >> 4 > v17)
      {
        v17 = v18 >> 4;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (!v19)
      {
        v20 = 0;
        goto LABEL_45;
      }

      if (!(v19 >> 59))
      {
        v20 = operator new(32 * v19);
LABEL_45:
        v35 = &v20[32 * v16];
        *v35 = 0;
        goto LABEL_46;
      }

LABEL_83:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    goto LABEL_82;
  }

  if (v4 != 24)
  {
    if (v4 != 79 && v4 != 59)
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  *(v3 + 80) = *v5;
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v51);
  v21 = *(v2 + 8);
  *(v21 + 56) = v51;
  *(v21 + 72) = v52;
  v22 = *this;
  v23 = *(*this + 8);
  v24 = *(v23 + 56);
  v5 = (v23 + 56);
  if ((v24 - 9) < 2)
  {
    v10 = *(this + 8);
    v25 = *(this + 9);
    if (v10 < v25)
    {
      *v10 = 1;
      goto LABEL_15;
    }

    v14 = *(this + 7);
    v15 = v10 - v14;
    v46 = (v10 - v14) >> 5;
    v47 = v46 + 1;
    if (!((v46 + 1) >> 59))
    {
      v48 = v25 - v14;
      if (v48 >> 4 > v47)
      {
        v47 = v48 >> 4;
      }

      if (v48 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v47;
      }

      if (v19)
      {
        if (v19 >> 59)
        {
          goto LABEL_83;
        }

        v20 = operator new(32 * v19);
      }

      else
      {
        v20 = 0;
      }

      v35 = &v20[32 * v46];
      *v35 = 1;
LABEL_46:
      v36 = *v5;
      *(v35 + 3) = *(v5 + 2);
      *(v35 + 8) = v36;
      v13 = v35 + 32;
      memcpy(v20, v14, v15);
      *(this + 7) = v20;
      *(this + 8) = v13;
      *(this + 9) = &v20[32 * v19];
      if (v14)
      {
        operator delete(v14);
      }

      goto LABEL_48;
    }

LABEL_82:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v49[0] = "expected integer or floating point literal";
  v50 = 259;
  mlir::detail::Parser::emitError(v22, v49, &v51);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
  v26 = result;
  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v51);
    result = v26;
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
      result = v26;
    }

    v40 = __p;
    if (__p)
    {
      v41 = v59;
      v42 = __p;
      if (v59 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v59 = v40;
      operator delete(v42);
      result = v26;
    }

    v30 = v56;
    if (!v56)
    {
      goto LABEL_69;
    }

    v43 = v57;
    v32 = v56;
    if (v57 == v56)
    {
      goto LABEL_68;
    }

    do
    {
      v45 = *--v43;
      v44 = v45;
      *v43 = 0;
      if (v45)
      {
        operator delete[](v44);
      }
    }

    while (v43 != v30);
    goto LABEL_67;
  }

  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TensorLiteralParser::parseList(llvm::SmallVectorImpl<long long> &)::$_0>(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  __s2 = v25;
  v24 = 0x400000000;
  if (*(*(*v2 + 8) + 56) == 22)
  {
    {
LABEL_3:
      v3 = 0;
      goto LABEL_42;
    }
  }

  {
    goto LABEL_3;
  }

  v4 = *(a1 + 16);
  ++**(a1 + 8);
  if (*v4)
  {
    v5 = *(a1 + 32);
    if (v5 == &__s2)
    {
LABEL_40:
      *v4 = 0;
LABEL_41:
      v3 = 1;
      goto LABEL_42;
    }

    v6 = v24;
    v7 = *(v5 + 8);
    if (v7 >= v24)
    {
      if (v24)
      {
        memmove(*v5, __s2, 8 * v24);
      }

      goto LABEL_39;
    }

    if (*(v5 + 12) >= v24)
    {
      if (v7)
      {
        memmove(*v5, __s2, 8 * v7);
        goto LABEL_37;
      }
    }

    else
    {
      *(v5 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, v5 + 16, v6, 8);
    }

    v7 = 0;
LABEL_37:
    if (v24 != v7)
    {
      memcpy((*v5 + 8 * v7), __s2 + 8 * v7, 8 * (v24 - v7));
    }

LABEL_39:
    *(v5 + 8) = v6;
    v4 = *(a1 + 16);
    goto LABEL_40;
  }

  v8 = *(a1 + 32);
  v9 = **(a1 + 24);
  v10 = *(v8 + 8);
  if (v10 == v24 && !memcmp(*v8, __s2, 8 * v10))
  {
    goto LABEL_41;
  }

  v11 = *v9;
  v21 = "tensor literal is invalid; ranks are not consistent between elements";
  v22 = 259;
  mlir::detail::Parser::emitError(v11, &v21, v26);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
  if (v26[0])
  {
    mlir::InFlightDiagnostic::report(v26);
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

    if (v27 != &v28)
    {
      free(v27);
    }
  }

LABEL_42:
  if (__s2 != v25)
  {
    free(__s2);
  }

  return v3;
}

__n128 llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(const char **a1, const char **a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (a1 != a2)
  {
    v38 = v5;
    v39 = v6;
    v12 = (a3 + 16);
    v11 = *(a3 + 16);
    v13 = *a1;
    v35 = 2;
    v36 = v13;
    v14 = *(a3 + 24);
    v15 = &v35;
    if (v14 >= *(a3 + 28))
    {
      v33 = a1;
      if (v11 <= &v35 && v11 + 24 * v14 > &v35)
      {
        v34 = &v35 - v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a3 + 32, v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v34[v11];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a3 + 32, v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v35;
      }

      a1 = v33;
    }

    v16 = (v11 + 24 * *(a3 + 24));
    result = *v15;
    v16[1].n128_u64[0] = v15[1].n128_u64[0];
    *v16 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      v19 = *a5;
      if (*a5)
      {
        v20 = strlen(*a5);
        v35 = 3;
        v36 = v19;
        v37 = v20;
        v21 = *(a4 + 24);
        v22 = *(a4 + 16);
        if (v21 < *(a4 + 28))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v35 = 3;
        v36 = 0;
        v37 = 0;
        v21 = *(a4 + 24);
        v22 = *(a4 + 16);
        if (v21 < *(a4 + 28))
        {
          goto LABEL_8;
        }
      }

      if (v22 > &v35 || v22 + 24 * v21 <= &v35)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, a4 + 32, v21 + 1, 24);
        v22 = *(a4 + 16);
LABEL_8:
        v23 = &v35;
        goto LABEL_9;
      }

      v31 = &v35 - v22;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, a4 + 32, v21 + 1, 24);
      v22 = *(a4 + 16);
      v23 = &v31[v22];
LABEL_9:
      v24 = v22 + 24 * *(a4 + 24);
      v25 = *v23;
      *(v24 + 16) = *(v23 + 2);
      *v24 = v25;
      ++*(a4 + 24);
      v26 = *i;
      v35 = 2;
      v36 = v26;
      v27 = *(a3 + 24);
      v28 = *(a3 + 16);
      if (v27 >= *(a3 + 28))
      {
        if (v28 <= &v35 && v28 + 24 * v27 > &v35)
        {
          v32 = &v35 - v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a3 + 32, v27 + 1, 24);
          v28 = *v12;
          v29 = &v32[*v12];
          goto LABEL_11;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a3 + 32, v27 + 1, 24);
        v28 = *v12;
      }

      v29 = &v35;
LABEL_11:
      v30 = (v28 + 24 * *(a3 + 24));
      result = *v29;
      v30[1].n128_u64[0] = v29[1].n128_u64[0];
      *v30 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

uint64_t std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v3 - *a1) >> 4;
  v5 = v4 + 1;
  if ((v4 + 1) >> 60)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v8 = a1[2] - v2;
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
    v11 = &v10[16 * v4];
    v12 = *(a2 + 8);
    *(v11 + 8) = v12;
    if (v12 <= 0x40)
    {
LABEL_10:
      *v11 = *a2;
      v13 = v4;
      v14 = &v10[16 * v9];
      v15 = v11 + 16;
      v16 = v11 - 16 * v4;
      if (v2 == v3)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    v11 = 16 * v4;
    v17 = *(a2 + 8);
    *(16 * v4 + 8) = v17;
    if (v17 <= 0x40)
    {
      goto LABEL_10;
    }
  }

  llvm::APInt::initSlowCase(v11, a2);
  v2 = *a1;
  v3 = a1[1];
  v13 = (v3 - *a1) >> 4;
  v14 = &v10[16 * v9];
  v15 = v11 + 16;
  v16 = v11 - 16 * v13;
  if (*a1 == v3)
  {
    goto LABEL_22;
  }

LABEL_14:
  v18 = &v10[16 * v4 + 8 + -16 * v13];
  v19 = v2;
  do
  {
    *v18 = *(v19 + 8);
    *(v18 - 1) = *v19;
    *(v19 + 8) = 0;
    v19 += 16;
    v18 += 16;
  }

  while (v19 != v3);
  do
  {
    if (*(v2 + 8) >= 0x41u && *v2)
    {
      operator delete[](*v2);
    }

    v2 += 16;
  }

  while (v2 != v3);
  v2 = *a1;
LABEL_22:
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v14;
  if (v2)
  {
    operator delete(v2);
  }

  return v15;
}

void std::vector<llvm::APFloat>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (a2 >> 59)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v2 = a1[1] - *a1;
    v16 = a1;
    v3 = 32 * a2;
    __p = operator new(32 * a2);
    v13 = __p + v2;
    v14 = __p + v2;
    v15 = __p + v3;
    v5 = std::vector<llvm::APFloat>::__swap_out_circular_buffer(a1, &__p);
    v6 = v13;
    if (v14 != v13)
    {
      v7 = v14;
      v8 = llvm::APFloatBase::PPCDoubleDouble(v5);
      v9 = v7;
      do
      {
        while (1)
        {
          v14 = v9 - 32;
          v11 = *(v9 - 3);
          v10 = (v9 - 24);
          if (v8 != v11)
          {
            break;
          }

          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v10);
          v9 = v14;
          if (v14 == v6)
          {
            goto LABEL_8;
          }
        }

        llvm::detail::IEEEFloat::~IEEEFloat(v10);
        v9 = v14;
      }

      while (v14 != v6);
    }

LABEL_8:
    if (__p)
    {
      operator delete(__p);
    }
  }
}

uint64_t *std::vector<llvm::APFloat>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v4 - &v5[-*result];
  if (v5 != *result)
  {
    v8 = &v5[-*result] >> 5;
    v9 = llvm::APFloatBase::PPCDoubleDouble(result);
    v10 = (v6 + 8);
    v11 = (v4 - 32 * v8 + 8);
    do
    {
      while (v9 == v10->n128_u64[0])
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v10);
        v12 = &v10[1].n128_i8[8];
        v10 += 2;
        v11 = v13 + 2;
        if (v12 == v5)
        {
          goto LABEL_6;
        }
      }

      v14 = llvm::detail::IEEEFloat::IEEEFloat(v11, v10);
      v15 = &v10[1].n128_i8[8];
      v10 += 2;
      v11 = (v14 + 32);
    }

    while (v15 != v5);
LABEL_6:
    result = (v6 + 8);
    do
    {
      while (v9 == *result)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(result);
        v17 = (v16 + 24);
        result = (v16 + 32);
        if (v17 == v5)
        {
          goto LABEL_10;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(result);
      v19 = (v18 + 24);
      result = (v18 + 32);
    }

    while (v19 != v5);
LABEL_10:
    v6 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v6;
  a2[1] = v6;
  v20 = v3[1];
  v3[1] = a2[2];
  a2[2] = v20;
  v21 = v3[2];
  v3[2] = a2[3];
  a2[3] = v21;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<llvm::APFloat>::__emplace_back_slow_path<llvm::APFloat const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v23 = a1;
  if (v7)
  {
    if (v7 >> 59)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v8 = operator new(32 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  __p = v8;
  v20 = v9;
  v22 = &v8[32 * v7];
  v11 = *(a2 + 8);
  v10 = (a2 + 8);
  v12 = llvm::APFloatBase::PPCDoubleDouble(v8);
  if (v12 == v11)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9 + 1, v10);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((v9 + 8), v10);
  }

  v21 = v9 + 32;
  std::vector<llvm::APFloat>::__swap_out_circular_buffer(a1, &__p);
  v13 = a1[1];
  v15 = v20;
  for (i = v21; v21 != v15; i = v21)
  {
    while (1)
    {
      v21 = i - 32;
      v17 = *(i - 3);
      v16 = (i - 24);
      if (v12 == v17)
      {
        break;
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v16);
      i = v21;
      if (v21 == v15)
      {
        goto LABEL_19;
      }
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
  }

LABEL_19:
  if (__p)
  {
    operator delete(__p);
  }

  return v13;
}

const char *llvm::getTypeName<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>]";
  v6 = 103;
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

void mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator() const(void)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = "expected a 64-bit signed integer or '?'";
  v11 = 259;
  mlir::detail::Parser::emitError(a1, a2, &v10, v12);
  if (v12[0])
  {
    mlir::InFlightDiagnostic::report(v12);
  }

  if (v20 == 1)
  {
    if (v19 != &v20)
    {
      free(v19);
    }

    v2 = __p;
    if (__p)
    {
      v3 = v18;
      v4 = __p;
      if (v18 != __p)
      {
        do
        {
          v3 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v3 - 1);
        }

        while (v3 != v2);
        v4 = __p;
      }

      v18 = v2;
      operator delete(v4);
    }

    v5 = v15;
    if (v15)
    {
      v6 = v16;
      v7 = v15;
      if (v16 != v15)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            operator delete[](v8);
          }
        }

        while (v6 != v5);
        v7 = v15;
      }

      v16 = v5;
      operator delete(v7);
    }

    if (v13 != &v14)
    {
      free(v13);
    }
  }
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttribute(mlir::Type)::$_0>(void *a1)
{
  v2 = *a1;
  v3 = mlir::detail::Parser::parseAttribute(a1[1], 0);
  v4 = *(v2 + 2);
  if (v4 >= *(v2 + 3))
  {
    v6 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (v2 + 2), v4 + 1, 8);
    v3 = v6;
    LODWORD(v4) = *(v2 + 2);
  }

  *(*v2 + 8 * v4) = v3;
  ++*(v2 + 2);
  return *(**a1 + 8 * *(*a1 + 8) - 8) != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttributeDict(mlir::NamedAttrList &)::$_0>(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  LOBYTE(StringAttr) = 0;
  v57 = 0;
  v3 = *(v2 + 8);
  v4 = (v3 + 7);
  v5 = *(v3 + 14);
  if (v5 == 3 || v5 == 12)
  {
LABEL_6:
    v8 = v3[8];
    v7 = v3[9];
    LOWORD(v63) = 261;
    *&v60 = v8;
    *(&v60 + 1) = v7;
    v57 = 1;
    StringAttr = mlir::Builder::getStringAttr(v2, &v60);
    goto LABEL_7;
  }

  if (v5 != 11)
  {
    if (!mlir::Token::isKeyword(v4))
    {
      v58.__r_.__value_.__r.__words[0] = "expected attribute name";
      v59 = 259;
      mlir::detail::Parser::emitWrongTokenError(v2, &v58, &v60);
      v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      if (v60)
      {
        mlir::InFlightDiagnostic::report(&v60);
      }

      if (v71 != 1)
      {
        return v22;
      }

      if (v70 != &v71)
      {
        free(v70);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v69;
        v48 = __p;
        if (v69 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v69 = v46;
        operator delete(v48);
      }

      v26 = v66;
      if (!v66)
      {
        goto LABEL_77;
      }

      v49 = v67;
      v28 = v66;
      if (v67 == v66)
      {
        goto LABEL_76;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          operator delete[](v50);
        }
      }

      while (v49 != v26);
LABEL_75:
      v28 = v66;
LABEL_76:
      v67 = v26;
      operator delete(v28);
      goto LABEL_77;
    }

    v3 = *(v2 + 8);
    goto LABEL_6;
  }

  mlir::Token::getStringValue(v4, &v58);
  LOWORD(v63) = 260;
  *&v60 = &v58;
  v57 = 1;
  StringAttr = mlir::Builder::getStringAttr(v2, &v60);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

LABEL_7:
  mlir::OpaqueAttr::getAttrData(&StringAttr);
  if (!v9)
  {
    v58.__r_.__value_.__r.__words[0] = "expected valid attribute name";
    v59 = 259;
    mlir::detail::Parser::emitError(v2, &v58, &v60);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v71 != 1)
    {
      return v22;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v69;
      v25 = __p;
      if (v69 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v69 = v23;
      operator delete(v25);
    }

    v26 = v66;
    if (!v66)
    {
      goto LABEL_77;
    }

    v27 = v67;
    v28 = v66;
    if (v67 == v66)
    {
      goto LABEL_76;
    }

    do
    {
      v30 = *--v27;
      v29 = v30;
      *v27 = 0;
      if (v30)
      {
        operator delete[](v29);
      }
    }

    while (v27 != v26);
    goto LABEL_75;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>(*(a1 + 8), &StringAttr, &v60);
  if ((v61 & 1) == 0)
  {
    v54 = "duplicate key '";
    v55 = 259;
    mlir::detail::Parser::emitError(v2, &v54, &v60);
    AttrData = mlir::OpaqueAttr::getAttrData(&StringAttr);
    if (v60)
    {
      v59 = 261;
      v58.__r_.__value_.__r.__words[0] = AttrData;
      v58.__r_.__value_.__l.__size_ = v32;
      mlir::Diagnostic::operator<<(&v60 + 8, &v58);
      if (v60)
      {
        LODWORD(v58.__r_.__value_.__l.__data_) = 3;
        v58.__r_.__value_.__l.__size_ = "' in dictionary attribute";
        v58.__r_.__value_.__r.__words[2] = 25;
        v33 = &v58;
        v34 = v62;
        if (v63 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v63 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v34 = v62;
            v33 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v33 = &v58;
            v34 = v62;
          }
        }

        v35 = &v34[24 * v63];
        v36 = *&v33->__r_.__value_.__l.__data_;
        *(v35 + 2) = *(&v33->__r_.__value_.__l + 2);
        *v35 = v36;
        ++v63;
      }
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v71 != 1)
    {
      return v22;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v69;
      v39 = __p;
      if (v69 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v69 = v37;
      operator delete(v39);
    }

    v26 = v66;
    if (v66)
    {
      v40 = v67;
      v28 = v66;
      if (v67 == v66)
      {
        goto LABEL_76;
      }

      do
      {
        v42 = *--v40;
        v41 = v42;
        *v40 = 0;
        if (v42)
        {
          operator delete[](v41);
        }
      }

      while (v40 != v26);
      goto LABEL_75;
    }

LABEL_77:
    if (v62 != v65)
    {
      free(v62);
    }

    return v22;
  }

  v10 = *(v2 + 8);
  *(v10 + 80) = *(v10 + 56);
  *(v10 + 96) = *(v10 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v60);
  v11 = *(v2 + 8);
  *(v11 + 56) = v60;
  *(v11 + 72) = v61;
  *&v60 = mlir::OpaqueAttr::getAttrData(&StringAttr);
  *(&v60 + 1) = v12;
  v58.__r_.__value_.__s.__data_[0] = 46;
  v13 = llvm::StringRef::find(&v60, &v58, 1uLL, 0);
  if (v13 != -1 && *(&v60 + 1) > v13 + 1)
  {
    mlir::MLIRContext::getOrLoadDialect(***(v2 + 8), v60, v13);
  }

  v15 = *(v2 + 8);
  if (*(v15 + 56) == 18)
  {
    *(v15 + 80) = *(v15 + 56);
    *(v15 + 96) = *(v15 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), &v60);
    v16 = *(v2 + 8);
    *(v16 + 56) = v60;
    *(v16 + 72) = v61;
    v17 = mlir::detail::Parser::parseAttribute(v2, 0);
    if (!v17)
    {
      return 0;
    }

    v18 = *(a1 + 16);
    mlir::NamedAttribute::NamedAttribute(&v60, StringAttr, v17);
    v20 = *(&v60 + 1);
    v19 = v60;
    v21 = v18;
  }

  else
  {
    v43 = *(a1 + 16);
    v44 = StringAttr;
    UnitAttr = mlir::Builder::getUnitAttr(v2, v14);
    mlir::NamedAttribute::NamedAttribute(&v60, v44, UnitAttr);
    v20 = *(&v60 + 1);
    v19 = v60;
    v21 = v43;
  }

  mlir::NamedAttrList::push_back(v21, v19, v20);
  return 1;
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 2;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 2;
  }

  else
  {
    v6 = result[4];
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 1);
  }

  v8 = v6 - 1;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v6 - 1);
  v10 = &v7[2 * v9];
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v4 = *(result + 1);
      v12 = result[4];
    }

    *a3 = v10;
    *(a3 + 8) = &v4[2 * v12];
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != -4096)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == -8192;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = &v7[2 * (v18 & v8)];
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = result[4];
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - result[1] <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != -4096)
  {
    --result[1];
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 1);
    v14 = result[4];
  }

  *a3 = v10;
  *(a3 + 8) = &v4[2 * v14];
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 8 * v6);
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
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

unsigned int *llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(unsigned int *result, unsigned int a2)
{
  v2 = result;
  v58[3] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*result & 1) == 0)
  {
    v6 = *(result + 1);
    v7 = result[4];
    if (a2 > 4)
    {
      v23 = a2;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      *(v2 + 1) = buffer;
      *(v2 + 2) = v23;
      v25 = *v2;
      v8 = (v6 + 8 * v7);
      *v2 = *v2 & 1;
      if ((v25 & 1) == 0)
      {
        v26 = &buffer->i8[8 * v23];
        v27 = 8 * v23 - 8;
        if (v27 < 0x18)
        {
          v29 = buffer;
          goto LABEL_28;
        }

LABEL_22:
        v28 = (v27 >> 3) + 1;
        v29 = &buffer->i8[8 * (v28 & 0x3FFFFFFFFFFFFFFCLL)];
        v30 = buffer + 1;
        v31 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v32 = v28 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v30[-1] = v31;
          *v30 = v31;
          v30 += 2;
          v32 -= 4;
        }

        while (v32);
        if (v28 == (v28 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_29:
          if (v7)
          {
            v33 = v6;
            do
            {
              v39 = *v33;
              if ((*v33 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (*v2)
                {
                  v35 = 3;
                  v34 = v2 + 2;
                }

                else
                {
                  v34 = *(v2 + 1);
                  v35 = v2[4] - 1;
                }

                v36 = v35 & ((v39 >> 4) ^ (v39 >> 9));
                v37 = &v34[2 * v36];
                v38 = *v37;
                if (v39 != *v37)
                {
                  v40 = 0;
                  v41 = 1;
                  while (v38 != -4096)
                  {
                    if (v40)
                    {
                      v42 = 0;
                    }

                    else
                    {
                      v42 = v38 == -8192;
                    }

                    if (v42)
                    {
                      v40 = v37;
                    }

                    v43 = v36 + v41++;
                    v36 = v43 & v35;
                    v37 = &v34[2 * (v43 & v35)];
                    v38 = *v37;
                    if (v39 == *v37)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (v40)
                  {
                    v37 = v40;
                  }
                }

LABEL_33:
                *v37 = v39;
                *v2 += 2;
              }

              v33 = (v33 + 8);
            }

            while (v33 != v8);
          }

          llvm::deallocate_buffer(v6, (8 * v7));
        }

        do
        {
LABEL_28:
          *v29 = -4096;
          v29 += 8;
        }

        while (v29 != v26);
        goto LABEL_29;
      }
    }

    else
    {
      v8 = (v6 + 8 * v7);
      *result = 1;
    }

    v26 = (v2 + 10);
    buffer = (v2 + 2);
    v27 = 24;
    goto LABEL_22;
  }

  v9 = &v57;
  if ((*(result + 1) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v10 = *(result + 2);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v57 = *(result + 1);
    v9 = v58;
    v10 = *(result + 2);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v11 = *(result + 3);
      if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }
  }

  *v9++ = v10;
  v11 = *(result + 3);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v12 = *(result + 4);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  *v9++ = v11;
  v12 = *(result + 4);
  if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v13 = *result;
    if (a2 < 5)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  *v9++ = v12;
  v13 = *result;
  if (a2 < 5)
  {
LABEL_13:
    *result = v13 & 1;
    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_58:
    v16 = (v2 + 10);
    v15 = (v2 + 2);
    v17 = 24;
    goto LABEL_16;
  }

LABEL_57:
  *result = v13 & 0xFFFFFFFE;
  v44 = a2;
  result = llvm::allocate_buffer(8 * a2, 8uLL);
  *(v2 + 1) = result;
  *(v2 + 2) = v44;
  v45 = *v2;
  *v2 = *v2 & 1;
  if (v45)
  {
    goto LABEL_58;
  }

LABEL_14:
  v14 = v2[4];
  if (!v14)
  {
    goto LABEL_61;
  }

  v15 = *(v2 + 1);
  v16 = &v15->i64[v14];
  v17 = v16 - v15 - 8;
  if (v17 < 0x18)
  {
    v19 = *(v2 + 1);
    do
    {
LABEL_60:
      *v19++ = -4096;
    }

    while (v19 != v16);
    goto LABEL_61;
  }

LABEL_16:
  v18 = (v17 >> 3) + 1;
  v19 = &v15->i64[v18 & 0x3FFFFFFFFFFFFFFCLL];
  v20 = v15 + 1;
  v21 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v20[-1] = v21;
    *v20 = v21;
    v20 += 2;
    v22 -= 4;
  }

  while (v22);
  if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_60;
  }

LABEL_61:
  if (&v57 != v9)
  {
    v46 = &v57;
    do
    {
      v52 = *v46;
      if ((*v46 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v2)
        {
          v48 = 3;
          v47 = v2 + 2;
        }

        else
        {
          v47 = *(v2 + 1);
          v48 = v2[4] - 1;
        }

        v49 = v48 & ((v52 >> 4) ^ (v52 >> 9));
        v50 = &v47[2 * v49];
        v51 = *v50;
        if (v52 != *v50)
        {
          v53 = 0;
          v54 = 1;
          while (v51 != -4096)
          {
            if (v53)
            {
              v55 = 0;
            }

            else
            {
              v55 = v51 == -8192;
            }

            if (v55)
            {
              v53 = v50;
            }

            v56 = v49 + v54++;
            v49 = v56 & v48;
            v50 = &v47[2 * (v56 & v48)];
            v51 = *v50;
            if (v52 == *v50)
            {
              goto LABEL_65;
            }
          }

          if (v53)
          {
            v50 = v53;
          }
        }

LABEL_65:
        *v50 = v52;
        *v2 += 2;
      }

      ++v46;
    }

    while (v46 != v9);
  }

  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_0>(uint64_t *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 != 24)
  {
    v6 = *(v3 + 56);
    LOBYTE(v42) = 0;
    v44 = 0;
    if (v4 != 10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = *(v3 + 64);
    v13 = *(v3 + 72);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = v13;
    mlir::Lexer::lexToken((*(v2 + 8) + 8), __x);
    v14 = *(v2 + 8);
    *(v14 + 56) = *__x;
    *(v14 + 72) = v46;
    buildAttributeAPInt(__x, *v1, v4 == 24, v12, v13);
    if (v46)
    {
      v9 = *&__x[8];
      v43 = *&__x[8];
      v42 = *__x;
      v44 = 1;
      if (!*&__x[8])
      {
LABEL_11:
        ++*(v1 + 32);
        v18 = 1;
        goto LABEL_64;
      }

LABEL_10:
      v15 = v9 >> 3;
      v16.__i_ = *(v1 + 16);
      v17 = &v16.__i_[-*(v1 + 8)];
      __x[0] = 0;
      std::vector<char>::insert((v1 + 8), v16, v15, __x);
      llvm::StoreIntToMemory(&v42, &v17[*(v1 + 8)], v15);
      goto LABEL_11;
    }

    v40[0] = "integer constant out of range";
    v41 = 259;
    mlir::detail::Parser::emitError(v2, v40, __x);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__x);
    if (*__x)
    {
      mlir::InFlightDiagnostic::report(__x);
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v52;
        v35 = __p;
        if (v52 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v52 = v33;
        operator delete(v35);
      }

      v22 = v49;
      if (!v49)
      {
        goto LABEL_62;
      }

      v36 = v50;
      v24 = v49;
      if (v50 == v49)
      {
        goto LABEL_61;
      }

      do
      {
        v38 = *--v36;
        v37 = v38;
        *v36 = 0;
        if (v38)
        {
          operator delete[](v37);
        }
      }

      while (v36 != v22);
      goto LABEL_60;
    }

    goto LABEL_64;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), __x);
  v5 = *(v2 + 8);
  *(v5 + 56) = *__x;
  *(v5 + 72) = v46;
  v3 = *(v2 + 8);
  v6 = *(v3 + 56);
  LOBYTE(v42) = 0;
  v44 = 0;
  if (v6 == 10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 == 79 || v6 == 59)
  {
    if (mlir::Type::isInteger(v1, 1))
    {
      v7 = *(*(v2 + 8) + 56);
      mlir::Type::isUnsignedInteger(v1);
      v8 = v7 == 79;
      v9 = 8;
      v43 = 8;
      v42 = v8;
      v44 = 1;
      v10 = *(v2 + 8);
      *(v10 + 96) = *(v10 + 72);
      *(v10 + 80) = *(v10 + 56);
      mlir::Lexer::lexToken((*(v2 + 8) + 8), __x);
      v11 = *(v2 + 8);
      *(v11 + 56) = *__x;
      *(v11 + 72) = v46;
      goto LABEL_10;
    }

    v40[0] = "expected i1 type for 'true' or 'false' values";
    v41 = 259;
    mlir::detail::Parser::emitError(v2, v40, __x);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__x);
    if (*__x)
    {
      mlir::InFlightDiagnostic::report(__x);
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v52;
        v21 = __p;
        if (v52 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v52 = v19;
        operator delete(v21);
      }

      v22 = v49;
      if (!v49)
      {
        goto LABEL_62;
      }

      v23 = v50;
      v24 = v49;
      if (v50 == v49)
      {
LABEL_61:
        v50 = v22;
        operator delete(v24);
LABEL_62:
        if (v47 != &v48)
        {
          free(v47);
        }

        goto LABEL_64;
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
LABEL_60:
      v24 = v49;
      goto LABEL_61;
    }
  }

  else
  {
    v40[0] = "expected integer literal";
    v41 = 259;
    mlir::detail::Parser::emitError(v2, v40, __x);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__x);
    if (*__x)
    {
      mlir::InFlightDiagnostic::report(__x);
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v52;
        v29 = __p;
        if (v52 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v52 = v27;
        operator delete(v29);
      }

      v22 = v49;
      if (!v49)
      {
        goto LABEL_62;
      }

      v30 = v50;
      v24 = v49;
      if (v50 == v49)
      {
        goto LABEL_61;
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

      while (v30 != v22);
      goto LABEL_60;
    }
  }

LABEL_64:
  if (v44 == 1 && v43 >= 0x41 && v42)
  {
    operator delete[](v42);
  }

  return v18;
}

std::vector<char>::iterator std::vector<char>::insert(std::vector<char> *this, std::vector<char>::const_iterator __position, std::vector<char>::size_type __n, std::vector<char>::const_reference __x)
{
  i = __position.__i_;
  if (!__n)
  {
    return i;
  }

  v5 = __x;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end < __n)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + __n;
    if (v11 < 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v12 = (__position.__i_ - begin);
    v13 = value - begin;
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      v15 = operator new(v14);
    }

    else
    {
      v15 = 0;
    }

    memset(&v12[v15], *v5, __n);
    memcpy(&v12[v15 + __n], i, end - i);
    this->__end_ = i;
    memcpy(v15, begin, i - begin);
    this->__begin_ = v15;
    this->__end_ = &v12[v15 + __n + end - i];
    this->__end_cap_.__value_ = v15 + v14;
    if (begin)
    {
      operator delete(begin);
    }

    return &v12[v15];
  }

  v16 = end - __position.__i_;
  if (__n > end - __position.__i_)
  {
    memset(this->__end_, *__x, __n - (end - __position.__i_));
    v17 = &i[__n];
    this->__end_ = &i[__n];
    if (!v16)
    {
      return i;
    }

    v18 = end - i;
    v19 = &i[__n];
    v20 = i;
    v21 = &i[__n];
    if (i >= end)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v17 = this->__end_;
  v18 = __n;
  v19 = &__position.__i_[__n];
  v20 = &end[-__n];
  v21 = v17;
  if (end >= __n)
  {
LABEL_16:
    if (__n <= v16)
    {
      v22 = end - i;
    }

    else
    {
      v22 = __n;
    }

    v23 = &end[__n] - i - v22;
    v24 = v23 >= 0x20 && __n > 0x1F;
    v21 = v17;
    if (!v24)
    {
      goto LABEL_45;
    }

    v20 += v23 & 0xFFFFFFFFFFFFFFE0;
    v21 = &v17[v23 & 0xFFFFFFFFFFFFFFE0];
    v25 = &i[v22 + 16];
    v26 = &v25[-__n];
    v27 = v23 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v28 = *v26;
      *(v25 - 1) = *(v26 - 1);
      *v25 = v28;
      v25 += 32;
      v26 += 32;
      v27 -= 32;
    }

    while (v27);
    if (v23 != (v23 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_45:
      do
      {
        v29 = *v20++;
        *v21++ = v29;
      }

      while (v20 != end);
    }
  }

LABEL_28:
  this->__end_ = v21;
  if (v17 != v19)
  {
    memmove(v19, i, v17 - v19);
  }

  if (i <= v5)
  {
    if (this->__end_ <= v5)
    {
      v30 = 0;
    }

    else
    {
      v30 = __n;
    }

    v5 += v30;
  }

  memset(i, *v5, v18);
  return i;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_1>(uint64_t **a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 == 24)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), __p);
    v5 = *(v2 + 8);
    *(v5 + 56) = *__p;
    *(v5 + 72) = v45;
    v3 = *(v2 + 8);
  }

  v42 = *(v3 + 56);
  v43 = *(v3 + 72);
  v54[0] = 0;
  v56 = 0;
  v41 = *v1;
  if (v42 == 9)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), __p);
    v12 = *(v2 + 8);
    *(v12 + 56) = *__p;
    *(v12 + 72) = v45;
    v10 = COERCE_DOUBLE(mlir::Token::getFloatingPointValue(&v42));
    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v4 == 24)
    {
      v14 = -v10;
    }

    v15 = llvm::detail::IEEEFloat::IEEEFloat(v39, v14);
    v16 = llvm::APFloatBase::IEEEdouble(v15);
    llvm::APFloat::Storage::Storage(&__p[1], v39, v16);
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
    if (v56 == 1)
    {
      v18 = llvm::APFloat::Storage::operator=(&v55, &__p[1]);
      v11 = llvm::APFloatBase::PPCDoubleDouble(v18);
      if (v11 != __p[1])
      {
        goto LABEL_12;
      }

LABEL_52:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
      if (mlir::Type::isF64(v1))
      {
LABEL_14:
        if (v11 == v55.n128_u64[0])
        {
          v10 = COERCE_DOUBLE(llvm::detail::DoubleAPFloat::bitcastToAPInt(&v55, __p));
          v20 = LODWORD(__p[1]);
          if (LODWORD(__p[1]))
          {
            goto LABEL_16;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::bitcastToAPInt(&v55, __p);
          v20 = LODWORD(__p[1]);
          if (LODWORD(__p[1]))
          {
LABEL_16:
            v21 = v20 >> 3;
            v23 = v1[1];
            v22.__i_ = v1[2];
            v24 = (v1 + 1);
            v25 = &v22.__i_[-v23];
            v39[0] = 0;
            std::vector<char>::insert(v24, v22, v21, v39);
            v10 = COERCE_DOUBLE(llvm::StoreIntToMemory(__p, &v24->__begin_[v25], v21));
            v26 = __p[1];
            ++v24[1].__begin_;
            if (v26 >= 0x41)
            {
              v10 = *__p;
              if (__p[0])
              {
                operator delete[](__p[0]);
              }
            }

            goto LABEL_38;
          }
        }

        ++v1[4];
LABEL_38:
        v27 = 1;
        goto LABEL_46;
      }

LABEL_13:
      LOBYTE(__p[0]) = 0;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v41);
      llvm::APFloat::convert(v54, FloatSemantics, 1, __p);
      goto LABEL_14;
    }

    v36 = __p[1];
    v11 = llvm::APFloatBase::PPCDoubleDouble(v17);
    if (v11 == v36)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v55, &__p[1]);
      v56 = 1;
      if (v11 == __p[1])
      {
        goto LABEL_52;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v55, &__p[1]);
      v56 = 1;
      if (v11 == __p[1])
      {
        goto LABEL_52;
      }
    }

LABEL_12:
    llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
    if (mlir::Type::isF64(v1))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v42 == 10)
  {
    v6 = v4 == 24;
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), __p);
    v7 = *(v2 + 8);
    *(v7 + 56) = *__p;
    *(v7 + 72) = v45;
    v8 = mlir::FloatType::getFloatSemantics(&v41);
    Width = mlir::FloatType::getWidth(&v41);
    v10 = COERCE_DOUBLE(mlir::detail::Parser::parseFloatFromIntegerLiteral(v2, v54, &v42, v6, v8, Width));
    if (LOBYTE(v10))
    {
      v11 = llvm::APFloatBase::PPCDoubleDouble(*&v10);
      goto LABEL_14;
    }

LABEL_19:
    v27 = 0;
    goto LABEL_46;
  }

  *v39 = "expected integer or floating point literal";
  v40 = 259;
  mlir::detail::Parser::emitError(v2, v39, __p);
  *&v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__p);
  v27 = *&v10;
  if (__p[0])
  {
    mlir::InFlightDiagnostic::report(__p);
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v28 = v50;
    if (v50)
    {
      v29 = v51;
      v30 = v50;
      if (v51 != v50)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = v50;
      }

      v51 = v28;
      operator delete(v30);
    }

    v31 = v48;
    if (v48)
    {
      v32 = v49;
      v33 = v48;
      if (v49 != v48)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            operator delete[](v34);
          }
        }

        while (v32 != v31);
        v33 = v48;
      }

      v49 = v31;
      operator delete(v33);
    }

    v10 = *&v46;
    if (v46 != &v47)
    {
      free(v46);
    }
  }

LABEL_46:
  if (v56 == 1)
  {
    v37 = v55.n128_u64[0];
    if (llvm::APFloatBase::PPCDoubleDouble(*&v10) == v37)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v55);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v55);
    }
  }

  return v27;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr &&)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseStridedLayoutAttr(void)::$_0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 16 * v6);
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
        v7 = (v4 + 16 * (v13 & v5));
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

void *llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & (((0xBF58476D1CE4E5B9 * v23) >> 31) ^ (484763065 * v23));
          v22 = (*a1 + 16 * v25);
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = (*a1 + 16 * (v30 & v24));
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = *(v16 + 1);
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -1;
      *v19 = -1;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

BOOL mlir::detail::Parser::parseDialectSymbolBody(mlir::detail::Parser *this, llvm::StringRef *a2, BOOL *a3)
{
  v6 = 0;
  v50[1] = *MEMORY[0x1E69E9840];
  v7 = *(this + 1);
  v8 = *(v7 + 64);
  v48 = v50;
  v49 = xmmword_1E096FB00;
  v9 = *(v7 + 48);
  v37[0] = this;
  v37[1] = &v48;
  while (1)
  {
    while (1)
    {
      if (v8 == v9)
      {
        EndLoc = v8;
        goto LABEL_37;
      }

      EndLoc = (v8 + 1);
      v13 = *v8;
      if (v13 > 0x3D)
      {
        if (*v8 <= 0x5Cu)
        {
          if (v13 == 62)
          {
            if ((mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_1::operator()(&v48, v37, 0x3Cu) & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }

          if (v13 != 91)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v13 == 93)
          {
            if ((mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_1::operator()(&v48, v37, 0x5Bu) & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }

          if (v13 != 123)
          {
            if (v13 == 125 && (mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_1::operator()(&v48, v37, 0x7Bu) & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }
        }

        goto LABEL_24;
      }

      if (*v8 <= 0x28u)
      {
        break;
      }

      switch(v13)
      {
        case ')':
          if ((mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_1::operator()(&v48, v37, 0x28u) & 1) == 0)
          {
            goto LABEL_43;
          }

          break;
        case '-':
          v10 = v8[1];
          v11 = v8 + 2;
          if (v10 == 62)
          {
            EndLoc = v11;
          }

          break;
        case '<':
          goto LABEL_24;
      }

LABEL_4:
      v6 = v49;
      v8 = EndLoc;
      if (!v49)
      {
        goto LABEL_38;
      }
    }

    if (v13 == 34)
    {
      v14 = *(this + 1);
      *(v14 + 40) = v8;
      mlir::Lexer::lexToken((v14 + 8), &v38);
      v15 = *(this + 1);
      *(v15 + 56) = v38;
      *(v15 + 72) = v39;
      EndLoc = mlir::Token::getEndLoc((*(this + 1) + 56));
      v16 = *(*(this + 1) + 56);
      if (v16 != 11)
      {
        if (v16 != 2)
        {
LABEL_43:
          v19 = 0;
          goto LABEL_39;
        }

LABEL_37:
        *a3 = 1;
        *&v49 = 0;
LABEL_38:
        v17 = *(this + 1);
        *(v17 + 40) = EndLoc;
        mlir::Lexer::lexToken((v17 + 8), &v38);
        v18 = *(this + 1);
        *(v18 + 56) = v38;
        *(v18 + 72) = v39;
        *(a2 + 1) = (EndLoc - *a2);
        v19 = 1;
        goto LABEL_39;
      }

      goto LABEL_4;
    }

    if (v13 != 40)
    {
      break;
    }

LABEL_24:
    if ((v6 + 1) > *(&v49 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v48, v50, v6 + 1, 1);
      v6 = v49;
    }

    v48[v6] = v13;
    v8 = EndLoc;
    v6 = v49 + 1;
    *&v49 = v6;
    if (!v6)
    {
      goto LABEL_38;
    }
  }

  if (*v8)
  {
    goto LABEL_4;
  }

  if (v6)
  {
    mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_0::operator()(&v38, v37);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
    if (v38)
    {
      mlir::InFlightDiagnostic::report(&v38);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v45;
        v23 = __p;
        if (v45 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v45 = v21;
        operator delete(v23);
      }

      v24 = v42;
      if (v42)
      {
        v25 = v43;
        v26 = v42;
        if (v43 == v42)
        {
          goto LABEL_78;
        }

        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            operator delete[](v27);
          }
        }

        while (v25 != v24);
LABEL_77:
        v26 = v42;
        goto LABEL_78;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v35 = "unexpected nul or EOF in pretty dialect name";
    v36 = 259;
    mlir::detail::Parser::emitError(this, &v35, &v38);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
    if (v38)
    {
      mlir::InFlightDiagnostic::report(&v38);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v45;
        v31 = __p;
        if (v45 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v45 = v29;
        operator delete(v31);
      }

      v24 = v42;
      if (v42)
      {
        v32 = v43;
        v26 = v42;
        if (v43 != v42)
        {
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

          while (v32 != v24);
          goto LABEL_77;
        }

LABEL_78:
        v43 = v24;
        operator delete(v26);
      }

LABEL_79:
      if (v40 != &v41)
      {
        free(v40);
      }
    }
  }

LABEL_39:
  if (v48 != v50)
  {
    free(v48);
  }

  return v19;
}

void mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v24 = 257;
  mlir::detail::Parser::emitError(v4, v23, &v28);
  if (v28)
  {
    v25 = 3;
    v26 = "unbalanced '";
    v27 = 12;
    v5 = &v25;
    v6 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v25 && v30 + 24 * v31 > &v25)
      {
        v21 = &v25 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = v30;
        v5 = (v30 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = &v25;
        v6 = v30;
      }
    }

    v7 = &v6[24 * v31];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v31;
    if (v28)
    {
      mlir::Diagnostic::operator<<(&v29, *(**(a2 + 8) + *(*(a2 + 8) + 8) - 1));
      if (v28)
      {
        v25 = 3;
        v26 = "' character in pretty dialect name";
        v27 = 34;
        v9 = &v25;
        v10 = v30;
        if (v31 >= v32)
        {
          if (v30 <= &v25 && v30 + 24 * v31 > &v25)
          {
            v22 = &v25 - v30;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v10 = v30;
            v9 = (v30 + v22);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v9 = &v25;
            v10 = v30;
          }
        }

        v11 = &v10[24 * v31];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        ++v31;
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v37;
      v15 = __p;
      if (v37 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v37 = v13;
      operator delete(v15);
    }

    v16 = v34;
    if (v34)
    {
      v17 = v35;
      v18 = v34;
      if (v35 != v34)
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
        v18 = v34;
      }

      v35 = v16;
      operator delete(v18);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

uint64_t mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_1::operator()(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (*(*a1 + v3 - 1) == a3)
  {
    a1[1] = v3 - 1;
    return 1;
  }

  else
  {
    mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_0::operator()(v14, a2);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
    if (v14[0])
    {
      mlir::InFlightDiagnostic::report(v14);
    }

    if (v22 == 1)
    {
      if (v21 != &v22)
      {
        free(v21);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v20;
        v7 = __p;
        if (v20 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v20 = v5;
        operator delete(v7);
      }

      v8 = v17;
      if (v17)
      {
        v9 = v18;
        v10 = v17;
        if (v18 != v17)
        {
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
          v10 = v17;
        }

        v18 = v8;
        operator delete(v10);
      }

      if (v15 != &v16)
      {
        free(v15);
      }
    }
  }

  return v4;
}

void *mlir::detail::Parser::parseExtendedAttr(mlir::detail::Parser *a1, uint64_t a2)
{
  v113 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = **v4;
  v6 = *(v4 + 152);
  v7 = *(v4 + 104);
  v10 = *(v4 + 56);
  v8 = (v4 + 56);
  v9 = v10;
  v11 = *(v8 + 1);
  v12 = *(v8 + 2);
  if (v12)
  {
    ++v11;
  }

  *&v101 = v11;
  *(&v101 + 1) = v12 - (v12 != 0);
  if (v9 == 2 && v12 <= 1)
  {
    Checked = mlir::detail::Parser::codeCompleteDialectSymbol(a1);
LABEL_38:
    v44 = Checked;
    goto LABEL_70;
  }

  v89 = v5;
  LocRange = mlir::Token::getLocRange(v8);
  v90 = v15;
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v17 = *(a1 + 1);
  *(v17 + 96) = *(v17 + 72);
  *(v17 + 80) = *(v17 + 56);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v102);
  v18 = *(a1 + 1);
  *(v18 + 56) = v102;
  *(v18 + 72) = v103;
  LOBYTE(v102) = 46;
  v19 = llvm::StringRef::find(&v101, &v102, 1uLL, 0);
  v91 = LocRange;
  if (v19 == -1)
  {
    v27 = Loc;
    v25 = 0;
    v99 = 0;
    v100 = 0;
    v98 = v101;
    v21 = *(&v101 + 1);
    v22 = v101;
  }

  else
  {
    v21 = *(&v101 + 1);
    v22 = v101;
    if (v19 >= *(&v101 + 1))
    {
      v23 = *(&v101 + 1);
    }

    else
    {
      v23 = v19;
    }

    if (*(&v101 + 1) >= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = *(&v101 + 1);
    }

    v25 = (v101 + v24);
    *&v98 = v101;
    *(&v98 + 1) = v23;
    v26 = (*(&v101 + 1) - v24);
    v99 = (v101 + v24);
    v100 = (*(&v101 + 1) - v24);
    v27 = Loc;
    if (*(&v101 + 1) != v24)
    {
      v28 = 1;
      v29 = (v101 + v24);
      v30 = *(a1 + 1);
      if (*(v30 + 56) != 23)
      {
        goto LABEL_17;
      }

LABEL_41:
      v31 = (v22 + v21) == *(v30 + 64);
      if (!v31 && !v28)
      {
        goto LABEL_18;
      }

LABEL_42:
      if (v28)
      {
        if (v31)
        {
          if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v99, &v102))
          {
            goto LABEL_69;
          }

          v29 = v99;
          v26 = v100;
        }
      }

      else
      {
        v99 = (v98 + *(&v98 + 1));
        v100 = 0;
        LOBYTE(v102) = 0;
        if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v99, &v102))
        {
          goto LABEL_69;
        }

        v46 = v100 != 0;
        if (v100)
        {
          v29 = (v99 + 1);
        }

        else
        {
          v29 = v99;
        }

        v26 = &v100[-v46];
        v99 = v29;
        v100 -= v46;
        if ((v102 & 1) == 0)
        {
          if (v26 >= v26 - 1)
          {
            --v26;
          }

          v100 = v26;
        }

        v25 = v27;
      }

      v47 = v98;
      v92[0] = v25;
      v48 = *(a1 + 1);
      v49 = a2;
      if (*(v48 + 56) != 15 || (*(v48 + 80) = *(v48 + 56), *(v48 + 96) = *(v48 + 72), mlir::Lexer::lexToken((*(a1 + 1) + 8), &v102), v50 = *(a1 + 1), *(v50 + 56) = v102, *(v50 + 72) = v103, (v49 = mlir::detail::Parser::parseType(a1)) != 0))
      {
        Dialect = mlir::MLIRContext::getOrLoadDialect(*a1, v47, *(&v47 + 1));
        if (!Dialect)
        {
          *&v95 = a1;
          *(&v95 + 1) = v92;
          LOWORD(v105) = 261;
          v102 = v47;
          v60 = mlir::StringAttr::get(v89, &v102);
          if (!v49)
          {
            v49 = mlir::NoneType::get(v89, v59);
          }

          Checked = mlir::OpaqueAttr::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedAttr(mlir::Type)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>, &v95, v60, v29, v26, v49);
          goto LABEL_38;
        }

        v52 = Dialect;
        v53 = mlir::Token::getLoc((*(a1 + 1) + 56));
        v54 = *(a1 + 1);
        *(v54 + 40) = v29;
        mlir::Lexer::lexToken((v54 + 8), &v102);
        v55 = *(a1 + 1);
        *(v55 + 56) = v102;
        *(v55 + 72) = v103;
        *(&v102 + 1) = mlir::Token::getLoc((*(a1 + 1) + 56));
        v103 = a1;
        LOBYTE(v104) = 0;
        *&v102 = &unk_1F5AF1AF0;
        v105 = v29;
        v106[0] = v26;
        v44 = (*(*v52 + 32))(v52, &v102, v49);
        v56 = *(a1 + 1);
        *(v56 + 40) = v53;
        mlir::Lexer::lexToken((v56 + 8), &v95);
        v57 = *(a1 + 1);
        *(v57 + 56) = v95;
        *(v57 + 72) = v96;
        MPSGraphDelegateCompiler.precompilationDescriptor.modify(&v102, v58);
        goto LABEL_70;
      }

LABEL_69:
      v44 = 0;
      goto LABEL_70;
    }
  }

  v26 = 0;
  v28 = *(v22 + v21 - 1) == 46;
  v29 = v25;
  v30 = *(a1 + 1);
  if (*(v30 + 56) == 23)
  {
    goto LABEL_41;
  }

LABEL_17:
  v31 = 0;
  if (v28)
  {
    goto LABEL_42;
  }

LABEL_18:
  v32 = llvm::StringMapImpl::hash(v22, v21, v20);
  Key = llvm::StringMapImpl::FindKey(v7, v22, v21, v32);
  if (Key == -1)
  {
    v34 = *(v7 + 8);
  }

  else
  {
    v34 = Key;
  }

  if (v34 == *(v7 + 8))
  {
    v94 = 1283;
    v92[0] = "undefined symbol alias id '";
    v93 = v101;
    *&v95 = v92;
    v96 = "'";
    v97 = 770;
    mlir::detail::Parser::emitWrongTokenError(a1, &v95, &v102);
    if (v102)
    {
      mlir::InFlightDiagnostic::report(&v102);
    }

    if (v112 == 1)
    {
      if (v111 != &v112)
      {
        free(v111);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v110;
        v37 = __p;
        if (v110 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v110 = v35;
        operator delete(v37);
      }

      v38 = v107;
      if (v107)
      {
        v39 = v108;
        v40 = v107;
        if (v108 != v107)
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
          v40 = v107;
        }

        v108 = v38;
        operator delete(v40);
      }

      if (v104 != v106)
      {
        free(v104);
      }
    }

    goto LABEL_69;
  }

  v45 = *v7;
  if (v6)
  {
    mlir::AsmParserState::addAttrAliasUses(v6, v101, *(&v101 + 1), v91, v90);
  }

  v44 = *(*(v45 + 8 * v34) + 8);
LABEL_70:
  if (v44)
  {
    v61 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v44);
    *&v98 = v61;
    *(&v98 + 1) = v62;
    if (!a2)
    {
      return v44;
    }
  }

  else
  {
    v61 = 0;
    v98 = 0uLL;
    if (!a2)
    {
      return v44;
    }
  }

  if (v61 && mlir::CallOpInterface::getCallableForCallee(&v98) != a2)
  {
    *&v95 = "attribute type different than expected: expected ";
    v97 = 259;
    mlir::detail::Parser::emitError(a1, &v95, &v102);
    if (v102)
    {
      v63 = v92;
      mlir::DiagnosticArgument::DiagnosticArgument(v92, a2);
      v64 = v104;
      if (v105 >= HIDWORD(v105))
      {
        if (v104 <= v92 && v104 + 24 * v105 > v92)
        {
          v86 = v92 - v104;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 24);
          v64 = v104;
          v63 = v104 + v86;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 24);
          v63 = v92;
          v64 = v104;
        }
      }

      v65 = &v64[24 * v105];
      v66 = *v63;
      *(v65 + 2) = *(v63 + 2);
      *v65 = v66;
      v67 = (v105 + 1);
      LODWORD(v105) = v105 + 1;
      if (v102)
      {
        LODWORD(v92[0]) = 3;
        v92[1] = ", but got ";
        *&v93 = 10;
        v68 = v92;
        v69 = v104;
        if (v67 >= HIDWORD(v105))
        {
          if (v104 <= v92 && v104 + 24 * v67 > v92)
          {
            v88 = v92 - v104;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v67 + 1, 24);
            v69 = v104;
            v68 = v104 + v88;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v67 + 1, 24);
            v68 = v92;
            v69 = v104;
          }
        }

        v70 = &v69[24 * v105];
        v71 = *v68;
        *(v70 + 2) = *(v68 + 2);
        *v70 = v71;
        LODWORD(v105) = v105 + 1;
      }
    }

    CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v98);
    if (v102)
    {
      v73 = v92;
      mlir::DiagnosticArgument::DiagnosticArgument(v92, CallableForCallee);
      v74 = v104;
      if (v105 >= HIDWORD(v105))
      {
        if (v104 <= v92 && v104 + 24 * v105 > v92)
        {
          v87 = v92 - v104;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 24);
          v74 = v104;
          v73 = v104 + v87;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 24);
          v73 = v92;
          v74 = v104;
        }
      }

      v75 = &v74[24 * v105];
      v76 = *v73;
      *(v75 + 2) = *(v73 + 2);
      *v75 = v76;
      LODWORD(v105) = v105 + 1;
      if (v102)
      {
        mlir::InFlightDiagnostic::report(&v102);
      }
    }

    if (v112 == 1)
    {
      if (v111 != &v112)
      {
        free(v111);
      }

      v77 = __p;
      if (__p)
      {
        v78 = v110;
        v79 = __p;
        if (v110 != __p)
        {
          do
          {
            v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
          }

          while (v78 != v77);
          v79 = __p;
        }

        v110 = v77;
        operator delete(v79);
      }

      v80 = v107;
      if (v107)
      {
        v81 = v108;
        v82 = v107;
        if (v108 != v107)
        {
          do
          {
            v84 = *--v81;
            v83 = v84;
            *v81 = 0;
            if (v84)
            {
              operator delete[](v83);
            }
          }

          while (v81 != v80);
          v82 = v107;
        }

        v108 = v80;
        operator delete(v82);
      }

      if (v104 != v106)
      {
        free(v104);
      }
    }

    return 0;
  }

  return v44;
}

uint64_t mlir::detail::Parser::parseExtendedType(mlir::detail::Parser *this)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = **v2;
  v4 = *(v2 + 152);
  v5 = *(v2 + 104);
  v8 = *(v2 + 56);
  v6 = (v2 + 56);
  v7 = v8;
  v9 = *(v6 + 1);
  v10 = *(v6 + 2);
  if (v10)
  {
    ++v9;
  }

  *&v63 = v9;
  *(&v63 + 1) = v10 - (v10 != 0);
  if (v7 == 2 && v10 <= 1)
  {

    return mlir::detail::Parser::codeCompleteDialectSymbol(this);
  }

  LocRange = mlir::Token::getLocRange(v6);
  v53 = v13;
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v14 = *(this + 1);
  *(v14 + 96) = *(v14 + 72);
  *(v14 + 80) = *(v14 + 56);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v64);
  v15 = *(this + 1);
  *(v15 + 56) = v64;
  *(v15 + 72) = v65;
  LOBYTE(v64) = 46;
  v16 = llvm::StringRef::find(&v63, &v64, 1uLL, 0);
  if (v16 == -1)
  {
    v22 = 0;
    v61 = 0;
    v62 = 0;
    v60 = v63;
    v18 = *(&v63 + 1);
    v19 = v63;
  }

  else
  {
    v18 = *(&v63 + 1);
    v19 = v63;
    if (v16 >= *(&v63 + 1))
    {
      v20 = *(&v63 + 1);
    }

    else
    {
      v20 = v16;
    }

    if (*(&v63 + 1) >= v16 + 1)
    {
      v21 = v16 + 1;
    }

    else
    {
      v21 = *(&v63 + 1);
    }

    v22 = (v63 + v21);
    *&v60 = v63;
    *(&v60 + 1) = v20;
    v23 = (*(&v63 + 1) - v21);
    v61 = (v63 + v21);
    v62 = (*(&v63 + 1) - v21);
    if (*(&v63 + 1) != v21)
    {
      v24 = 1;
      v25 = (v63 + v21);
      v26 = *(this + 1);
      if (*(v26 + 56) != 23)
      {
        goto LABEL_17;
      }

      goto LABEL_43;
    }
  }

  v23 = 0;
  v24 = *(v19 + v18 - 1) == 46;
  v25 = v22;
  v26 = *(this + 1);
  if (*(v26 + 56) != 23)
  {
LABEL_17:
    v27 = 0;
    if (!v24)
    {
      goto LABEL_18;
    }

LABEL_44:
    if (v24)
    {
      if (!v27)
      {
        goto LABEL_60;
      }

      if (mlir::detail::Parser::parseDialectSymbolBody(this, &v61, &v64))
      {
        v25 = v61;
        v23 = v62;
LABEL_60:
        v54[0] = v22;
        Dialect = mlir::MLIRContext::getOrLoadDialect(v3, v60, *(&v60 + 1));
        if (Dialect)
        {
          v43 = Dialect;
          v44 = mlir::Token::getLoc((*(this + 1) + 56));
          v45 = *(this + 1);
          *(v45 + 40) = v25;
          mlir::Lexer::lexToken((v45 + 8), &v64);
          v46 = *(this + 1);
          *(v46 + 56) = v64;
          *(v46 + 72) = v65;
          *(&v64 + 1) = mlir::Token::getLoc((*(this + 1) + 56));
          v65 = this;
          LOBYTE(v66) = 0;
          *&v64 = &unk_1F5AF1AF0;
          v67 = v25;
          v68 = v23;
          v47 = (*(*v43 + 48))(v43, &v64);
          v48 = *(this + 1);
          *(v48 + 40) = v44;
          mlir::Lexer::lexToken((v48 + 8), &v57);
          v49 = *(this + 1);
          *(v49 + 56) = v57;
          *(v49 + 72) = v58;
          MPSGraphDelegateCompiler.precompilationDescriptor.modify(&v64, v50);
          return v47;
        }

        else
        {
          *&v57 = this;
          *(&v57 + 1) = v54;
          LOWORD(v67) = 261;
          v64 = v60;
          v51 = mlir::StringAttr::get(v3, &v64);
          return mlir::OpaqueType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedType(void)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>, &v57, v51, v25, v23);
        }
      }
    }

    else
    {
      v61 = (v60 + *(&v60 + 1));
      v62 = 0;
      LOBYTE(v64) = 0;
      if (mlir::detail::Parser::parseDialectSymbolBody(this, &v61, &v64))
      {
        v41 = v62 != 0;
        if (v62)
        {
          v25 = (v61 + 1);
        }

        else
        {
          v25 = v61;
        }

        v23 = &v62[-v41];
        v61 = v25;
        v62 -= v41;
        if ((v64 & 1) == 0)
        {
          if (v23 >= v23 - 1)
          {
            --v23;
          }

          v62 = v23;
        }

        v22 = Loc;
        goto LABEL_60;
      }
    }

    return 0;
  }

LABEL_43:
  v27 = (v19 + v18) == *(v26 + 64);
  if (v27 || v24)
  {
    goto LABEL_44;
  }

LABEL_18:
  v28 = llvm::StringMapImpl::hash(v19, v18, v17);
  Key = llvm::StringMapImpl::FindKey((v5 + 24), v19, v18, v28);
  if (Key == -1)
  {
    v30 = *(v5 + 32);
  }

  else
  {
    v30 = Key;
  }

  if (v30 == *(v5 + 32))
  {
    v56 = 1283;
    v54[0] = "undefined symbol alias id '";
    v55 = v63;
    *&v57 = v54;
    v58 = "'";
    v59 = 770;
    mlir::detail::Parser::emitWrongTokenError(this, &v57, &v64);
    if (v64)
    {
      mlir::InFlightDiagnostic::report(&v64);
    }

    if (v74 == 1)
    {
      if (v73 != &v74)
      {
        free(v73);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v72;
        v33 = __p;
        if (v72 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v72 = v31;
        operator delete(v33);
      }

      v34 = v69;
      if (v69)
      {
        v35 = v70;
        v36 = v69;
        if (v70 != v69)
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
          v36 = v69;
        }

        v70 = v34;
        operator delete(v36);
      }

      if (v66 != &v68)
      {
        free(v66);
      }
    }

    return 0;
  }

  v40 = *(v5 + 24);
  if (v4)
  {
    mlir::AsmParserState::addTypeAliasUses(v4, v63, *(&v63 + 1), LocRange, v53);
  }

  return *(*(v40 + 8 * v30) + 8);
}

void mlir::parseAttribute(const char *a1, const char *a2, uint64_t **a3, uint64_t *a4, const char **a5, int a6)
{
  v95[6] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    llvm::MemoryBuffer::getMemBuffer(a1, a2, a1, a2, &v51);
  }

  else
  {
    v70 = 261;
    v68 = a1;
    v69[0] = a2;
    llvm::MemoryBuffer::getMemBufferCopy(a1, a2, &v68, 0, &v51);
  }

  llvm::SourceMgr::SourceMgr(&v48);
  v11 = v51;
  v51 = 0;
  v69[1] = 0;
  v69[0] = 0;
  v68 = v11;
  if (v49 >= v50)
  {
    v12 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v48, &v68);
  }

  else
  {
    v12 = (llvm::SourceMgr::SrcBuffer::SrcBuffer(v49, &v68) + 3);
  }

  v49 = v12;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v68);
  v43[0] = 0;
  v43[1] = 0;
  v43[2] = 0x1000000000;
  v43[3] = 0;
  v43[4] = 0;
  v43[5] = 0x1000000000;
  v43[6] = 0;
  v43[7] = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v86 = a3;
  v87 = 1;
  v89 = 0;
  v88 = 0;
  v90 = 0;
  v91 = 0;
  v92 = v94;
  v93 = 0x600000000;
  v94[6] = v95;
  v94[7] = 0x600000000;
  v68 = &v86;
  mlir::Lexer::Lexer(v69, &v48, a3, 0);
  mlir::Lexer::lexToken(v69, &v71);
  v73 = 1;
  v74 = "";
  v75 = 0;
  v78 = 0;
  v76 = v43;
  v77 = 0;
  v79 = 0;
  v80 = v82;
  v81 = 0;
  v82[1] = 0;
  v82[0] = 0;
  v85[0] = "builtin";
  v85[1] = 7;
  v83 = v85;
  v84 = 0x300000001;
  v41 = *v68;
  v42 = &v68;
  v39 = v71;
  v40 = v72;
  if (mlir::detail::Parser::parseAttribute(&v41, a4))
  {
    v37 = *(v42 + 7);
    v38 = v42[9];
    Loc = mlir::Token::getLoc(&v37);
    v14 = (Loc - mlir::Token::getLoc(&v39));
    if (a5)
    {
      *a5 = v14;
    }

    else if (v14 != a2)
    {
      v15 = mlir::Token::getLoc(&v37);
      v36 = 257;
      mlir::detail::Parser::emitError(&v41, v15, v35, &v56);
      if (v56)
      {
        LODWORD(v52) = 3;
        v53 = "found trailing characters: '";
        v54 = 28;
        v16 = &v52;
        v17 = v58;
        if (v59 >= v60)
        {
          if (v58 <= &v52 && v58 + 24 * v59 > &v52)
          {
            v33 = &v52 - v58;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v17 = v58;
            v16 = (v58 + v33);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v16 = &v52;
            v17 = v58;
          }
        }

        v18 = &v17[24 * v59];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        ++v59;
        if (v56)
        {
          v20 = a2 >= v14 ? v14 : a2;
          v55 = 261;
          v52 = &v20[a1];
          v53 = (a2 - v20);
          mlir::Diagnostic::operator<<(&v57, &v52);
          if (v56)
          {
            LODWORD(v52) = 3;
            v53 = "'";
            v54 = 1;
            v21 = &v52;
            v22 = v58;
            if (v59 >= v60)
            {
              if (v58 <= &v52 && v58 + 24 * v59 > &v52)
              {
                v34 = &v52 - v58;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
                v22 = v58;
                v21 = (v58 + v34);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
                v21 = &v52;
                v22 = v58;
              }
            }

            v23 = &v22[24 * v59];
            v24 = *v21;
            *(v23 + 2) = v21[2];
            *v23 = v24;
            ++v59;
            if (v56)
            {
              mlir::InFlightDiagnostic::report(&v56);
            }
          }
        }
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v25 = __p;
        if (__p)
        {
          v26 = v65;
          v27 = __p;
          if (v65 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v65 = v25;
          operator delete(v27);
        }

        v28 = v62;
        if (v62)
        {
          v29 = v63;
          v30 = v62;
          if (v63 != v62)
          {
            do
            {
              v32 = *--v29;
              v31 = v32;
              *v29 = 0;
              if (v32)
              {
                operator delete[](v31);
              }
            }

            while (v29 != v28);
            v30 = v62;
          }

          v63 = v28;
          operator delete(v30);
        }

        if (v58 != v61)
        {
          free(v58);
        }
      }
    }
  }

  if (v83 != v85)
  {
    free(v83);
  }

  if (v80 != v82)
  {
    free(v80);
  }

  llvm::deallocate_buffer(v77, (8 * v79));
}

void mlir::parseType(const char *a1, const char *a2, uint64_t **a3, const char **a4, int a5)
{
  v93[6] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    llvm::MemoryBuffer::getMemBuffer(a1, a2, a1, a2, &v49);
  }

  else
  {
    v68 = 261;
    v66 = a1;
    v67[0] = a2;
    llvm::MemoryBuffer::getMemBufferCopy(a1, a2, &v66, 0, &v49);
  }

  llvm::SourceMgr::SourceMgr(&v46);
  v9 = v49;
  v49 = 0;
  v67[1] = 0;
  v67[0] = 0;
  v66 = v9;
  if (v47 >= v48)
  {
    v10 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v46, &v66);
  }

  else
  {
    v10 = (llvm::SourceMgr::SrcBuffer::SrcBuffer(v47, &v66) + 3);
  }

  v47 = v10;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v66);
  v41[0] = 0;
  v41[1] = 0;
  v41[2] = 0x1000000000;
  v41[3] = 0;
  v41[4] = 0;
  v41[5] = 0x1000000000;
  v41[6] = 0;
  v41[7] = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v84 = a3;
  v85 = 1;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = v92;
  v91 = 0x600000000;
  v92[6] = v93;
  v92[7] = 0x600000000;
  v66 = &v84;
  mlir::Lexer::Lexer(v67, &v46, a3, 0);
  mlir::Lexer::lexToken(v67, &v69);
  v71 = 1;
  v72 = "";
  v73 = 0;
  v76 = 0;
  v74 = v41;
  v75 = 0;
  v77 = 0;
  v78 = v80;
  v79 = 0;
  v80[1] = 0;
  v80[0] = 0;
  v83[0] = "builtin";
  v83[1] = 7;
  v81 = v83;
  v82 = 0x300000001;
  v39 = *v66;
  v40 = &v66;
  v37 = v69;
  v38 = v70;
  if (mlir::detail::Parser::parseType(&v39))
  {
    v35 = *(v40 + 7);
    v36 = v40[9];
    Loc = mlir::Token::getLoc(&v35);
    v12 = (Loc - mlir::Token::getLoc(&v37));
    if (a4)
    {
      *a4 = v12;
    }

    else if (v12 != a2)
    {
      v13 = mlir::Token::getLoc(&v35);
      v34 = 257;
      mlir::detail::Parser::emitError(&v39, v13, v33, &v54);
      if (v54)
      {
        LODWORD(v50) = 3;
        v51 = "found trailing characters: '";
        v52 = 28;
        v14 = &v50;
        v15 = v56;
        if (v57 >= v58)
        {
          if (v56 <= &v50 && v56 + 24 * v57 > &v50)
          {
            v31 = &v50 - v56;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
            v15 = v56;
            v14 = (v56 + v31);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
            v14 = &v50;
            v15 = v56;
          }
        }

        v16 = &v15[24 * v57];
        v17 = *v14;
        *(v16 + 2) = v14[2];
        *v16 = v17;
        ++v57;
        if (v54)
        {
          v18 = a2 >= v12 ? v12 : a2;
          v53 = 261;
          v50 = &v18[a1];
          v51 = (a2 - v18);
          mlir::Diagnostic::operator<<(&v55, &v50);
          if (v54)
          {
            LODWORD(v50) = 3;
            v51 = "'";
            v52 = 1;
            v19 = &v50;
            v20 = v56;
            if (v57 >= v58)
            {
              if (v56 <= &v50 && v56 + 24 * v57 > &v50)
              {
                v32 = &v50 - v56;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                v20 = v56;
                v19 = (v56 + v32);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                v19 = &v50;
                v20 = v56;
              }
            }

            v21 = &v20[24 * v57];
            v22 = *v19;
            *(v21 + 2) = v19[2];
            *v21 = v22;
            ++v57;
            if (v54)
            {
              mlir::InFlightDiagnostic::report(&v54);
            }
          }
        }
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v23 = __p;
        if (__p)
        {
          v24 = v63;
          v25 = __p;
          if (v63 != __p)
          {
            do
            {
              v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
            }

            while (v24 != v23);
            v25 = __p;
          }

          v63 = v23;
          operator delete(v25);
        }

        v26 = v60;
        if (v60)
        {
          v27 = v61;
          v28 = v60;
          if (v61 != v60)
          {
            do
            {
              v30 = *--v27;
              v29 = v30;
              *v27 = 0;
              if (v30)
              {
                operator delete[](v29);
              }
            }

            while (v27 != v26);
            v28 = v60;
          }

          v61 = v26;
          operator delete(v28);
        }

        if (v56 != v59)
        {
          free(v56);
        }
      }
    }
  }

  if (v81 != v83)
  {
    free(v81);
  }

  if (v78 != v80)
  {
    free(v78);
  }

  llvm::deallocate_buffer(v75, (8 * v77));
}

void anonymous namespace::CustomDialectAsmParser::~CustomDialectAsmParser(_anonymous_namespace_::CustomDialectAsmParser *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseArrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalArrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 13)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 13;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 20)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 20;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseRBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalRBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 27)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 27;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseColon(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalColon(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 15)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 15;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseComma(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalComma(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 16)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 16;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseEqual(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalEqual(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 18)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 18;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLess(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLess(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 23)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 23;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseGreater(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalGreater(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 19)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 19;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseQuestion(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalQuestion(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 26)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 26;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parsePlus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalPlus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 25)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 25;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseMinus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalMinus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 24)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 24;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseStar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalStar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 30)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 30;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseVerticalBar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalVerticalBar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 31)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 31;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalString(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 11)
  {
    return 0;
  }

  if (a2)
  {
    mlir::Token::getStringValue((v3 + 56), &v7);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v7;
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v7);
  *(*(v2 + 8) + 56) = v7;
  return 1;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseBase64Bytes(void *a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v5 = a1[2];
  v6 = *(v5 + 8);
  if (*(v6 + 56) == 11)
  {
    if (a2)
    {
      v36 = *(v6 + 64);
      first_not_of = llvm::StringRef::find_first_not_of(&v36, "  \t\n\v\f\r", 8, 0);
      if (first_not_of >= *(&v36 + 1))
      {
        v8 = *(&v36 + 1);
      }

      else
      {
        v8 = first_not_of;
      }

      v9 = *(&v36 + 1) - v8;
      *&v39 = v36 + v8;
      *(&v39 + 1) = *(&v36 + 1) - v8;
      last_not_of = llvm::StringRef::find_last_not_of(&v39, " \t\n\v\f\r", 7, 0xFFFFFFFFFFFFFFFFLL);
      if ((last_not_of + 1) < *(&v39 + 1))
      {
        v11 = last_not_of + 1;
      }

      else
      {
        v11 = *(&v39 + 1);
      }

      v12 = *(&v39 + 1) - v9 + v11;
      if (*(&v39 + 1) >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = *(&v39 + 1);
      }

      llvm::decodeBase64(v39, v13, a2, &v35);
      if (v35)
      {
        v33 = v35;
        v35 = 0;
        llvm::toString(&v33, &v34);
        v38 = 260;
        v37[0] = &v34;
        (*(*a1 + 24))(&v39, a1, v4, v37);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v39);
        }

        if (v48 == 1)
        {
          if (v47 != &v48)
          {
            free(v47);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v46;
            v17 = __p;
            if (v46 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v46 = v15;
            operator delete(v17);
          }

          v18 = v43;
          if (v43)
          {
            v19 = v44;
            v20 = v43;
            if (v44 != v43)
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
              v20 = v43;
            }

            v44 = v18;
            operator delete(v20);
          }

          if (v41 != v42)
          {
            free(v41);
          }
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (v33)
        {
          (*(*v33 + 8))(v33);
        }

        if (v35)
        {
          (*(*v35 + 8))(v35);
        }

        return v14;
      }

      v5 = a1[2];
      v6 = *(v5 + 8);
    }

    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken((*(v5 + 8) + 8), &v39);
    v31 = *(v5 + 8);
    *(v31 + 56) = v39;
    *(v31 + 72) = v40;
    return 1;
  }

  v37[0] = "expected string";
  v38 = 259;
  (*(*a1 + 24))(&v39, a1, v4, v37);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
  if (v39)
  {
    mlir::InFlightDiagnostic::report(&v39);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v46;
      v25 = __p;
      if (v46 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v46 = v23;
      operator delete(v25);
    }

    v26 = v43;
    if (v43)
    {
      v27 = v44;
      v28 = v43;
      if (v44 != v43)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v27 != v26);
        v28 = v43;
      }

      v44 = v26;
      operator delete(v28);
    }

    if (v41 != v42)
    {
      free(v41);
    }
  }

  return v14;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '('";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 21, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 21)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 21;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseRParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ')'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 28, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalRParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 28)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 28;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '['";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 22, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 22)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 22;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseRSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ']'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 29, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalRSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 29)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 29;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseEllipsis(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '...'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 17, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalEllipsis(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 17)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 17;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseFloat(uint64_t a1, double *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = llvm::detail::IEEEFloat::IEEEFloat(v12, 0.0);
  v5 = llvm::APFloatBase::IEEEdouble(v4);
  llvm::APFloat::Storage::Storage(&v14, v12, v5);
  llvm::detail::IEEEFloat::~IEEEFloat(v12);
  v6 = (*(*a1 + 368))(a1, v5, &v13);
  if ((v6 & 1) == 0)
  {
    v7 = 0;
    v11 = v14;
    if (llvm::APFloatBase::PPCDoubleDouble(v6) != v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100](v15);
    return v7;
  }

  *a2 = llvm::APFloat::convertToDouble(&v13);
  v7 = 1;
  v8 = v14;
  if (llvm::APFloatBase::PPCDoubleDouble(v9) == v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v14);
  return v7;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseFloat(void *a1, void *a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  v7 = *(v6 + 8);
  v8 = *(v7 + 56);
  if (v8 == 24)
  {
    *(v7 + 80) = *(v7 + 56);
    *(v7 + 96) = *(v7 + 72);
    mlir::Lexer::lexToken((*(v6 + 8) + 8), &v52);
    v9 = *(v6 + 8);
    *(v9 + 56) = v52;
    *(v9 + 72) = v53;
    v7 = *(a1[2] + 8);
  }

  v50 = *(v7 + 56);
  v51 = *(v7 + 72);
  Loc = mlir::Token::getLoc(&v50);
  if (v50 == 10)
  {
    v23 = v8 == 24;
    LOBYTE(v52) = 0;
    v55 = 0;
    v24 = a1[2];
    v25 = llvm::APFloatBase::semanticsSizeInBits(a2);
    v26 = mlir::detail::Parser::parseFloatFromIntegerLiteral(v24, &v52, &v50, v23, a2, v25);
    v27 = 0;
    if (v26)
    {
      llvm::APFloat::Storage::operator=(a3 + 8, (&v52 + 8));
      v28 = a1[2];
      v29 = *(v28 + 8);
      *(v29 + 80) = *(v29 + 56);
      *(v29 + 96) = *(v29 + 72);
      mlir::Lexer::lexToken((*(v28 + 8) + 8), &v47);
      v30 = *(v28 + 8);
      *(v30 + 56) = v47;
      *(v30 + 72) = v48;
      v27 = 1;
    }

    if (v55 == 1)
    {
      v31 = *(&v52 + 1);
      if (llvm::APFloatBase::PPCDoubleDouble(v26) == v31)
      {
        std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100](&v53);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat((&v52 + 8));
      }
    }
  }

  else
  {
    v11 = Loc;
    if (v50 == 9)
    {
      FloatingPointValue = mlir::Token::getFloatingPointValue(&v50);
      if (v13)
      {
        v14 = *&FloatingPointValue;
        v15 = a1[2];
        v16 = *(v15 + 8);
        *(v16 + 80) = *(v16 + 56);
        *(v16 + 96) = *(v16 + 72);
        mlir::Lexer::lexToken((*(v15 + 8) + 8), &v52);
        v17 = *(v15 + 8);
        *(v17 + 56) = v52;
        *(v17 + 72) = v53;
        v18 = -v14;
        if (v8 != 24)
        {
          v18 = v14;
        }

        v19 = llvm::detail::IEEEFloat::IEEEFloat(&v47, v18);
        v20 = llvm::APFloatBase::IEEEdouble(v19);
        llvm::APFloat::Storage::Storage(&v52 + 8, &v47, v20);
        llvm::detail::IEEEFloat::~IEEEFloat(&v47);
        v21 = llvm::APFloat::Storage::operator=((a3 + 8), (&v52 + 8));
        v22 = *(&v52 + 1);
        if (llvm::APFloatBase::PPCDoubleDouble(v21) == v22)
        {
          std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100](&v53);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v52 + 8));
        }

        LOBYTE(v52) = 0;
        v27 = 1;
        llvm::APFloat::convert(a3, a2, 1, &v52);
        return v27;
      }

      *&v47 = "floating point value too large";
      v49 = 259;
      (*(*a1 + 24))(&v52, a1, v11, &v47);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v52);
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v40 = __p;
        if (__p)
        {
          v41 = v60;
          v42 = __p;
          if (v60 != __p)
          {
            do
            {
              v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
            }

            while (v41 != v40);
            v42 = __p;
          }

          v60 = v40;
          operator delete(v42);
        }

        v35 = v57;
        if (!v57)
        {
          goto LABEL_49;
        }

        v43 = v58;
        v37 = v57;
        if (v58 == v57)
        {
LABEL_48:
          v58 = v35;
          operator delete(v37);
LABEL_49:
          if (v54 != &v56)
          {
            free(v54);
          }

          return v27;
        }

        do
        {
          v45 = *--v43;
          v44 = v45;
          *v43 = 0;
          if (v45)
          {
            operator delete[](v44);
          }
        }

        while (v43 != v35);
LABEL_47:
        v37 = v57;
        goto LABEL_48;
      }
    }

    else
    {
      *&v47 = "expected floating point literal";
      v49 = 259;
      (*(*a1 + 24))(&v52, a1, Loc, &v47);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v52);
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v32 = __p;
        if (__p)
        {
          v33 = v60;
          v34 = __p;
          if (v60 != __p)
          {
            do
            {
              v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
            }

            while (v33 != v32);
            v34 = __p;
          }

          v60 = v32;
          operator delete(v34);
        }

        v35 = v57;
        if (!v57)
        {
          goto LABEL_49;
        }

        v36 = v58;
        v37 = v57;
        if (v58 == v57)
        {
          goto LABEL_48;
        }

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
        goto LABEL_47;
      }
    }
  }

  return v27;
}