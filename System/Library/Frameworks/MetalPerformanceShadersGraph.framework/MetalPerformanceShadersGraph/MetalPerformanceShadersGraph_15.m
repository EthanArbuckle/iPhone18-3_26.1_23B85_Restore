uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseKeyword(void *a1, void *a2, const char *a3, void **a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v27[0] = a2;
  v27[1] = a3;
  v5 = a1[2];
  if (*(*(v5 + 8) + 56) == 2)
  {
    return mlir::detail::Parser::codeCompleteExpectedTokens(v5, v27, 1);
  }

  v10 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 408))(a1, a2, a3))
  {
    return 1;
  }

  v25 = "expected '";
  v26 = 259;
  (*(*a1 + 24))(&v32, a1, v10, &v25);
  if (v32)
  {
    v31 = 261;
    v28 = a2;
    v29 = a3;
    mlir::Diagnostic::operator<<(v33, &v28);
    if (v32)
    {
      LODWORD(v28) = 3;
      v29 = "'";
      v30 = 1;
      v11 = &v28;
      v12 = v34;
      if (v35 >= v36)
      {
        if (v34 <= &v28 && v34 + 24 * v35 > &v28)
        {
          v24 = &v28 - v34;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v12 = v34;
          v11 = v34 + v24;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v11 = &v28;
          v12 = v34;
        }
      }

      v13 = &v12[24 * v35];
      v14 = *v11;
      *(v13 + 2) = *(v11 + 2);
      *v13 = v14;
      ++v35;
      if (v32)
      {
        mlir::Diagnostic::operator<<(v33, a4);
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  v15 = result;
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
    result = v15;
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
      result = v15;
    }

    v16 = __p;
    if (__p)
    {
      v17 = v41;
      v18 = __p;
      if (v41 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v41 = v16;
      operator delete(v18);
      result = v15;
    }

    v19 = v38;
    if (v38)
    {
      v20 = v39;
      v21 = v38;
      if (v39 != v38)
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
        v21 = v38;
      }

      v39 = v19;
      operator delete(v21);
      result = v15;
    }

    if (v34 != v37)
    {
      free(v34);
      return v15;
    }
  }

  return result;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalKeyword(uint64_t a1, const void *a2, size_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  v5 = *(v4 + 56);
  if (v5 == 12 || v5 == 3)
  {
    if (*(v4 + 72) != a3)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v5 == 2)
  {
    return mlir::detail::Parser::codeCompleteOptionalTokens(*(a1 + 16), v12, 1);
  }

  v9 = a2;
  v10 = a3;
  result = mlir::Token::isKeyword((v4 + 56));
  if (result)
  {
    v3 = *(a1 + 16);
    v4 = *(v3 + 8);
    a3 = v10;
    a2 = v9;
    if (*(v4 + 72) != v10)
    {
      return 0;
    }

LABEL_7:
    if (!a3 || !memcmp(*(v4 + 64), a2, a3))
    {
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken((*(v3 + 8) + 8), &v13);
      v11 = *(v3 + 8);
      *(v11 + 56) = v13;
      *(v11 + 72) = v14;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalKeyword(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
    goto LABEL_6;
  }

  v8 = a2;
  result = mlir::Token::isKeyword((v3 + 56));
  if (result)
  {
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
    a2 = v8;
LABEL_6:
    *a2 = *(v3 + 64);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), &v10);
    v6 = *(v2 + 8);
    *(v6 + 56) = v10;
    *(v6 + 72) = v11;
    return 1;
  }

  return result;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalKeyword(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = *(v8 + 56);
  if (v9 != 12 && v9 != 3)
  {
    if (v9 == 2)
    {
      v15 = *(a1 + 16);

      return mlir::detail::Parser::codeCompleteOptionalTokens(v15, a3, a4);
    }

    result = mlir::Token::isKeyword((v8 + 56));
    if (!result)
    {
      return result;
    }

    v7 = *(a1 + 16);
    v8 = *(v7 + 8);
    v12 = *(v8 + 64);
    v11 = *(v8 + 72);
    if (!a4)
    {
      goto LABEL_19;
    }

LABEL_7:
    if (v11)
    {
      v13 = 16 * a4;
      for (i = a3; *(i + 8) != v11 || memcmp(*i, v12, v11); i += 16)
      {
        v13 -= 16;
        if (!v13)
        {
          return 0;
        }
      }
    }

    else
    {
      v19 = 16 * a4;
      for (i = a3; *(i + 8); i += 16)
      {
        v19 -= 16;
        if (!v19)
        {
          return 0;
        }
      }
    }

    goto LABEL_20;
  }

  v12 = *(v8 + 64);
  v11 = *(v8 + 72);
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_19:
  i = a3;
LABEL_20:
  if (i == a3 + 16 * a4)
  {
    return 0;
  }

  *a2 = v12;
  a2[1] = v11;
  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken((*(v7 + 8) + 8), &v20);
  v18 = *(v7 + 8);
  *(v18 + 56) = v20;
  *(v18 + 72) = v21;
  return 1;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalKeywordOrString(uint64_t a1, uint64_t a2)
{
  __src = 0;
  __len = 0;
  if (((*(*a1 + 416))(a1, &__src) & 1) == 0)
  {
    return (*(*a1 + 264))(a1, a2);
  }

  v4 = __src;
  if (!__src)
  {
    __dst = 0uLL;
    v10 = 0;
    if (*(a2 + 23) < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v5 = __len;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (__len | 7) + 1;
    }

    p_dst = operator new(v8);
    *(&__dst + 1) = v5;
    v10 = v8 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v10) = __len;
  p_dst = &__dst;
  if (__len)
  {
LABEL_14:
    memmove(p_dst, v4, v5);
  }

  *(p_dst + v5) = 0;
  if (*(a2 + 23) < 0)
  {
LABEL_16:
    operator delete(*a2);
  }

LABEL_17:
  *a2 = __dst;
  *(a2 + 16) = v10;
  return 1;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseAttribute(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3);
  *a2 = v4;
  return v4 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseCustomAttributeWithFallback(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = *(a1 + 16);
  if (*(*(v6 + 8) + 56) == 5)
  {
    v8 = mlir::detail::Parser::parseAttribute(v6, a3);
    *a2 = v8;
    return v8 != 0;
  }

  else
  {

    return a4(a5);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalAttribute(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3);
}

{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3);
}

{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3);
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalAttrDict(uint64_t a1, mlir::NamedAttrList *a2)
{
  v2 = *(a1 + 16);
  if (*(*(v2 + 1) + 56) == 20)
  {
    return mlir::detail::Parser::parseAttributeDict(v2, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalAttrDictWithKeyword(void *a1, mlir::NamedAttrList *a2)
{
  if (((*(*a1 + 408))(a1, "attributes", 10) & 1) == 0)
  {
    return 1;
  }

  v4 = a1[2];

  return mlir::detail::Parser::parseAttributeDict(v4, a2);
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalSymbolName(void *a1, uint64_t *a2)
{
  v2 = *(a1[2] + 8);
  v17 = *(v2 + 56);
  v18 = *(v2 + 72);
  if (v17 != 4)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  mlir::Token::getSymbolReference(&v17, &__p);
  v16 = 260;
  *&v14 = &__p;
  *a2 = mlir::Builder::getStringAttr(v5, &v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = a1[2];
  v7 = *(v6 + 8);
  *(v7 + 80) = *(v7 + 56);
  *(v7 + 96) = *(v7 + 72);
  mlir::Lexer::lexToken((*(v6 + 8) + 8), &v14);
  v8 = *(v6 + 8);
  *(v8 + 56) = v14;
  *(v8 + 72) = v15;
  v9 = *(*(a1[2] + 8) + 152);
  if (v9)
  {
    v10 = mlir::SymbolRefAttr::get(*a2);
    *&v14 = mlir::Token::getLocRange(&v17);
    *(&v14 + 1) = v11;
    mlir::AsmParserState::addUses(v9, v10, &v14, 1);
  }

  return 1;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseType(uint64_t a1, uint64_t **a2)
{
  v3 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseCustomTypeWithFallback(uint64_t a1, uint64_t **a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = *(a1 + 16);
  if (*(*(v5 + 1) + 56) == 8)
  {
    v7 = mlir::detail::Parser::parseType(v5);
    *a2 = v7;
    return v7 != 0;
  }

  else
  {

    return a3(a4);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseArrowTypeList(mlir::detail::Parser **a1, uint64_t a2)
{
  if ((*(*a1 + 7))(a1))
  {
    return mlir::detail::Parser::parseFunctionResultTypes(a1[2], a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalArrowTypeList(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 13)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v8);
  v6 = *(v2 + 8);
  *(v6 + 56) = v8;
  *(v6 + 72) = v9;
  return mlir::detail::Parser::parseFunctionResultTypes(*(a1 + 16), a2);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseColonType(uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 16);
  v7 = "expected ':'";
  v8 = 259;
  if ((mlir::detail::Parser::parseToken(v4, 15, &v7) & 1) == 0)
  {
    return 0;
  }

  v5 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v5;
  return v5 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseColonTypeList(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = "expected ':'";
  v7 = 259;
  if (mlir::detail::Parser::parseToken(v4, 15, &v6))
  {
    return mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalColonTypeList(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 15)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v8);
  v6 = *(v2 + 8);
  *(v6 + 56) = v8;
  *(v6 + 72) = v9;
  return mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

void mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseResourceHandle(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2);
    v35 = 0;
    v36 = 0;
    mlir::detail::Parser::parseResourceHandle(*(a1 + 16), v6, &v35, a3);
  }

  else
  {
    v7 = *(a1 + 16);
    v30 = 257;
    mlir::detail::Parser::emitError(v7, v29, &v35);
    if (!v35)
    {
      goto LABEL_10;
    }

    LODWORD(v31) = 3;
    v32 = "dialect '";
    v33 = 9;
    v8 = &v31;
    v9 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v31 && v37 + 24 * v38 > &v31)
      {
        v27 = &v31 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v9 = v37;
        v8 = v37 + v27;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v8 = &v31;
        v9 = v37;
      }
    }

    v10 = &v9[24 * v38];
    v11 = *v8;
    *(v10 + 2) = *(v8 + 2);
    *v10 = v11;
    ++v38;
    if (v35 && (v12 = *(a2 + 8), v13 = *(a2 + 16), v34 = 261, v31 = v12, v32 = v13, mlir::Diagnostic::operator<<(&v36, &v31), v35))
    {
      LODWORD(v31) = 3;
      v32 = "' does not expect resource handles";
      v33 = 34;
      v14 = &v31;
      v15 = v37;
      if (v38 >= v39)
      {
        if (v37 <= &v31 && v37 + 24 * v38 > &v31)
        {
          v28 = &v31 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v15 = v37;
          v14 = v37 + v28;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v14 = &v31;
          v15 = v37;
        }
      }

      v16 = &v15[24 * v38];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v38;
      v18 = v35;
      *a3 = 0;
      a3[24] = 0;
      if (v18)
      {
        mlir::InFlightDiagnostic::report(&v35);
      }
    }

    else
    {
LABEL_10:
      *a3 = 0;
      a3[24] = 0;
    }

    if (v46 == 1)
    {
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

      v22 = v41;
      if (v41)
      {
        v23 = v42;
        v24 = v41;
        if (v42 != v41)
        {
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
          v24 = v41;
        }

        v42 = v22;
        operator delete(v24);
      }

      if (v37 != v40)
      {
        free(v37);
      }
    }
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::pushCyclicParsing(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(*(a1 + 16) + 8);
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>(v2 + 112, &v7, v8);
  result = v9;
  if (v9 == 1)
  {
    v4 = v7;
    v5 = *(v2 + 144);
    if (v5 >= *(v2 + 148))
    {
      v6 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 136, v2 + 152, v5 + 1, 8);
      result = v6;
      LODWORD(v5) = *(v2 + 144);
    }

    *(*(v2 + 136) + 8 * v5) = v4;
    ++*(v2 + 144);
  }

  return result;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::popCyclicParsing(uint64_t result)
{
  v1 = *(*(result + 16) + 8);
  v2 = v1[16].i32[0];
  if (v2)
  {
    v3 = v1[14];
    v4 = v1[18].u32[0];
    v5 = *(*&v1[17] + 8 * v4 - 8);
    v6 = v2 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v2 - 1);
    v8 = *(*&v3 + 8 * v7);
    if (v5 == v8)
    {
LABEL_3:
      *(*&v3 + 8 * v7) = -8192;
      v1[15] = vadd_s32(v1[15], 0x1FFFFFFFFLL);
    }

    else
    {
      v9 = 1;
      while (v8 != -4096)
      {
        v10 = v7 + v9++;
        v7 = v10 & v6;
        v8 = *(*&v3 + 8 * v7);
        if (v5 == v8)
        {
          goto LABEL_3;
        }
      }
    }

    v1[18].i32[0] = v4 - 1;
  }

  else
  {
    --v1[18].i32[0];
  }

  return result;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseKeywordOrCompletion(mlir::AsmParser *a1, llvm::StringRef *a2)
{
  v2 = *(*(a1 + 2) + 8);
  if (*(v2 + 56) != 2 || *(v2 + 72))
  {
    return mlir::AsmParser::parseKeyword(a1, a2);
  }

  *a2 = "";
  *(a2 + 1) = 0;
  return 1;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::codeCompleteExpectedTokens(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 16);
  v4 = *(result + 8);
  if (*(v4 + 56) == 2 && !*(v4 + 72))
  {
    return mlir::detail::Parser::codeCompleteExpectedTokens(result, a2, a3);
  }

  return result;
}

void std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100](llvm::APFloatBase *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (v1 - 16);
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
      v5 = (32 * v3 + v1 - 24);
      v6 = -32 * v3;
      do
      {
        while (v4 == *v5)
        {
          std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100](v5 + 8, 0);
          v5 = (v5 - 32);
          v6 += 32;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        llvm::detail::IEEEFloat::~IEEEFloat(v5);
        v5 = (v5 - 32);
        v6 += 32;
      }

      while (v6);
    }

LABEL_7:

    operator delete[](v2);
  }
}

uint64_t llvm::APFloat::Storage::operator=(uint64_t a1, const llvm::detail::IEEEFloat *a2)
{
  v4 = *a1;
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = *a2;
  if (v5 != v4 && v5 != v6)
  {
    llvm::detail::IEEEFloat::operator=(a1, a2);
    return a1;
  }

  if (v5 != v4)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v8 = v5;
    llvm::detail::IEEEFloat::~IEEEFloat(a1);
    v9 = a1;
    v10 = a2;
    if (v8 != *a2)
    {
LABEL_9:
      llvm::detail::IEEEFloat::IEEEFloat(v9, v10);
      return a1;
    }

    goto LABEL_14;
  }

  if (v4 != v6)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v12 = v5;
    std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100]((a1 + 8));
    v9 = a1;
    v10 = a2;
    if (v12 != *a2)
    {
      goto LABEL_9;
    }

LABEL_14:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v10);
    return a1;
  }

  llvm::detail::DoubleAPFloat::operator=(a1, a2);
  return a1;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

const char *llvm::getTypeName<mlir::OpAsmDialectInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpAsmDialectInterface]";
  v6 = 77;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = v4 - 1;
    v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v8 = (*result + 8 * v7);
    v9 = *v8;
    if (*a2 == *v8)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_10;
    }

    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  v11 = *(result + 8);
  if (4 * v11 + 4 >= 3 * v4)
  {
    v4 *= 2;
    goto LABEL_24;
  }

  if (v4 + ~v11 - *(result + 12) <= v4 >> 3)
  {
LABEL_24:
    v16 = result;
    v17 = a3;
    llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v11 = *(v16 + 8);
    v8 = v18;
  }

  *(result + 8) = v11 + 1;
  if (*v8 != -4096)
  {
    --*(result + 12);
  }

  *v8 = *a2;
  v5 = *result;
  v4 = *(result + 16);
  v10 = 1;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

int64x2_t *llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = &result->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != result + 8 * v11);
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = ((v28 >> 4) ^ (v28 >> 9)) & v18;
          v27 = (*a1 + 8 * v29);
          v30 = *v27;
          if (v28 != *v27)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v27;
              }

              v34 = v29 + v32++;
              v29 = v34 & v18;
              v27 = (*a1 + 8 * (v34 & v18));
              v30 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v31)
            {
              v27 = v31;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_18;
    }

    v22 = v21 + 1;
    v10 = &result->i8[8 * (v22 & 0x3FFFFFFFFFFFFFFCLL)];
    v23 = result + 1;
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23[-1] = v24;
      *v23 = v24;
      v23 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_18:
      v26 = &result->i8[8 * v20];
      do
      {
        *v10 = -4096;
        v10 += 8;
      }

      while (v10 != v26);
    }
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedAttr(mlir::Type)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedType(void)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t ***mlir::Lexer::Lexer(uint64_t ***result, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[3] = 0;
  v4 = **a2;
  v5 = *(v4 + 8);
  v6 = (*(v4 + 16) - v5);
  result[2] = v5;
  result[3] = v6;
  result[4] = v5;
  result[5] = 0;
  if (a4)
  {
    result[5] = *(a4 + 8);
  }

  return result;
}

uint64_t mlir::Lexer::getEncodedSourceLocation(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = **a1;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v5, a2);
  v7 = v2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v5, LineNumber);
  v8 = *(a1 + 8);
  v10 = (*(***v4 + 16))(**v4);

  return mlir::FileLineColLoc::get(v8, v10, v9, LineNumber, (v7 + 1));
}

void mlir::Lexer::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = **a1;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v9, a2);
  v11 = a2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v9, LineNumber);
  v12 = *(a1 + 8);
  v13 = (*(***v8 + 16))(**v8);
  v15 = mlir::FileLineColLoc::get(v12, v13, v14, LineNumber, (v11 + 1));
  mlir::emitError(v15, a3, v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v31;
      v18 = __p;
      if (v31 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v31 = v16;
      operator delete(v18);
    }

    v19 = v28;
    if (v28)
    {
      v20 = v29;
      v21 = v28;
      if (v29 != v28)
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
        v21 = v28;
      }

      v29 = v19;
      operator delete(v21);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

  v24 = *(a1 + 32) - a2;
  *a4 = 1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v24;
}

