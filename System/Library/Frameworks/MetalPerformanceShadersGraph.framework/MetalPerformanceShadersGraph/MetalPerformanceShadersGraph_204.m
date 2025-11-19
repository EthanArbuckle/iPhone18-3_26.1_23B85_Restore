void mlir::FieldParser<llvm::SmallVector<mlir::StringAttr,6u>,llvm::SmallVector<mlir::StringAttr,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x1E69E9840];
  __src = v10;
  v9 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v9;
  v4 = 1;
  if (!v9 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v10)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v10)
  {
    v7 = v9;
    if (v9 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v9, 8), (v7 = v9) != 0))
    {
      memcpy(*a2, __src, 8 * v7);
    }

    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v9);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v10;
    HIDWORD(v9) = 0;
  }

  LODWORD(v9) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v10)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::print(mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *v5 = 40;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v8 = *(v6 + 8);
  (*(*a2 + 40))(a2, *v8);
  if (v7 != 1)
  {
    v11 = v8 + 1;
    v12 = 8 * v7 - 8;
    do
    {
      v14 = (*(*a2 + 16))(a2);
      v15 = v14[4];
      if (v14[3] - v15 <= 1uLL)
      {
        llvm::raw_ostream::write(v14, ", ", 2uLL);
      }

      else
      {
        *v15 = 8236;
        v14[4] += 2;
      }

      v13 = *v11++;
      (*(*a2 + 40))(a2, v13);
      v12 -= 8;
    }

    while (v12);
  }

LABEL_6:
  result = (*(*a2 + 16))(a2);
  v10 = result[4];
  if (result[3] == v10)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v10 = 41;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id;
  v11[1] = a1;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28ODIELocationFrameAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21ODIELocationFrameAttrEJNS1_10StringAttrESF_NSt3__18optionalINS3_20ODIXSerializableAttrEEEEEENSG_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v17[1] = v11;
  v13 = a2;
  v14 = a3;
  v15 = *a4;
  v16 = *(a4 + 2);
  memset(v19, 0, sizeof(v19));
  v20 = 0xFF51AFD7ED558CCDLL;
  v18 = ((a2 >> 4) ^ (a2 >> 9));
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(&v18, 0, v19, &v19[3] + 8, &v14, &v15);
  v12 = &v13;
  v18 = &v13;
  *&v19[0] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v18);
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::parse(mlir::AsmParser *a1)
{
  v45[2] = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 280))(a1))
  {
    v32 = 257;
    if ((*(*a1 + 400))(a1, "method", 6, &v29) & 1) != 0 && ((*(*a1 + 136))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7uLL);
      *&v29 = 0;
      v4 = mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v29, 0);
      v5 = *a1;
      if (!v4)
      {
        v14 = (*(v5 + 40))(a1);
        v32 = 259;
        (*(*a1 + 24))(v36, a1, v14, &v29);
        if (v36[0])
        {
          mlir::InFlightDiagnostic::report(v36);
        }

        if (v44 == 1)
        {
          if (v43 != &v44)
          {
            free(v43);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v42;
            v17 = __p;
            if (v42 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v42 = v15;
            operator delete(v17);
          }

          v18 = v39;
          if (v39)
          {
            v19 = v40;
            v20 = v39;
            if (v40 != v39)
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
              v20 = v39;
            }

            v40 = v18;
            operator delete(v20);
          }

          if (v37 != &v38)
          {
            free(v37);
          }
        }

        return 0;
      }

      v6 = v29;
      if ((*(v5 + 120))(a1))
      {
        v32 = 257;
        if ((*(*a1 + 400))(a1, "codeSnippet", 11, &v29) & 1) != 0 && ((*(*a1 + 136))(a1))
        {
          v7 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
          v8 = *a1;
          if (v9)
          {
            v10 = v7;
            if (((*(v8 + 120))(a1) & 1) == 0)
            {
              return 0;
            }

            v32 = 257;
            if (((*(*a1 + 400))(a1, "frontendAttribute", 17, &v29) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0)
            {
              return 0;
            }

            v29 = 0uLL;
            v11 = (*(*a1 + 456))(a1, &v29, 0);
            if ((v11 & 0x100) != 0)
            {
              if (v11)
              {
                v12 = v29;
                v34[0] = *(&v29 + 1);
                *(v34 + 7) = *(&v29 + 1);
                v13 = 1;
                v1 = 1;
              }

              else
              {
                v13 = 0;
                v12 = 0;
              }
            }

            else
            {
              v1 = 0;
              v12 = 0;
              v13 = 1;
            }

            v45[0] = v34[0];
            *(v45 + 7) = *(v34 + 7);
            v26 = *a1;
            if (v13)
            {
              if ((*(v26 + 296))(a1))
              {
                v27 = mlir::AsmParser::getContext(a1);
                LOBYTE(v29) = v12;
                *(&v29 + 1) = v45[0];
                *(&v29 + 1) = *(v45 + 7);
                v30 = v1;
                v31[0] = v34[0];
                *(v31 + 3) = *(v34 + 3);
                return mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(v27, v6, v10, &v29);
              }

              return 0;
            }

            v28 = (*(v26 + 40))(a1);
            v32 = 259;
            (*(*a1 + 24))(v33, a1, v28, &v29);
            v25 = v33;
          }

          else
          {
            v24 = (*(v8 + 40))(a1);
            v32 = 259;
            (*(*a1 + 24))(v35, a1, v24, &v29);
            v25 = v35;
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        }
      }
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::print(mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 5)
  {
    *(v7 + 4) = 25711;
    *v7 = 1752458605;
    v6[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "method", 6uLL);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, "=", 1uLL);
  }

  else
  {
    *v11 = 61;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++v14[4];
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if ((v18[3] - v19) > 0xA)
  {
    *(v19 + 7) = 1952804976;
    *v19 = *"codeSnippet";
    v18[4] += 11;
  }

  else
  {
    llvm::raw_ostream::write(v18, "codeSnippet", 0xBuLL);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, "=", 1uLL);
  }

  else
  {
    *v23 = 61;
    ++v22[4];
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++v26[4];
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if ((v30[3] - v31) > 0x10)
  {
    *(v31 + 16) = 101;
    *v31 = *"frontendAttribute";
    v30[4] += 17;
  }

  else
  {
    llvm::raw_ostream::write(v30, "frontendAttribute", 0x11uLL);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, "=", 1uLL);
    if (!*(*this + 40))
    {
      goto LABEL_56;
    }
  }

  else
  {
    *v35 = 61;
    ++v34[4];
    if (!*(*this + 40))
    {
      goto LABEL_56;
    }
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this;
  v39 = *(*this + 24);
  v40 = *(v38 + 40);
  v41 = (*(*a2 + 16))(a2);
  if (v40)
  {
    v44 = v39;
    mlir::Attribute::print(&v44, v41, 0);
  }

  else
  {
    llvm::operator<<(v41);
  }

LABEL_56:
  result = (*(*a2 + 16))(a2);
  v43 = result[4];
  if (result[3] == v43)
  {
    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  *v43 = 41;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ExternAttr::parse(mlir::AsmParser *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v24) = 0;
  v27 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  __p = 0;
  v22 = 0uLL;
  if ((mlir::AsmParser::parseString(a1, &__p) & 1) == 0)
  {
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    v11 = (*(*a1 + 40))(a1);
    v23 = 259;
    (*(*a1 + 24))(v31, a1, v11, &__p);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v12 = v36;
      if (v36)
      {
        v13 = v37;
        v14 = v36;
        if (v37 != v36)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = v36;
        }

        v37 = v12;
        operator delete(v14);
      }

      v15 = v34;
      if (v34)
      {
        v16 = v35;
        v17 = v34;
        if (v35 != v34)
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
          v17 = v34;
        }

        v35 = v15;
        operator delete(v17);
      }

      if (v32 != &v33)
      {
        free(v32);
      }
    }

LABEL_34:
    ParametricStorageTypeImpl = 0;
    if (v27 != 1)
    {
      return ParametricStorageTypeImpl;
    }

    goto LABEL_35;
  }

  *(&v40 + 7) = *(&v22 + 7);
  *&v40 = v22;
  v24 = __p;
  *v25 = v22;
  *&v25[7] = *(&v40 + 7);
  v26 = HIBYTE(v22);
  v27 = 1;
  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  Context = mlir::AsmParser::getContext(a1);
  v3 = Context;
  if (v26 >= 0)
  {
    v4 = &v24;
  }

  else
  {
    v4 = v24;
  }

  if (v26 >= 0)
  {
    v5 = v26;
  }

  else
  {
    v5 = *v25;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v28[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id;
  v28[1] = v3;
  __p = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17ExternAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10ExternAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  *&v22 = v28;
  *&v40 = v4;
  *(&v40 + 1) = v5;
  v7 = llvm::hash_value(v4, v5);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v29[0] = &v40;
  v29[1] = &__p;
  v30 = &v40;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
  if (v27 == 1)
  {
LABEL_35:
    if (v26 < 0)
    {
      operator delete(v24);
    }
  }

  return ParametricStorageTypeImpl;
}

void *mlir::ODIE::Compiler::CoreML::ExternAttr::print(mlir::ODIE::Compiler::CoreML::ExternAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::get(mlir::MLIRContext *a1, void *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<char const>(a2, a2 + 4 * a3);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::parse(mlir::AsmParser *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v44) = 0;
  v47 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  mlir::FieldParser<llvm::SmallVector<int,12u>,llvm::SmallVector<int,12u>>::parse(a1, &v40);
  if (v47 == v43)
  {
    if (v47)
    {
      v2 = v40;
      if (v40 != v42)
      {
        if (v44 != v46)
        {
          free(v44);
          v2 = v40;
        }

        v44 = v2;
        v45 = v41;
        v40 = v42;
        v41 = 0;
        if (v43 != 1)
        {
          goto LABEL_29;
        }

LABEL_27:
        if (v40 != v42)
        {
          free(v40);
        }

        goto LABEL_29;
      }

      v4 = v41;
      v5 = v45;
      if (v45 >= v41)
      {
        if (v41)
        {
          memmove(v44, v40, 4 * v41);
        }

LABEL_64:
        LODWORD(v45) = v4;
        LODWORD(v41) = 0;
        if (v43 != 1)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (HIDWORD(v45) >= v41)
      {
        if (v45)
        {
          memmove(v44, v40, 4 * v45);
          goto LABEL_62;
        }
      }

      else
      {
        LODWORD(v45) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v41, 4);
      }

      v5 = 0;
LABEL_62:
      v26 = v41 - v5;
      if (v26)
      {
        memcpy(&v44[4 * v5], &v40[4 * v5], 4 * v26);
      }

      goto LABEL_64;
    }

LABEL_26:
    if (v43 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (!v47)
  {
    v44 = v46;
    v45 = 0xC00000000;
    v3 = v41;
    if (v41)
    {
      if (v40 == v42)
      {
        v6 = v41;
        if (v41 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v41, 4), (v6 = v41) != 0))
        {
          memcpy(v44, v40, 4 * v6);
        }

        LODWORD(v45) = v3;
      }

      else
      {
        v44 = v40;
        v45 = v41;
        v40 = v42;
        HIDWORD(v41) = 0;
      }

      LODWORD(v41) = 0;
    }

    v47 = 1;
    goto LABEL_26;
  }

  if (v44 != v46)
  {
    free(v44);
  }

  v47 = 0;
  if (v43 == 1)
  {
    goto LABEL_27;
  }

LABEL_29:
  v7 = *a1;
  if ((v47 & 1) == 0)
  {
    v16 = (*(v7 + 40))(a1);
    v42[8] = 259;
    (*(*a1 + 24))(v31, a1, v16, &v40);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v37;
        v19 = __p;
        if (v37 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v37 = v17;
        operator delete(v19);
      }

      v20 = v34;
      if (v34)
      {
        v21 = v35;
        v22 = v34;
        if (v35 != v34)
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
          v22 = v34;
        }

        v35 = v20;
        operator delete(v22);
      }

      if (v32 != &v33)
      {
        free(v32);
      }
    }

LABEL_53:
    result = 0;
    if (v47 != 1)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (((*(v7 + 296))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  Context = mlir::AsmParser::getContext(a1);
  v9 = v44;
  v10 = v45;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v27[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  v27[1] = Context;
  v40 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v41 = v27;
  v30[0] = v9;
  v30[1] = v10;
  v12 = llvm::hashing::detail::hash_combine_range_impl<char const>(v9, &v9[4 * v10]);
  v13 = HIDWORD(v12) ^ 0xFF51AFD7ED558CCDLL;
  v14 = 0x9DDFEA08EB382D69 * ((8 * v12 + 8) ^ v13);
  v28[0] = v30;
  v28[1] = &v40;
  v29 = v30;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v29, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v28);
  if (v47 != 1)
  {
    return result;
  }

LABEL_54:
  if (v44 != v46)
  {
    v25 = result;
    free(v44);
    return v25;
  }

  return result;
}

void mlir::FieldParser<llvm::SmallVector<int,12u>,llvm::SmallVector<int,12u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x1E69E9840];
  __src = v10;
  v9 = 0xC00000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  v3 = v9;
  v4 = 1;
  if (!v9 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v10)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v10)
  {
    v7 = v9;
    if (v9 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v9, 4), (v7 = v9) != 0))
    {
      memcpy(*a2, __src, 4 * v7);
    }

    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v9);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v10;
    HIDWORD(v9) = 0;
  }

  LODWORD(v9) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v10)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(mlir::ODIE::Compiler::CoreML::TensorEncodingAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<int>,(void *)0>(a2, *(*this + 8), *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++result[4];
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<int>,(void *)0>(llvm::raw_ostream *result, int *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = (*(*result + 16))(result);
    result = llvm::raw_ostream::operator<<(v6, *a2);
    if (a3 != 1)
    {
      v7 = 4 * a3;
      v8 = a2 + 1;
      v9 = v7 - 4;
      do
      {
        v12 = (*(*v5 + 16))(v5);
        v13 = v12[4];
        if (v12[3] - v13 <= 1uLL)
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        else
        {
          *v13 = 8236;
          v12[4] += 2;
        }

        v10 = (*(*v5 + 16))(v5);
        v11 = *v8++;
        result = llvm::raw_ostream::operator<<(v10, v11);
        v9 -= 4;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::parse(mlir::AsmParser *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v50) = 0;
  v53 = 0;
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_68;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::FieldParser<llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>>::parse(a1, &v46);
    if (v53 == v49)
    {
      if (v53)
      {
        v6 = v46;
        if (v46 != v48)
        {
          if (v50 != v52)
          {
            free(v50);
            v6 = v46;
          }

          v50 = v6;
          v51 = v47;
          v46 = v48;
          v47 = 0;
          if (v49 != 1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        v14 = v47;
        v15 = v51;
        if (v51 >= v47)
        {
          if (v47)
          {
            memmove(v50, v46, 8 * v47);
          }

LABEL_79:
          LODWORD(v51) = v14;
          LODWORD(v47) = 0;
          if (v49 != 1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        if (HIDWORD(v51) >= v47)
        {
          if (v51)
          {
            memmove(v50, v46, 8 * v51);
            goto LABEL_77;
          }
        }

        else
        {
          LODWORD(v51) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v47, 8);
        }

        v15 = 0;
LABEL_77:
        v28 = v47 - v15;
        if (v28)
        {
          memcpy(&v50[8 * v15], &v46[8 * v15], 8 * v28);
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (v53)
      {
        if (v50 != v52)
        {
          free(v50);
        }

        v53 = 0;
        if (v49 != 1)
        {
LABEL_45:
          v17 = *a1;
          if (v53)
          {
            if ((*(v17 + 328))(a1))
            {
              goto LABEL_3;
            }
          }

          else
          {
            v18 = (*(v17 + 40))(a1);
            v48[8] = 259;
            (*(*a1 + 24))(v37, a1, v18, &v46);
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

              v19 = __p;
              if (__p)
              {
                v20 = v43;
                v21 = __p;
                if (v43 != __p)
                {
                  do
                  {
                    v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
                  }

                  while (v20 != v19);
                  v21 = __p;
                }

                v43 = v19;
                operator delete(v21);
              }

              v22 = v40;
              if (v40)
              {
                v23 = v41;
                v24 = v40;
                if (v41 != v40)
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
                  v24 = v40;
                }

                v41 = v22;
                operator delete(v24);
              }

              if (v38 != &v39)
              {
                free(v38);
              }
            }
          }

LABEL_68:
          ParametricStorageTypeImpl = 0;
          if (v53 != 1)
          {
            return ParametricStorageTypeImpl;
          }

          goto LABEL_69;
        }

LABEL_43:
        if (v46 != v48)
        {
          free(v46);
        }

        goto LABEL_45;
      }

      v50 = v52;
      v51 = 0x600000000;
      v8 = v47;
      if (v47)
      {
        if (v46 == v48)
        {
          v16 = v47;
          if (v47 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v47, 8), (v16 = v47) != 0))
          {
            memcpy(v50, v46, 8 * v16);
          }

          LODWORD(v51) = v8;
        }

        else
        {
          v50 = v46;
          v51 = v47;
          v46 = v48;
          HIDWORD(v47) = 0;
        }

        LODWORD(v47) = 0;
      }

      v53 = 1;
    }

    if (v49 != 1)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_3:
  Context = mlir::AsmParser::getContext(a1);
  v34 = v36;
  v35 = 0x600000000;
  v46 = v48;
  v47 = 0x600000000;
  if (v53 != 1 || (v3 = v51, !v51))
  {
    v3 = 0;
    v7 = v48;
    goto LABEL_27;
  }

  if (v51 < 7)
  {
    v5 = v48;
    v4 = v51;
    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v51, 8);
  v4 = v51;
  if (v51)
  {
    v5 = v46;
LABEL_25:
    memcpy(v5, v50, 8 * v4);
  }

  LODWORD(v47) = v3;
  v7 = v46;
LABEL_27:
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v29[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id;
  v29[1] = Context;
  v33[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v33[1] = v29;
  v32[0] = v7;
  v32[1] = v3;
  v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v7, &v7[8 * v3]);
  v11 = HIDWORD(v10) ^ 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((8 * v10 + 8) ^ v11);
  v30[0] = v32;
  v30[1] = v33;
  v31 = v32;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v30);
  if (v46 != v48)
  {
    free(v46);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v53 == 1)
  {
LABEL_69:
    if (v50 != v52)
    {
      free(v50);
    }
  }

  return ParametricStorageTypeImpl;
}

void mlir::FieldParser<llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x1E69E9840];
  __src = v10;
  v9 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v9;
  v4 = 1;
  if (!v9 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v10)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v10)
  {
    v7 = v9;
    if (v9 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v9, 8), (v7 = v9) != 0))
    {
      memcpy(*a2, __src, 8 * v7);
    }

    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v9);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v10;
    HIDWORD(v9) = 0;
  }

  LODWORD(v9) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v10)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::print(mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "[", 1uLL);
    v6 = *this;
    v7 = *(*this + 16);
    if (v7)
    {
LABEL_3:
      v8 = *(v6 + 8);
      v9 = (*(*a2 + 16))(a2);
      v12[0] = ", ";
      v12[1] = 2;
      llvm::interleave<mlir::ODIE::Compiler::CoreML::ParamDeclAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},llvm::raw_ostream,mlir::ODIE::Compiler::CoreML::ParamDeclAttr const>(mlir::ODIE::Compiler::CoreML::ParamDeclAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(v8, (v8 + 8 * v7), a2, v9, v12);
      result = (*(*a2 + 16))(a2);
      v11 = result[4];
      if (result[3] == v11)
      {
        return llvm::raw_ostream::write(result, "]", 1uLL);
      }

      goto LABEL_7;
    }
  }

  else
  {
    *v5 = 91;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  result = (*(*a2 + 16))(a2);
  v11 = result[4];
  if (result[3] != v11)
  {
LABEL_7:
    *v11 = 93;
    ++result[4];
    return result;
  }

  return llvm::raw_ostream::write(result, "]", 1uLL);
}