void mlir::Lexer::lexToken(mlir::Lexer *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 + 1;
      *(this + 4) = v2 + 1;
      v5 = *v2;
      switch(*v2)
      {
        case 0:
          if (v2 != (*(this + 2) + *(this + 3)))
          {
            goto LABEL_4;
          }

          *a2 = 0;
          goto LABEL_63;
        case 9:
        case 10:
        case 13:
        case 32:
          goto LABEL_4;
        case 33:
        case 37:
        case 94:
          goto LABEL_32;
        case 34:

          mlir::Lexer::lexString(this, v2, a2);
          return;
        case 35:
          if (*v4 == 45 && v2[2] == 125)
          {
            *(this + 4) = v2 + 3;
            v9 = 33;
            goto LABEL_54;
          }

LABEL_32:

          mlir::Lexer::lexPrefixedIdentifier(this, v2, a2);
          return;
        case 40:
          v10 = 21;
          goto LABEL_62;
        case 41:
          v10 = 28;
          goto LABEL_62;
        case 42:
          v10 = 30;
          goto LABEL_62;
        case 43:
          v10 = 25;
          goto LABEL_62;
        case 44:
          v10 = 16;
          goto LABEL_62;
        case 45:
          if (*v4 == 62)
          {
            *(this + 4) = v2 + 2;
            *a2 = 13;
            *(a2 + 8) = v2;
            *(a2 + 16) = 2;
            return;
          }

          v10 = 24;
          goto LABEL_62;
        case 46:
          if (v4 != (*(this + 2) + *(this + 3)) && *v4 == 46 && v2[2] == 46)
          {
            *(this + 4) = v2 + 3;
            v9 = 17;
            goto LABEL_54;
          }

          v16[0] = "expected three consecutive dots for an ellipsis";
          v17 = 259;
          mlir::Lexer::emitError(this, v2 + 1, v16, a2);
          return;
        case 47:
          if (*v4 != 47)
          {
            goto LABEL_69;
          }

          v6 = v2 + 2;
          break;
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:

          mlir::Lexer::lexNumber(this, v2, a2);
          return;
        case 58:
          v10 = 15;
          goto LABEL_62;
        case 60:
          v10 = 23;
          goto LABEL_62;
        case 61:
          v10 = 18;
          goto LABEL_62;
        case 62:
          v10 = 19;
          goto LABEL_62;
        case 63:
          v10 = 26;
          goto LABEL_62;
        case 64:

          mlir::Lexer::lexAtIdentifier(this, v2, a2);
          return;
        case 91:
          v10 = 22;
          goto LABEL_62;
        case 93:
          v10 = 29;
          goto LABEL_62;
        case 95:
          goto LABEL_66;
        case 123:
          if (*v4 == 45 && v2[2] == 35)
          {
            *(this + 4) = v2 + 3;
            v9 = 32;
LABEL_54:
            *a2 = v9;
            *(a2 + 8) = v2;
            *(a2 + 16) = 3;
          }

          else
          {
            v10 = 20;
LABEL_62:
            *a2 = v10;
LABEL_63:
            *(a2 + 8) = v2;
            *(a2 + 16) = 1;
          }

          return;
        case 124:
          v10 = 31;
          goto LABEL_62;
        case 125:
          v10 = 27;
          goto LABEL_62;
        default:
          if (v5 < 0)
          {
            v12 = this;
            v13 = v2;
            v14 = a2;
            v15 = __maskrune(v5, 0x100uLL);
            v2 = v13;
            a2 = v14;
            v11 = v15;
            this = v12;
          }

          else
          {
            v11 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x100;
          }

          if (v11)
          {
LABEL_66:

            mlir::Lexer::lexBareIdentifierOrKeyword(this, v2, a2);
          }

          else
          {
LABEL_69:
            v16[0] = "unexpected character";
            v17 = 259;
            mlir::Lexer::emitError(this, v2, v16, a2);
          }

          return;
      }

      do
      {
        while (1)
        {
          v4 = v6++;
          *(this + 4) = v6;
          v7 = *v4;
          if (!*v4)
          {
            break;
          }

          if (v7 == 10 || v7 == 13)
          {
            ++v4;
            goto LABEL_4;
          }
        }
      }

      while (v4 != (*(this + 2) + *(this + 3)));
      *(this + 4) = v4;
LABEL_4:
      v2 = v4;
    }

    while (v4 != v3);
  }

  *a2 = 2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
}

uint64_t mlir::Lexer::lexBareIdentifierOrKeyword@<X0>(mlir::Lexer *this@<X0>, const char *__s1@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 4);
  v7 = MEMORY[0x1E69E9830];
  while (1)
  {
    v12 = *v6;
    if ((v12 & 0x80000000) != 0)
    {
      result = __maskrune(v12, 0x100uLL);
      v6 = *(this + 4);
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *(v7 + 4 * v12 + 60) & 0x100;
      if (result)
      {
        goto LABEL_6;
      }
    }

    v14 = *v6;
    if (v14 < 0 || (*(v7 + 4 * v14 + 60) & 0x400) == 0)
    {
      v8 = *v6 - 36;
      v9 = v8 > 0x3B;
      v10 = (1 << v8) & 0x800000000000401;
      if (v9 || v10 == 0)
      {
        break;
      }
    }

LABEL_6:
    *(this + 4) = ++v6;
  }

  v15 = v6 - __s1;
  if ((v6 - __s1) < 2)
  {
    goto LABEL_22;
  }

  v16 = *__s1;
  if (v16 == 105)
  {
    v17 = __s1 + 1;
    while (*v17 - 48 < 0xA)
    {
      if (++v17 == v6)
      {
LABEL_30:
        v18 = 12;
        goto LABEL_23;
      }
    }
  }

  if (v15 == 2)
  {
    result = memcmp(__s1, "to", v6 - __s1);
    if (result)
    {
      goto LABEL_22;
    }

    v18 = 78;
  }

  else
  {
    if (__s1[1] == 105 && (v16 == 117 || v16 == 115))
    {
      v19 = __s1 + 2;
      while (*v19 - 48 < 0xA)
      {
        if (++v19 == v6)
        {
          goto LABEL_30;
        }
      }
    }

    if (v15 > 6)
    {
      if (v15 <= 9)
      {
        if (v15 == 7)
        {
          if (*__s1 == 1818846563 && *(__s1 + 3) == 1986618476)
          {
            v18 = 39;
            goto LABEL_23;
          }

          if (*__s1 == 1886220131 && *(__s1 + 3) == 2019912816)
          {
            v18 = 40;
            goto LABEL_23;
          }

          if (*__s1 == 1769108595 && *(__s1 + 3) == 1684366441)
          {
            v18 = 74;
            goto LABEL_23;
          }
        }

        else if (v15 == 8)
        {
          switch(*__s1)
          {
            case 0x74636E6974736964:
              v18 = 43;
              goto LABEL_23;
            case 0x4E46334D34453866:
              v18 = 50;
              goto LABEL_23;
            case 0x4E46314D32453466:
              v18 = 55;
              goto LABEL_23;
            case 0x4E46334D32453666:
              v18 = 56;
              goto LABEL_23;
            case 0x4E46324D33453666:
              v18 = 57;
              goto LABEL_23;
            case 0x766964726F6F6C66:
              v18 = 60;
              goto LABEL_23;
          }
        }
      }

      else
      {
        switch(v15)
        {
          case 14:
            if (*__s1 == 0x65725F65736E6564 && *(__s1 + 6) == 0x656372756F736572)
            {
              v18 = 42;
              goto LABEL_23;
            }

            break;
          case 13:
            if (*__s1 == 0x3142334D34453866 && *(__s1 + 5) == 0x5A554E4631314233)
            {
              v18 = 53;
              goto LABEL_23;
            }

            break;
          case 10:
            if (*__s1 == 0x6D5F656E69666661 && *(__s1 + 4) == 28769)
            {
              v18 = 34;
              goto LABEL_23;
            }

            if (*__s1 == 0x735F656E69666661 && *(__s1 + 4) == 29797)
            {
              v18 = 35;
              goto LABEL_23;
            }

            if (*__s1 == 0x7475626972747461 && *(__s1 + 4) == 29541)
            {
              v18 = 37;
              goto LABEL_23;
            }

            if (*__s1 == 0x4E46324D35453866 && *(__s1 + 4) == 23125)
            {
              v18 = 51;
              goto LABEL_23;
            }

            if (*__s1 == 0x4E46334D34453866 && *(__s1 + 4) == 23125)
            {
              v18 = 52;
              goto LABEL_23;
            }

            break;
        }
      }
    }

    else if (v15 <= 3)
    {
      if (v15 == 3)
      {
        if (*__s1 == 12646 && __s1[2] == 54)
        {
          v18 = 44;
          goto LABEL_23;
        }

        if (*__s1 == 13158 && __s1[2] == 50)
        {
          v18 = 45;
          goto LABEL_23;
        }

        if (*__s1 == 13926 && __s1[2] == 52)
        {
          v18 = 46;
          goto LABEL_23;
        }

        if (*__s1 == 14438 && __s1[2] == 48)
        {
          v18 = 47;
          goto LABEL_23;
        }

        if (*__s1 == 28518 && __s1[2] == 114)
        {
          v18 = 61;
          goto LABEL_23;
        }

        if (*__s1 == 28524 && __s1[2] == 99)
        {
          v18 = 64;
          goto LABEL_23;
        }

        if (*__s1 == 24941 && __s1[2] == 120)
        {
          v18 = 65;
          goto LABEL_23;
        }

        if (*__s1 == 26989 && __s1[2] == 110)
        {
          v18 = 67;
          goto LABEL_23;
        }

        if (*__s1 == 28525 && __s1[2] == 100)
        {
          v18 = 68;
          goto LABEL_23;
        }
      }
    }

    else if (v15 == 4)
    {
      switch(*__s1)
      {
        case 0x36316662:
          v18 = 38;
          goto LABEL_23;
        case 0x38323166:
          v18 = 58;
          goto LABEL_23;
        case 0x636E7566:
          v18 = 62;
          goto LABEL_23;
        case 0x656E6F6E:
          v18 = 69;
          goto LABEL_23;
        case 0x657A6973:
          v18 = 71;
          goto LABEL_23;
        case 0x70657473:
          v18 = 73;
          goto LABEL_23;
        case 0x32336674:
          v18 = 77;
          goto LABEL_23;
        case 0x65757274:
          v18 = 79;
          goto LABEL_23;
        case 0x65707974:
          v18 = 81;
          goto LABEL_23;
        case 0x74696E75:
          v18 = 82;
          goto LABEL_23;
      }
    }

    else if (v15 == 5)
    {
      if (*__s1 == 1634890337 && __s1[4] == 121)
      {
        v18 = 36;
        goto LABEL_23;
      }

      if (*__s1 == 1936614756 && __s1[4] == 101)
      {
        v18 = 41;
        goto LABEL_23;
      }

      if (*__s1 == 1936482662 && __s1[4] == 101)
      {
        v18 = 59;
        goto LABEL_23;
      }

      if (*__s1 == 1701080681 && __s1[4] == 120)
      {
        v18 = 63;
        goto LABEL_23;
      }

      if (*__s1 == 1819309428 && __s1[4] == 101)
      {
        v18 = 80;
        goto LABEL_23;
      }
    }

    else
    {
      if (*__s1 == 893728870 && *(__s1 + 2) == 12877)
      {
        v18 = 48;
        goto LABEL_23;
      }

      if (*__s1 == 876951654 && *(__s1 + 2) == 13133)
      {
        v18 = 49;
        goto LABEL_23;
      }

      if (*__s1 == 860174438 && *(__s1 + 2) == 13389)
      {
        v18 = 54;
        goto LABEL_23;
      }

      if (*__s1 == 1919772013 && *(__s1 + 2) == 26213)
      {
        v18 = 66;
        goto LABEL_23;
      }

      if (*__s1 == 1936090735 && *(__s1 + 2) == 29797)
      {
        v18 = 70;
        goto LABEL_23;
      }

      if (*__s1 == 1918988403 && *(__s1 + 2) == 25971)
      {
        v18 = 72;
        goto LABEL_23;
      }

      if (*__s1 == 1651341683 && *(__s1 + 2) == 27759)
      {
        v18 = 75;
        goto LABEL_23;
      }

      if (*__s1 == 1936614772 && *(__s1 + 2) == 29295)
      {
        v18 = 76;
        goto LABEL_23;
      }

      if (*__s1 == 1952671094 && *(__s1 + 2) == 29295)
      {
        v18 = 83;
        goto LABEL_23;
      }
    }

LABEL_22:
    v18 = 3;
  }

LABEL_23:
  *a3 = v18;
  *(a3 + 8) = __s1;
  *(a3 + 16) = v15;
  return result;
}

void mlir::Lexer::lexAtIdentifier(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 4);
  *(this + 4) = v6 + 1;
  v7 = *v6;
  if (v7 != 34)
  {
    if ((v7 & 0x80000000) != 0)
    {
      v19 = __maskrune(*v6, 0x100uLL);
      v9 = *(this + 4);
      if (v7 == 95 || v19 != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = *(this + 4);
      if (v7 == 95 || (*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x100) != 0)
      {
LABEL_9:
        v11 = MEMORY[0x1E69E9830];
        while (1)
        {
          v16 = *v9;
          if ((v16 & 0x80000000) != 0)
          {
            v17 = __maskrune(v16, 0x100uLL);
            v9 = *(this + 4);
            if (v17)
            {
              goto LABEL_14;
            }
          }

          else if ((*(v11 + 4 * v16 + 60) & 0x100) != 0)
          {
            goto LABEL_14;
          }

          v18 = *v9;
          if (v18 < 0 || (*(v11 + 4 * v18 + 60) & 0x400) == 0)
          {
            v12 = *v9 - 36;
            v13 = v12 > 0x3B;
            v14 = (1 << v12) & 0x800000000000401;
            if (v13 || v14 == 0)
            {
              *a3 = 4;
              v8 = v9 - a2;
LABEL_24:
              *(a3 + 8) = a2;
              goto LABEL_25;
            }
          }

LABEL_14:
          *(this + 4) = ++v9;
        }
      }
    }

    *&v21 = "@ identifier expected to start with letter or '_'";
    v23 = 259;
    mlir::Lexer::emitError(this, v9 - 1, &v21, a3);
    return;
  }

  mlir::Lexer::lexString(this, v6 + 1, &v21);
  if (v21 != 1)
  {
    v8 = *(this + 4) - a2;
    *a3 = 4;
    goto LABEL_24;
  }

  *a3 = v21;
  v8 = v22;
LABEL_25:
  *(a3 + 16) = v8;
}

void mlir::Lexer::lexPrefixedIdentifier(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  if (v6 > 0x24)
  {
    if (v6 == 94)
    {
      v9 = 7;
      v8 = "invalid block name";
      v7 = 18;
      v10 = *(this + 4);
      v11 = *v10;
      v12 = MEMORY[0x1E69E9830];
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v9 = 6;
      v8 = "invalid SSA name";
      v7 = 16;
      v10 = *(this + 4);
      v11 = *v10;
      v12 = MEMORY[0x1E69E9830];
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (v6 == 33)
    {
      v7 = 23;
    }

    else
    {
      v7 = 22;
    }

    if (v6 == 33)
    {
      v8 = "invalid type identifier";
    }

    else
    {
      v8 = "invalid attribute name";
    }

    if (v6 == 33)
    {
      v9 = 8;
    }

    else
    {
      v9 = 5;
    }

    v10 = *(this + 4);
    v11 = *v10;
    v12 = MEMORY[0x1E69E9830];
    if ((v11 & 0x80000000) != 0)
    {
LABEL_31:
      if (__maskrune(v11, 0x100uLL))
      {
        goto LABEL_41;
      }

      goto LABEL_32;
    }
  }

  v13 = *(v12 + 4 * v11 + 60);
  if ((v13 & 0x400) != 0)
  {
    v14 = v10 + 1;
    do
    {
      if ((*(v12 + 4 * v11 + 60) & 0x400) == 0)
      {
        break;
      }

      *(this + 4) = v14;
      v15 = *v14++;
      LOBYTE(v11) = v15;
    }

    while ((v15 & 0x80000000) == 0);
    v16 = (v14 - 1);
LABEL_22:
    v17 = *(this + 5);
    v18 = v17 < a2 || v17 > v16;
    if (!v18)
    {
      *a3 = 2;
      *(a3 + 8) = a2;
      *(a3 + 16) = v17 - a2;
      return;
    }

    v19 = v16 - a2;
    *a3 = v9;
    goto LABEL_28;
  }

  if ((v13 & 0x100) != 0)
  {
    goto LABEL_41;
  }

LABEL_32:
  v20 = *(this + 4);
  v21 = *v20 - 36;
  v18 = v21 > 0x3B;
  v22 = (1 << v21) & 0x800000000000601;
  if (!v18 && v22 != 0)
  {
    while (1)
    {
LABEL_41:
      while (1)
      {
        v27 = (*(this + 4) + 1);
        *(this + 4) = v27;
        v28 = *v27;
        if ((v28 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v12 + 4 * v28 + 60) & 0x100) == 0)
        {
          goto LABEL_45;
        }
      }

      if (!__maskrune(v28, 0x100uLL))
      {
LABEL_45:
        v16 = *(this + 4);
        v29 = *v16;
        if (v29 < 0 || (*(v12 + 4 * v29 + 60) & 0x400) == 0)
        {
          v24 = *v16 - 36;
          v18 = v24 > 0x3B;
          v25 = (1 << v24) & 0x800000000000601;
          if (v18 || v25 == 0)
          {
            goto LABEL_22;
          }
        }
      }
    }
  }

  if (v20 != *(this + 5))
  {
    v31 = 261;
    v30[0] = v8;
    v30[1] = v7;
    mlir::Lexer::emitError(this, v20 - 1, v30, a3);
    return;
  }

  *a3 = 2;
  v19 = v20 - a2;
LABEL_28:
  *(a3 + 8) = a2;
  *(a3 + 16) = v19;
}

void mlir::Lexer::lexString(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 4);
  v5 = *(this + 5);
  if (v4 == v5)
  {
LABEL_22:
    *a3 = 2;
    *(a3 + 8) = a2;
    *(a3 + 16) = v5 - a2;
    return;
  }

  while (1)
  {
    v6 = v4 + 1;
    *(this + 4) = v4 + 1;
    v7 = *v4;
    if (v7 > 0x21)
    {
      break;
    }

    if (*v4)
    {
      if (v7 - 10 < 3)
      {
LABEL_23:
        v11 = "expected '' in string literal";
        goto LABEL_24;
      }
    }

    else if (v4 == (*(this + 2) + *(this + 3)))
    {
      goto LABEL_23;
    }

LABEL_5:
    v4 = v6;
    if (v6 == v5)
    {
      goto LABEL_22;
    }
  }

  if (v7 != 92)
  {
    if (v7 == 34)
    {
      *a3 = 11;
      *(a3 + 8) = a2;
      *(a3 + 16) = v6 - a2;
      return;
    }

    goto LABEL_5;
  }

  v8 = *v6;
  if ((v8 - 92) <= 0x18 && ((1 << (v8 - 92)) & 0x1040001) != 0)
  {
    v10 = 2;
LABEL_21:
    v6 = &v4[v10];
    *(this + 4) = &v4[v10];
    goto LABEL_5;
  }

  v10 = 2;
  if (v8 == 34)
  {
    goto LABEL_21;
  }

  if (llvm::hexDigitValue(char)::LUT[v8] != -1 && llvm::hexDigitValue(char)::LUT[v4[2]] != -1)
  {
    v10 = 3;
    goto LABEL_21;
  }

  v11 = "unknown escape in string literal";
LABEL_24:
  v12 = v11;
  v13 = 259;
  mlir::Lexer::emitError(this, v4, &v12, a3);
}

uint64_t mlir::Lexer::lexNumber@<X0>(uint64_t this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 32);
  v4 = *v3;
  if (__PAIR64__(v4, *(v3 - 1)) == 0x7800000030)
  {
    v5 = v3[1];
    if (v5 < 0 || (v6 = MEMORY[0x1E69E9830], (*(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x10000) == 0))
    {
LABEL_29:
      *a3 = 10;
      *(a3 + 8) = a2;
      *(a3 + 16) = v3 - a2;
      return this;
    }

    *(this + 32) = v3 + 2;
    if ((v3[2] & 0x80000000) == 0)
    {
      v7 = v3[2];
      v8 = v3 + 3;
      do
      {
        if ((*(v6 + 4 * v7 + 60) & 0x10000) == 0)
        {
          break;
        }

        *(this + 32) = v8;
        v9 = *v8++;
        v7 = v9;
      }

      while ((v9 & 0x80000000) == 0);
      v3 = v8 - 1;
      goto LABEL_29;
    }

    *a3 = 10;
    *(a3 + 8) = a2;
    *(a3 + 16) = v3 + 2 - a2;
  }

  else
  {
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_29;
    }

    v10 = MEMORY[0x1E69E9830];
    while ((*(v10 + 4 * v4 + 60) & 0x400) != 0)
    {
      v11 = (v3 + 1);
      *(this + 32) = v3 + 1;
      v12 = v3[1];
      v4 = *++v3;
      if (v12 < 0)
      {
        *a3 = 10;
        *(a3 + 8) = a2;
        *(a3 + 16) = v11 - a2;
        return this;
      }
    }

    if (v4 != 46)
    {
      goto LABEL_29;
    }

    v13 = (v3 + 4);
    do
    {
      v14 = v13;
      v15 = (v13 - 3);
      *(this + 32) = v13 - 3;
      v16 = *(v13 - 3);
      if (v16 < 0)
      {
        break;
      }

      ++v13;
    }

    while ((*(v10 + 4 * v16 + 60) & 0x400) != 0);
    if ((v16 | 0x20) == 0x65)
    {
      v17 = *(v14 - 2);
      if ((*(v10 + 4 * v17 + 60) & 0x400) != 0 || (v17 == 43 || v17 == 45) && (*(v10 + 4 * *(v14 - 1) + 60) & 0x400) != 0)
      {
        v15 = (v14 - 1);
        *(this + 32) = v14 - 1;
        if ((*(v14 - 1) & 0x80000000) == 0)
        {
          v18 = *(v14 - 1);
          do
          {
            if ((*(v10 + 4 * v18 + 60) & 0x400) == 0)
            {
              break;
            }

            *(this + 32) = v14;
            v19 = *v14++;
            v18 = v19;
          }

          while ((v19 & 0x80000000) == 0);
          v15 = (v14 - 1);
        }
      }
    }

    *a3 = 9;
    *(a3 + 8) = a2;
    *(a3 + 16) = v15 - a2;
  }

  return this;
}

BOOL mlir::detail::Parser::parseCallSiteLocation(mlir::detail::Parser *this, LocationAttr *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  *(v4 + 80) = *(v4 + 56);
  *(v4 + 96) = *(v4 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v23);
  v5 = *(this + 1);
  *(v5 + 56) = v23;
  *(v5 + 72) = v24;
  *&v23 = "expected '(' in callsite location";
  v26 = 259;
  if ((mlir::detail::Parser::parseToken(this, 21, &v23) & 1) == 0)
  {
    return 0;
  }

  v22.var0 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(this, &v22) & 1) == 0)
  {
    return 0;
  }

  v6 = *(this + 1);
  if (*(v6 + 56) == 3 && *(v6 + 72) == 2 && **(v6 + 64) == 29793)
  {
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v23);
    v17 = *(this + 1);
    *(v17 + 56) = v23;
    *(v17 + 72) = v24;
    v20.var0 = 0;
    if (mlir::detail::Parser::parseLocationInstance(this, &v20))
    {
      *&v23 = "expected ')' in callsite location";
      v26 = 259;
      if (mlir::detail::Parser::parseToken(this, 28, &v23))
      {
        v19.var0.var0 = v20.var0;
        a2->var0 = mlir::CallSiteLoc::get(v22.var0, v19, v18);
        return 1;
      }
    }

    return 0;
  }

  v20.var0 = "expected 'at' in callsite location";
  v21 = 259;
  mlir::detail::Parser::emitWrongTokenError(this, &v20, &v23);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v23);
  v8 = result;
  if (v23)
  {
    mlir::InFlightDiagnostic::report(&v23);
    result = v8;
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
      result = v8;
    }

    v9 = __p;
    if (__p)
    {
      v10 = v31;
      v11 = __p;
      if (v31 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v31 = v9;
      operator delete(v11);
      result = v8;
    }

    v12 = v28;
    if (v28)
    {
      v13 = v29;
      v14 = v28;
      if (v29 != v28)
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
        v14 = v28;
      }

      v29 = v12;
      operator delete(v14);
      result = v8;
    }

    if (v25 != &v27)
    {
      free(v25);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::detail::Parser::parseLocationInstance(mlir::detail::Parser *this, LocationAttr *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = *(v2 + 56);
  if (v3 == 3)
  {
    v11 = *(v2 + 64);
    v10 = *(v2 + 72);
    if (v10 == 5)
    {
      v25 = this;
      v27 = memcmp(v11, "fused", 5uLL);
      this = v25;
      if (!v27)
      {

        return mlir::detail::Parser::parseFusedLocation(v25, a2);
      }
    }

    else if (v10 == 7)
    {
      v20 = this;
      v22 = memcmp(*(v2 + 64), "unknown", 7uLL);
      this = v20;
      if (!v22)
      {
        *(v2 + 80) = *(v2 + 56);
        *(v2 + 96) = *(v2 + 72);
        mlir::Lexer::lexToken((v20[1] + 1), &v42);
        v23 = v20[1];
        *(v23 + 7) = v42;
        v23[9] = v43;
        a2->var0 = mlir::UnknownLoc::get(**v20[1], v24);
        return 1;
      }
    }

    else if (v10 == 8 && *v11 == 0x657469736C6C6163)
    {

      return mlir::detail::Parser::parseCallSiteLocation(this, a2);
    }

    v39[0] = "expected location instance";
    v40 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, v39, &v42);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
    return v7;
  }

  if (v3 != 11)
  {
    if (v3 == 5)
    {
      v5 = this;
      v6 = mlir::detail::Parser::parseExtendedAttr(this, 0);
      v7 = v6;
      if (!v6)
      {
        return v7;
      }

      v8 = (mlir::LocationAttr::classof(v6) && v7);
      a2->var0 = v8;
      if (v8)
      {
        return 1;
      }

      v39[0] = "expected location attribute, but got";
      v40 = 259;
      mlir::detail::Parser::emitError(v5, v39, &v42);
      if (v42)
      {
        v28 = v41;
        mlir::DiagnosticArgument::DiagnosticArgument(v41, v7);
        v29 = v44;
        if (v45 >= v46)
        {
          if (v44 <= v41 && v44 + 24 * v45 > v41)
          {
            v38 = v41 - v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v29 = v44;
            v28 = v44 + v38;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v28 = v41;
            v29 = v44;
          }
        }

        v30 = &v29[24 * v45];
        v31 = *v28;
        *(v30 + 2) = *(v28 + 2);
        *v30 = v31;
        ++v45;
      }

      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v53 != 1)
      {
        return v7;
      }

      if (v52 != &v53)
      {
        free(v52);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v51;
        v34 = __p;
        if (v51 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v51 = v32;
        operator delete(v34);
      }

      v15 = v48;
      if (!v48)
      {
LABEL_61:
        if (v44 != v47)
        {
          free(v44);
        }

        return v7;
      }

      v35 = v49;
      v17 = v48;
      if (v49 == v48)
      {
LABEL_60:
        v49 = v15;
        operator delete(v17);
        goto LABEL_61;
      }

      do
      {
        v37 = *--v35;
        v36 = v37;
        *v35 = 0;
        if (v37)
        {
          operator delete[](v36);
        }
      }

      while (v35 != v15);
    }

    else
    {
      v39[0] = "expected location instance";
      v40 = 259;
      mlir::detail::Parser::emitWrongTokenError(this, v39, &v42);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v53 != 1)
      {
        return v7;
      }

      if (v52 != &v53)
      {
        free(v52);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v51;
        v14 = __p;
        if (v51 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v51 = v12;
        operator delete(v14);
      }

      v15 = v48;
      if (!v48)
      {
        goto LABEL_61;
      }

      v16 = v49;
      v17 = v48;
      if (v49 == v48)
      {
        goto LABEL_60;
      }

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
    }

    v17 = v48;
    goto LABEL_60;
  }

  return mlir::detail::Parser::parseNameOrFileLineColLocation(this, a2);
}

uint64_t mlir::detail::Parser::parseFusedLocation(mlir::detail::Parser *this, LocationAttr *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), v11);
  v4 = *(this + 1);
  *(v4 + 56) = *v11;
  *(v4 + 72) = v12[0];
  v5 = *(this + 1);
  if (*(v5 + 56) == 23)
  {
    *(v5 + 80) = *(v5 + 56);
    *(v5 + 96) = *(v5 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), v11);
    v6 = *(this + 1);
    *(v6 + 56) = *v11;
    *(v6 + 72) = v12[0];
    v7 = mlir::detail::Parser::parseAttribute(this, 0);
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    v11[0] = "expected '>' after fused location metadata";
    v13 = 259;
    if ((mlir::detail::Parser::parseToken(this, 19, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10[1] = v11;
  v11[0] = v12;
  v11[1] = 0x400000000;
  v10[0] = this;
  if (mlir::detail::Parser::parseCommaSeparatedList(this, 2, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseFusedLocation(mlir::LocationAttr &)::$_0>, v10, " in fused location", 18))
  {
    mlir::FusedLoc::get(v11[0], LODWORD(v11[1]), v8, ***(this + 1));
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return 0;
}

BOOL mlir::detail::Parser::parseNameOrFileLineColLocation(mlir::detail::Parser *this, LocationAttr *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v5 = **v4;
  mlir::Token::getStringValue((v4 + 7), &v50);
  v6 = *(this + 1);
  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v51);
  v7 = *(this + 1);
  *(v7 + 56) = v51;
  *(v7 + 72) = v52;
  v8 = *(this + 1);
  v9 = (v8 + 56);
  v10 = *(v8 + 56);
  if (v10 == 21)
  {
    *(v8 + 80) = *v9;
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v51);
    v25 = *(this + 1);
    *(v25 + 56) = v51;
    *(v25 + 72) = v52;
    v48.var0 = 0;
    if (mlir::detail::Parser::parseLocationInstance(this, &v48))
    {
      v54 = 260;
      *&v51 = &v50;
      v26 = mlir::StringAttr::get(v5, &v51);
      a2->var0 = mlir::NameLoc::get(v26, v48.var0);
      *&v51 = "expected ')' after child location of NameLoc";
      v54 = 259;
      if (mlir::detail::Parser::parseToken(this, 28, &v51))
      {
        v16 = 1;
        goto LABEL_51;
      }
    }

    goto LABEL_46;
  }

  if (v10 != 15)
  {
    v54 = 260;
    *&v51 = &v50;
    v27 = mlir::StringAttr::get(v5, &v51);
    v28 = mlir::NameLoc::get(v27);
    goto LABEL_25;
  }

  *(v8 + 80) = *v9;
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v51);
  v11 = *(this + 1);
  *(v11 + 56) = v51;
  *(v11 + 72) = v52;
  v12 = *(this + 1);
  v14 = *(v12 + 56);
  v13 = (v12 + 56);
  if (v14 == 10)
  {
    UnsignedIntegerValue = mlir::Token::getUnsignedIntegerValue(v13);
    if ((UnsignedIntegerValue & 0x100000000) == 0)
    {
      v48.var0 = "expected integer line number in FileLineColLoc";
      v49 = 259;
      mlir::detail::Parser::emitWrongTokenError(this, &v48, &v51);
      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
      if (v51)
      {
        mlir::InFlightDiagnostic::report(&v51);
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v59;
          v19 = __p;
          if (v59 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v59 = v17;
          operator delete(v19);
        }

        v20 = v56;
        if (!v56)
        {
          goto LABEL_49;
        }

        v21 = v57;
        v22 = v56;
        if (v57 == v56)
        {
LABEL_48:
          v57 = v20;
          operator delete(v22);
LABEL_49:
          if (v53 != &v55)
          {
            free(v53);
          }

          goto LABEL_51;
        }

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
LABEL_47:
        v22 = v56;
        goto LABEL_48;
      }

      goto LABEL_51;
    }

    v35 = UnsignedIntegerValue;
    v36 = *(this + 1);
    *(v36 + 80) = *(v36 + 56);
    *(v36 + 96) = *(v36 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v51);
    v37 = *(this + 1);
    *(v37 + 56) = v51;
    *(v37 + 72) = v52;
    *&v51 = "expected ':' in FileLineColLoc";
    v54 = 259;
    if (mlir::detail::Parser::parseToken(this, 15, &v51))
    {
      v38 = *(this + 1);
      v40 = *(v38 + 56);
      v39 = (v38 + 56);
      if (v40 != 10)
      {
        v48.var0 = "expected integer column number in FileLineColLoc";
        v49 = 259;
        mlir::detail::Parser::emitWrongTokenError(this, &v48, &v51);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
        if (v51)
        {
          mlir::InFlightDiagnostic::report(&v51);
        }

        if (v61 == 1)
        {
          mlir::Diagnostic::~Diagnostic((&v51 + 8));
        }

        goto LABEL_51;
      }

      v41 = mlir::Token::getUnsignedIntegerValue(v39);
      if ((v41 & 0x100000000) == 0)
      {
        v48.var0 = "expected integer column number in FileLineColLoc";
        v49 = 259;
        mlir::detail::Parser::emitError(this, &v48, &v51);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
        goto LABEL_51;
      }

      v43 = v41;
      v44 = *(this + 1);
      *(v44 + 80) = *(v44 + 56);
      *(v44 + 96) = *(v44 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v51);
      v45 = *(this + 1);
      *(v45 + 56) = v51;
      *(v45 + 72) = v52;
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v50;
      }

      else
      {
        v46 = v50.__r_.__value_.__r.__words[0];
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v50.__r_.__value_.__l.__size_;
      }

      v28 = mlir::FileLineColLoc::get(v5, v46, size, v35, v43);
LABEL_25:
      a2->var0 = v28;
      v16 = 1;
      goto LABEL_51;
    }

LABEL_46:
    v16 = 0;
    goto LABEL_51;
  }

  v48.var0 = "expected integer line number in FileLineColLoc";
  v49 = 259;
  mlir::detail::Parser::emitWrongTokenError(this, &v48, &v51);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v51);
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v59;
      v31 = __p;
      if (v59 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v59 = v29;
      operator delete(v31);
    }

    v20 = v56;
    if (!v56)
    {
      goto LABEL_49;
    }

    v32 = v57;
    v22 = v56;
    if (v57 == v56)
    {
      goto LABEL_48;
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

    while (v32 != v20);
    goto LABEL_47;
  }

LABEL_51:
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  return v16;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseFusedLocation(mlir::LocationAttr &)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v7.var0 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(v2, &v7) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  var0 = v7.var0;
  v5 = *(v3 + 8);
  if (v5 >= *(v3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3, v3 + 16, v5 + 1, 8);
    LODWORD(v5) = *(v3 + 8);
  }

  *(*v3 + 8 * v5) = var0;
  ++*(v3 + 8);
  return 1;
}

uint64_t mlir::detail::Parser::parseCommaSeparatedList(uint64_t a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 <= 4)
  {
    if (a2 <= 2)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          goto LABEL_27;
        }

LABEL_9:
        v23 = 1283;
        *&v20 = "expected '['";
        v21 = a5;
        v22 = a6;
        if (mlir::detail::Parser::parseToken(a1, 22, &v20))
        {
          v12 = *(a1 + 8);
          v13 = v12 + 56;
          if (*(v12 + 56) != 29)
          {
            goto LABEL_27;
          }

LABEL_23:
          *(v12 + 80) = *v13;
          *(v12 + 96) = *(v13 + 16);
          mlir::Lexer::lexToken((*(a1 + 8) + 8), &v20);
          v14 = *(a1 + 8);
          *(v14 + 56) = v20;
          *(v14 + 72) = v21;
          return 1;
        }

        return 0;
      }

      goto LABEL_21;
    }

    if (a2 != 3)
    {
      goto LABEL_17;
    }

LABEL_25:
    v23 = 1283;
    *&v20 = "expected '<'";
    v21 = a5;
    v22 = a6;
    if ((mlir::detail::Parser::parseToken(a1, 23, &v20) & 1) == 0)
    {
      return 1;
    }

    v12 = *(a1 + 8);
    v13 = v12 + 56;
    if (*(v12 + 56) == 19)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  if (a2 <= 6)
  {
    if (a2 != 5)
    {
      if (*(*(a1 + 8) + 56) != 22)
      {
        return 1;
      }

      goto LABEL_9;
    }

    if (*(*(a1 + 8) + 56) != 21)
    {
      return 1;
    }

LABEL_21:
    v23 = 1283;
    *&v20 = "expected '('";
    v21 = a5;
    v22 = a6;
    if (mlir::detail::Parser::parseToken(a1, 21, &v20))
    {
      v12 = *(a1 + 8);
      v13 = v12 + 56;
      if (*(v12 + 56) != 28)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

    return 0;
  }

  if (a2 == 7)
  {
    if (*(*(a1 + 8) + 56) != 23)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (a2 != 8)
  {
    goto LABEL_27;
  }

  if (*(*(a1 + 8) + 56) != 20)
  {
    return 1;
  }

LABEL_17:
  v23 = 1283;
  *&v20 = "expected '{'";
  v21 = a5;
  v22 = a6;
  if ((mlir::detail::Parser::parseToken(a1, 20, &v20) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 8);
  v13 = v12 + 56;
  if (*(v12 + 56) == 27)
  {
    goto LABEL_23;
  }

LABEL_27:
  if ((a3(a4) & 1) == 0)
  {
    return 0;
  }

  while (1)
  {
    v15 = *(a1 + 8);
    if (*(v15 + 56) != 16)
    {
      break;
    }

    *(v15 + 80) = *(v15 + 56);
    *(v15 + 96) = *(v15 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v20);
    v16 = *(a1 + 8);
    *(v16 + 56) = v20;
    *(v16 + 72) = v21;
    if ((a3(a4) & 1) == 0)
    {
      return 0;
    }
  }

  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
LABEL_41:
        v23 = 1283;
        *&v20 = "expected '>'";
        v21 = a5;
        v22 = a6;
        v18 = a1;
        v19 = 19;
        return mlir::detail::Parser::parseToken(v18, v19, &v20);
      }

      goto LABEL_40;
    }

    if (a2)
    {
LABEL_44:
      v23 = 1283;
      *&v20 = "expected ')'";
      v21 = a5;
      v22 = a6;
      v18 = a1;
      v19 = 28;
      return mlir::detail::Parser::parseToken(v18, v19, &v20);
    }

    return 1;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  if (a2 != 6)
  {
    if (a2 == 7)
    {
      goto LABEL_41;
    }

LABEL_43:
    v23 = 1283;
    *&v20 = "expected '}'";
    v21 = a5;
    v22 = a6;
    v18 = a1;
    v19 = 27;
    return mlir::detail::Parser::parseToken(v18, v19, &v20);
  }

LABEL_40:
  v23 = 1283;
  *&v20 = "expected ']'";
  v21 = a5;
  v22 = a6;
  v18 = a1;
  v19 = 29;
  return mlir::detail::Parser::parseToken(v18, v19, &v20);
}

uint64_t mlir::detail::Parser::parseToken(uint64_t a1, int a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (*(v3 + 56) == a2)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v16);
    v5 = *(a1 + 8);
    *(v5 + 56) = v16;
    *(v5 + 72) = v17;
    return 1;
  }

  else
  {
    mlir::detail::Parser::emitWrongTokenError(a1, a3, &v16);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
    if (v16)
    {
      mlir::InFlightDiagnostic::report(&v16);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v23;
        v9 = __p;
        if (v23 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v23 = v7;
        operator delete(v9);
      }

      v10 = v20;
      if (v20)
      {
        v11 = v21;
        v12 = v20;
        if (v21 != v20)
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
          v12 = v20;
        }

        v21 = v10;
        operator delete(v12);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v6;
}

uint64_t mlir::detail::Parser::parseCommaSeparatedListUntil(uint64_t a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, char a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  if (*(v6 + 56) == a2)
  {
    if (a5)
    {
      *(v6 + 80) = *(v6 + 56);
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v26);
      v7 = *(a1 + 8);
      *(v7 + 56) = v26;
      *(v7 + 72) = v27;
      return 1;
    }

    else
    {
      v24[0] = "expected list element";
      v25 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, v24, &v26);
      v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
      if (v26)
      {
        mlir::InFlightDiagnostic::report(&v26);
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

        if (v28 != &v30)
        {
          free(v28);
        }
      }
    }
  }

  else if (a3(a4))
  {
    while (1)
    {
      v12 = *(a1 + 8);
      if (*(v12 + 56) != 16)
      {
        break;
      }

      *(v12 + 80) = *(v12 + 56);
      *(v12 + 96) = *(v12 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v26);
      v13 = *(a1 + 8);
      *(v13 + 56) = v26;
      *(v13 + 72) = v27;
      if ((a3(a4) & 1) == 0)
      {
        return 0;
      }
    }

    v25 = 1283;
    v24[0] = "expected ',' or '";
    v24[2] = mlir::Token::getTokenSpelling(a2);
    v24[3] = v22;
    *&v26 = v24;
    v27 = "'";
    v29 = 770;
    return mlir::detail::Parser::parseToken(a1, a2, &v26) & 1;
  }

  else
  {
    return 0;
  }

  return v8;
}