uint64_t mlir::ODIE::Compiler::CoreML::IntentAttr::parse(mlir::AsmParser *a1)
{
  v103 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v77 = 0;
  v78 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v77))
  {
LABEL_61:
    v54 = (*(*a1 + 40))(a1);
    LOWORD(v94) = 259;
    (*(*a1 + 24))(v83, a1, v54, v92);
    if (v83[0])
    {
      mlir::InFlightDiagnostic::report(v83);
    }

    if (v91 == 1)
    {
      if (v90 != &v91)
      {
        free(v90);
      }

      v55 = v88;
      if (v88)
      {
        v56 = v89;
        v57 = v88;
        if (v89 != v88)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = v88;
        }

        v89 = v55;
        operator delete(v57);
      }

      v58 = v86;
      if (v86)
      {
        v59 = v87;
        v60 = v86;
        if (v87 != v86)
        {
          do
          {
            v62 = *--v59;
            v61 = v62;
            *v59 = 0;
            if (v62)
            {
              operator delete[](v61);
            }
          }

          while (v59 != v58);
          v60 = v86;
        }

        v87 = v58;
        operator delete(v60);
      }

      if (v84 != &v85)
      {
        free(v84);
      }
    }

    return 0;
  }

  if (v78 == 6)
  {
    if (*v77 != 1970562418 || *(v77 + 4) != 28274)
    {
      goto LABEL_24;
    }

    v4 = 2;
    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_84;
  }

  if (v78 == 5)
  {
    if (*v77 != 1970237033 || *(v77 + 4) != 116)
    {
      goto LABEL_24;
    }

    v4 = 1;
    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }

LABEL_84:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v79 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id;
    v80 = Context;
    v92[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17IntentAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10IntentAttrEJNS4_6IntentEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
    v92[1] = &v79;
    v77 = v4;
    v66 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * ((8 * v4 + 8) ^ 0xFF51AFD7ED558CCDLL)) ^ ((0x9DDFEA08EB382D69 * ((8 * v4 + 8) ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ 0xFF51AFD7ED558CCDLL);
    v82 = &v77;
    v75[0] = &v77;
    v75[1] = v92;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id, -348639895 * ((v66 >> 47) ^ v66), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v82, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v75);
  }

  if (v78 != 3 || (*v77 == 30063 ? (v3 = *(v77 + 2) == 116) : (v3 = 0), !v3))
  {
LABEL_24:
    v76 = 257;
    (*(*a1 + 24))(v92, a1, v2, v75);
    if (v92[0])
    {
      LODWORD(v79) = 3;
      v80 = "expected ";
      v81 = 9;
      v7 = &v79;
      v8 = v93;
      if (v94 >= v95)
      {
        if (v93 <= &v79 && v93 + 24 * v94 > &v79)
        {
          v67 = &v79 - v93;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
          v8 = v93;
          v7 = (v93 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
          v7 = &v79;
          v8 = v93;
        }
      }

      v9 = &v8[24 * v94];
      v10 = *v7;
      *(v9 + 2) = v7[2];
      *v9 = v10;
      v11 = ++v94;
      if (v92[0])
      {
        LODWORD(v79) = 3;
        v80 = "mlir::ODIE::Compiler::CoreML::Intent";
        v81 = 36;
        v12 = &v79;
        v13 = v93;
        if (v11 >= v95)
        {
          if (v93 <= &v79 && v93 + 24 * v11 > &v79)
          {
            v68 = &v79 - v93;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v11 + 1, 24);
            v13 = v93;
            v12 = (v93 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v11 + 1, 24);
            v12 = &v79;
            v13 = v93;
          }
        }

        v14 = &v13[24 * v94];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        v16 = ++v94;
        if (v92[0])
        {
          LODWORD(v79) = 3;
          v80 = " to be one of: ";
          v81 = 15;
          v17 = &v79;
          v18 = v93;
          if (v16 >= v95)
          {
            if (v93 <= &v79 && v93 + 24 * v16 > &v79)
            {
              v69 = &v79 - v93;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v16 + 1, 24);
              v18 = v93;
              v17 = (v93 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v16 + 1, 24);
              v17 = &v79;
              v18 = v93;
            }
          }

          v19 = &v18[24 * v94];
          v20 = *v17;
          *(v19 + 2) = v17[2];
          *v19 = v20;
          v21 = ++v94;
          if (v92[0])
          {
            LODWORD(v79) = 3;
            v80 = "out";
            v81 = 3;
            v22 = &v79;
            v23 = v93;
            if (v21 >= v95)
            {
              if (v93 <= &v79 && v93 + 24 * v21 > &v79)
              {
                v70 = &v79 - v93;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v21 + 1, 24);
                v23 = v93;
                v22 = (v93 + v70);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v21 + 1, 24);
                v22 = &v79;
                v23 = v93;
              }
            }

            v24 = &v23[24 * v94];
            v25 = *v22;
            *(v24 + 2) = v22[2];
            *v24 = v25;
            v26 = ++v94;
            if (v92[0])
            {
              LODWORD(v79) = 3;
              v80 = ", ";
              v81 = 2;
              v27 = &v79;
              v28 = v93;
              if (v26 >= v95)
              {
                if (v93 <= &v79 && v93 + 24 * v26 > &v79)
                {
                  v71 = &v79 - v93;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v26 + 1, 24);
                  v28 = v93;
                  v27 = (v93 + v71);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v26 + 1, 24);
                  v27 = &v79;
                  v28 = v93;
                }
              }

              v29 = &v28[24 * v94];
              v30 = *v27;
              *(v29 + 2) = v27[2];
              *v29 = v30;
              v31 = ++v94;
              if (v92[0])
              {
                LODWORD(v79) = 3;
                v80 = "inout";
                v81 = 5;
                v32 = &v79;
                v33 = v93;
                if (v31 >= v95)
                {
                  if (v93 <= &v79 && v93 + 24 * v31 > &v79)
                  {
                    v72 = &v79 - v93;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v31 + 1, 24);
                    v33 = v93;
                    v32 = (v93 + v72);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v31 + 1, 24);
                    v32 = &v79;
                    v33 = v93;
                  }
                }

                v34 = &v33[24 * v94];
                v35 = *v32;
                *(v34 + 2) = v32[2];
                *v34 = v35;
                v36 = ++v94;
                if (v92[0])
                {
                  LODWORD(v79) = 3;
                  v80 = ", ";
                  v81 = 2;
                  v37 = &v79;
                  v38 = v93;
                  if (v36 >= v95)
                  {
                    if (v93 <= &v79 && v93 + 24 * v36 > &v79)
                    {
                      v73 = &v79 - v93;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v36 + 1, 24);
                      v38 = v93;
                      v37 = (v93 + v73);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v36 + 1, 24);
                      v37 = &v79;
                      v38 = v93;
                    }
                  }

                  v39 = &v38[24 * v94];
                  v40 = *v37;
                  *(v39 + 2) = v37[2];
                  *v39 = v40;
                  v41 = ++v94;
                  if (v92[0])
                  {
                    LODWORD(v79) = 3;
                    v80 = "return";
                    v81 = 6;
                    v42 = &v79;
                    v43 = v93;
                    if (v41 >= v95)
                    {
                      if (v93 <= &v79 && v93 + 24 * v41 > &v79)
                      {
                        v74 = &v79 - v93;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v41 + 1, 24);
                        v43 = v93;
                        v42 = (v93 + v74);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v41 + 1, 24);
                        v42 = &v79;
                        v43 = v93;
                      }
                    }

                    v44 = &v43[24 * v94];
                    v45 = *v42;
                    *(v44 + 2) = v42[2];
                    *v44 = v45;
                    ++v94;
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v92);
    if (v92[0])
    {
      mlir::InFlightDiagnostic::report(v92);
    }

    if (v102 == 1)
    {
      if (v101 != &v102)
      {
        free(v101);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v100;
        v48 = __p;
        if (v100 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v100 = v46;
        operator delete(v48);
      }

      v49 = v97;
      if (v97)
      {
        v50 = v98;
        v51 = v97;
        if (v98 != v97)
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
          v51 = v97;
        }

        v98 = v49;
        operator delete(v51);
      }

      if (v93 != v96)
      {
        free(v93);
      }
    }

    goto LABEL_61;
  }

  v4 = 0;
  if ((*(*a1 + 168))(a1))
  {
    goto LABEL_84;
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::IntentAttr::print(mlir::ODIE::Compiler::CoreML::IntentAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "out";
    v8 = 3;
    goto LABEL_13;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "return";
    v8 = 6;
  }

  else
  {
    v7 = v6 != 1;
    if (v6 == 1)
    {
      v8 = 5;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 1)
    {
      v9 = "inout";
    }

    else
    {
      v9 = "";
    }
  }

LABEL_13:
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ApproximateAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ApproximateAttrEJNS4_11ApproximateEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::ApproximateAttr::parse(mlir::AsmParser *a1)
{
  v102 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v76 = 0;
  v77 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v76))
  {
LABEL_50:
    v52 = (*(*a1 + 40))(a1);
    LOWORD(v93) = 259;
    (*(*a1 + 24))(v82, a1, v52, v91);
    if (v82[0])
    {
      mlir::InFlightDiagnostic::report(v82);
    }

    if (v90 == 1)
    {
      if (v89 != &v90)
      {
        free(v89);
      }

      v53 = v87;
      if (v87)
      {
        v54 = v88;
        v55 = v87;
        if (v88 != v87)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = v87;
        }

        v88 = v53;
        operator delete(v55);
      }

      v56 = v85;
      if (v85)
      {
        v57 = v86;
        v58 = v85;
        if (v86 != v85)
        {
          do
          {
            v60 = *--v57;
            v59 = v60;
            *v57 = 0;
            if (v60)
            {
              operator delete[](v59);
            }
          }

          while (v57 != v56);
          v58 = v85;
        }

        v86 = v56;
        operator delete(v58);
      }

      if (v83 != &v84)
      {
        free(v83);
      }
    }

    return 0;
  }

  if (v77 != 7)
  {
    if (v77 == 4)
    {
      if (*v76 == 1701736302)
      {
        v3 = 0;
        if ((*(*a1 + 168))(a1))
        {
          goto LABEL_75;
        }

        return 0;
      }

      if (*v76 == 1752064372)
      {
        v3 = 1;
        if ((*(*a1 + 168))(a1))
        {
          goto LABEL_75;
        }

        return 0;
      }
    }

    goto LABEL_13;
  }

  if (*v76 != 1835493747 || *(v76 + 3) != 1684631405)
  {
LABEL_13:
    v75 = 257;
    (*(*a1 + 24))(v91, a1, v2, v74);
    if (v91[0])
    {
      LODWORD(v78) = 3;
      v79 = "expected ";
      v80 = 9;
      v5 = &v78;
      v6 = v92;
      if (v93 >= v94)
      {
        if (v92 <= &v78 && v92 + 24 * v93 > &v78)
        {
          v66 = &v78 - v92;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
          v6 = v92;
          v5 = (v92 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
          v5 = &v78;
          v6 = v92;
        }
      }

      v7 = &v6[24 * v93];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      v9 = ++v93;
      if (v91[0])
      {
        LODWORD(v78) = 3;
        v79 = "mlir::ODIE::Compiler::CoreML::Approximate";
        v80 = 41;
        v10 = &v78;
        v11 = v92;
        if (v9 >= v94)
        {
          if (v92 <= &v78 && v92 + 24 * v9 > &v78)
          {
            v67 = &v78 - v92;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v9 + 1, 24);
            v11 = v92;
            v10 = (v92 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v9 + 1, 24);
            v10 = &v78;
            v11 = v92;
          }
        }

        v12 = &v11[24 * v93];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        v14 = ++v93;
        if (v91[0])
        {
          LODWORD(v78) = 3;
          v79 = " to be one of: ";
          v80 = 15;
          v15 = &v78;
          v16 = v92;
          if (v14 >= v94)
          {
            if (v92 <= &v78 && v92 + 24 * v14 > &v78)
            {
              v68 = &v78 - v92;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
              v16 = v92;
              v15 = (v92 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
              v15 = &v78;
              v16 = v92;
            }
          }

          v17 = &v16[24 * v93];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          v19 = ++v93;
          if (v91[0])
          {
            LODWORD(v78) = 3;
            v79 = "none";
            v80 = 4;
            v20 = &v78;
            v21 = v92;
            if (v19 >= v94)
            {
              if (v92 <= &v78 && v92 + 24 * v19 > &v78)
              {
                v69 = &v78 - v92;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
                v21 = v92;
                v20 = (v92 + v69);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
                v20 = &v78;
                v21 = v92;
              }
            }

            v22 = &v21[24 * v93];
            v23 = *v20;
            *(v22 + 2) = v20[2];
            *v22 = v23;
            v24 = ++v93;
            if (v91[0])
            {
              LODWORD(v78) = 3;
              v79 = ", ";
              v80 = 2;
              v25 = &v78;
              v26 = v92;
              if (v24 >= v94)
              {
                if (v92 <= &v78 && v92 + 24 * v24 > &v78)
                {
                  v70 = &v78 - v92;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v24 + 1, 24);
                  v26 = v92;
                  v25 = (v92 + v70);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v24 + 1, 24);
                  v25 = &v78;
                  v26 = v92;
                }
              }

              v27 = &v26[24 * v93];
              v28 = *v25;
              *(v27 + 2) = v25[2];
              *v27 = v28;
              v29 = ++v93;
              if (v91[0])
              {
                LODWORD(v78) = 3;
                v79 = "tanh";
                v80 = 4;
                v30 = &v78;
                v31 = v92;
                if (v29 >= v94)
                {
                  if (v92 <= &v78 && v92 + 24 * v29 > &v78)
                  {
                    v71 = &v78 - v92;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v29 + 1, 24);
                    v31 = v92;
                    v30 = (v92 + v71);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v29 + 1, 24);
                    v30 = &v78;
                    v31 = v92;
                  }
                }

                v32 = &v31[24 * v93];
                v33 = *v30;
                *(v32 + 2) = v30[2];
                *v32 = v33;
                v34 = ++v93;
                if (v91[0])
                {
                  LODWORD(v78) = 3;
                  v79 = ", ";
                  v80 = 2;
                  v35 = &v78;
                  v36 = v92;
                  if (v34 >= v94)
                  {
                    if (v92 <= &v78 && v92 + 24 * v34 > &v78)
                    {
                      v72 = &v78 - v92;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v34 + 1, 24);
                      v36 = v92;
                      v35 = (v92 + v72);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v34 + 1, 24);
                      v35 = &v78;
                      v36 = v92;
                    }
                  }

                  v37 = &v36[24 * v93];
                  v38 = *v35;
                  *(v37 + 2) = v35[2];
                  *v37 = v38;
                  v39 = ++v93;
                  if (v91[0])
                  {
                    LODWORD(v78) = 3;
                    v79 = "sigmoid";
                    v80 = 7;
                    v40 = &v78;
                    v41 = v92;
                    if (v39 >= v94)
                    {
                      if (v92 <= &v78 && v92 + 24 * v39 > &v78)
                      {
                        v73 = &v78 - v92;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v39 + 1, 24);
                        v41 = v92;
                        v40 = (v92 + v73);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v39 + 1, 24);
                        v40 = &v78;
                        v41 = v92;
                      }
                    }

                    v42 = &v41[24 * v93];
                    v43 = *v40;
                    *(v42 + 2) = v40[2];
                    *v42 = v43;
                    ++v93;
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v91);
    if (v91[0])
    {
      mlir::InFlightDiagnostic::report(v91);
    }

    if (v101 == 1)
    {
      if (v100 != &v101)
      {
        free(v100);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v99;
        v46 = __p;
        if (v99 != __p)
        {
          do
          {
            v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v99 = v44;
        operator delete(v46);
      }

      v47 = v96;
      if (v96)
      {
        v48 = v97;
        v49 = v96;
        if (v97 != v96)
        {
          do
          {
            v51 = *--v48;
            v50 = v51;
            *v48 = 0;
            if (v51)
            {
              operator delete[](v50);
            }
          }

          while (v48 != v47);
          v49 = v96;
        }

        v97 = v47;
        operator delete(v49);
      }

      if (v92 != v95)
      {
        free(v92);
      }
    }

    goto LABEL_50;
  }

  v3 = 2;
  if ((*(*a1 + 168))(a1))
  {
LABEL_75:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v78 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id;
    v79 = Context;
    v91[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ApproximateAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ApproximateAttrEJNS4_11ApproximateEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
    v91[1] = &v78;
    v81 = v3;
    v64 = v3 ^ 0xFF51AFD7ED558CCDLL;
    v65 = 0x9DDFEA08EB382D69 * (((8 * v3) | 4) ^ v64);
    v76 = &v81;
    v74[0] = &v81;
    v74[1] = v91;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v64 ^ (v65 >> 47) ^ v65)) >> 32) >> 15) ^ (-348639895 * (v64 ^ (v65 >> 47) ^ v65))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v76, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v74);
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::ApproximateAttr::print(mlir::ODIE::Compiler::CoreML::ApproximateAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "none";
    v8 = 4;
    goto LABEL_13;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "sigmoid";
    v8 = 7;
  }

  else
  {
    v7 = v6 != 1;
    if (v6 == 1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 1)
    {
      v9 = "tanh";
    }

    else
    {
      v9 = "";
    }
  }