void mlir::detail::Parser::emitWrongTokenError(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Loc = mlir::Token::getLoc((*(a1 + 8) + 56));
  v7 = *(a1 + 8);
  v8 = *(v7 + 56) == 0;
  v9 = *(v7 + 24);
  v10 = (Loc - v8);
  v11 = Loc - v8 - v9;
  *&v24 = v9;
  *(&v24 + 1) = v11;
  while (1)
  {
    last_not_of = llvm::StringRef::find_last_not_of(&v24, " \t", 2, 0xFFFFFFFFFFFFFFFFLL);
    if ((last_not_of + 1) < *(&v24 + 1))
    {
      v13 = last_not_of + 1;
    }

    else
    {
      v13 = *(&v24 + 1);
    }

    v14 = *(&v24 + 1) - v11 + v13;
    if (*(&v24 + 1) < v14)
    {
      v14 = *(&v24 + 1);
    }

    *(&v24 + 1) = v14;
    if (!v14)
    {
      break;
    }

    v15 = (v24 + v14);
    v16 = *(v24 + v14 - 1);
    if (v16 != 10 && v16 != 13)
    {
      v21 = *(a1 + 8) + 8;
      goto LABEL_23;
    }

    *(&v24 + 1) = v14 - 1;
    v23 = v24;
    last_of = llvm::StringRef::find_last_of(&v23, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL);
    if (last_of != -1)
    {
      if (*(&v23 + 1) >= last_of)
      {
        v19 = last_of;
      }

      else
      {
        v19 = *(&v23 + 1);
      }

      *&v23 = v23 + v19;
      *(&v23 + 1) -= v19;
    }

    v20 = llvm::StringRef::find(&v23, "//", 2uLL, 0);
    v11 = *(&v24 + 1);
    if (v20 != -1)
    {
      if (*(&v24 + 1) >= (v20 - *(&v23 + 1) + *(&v24 + 1)))
      {
        v11 = v20 - *(&v23 + 1) + *(&v24 + 1);
      }

      *(&v24 + 1) = v11;
    }
  }

  v21 = *(a1 + 8) + 8;
  v15 = v10;
LABEL_23:
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v21, v15);
  mlir::emitError(EncodedSourceLocation, a2, a3);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a3);
  }
}

void mlir::detail::Parser::emitError(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Loc = mlir::Token::getLoc((*(a1 + 8) + 56));
  v7 = Loc;
  v8 = *(a1 + 8);
  if (!*(v8 + 56))
  {
    v7 = (Loc - 1);
  }

  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v8 + 8, v7);
  mlir::emitError(EncodedSourceLocation, a2, a3);
  if (*(*(a1 + 8) + 56) == 1)
  {

    mlir::InFlightDiagnostic::abandon(a3);
  }
}

void mlir::detail::Parser::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, a2);
  mlir::emitError(EncodedSourceLocation, a3, a4);
  if (*(*(a1 + 8) + 56) == 1)
  {

    mlir::InFlightDiagnostic::abandon(a4);
  }
}

uint64_t mlir::detail::Parser::parseOptionalInteger(mlir::detail::Parser *this, void **a2)
{
  v4 = 0;
  v30 = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  v6 = (v5 + 56);
  v7 = *(v5 + 56);
  if (v7 > 58)
  {
    if (v7 == 79)
    {
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
      v16 = *(this + 1);
      *(v16 + 56) = v26;
      *(v16 + 72) = v27;
      v17 = *(a2 + 2);
      if (v17 > 0x40)
      {
        v4 = 1;
        **a2 = 1;
        bzero(*a2 + 8, (((v17 + 63) >> 3) - 8) & 0xFFFFFFF8);
        goto LABEL_39;
      }

      *a2 = (v17 != 0);
    }

    else
    {
      v9 = 0;
      if (v7 != 59)
      {
        return v4 | (v9 << 8);
      }

      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
      v14 = *(this + 1);
      *(v14 + 56) = v26;
      *(v14 + 72) = v27;
      v15 = *(a2 + 2);
      if (v15 > 0x40)
      {
        **a2 = 0;
        bzero(*a2 + 8, (((v15 + 63) >> 3) - 8) & 0xFFFFFFF8);
      }

      else
      {
        *a2 = 0;
      }
    }

    goto LABEL_38;
  }

  v8 = v7 == 10 || v7 == 24;
  v9 = 0;
  if (v8)
  {
    if (v7 == 24)
    {
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
      v10 = *(this + 1);
      *(v10 + 56) = v26;
      *(v10 + 72) = v27;
      v5 = *(this + 1);
    }

    v24 = *(v5 + 56);
    v25 = *(v5 + 72);
    *&v26 = "expected integer value";
    v28 = 259;
    if ((mlir::detail::Parser::parseToken(this, 10, &v26) & 1) == 0)
    {
      goto LABEL_21;
    }

    v23[0] = *(&v24 + 1);
    v23[1] = v25;
    v11 = 10;
    if (v25 >= 2)
    {
      if (*(*(&v24 + 1) + 1) == 120)
      {
        v11 = 0;
      }

      else
      {
        v11 = 10;
      }
    }

    if (llvm::StringRef::getAsInteger(v23, v11, a2))
    {
      Loc = mlir::Token::getLoc(&v24);
      v21 = "integer value too large";
      v22 = 259;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, &v21, &v26);
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v26);
      }

      if (v26)
      {
        mlir::InFlightDiagnostic::report(&v26);
      }

      if (v29 == 1)
      {
        mlir::Diagnostic::~Diagnostic((&v26 + 8));
      }

LABEL_21:
      v4 = 0;
LABEL_39:
      v9 = 1;
      return v4 | (v9 << 8);
    }

    v18 = *(a2 + 2);
    v19 = (*a2 + 8 * ((v18 - 1) >> 6));
    if (v18 < 0x41)
    {
      v19 = a2;
    }

    if ((*v19 >> (v18 - 1)))
    {
      llvm::APInt::zext(a2, v18 + 1, &v26);
      if (*(a2 + 2) >= 0x41u && *a2)
      {
        operator delete[](*a2);
      }

      *a2 = v26;
      *(a2 + 2) = DWORD2(v26);
    }

    if (v7 == 24)
    {
      llvm::APInt::negate(a2);
    }

LABEL_38:
    v4 = 1;
    goto LABEL_39;
  }

  return v4 | (v9 << 8);
}

uint64_t **llvm::APInt::negate(llvm::APInt *this)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v5 = this;
    llvm::APInt::flipAllBitsSlowCase(this);
    this = v5;
  }

  else
  {
    if (v2)
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v3 = 0;
    }

    *this = v3 & ~*this;
  }

  return llvm::APInt::operator++(this);
}

uint64_t mlir::detail::Parser::parseOptionalDecimalInteger(mlir::detail::Parser *this, llvm::APInt *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = *(v2 + 56);
  if (v3 == 24 || v3 == 10)
  {
    if (v3 == 24)
    {
      *(v2 + 80) = *(v2 + 56);
      *(v2 + 96) = *(v2 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v38);
      v7 = *(this + 1);
      *(v7 + 56) = v38;
      *(v7 + 72) = v39;
      v2 = *(this + 1);
    }

    v36 = *(v2 + 56);
    v37 = *(v2 + 72);
    *&v38 = "expected integer value";
    v41 = 259;
    if (mlir::detail::Parser::parseToken(this, 10, &v38))
    {
      v35[0] = *(&v36 + 1);
      v35[1] = v37;
      if (**(&v36 + 1) == 48 && v37 >= 2)
      {
        v11 = *(*(&v36 + 1) + 1);
        v10 = *(&v36 + 1) + 1;
        v9 = v11;
        v12 = v11 + 32;
        if ((v11 - 65) < 0x1A)
        {
          v9 = v12;
        }

        if (v9 == 120)
        {
          v13 = *(a2 + 2);
          if (v13 > 0x40)
          {
            **a2 = 0;
            bzero((*a2 + 8), (((v13 + 63) >> 3) - 8) & 0xFFFFFFF8);
          }

          else
          {
            *a2 = 0;
          }

          v30 = *(this + 1);
          *(v30 + 40) = v10;
          *(v30 + 80) = *(v30 + 56);
          *(v30 + 96) = *(v30 + 72);
          mlir::Lexer::lexToken((*(this + 1) + 8), &v38);
          v31 = *(this + 1);
          *(v31 + 56) = v38;
          *(v31 + 72) = v39;
LABEL_55:
          v14 = 1;
LABEL_61:
          v15 = 1;
          return v14 | (v15 << 8);
        }
      }

      if (!llvm::StringRef::getAsInteger(v35, 0xAu, a2))
      {
        v26 = *(a2 + 2);
        v27 = *a2;
        v28 = (*a2 + 8 * ((v26 - 1) >> 6));
        if (v26 < 0x41)
        {
          v28 = a2;
        }

        if ((*v28 >> (v26 - 1)))
        {
          llvm::APInt::zext(a2, v26 + 1, &v38);
          if (*(a2 + 2) >= 0x41u && *a2)
          {
            operator delete[](*a2);
          }

          v27 = v38;
          *a2 = v38;
          v26 = DWORD2(v38);
          *(a2 + 2) = DWORD2(v38);
        }

        if (v3 == 24)
        {
          if (v26 > 0x40)
          {
            llvm::APInt::flipAllBitsSlowCase(a2);
          }

          else
          {
            if (v26)
            {
              v29 = 0xFFFFFFFFFFFFFFFFLL >> -v26;
            }

            else
            {
              v29 = 0;
            }

            *a2 = v29 & ~v27;
          }

          llvm::APInt::operator++(a2);
        }

        goto LABEL_55;
      }

      Loc = mlir::Token::getLoc(&v36);
      v33 = "integer value too large";
      v34 = 259;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, &v33, &v38);
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v38);
      }

      if (v38)
      {
        mlir::InFlightDiagnostic::report(&v38);
      }

      if (v48 == 1)
      {
        if (v47 != &v48)
        {
          free(v47);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v46;
          v20 = __p;
          if (v46 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v46 = v18;
          operator delete(v20);
        }

        v21 = v43;
        if (v43)
        {
          v22 = v44;
          v23 = v43;
          if (v44 != v43)
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
            v23 = v43;
          }

          v44 = v21;
          operator delete(v23);
        }

        if (v40 != &v42)
        {
          free(v40);
        }
      }
    }

    v14 = 0;
    goto LABEL_61;
  }

  v14 = 0;
  v15 = 0;
  return v14 | (v15 << 8);
}

uint64_t mlir::detail::Parser::parseFloatFromIntegerLiteral(uint64_t a1, uint64_t a2, mlir::Token *this, int a4, void *a5, unint64_t a6)
{
  v73 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc(this);
  v13 = *(this + 2);
  if (v13 >= 2)
  {
    v14 = *(this + 1);
    if (v14[1] == 120)
    {
      if (a4)
      {
        v58[0] = "hexadecimal float literal should not have a leading minus";
        v59 = 259;
        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
        mlir::emitError(EncodedSourceLocation, v58, &v63);
        if (*(*(a1 + 8) + 56) == 1)
        {
          mlir::InFlightDiagnostic::abandon(&v63);
        }

        Enum = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
        if (v63)
        {
          mlir::InFlightDiagnostic::report(&v63);
        }

        if (v72 == 1)
        {
          if (v71 != &v72)
          {
            free(v71);
          }

          v17 = __p;
          if (__p)
          {
            v18 = v70;
            v19 = __p;
            if (v70 != __p)
            {
              do
              {
                v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
              }

              while (v18 != v17);
              v19 = __p;
            }

            v70 = v17;
            operator delete(v19);
          }

          v20 = v67;
          if (!v67)
          {
            goto LABEL_43;
          }

          v21 = v68;
          v22 = v67;
          if (v68 == v67)
          {
LABEL_42:
            v68 = v20;
            operator delete(v22);
LABEL_43:
            if (v65 != v66)
            {
              free(v65);
            }

            return Enum;
          }

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
LABEL_41:
          v22 = v67;
          goto LABEL_42;
        }

        return Enum;
      }

      LODWORD(v61) = 1;
      v60 = 0;
      v63 = v14;
      v64 = v13;
      llvm::StringRef::getAsInteger(&v63, 0, &v60);
      v39 = v61;
      if (v61 > 0x40)
      {
        if (v39 - llvm::APInt::countLeadingZerosSlowCase(&v60) <= a6)
        {
          v40 = llvm::APInt::APInt(&v63, a6, (v39 + 63) >> 6, v60);
          if ((*(a2 + 32) & 1) == 0)
          {
LABEL_49:
            v41 = llvm::APFloatBase::PPCDoubleDouble(v40);
            v42 = (a2 + 8);
            v43 = a5;
            if (v41 != a5)
            {
              goto LABEL_50;
            }

            goto LABEL_80;
          }

LABEL_72:
          v53 = *(a2 + 8);
          v54 = llvm::APFloatBase::PPCDoubleDouble(v40);
          if (v54 == v53)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat((a2 + 8));
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat((a2 + 8));
          }

          *(a2 + 32) = 0;
          v42 = (a2 + 8);
          v43 = a5;
          if (v54 != a5)
          {
LABEL_50:
            llvm::detail::IEEEFloat::IEEEFloat(v42, v43, &v63);
            *(a2 + 32) = 1;
            if (v64 < 0x41)
            {
              goto LABEL_83;
            }

            goto LABEL_81;
          }

LABEL_80:
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v42, v43, &v63);
          *(a2 + 32) = 1;
          if (v64 < 0x41)
          {
LABEL_83:
            Enum = 1;
LABEL_84:
            if (v61 >= 0x41 && v60)
            {
              operator delete[](v60);
            }

            return Enum;
          }

LABEL_81:
          if (v63)
          {
            operator delete[](v63);
          }

          goto LABEL_83;
        }
      }

      else if (64 - __clz(v60) <= a6)
      {
        v40 = llvm::APInt::APInt(&v63, a6, (v61 + 63) >> 6, &v60);
        if ((*(a2 + 32) & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_72;
      }

      v58[0] = "hexadecimal float constant out of range for type";
      v59 = 259;
      v44 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
      mlir::emitError(v44, v58, &v63);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v63);
      }

      Enum = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
      if (v63)
      {
        mlir::InFlightDiagnostic::report(&v63);
      }

      if (v72 == 1)
      {
        if (v71 != &v72)
        {
          free(v71);
        }

        v45 = __p;
        if (__p)
        {
          v46 = v70;
          v47 = __p;
          if (v70 != __p)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = __p;
          }

          v70 = v45;
          operator delete(v47);
        }

        v48 = v67;
        if (v67)
        {
          v49 = v68;
          v50 = v67;
          if (v68 != v67)
          {
            do
            {
              v52 = *--v49;
              v51 = v52;
              *v49 = 0;
              if (v52)
              {
                operator delete[](v51);
              }
            }

            while (v49 != v48);
            v50 = v67;
          }

          v68 = v48;
          operator delete(v50);
        }

        if (v65 != v66)
        {
          free(v65);
        }
      }

      goto LABEL_84;
    }
  }

  v58[0] = "unexpected decimal integer literal for a floating point value";
  v59 = 259;
  v25 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
  mlir::emitError(v25, v58, &v63);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v63);
  }

  v26 = mlir::Diagnostic::attachNote(&v64, 0, 0);
  v27 = *(v26 + 16);
  LODWORD(v60) = 3;
  v61 = "add a trailing dot to make the literal a float";
  v62 = 46;
  v28 = *(v26 + 24);
  v29 = &v60;
  if (v28 >= *(v26 + 28))
  {
    if (v27 <= &v60 && v27 + 24 * v28 > &v60)
    {
      v56 = &v60 - v27;
      v57 = v26;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v26 + 16, v26 + 32, v28 + 1, 24);
      v26 = v57;
      v27 = *(v57 + 16);
      v29 = &v56[v27];
    }

    else
    {
      v55 = v26;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v26 + 16, v26 + 32, v28 + 1, 24);
      v26 = v55;
      v27 = *(v55 + 16);
      v29 = &v60;
    }
  }

  v30 = v27 + 24 * *(v26 + 24);
  v31 = *v29;
  *(v30 + 16) = v29[2];
  *v30 = v31;
  ++*(v26 + 24);
  Enum = getEnumTag for MPSGraphDelegateKernelError();
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v70;
      v34 = __p;
      if (v70 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v70 = v32;
      operator delete(v34);
    }

    v20 = v67;
    if (!v67)
    {
      goto LABEL_43;
    }

    v35 = v68;
    v22 = v67;
    if (v68 == v67)
    {
      goto LABEL_42;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        operator delete[](v36);
      }
    }

    while (v35 != v20);
    goto LABEL_41;
  }

  return Enum;
}

__n128 mlir::Diagnostic::operator<<(uint64_t a1, char *__s)
{
  if (__s)
  {
    v3 = a1;
    v4 = strlen(__s);
    a1 = v3;
  }

  else
  {
    v4 = 0;
  }

  v13 = 3;
  v14 = __s;
  v15 = v4;
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  v7 = &v13;
  if (v5 >= *(a1 + 28))
  {
    if (v6 <= &v13 && v6 + 24 * v5 > &v13)
    {
      v11 = &v13 - v6;
      v12 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v5 + 1, 24);
      a1 = v12;
      v6 = *(v12 + 16);
      v7 = &v11[v6];
    }

    else
    {
      v10 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v5 + 1, 24);
      a1 = v10;
      v6 = *(v10 + 16);
      v7 = &v13;
    }
  }

  v8 = (v6 + 24 * *(a1 + 24));
  result = *v7;
  v8[1].n128_u64[0] = v7[1].n128_u64[0];
  *v8 = result;
  ++*(a1 + 24);
  return result;
}

void mlir::detail::Parser::parseResourceHandle(mlir::detail::Parser *this@<X0>, const mlir::OpAsmDialectInterface *a2@<X1>, llvm::StringRef *a3@<X2>, uint64_t a4@<X8>)
{
  v80 = *MEMORY[0x1E69E9840];
  v63 = a2;
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v8 = *(this + 1);
  v9 = *(v8 + 56);
  if (v9 == 3 || v9 == 12)
  {
LABEL_6:
    *a3 = *(v8 + 64);
    *(v8 + 80) = *(v8 + 56);
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v68);
    v11 = *(this + 1);
    *(v11 + 56) = v68;
    *(v11 + 72) = v69;
    v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::operator[](*(*(this + 1) + 104) + 48, &v63);
    v13 = *a3;
    v14 = *(a3 + 1);
    v16 = llvm::StringMapImpl::hash(*a3, v14, v15);
    v17 = llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>::try_emplace_with_hash<>(v12, v13, v14, v16);
    v18 = *v17;
    if ((*(*v17 + 31) & 0x8000000000000000) != 0)
    {
      v19 = v18 + 8;
      if (!*(v18 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v19 = v18 + 8;
      if (!*(*v17 + 31))
      {
LABEL_12:
        (*(*v63 + 32))(&v60);
        if (v62)
        {
          (*(*v63 + 40))(&v68);
          if (*(v18 + 31) < 0)
          {
            operator delete(*v19);
          }

          v21 = v68;
          *(v19 + 16) = v69;
          *v19 = v21;
          *(v18 + 32) = v60;
          *(v18 + 48) = v61;
          goto LABEL_16;
        }

        v59[16] = 257;
        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
        mlir::emitError(EncodedSourceLocation, v59, &v68);
        if (*(*(this + 1) + 56) == 1)
        {
          mlir::InFlightDiagnostic::abandon(&v68);
        }

        if (!v68)
        {
          goto LABEL_50;
        }

        LODWORD(v64) = 3;
        v65 = "unknown 'resource' key '";
        v66 = 24;
        v33 = &v64;
        v34 = v70;
        if (v71 >= v72)
        {
          if (v70 <= &v64 && v70 + 24 * v71 > &v64)
          {
            v56 = &v64 - v70;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
            v34 = v70;
            v33 = (v70 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
            v33 = &v64;
            v34 = v70;
          }
        }

        v35 = &v34[24 * v71];
        v36 = *v33;
        *(v35 + 2) = v33[2];
        *v35 = v36;
        ++v71;
        if (!v68)
        {
          goto LABEL_50;
        }

        v67 = 261;
        v37 = *(a3 + 1);
        v64 = *a3;
        v65 = v37;
        mlir::Diagnostic::operator<<(&v68 + 8, &v64);
        if (!v68)
        {
          goto LABEL_50;
        }

        LODWORD(v64) = 3;
        v65 = "' for dialect '";
        v66 = 15;
        v38 = &v64;
        v39 = v70;
        if (v71 >= v72)
        {
          if (v70 <= &v64 && v70 + 24 * v71 > &v64)
          {
            v57 = &v64 - v70;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
            v39 = v70;
            v38 = (v70 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
            v38 = &v64;
            v39 = v70;
          }
        }

        v40 = &v39[24 * v71];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v71;
        if (v68 && (v42 = *(v63 + 1), v44 = *(v42 + 8), v43 = *(v42 + 16), v67 = 261, v64 = v44, v65 = v43, mlir::Diagnostic::operator<<(&v68 + 8, &v64), v68))
        {
          LODWORD(v64) = 3;
          v65 = "'";
          v66 = 1;
          v45 = &v64;
          v46 = v70;
          if (v71 >= v72)
          {
            if (v70 <= &v64 && v70 + 24 * v71 > &v64)
            {
              v58 = &v64 - v70;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
              v46 = v70;
              v45 = (v70 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
              v45 = &v64;
              v46 = v70;
            }
          }

          v47 = &v46[24 * v71];
          v48 = *v45;
          *(v47 + 2) = v45[2];
          *v47 = v48;
          ++v71;
          v49 = v68;
          *a4 = 0;
          *(a4 + 24) = 0;
          if (v49)
          {
            mlir::InFlightDiagnostic::report(&v68);
          }
        }

        else
        {
LABEL_50:
          *a4 = 0;
          *(a4 + 24) = 0;
        }

        if (v79)
        {
          if (v78 != &v79)
          {
            free(v78);
          }

          v50 = __p;
          if (__p)
          {
            v51 = v77;
            v52 = __p;
            if (v77 != __p)
            {
              do
              {
                v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
              }

              while (v51 != v50);
              v52 = __p;
            }

            v77 = v50;
            operator delete(v52);
          }

          v27 = v74;
          if (!v74)
          {
            goto LABEL_67;
          }

          v53 = v75;
          v29 = v74;
          if (v75 == v74)
          {
LABEL_66:
            v75 = v27;
            operator delete(v29);
LABEL_67:
            if (v70 != v73)
            {
              free(v70);
            }

            return;
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

          while (v53 != v27);
LABEL_65:
          v29 = v74;
          goto LABEL_66;
        }

        return;
      }
    }

LABEL_16:
    v22 = *(v18 + 31);
    v23 = *(v18 + 8);
    if (v22 >= 0)
    {
      v23 = v19;
    }

    if (v22 < 0)
    {
      v22 = *(v18 + 16);
    }

    *a3 = v23;
    *(a3 + 1) = v22;
    *a4 = *(v18 + 32);
    *(a4 + 16) = *(v18 + 48);
    *(a4 + 24) = 1;
    return;
  }

  if (mlir::Token::isKeyword((v8 + 56)))
  {
    v8 = *(this + 1);
    goto LABEL_6;
  }

  v64 = "expected identifier key for 'resource' entry";
  v67 = 259;
  mlir::detail::Parser::emitError(this, &v64, &v68);
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v68)
  {
    mlir::InFlightDiagnostic::report(&v68);
  }

  if (v79 == 1)
  {
    if (v78 != &v79)
    {
      free(v78);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v77;
      v26 = __p;
      if (v77 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v77 = v24;
      operator delete(v26);
    }

    v27 = v74;
    if (!v74)
    {
      goto LABEL_67;
    }

    v28 = v75;
    v29 = v74;
    if (v75 == v74)
    {
      goto LABEL_66;
    }

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
    goto LABEL_65;
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3800000000;
  return v4 + 1;
}

void mlir::detail::Parser::parseResourceHandle(mlir::detail::Parser *this@<X0>, mlir::Dialect *a2@<X1>, _BYTE *a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2);
    v34 = 0;
    v35 = 0;
    mlir::detail::Parser::parseResourceHandle(this, v6, &v34, a3);
  }

  else
  {
    v29 = 257;
    mlir::detail::Parser::emitError(this, v28, &v34);
    if (!v34)
    {
      goto LABEL_10;
    }

    LODWORD(v30) = 3;
    v31 = "dialect '";
    v32 = 9;
    v7 = &v30;
    v8 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v26 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v8 = v36;
        v7 = v36 + v26;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v7 = &v30;
        v8 = v36;
      }
    }

    v9 = &v8[24 * v37];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v37;
    if (v34 && (v11 = *(a2 + 1), v12 = *(a2 + 2), v33 = 261, v30 = v11, v31 = v12, mlir::Diagnostic::operator<<(&v35, &v30), v34))
    {
      LODWORD(v30) = 3;
      v31 = "' does not expect resource handles";
      v32 = 34;
      v13 = &v30;
      v14 = v36;
      if (v37 >= v38)
      {
        if (v36 <= &v30 && v36 + 24 * v37 > &v30)
        {
          v27 = &v30 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v14 = v36;
          v13 = v36 + v27;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v13 = &v30;
          v14 = v36;
        }
      }

      v15 = &v14[24 * v37];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v37;
      v17 = v34;
      *a3 = 0;
      a3[24] = 0;
      if (v17)
      {
        mlir::InFlightDiagnostic::report(&v34);
      }
    }

    else
    {
LABEL_10:
      *a3 = 0;
      a3[24] = 0;
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v43;
        v20 = __p;
        if (v43 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v43 = v18;
        operator delete(v20);
      }

      v21 = v40;
      if (v40)
      {
        v22 = v41;
        v23 = v40;
        if (v41 != v40)
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
          v23 = v40;
        }

        v41 = v21;
        operator delete(v23);
      }

      if (v36 != v39)
      {
        free(v36);
      }
    }
  }
}

uint64_t mlir::detail::Parser::codeCompleteDialectOrElidedOpName(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  for (i = (a2 - 1); i > *(v3 + 24); --i)
  {
    v6 = *i;
    if (v6 > 0xC)
    {
      if (v6 != 32 && v6 != 13)
      {
        return 0;
      }
    }

    else if (v6 != 9)
    {
      if (v6 != 10)
      {
        return 0;
      }

      break;
    }
  }

  (*(**(v3 + 160) + 16))(*(v3 + 160), "", 0);
  v7 = *(a1 + 8);
  v8 = *(v7 + 168) + 16 * *(v7 + 176);
  v9 = *(v8 - 8);
  if (v9)
  {
    v10 = *(v8 - 16);
    v11 = memchr(v10, 46, *(v8 - 8));
    if (v11)
    {
      v12 = v11 - v10 == -1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      (*(**(v7 + 160) + 24))(*(v7 + 160), v10, v9);
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::codeCompleteDialectSymbol(uint64_t a1)
{
  (*(**(*(a1 + 8) + 160) + 64))(*(*(a1 + 8) + 160));
  return 0;
}

{
  (*(**(*(a1 + 8) + 160) + 80))(*(*(a1 + 8) + 160));
  return 0;
}

void mlir::parseAsmSourceFile(uint64_t **a1, uint64_t a2, uint64_t ***a3, mlir::AsmParserState *a4, mlir::AsmParserState *a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v10 = (*(***a1 + 16))(**a1);
  v12 = mlir::FileLineColLoc::get(v9, v10, v11, 0, 0);
  v20[0] = 0;
  v20[1] = 0;
  v20[2] = 0x1000000000;
  v20[3] = 0;
  v20[4] = 0;
  v20[5] = 0x1000000000;
  v20[6] = 0;
  v20[7] = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = a3;
  mlir::Lexer::Lexer(v26, a1, *a3, a5);
  mlir::Lexer::lexToken(v26, v27);
  v27[6] = 1;
  v28 = "";
  v29 = 0;
  v31 = 0;
  v32 = 0;
  v30 = v20;
  v33 = 0;
  v34 = v36;
  v35 = 0;
  v36[0] = a4;
  v36[1] = a5;
  v37[0] = "builtin";
  v37[1] = 7;
  v36[2] = v37;
  v36[3] = 0x300000001;
  LOBYTE(v38) = 0;
  LOBYTE(v39) = 0;
  v13 = mlir::ModuleOp::create(v12, &v38);
  *&v38 = *v25;
  *(&v38 + 1) = &v25;
  v42 = &v44;
  v43 = 0x200000000;
  v45 = &v47;
  v46 = 0x200000000;
  v49 = 0;
  v48 = 0;
  v50 = 0;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v15 = v13[10];
  v14 = v13[11];
  v39 = &v41;
  v40 = 0x200000000;
  v16 = (((&v13[4 * ((v14 >> 23) & 1) + 17] + ((v14 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v15);
  Context = mlir::Region::getContext(v16);
  v55 = 0;
  v57 = 0;
  v56 = 0;
  if (*v16 != v16)
  {
    v17 = *(v16 + 1);
    if (v17)
    {
      v18 = v17 - 8;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v18 + 40);
    v56 = v18;
    v57 = v19;
  }

  v58 = v13;
}

uint64_t anonymous namespace::OperationParser::parseOperation(_anonymous_namespace_::OperationParser *this)
{
  v316 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v3 = v281;
  v279 = v281;
  v280 = 0x100000000;
  v255 = 0;
  v4 = *(this + 1);
  if (*(v4 + 56) == 6)
  {
    v303 = this;
    v304 = &v279;
    v305 = &v255;
    {
      goto LABEL_312;
    }

    while (1)
    {
      v5 = *(this + 1);
      if (*(v5 + 56) != 16)
      {
        break;
      }

      *(v5 + 80) = *(v5 + 56);
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v282);
      *(*(this + 1) + 56) = v282;
      {
        goto LABEL_312;
      }
    }

    v282.__r_.__value_.__r.__words[0] = "expected '=' after SSA name";
    LOWORD(v284) = 259;
    if ((mlir::detail::Parser::parseToken(this, 18, &v282) & 1) == 0)
    {
      goto LABEL_312;
    }

    v4 = *(this + 1);
  }

  v253 = *(v4 + 56);
  v254 = *(v4 + 72);
  if (v253 != 3)
  {
    if (!mlir::Token::isKeyword(&v253))
    {
      if (v253 != 11)
      {
        if (!mlir::Token::isCodeCompletionFor(&v253, 11))
        {
          if (v253 == 2)
          {
            v39 = mlir::detail::Parser::codeCompleteDialectOrElidedOpName(this, Loc);
          }

          else
          {
            v303 = "expected operation name in quotes";
            LOWORD(v307) = 259;
            mlir::detail::Parser::emitWrongTokenError(this, &v303, &v282);
            v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v282);
          }

          goto LABEL_313;
        }

        v35 = &v282;
        mlir::Token::getStringValue(&v253, &v282);
        size = SHIBYTE(v282.__r_.__value_.__r.__words[2]);
        if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v35 = v282.__r_.__value_.__r.__words[0];
        }

        if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v282.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (v35->__r_.__value_.__s.__data_[size - 1] == 46)
          {
            v37 = size - 1;
            if (size != 1)
            {
              v38 = memchr(v35, 46, size - 1);
              if (!v38 || v38 - v35 == -1)
              {
                (*(**(*(this + 1) + 160) + 24))(*(*(this + 1) + 160), v35, v37);
              }
            }
          }
        }

        else
        {
          (*(**(*(this + 1) + 160) + 16))(*(*(this + 1) + 160), "", 0);
        }

        if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v282.__r_.__value_.__l.__data_);
        }

LABEL_312:
        v39 = 0;
        goto LABEL_313;
      }

      goto LABEL_304;
    }

    v4 = *(this + 1);
  }

  v6 = v279;
  v7 = v280;
  v8 = mlir::Token::getLoc((v4 + 56));
  v9 = *(this + 1);
  v11 = *(v9 + 64);
  v10 = *(v9 + 72);
  v269 = v12;
  v270 = v13;
  if ((v13 & 1) == 0)
  {
    v30 = 0;
    goto LABEL_304;
  }

  v282.__r_.__value_.__r.__words[0] = *(v12 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v282);
  v15 = v14;
  v302 = 0;
  v16 = v269;
  if (*(v269 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v282.__r_.__value_.__r.__words[0] = *(v269 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v282);
    if (!Values)
    {
      LOWORD(v260) = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, v8);
      mlir::emitError(EncodedSourceLocation, &v256, &v303);
      v41 = AttrData;
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v303);
      }

      if (v303)
      {
        LODWORD(v282.__r_.__value_.__l.__data_) = 3;
        v282.__r_.__value_.__r.__words[2] = 9;
        v42 = &v282;
        v43 = v306;
        if (v307 >= v308)
        {
          if (v306 <= &v282 && v306 + 24 * v307 > &v282)
          {
            v238 = &v282 - v306;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
            v43 = v306;
            v42 = (v306 + v238);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
            v42 = &v282;
            v43 = v306;
          }

          v41 = AttrData;
        }

        v44 = &v43[24 * v307];
        v45 = *&v42->__r_.__value_.__l.__data_;
        *(v44 + 2) = *(&v42->__r_.__value_.__l + 2);
        *v44 = v45;
        ++v307;
      }

      DialectNamespace = mlir::OperationName::getDialectNamespace(&v269);
      if (v303)
      {
        LOWORD(v284) = 261;
        v282.__r_.__value_.__r.__words[0] = DialectNamespace;
        v282.__r_.__value_.__l.__size_ = v47;
        mlir::Diagnostic::operator<<(&v304, &v282);
        if (v303)
        {
          LODWORD(v282.__r_.__value_.__l.__data_) = 3;
          v282.__r_.__value_.__l.__size_ = "' not found for custom op '";
          v282.__r_.__value_.__r.__words[2] = 27;
          v48 = &v282;
          v49 = v306;
          if (v307 >= v308)
          {
            if (v306 <= &v282 && v306 + 24 * v307 > &v282)
            {
              v243 = &v282 - v306;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
              v49 = v306;
              v48 = (v306 + v243);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
              v48 = &v282;
              v49 = v306;
            }

            v41 = AttrData;
          }

          v50 = &v49[24 * v307];
          v51 = *&v48->__r_.__value_.__l.__data_;
          *(v50 + 2) = *(&v48->__r_.__value_.__l + 2);
          *v50 = v51;
          ++v307;
          if (v303)
          {
            LOWORD(v284) = 261;
            v282.__r_.__value_.__r.__words[0] = v11;
            v282.__r_.__value_.__l.__size_ = v10;
            mlir::Diagnostic::operator<<(&v304, &v282);
            if (v303)
            {
              LODWORD(v282.__r_.__value_.__l.__data_) = 3;
              v282.__r_.__value_.__l.__size_ = "' ";
              v282.__r_.__value_.__r.__words[2] = 2;
              v52 = &v282;
              v53 = v306;
              if (v307 >= v308)
              {
                if (v306 <= &v282 && v306 + 24 * v307 > &v282)
                {
                  v248 = &v282 - v306;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
                  v53 = v306;
                  v52 = (v306 + v248);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
                  v52 = &v282;
                  v53 = v306;
                }

                v41 = AttrData;
              }

              v54 = &v53[24 * v307];
              v55 = *&v52->__r_.__value_.__l.__data_;
              *(v54 + 2) = *(&v52->__r_.__value_.__l + 2);
              *v54 = v55;
              ++v307;
            }
          }
        }
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v282, &v303);
      if (v303)
      {
        mlir::InFlightDiagnostic::report(&v303);
      }

      if (v315 == 1)
      {
        if (v314 != &v315)
        {
          free(v314);
        }

        v56 = __p;
        if (__p)
        {
          v57 = v313;
          v58 = __p;
          if (v313 != __p)
          {
            do
            {
              v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
            }

            while (v57 != v56);
            v58 = __p;
          }

          v313 = v56;
          operator delete(v58);
        }

        v59 = v310;
        if (v310)
        {
          v60 = v311;
          v61 = v310;
          if (v311 != v310)
          {
            do
            {
              v63 = *--v60;
              v62 = v63;
              *v60 = 0;
              if (v63)
              {
                operator delete[](v62);
              }
            }

            while (v60 != v59);
            v61 = v310;
          }

          v311 = v59;
          operator delete(v61);
        }

        if (v306 != v309)
        {
          free(v306);
        }
      }

      if ((v10 != v15 || v10 && memcmp(v11, v41, v10)) && v282.__r_.__value_.__r.__words[0])
      {
        LODWORD(v303) = 3;
        v304 = " (tried '";
        v305 = 9;
        v81 = &v303;
        v82 = v283;
        if (v284 >= v285)
        {
          if (v283 <= &v303 && v283 + 24 * v284 > &v303)
          {
            v242 = &v303 - v283;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v82 = v283;
            v81 = (v283 + v242);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v81 = &v303;
            v82 = v283;
          }

          v41 = AttrData;
        }

        v83 = &v82[24 * v284];
        v84 = *v81;
        *(v83 + 2) = v81[2];
        *v83 = v84;
        ++v284;
        if (v282.__r_.__value_.__r.__words[0])
        {
          LOWORD(v307) = 261;
          v303 = v41;
          v304 = v15;
          mlir::Diagnostic::operator<<(&v282.__r_.__value_.__l.__size_, &v303);
          if (v282.__r_.__value_.__r.__words[0])
          {
            LODWORD(v303) = 3;
            v304 = "' as well)";
            v305 = 10;
            v85 = &v303;
            v86 = v283;
            if (v284 >= v285)
            {
              if (v283 <= &v303 && v283 + 24 * v284 > &v303)
              {
                v247 = &v303 - v283;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
                v86 = v283;
                v85 = (v283 + v247);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
                v85 = &v303;
                v86 = v283;
              }
            }

            v87 = &v86[24 * v284];
            v88 = *v85;
            *(v87 + 2) = v85[2];
            *v87 = v88;
            ++v284;
          }
        }
      }

      v89 = mlir::Diagnostic::attachNote(&v282.__r_.__value_.__l.__size_, 0, 0);
      v90 = v89;
      v92 = v89 + 16;
      v91 = *(v89 + 16);
      LODWORD(v303) = 3;
      v304 = "Registered dialects: ";
      v305 = 21;
      v93 = *(v89 + 24);
      v94 = &v303;
      if (v93 >= *(v89 + 28))
      {
        if (v91 <= &v303 && v91 + 24 * v93 > &v303)
        {
          v235 = &v303 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v89 + 16, v89 + 32, v93 + 1, 24);
          v91 = *(v90 + 16);
          v94 = &v235[v91];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v89 + 16, v89 + 32, v93 + 1, 24);
          v91 = *(v90 + 16);
          v94 = &v303;
        }
      }

      v95 = v91 + 24 * *(v90 + 24);
      v96 = *v94;
      *(v95 + 16) = v94[2];
      *v95 = v96;
      ++*(v90 + 24);
      mlir::MLIRContext::getAvailableDialects(***(this + 1), &v256);
      v97 = v257;
      if (v256 != v257)
      {
        v98 = *v256;
        v99 = *(v256 + 1);
        v100 = v256 + 16;
        LOWORD(v307) = 261;
        v303 = v98;
        v304 = v99;
        mlir::Diagnostic::operator<<(v90, &v303);
        while (v100 != v97)
        {
          LOWORD(v307) = 261;
          v303 = ", ";
          v304 = 2;
          mlir::Diagnostic::operator<<(v90, &v303);
          v101 = *v100;
          v102 = *(v100 + 1);
          v100 += 16;
          LOWORD(v307) = 261;
          v303 = v101;
          v304 = v102;
          mlir::Diagnostic::operator<<(v90, &v303);
        }
      }

      if (v256)
      {
        v257 = v256;
        operator delete(v256);
      }

      LODWORD(v303) = 3;
      v304 = " ; for more info on dialect registration see https://mlir.llvm.org/getting_started/Faq/#registered-loaded-dependent-whats-up-with-dialects-management";
      v305 = 149;
      v103 = *(v90 + 24);
      v104 = *(v90 + 16);
      v105 = &v303;
      v3 = v281;
      if (v103 >= *(v90 + 28))
      {
        if (v104 <= &v303 && v104 + 24 * v103 > &v303)
        {
          v236 = &v303 - v104;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v92, v90 + 32, v103 + 1, 24);
          v104 = *(v90 + 16);
          v105 = &v236[v104];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v92, v90 + 32, v103 + 1, 24);
          v104 = *(v90 + 16);
          v105 = &v303;
        }
      }

      v106 = v104 + 24 * *(v90 + 24);
      v107 = *v105;
      *(v106 + 16) = v105[2];
      *v106 = v107;
      ++*(v90 + 24);
      if (v282.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&v282);
      }

      if (v293[0] != 1)
      {
LABEL_193:
        v30 = 0;
        v130 = v302;
        if (v302 < 8)
        {
          goto LABEL_304;
        }

        goto LABEL_297;
      }

      if (v292 != v293)
      {
        free(v292);
      }

      v108 = v290;
      if (v290)
      {
        v109 = v291;
        v110 = v290;
        if (v291 != v290)
        {
          do
          {
            v109 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v109 - 1);
          }

          while (v109 != v108);
          v110 = v290;
        }

        v291 = v108;
        operator delete(v110);
      }

      v111 = v288;
      if (!v288)
      {
LABEL_191:
        if (v283 != v286)
        {
          free(v283);
        }

        goto LABEL_193;
      }

      v112 = v289;
      v113 = v288;
      if (v289 == v288)
      {
LABEL_190:
        v289 = v111;
        operator delete(v113);
        goto LABEL_191;
      }

      do
      {
        v115 = *--v112;
        v114 = v115;
        *v112 = 0;
        if (v115)
        {
          operator delete[](v114);
        }
      }

      while (v112 != v111);