LABEL_13:
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CoreMLDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2, void **a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = (*(*a2 + 40))(a2);
  v58 = a2;
  v7 = (*(*a2 + 40))(a2);
  BYTE2(v62) = 0;
  v60 = 0;
  v61 = 0;
  v59 = v7;
  LOBYTE(v62) = 0;
  if (((*(*a2 + 640))(a2, &v60) & 1) == 0)
  {
    v8 = 0;
    if ((v62 & 0x10000) != 0)
    {
      LOWORD(v62) = 256;
      v54 = "torch_location_extras";
      v9 = 0;
      v10 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v58) & 0x100) != 0)
      {
        return v8;
      }
    }

    else
    {
      LOWORD(v62) = 256;
      BYTE2(v62) = 1;
      v9 = 0;
      v10 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v58) & 0x100) != 0)
      {
        return v8;
      }
    }

    goto LABEL_132;
  }

  v54 = "torch_location_extras";
  v55 = 21;
  if ((v62 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v61;
  if (v61)
  {
    if (v61 == 21)
    {
      v11 = *v60 == 0x6F6C5F6863726F74 && *(v60 + 8) == 0x655F6E6F69746163;
      if (v11 && *(v60 + 13) == 0x7361727478655F6ELL)
      {
        v21 = mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::parse(a2);
        goto LABEL_131;
      }
    }

    v54 = "odie_location_frame_attr";
    v55 = 24;
    goto LABEL_18;
  }

  (*(*v58 + 648))(v58, &v54, 1);
  v54 = "odie_location_frame_attr";
  v55 = 24;
  if ((v62 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v61;
  if (v61)
  {
LABEL_18:
    if (v9 == 24)
    {
      v13 = *v60 == 0x636F6C5F6569646FLL && *(v60 + 8) == 0x72665F6E6F697461;
      if (v13 && *(v60 + 16) == 0x727474615F656D61)
      {
        v21 = mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::parse(a2);
        goto LABEL_131;
      }
    }

    v54 = "extern";
    v55 = 6;
    if (v9)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

  (*(*v58 + 648))(v58, &v54, 1);
  v54 = "extern";
  v55 = 6;
  if ((v62 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v61;
  if (v61)
  {
LABEL_27:
    if (v9 == 6 && *v60 == 1702131813 && *(v60 + 4) == 28274)
    {
      v21 = mlir::ODIE::Compiler::CoreML::ExternAttr::parse(a2);
      goto LABEL_131;
    }

    v54 = "tensor_encoding";
    v55 = 15;
    if (v9)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_63:
  (*(*v58 + 648))(v58, &v54, 1);
  v54 = "tensor_encoding";
  v55 = 15;
  if ((v62 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v61;
  if (v61)
  {
LABEL_33:
    if (v9 == 15 && *v60 == 0x655F726F736E6574 && *(v60 + 7) == 0x676E69646F636E65)
    {
      v21 = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::parse(a2);
      goto LABEL_131;
    }

    v54 = "param.decl";
    v55 = 10;
    if (v9)
    {
      goto LABEL_39;
    }

    goto LABEL_67;
  }

LABEL_65:
  (*(*v58 + 648))(v58, &v54, 1);
  v54 = "param.decl";
  v55 = 10;
  if ((v62 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v61;
  if (v61)
  {
LABEL_39:
    if (v9 == 10 && *v60 == 0x65642E6D61726170 && *(v60 + 8) == 27747)
    {
      v21 = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(a2);
      goto LABEL_131;
    }

    v54 = "param.decl.array";
    v55 = 16;
    if (v9)
    {
      goto LABEL_45;
    }

LABEL_69:
    (*(*v58 + 648))(v58, &v54, 1);
    v54 = "param.ref";
    v55 = 9;
    if ((v62 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v61;
    if (v61)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_67:
  (*(*v58 + 648))(v58, &v54, 1);
  v54 = "param.decl.array";
  v55 = 16;
  if ((v62 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v61;
  if (!v61)
  {
    goto LABEL_69;
  }

LABEL_45:
  if (v9 == 16 && *v60 == 0x65642E6D61726170 && *(v60 + 8) == 0x79617272612E6C63)
  {
    v21 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::parse(a2);
    goto LABEL_131;
  }

  v54 = "param.ref";
  v55 = 9;
  if (v9)
  {
LABEL_51:
    if (v9 == 9 && *v60 == 0x65722E6D61726170 && *(v60 + 8) == 102)
    {
      v21 = mlir::ODIE::Compiler::CoreML::ParamRefAttr::parse(a2, a3);
      goto LABEL_131;
    }

    v54 = "param.bind";
    v55 = 10;
    goto LABEL_73;
  }

LABEL_71:
  (*(*v58 + 648))(v58, &v54, 1);
  v54 = "param.bind";
  v55 = 10;
  if ((v62 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v61;
LABEL_73:
  if (v9)
  {
    if (v9 == 10 && *v60 == 0x69622E6D61726170 && *(v60 + 8) == 25710)
    {
      v21 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(a2, a3);
      goto LABEL_131;
    }

    v54 = "param.constant";
    v55 = 14;
  }

  else
  {
    (*(*v58 + 648))(v58, &v54, 1);
    v54 = "param.constant";
    v55 = 14;
    if ((v62 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v61;
  }

  if (v9)
  {
    if (v9 == 14 && *v60 == 0x6F632E6D61726170 && *(v60 + 6) == 0x746E6174736E6F63)
    {
      v21 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::parse(a2, a3);
      goto LABEL_131;
    }

    v54 = "intent";
    v55 = 6;
  }

  else
  {
    (*(*v58 + 648))(v58, &v54, 1);
    v54 = "intent";
    v55 = 6;
    if ((v62 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v61;
  }

  if (v9)
  {
    if (v9 == 6 && *v60 == 1702129257 && *(v60 + 4) == 29806)
    {
      v21 = mlir::ODIE::Compiler::CoreML::IntentAttr::parse(a2);
      goto LABEL_131;
    }

    v54 = "target_spec";
    v55 = 11;
  }

  else
  {
    (*(*v58 + 648))(v58, &v54, 1);
    v54 = "target_spec";
    v55 = 11;
    if ((v62 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v61;
  }

  if (!v9)
  {
    (*(*v58 + 648))(v58, &v54, 1);
    v54 = "approximate";
    v55 = 11;
    if ((v62 & 0x10000) == 0)
    {
      v9 = v61;
      goto LABEL_117;
    }

LABEL_3:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v58) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_132;
  }

  if (v9 == 11 && *v60 == 0x735F746567726174 && *(v60 + 3) == 0x636570735F746567)
  {
    v21 = mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(a2);
    goto LABEL_131;
  }

  v54 = "approximate";
  v55 = 11;
LABEL_117:
  if (v9)
  {
    if (v9 != 11)
    {
      goto LABEL_163;
    }

    if (*v60 != 0x6D69786F72707061 || *(v60 + 3) != 0x6574616D69786F72)
    {
      goto LABEL_163;
    }

    v21 = mlir::ODIE::Compiler::CoreML::ApproximateAttr::parse(a2);
LABEL_131:
    v8 = v21;
    LOBYTE(v62) = v21 != 0;
    *(&v62 + 1) = 257;
    v9 = 0;
    v10 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v58) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_132;
  }

  (*(*v58 + 648))(v58, &v54, 1);
  if ((v62 & 0x10000) != 0)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v58) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_132;
  }

  v9 = v61;
LABEL_163:
  v8 = 0;
  v10 = v60;
  LOWORD(v62) = 0;
  BYTE2(v62) = 1;
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v58) & 0x100) != 0)
  {
    return v8;
  }

LABEL_132:
  v53 = 257;
  (*(*a2 + 24))(&v58, a2, v6, v52);
  if (v58)
  {
    LODWORD(v54) = 3;
    v56 = 19;
    v26 = &v54;
    v27 = v61;
    if (v62 >= v63)
    {
      if (v61 <= &v54 && v61 + 24 * v62 > &v54)
      {
        v49 = &v54 - v61;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v27 = v61;
        v26 = (v61 + v49);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v26 = &v54;
        v27 = v61;
      }
    }

    v28 = &v27[24 * v62];
    v29 = *v26;
    *(v28 + 2) = v26[2];
    *v28 = v29;
    ++v62;
    if (v58)
    {
      v57 = 261;
      v54 = v10;
      v55 = v9;
      mlir::Diagnostic::operator<<(&v59, &v54);
      if (v58)
      {
        LODWORD(v54) = 3;
        v56 = 14;
        v30 = &v54;
        v31 = v61;
        if (v62 >= v63)
        {
          if (v61 <= &v54 && v61 + 24 * v62 > &v54)
          {
            v50 = &v54 - v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
            v31 = v61;
            v30 = (v61 + v50);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
            v30 = &v54;
            v31 = v61;
          }
        }

        v32 = &v31[24 * v62];
        v33 = *v30;
        *(v32 + 2) = v30[2];
        *v32 = v33;
        ++v62;
        if (v58)
        {
          v34 = *(a1 + 8);
          v35 = *(a1 + 16);
          v57 = 261;
          v54 = v34;
          v55 = v35;
          mlir::Diagnostic::operator<<(&v59, &v54);
          if (v58)
          {
            LODWORD(v54) = 3;
            v56 = 1;
            v36 = &v54;
            v37 = v61;
            if (v62 >= v63)
            {
              if (v61 <= &v54 && v61 + 24 * v62 > &v54)
              {
                v51 = &v54 - v61;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
                v37 = v61;
                v36 = (v61 + v51);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
                v36 = &v54;
                v37 = v61;
              }
            }

            v38 = &v37[24 * v62];
            v39 = *v36;
            *(v38 + 2) = v36[2];
            *v38 = v39;
            ++v62;
            if (v58)
            {
              mlir::InFlightDiagnostic::report(&v58);
            }
          }
        }
      }
    }
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v68;
      v42 = __p;
      if (v68 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v68 = v40;
      operator delete(v42);
    }

    v43 = v65;
    if (v65)
    {
      v44 = v66;
      v45 = v65;
      if (v66 != v65)
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
        v45 = v65;
      }

      v66 = v43;
      operator delete(v45);
    }

    if (v61 != v64)
    {
      free(v61);
    }
  }

  return 0;
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::printAttribute(uint64_t a1, void *a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id)
  {
    v34 = a2;
    v7 = (*(*a3 + 16))(a3);
    v8 = v7[4];
    if (v7[3] - v8 > 0x14uLL)
    {
      qmemcpy(v8, "torch_location_extras", 21);
      v7[4] += 21;
    }

    else
    {
      llvm::raw_ostream::write(v7, "torch_location_extras", 0x15uLL);
    }

    mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::print(&v34, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id)
  {
    v34 = a2;
    v9 = (*(*a3 + 16))(a3);
    v10 = v9[4];
    if (v9[3] - v10 > 0x17uLL)
    {
      qmemcpy(v10, "odie_location_frame_attr", 24);
      v9[4] += 24;
    }

    else
    {
      llvm::raw_ostream::write(v9, "odie_location_frame_attr", 0x18uLL);
    }

    mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::print(&v34, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
  {
    v34 = a2;
    v11 = (*(*a3 + 16))(a3);
    v12 = v11[4];
    if ((v11[3] - v12) > 5)
    {
      *(v12 + 4) = 28274;
      *v12 = 1702131813;
      v11[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v11, "extern", 6uLL);
    }

    mlir::ODIE::Compiler::CoreML::ExternAttr::print(&v34, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
  {
    v34 = a2;
    v13 = (*(*a3 + 16))(a3);
    v14 = v13[4];
    if (v13[3] - v14 > 0xEuLL)
    {
      qmemcpy(v14, "tensor_encoding", 15);
      v13[4] += 15;
    }

    else
    {
      llvm::raw_ostream::write(v13, "tensor_encoding", 0xFuLL);
    }

    mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(&v34, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id)
  {
    v34 = a2;
    v15 = (*(*a3 + 16))(a3);
    v16 = v15[4];
    if ((v15[3] - v16) > 9)
    {
      *(v16 + 8) = 27747;
      *v16 = *"param.decl";
      v15[4] += 10;
    }

    else
    {
      llvm::raw_ostream::write(v15, "param.decl", 0xAuLL);
    }

    mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(&v34, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    v34 = a2;
    v17 = (*(*a3 + 16))(a3);
    v18 = v17[4];
    if (v17[3] - v18 > 0xFuLL)
    {
      *v18 = *"param.decl.array";
      v17[4] += 16;
    }

    else
    {
      llvm::raw_ostream::write(v17, "param.decl.array", 0x10uLL);
    }

    mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::print(&v34, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v34 = a2;
    v19 = (*(*a3 + 16))(a3);
    v20 = v19[4];
    if ((v19[3] - v20) > 8)
    {
      *(v20 + 8) = 102;
      *v20 = *"param.ref";
      v19[4] += 9;
    }

    else
    {
      llvm::raw_ostream::write(v19, "param.ref", 9uLL);
    }

    mlir::ODIE::Compiler::CoreML::ParamRefAttr::print(&v34, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v34 = a2;
    v21 = (*(*a3 + 16))(a3);
    v22 = v21[4];
    if ((v21[3] - v22) > 9)
    {
      *(v22 + 8) = 25710;
      *v22 = *"param.bind";
      v21[4] += 10;
    }

    else
    {
      llvm::raw_ostream::write(v21, "param.bind", 0xAuLL);
    }

    mlir::ODIE::Compiler::CoreML::ParamBindAttr::print(&v34, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v24 = (*(*a3 + 16))(a3);
    v25 = v24[4];
    if (v24[3] - v25 > 0xDuLL)
    {
      qmemcpy(v25, "param.constant", 14);
      v24[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v24, "param.constant", 0xEuLL);
    }

    v28 = (*(*a3 + 16))(a3);
    v29 = v28[4];
    if (v28[3] == v29)
    {
      llvm::raw_ostream::write(v28, "<", 1uLL);
    }

    else
    {
      *v29 = 60;
      ++v28[4];
    }

    (*(*a3 + 48))(a3, a2[1]);
    v32 = (*(*a3 + 16))(a3);
    v33 = v32[4];
    if (v32[3] == v33)
    {

      llvm::raw_ostream::write(v32, ">", 1uLL);
    }

    else
    {
      *v33 = 62;
      ++v32[4];
    }
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
  {
    v34 = a2;
    v26 = (*(*a3 + 16))(a3);
    v27 = v26[4];
    if ((v26[3] - v27) > 5)
    {
      *(v27 + 4) = 29806;
      *v27 = 1702129257;
      v26[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v26, "intent", 6uLL);
    }

    mlir::ODIE::Compiler::CoreML::IntentAttr::print(&v34, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
  {
    v34 = a2;
    v30 = (*(*a3 + 16))(a3);
    v31 = v30[4];
    if ((v30[3] - v31) > 0xA)
    {
      *(v31 + 7) = 1667592307;
      *v31 = *"target_spec";
      v30[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v30, "target_spec", 0xBuLL);
    }

    mlir::ODIE::Compiler::CoreML::TargetSpecAttr::print(&v34, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    v34 = a2;
    v5 = (*(*a3 + 16))(a3);
    v6 = v5[4];
    if ((v5[3] - v6) > 0xA)
    {
      *(v6 + 7) = 1702125933;
      *v6 = *"approximate";
      v5[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v5, "approximate", 0xBuLL);
    }

    mlir::ODIE::Compiler::CoreML::ApproximateAttr::print(&v34, a3);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(uint64_t *a1, __n128 a2, __n128 a3, int64x2_t a4, int64x2_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *__return_ptr, uint64_t), uint64_t a10)
{
  v91 = *MEMORY[0x1E69E9840];
  if (*(*a1 + 16) != a7)
  {
    a9(v80, a10);
    if (v80[0])
    {
      v77 = 3;
      v78 = "encoding rank is different than tensor shape.";
      v79 = 45;
      v18 = &v77;
      v19 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v77 && v81 + 24 * v82 > &v77)
        {
          v75 = &v77 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v19 = v81;
          v18 = (v81 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v18 = &v77;
          v19 = v81;
        }
      }

      v20 = &v19[24 * v82];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      ++v82;
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
    if (v80[0])
    {
      mlir::InFlightDiagnostic::report(v80);
    }

    if (v90 != 1)
    {
      return v22;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v88;
      v25 = __p;
      if (v88 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v88 = v23;
      operator delete(v25);
    }

    v26 = v85;
    if (v85)
    {
      v27 = v86;
      v28 = v85;
      if (v86 == v85)
      {
        goto LABEL_80;
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
LABEL_79:
      v28 = v85;
LABEL_80:
      v86 = v26;
      operator delete(v28);
    }

LABEL_81:
    if (v81 != v84)
    {
      free(v81);
    }

    return v22;
  }

  v11 = 4 * a7;
  if (a7 != (4 * a7) >> 2)
  {
    goto LABEL_60;
  }

  v10 = *a1;
  v12 = *(*a1 + 8);
  if (a7)
  {
    v13 = 0;
    v14 = v11 - 4;
    v15 = *(v10 + 8);
    while (v13 == *v15)
    {
      v16 = v13 + 1;
      ++v15;
      if (a7 - 1 != v13)
      {
        v17 = v14;
        v14 -= 4;
        ++v13;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    v16 = v13;
    v31 = (v12 + v11);
    v32 = a7 - v13;
    if (a7 != v13)
    {
      goto LABEL_32;
    }

LABEL_56:
    if (a7 == v16 && v15 == v31)
    {
      return 1;
    }

LABEL_60:
    (a9)(v80, a10, a2, a3, a4, a5);
    if (v80[0])
    {
      v77 = 3;
      v78 = "encoding dimension order should be permutation of the shape.";
      v79 = 60;
      v64 = &v77;
      v65 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v77 && v81 + 24 * v82 > &v77)
        {
          v76 = &v77 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v65 = v81;
          v64 = (v81 + v76);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v64 = &v77;
          v65 = v81;
        }
      }

      v66 = &v65[24 * v82];
      v67 = *v64;
      *(v66 + 2) = *(v64 + 2);
      *v66 = v67;
      ++v82;
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
    if (v80[0])
    {
      mlir::InFlightDiagnostic::report(v80);
    }

    if (v90 != 1)
    {
      return v22;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v68 = __p;
    if (__p)
    {
      v69 = v88;
      v70 = __p;
      if (v88 != __p)
      {
        do
        {
          v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
        }

        while (v69 != v68);
        v70 = __p;
      }

      v88 = v68;
      operator delete(v70);
    }

    v26 = v85;
    if (v85)
    {
      v71 = v86;
      v28 = v85;
      if (v86 == v85)
      {
        goto LABEL_80;
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

      while (v71 != v26);
      goto LABEL_79;
    }

    goto LABEL_81;
  }

  v16 = 0;
  v15 = *(v10 + 8);
LABEL_29:
  v31 = (v12 + v11);
  v32 = a7 - v16;
  if (a7 == v16)
  {
    goto LABEL_56;
  }

LABEL_32:
  if (v15 == v31)
  {
    goto LABEL_56;
  }

  if (v32 != v31 - v15)
  {
    goto LABEL_60;
  }

  v33 = 0;
  v34 = a7 + ~v16;
  v35 = v12 + 4 * a7 - v15 - 4;
  v36 = (v35 >> 2) + 1;
  a2 = xmmword_1E09700F0;
  a3 = xmmword_1E0971950;
  a4 = vdupq_n_s64(2uLL);
  a5 = vdupq_n_s64(4uLL);
  v37 = v34;
  while (1)
  {
    if (v35 > 0x1B)
    {
      v40 = vdupq_n_s64(v16);
      v41 = 0uLL;
      v42 = v36 & 0x7FFFFFFFFFFFFFF8;
      v43 = v15 + 4;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      do
      {
        v47 = *(v43 - 1);
        v48.i64[0] = SDWORD2(v47);
        v48.i64[1] = SHIDWORD(v47);
        v49 = v48;
        v48.i64[0] = v47;
        v48.i64[1] = SDWORD1(v47);
        v50 = v48;
        v48.i64[0] = *(v43 + 1);
        v48.i64[1] = HIDWORD(*v43);
        v51 = v48;
        v48.i64[0] = *v43;
        v48.i64[1] = HIDWORD(*v43);
        v44 = vsubq_s64(v44, vceqq_s64(v40, v49));
        v41 = vsubq_s64(v41, vceqq_s64(v40, v50));
        v46 = vsubq_s64(v46, vceqq_s64(v40, v51));
        v45 = vsubq_s64(v45, vceqq_s64(v40, v48));
        v43 += 8;
        v42 -= 8;
      }

      while (v42);
      v38 = vaddvq_s64(vaddq_s64(vaddq_s64(v45, v41), vaddq_s64(v46, v44)));
      v39 = &v15[v36 & 0x7FFFFFFFFFFFFFF8];
      if (v36 == (v36 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_44;
      }
    }

    else
    {
      v38 = 0;
      v39 = v15;
    }

    do
    {
      v52 = *v39++;
      if (v16 == v52)
      {
        ++v38;
      }
    }

    while (v39 != v31);
LABEL_44:
    if (!v38)
    {
      goto LABEL_60;
    }

    v53 = v16 + 1;
    if (v16 + 1 == a7)
    {
      break;
    }

    v54 = v34 - v33;
    if ((v34 - v33) <= 3)
    {
      v55 = v16 + 1;
      v56 = 1;
LABEL_51:
      v62 = a7 - v55;
      v63 = v16 - v55;
      do
      {
        if (!v63)
        {
          ++v56;
        }

        --v63;
        --v62;
      }

      while (v62);
      goto LABEL_35;
    }

    v57 = v37 & 0xFFFFFFFFFFFFFFFCLL;
    v55 = v53 + (v54 & 0xFFFFFFFFFFFFFFFCLL);
    v58 = vaddq_s64(vdupq_n_s64(v53), xmmword_1E09700F0);
    v59 = vdupq_n_s64(v16);
    v60 = 0uLL;
    v61 = xmmword_1E0971950;
    do
    {
      v61 = vsubq_s64(v61, vceqq_s64(v59, v58));
      v60 = vsubq_s64(v60, vceqq_s64(v59, vaddq_s64(v58, a4)));
      v58 = vaddq_s64(v58, a5);
      v57 -= 4;
    }

    while (v57);
    v56 = vaddvq_s64(vaddq_s64(v60, v61));
    if (v54 != (v54 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_51;
    }

LABEL_35:
    ++v33;
    --v37;
    v16 = v53;
    if (v56 != v38)
    {
      goto LABEL_60;
    }
  }

  if (v38 != 1)
  {
    goto LABEL_60;
  }

  return 1;
}

uint64_t mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ArrayType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::TypedAttr,mlir::TypedAttr>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((mlir::ODIE::Compiler::CoreML::ArrayType::verify(a1, a2, a4, a5, a6, a7) & 1) == 0)
  {
    return 0;
  }

  v18 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id;
  v17[1] = &v18;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJRNS1_9TypedAttrESG_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v22[1] = v17;
  v21[0] = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v13 = (a6 >> 4) ^ (a6 >> 9);
  v14 = __ROR8__(v13 + 16, 16);
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (a4 >> 4) ^ (a4 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v19[0] = v21;
  v19[1] = v22;
  v20 = v21;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15)))) ^ v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr &,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr &,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::parse(mlir::ODIE::Compiler::CoreML::ParamRefType *this, mlir::AsmParser *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(this);
  v3 = (*(*this + 40))(this);
  if ((*(*this + 152))(this))
  {
    v20 = 0;
    v21 = 0;
    if (mlir::AsmParser::parseAttribute<mlir::TypedAttr>(this, &v20, 0))
    {
      v4 = v20;
      v5 = HIBYTE(v20);
      v6 = *(&v20 + 5);
      v7 = *(&v20 + 1);
      v8 = v21;
      if ((*(*this + 168))(this))
      {
        Context = mlir::AsmParser::getContext(this);
        v23 = v3;
        v20 = this;
        v21 = &v23;
        return mlir::ODIE::Compiler::CoreML::ParamRefType::getChecked(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4ODIE8Compiler6CoreML12ParamRefTypeEJPNS1_11MLIRContextENS1_9TypedAttrEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, &v20, Context, v4 | ((v7 | ((v6 | (v5 << 16)) << 32)) << 8), v8);
      }
    }

    else
    {
      v11 = (*(*this + 40))(this);
      v22 = 259;
      (*(*this + 24))(v24, this, v11, &v20);
      if (v24[0])
      {
        mlir::InFlightDiagnostic::report(v24);
      }

      if (v32 == 1)
      {
        if (v31 != &v32)
        {
          free(v31);
        }

        v12 = __p;
        if (__p)
        {
          v13 = v30;
          v14 = __p;
          if (v30 != __p)
          {
            do
            {
              v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
            }

            while (v13 != v12);
            v14 = __p;
          }

          v30 = v12;
          operator delete(v14);
        }

        v15 = v27;
        if (v27)
        {
          v16 = v28;
          v17 = v27;
          if (v28 != v27)
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
            v17 = v27;
          }

          v28 = v15;
          operator delete(v17);
        }

        if (v25 != &v26)
        {
          free(v25);
        }
      }
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::ParamRefType::print(mlir::ODIE::Compiler::CoreML::ParamRefType *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::SymbolRefType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::TypedAttr>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5)
{
  if ((mlir::ODIE::Compiler::CoreML::SymbolRefType::verify(a1, a2, a4, a5) & 1) == 0)
  {
    return 0;
  }

  v12 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id;
  v11[1] = &v12;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v16[1] = v11;
  v15[0] = a4;
  v15[1] = a5;
  v9 = 0x9DDFEA08EB382D69 * ((8 * ((a4 >> 4) ^ (a4 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v9 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t mlir::ODIE::Compiler::CoreML::HandleType::parse(mlir::ODIE::Compiler::CoreML::HandleType *this, mlir::AsmParser *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(this);
  (*(*this + 40))(this);
  if ((*(*this + 152))(this))
  {
    v19[0] = 0;
    v3 = (*(*this + 536))(this, v19);
    v4 = v19[0];
    if (v3)
    {
      v5 = v19[0];
    }

    else
    {
      v5 = 0;
    }

    v6 = *this;
    if (v3)
    {
      if ((*(v6 + 168))(this))
      {
        Context = mlir::AsmParser::getContext(this);
        TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
        v21[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id;
        v21[1] = &Context;
        v19[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17HandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_10HandleTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
        v19[1] = v21;
        v25 = v5;
        v8 = 0x9DDFEA08EB382D69 * ((8 * ((v4 >> 4) ^ (v4 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
        v23[0] = &v25;
        v23[1] = v19;
        v24 = &v25;
        return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v8 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
      }
    }

    else
    {
      v10 = (*(v6 + 40))(this);
      v20 = 259;
      (*(*this + 24))(v26, this, v10, v19);
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

        v11 = __p;
        if (__p)
        {
          v12 = v32;
          v13 = __p;
          if (v32 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v32 = v11;
          operator delete(v13);
        }

        v14 = v29;
        if (v29)
        {
          v15 = v30;
          v16 = v29;
          if (v30 != v29)
          {
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
            v16 = v29;
          }

          v30 = v14;
          operator delete(v16);
        }

        if (v27 != &v28)
        {
          free(v27);
        }
      }
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::HandleType::print(mlir::ODIE::Compiler::CoreML::HandleType *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  (*(*a2 + 32))(a2, *(*this + 8));
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(mlir::ODIE::Compiler::CoreML::AsyncValueType *this, mlir::AsmParser *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(this);
  (*(*this + 40))(this);
  if ((*(*this + 152))(this))
  {
    v19[0] = 0;
    v3 = (*(*this + 536))(this, v19);
    v4 = v19[0];
    if (v3)
    {
      v5 = v19[0];
    }

    else
    {
      v5 = 0;
    }

    v6 = *this;
    if (v3)
    {
      if ((*(v6 + 168))(this))
      {
        Context = mlir::AsmParser::getContext(this);
        TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
        v21[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id;
        v21[1] = &Context;
        v19[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21AsyncValueTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14AsyncValueTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
        v19[1] = v21;
        v25 = v5;
        v8 = 0x9DDFEA08EB382D69 * ((8 * ((v4 >> 4) ^ (v4 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
        v23[0] = &v25;
        v23[1] = v19;
        v24 = &v25;
        return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v8 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
      }
    }

    else
    {
      v10 = (*(v6 + 40))(this);
      v20 = 259;
      (*(*this + 24))(v26, this, v10, v19);
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

        v11 = __p;
        if (__p)
        {
          v12 = v32;
          v13 = __p;
          if (v32 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v32 = v11;
          operator delete(v13);
        }

        v14 = v29;
        if (v29)
        {
          v15 = v30;
          v16 = v29;
          if (v30 != v29)
          {
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
            v16 = v29;
          }

          v30 = v14;
          operator delete(v16);
        }

        if (v27 != &v28)
        {
          free(v27);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::CoreMLDialect::parseType(uint64_t a1, mlir::AsmParser *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v57 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v61) = 0;
  v59 = 0;
  v60 = 0;
  v58 = v5;
  LOBYTE(v61) = 0;
  if (((*(*a2 + 640))(a2, &v59) & 1) == 0)
  {
    v7 = 0;
    if ((v61 & 0x10000) != 0)
    {
      LOWORD(v61) = 256;
      v53 = "opaque";
      v8 = 0;
      v9 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v57) & 0x100) != 0)
      {
        return v7;
      }
    }

    else
    {
      LOWORD(v61) = 256;
      BYTE2(v61) = 1;
      v8 = 0;
      v9 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v57) & 0x100) != 0)
      {
        return v7;
      }
    }

    goto LABEL_76;
  }

  v53 = "opaque";
  v54 = 6;
  if ((v61 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v8 = v60;
  if (v60)
  {
    if (v60 == 6 && *v59 == 1902211183 && *(v59 + 4) == 25973)
    {
      Context = mlir::AsmParser::getContext(a2);
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
      v19 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id;
      goto LABEL_74;
    }

    v53 = "type";
    v54 = 4;
  }

  else
  {
    (*(*v57 + 648))(v57, &v53, 1);
    v53 = "type";
    v54 = 4;
    if ((v61 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v8 = v60;
    if (!v60)
    {
      (*(*v57 + 648))(v57, &v53, 1);
      v53 = "symbol";
      v54 = 6;
      if ((v61 & 0x10000) != 0)
      {
        goto LABEL_3;
      }

      v8 = v60;
      if (v60)
      {
        goto LABEL_18;
      }

LABEL_54:
      (*(*v57 + 648))(v57, &v53, 1);
      v53 = "array";
      v54 = 5;
      if ((v61 & 0x10000) != 0)
      {
        goto LABEL_3;
      }

      v8 = v60;
      if (v60)
      {
        goto LABEL_24;
      }

      goto LABEL_56;
    }
  }

  if (v8 == 4 && *v59 == 1701869940)
  {
    v20 = mlir::AsmParser::getContext(a2);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(v20);
    v19 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id;
    goto LABEL_74;
  }

  v53 = "symbol";
  v54 = 6;
  if (!v8)
  {
    goto LABEL_54;
  }

LABEL_18:
  if (v8 == 6 && *v59 == 1651341683 && *(v59 + 4) == 27759)
  {
    v21 = mlir::AsmParser::getContext(a2);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(v21);
    v19 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
    goto LABEL_74;
  }

  v53 = "array";
  v54 = 5;
  if (v8)
  {
LABEL_24:
    if (v8 == 5 && *v59 == 1634890337 && *(v59 + 4) == 121)
    {
      SingletonImpl = mlir::ODIE::Compiler::CoreML::ArrayType::parse(a2, v6);
      goto LABEL_75;
    }

    v53 = "param_ref";
    v54 = 9;
    if (v8)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

LABEL_56:
  (*(*v57 + 648))(v57, &v53, 1);
  v53 = "param_ref";
  v54 = 9;
  if ((v61 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v8 = v60;
  if (v60)
  {
LABEL_30:
    if (v8 == 9 && *v59 == 0x65725F6D61726170 && *(v59 + 8) == 102)
    {
      SingletonImpl = mlir::ODIE::Compiler::CoreML::ParamRefType::parse(a2, v6);
      goto LABEL_75;
    }

    v53 = "symbol_ref";
    v54 = 10;
    if (v8)
    {
      goto LABEL_36;
    }

LABEL_60:
    (*(*v57 + 648))(v57, &v53, 1);
    v53 = "handle";
    v54 = 6;
    if ((v61 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v8 = v60;
    if (v60)
    {
      goto LABEL_42;
    }

    goto LABEL_62;
  }

LABEL_58:
  (*(*v57 + 648))(v57, &v53, 1);
  v53 = "symbol_ref";
  v54 = 10;
  if ((v61 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v8 = v60;
  if (!v60)
  {
    goto LABEL_60;
  }

LABEL_36:
  if (v8 == 10 && *v59 == 0x725F6C6F626D7973 && *(v59 + 8) == 26213)
  {
    SingletonImpl = mlir::ODIE::Compiler::CoreML::SymbolRefType::parse(a2, v6);
    goto LABEL_75;
  }

  v53 = "handle";
  v54 = 6;
  if (v8)
  {
LABEL_42:
    if (v8 != 6 || (*v59 == 1684955496 ? (v15 = *(v59 + 4) == 25964) : (v15 = 0), !v15))
    {
      v53 = "token";
      v54 = 5;
      goto LABEL_64;
    }

    SingletonImpl = mlir::ODIE::Compiler::CoreML::HandleType::parse(a2, v6);
LABEL_75:
    v7 = SingletonImpl;
    LOBYTE(v61) = SingletonImpl != 0;
    *(&v61 + 1) = 257;
    v8 = 0;
    v9 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v57) & 0x100) != 0)
    {
      return v7;
    }

    goto LABEL_76;
  }

LABEL_62:
  (*(*v57 + 648))(v57, &v53, 1);
  v53 = "token";
  v54 = 5;
  if ((v61 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v8 = v60;
LABEL_64:
  if (v8)
  {
    if (v8 != 5 || (*v59 == 1701539700 ? (v16 = *(v59 + 4) == 110) : (v16 = 0), !v16))
    {
      v53 = "async.value";
      v54 = 11;
      goto LABEL_110;
    }

    v47 = mlir::AsmParser::getContext(a2);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(v47);
    v19 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
LABEL_74:
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, v19);
    goto LABEL_75;
  }

  (*(*v57 + 648))(v57, &v53, 1);
  v53 = "async.value";
  v54 = 11;
  if ((v61 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v8 = v60;
LABEL_110:
  if (!v8)
  {
    (*(*v57 + 648))(v57, &v53, 1);
    if ((v61 & 0x10000) == 0)
    {
      v8 = v60;
      goto LABEL_121;
    }

LABEL_3:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v57) & 0x100) != 0)
    {
      return v7;
    }

    goto LABEL_76;
  }

  if (v8 == 11 && *v59 == 0x61762E636E797361 && *(v59 + 3) == 0x65756C61762E636ELL)
  {
    SingletonImpl = mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(a2, v6);
    goto LABEL_75;
  }

LABEL_121:
  v7 = 0;
  v9 = v59;
  LOWORD(v61) = 0;
  BYTE2(v61) = 1;
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v57) & 0x100) != 0)
  {
    return v7;
  }

LABEL_76:
  v52 = 257;
  (*(*a2 + 24))(&v57, a2, v4, v51);
  if (v57)
  {
    LODWORD(v53) = 3;
    v55 = 15;
    v23 = &v53;
    v24 = v60;
    if (v61 >= v62)
    {
      if (v60 <= &v53 && v60 + 24 * v61 > &v53)
      {
        v48 = &v53 - v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v24 = v60;
        v23 = (v60 + v48);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v23 = &v53;
        v24 = v60;
      }
    }

    v25 = &v24[24 * v61];
    v26 = *v23;
    *(v25 + 2) = v23[2];
    *v25 = v26;
    ++v61;
    if (v57)
    {
      v56 = 261;
      v53 = v9;
      v54 = v8;
      mlir::Diagnostic::operator<<(&v58, &v53);
      if (v57)
      {
        LODWORD(v53) = 3;
        v55 = 14;
        v27 = &v53;
        v28 = v60;
        if (v61 >= v62)
        {
          if (v60 <= &v53 && v60 + 24 * v61 > &v53)
          {
            v49 = &v53 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v28 = v60;
            v27 = (v60 + v49);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v27 = &v53;
            v28 = v60;
          }
        }

        v29 = &v28[24 * v61];
        v30 = *v27;
        *(v29 + 2) = v27[2];
        *v29 = v30;
        ++v61;
        if (v57)
        {
          v31 = *(a1 + 8);
          v32 = *(a1 + 16);
          v56 = 261;
          v53 = v31;
          v54 = v32;
          mlir::Diagnostic::operator<<(&v58, &v53);
          if (v57)
          {
            LODWORD(v53) = 3;
            v55 = 1;
            v33 = &v53;
            v34 = v60;
            if (v61 >= v62)
            {
              if (v60 <= &v53 && v60 + 24 * v61 > &v53)
              {
                v50 = &v53 - v60;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
                v34 = v60;
                v33 = (v60 + v50);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
                v33 = &v53;
                v34 = v60;
              }
            }

            v35 = &v34[24 * v61];
            v36 = *v33;
            *(v35 + 2) = v33[2];
            *v35 = v36;
            ++v61;
            if (v57)
            {
              mlir::InFlightDiagnostic::report(&v57);
            }
          }
        }
      }
    }
  }

  if (v69 == 1)
  {
    if (v68 != &v69)
    {
      free(v68);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v67;
      v39 = __p;
      if (v67 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v67 = v37;
      operator delete(v39);
    }

    v40 = v64;
    if (v64)
    {
      v41 = v65;
      v42 = v64;
      if (v65 != v64)
      {
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
        v42 = v64;
      }

      v65 = v40;
      operator delete(v42);
    }

    if (v60 != v63)
    {
      free(v60);
    }
  }

  return 0;
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::printType(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v3 = *(*a2 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id)
  {
    v7 = (*(*a3 + 16))(a3);
    v8 = v7[4];
    if ((v7[3] - v8) <= 5)
    {
      v9 = "opaque";
      v10 = 6;

      goto LABEL_15;
    }

    *(v8 + 4) = 25973;
    v12 = 1902211183;
    goto LABEL_30;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    v7 = (*(*a3 + 16))(a3);
    v11 = v7[4];
    if (v7[3] - v11 > 3uLL)
    {
      *v11 = 1701869940;
      v7[4] += 4;
      return;
    }

    v9 = "type";
    v10 = 4;

LABEL_15:
    llvm::raw_ostream::write(v7, v9, v10);
    return;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
  {
    v7 = (*(*a3 + 16))(a3);
    v8 = v7[4];
    if ((v7[3] - v8) <= 5)
    {
      v9 = "symbol";
      v10 = 6;

      goto LABEL_15;
    }

    *(v8 + 4) = 27759;
    v12 = 1651341683;
LABEL_30:
    *v8 = v12;
    v7[4] += 6;
    return;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id)
  {
    v25 = a2;
    v14 = (*(*a3 + 16))(a3);
    v15 = v14[4];
    if ((v14[3] - v15) > 4)
    {
      *(v15 + 4) = 121;
      *v15 = 1634890337;
      v14[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v14, "array", 5uLL);
    }

    mlir::ODIE::Compiler::CoreML::ArrayType::print(&v25, a3);
    return;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id)
  {
    v25 = a2;
    v17 = (*(*a3 + 16))(a3);
    v18 = v17[4];
    if ((v17[3] - v18) > 8)
    {
      *(v18 + 8) = 102;
      *v18 = *"param_ref";
      v17[4] += 9;
    }

    else
    {
      llvm::raw_ostream::write(v17, "param_ref", 9uLL);
    }

    mlir::ODIE::Compiler::CoreML::ParamRefType::print(&v25, a3);
    return;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id)
  {
    v25 = a2;
    v20 = (*(*a3 + 16))(a3);
    v21 = v20[4];
    if ((v20[3] - v21) > 9)
    {
      *(v21 + 8) = 26213;
      *v21 = *"symbol_ref";
      v20[4] += 10;
    }

    else
    {
      llvm::raw_ostream::write(v20, "symbol_ref", 0xAuLL);
    }

    mlir::ODIE::Compiler::CoreML::SymbolRefType::print(&v25, a3);
    return;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
  {
    v25 = a2;
    v4 = a3;
    v22 = (*(*a3 + 16))(a3);
    v23 = v22[4];
    if ((v22[3] - v23) > 5)
    {
      *(v23 + 4) = 25964;
      *v23 = 1684955496;
      v22[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v22, "handle", 6uLL);
    }

    goto LABEL_50;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
  {
    v7 = (*(*a3 + 16))(a3);
    v24 = v7[4];
    if ((v7[3] - v24) > 4)
    {
      *(v24 + 4) = 110;
      *v24 = 1701539700;
      v7[4] += 5;
      return;
    }

    v9 = "token";
    v10 = 5;

    goto LABEL_15;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
  {
    v25 = a2;
    v4 = a3;
    v5 = (*(*a3 + 16))(a3);
    v6 = v5[4];
    if ((v5[3] - v6) > 0xA)
    {
      *(v6 + 7) = 1702194273;
      *v6 = *"async.value";
      v5[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v5, "async.value", 0xBuLL);
    }

LABEL_50:
    mlir::ODIE::Compiler::CoreML::HandleType::print(&v25, v4);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrEJPNS1_11MLIRContextENS_8ArrayRefINS1_10StringAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4ODIE8Compiler6CoreML12ParamRefTypeEJPNS1_11MLIRContextENS1_9TypedAttrEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AddOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.add", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38258;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AllOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::AllOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.all", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AllOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38338;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AndOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AndOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.and", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AndOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38418;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AnyOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AnyOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AnyOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AnyOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AnyOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::AnyOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AnyOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AnyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AnyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AnyOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::AnyOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.any", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AnyOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B384F8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>,mlir::OpTrait::NOperands<7u>::Impl<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.avg_pool_2d", 18, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B385D8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AwaitOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AwaitOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AwaitOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::CoreML::AwaitOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AwaitOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::AwaitOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AwaitOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AwaitOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AwaitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AwaitOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AwaitOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.async.await", 18, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AwaitOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B386B8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.batch_matmul", 19, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38798;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::BatchNormOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::BatchNormOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::BatchNormOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::BatchNormOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::BatchNormOp>,mlir::OpTrait::NOperands<6u>::Impl<mlir::ODIE::Compiler::CoreML::BatchNormOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::BatchNormOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::BatchNormOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::BatchNormOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::BatchNormOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::BatchNormOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.batchnorm", 16, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchNormOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38878;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.broadcast_in_dims", 24, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38958;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.broadcast_shapes", 23, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38A38;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::BroadcastToOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::BroadcastToOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::BroadcastToOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::BroadcastToOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::BroadcastToOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::BroadcastToOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::BroadcastToOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::BroadcastToOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::BroadcastToOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::BroadcastToOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::BroadcastToOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.broadcast_to", 19, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastToOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38B18;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::CallOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.llo.call", 15, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CallOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38BF8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::CallOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::CastOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CastOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::CastOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CastOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::CastOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CastOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CastOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CastOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.cast", 11, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38CD8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ClassOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoRegionArguments<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoTerminator<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SymbolTable<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::RegionKindInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ODIE::Compiler::CoreML::ClassOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.llo.class", 16, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ClassOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38DB8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::ClassOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ConcatOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ConcatOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ConcatOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ConcatOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ConcatOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::ODIE::Compiler::CoreML::ConcatOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ConcatOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ConcatOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ConcatOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ConcatOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ConcatOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.concat", 13, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38E98;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ConditionOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::ODIE::Compiler::CoreML::ConditionOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.condition", 16, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B38F78;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ConstantOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ConstantOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::CoreML::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::ODIE::Compiler::CoreML::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ConstantOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ConstantOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.constant", 15, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39058;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::ConstantOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::Conv2dOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::Conv2dOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::Conv2dOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::Conv2dOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::Conv2dOp>,mlir::OpTrait::NOperands<6u>::Impl<mlir::ODIE::Compiler::CoreML::Conv2dOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::Conv2dOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::Conv2dOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::Conv2dOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::Conv2dOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::Conv2dOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.conv2d", 13, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::Conv2dOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39138;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::CosOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CosOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::CosOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::CosOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CosOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::CosOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CosOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::CosOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::CosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CosOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::CosOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::CosOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::CosOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.cos", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CosOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39218;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CreateComplexOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::CreateComplexOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::CreateComplexOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CreateComplexOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::CreateComplexOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CreateComplexOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::CreateComplexOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::CreateComplexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CreateComplexOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::CreateComplexOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CreateComplexOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.create_complex", 21, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B392F8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::CreateTokenOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CreateTokenOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::CreateTokenOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl<mlir::ODIE::Compiler::CoreML::CreateTokenOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CreateTokenOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::CreateTokenOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CreateTokenOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CreateTokenOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.create_token", 19, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateTokenOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B393D8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::DelegateOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait<mlir::ODIE::Compiler::CoreML::DelegateOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.delegate", 15, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DelegateOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B394B8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::DelegateOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::DivideOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::DivideOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::DivideOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::DivideOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::DivideOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::DivideOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::DivideOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::DivideOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::DivideOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::DivideOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::DivideOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::DivideOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::DivideOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.divide", 13, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39598;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::EqualOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::OpTrait::SameOperandsElementType<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::EqualOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::EqualOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.equal", 12, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::EqualOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39678;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ExpOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ExpOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ExpOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ExpOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ExpOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::ExpOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ExpOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ExpOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ExpOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ExpOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::ExpOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::ExpOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::ExpOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.exp", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39838;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.expand_dims", 18, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39918;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::FillOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::FillOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::FillOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::FillOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::FillOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::FillOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::FillOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::FillOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::FillOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::FillOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::FillOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.fill", 11, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FillOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B399F8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::FloorDivideOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::FloorDivideOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::FloorDivideOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::FloorDivideOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::FloorDivideOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::FloorDivideOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::FloorDivideOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::FloorDivideOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::FloorDivideOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::FloorDivideOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::FloorDivideOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::FloorDivideOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::FloorDivideOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.floor_divide", 19, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FloorDivideOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39AD8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::FuncOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::FuncOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::FuncOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::FuncOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::FuncOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::FuncOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::FuncOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::FuncOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::FuncOp>,mlir::CallableOpInterface::Trait<mlir::ODIE::Compiler::CoreML::FuncOp>,mlir::FunctionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::FuncOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::FuncOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::FuncOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.llo.func", 15, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FuncOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39BB8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::FuncOp::getAttributeNames(void)::attrNames, 8);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::GELUOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::GELUOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::GELUOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::GELUOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::GELUOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::GELUOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::GELUOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GELUOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::GELUOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::GELUOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GELUOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::GELUOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.gelu", 11, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GELUOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39C98;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::GELUOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::GatherNdOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::GatherNdOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::GatherNdOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::GatherNdOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::GatherNdOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::GatherNdOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::GatherNdOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::GatherNdOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::GatherNdOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GatherNdOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::GatherNdOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.gather_nd", 16, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherNdOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39D78;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::GetShapeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::GetShapeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::GetShapeOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreML::GetShapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::GetShapeOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::GetShapeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::GetShapeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::GetShapeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::GetShapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GetShapeOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GetShapeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.get_shape", 16, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39E58;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::GraphOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::CallableOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::FunctionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.graph", 12, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B39F38;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::GraphOp::getAttributeNames(void)::attrNames, 8);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::GreaterOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::OpTrait::SameOperandsElementType<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::GreaterOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::GreaterOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.greater", 14, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GreaterOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A018;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::IfOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::NRegions<2u>::Impl<mlir::ODIE::Compiler::CoreML::IfOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::IfOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::IfOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::IfOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::IfOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::ODIE::Compiler::CoreML::IfOp>,mlir::OpTrait::NoRegionArguments<mlir::ODIE::Compiler::CoreML::IfOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::IfOp>,mlir::RegionBranchOpInterface::Trait<mlir::ODIE::Compiler::CoreML::IfOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::ODIE::Compiler::CoreML::IfOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.if", 9, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IfOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A0F8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.imaginary_part", 21, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A1D8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ImportOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ImportOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::ImportOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ImportOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::ImportOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ImportOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ImportOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ImportOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.import", 13, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A2B8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::ImportOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::InvokeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::InvokeOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::InvokeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::InvokeOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::InvokeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::InvokeOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::InvokeOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::InvokeOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::InvokeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.invoke", 13, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A398;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::InvokeOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>,mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.isolated_group", 21, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A478;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::JoinTokenOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::JoinTokenOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::JoinTokenOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl<mlir::ODIE::Compiler::CoreML::JoinTokenOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::JoinTokenOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::ODIE::Compiler::CoreML::JoinTokenOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::JoinTokenOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::JoinTokenOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.join_token", 17, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::JoinTokenOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A558;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::LogOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::LogOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::LogOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::LogOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::LogOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::LogOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::LogOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::LogOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::LogOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::LogOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::LogOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::LogOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::LogOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.log", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::LogOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A638;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>,mlir::OpTrait::NOperands<6u>::Impl<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.max_pool_2d", 18, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A718;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::MaximumOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::MaximumOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::MaximumOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::MaximumOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::MaximumOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::MaximumOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::MaximumOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::MaximumOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::MaximumOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::MaximumOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::MaximumOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::MaximumOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::MaximumOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.maximum", 14, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaximumOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A7F8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::MemberOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::MemberOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::MemberOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::MemberOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::MemberOp>,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl<mlir::ODIE::Compiler::CoreML::MemberOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::MemberOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::MemberOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::MemberOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.llo.member", 17, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A8D8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::MemberOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::MinimumOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::MinimumOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::MinimumOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::MinimumOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::MinimumOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::MinimumOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::MinimumOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::MinimumOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::MinimumOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::MinimumOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::MinimumOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::MinimumOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::MinimumOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.minimum", 14, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MinimumOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3A9B8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ModuleOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ODIE::Compiler::CoreML::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ODIE::Compiler::CoreML::ModuleOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.module", 13, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3AA98;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::ModuleOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ModuloOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ModuloOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ModuloOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ModuloOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ModuloOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::ModuloOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ModuloOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ModuloOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ModuloOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ModuloOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::ModuloOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::ModuloOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ModuloOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.modulo", 13, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuloOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3AB78;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::MulOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::MulOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::MulOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.mul", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3AC58;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::NonZeroOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::NonZeroOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::NonZeroOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreML::NonZeroOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::NonZeroOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::NonZeroOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::NonZeroOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::NonZeroOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::NonZeroOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::NonZeroOp>,mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented<mlir::ODIE::Compiler::CoreML::NonZeroOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.non_zero", 15, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NonZeroOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3AD38;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::NotEqualOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::OpTrait::SameOperandsElementType<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::NotEqualOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::NotEqualOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.not_equal", 16, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotEqualOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3AE18;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::NotOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::NotOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::NotOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.not", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3AEF8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::OrOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::OrOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::OrOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.or", 9, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OrOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3AFD8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::OutputOp>(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  memset(v11, 0, sizeof(v11));
  v9 = v11;
  v10 = 0x300000000;
  mlir::OperationName::Impl::Impl(v2, "coreml.output", 13, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3B0B8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::PowOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::PowOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::PowOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::PowOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::PowOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::PowOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::PowOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::PowOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::PowOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::PowOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::PowOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::PowOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::PowOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.pow", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PowOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3B278;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::RangeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::RangeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreML::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::RangeOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::RangeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::RangeOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::RangeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.range", 12, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RangeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3B358;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReLUOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ReLUOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ReLUOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ReLUOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ReLUOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::ReLUOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ReLUOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ReLUOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ReLUOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ReLUOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::ReLUOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::ReLUOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::ReLUOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.relu", 11, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReLUOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3B438;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReadHandleOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ReadHandleOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::ODIE::Compiler::CoreML::ReadHandleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ReadHandleOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::ReadHandleOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ReadHandleOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ReadHandleOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.read_handle", 18, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3B518;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::RealPartOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::RealPartOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::RealPartOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::RealPartOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::RealPartOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::RealPartOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::RealPartOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::RealPartOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::RealPartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::RealPartOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::RealPartOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::RealPartOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.real_part", 16, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RealPartOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3B5F8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.reduce_max", 17, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMaxOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3B6D8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.reduce_mean", 18, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3B7B8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReduceSumOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ReduceSumOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ReduceSumOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ReduceSumOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ReduceSumOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::ReduceSumOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ReduceSumOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ReduceSumOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ReduceSumOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ReduceSumOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::ReduceSumOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.reduce_sum", 17, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceSumOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3B898;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReshapeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ReshapeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ReshapeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ReshapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ReshapeOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::ReshapeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ReshapeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ReshapeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ReshapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ReshapeOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::ReshapeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.reshape", 14, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3B978;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReturnOp>(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  memset(v11, 0, sizeof(v11));
  v9 = v11;
  v10 = 0x300000000;
  mlir::OperationName::Impl::Impl(v2, "coreml.llo.return", 17, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReturnOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3BA58;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::RsqrtOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::RsqrtOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::RsqrtOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::RsqrtOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::RsqrtOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::RsqrtOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::RsqrtOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::RsqrtOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::RsqrtOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::RsqrtOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::RsqrtOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::RsqrtOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::RsqrtOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.rsqrt", 12, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RsqrtOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3BB38;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ScatterNdOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ScatterNdOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ScatterNdOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ScatterNdOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ScatterNdOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::ScatterNdOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ScatterNdOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ScatterNdOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ScatterNdOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ScatterNdOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::ScatterNdOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.scatter_nd", 17, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterNdOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3BC18;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SelectOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::SelectOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::SelectOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::SelectOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::SelectOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::SelectOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::SelectOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::SelectOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::SelectOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::SelectOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::SelectOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.select", 13, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3BCF8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.shrink_dims", 18, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3BDD8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SigmoidOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::SigmoidOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::SigmoidOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::SigmoidOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::SigmoidOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::SigmoidOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::SigmoidOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::SigmoidOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::SigmoidOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::SigmoidOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::SigmoidOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::SigmoidOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::SigmoidOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.sigmoid", 14, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SigmoidOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3BEB8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SiluOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::SiluOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::SiluOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::SiluOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::SiluOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::SiluOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::SiluOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::SiluOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::SiluOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::SiluOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::SiluOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::SiluOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::SiluOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.silu", 11, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SiluOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3BF98;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SinOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::SinOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::SinOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::SinOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::SinOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::SinOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::SinOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::SinOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::SinOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::SinOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::SinOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::SinOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::SinOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.sin", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SinOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3C078;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SliceOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::SliceOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::SliceOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::SliceOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::SliceOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::ODIE::Compiler::CoreML::SliceOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::SliceOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::SliceOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::SliceOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::SliceOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::SliceOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.slice", 12, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3C158;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>,mlir::OpTrait::NOperands<5u>::Impl<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.slice_update", 19, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3C238;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SoftmaxOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::SoftmaxOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::SoftmaxOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::SoftmaxOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::SoftmaxOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::SoftmaxOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::SoftmaxOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::SoftmaxOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::SoftmaxOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::SoftmaxOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::SoftmaxOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.softmax", 14, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SoftmaxOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3C318;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SplitOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::SplitOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::SplitOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::SplitOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::SplitOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::SplitOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::SplitOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::SplitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::SplitOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::SplitOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.split", 12, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SplitOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3C3F8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SqrtOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::SqrtOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::SqrtOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::SqrtOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::SqrtOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::SqrtOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::SqrtOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::SqrtOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::SqrtOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::SqrtOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::SqrtOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::SqrtOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::SqrtOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.sqrt", 11, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SqrtOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3C4D8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::StackOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::StackOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::StackOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::StackOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::StackOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::ODIE::Compiler::CoreML::StackOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::StackOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::StackOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::StackOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::StackOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::StackOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.stack", 12, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::StackOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3C5B8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SubOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::SubOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::SubOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::SubOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::SubOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::SubOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::SubOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::SubOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::SubOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::SubOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::SubOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::SubOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::SubOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.sub", 10, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3C698;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::TanhOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::TanhOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::TanhOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::TanhOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::TanhOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreML::TanhOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::TanhOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::TanhOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::TanhOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::TanhOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::TanhOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::TanhOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::TanhOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.tanh", 11, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TanhOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3C778;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::TileOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::TileOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::TileOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::TileOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::TileOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::TileOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::TileOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::TileOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::TileOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::TileOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::TileOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.tile", 11, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TileOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3C858;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::TransposeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::TransposeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::TransposeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::TransposeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::TransposeOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::TransposeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::TransposeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::TransposeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::TransposeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::TransposeOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::TransposeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.transpose", 16, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3C938;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::WhereOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::WhereOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::WhereOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::WhereOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::WhereOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::WhereOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::WhereOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::WhereOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::WhereOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::WhereOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::WhereOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.where", 12, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WhereOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3CA18;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::WhileOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::NRegions<2u>::Impl<mlir::ODIE::Compiler::CoreML::WhileOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::WhileOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::WhileOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::WhileOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::WhileOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::WhileOp>,mlir::RegionBranchOpInterface::Trait<mlir::ODIE::Compiler::CoreML::WhileOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::ODIE::Compiler::CoreML::WhileOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.while", 12, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WhileOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3CAF8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::WriteHandleOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::WriteHandleOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::WriteHandleOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl<mlir::ODIE::Compiler::CoreML::WriteHandleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::WriteHandleOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::WriteHandleOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::WriteHandleOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::WriteHandleOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coreml.write_handle", 19, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3CBD8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  a5(v23, a6);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            operator delete[](v16);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::ODIE::Compiler::CoreML::detail::ComplexDecompositionOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::decomposeComplexOperation;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::getSpeculatability;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::getEffects;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(0x10uLL);
  v9 = v8;
  *v8 = mlir::detail::InferShapedTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::inferReturnTypeComponents;
  v8[1] = mlir::detail::InferShapedTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::reifyReturnTypeShapes;
  {
    v14 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::InferShapedTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface]";
  v6 = 111;
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

uint64_t mlir::detail::InferShapedTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::inferReturnTypeComponents(int a1, int a2, int a3, _OWORD *a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  v11[2] = a4[2];
  return mlir::ODIE::Compiler::CoreML::AddOp::inferReturnTypeComponents(a1, a2, a3, v11, a5, a6, a7, a8, a9);
}

const char *llvm::getTypeName<mlir::InferShapedTypeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::InferShapedTypeOpInterface]";
  v6 = 82;
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v119 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    a1 = v119;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v106 = v1;
    v120 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v1 = v106;
    a1 = v120;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v107 = v1;
    v121 = a1;
    v94 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v2 = v94;
    v1 = v107;
    a1 = v121;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v108 = v1;
    v122 = a1;
    v83 = v3;
    v95 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v3 = v83;
    v2 = v95;
    v1 = v108;
    a1 = v122;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v109 = v1;
    v123 = a1;
    v84 = v3;
    v96 = v2;
    v73 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v4 = v73;
    v3 = v84;
    v2 = v96;
    v1 = v109;
    a1 = v123;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v110 = v1;
    v124 = a1;
    v85 = v3;
    v97 = v2;
    v64 = v5;
    v74 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v5 = v64;
    v4 = v74;
    v3 = v85;
    v2 = v97;
    v1 = v110;
    a1 = v124;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v111 = v1;
    v125 = a1;
    v86 = v3;
    v98 = v2;
    v65 = v5;
    v75 = v4;
    v56 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v6 = v56;
    v5 = v65;
    v4 = v75;
    v3 = v86;
    v2 = v98;
    v1 = v111;
    a1 = v125;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v112 = v1;
    v126 = a1;
    v87 = v3;
    v99 = v2;
    v66 = v5;
    v76 = v4;
    v49 = v7;
    v57 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v7 = v49;
    v6 = v57;
    v5 = v66;
    v4 = v76;
    v3 = v87;
    v2 = v99;
    v1 = v112;
    a1 = v126;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v113 = v1;
    v127 = a1;
    v88 = v3;
    v100 = v2;
    v67 = v5;
    v77 = v4;
    v50 = v7;
    v58 = v6;
    v43 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v8 = v43;
    v7 = v50;
    v6 = v58;
    v5 = v67;
    v4 = v77;
    v3 = v88;
    v2 = v100;
    v1 = v113;
    a1 = v127;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v114 = v1;
    v128 = a1;
    v89 = v3;
    v101 = v2;
    v68 = v5;
    v78 = v4;
    v51 = v7;
    v59 = v6;
    v38 = v9;
    v44 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v9 = v38;
    v8 = v44;
    v7 = v51;
    v6 = v59;
    v5 = v68;
    v4 = v78;
    v3 = v89;
    v2 = v101;
    v1 = v114;
    a1 = v128;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v115 = v1;
    v129 = a1;
    v90 = v3;
    v102 = v2;
    v69 = v5;
    v79 = v4;
    v52 = v7;
    v60 = v6;
    v39 = v9;
    v45 = v8;
    v34 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v10 = v34;
    v9 = v39;
    v8 = v45;
    v7 = v52;
    v6 = v60;
    v5 = v69;
    v4 = v79;
    v3 = v90;
    v2 = v102;
    v1 = v115;
    a1 = v129;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v116 = v1;
    v130 = a1;
    v91 = v3;
    v103 = v2;
    v70 = v5;
    v80 = v4;
    v53 = v7;
    v61 = v6;
    v40 = v9;
    v46 = v8;
    v31 = v11;
    v35 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v11 = v31;
    v10 = v35;
    v9 = v40;
    v8 = v46;
    v7 = v53;
    v6 = v61;
    v5 = v70;
    v4 = v80;
    v3 = v91;
    v2 = v103;
    v1 = v116;
    a1 = v130;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v117 = v1;
    v131 = a1;
    v92 = v3;
    v104 = v2;
    v71 = v5;
    v81 = v4;
    v54 = v7;
    v62 = v6;
    v41 = v9;
    v47 = v8;
    v32 = v11;
    v36 = v10;
    v29 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v12 = v29;
    v11 = v32;
    v10 = v36;
    v9 = v41;
    v8 = v47;
    v7 = v54;
    v6 = v62;
    v5 = v71;
    v4 = v81;
    v3 = v92;
    v2 = v104;
    v1 = v117;
    a1 = v131;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v118 = v1;
    v132 = a1;
    v93 = v3;
    v105 = v2;
    v72 = v5;
    v82 = v4;
    v55 = v7;
    v63 = v6;
    v42 = v9;
    v48 = v8;
    v33 = v11;
    v37 = v10;
    v28 = v13;
    v30 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v13 = v28;
    v12 = v30;
    v11 = v33;
    v10 = v37;
    v9 = v42;
    v8 = v48;
    v7 = v55;
    v6 = v63;
    v5 = v72;
    v4 = v82;
    v3 = v93;
    v2 = v105;
    v1 = v118;
    a1 = v132;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::InferShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<Empty>]";
  v6 = 125;
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

const char *llvm::getTypeName<mlir::InferShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferShapedTypeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::InferShapedTypeOpInterface::Trait<Empty>]";
  v6 = 96;
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

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v8 = a1, mlir::ODIE::Compiler::CoreML::AddOp::verifyInvariantsImpl(&v8)) && (mlir::OpTrait::impl::verifyElementwise(a1, v5) & 1) != 0)
  {
    return mlir::OpTrait::impl::verifySameOperandsAndResultShape(a1, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::AllOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AllOp>::getSpeculatability;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AllOp>::getEffects;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(1uLL);
  v7 = v6;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::AllOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::KernelTypeInference]";
  v6 = 99;
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<Empty>]";
  v6 = 113;
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

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreML::AllOp::verifyInvariantsImpl(&v6);
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}