LABEL_189:
      v113 = v288;
      goto LABEL_190;
    }

    v25 = AttrData;
    (*(*Values + 64))(&v282);
    if (v282.__r_.__value_.__s.__data_[16])
    {
      v32 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v283 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v33 = v302;
      if (v302 >= 8)
      {
        if ((v302 & 4) != 0)
        {
          if ((v302 & 2) != 0)
          {
            v34 = v300;
          }

          else
          {
            v34 = v300[0];
          }

          (*((v302 & 0xFFFFFFFFFFFFFFF8) + 16))(v34);
        }

        if ((v33 & 2) == 0)
        {
          llvm::deallocate_buffer(v300[0], v300[1]);
        }

        v32 = v283;
      }

      v302 = v32;
      if (v32 >= 8)
      {
        if ((v32 & 2) != 0 && (v32 & 4) != 0)
        {
          (*((v32 & 0xFFFFFFFFFFFFFFF8) + 8))(v300, &v282);
          (*((v302 & 0xFFFFFFFFFFFFFFF8) + 16))(&v282, v131);
        }

        else
        {
          *v300 = *&v282.__r_.__value_.__l.__data_;
          v301 = v282.__r_.__value_.__r.__words[2];
        }
      }

      v132 = 0;
      v19 = 0;
      goto LABEL_241;
    }

    LOWORD(v260) = 257;
    v64 = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, v8);
    mlir::emitError(v64, &v256, &v303);
    if (*(*(this + 1) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v303);
    }

    if (v303)
    {
      LODWORD(v282.__r_.__value_.__l.__data_) = 3;
      v282.__r_.__value_.__l.__size_ = "custom op '";
      v282.__r_.__value_.__r.__words[2] = 11;
      v65 = &v282;
      v66 = v306;
      if (v307 >= v308)
      {
        if (v306 <= &v282 && v306 + 24 * v307 > &v282)
        {
          v239 = &v282 - v306;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
          v66 = v306;
          v65 = (v306 + v239);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
          v65 = &v282;
          v66 = v306;
        }

        v25 = AttrData;
      }

      v67 = &v66[24 * v307];
      v68 = *&v65->__r_.__value_.__l.__data_;
      *(v67 + 2) = *(&v65->__r_.__value_.__l + 2);
      *v67 = v68;
      ++v307;
      if (v303)
      {
        LOWORD(v284) = 261;
        v282.__r_.__value_.__r.__words[0] = v11;
        v282.__r_.__value_.__l.__size_ = v10;
        mlir::Diagnostic::operator<<(&v304, &v282);
        if (v303)
        {
          LODWORD(v282.__r_.__value_.__l.__data_) = 3;
          v282.__r_.__value_.__l.__size_ = "' is unknown";
          v282.__r_.__value_.__r.__words[2] = 12;
          v69 = &v282;
          v70 = v306;
          if (v307 >= v308)
          {
            if (v306 <= &v282 && v306 + 24 * v307 > &v282)
            {
              v246 = &v282 - v306;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
              v70 = v306;
              v69 = (v306 + v246);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
              v69 = &v282;
              v70 = v306;
            }

            v25 = AttrData;
          }

          v71 = &v70[24 * v307];
          v72 = *&v69->__r_.__value_.__l.__data_;
          *(v71 + 2) = *(&v69->__r_.__value_.__l + 2);
          *v71 = v72;
          ++v307;
        }
      }
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v282, &v303);
    if (v303)
    {
      mlir::InFlightDiagnostic::report(&v303);
    }

    if (v315 == 1)
    {
      if (v314 != &v315)
      {
        free(v314);
      }

      v73 = __p;
      if (__p)
      {
        v74 = v313;
        v75 = __p;
        if (v313 != __p)
        {
          do
          {
            v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
          }

          while (v74 != v73);
          v75 = __p;
        }

        v313 = v73;
        operator delete(v75);
      }

      v76 = v310;
      if (v310)
      {
        v77 = v311;
        v78 = v310;
        if (v311 != v310)
        {
          do
          {
            v80 = *--v77;
            v79 = v80;
            *v77 = 0;
            if (v80)
            {
              operator delete[](v79);
            }
          }

          while (v77 != v76);
          v78 = v310;
        }

        v311 = v76;
        operator delete(v78);
      }

      if (v306 != v309)
      {
        free(v306);
      }
    }

    if (v10 != v15 || v10 && memcmp(v11, v25, v10))
    {
      if (!v282.__r_.__value_.__r.__words[0])
      {
        goto LABEL_175;
      }

      LODWORD(v303) = 3;
      v304 = " (tried '";
      v305 = 9;
      v116 = &v303;
      v117 = v283;
      if (v284 >= v285)
      {
        if (v283 <= &v303 && v283 + 24 * v284 > &v303)
        {
          v244 = &v303 - v283;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v117 = v283;
          v116 = (v283 + v244);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v116 = &v303;
          v117 = v283;
        }

        v25 = AttrData;
      }

      v118 = &v117[24 * v284];
      v119 = *v116;
      *(v118 + 2) = v116[2];
      *v118 = v119;
      ++v284;
      if (!v282.__r_.__value_.__r.__words[0])
      {
        goto LABEL_175;
      }

      LOWORD(v307) = 261;
      v303 = v25;
      v304 = v15;
      mlir::Diagnostic::operator<<(&v282.__r_.__value_.__l.__size_, &v303);
      if (!v282.__r_.__value_.__r.__words[0])
      {
        goto LABEL_175;
      }

      LODWORD(v303) = 3;
      v304 = "' as well)";
      v305 = 10;
      v120 = &v303;
      v121 = v283;
      if (v284 >= v285)
      {
        if (v283 <= &v303 && v283 + 24 * v284 > &v303)
        {
          v249 = &v303 - v283;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v121 = v283;
          v120 = (v283 + v249);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v120 = &v303;
          v121 = v283;
        }
      }

      v122 = &v121[24 * v284];
      v123 = *v120;
      *(v122 + 2) = v120[2];
      *v122 = v123;
      ++v284;
    }

    if (v282.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v282);
    }

LABEL_175:
    if (v293[0] != 1)
    {
      goto LABEL_193;
    }

    if (v292 != v293)
    {
      free(v292);
    }

    v124 = v290;
    if (v290)
    {
      v125 = v291;
      v126 = v290;
      if (v291 != v290)
      {
        do
        {
          v125 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v125 - 1);
        }

        while (v125 != v124);
        v126 = v290;
      }

      v291 = v124;
      operator delete(v126);
    }

    v111 = v288;
    if (!v288)
    {
      goto LABEL_191;
    }

    v127 = v289;
    v113 = v288;
    if (v289 == v288)
    {
      goto LABEL_190;
    }

    do
    {
      v129 = *--v127;
      v128 = v129;
      *v127 = 0;
      if (v129)
      {
        operator delete[](v128);
      }
    }

    while (v127 != v111);
    goto LABEL_189;
  }

  (*(*v269 + 40))(&v282, v269);
  v17 = v302;
  if (v302 >= 8)
  {
    if ((v302 & 4) != 0)
    {
      if ((v302 & 2) != 0)
      {
        v18 = v300;
      }

      else
      {
        v18 = v300[0];
      }

      (*((v302 & 0xFFFFFFFFFFFFFFF8) + 16))(v18);
    }

    if ((v17 & 2) == 0)
    {
      llvm::deallocate_buffer(v300[0], v300[1]);
    }
  }

  v302 = v283;
  if (v283 >= 8)
  {
    if ((v283 & 2) != 0 && (v283 & 4) != 0)
    {
      (*((v283 & 0xFFFFFFFFFFFFFFF8) + 8))(v300, &v282);
      (*((v302 & 0xFFFFFFFFFFFFFFF8) + 16))(&v282);
      {
        goto LABEL_26;
      }

      goto LABEL_120;
    }

    *v300 = *&v282.__r_.__value_.__l.__data_;
    v301 = v282.__r_.__value_.__r.__words[2];
  }

  {
    goto LABEL_26;
  }

LABEL_120:
LABEL_26:
  v19 = (*(*v16 + 32))(v16, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
  {
    v20 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    if (v22)
    {
      goto LABEL_28;
    }

LABEL_238:
    v25 = AttrData;
LABEL_240:
    v132 = 0;
    goto LABEL_241;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
  v21 = *(v16 + 32);
  v22 = *(v16 + 40);
  if (!v22)
  {
    goto LABEL_238;
  }

LABEL_28:
  v23 = v21;
  v24 = v22;
  v25 = AttrData;
  do
  {
    v26 = v24 >> 1;
    v27 = &v23[2 * (v24 >> 1)];
    v29 = *v27;
    v28 = v27 + 2;
    v24 += ~(v24 >> 1);
    if (v29 < v20)
    {
      v23 = v28;
    }

    else
    {
      v24 = v26;
    }
  }

  while (v24);
  if (v23 == &v21[2 * v22])
  {
    goto LABEL_240;
  }

  if (*v23 != v20)
  {
    goto LABEL_240;
  }

  v158 = v23[1];
  if (!v158)
  {
    goto LABEL_240;
  }

  v159 = (*(v158 + 24))();
  if (v132)
  {
    v133 = (*(v158 + 24))(v159);
    v134 = *(this + 1);
    v135 = *(v134 + 176);
    if (v135 < *(v134 + 180))
    {
      goto LABEL_242;
    }

    goto LABEL_272;
  }

LABEL_241:
  v133 = "";
  v134 = *(this + 1);
  v135 = *(v134 + 176);
  if (v135 < *(v134 + 180))
  {
    goto LABEL_242;
  }

LABEL_272:
  v250 = v133;
  v160 = v132;
  llvm::SmallVectorBase<unsigned int>::grow_pod(v134 + 168, v134 + 184, v135 + 1, 16);
  v132 = v160;
  v3 = v281;
  v133 = v250;
  v25 = AttrData;
  LODWORD(v135) = *(v134 + 176);
LABEL_242:
  v136 = (*(v134 + 168) + 16 * v135);
  *v136 = v133;
  v136[1] = v132;
  ++*(v134 + 176);
  v282.__r_.__value_.__r.__words[0] = *(v269 + 8);
  v137 = mlir::OpaqueAttr::getAttrData(&v282);
  llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(v297, "MLIR Parser: custom op parser '%s'", v137);
  v268 = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, v8);
  v138.n128_f64[0] = mlir::OperationState::OperationState(&v282, v268, v269);
  v139 = *(*(this + 1) + 152);
  if (v139)
  {
    mlir::AsmParserState::startOperationDefinition(v139, &v282.__r_.__value_.__r.__words[1]);
  }

  v257 = v8;
  v258 = this;
  v259 = 0;
  v256 = &unk_1F5AF1DC8;
  v260 = v6;
  v261 = v7;
  v262 = llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::unique_function<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>>;
  v263 = v300;
  v264 = v19;
  v265 = v25;
  v266 = v15;
  v267 = this;
  if ((v302 & 2) != 0)
  {
    v140 = v300;
  }

  else
  {
    v140 = v300[0];
  }

  if (((*(v302 & 0xFFFFFFFFFFFFFFF8))(v140, &v256, &v282, v138) & 1) == 0)
  {
    goto LABEL_279;
  }

  mlir::NamedAttrList::findDuplicate(&v287, v274);
  if (v274[16])
  {
    v142 = (*(v256 + 2))(&v256);
    v272[0] = "attribute '";
    v273 = 259;
    (*(v256 + 3))(&v303, &v256, v142, v272);
    CallableRegion = mlir::CallGraphNode::getCallableRegion(v274);
    v143 = mlir::OpaqueAttr::getAttrData(&CallableRegion);
    if (v303)
    {
      v278 = 261;
      v275 = v143;
      v276 = v144;
      mlir::Diagnostic::operator<<(&v304, &v275);
      if (v303)
      {
        LODWORD(v275) = 3;
        v276 = "' occurs more than once in the attribute list";
        v277 = 45;
        v145 = &v275;
        v146 = v306;
        if (v307 >= v308)
        {
          if (v306 <= &v275 && v306 + 24 * v307 > &v275)
          {
            v240 = &v275 - v306;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
            v146 = v306;
            v145 = v306 + v240;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
            v145 = &v275;
            v146 = v306;
          }
        }

        v147 = &v146[24 * v307];
        v148 = *v145;
        *(v147 + 2) = *(v145 + 2);
        *v147 = v148;
        ++v307;
      }
    }

    v149 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v303);
    if (v303)
    {
      mlir::InFlightDiagnostic::report(&v303);
    }

    if (v315 == 1)
    {
      if (v314 != &v315)
      {
        free(v314);
      }

      v150 = __p;
      if (__p)
      {
        v151 = v313;
        v152 = __p;
        if (v313 != __p)
        {
          do
          {
            v151 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v151 - 1);
          }

          while (v151 != v150);
          v152 = __p;
        }

        v313 = v150;
        operator delete(v152);
      }

      v153 = v310;
      if (v310)
      {
        v154 = v311;
        v155 = v310;
        if (v311 != v310)
        {
          do
          {
            v157 = *--v154;
            v156 = v157;
            *v154 = 0;
            if (v157)
            {
              operator delete[](v156);
            }
          }

          while (v154 != v153);
          v155 = v310;
        }

        v311 = v153;
        operator delete(v155);
      }

      if (v306 != v309)
      {
        free(v306);
      }
    }

    if (!v149)
    {
      goto LABEL_279;
    }
  }

  if ((v259 & 1) == 0)
  {
    v214 = v296;
    v275 = v296;
    v296 = 0;
    v215 = mlir::OpBuilder::create((this + 384), &v282);
    v272[0] = v215;
    v30 = 0;
    {
      if (v214)
      {
        v303 = &v268;
        v304 = &v275;
        v305 = v272;
        {
          v30 = v272[0];
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = v215;
      }
    }
  }

  else
  {
LABEL_279:
    v30 = 0;
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify(&v256, v141);
  v303 = &v305;
  v304 = 0x400000000;
  v162 = v295;
  if (v295 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v303, &v305, v295, 8);
    v162 = v295;
  }

  if (v162)
  {
    v163 = v294;
    v164 = &v294[v162];
    do
    {
      v165 = *v163;
      if (*v163)
      {
        for (i = *(v165 + 8); i != v165; i = *(i + 8))
        {
          if (i)
          {
            v167 = (i - 8);
          }

          else
          {
            v167 = 0;
          }

          mlir::Block::dropAllDefinedValueUses(v167, v161);
        }
      }

      ++v163;
    }

    while (v163 != v164);
  }

  if (v303 != &v305)
  {
    free(v303);
  }

  mlir::OperationState::~OperationState(&v282);
  v297[0] = &unk_1F5B3F3F8;
  if (v298 != &v299)
  {
    free(v298);
  }

  llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(v297);
  --*(*(this + 1) + 176);
  v130 = v302;
  if (v302 >= 8)
  {
LABEL_297:
    if ((v130 & 4) != 0)
    {
      if ((v130 & 2) != 0)
      {
        v168 = v300;
      }

      else
      {
        v168 = v300[0];
      }

      (*((v130 & 0xFFFFFFFFFFFFFFF8) + 16))(v168);
    }

    if ((v130 & 2) == 0)
    {
      llvm::deallocate_buffer(v300[0], v300[1]);
    }
  }

LABEL_304:
  if (!v30)
  {
    goto LABEL_312;
  }

  if (!v280)
  {
    v173 = *(*(this + 1) + 152);
    if (v173)
    {
      LocRange = mlir::Token::getLocRange(&v253);
      v176 = v175;
      EndLoc = mlir::Token::getEndLoc((*(this + 1) + 80));
      mlir::AsmParserState::finalizeOperationDefinition(v173, v30, LocRange, v176, EndLoc, 0, 0);
    }

    goto LABEL_318;
  }

  v169 = *(v30 + 36);
  if (!v169)
  {
    v303 = "cannot name an operation with no results";
    LOWORD(v307) = 259;
    v178 = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
    mlir::emitError(v178, &v303, &v282);
    if (*(*(this + 1) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v282);
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
    if (v282.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v282);
    }

    if (v293[0] != 1)
    {
      goto LABEL_313;
    }

    if (v292 != v293)
    {
      free(v292);
    }

    v179 = v290;
    if (v290)
    {
      v180 = v291;
      v181 = v290;
      if (v291 != v290)
      {
        do
        {
          v180 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v180 - 1);
        }

        while (v180 != v179);
        v181 = v290;
      }

      v291 = v179;
      operator delete(v181);
    }

    v182 = v288;
    if (v288)
    {
      v183 = v289;
      v184 = v288;
      if (v289 == v288)
      {
        goto LABEL_370;
      }

      do
      {
        v186 = *--v183;
        v185 = v186;
        *v183 = 0;
        if (v186)
        {
          operator delete[](v185);
        }
      }

      while (v183 != v182);
LABEL_369:
      v184 = v288;
LABEL_370:
      v289 = v182;
      operator delete(v184);
    }

LABEL_371:
    if (v283 != v286)
    {
      free(v283);
    }

    goto LABEL_313;
  }

  if (v255 != v169)
  {
    v303 = "operation defines ";
    LOWORD(v307) = 259;
    v187 = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
    mlir::emitError(v187, &v303, &v282);
    if (*(*(this + 1) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v282);
    }

    if (v282.__r_.__value_.__r.__words[0])
    {
      v188 = *(v30 + 36);
      LODWORD(v256) = 5;
      v257 = v188;
      v189 = &v256;
      v190 = v283;
      if (v284 >= v285)
      {
        if (v283 <= &v256 && v283 + 24 * v284 > &v256)
        {
          v234 = &v256 - v283;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v190 = v283;
          v189 = (v283 + v234);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v189 = &v256;
          v190 = v283;
        }
      }

      v191 = &v190[24 * v284];
      v192 = *v189;
      *(v191 + 2) = v189[2];
      *v191 = v192;
      v193 = ++v284;
      if (v282.__r_.__value_.__r.__words[0])
      {
        LODWORD(v256) = 3;
        v257 = " results but was provided ";
        v258 = 26;
        v194 = &v256;
        v195 = v283;
        if (v193 >= v285)
        {
          if (v283 <= &v256 && v283 + 24 * v193 > &v256)
          {
            v237 = &v256 - v283;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v193 + 1, 24);
            v195 = v283;
            v194 = (v283 + v237);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v193 + 1, 24);
            v194 = &v256;
            v195 = v283;
          }
        }

        v196 = &v195[24 * v284];
        v197 = *v194;
        *(v196 + 2) = v194[2];
        *v196 = v197;
        v198 = ++v284;
        if (v282.__r_.__value_.__r.__words[0])
        {
          LODWORD(v256) = 5;
          v257 = v255;
          v199 = &v256;
          v200 = v283;
          if (v198 >= v285)
          {
            if (v283 <= &v256 && v283 + 24 * v198 > &v256)
            {
              v241 = &v256 - v283;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v198 + 1, 24);
              v200 = v283;
              v199 = (v283 + v241);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v198 + 1, 24);
              v199 = &v256;
              v200 = v283;
            }
          }

          v201 = &v200[24 * v284];
          v202 = *v199;
          *(v201 + 2) = v199[2];
          *v201 = v202;
          v203 = ++v284;
          if (v282.__r_.__value_.__r.__words[0])
          {
            LODWORD(v256) = 3;
            v257 = " to bind";
            v258 = 8;
            v204 = &v256;
            v205 = v283;
            if (v203 >= v285)
            {
              if (v283 <= &v256 && v283 + 24 * v203 > &v256)
              {
                v245 = &v256 - v283;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v203 + 1, 24);
                v205 = v283;
                v204 = (v283 + v245);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v203 + 1, 24);
                v204 = &v256;
                v205 = v283;
              }
            }

            v206 = &v205[24 * v284];
            v207 = *v204;
            *(v206 + 2) = v204[2];
            *v206 = v207;
            ++v284;
          }
        }
      }
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
    if (v282.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v282);
    }

    if (v293[0] != 1)
    {
      goto LABEL_313;
    }

    if (v292 != v293)
    {
      free(v292);
    }

    v208 = v290;
    if (v290)
    {
      v209 = v291;
      v210 = v290;
      if (v291 != v290)
      {
        do
        {
          v209 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v209 - 1);
        }

        while (v209 != v208);
        v210 = v290;
      }

      v291 = v208;
      operator delete(v210);
    }

    v182 = v288;
    if (v288)
    {
      v211 = v289;
      v184 = v288;
      if (v289 == v288)
      {
        goto LABEL_370;
      }

      do
      {
        v213 = *--v211;
        v212 = v213;
        *v211 = 0;
        if (v213)
        {
          operator delete[](v212);
        }
      }

      while (v211 != v182);
      goto LABEL_369;
    }

    goto LABEL_371;
  }

  if (!*(*(this + 1) + 152))
  {
    v216 = v279;
    v217 = v279 + 32 * v280;
    goto LABEL_385;
  }

  LODWORD(v303) = 0;
  v282.__r_.__value_.__r.__words[0] = &v282.__r_.__value_.__r.__words[2];
  v282.__r_.__value_.__l.__size_ = 0x300000000;
  if (v280 <= 3)
  {
    v170 = v279;
    v171 = v279 + 32 * v280;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v282, &v282.__r_.__value_.__r.__words[2], v280, 16);
    if (!v280)
    {
      goto LABEL_381;
    }

    v170 = v279;
    v171 = v279 + 32 * v280;
  }

  v218 = 0;
  v219 = (v170 + 24);
  do
  {
    v220 = v282.__r_.__value_.__r.__words[1];
    if (LODWORD(v282.__r_.__value_.__r.__words[1]) >= HIDWORD(v282.__r_.__value_.__r.__words[1]))
    {
      llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<unsigned int &,llvm::SMLoc&>(&v282, &v303, v219);
    }

    else
    {
      v221 = v282.__r_.__value_.__r.__words[0] + 16 * LODWORD(v282.__r_.__value_.__r.__words[1]);
      *v221 = v218;
      *(v221 + 8) = *v219;
      LODWORD(v282.__r_.__value_.__r.__words[1]) = v220 + 1;
    }

    v218 = v303 + *(v219 - 2);
    LODWORD(v303) = v218;
    v222 = (v219 + 1);
    v219 += 4;
  }

  while (v222 != v171);
LABEL_381:
  v223 = *(*(this + 1) + 152);
  v224 = mlir::Token::getLocRange(&v253);
  v226 = v225;
  v227 = mlir::Token::getEndLoc((*(this + 1) + 80));
  mlir::AsmParserState::finalizeOperationDefinition(v223, v30, v224, v226, v227, v282.__r_.__value_.__l.__data_, LODWORD(v282.__r_.__value_.__r.__words[1]));
  if (v282.__r_.__value_.__l.__data_ != &v282.__r_.__value_.__r.__words[2])
  {
    free(v282.__r_.__value_.__l.__data_);
  }

  if (!v280)
  {
LABEL_318:
    v39 = 1;
    goto LABEL_313;
  }

  v216 = v279;
  v217 = v279 + 32 * v280;
LABEL_385:
  v252 = v217;
  v228 = 0;
  while (1)
  {
    v229 = v3;
    v230 = *(v216 + 4);
    if (v230)
    {
      break;
    }

    v232 = v228;
LABEL_395:
    v216 += 32;
    v39 = 1;
    v228 = v232;
    v3 = v229;
    if (v216 == v252)
    {
      goto LABEL_313;
    }
  }

  v231 = 0;
  while (1)
  {
    v282.__r_.__value_.__r.__words[0] = *(v216 + 3);
    *&v282.__r_.__value_.__r.__words[1] = *v216;
    LODWORD(v283) = v231;
    v232 = (v228 + 1);
    v233 = (v228 >= 6 ? v30 - 96 - 24 * (v228 - 5) : v30 - 16 * v232);
    {
      break;
    }

    ++v231;
    LODWORD(v228) = v232;
    if (v230 == v231)
    {
      goto LABEL_395;
    }
  }

  v39 = 0;
  v3 = v229;
LABEL_313:
  if (v279 != v3)
  {
    free(v279);
  }

  return v39;
}

void anonymous namespace::OperationParser::pushSSANameScope(_anonymous_namespace_::OperationParser *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = (this + 208);
  v2 = *(this + 26);
  v10[0] = 0;
  v10[1] = 0;
  LODWORD(v11) = 0;
  v4 = *(this + 54);
  v5 = v10;
  if (v4 >= *(this + 55))
  {
    if (v2 <= v10 && v2 + 24 * v4 > v10)
    {
      v9 = v10 - v2;
      v2 = *v3;
      v5 = &v9[*v3];
    }

    else
    {
      v2 = *v3;
      v5 = v10;
    }
  }

  v6 = v2 + 24 * *(this + 54);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = *v5;
  *v5 = 0;
  *(v6 + 8) = *(v5 + 2);
  *(v5 + 2) = 0;
  v7 = *(v6 + 12);
  *(v6 + 12) = *(v5 + 3);
  *(v5 + 3) = v7;
  v8 = *(v6 + 16);
  *(v6 + 16) = *(v5 + 4);
  *(v5 + 4) = v8;
  ++*(this + 54);
  llvm::deallocate_buffer(v10[0], (32 * v11));
}

void anonymous namespace::OperationParser::IsolatedSSANameScope::~IsolatedSSANameScope(_anonymous_namespace_::OperationParser::IsolatedSSANameScope *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
  if (v3)
  {
    v4 = &v2[3 * v3];
    do
    {
      v5 = v4;
      v4 -= 3;
      if (*(v5 - 3))
      {
        v6 = *(v5 - 4);
        if (v6)
        {
          v7 = 0;
          do
          {
            v8 = *(*v4 + v7);
            if (v8 != -8 && v8 != 0)
            {
              llvm::deallocate_buffer(v8, (*v8 + 9));
            }

            v7 += 8;
          }

          while (8 * v6 != v7);
        }
      }

      free(*v4);
    }

    while (v4 != v2);
    v2 = *(this + 3);
  }

  if (v2 != (this + 40))
  {
    free(v2);
  }

  if (*(this + 3))
  {
    v10 = *(this + 2);
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = *(*this + v11);
        if (v12 != -8 && v12 != 0)
        {
          v15 = *v12;
          v14 = *(v12 + 1);
          if (v14 != (v12 + 24))
          {
            free(v14);
          }

          llvm::deallocate_buffer(v12, (v15 + 41));
        }

        v11 += 8;
      }

      while (8 * v10 != v11);
    }
  }

  free(*this);
}

void llvm::SmallVectorTemplateBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[24 * v7];
    v9 = v5;
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v6;
      *v6 = 0;
      *(v9 + 8) = *(v6 + 2);
      *(v6 + 2) = 0;
      v10 = *(v9 + 12);
      *(v9 + 12) = *(v6 + 3);
      *(v6 + 3) = v10;
      v11 = *(v9 + 16);
      *(v9 + 16) = *(v6 + 4);
      *(v6 + 4) = v11;
      v9 += 24;
      v6 += 24;
    }

    while (v6 != v8);
    v6 = *a1;
    v12 = *(a1 + 8);
    if (v12)
    {
      llvm::deallocate_buffer(*&v6[24 * v12 - 24], (32 * *&v6[24 * v12 - 8]));
    }
  }

  v13 = v14;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v13;
}

void llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[24 * v7];
    v9 = v5;
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v6;
      *v6 = 0;
      *(v9 + 8) = *(v6 + 2);
      *(v6 + 2) = 0;
      v10 = *(v9 + 12);
      *(v9 + 12) = *(v6 + 3);
      *(v6 + 3) = v10;
      v11 = *(v9 + 16);
      *(v9 + 16) = *(v6 + 4);
      *(v6 + 4) = v11;
      v9 += 24;
      v6 += 24;
    }

    while (v6 != v8);
    v6 = *a1;
    v12 = *(a1 + 8);
    if (v12)
    {
      llvm::deallocate_buffer(*&v6[24 * v12 - 24], (16 * *&v6[24 * v12 - 8]));
    }
  }

  v13 = v14;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v13;
}

void llvm::SmallVectorTemplateBase<anonymous namespace::OperationParser::IsolatedSSANameScope,false>::grow(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 88, &v17);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 0;
    v9 = &v6[88 * v7];
    do
    {
      v10 = &v6[v8];
      v11 = v5 + v8;
      *v11 = *&v6[v8];
      *(v11 + 8) = *&v6[v8 + 8];
      *v10 = 0;
      *(v10 + 1) = 0;
      *(v10 + 4) = 0;
      *(v11 + 24) = v5 + v8 + 40;
      *(v5 + v8 + 32) = 0x200000000;
      if (*&v6[v8 + 32])
      {
        llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(v5 + v8 + 24, (v10 + 24));
      }

      v8 += 88;
    }

    while (v10 + 88 != v9);
    v6 = *a1;
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = -88 * v12;
      v14 = &v6[88 * v12 - 88];
      do
      {
        v14 = (v15 - 88);
        v13 += 88;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v16 = v17;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v16;
}

uint64_t llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = *a2;
  if (*a2 != a2 + 16)
  {
    llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::assignRemote(a1, a2);
    return a1;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  if (v5 < v4)
  {
    if (*(a1 + 12) >= v4)
    {
      v26 = *a1;
      if (v5)
      {
        v27 = a2;
        v28 = &v3[3 * v5];
        do
        {
          v29 = *v3;
          v30 = *(v3 + 4);
          v31 = v3[1];
          *v3 = 0;
          v3[1] = 0;
          *(v3 + 4) = 0;
          v32 = *v26;
          *v26 = v29;
          v33 = v26[2];
          LODWORD(v29) = v26[3];
          *(v26 + 1) = v31;
          v26[4] = v30;
          if (v29 && v33)
          {
            v34 = v32;
            do
            {
              v35 = *v34;
              if (*v34 != -8 && v35 != 0)
              {
                llvm::deallocate_buffer(v35, (*v35 + 9));
              }

              ++v34;
              --v33;
            }

            while (v33);
          }

          free(v32);
          v3 += 3;
          v26 += 6;
        }

        while (v3 != v28);
        v26 = *a1;
        a2 = v27;
        v39 = *v27;
        v40 = *(v27 + 8);
        if (v5 == v40)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v5 = 0;
        v39 = *a2;
        LODWORD(v40) = *(a2 + 8);
        if (!v40)
        {
LABEL_79:
          *(a1 + 8) = v4;
          v58 = a2;
          v59 = *(a2 + 8);
          if (v59)
          {
            v60 = &v39[3 * v59];
            do
            {
              v61 = v60;
              v60 -= 3;
              if (*(v61 - 3))
              {
                v62 = *(v61 - 4);
                if (v62)
                {
                  v63 = 0;
                  do
                  {
                    v64 = *(*v60 + v63);
                    if (v64 != -8 && v64 != 0)
                    {
                      llvm::deallocate_buffer(v64, (*v64 + 9));
                    }

                    v63 += 8;
                  }

                  while (8 * v62 != v63);
                }
              }

              free(*v60);
            }

            while (v60 != v39);
          }

          *(v58 + 8) = 0;
          return a1;
        }
      }
    }

    else
    {
      v6 = a2;
      if (v5)
      {
        v7 = *a1;
        v8 = (*a1 + 24 * v5);
        do
        {
          v9 = v8;
          v8 -= 3;
          if (*(v9 - 3))
          {
            v10 = *(v9 - 4);
            if (v10)
            {
              v11 = 0;
              do
              {
                v12 = *(*v8 + v11);
                if (v12 != -8 && v12 != 0)
                {
                  llvm::deallocate_buffer(v12, (*v12 + 9));
                }

                v11 += 8;
              }

              while (8 * v10 != v11);
            }
          }

          free(*v8);
        }

        while (v8 != v7);
      }

      *(a1 + 8) = 0;
      v67 = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v4, 24, &v67);
      v26 = v37;
      llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::moveElementsForGrow(a1, v37);
      v38 = v67;
      if (*a1 != a1 + 16)
      {
        free(*a1);
      }

      v5 = 0;
      *a1 = v26;
      *(a1 + 12) = v38;
      a2 = v6;
      v39 = *v6;
      LODWORD(v40) = *(v6 + 8);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    v55 = &v39[3 * v40];
    v56 = &v26[6 * v5];
    v57 = &v39[3 * v5];
    do
    {
      *v56 = *v57;
      *(v56 + 2) = *(v57 + 1);
      *v57 = 0;
      v57[1] = 0;
      *(v57 + 4) = 0;
      v56 += 6;
      v57 += 3;
    }

    while (v57 != v55);
    v39 = *a2;
    goto LABEL_79;
  }

  v14 = *a1;
  v15 = a2;
  if (v4)
  {
    v16 = &v3[3 * v4];
    do
    {
      v17 = *v3;
      v18 = *(v3 + 4);
      v19 = v3[1];
      *v3 = 0;
      v3[1] = 0;
      *(v3 + 4) = 0;
      v20 = *v14;
      *v14 = v17;
      v21 = *(v14 + 2);
      LODWORD(v17) = *(v14 + 3);
      v14[1] = v19;
      *(v14 + 4) = v18;
      if (v17 && v21)
      {
        v22 = v20;
        do
        {
          v23 = *v22;
          if (*v22 != -8 && v23 != 0)
          {
            llvm::deallocate_buffer(v23, (*v23 + 9));
          }

          ++v22;
          --v21;
        }

        while (v21);
      }

      free(v20);
      v3 += 3;
      v14 += 3;
    }

    while (v3 != v16);
    v25 = *a1;
    LODWORD(v5) = *(a1 + 8);
  }

  else
  {
    v25 = *a1;
  }

  for (i = &v25[3 * v5]; i != v14; free(*i))
  {
    v42 = i;
    i -= 3;
    if (*(v42 - 3))
    {
      v43 = *(v42 - 4);
      if (v43)
      {
        v44 = 0;
        do
        {
          v45 = *(*i + v44);
          if (v45 != -8 && v45 != 0)
          {
            llvm::deallocate_buffer(v45, (*v45 + 9));
          }

          v44 += 8;
        }

        while (8 * v43 != v44);
      }
    }
  }

  *(a1 + 8) = v4;
  v47 = *(v15 + 8);
  if (v47)
  {
    v48 = *v15;
    v49 = (*v15 + 24 * v47);
    do
    {
      v50 = v49;
      v49 -= 3;
      if (*(v50 - 3))
      {
        v51 = *(v50 - 4);
        if (v51)
        {
          v52 = 0;
          do
          {
            v53 = *(*v49 + v52);
            if (v53 != -8 && v53 != 0)
            {
              llvm::deallocate_buffer(v53, (*v53 + 9));
            }

            v52 += 8;
          }

          while (8 * v51 != v52);
        }
      }

      free(*v49);
    }

    while (v49 != v48);
  }

  *(v15 + 8) = 0;
  return a1;
}

double llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::assignRemote(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = &v4[3 * v5];
    do
    {
      v7 = v6;
      v6 -= 3;
      if (*(v7 - 3))
      {
        v8 = *(v7 - 4);
        if (v8)
        {
          v9 = 0;
          do
          {
            v10 = *(*v6 + v9);
            if (v10 != -8 && v10 != 0)
            {
              llvm::deallocate_buffer(v10, (*v10 + 9));
            }

            v9 += 8;
          }

          while (8 * v8 != v9);
        }
      }

      free(*v6);
    }

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::grow(uint64_t a1, unint64_t a2)
{
  v7 = 0;
  v3 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v7);
  v5 = v4;
  llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::moveElementsForGrow(a1, v4);
  v6 = v7;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 12) = v6;
}

void llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 24 * v2;
    do
    {
      *a2 = *v3;
      *(a2 + 8) = *(v3 + 1);
      *v3 = 0;
      v3[1] = 0;
      *(v3 + 4) = 0;
      a2 += 24;
      v3 += 3;
    }

    while (v3 != v4);
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *a1;
      v7 = (*a1 + 24 * v5);
      do
      {
        v8 = v7;
        v7 -= 3;
        if (*(v8 - 3))
        {
          v9 = *(v8 - 4);
          if (v9)
          {
            v10 = 0;
            do
            {
              v11 = *(*v7 + v10);
              if (v11 != -8 && v11 != 0)
              {
                llvm::deallocate_buffer(v11, (*v11 + 9));
              }

              v10 += 8;
            }

            while (8 * v9 != v10);
          }
        }

        free(*v7);
      }

      while (v7 != v6);
    }
  }
}

uint64_t anonymous namespace::OperationParser::parseGenericOperation(_anonymous_namespace_::OperationParser *this)
{
  v81 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
  v49 = EncodedSourceLocation;
  mlir::Token::getStringValue((*(this + 1) + 56), &v48);
  size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v48.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *&v51 = "empty operation name is invalid";
    v53 = 259;
    mlir::detail::Parser::emitError(this, &v51, v68);
    if (v68[0])
    {
      mlir::InFlightDiagnostic::report(v68);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v13 = v73;
      if (v73)
      {
        v14 = v74;
        v15 = v73;
        if (v74 != v73)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = v73;
        }

        v74 = v13;
        operator delete(v15);
      }

      v16 = v71;
      if (v71)
      {
        v17 = v72;
        v18 = v71;
        if (v72 != v71)
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
          v18 = v71;
        }

        v72 = v16;
        operator delete(v18);
      }

      v30 = v69;
      if (v69 != &v70)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (std::string::find(&v48, 0, 0) == -1)
  {
    v21 = *(this + 1);
    *(v21 + 80) = *(v21 + 56);
    *(v21 + 96) = *(v21 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v51);
    v22 = *(this + 1);
    *(v22 + 56) = v51;
    *(v22 + 72) = v52;
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v48;
    }

    else
    {
      v23 = v48.__r_.__value_.__r.__words[0];
    }

    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v48.__r_.__value_.__l.__size_;
    }

    mlir::OperationState::OperationState(&v51, EncodedSourceLocation, v23, v24);
    if (*(*(&v51 + 1) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v25 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
      v26 = &v48;
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v48.__r_.__value_.__l.__size_;
      }

      v77 = v26;
      v78 = v25;
      LOBYTE(v46) = 46;
      v27 = llvm::StringRef::find(&v77, &v46, 1uLL, 0);
      if (v27 == -1)
      {
        v28 = v77;
        v29 = v78;
      }

      else
      {
        v28 = v77;
        if (v27 >= v78)
        {
          v29 = v78;
        }

        else
        {
          v29 = v27;
        }
      }

      if (mlir::MLIRContext::getLoadedDialect(***(this + 1), v28, v29) || mlir::MLIRContext::getOrLoadDialect(***(this + 1), v28, v29))
      {
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v48;
        }

        else
        {
          v33 = v48.__r_.__value_.__r.__words[0];
        }

        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = v48.__r_.__value_.__l.__size_;
        }

        mlir::OperationName::OperationName(&v77, v33, v34, ***(this + 1));
        *(&v51 + 1) = v77;
      }

      else if ((mlir::MLIRContext::allowsUnregisteredDialects(***(this + 1)) & 1) == 0)
      {
        v77 = "operation being parsed with an unregistered dialect. If this is intended, please use -allow-unregistered-dialect with the MLIR tool used";
        v80 = 259;
        mlir::detail::Parser::emitError(this, &v77, v50);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v50);
        goto LABEL_86;
      }
    }

    v35 = *(*(this + 1) + 152);
    if (v35)
    {
      mlir::AsmParserState::startOperationDefinition(v35, (&v51 + 8));
    }

    LOBYTE(v77) = 0;
    LOBYTE(v79[0]) = 0;
    LOBYTE(v46) = 0;
    v47 = 0;
    v45[0] = 0;
    v45[16] = 0;
    v44[0] = 0;
    v44[16] = 0;
    v31 = 0;
    {
LABEL_87:
      v77 = v79;
      v78 = 0x400000000;
      v38 = v56;
      if (v56 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v79, v56, 8);
        v38 = v56;
      }

      if (v38)
      {
        v39 = v55;
        v40 = &v55[v38];
        do
        {
          v41 = *v39;
          if (*v39)
          {
            for (i = *(v41 + 8); i != v41; i = *(i + 8))
            {
              if (i)
              {
                v43 = (i - 8);
              }

              else
              {
                v43 = 0;
              }

              mlir::Block::dropAllDefinedValueUses(v43, v36);
            }
          }

          ++v39;
        }

        while (v39 != v40);
      }

      if (v77 != v79)
      {
        free(v77);
      }

      mlir::OperationState::~OperationState(&v51);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_57;
      }

      return v31;
    }

LABEL_86:
    v31 = 0;
    goto LABEL_87;
  }

  *&v51 = "null character not allowed in operation name";
  v53 = 259;
  mlir::detail::Parser::emitError(this, &v51, v59);
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

    v5 = __p;
    if (__p)
    {
      v6 = v65;
      v7 = __p;
      if (v65 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v65 = v5;
      operator delete(v7);
    }

    v8 = v62;
    if (v62)
    {
      v9 = v63;
      v10 = v62;
      if (v63 != v62)
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
        v10 = v62;
      }

      v63 = v8;
      operator delete(v10);
    }

    v30 = v60;
    if (v60 != &v61)
    {
LABEL_55:
      free(v30);
    }
  }

LABEL_56:
  v31 = 0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_57:
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  return v31;
}

uint64_t anonymous namespace::OperationParser::addDefinition(int32x2_t *a1, uint64_t a2, uint64_t *a3)
{
  v94 = *MEMORY[0x1E69E9840];
  v6 = a2 + 8;
  v9 = v7;
  v10 = *(v7 + 8);
  v12 = (a2 + 24);
  v11 = *(a2 + 24);
  v13 = v11 + 1;
  if (v10 > v11 || v10 == v13)
  {
    v15 = *(*v7 + 16 * *(a2 + 24));
    v82 = v15;
    if (!v15)
    {
LABEL_49:
      v49 = *a2;
      v50 = (*v9 + 16 * *(a2 + 24));
      *v50 = a3;
      v50[1] = v49;
      v51 = *(a2 + 8);
      v52 = *(a2 + 16);
      v53 = *&a1[2] + 88 * a1[3].u32[0];
      v54 = (*(v53 - 64) + 24 * *(v53 - 56) - 24);
      v55 = llvm::StringMapImpl::hash(v51, v52, v8);
      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(v54, v51, v52, v55);
      return 1;
    }
  }

  else
  {
    if (v10 <= v13)
    {
      if (*(v7 + 12) < v13)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v7 + 16, v13, 16);
        v10 = *(v9 + 8);
      }

      if (v10 != v13)
      {
        bzero((*v9 + 16 * v10), 16 * (v13 - v10));
      }
    }

    *(v9 + 8) = v13;
    v15 = *(*v9 + 16 * *v12);
    v82 = v15;
    if (!v15)
    {
      goto LABEL_49;
    }
  }

  v16 = a1[44].i32[0];
  if (v16)
  {
    v17 = a1[42];
    v18 = 0x9DDFEA08EB382D69 * ((8 * v15 - 0xAE502812AA7333) ^ HIDWORD(v15));
    v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v15) ^ (v18 >> 47) ^ v18);
    v20 = v16 - 1;
    v21 = v20 & (-348639895 * ((v19 >> 47) ^ v19));
    v22 = *(*&v17 + 16 * v21);
    if (v22 == v15)
    {
LABEL_9:
      if ((a3[1] ^ *(v15 + 8)) < 8)
      {
        while (1)
        {
          v34 = *v15;
          if (!*v15)
          {
            break;
          }

          v35 = v34[1];
          if (v35)
          {
            v36 = *v34;
            *v35 = *v34;
            if (v36)
            {
              *(v36 + 8) = v35;
            }
          }

          v34[3] = a3;
          v34[1] = a3;
          v37 = *a3;
          *v34 = *a3;
          if (v37)
          {
            *(v37 + 8) = v34;
          }

          *a3 = v34;
        }

        DefiningOp = mlir::Value::getDefiningOp(&v82);
        mlir::Operation::destroy(DefiningOp);
        v41 = a1[44].i32[0];
        if (v41)
        {
          v42 = a1[42];
          v43 = 0x9DDFEA08EB382D69 * ((8 * v82 - 0xAE502812AA7333) ^ HIDWORD(v82));
          v44 = 0x9DDFEA08EB382D69 * (HIDWORD(v82) ^ (v43 >> 47) ^ v43);
          LODWORD(v43) = -348639895 * ((v44 >> 47) ^ v44);
          v45 = v41 - 1;
          v46 = v43 & (v41 - 1);
          v47 = *(*&v42 + 16 * v46);
          if (v82 == v47)
          {
LABEL_46:
            *(*&v42 + 16 * v46) = -8192;
            a1[43] = vadd_s32(a1[43], 0x1FFFFFFFFLL);
          }

          else
          {
            v75 = 1;
            while (v47 != -4096)
            {
              v76 = v46 + v75++;
              v46 = v76 & v45;
              v47 = *(*&v42 + 16 * v46);
              if (v82 == v47)
              {
                goto LABEL_46;
              }
            }
          }
        }

        v48 = *(*&a1[1] + 152);
        if (v48)
        {
          mlir::AsmParserState::refineDefinition(v48, v82, a3);
        }

        goto LABEL_49;
      }

      v23 = *a2;
      v81 = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v23);
      mlir::emitError(EncodedSourceLocation, v80, &v84);
      if (*(*&a1[1] + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v84);
      }

      v83[0] = a3[1] & 0xFFFFFFFFFFFFFFF8;
      if (v84)
      {
        mlir::Diagnostic::append<char const(&)[26],llvm::StringRef &,char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(v85, "definition of SSA value '", v6, "#", (a2 + 24), "' has type ", v83);
      }

      v25 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v9 + 16 * *v12 + 8));
      v26 = mlir::Diagnostic::attachNote(v85, v25, 1);
      v79 = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::Diagnostic::append<char const(&)[5],mlir::Type>(v26, "previously used here with type ", &v79);
      Enum = getEnumTag for MPSGraphDelegateKernelError();
      if (v84)
      {
        mlir::InFlightDiagnostic::report(&v84);
      }

      if (v93 == 1)
      {
        if (v92 != &v93)
        {
          free(v92);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v91;
          v30 = __p;
          if (v91 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v91 = v28;
          operator delete(v30);
        }

        v31 = v88;
        if (!v88)
        {
          goto LABEL_78;
        }

        v32 = v89;
        v33 = v88;
        if (v89 == v88)
        {
LABEL_77:
          v89 = v31;
          operator delete(v33);
LABEL_78:
          if (v86 != &v87)
          {
            free(v86);
          }

          return Enum;
        }

        do
        {
          v39 = *--v32;
          v38 = v39;
          *v32 = 0;
          if (v39)
          {
            operator delete[](v38);
          }
        }

        while (v32 != v31);
LABEL_76:
        v33 = v88;
        goto LABEL_77;
      }

      return Enum;
    }

    v57 = 1;
    while (v22 != -4096)
    {
      v58 = v21 + v57++;
      v21 = v58 & v20;
      v22 = *(*&v17 + 16 * v21);
      if (v22 == v15)
      {
        goto LABEL_9;
      }
    }
  }

  v59 = *a2;
  v81 = 257;
  v60 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v59);
  mlir::emitError(v60, v80, &v84);
  if (*(*&a1[1] + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v84);
  }

  if (v84)
  {
    mlir::Diagnostic::append<char const(&)[28],llvm::StringRef &,char const(&)[2]>(v85, "redefinition of SSA value '", v6, "'");
  }

  v61 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v9 + 16 * *v12 + 8));
  v62 = mlir::Diagnostic::attachNote(v85, v61, 1);
  v63 = *(v62 + 16);
  LODWORD(v83[0]) = 3;
  v83[1] = "previously defined here";
  v83[2] = 23;
  v64 = *(v62 + 24);
  v65 = v83;
  if (v64 >= *(v62 + 28))
  {
    if (v63 <= v83 && v63 + 24 * v64 > v83)
    {
      v77 = v83 - v63;
      v78 = v62;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v62 + 16, v62 + 32, v64 + 1, 24);
      v62 = v78;
      v63 = *(v78 + 16);
      v65 = &v77[v63];
    }

    else
    {
      v74 = v62;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v62 + 16, v62 + 32, v64 + 1, 24);
      v62 = v74;
      v63 = *(v74 + 16);
      v65 = v83;
    }
  }

  v66 = v63 + 24 * *(v62 + 24);
  v67 = *v65;
  *(v66 + 16) = v65[2];
  *v66 = v67;
  ++*(v62 + 24);
  Enum = getEnumTag for MPSGraphDelegateKernelError();
  if (v84)
  {
    mlir::InFlightDiagnostic::report(&v84);
  }

  if (v93 == 1)
  {
    if (v92 != &v93)
    {
      free(v92);
    }

    v68 = __p;
    if (__p)
    {
      v69 = v91;
      v70 = __p;
      if (v91 != __p)
      {
        do
        {
          v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
        }

        while (v69 != v68);
        v70 = __p;
      }

      v91 = v68;
      operator delete(v70);
    }

    v31 = v88;
    if (!v88)
    {
      goto LABEL_78;
    }

    v71 = v89;
    v33 = v88;
    if (v89 == v88)
    {
      goto LABEL_77;
    }

    do
    {
      v73 = *--v71;
      v72 = v73;
      *v71 = 0;
      if (v73)
      {
        operator delete[](v72);
      }
    }

    while (v71 != v31);
    goto LABEL_76;
  }

  return Enum;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOperation(void)::$_0>(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(*a1 + 8);
  *v35 = *(v3 + 56);
  *&v35[16] = *(v3 + 72);
  *&v36 = "expected valid ssa identifier";
  v39 = 259;
  if ((mlir::detail::Parser::parseToken(v2, 6, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = 1;
  v34 = 1;
  v5 = *(v2 + 8);
  if (*(v5 + 56) != 15)
  {
    goto LABEL_7;
  }

  *(v5 + 80) = *(v5 + 56);
  *(v5 + 96) = *(v5 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v36);
  v6 = *(v2 + 8);
  *(v6 + 56) = v36;
  *(v6 + 72) = v37;
  v7 = *(v2 + 8);
  if (*(v7 + 56) == 10)
  {
    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(v7 + 64), *(v7 + 72));
    if (v9)
    {
      v4 = UInt64IntegerValue;
      if (UInt64IntegerValue)
      {
        v10 = *(v2 + 8);
        *(v10 + 80) = *(v10 + 56);
        *(v10 + 96) = *(v10 + 72);
        mlir::Lexer::lexToken((*(v2 + 8) + 8), &v36);
        v11 = *(v2 + 8);
        *(v11 + 56) = v36;
        *(v11 + 72) = v37;
        v34 = v4;
LABEL_7:
        v12 = *(a1 + 8);
        v36 = *&v35[8];
        Loc = mlir::Token::getLoc(v35);
        v32[0] = Loc;
        v14 = *(v12 + 8);
        if (v14 >= *(v12 + 12))
        {
          llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(v12, &v36, &v34, v32);
          v4 = v34;
        }

        else
        {
          v15 = *v12 + 32 * v14;
          *v15 = v36;
          *(v15 + 16) = v4;
          *(v15 + 24) = Loc;
          ++*(v12 + 8);
        }

        **(a1 + 16) += v4;
        return 1;
      }
    }

    v32[0] = "expected named operation to have at least 1 result";
    v33 = 259;
    mlir::detail::Parser::emitError(v2, v32, &v36);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    v17 = result;
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
      result = v17;
    }

    if (v46[0] == 1)
    {
      if (v45 != v46)
      {
        free(v45);
        result = v17;
      }

      v26 = __p;
      if (__p)
      {
        v27 = v44;
        v28 = __p;
        if (v44 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v44 = v26;
        operator delete(v28);
        result = v17;
      }

      v21 = v41;
      if (!v41)
      {
        goto LABEL_46;
      }

      v29 = v42;
      v23 = v41;
      if (v42 == v41)
      {
LABEL_45:
        v42 = v21;
        operator delete(v23);
        result = v17;
LABEL_46:
        if (v38 != &v40)
        {
          free(v38);
          return v17;
        }

        return result;
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

      while (v29 != v21);
LABEL_44:
      v23 = v41;
      goto LABEL_45;
    }
  }

  else
  {
    v32[0] = "expected integer number of results";
    v33 = 259;
    mlir::detail::Parser::emitWrongTokenError(v2, v32, &v36);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    v17 = result;
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
      result = v17;
    }

    if (v46[0] == 1)
    {
      if (v45 != v46)
      {
        free(v45);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v44;
        v20 = __p;
        if (v44 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v44 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v41;
      if (!v41)
      {
        goto LABEL_46;
      }

      v22 = v42;
      v23 = v41;
      if (v42 == v41)
      {
        goto LABEL_45;
      }

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
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(uint64_t a1, __int128 *a2, void *a3, uint64_t *a4)
{
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = &v14;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= &v14 && v5 + 32 * v4 > &v14)
    {
      v12 = &v14 - v5;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v4 + 1, 32);
      a1 = v13;
      v5 = *v13;
      v6 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v4 + 1, 32);
      a1 = v11;
      v5 = *v11;
      v6 = &v14;
    }
  }

  v7 = (v5 + 32 * *(a1 + 8));
  v8 = *(v6 + 1);
  *v7 = *v6;
  v7[1] = v8;
  v9 = (*(a1 + 8) + 1);
  *(a1 + 8) = v9;
  return *a1 + 32 * v9 - 32;
}

unint64_t anonymous namespace::OperationParser::parseCustomOperationName(_anonymous_namespace_::OperationParser *this)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v38 = v3;
  v39 = v4;
  if (v4)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v34);
    v5 = *(this + 1);
    *(v5 + 56) = v34;
    *(v5 + 72) = v35;
    v6 = mlir::RegisteredOperationName::lookup(v3, v4, ***(this + 1));
    if (v7)
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF00;
      return v8 | v6;
    }

    LOBYTE(v34) = 46;
    v17 = llvm::StringRef::find(&v38, &v34, 1uLL, 0);
    if (v17 == -1)
    {
      v18 = v38;
      v19 = v39;
      v20 = v39;
      v21 = *(this + 1);
      if (*(v21 + 56) != 2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = v38;
      v19 = v39;
      if (v17 >= v39)
      {
        v20 = v39;
      }

      else
      {
        v20 = v17;
      }

      memset(&v33, 0, sizeof(v33));
      if (v39 > v17 + 1)
      {
LABEL_39:
        mlir::MLIRContext::getOrLoadDialect(***(this + 1), v18, v20);
        mlir::OperationName::OperationName(&v34, v38, v39, ***(this + 1));
        LOBYTE(v6) = v34;
        v8 = v34 & 0xFFFFFFFFFFFFFF00;
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          v28 = v34;
          operator delete(v33.__r_.__value_.__l.__data_);
          LOBYTE(v6) = v28;
        }

        return v8 | v6;
      }

      v21 = *(this + 1);
      if (*(v21 + 56) != 2)
      {
LABEL_34:
        v24 = *(v21 + 168) + 16 * *(v21 + 176);
        v25 = *(v24 - 16);
        v20 = *(v24 - 8);
        v31 = 773;
        v30[0] = v25;
        v30[1] = v20;
        v30[2] = ".";
        *&v34 = v30;
        v35 = v18;
        v36 = v19;
        v37 = 1282;
        llvm::Twine::str(&v34, &v32);
        v33 = v32;
        size = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
        v27 = &v33;
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v27 = v32.__r_.__value_.__r.__words[0];
        }

        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v32.__r_.__value_.__l.__size_;
        }

        v38 = v27;
        v39 = size;
        v18 = v25;
        goto LABEL_39;
      }
    }

    if (v18[v19 - 1] != 46)
    {
      goto LABEL_34;
    }

    if (v20)
    {
      v22 = v18;
      v23 = memchr(v18, 46, v20);
      if (!v23 || v23 - v22 == -1)
      {
        (*(**(v21 + 160) + 24))(*(v21 + 160), v22, v20);
      }
    }

    v8 = 0;
    LOBYTE(v6) = 0;
  }

  else
  {
    *&v34 = "empty operation name is invalid";
    v37 = 259;
    mlir::detail::Parser::emitError(this, &v34, v40);
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v46;
        v11 = __p;
        if (v46 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v46 = v9;
        operator delete(v11);
      }

      v12 = v43;
      if (v43)
      {
        v13 = v44;
        v14 = v43;
        if (v44 != v43)
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
          v14 = v43;
        }

        v44 = v12;
        operator delete(v14);
      }

      if (v41 != &v42)
      {
        free(v41);
      }
    }

    LOBYTE(v6) = 0;
    v8 = 0;
  }

  return v8 | v6;
}

uint64_t anonymous namespace::OperationParser::parseTrailingLocationSpecifier(_anonymous_namespace_::OperationParser *a1, unint64_t a2)
{
  v2 = *(a1 + 1);
  if (*(v2 + 56) != 64)
  {
    return 1;
  }

  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v12);
  v5 = *(a1 + 1);
  *(v5 + 56) = v12;
  *(v5 + 72) = v13;
  *&v12 = "expected '(' in location";
  v14 = 259;
  if (mlir::detail::Parser::parseToken(a1, 21, &v12))
  {
    v6 = *(*(a1 + 1) + 56);
    v11.var0 = 0;
    if (v6 == 5)
    {
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(a1, &v11) & 1) == 0)
    {
      return 0;
    }

    *&v12 = "expected ')' in location";
    v14 = 259;
    if (mlir::detail::Parser::parseToken(a1, 28, &v12))
    {
      v7 = (a2 >> 2) & 1;
      if ((a2 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        LODWORD(v7) = 1;
      }

      v8 = v7 == 0;
      v9 = 24;
      if (!v8)
      {
        v9 = 32;
      }

      *((a2 & 0xFFFFFFFFFFFFFFF8) + v9) = v11;
      return 1;
    }
  }

  return 0;
}

const char *llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsIsolatedFromAbove<Empty>]";
  v6 = 91;
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

uint64_t llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::unique_function<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>>(void *a1)
{
  v1 = a1[3];
  if ((v1 & 2) == 0)
  {
    a1 = *a1;
  }

  return (*(v1 & 0xFFFFFFFFFFFFFFF8))(a1);
}

void anonymous namespace::CustomOpAsmParser::~CustomOpAsmParser(_anonymous_namespace_::CustomOpAsmParser *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

void anonymous namespace::CustomOpAsmParser::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v13 = 1283;
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v12[0] = "custom op '";
  v12[2] = v5;
  v12[3] = v6;
  *&v14 = v12;
  *&v15 = "' ";
  LOWORD(v16) = 770;
  v7 = *(a3 + 32);
  if (v7 == 1)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
  }

  else if (*(a3 + 32))
  {
    v8 = *a3;
    v9 = a3[1];
    if (*(a3 + 33) != 1)
    {
      LOBYTE(v7) = 2;
      v8 = a3;
    }

    *&v17 = &v14;
    *&v18 = v8;
    *(&v18 + 1) = v9;
    LOBYTE(v19) = 2;
    BYTE1(v19) = v7;
  }

  else
  {
    LOWORD(v19) = 256;
  }

  *(a1 + 24) = 1;
  v10 = *(a1 + 16);
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v10 + 8) + 8, a2);
  mlir::emitError(EncodedSourceLocation, &v17, a4);
  if (*(*(v10 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a4);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseArrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalArrow(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLBrace(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalRBrace(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColon(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalColon(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseComma(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalComma(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseEqual(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalEqual(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLess(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLess(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseGreater(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalGreater(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseQuestion(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalQuestion(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parsePlus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalPlus(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseMinus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalMinus(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseStar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalStar(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseVerticalBar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalVerticalBar(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalString(uint64_t a1, uint64_t a2)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseBase64Bytes(void *a1, uint64_t a2)
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