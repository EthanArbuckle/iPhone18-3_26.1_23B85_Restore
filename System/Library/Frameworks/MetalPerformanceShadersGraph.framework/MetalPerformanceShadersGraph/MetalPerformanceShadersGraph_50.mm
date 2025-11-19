void mlir::memref::GetGlobalOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  if (*(*this + 9))
  {
    v12 = *this - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v17 = v19;
  v19[0] = "name";
  v19[1] = 4;
  v18 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v15, v17, v18);
  if (v17 != v19)
  {
    free(v17);
  }
}

uint64_t mlir::memref::GlobalOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v78 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v63 = v6;
  if (!v6)
  {
    a3(v67, a4);
    if (v67[0])
    {
      LODWORD(v64) = 3;
      v65 = "expected DictionaryAttr to set properties";
      v66 = 41;
      v26 = &v64;
      v27 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v64 && v68 + 24 * v69 > &v64)
        {
          v58 = &v64 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v27 = v68;
          v26 = (v68 + v58);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v26 = &v64;
          v27 = v68;
        }
      }

      v28 = &v27[24 * v69];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v69;
      if (v67[0])
      {
        mlir::InFlightDiagnostic::report(v67);
      }
    }

    if (v77 != 1)
    {
      return 0;
    }

    if (v76 != &v77)
    {
      free(v76);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v75;
      v32 = __p;
      if (v75 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v75 = v30;
      operator delete(v32);
    }

    v21 = v72;
    if (!v72)
    {
      goto LABEL_70;
    }

    v33 = v73;
    v23 = v72;
    if (v73 == v72)
    {
LABEL_69:
      v73 = v21;
      operator delete(v23);
LABEL_70:
      if (v68 != v71)
      {
        free(v68);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v72;
    goto LABEL_69;
  }

  v79.var0 = "alignment";
  v79.var1 = 9;
  v8 = mlir::DictionaryAttr::get(&v63, v79);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(v67, a4);
      if (v67[0])
      {
        LODWORD(v64) = 3;
        v66 = 54;
        v10 = &v64;
        v11 = v68;
        if (v69 >= v70)
        {
          if (v68 <= &v64 && v68 + 24 * v69 > &v64)
          {
            v59 = &v64 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v11 = v68;
            v10 = (v68 + v59);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v10 = &v64;
            v11 = v68;
          }
        }

        v12 = &v11[24 * v69];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v69;
        if (v67[0])
        {
          v14 = &v64;
          mlir::DiagnosticArgument::DiagnosticArgument(&v64, v9);
          v15 = v68;
          if (v69 >= v70)
          {
            if (v68 <= &v64 && v68 + 24 * v69 > &v64)
            {
              v60 = &v64 - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v15 = v68;
              v14 = (v68 + v60);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v14 = &v64;
              v15 = v68;
            }
          }

          v16 = &v15[24 * v69];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v69;
          if (v67[0])
          {
            mlir::InFlightDiagnostic::report(v67);
          }
        }
      }

      if ((v77 & 1) == 0)
      {
        return 0;
      }

      if (v76 != &v77)
      {
        free(v76);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v75;
        v20 = __p;
        if (v75 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v75 = v18;
        operator delete(v20);
      }

      v21 = v72;
      if (!v72)
      {
        goto LABEL_70;
      }

      v22 = v73;
      v23 = v72;
      if (v73 == v72)
      {
        goto LABEL_69;
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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v80.var0 = "constant";
  v80.var1 = 8;
  v36 = mlir::DictionaryAttr::get(&v63, v80);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v37 = v36;
      a3(v67, a4);
      if (v67[0])
      {
        LODWORD(v64) = 3;
        v66 = 53;
        v38 = &v64;
        v39 = v68;
        if (v69 >= v70)
        {
          if (v68 <= &v64 && v68 + 24 * v69 > &v64)
          {
            v61 = &v64 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v39 = v68;
            v38 = (v68 + v61);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v38 = &v64;
            v39 = v68;
          }
        }

        v40 = &v39[24 * v69];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v69;
        if (v67[0])
        {
          v42 = &v64;
          mlir::DiagnosticArgument::DiagnosticArgument(&v64, v37);
          v43 = v68;
          if (v69 >= v70)
          {
            if (v68 <= &v64 && v68 + 24 * v69 > &v64)
            {
              v62 = &v64 - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v43 = v68;
              v42 = (v68 + v62);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v42 = &v64;
              v43 = v68;
            }
          }

          v44 = &v43[24 * v69];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v69;
          if (v67[0])
          {
            mlir::InFlightDiagnostic::report(v67);
          }
        }
      }

      if ((v77 & 1) == 0)
      {
        return 0;
      }

      if (v76 != &v77)
      {
        free(v76);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v75;
        v48 = __p;
        if (v75 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v75 = v46;
        operator delete(v48);
      }

      v21 = v72;
      if (!v72)
      {
        goto LABEL_70;
      }

      v49 = v73;
      v23 = v72;
      if (v73 == v72)
      {
        goto LABEL_69;
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

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v81.var0 = "initial_value";
  v81.var1 = 13;
  v52 = mlir::DictionaryAttr::get(&v63, v81);
  if (v52)
  {
    a1[2] = v52;
  }

  v82.var0 = "sym_name";
  v82.var1 = 8;
  v53 = mlir::DictionaryAttr::get(&v63, v82);
  v64 = v53;
  if (!v53)
  {
LABEL_79:
    v83.var0 = "sym_visibility";
    v83.var1 = 14;
    v55 = mlir::DictionaryAttr::get(&v63, v83);
    v64 = v55;
    if (v55)
    {
      if (*(*v55 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(v67, a4);
        goto LABEL_86;
      }

      a1[4] = v55;
    }

    v84.var0 = "type";
    v84.var1 = 4;
    v56 = mlir::DictionaryAttr::get(&v63, v84);
    v64 = v56;
    if (v56)
    {
      if (*(*v56 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a3(v67, a4);
        goto LABEL_86;
      }

      a1[5] = v56;
    }

    return 1;
  }

  if (*(*v53 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[3] = v53;
    goto LABEL_79;
  }

  a3(v67, a4);
LABEL_86:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v54, &v64);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v67);
  return 0;
}

uint64_t mlir::memref::GlobalOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v51[6] = *MEMORY[0x1E69E9840];
  v48 = a1;
  v49 = v51;
  v50 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v48, "alignment", 9, *a2);
  v5 = v50;
  if (v50 >= HIDWORD(v50))
  {
    v36 = NamedAttr;
    v37 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
    v4 = v37;
    NamedAttr = v36;
    v5 = v50;
  }

  v6 = (v49 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v50 + 1;
  LODWORD(v50) = v50 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v48, "constant", 8, v8);
    v11 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v38 = v9;
      v39 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v10 = v39;
      v9 = v38;
      v11 = v50;
    }

    v12 = (v49 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v48, "initial_value", 13, v13);
    v16 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v40 = v14;
      v41 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v15 = v41;
      v14 = v40;
      v16 = v50;
    }

    v17 = (v49 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v48, "sym_name", 8, v18);
    v21 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v42 = v19;
      v43 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v20 = v43;
      v19 = v42;
      v21 = v50;
    }

    v22 = (v49 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v48, "sym_visibility", 14, v23);
    v26 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v44 = v24;
      v45 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v25 = v45;
      v24 = v44;
      v26 = v50;
    }

    v27 = (v49 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v48, "type", 4, v28);
    v31 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v46 = v29;
      v47 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v30 = v47;
      v29 = v46;
      v31 = v50;
    }

    v32 = (v49 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v33 = v49;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v49 == v51)
    {
      return DictionaryAttr;
    }

    goto LABEL_28;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v48, v49, v7);
  v33 = v49;
  if (v49 != v51)
  {
LABEL_28:
    free(v33);
  }

  return DictionaryAttr;
}

unint64_t mlir::memref::GlobalOp::computePropertiesHash(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v2 = HIDWORD(*a1);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v2);
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v11 = a1[5];
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v14 = HIDWORD(v11);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v23, 0, v23, v24, &v22, &v21, &v20, &v19, &v18, &v17);
}

uint64_t mlir::memref::GlobalOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 8)
  {
    if (__n == 4)
    {
      if (!memcmp(__s1, "type", 4uLL))
      {
        return a2[5];
      }
    }

    else if (__n == 8)
    {
      if (!memcmp(__s1, "constant", 8uLL))
      {
        return a2[1];
      }

      if (!memcmp(__s1, "sym_name", 8uLL))
      {
        return a2[3];
      }
    }

    return 0;
  }

  if (__n == 14)
  {
    if (!memcmp(__s1, "sym_visibility", 0xEuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "initial_value", 0xDuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 != 0x6E656D6E67696C61 || *(__s1 + 8) != 116)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::memref::GlobalOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 8)
  {
    if (a3 == 4)
    {
      result = memcmp(__s1, "type", 4uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          v5[5] = v10;
        }

        else
        {
          v5[5] = 0;
        }
      }
    }

    else if (a3 == 8)
    {
      result = memcmp(__s1, "constant", 8uLL);
      if (result)
      {
        result = memcmp(__s1, "sym_name", 8uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[3] = v8;
          }

          else
          {
            v5[3] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }

        v5[1] = v12;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 14)
  {
    result = memcmp(__s1, "sym_visibility", 0xEuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        v5[4] = v9;
      }

      else
      {
        v5[4] = 0;
      }
    }
  }

  else if (a3 == 13)
  {
    result = memcmp(__s1, "initial_value", 0xDuLL);
    if (!result)
    {
      v5[2] = a4;
    }
  }

  else if (a3 == 9 && *__s1 == 0x6E656D6E67696C61 && *(__s1 + 8) == 116)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      *result = v11;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::memref::GlobalOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "alignment", 9, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "constant", 8, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "initial_value", 13, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "sym_name", 8, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "sym_visibility", 14, v8);
  }

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "type", 4, v9);
  }
}

BOOL mlir::memref::GlobalOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(v8, "alignment", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v9, "constant", 8, a3, a4) & 1) != 0)
    {
      mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
      if (!v10 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v10, "sym_name", 8, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
        if (!v11 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v11, "sym_visibility", 0xE, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
          if (!v12 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(v12, "type", 4, a3, a4) & 1) != 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(void *a1, void *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v30 = a1;
    v7 = a4;
    v8 = a5;
    Value = mlir::AffineMapAttr::getValue(&v30);
    isSignlessInteger = mlir::Type::isSignlessInteger(&Value, 64);
    a5 = v8;
    a4 = v7;
    if (isSignlessInteger)
    {
      return 1;
    }
  }

  a4(&Value, a5);
  if (Value)
  {
    LODWORD(v30) = 3;
    v31 = "attribute '";
    v32 = 11;
    v11 = &v30;
    v12 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v28 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v12 = v36;
        v11 = v36 + v28;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v11 = &v30;
        v12 = v36;
      }
    }

    v13 = &v12[24 * v37];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    ++v37;
    if (Value)
    {
      v33 = 261;
      v30 = a2;
      v31 = a3;
      mlir::Diagnostic::operator<<(&v35, &v30);
      if (Value)
      {
        LODWORD(v30) = 3;
        v31 = "' failed to satisfy constraint: 64-bit signless integer attribute";
        v32 = 65;
        v15 = &v30;
        v16 = v36;
        if (v37 >= v38)
        {
          if (v36 <= &v30 && v36 + 24 * v37 > &v30)
          {
            v29 = &v30 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v16 = v36;
            v15 = v36 + v29;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v15 = &v30;
            v16 = v36;
          }
        }

        v17 = &v16[24 * v37];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v37;
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
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

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v10;
}

uint64_t mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = v33 + v25;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: unit attribute";
        v29 = 46;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = v33 + v26;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
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
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

uint64_t mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(uint64_t a1, void *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v34 = a1;
    v7 = a4;
    v8 = a5;
    Value = mlir::AffineMapAttr::getValue(&v34);
    a5 = v8;
    a4 = v7;
    if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      return 1;
    }
  }

  a4(&v34, a5);
  if (v34)
  {
    LODWORD(v30) = 3;
    v31 = "attribute '";
    v32 = 11;
    v10 = &v30;
    v11 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v28 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v11 = v36;
        v10 = v36 + v28;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v10 = &v30;
        v11 = v36;
      }
    }

    v12 = &v11[24 * v37];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v37;
    if (v34)
    {
      v33 = 261;
      v30 = a2;
      v31 = a3;
      mlir::Diagnostic::operator<<(&v35, &v30);
      if (v34)
      {
        LODWORD(v30) = 3;
        v31 = "' failed to satisfy constraint: memref type attribute";
        v32 = 53;
        v14 = &v30;
        v15 = v36;
        if (v37 >= v38)
        {
          if (v36 <= &v30 && v36 + 24 * v37 > &v30)
          {
            v29 = &v30 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v15 = v36;
            v14 = v36 + v29;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v14 = &v30;
            v15 = v36;
          }
        }

        v16 = &v15[24 * v37];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v37;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
  if (v34)
  {
    mlir::InFlightDiagnostic::report(&v34);
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

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v18;
}

uint64_t mlir::memref::GlobalOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x30uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::memref::GlobalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && ((*(*a1 + 56))(a1, v3 + 2) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 3) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 4))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 5) & 1;
  }

  return 0;
}

uint64_t mlir::memref::GlobalOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  (*(*a2 + 24))(a2, v3[12]);
  v4 = v3[13];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::memref::GlobalOp::verifyInvariantsImpl(mlir::memref::GlobalOp *this)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  v5 = v2[3];
  if (v5)
  {
    v6 = v2[5];
    if (v6)
    {
      v8 = v2[1];
      v9 = v2[4];
      v31[0] = *this;
      if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v5, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1) == 0)
      {
        return 0;
      }

      v31[0] = *this;
      if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v9, "sym_visibility", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1) == 0)
      {
        return 0;
      }

      v31[0] = *this;
      if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(v6, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1) == 0)
      {
        return 0;
      }

      v31[0] = *this;
      if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "constant", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1) == 0)
      {
        return 0;
      }

      v31[0] = *this;
      return mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(v3, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1;
    }

    v29[0] = "requires attribute 'type'";
    v30 = 259;
    mlir::OpState::emitOpError(this, v29, v31);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
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

      v19 = __p;
      if (__p)
      {
        v20 = v37;
        v21 = __p;
        if (v37 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v37 = v19;
        operator delete(v21);
      }

      v22 = v34;
      if (v34)
      {
        v23 = v35;
        v24 = v34;
        if (v35 != v34)
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
          v24 = v34;
        }

        v35 = v22;
        operator delete(v24);
      }

      v27 = v32;
      if (v32 != v33)
      {
LABEL_48:
        free(v27);
      }
    }
  }

  else
  {
    v29[0] = "requires attribute 'sym_name'";
    v30 = 259;
    mlir::OpState::emitOpError(this, v29, v31);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
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

      v11 = __p;
      if (__p)
      {
        v12 = v37;
        v13 = __p;
        if (v37 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v37 = v11;
        operator delete(v13);
      }

      v14 = v34;
      if (v34)
      {
        v15 = v35;
        v16 = v34;
        if (v35 != v34)
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
          v16 = v34;
        }

        v35 = v14;
        operator delete(v16);
      }

      v27 = v32;
      if (v32 != v33)
      {
        goto LABEL_48;
      }
    }
  }

  return v10;
}

uint64_t mlir::memref::GlobalOp::parse(mlir::AsmParser *a1, void *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  v7 = (*(*a1 + 472))(a1, &v59, v6);
  if ((v7 & 0x100) != 0)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v8 = v59;
    if (v59)
    {
      v9 = a2[32];
      if (!v9)
      {
        v10 = operator new(0x30uLL);
        *v10 = 0u;
        v10[1] = 0u;
        v10[2] = 0u;
        a2[32] = v10;
        a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
        a2[35] = v67;
        a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
        a2[37] = v67;
        {
          mlir::memref::GlobalOp::readProperties();
        }

        a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
        v9 = a2[32];
        v8 = v59;
      }

      *(v9 + 32) = v8;
    }
  }

  if ((*(*a1 + 408))(a1, "constant", 8))
  {
    v11 = (*(*a1 + 32))(a1);
    UnitAttr = mlir::Builder::getUnitAttr(v11, v12);
    v14 = a2[32];
    if (!v14)
    {
      v15 = operator new(0x30uLL);
      *v15 = 0u;
      v15[1] = 0u;
      v15[2] = 0u;
      a2[32] = v15;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v67;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v67;
      {
        mlir::memref::GlobalOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v14 = a2[32];
    }

    *(v14 + 8) = UnitAttr;
  }

  if (!mlir::AsmParser::parseSymbolName(a1, &v58))
  {
    return 0;
  }

  v16 = v58;
  if (v58)
  {
    v17 = a2[32];
    if (!v17)
    {
      v18 = operator new(0x30uLL);
      *v18 = 0u;
      v18[1] = 0u;
      v18[2] = 0u;
      a2[32] = v18;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v67;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v67;
      {
        mlir::memref::GlobalOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v17 = a2[32];
      v16 = v58;
    }

    *(v17 + 24) = v16;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v63 = 0;
  if (((*(*a1 + 536))(a1, &v63) & 1) == 0)
  {
    return 0;
  }

  v19 = v63;
  if (*(*v63 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v19 = 0;
  }

  v62 = v19;
  if (v19 && mlir::BaseMemRefType::hasRank(&v62))
  {
    Value = mlir::ArrayAttr::getValue(&v62);
    if (!v21)
    {
LABEL_32:
      v23 = mlir::TypeAttr::get(v63);
      if ((*(*a1 + 144))(a1))
      {
        if ((*(*a1 + 408))(a1, "uninitialized", 13))
        {
          Context = mlir::AsmParser::getContext(a1);
          v57 = mlir::UnitAttr::get(Context, v25);
        }

        else
        {
          TensorTypeFromMemRefType = mlir::memref::getTensorTypeFromMemRefType(v62);
          if (((*(*a1 + 440))(a1, &v57, TensorTypeFromMemRefType) & 1) == 0)
          {
            return 0;
          }

          if (!llvm::isa<mlir::ElementsAttr,mlir::Attribute>(&v57))
          {
            v52 = (*(*a1 + 16))(a1);
            v61 = 257;
            (*(*a1 + 24))(v67, a1, v52, v60);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v67, "initial value should be a unit or elements attribute");
            v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v67);
            if (!v54)
            {
              return 0;
            }
          }
        }
      }

      goto LABEL_62;
    }

    v22 = 8 * v21;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_32;
      }
    }
  }

  v26 = (*(*a1 + 16))(a1);
  v61 = 257;
  (*(*a1 + 24))(v67, a1, v26, v60);
  if (v67[0])
  {
    v64 = 3;
    v65 = "type should be static shaped memref, but got ";
    v66 = 45;
    v27 = &v64;
    v28 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v64 && v68 + 24 * v69 > &v64)
      {
        v55 = &v64 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v28 = v68;
        v27 = (v68 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v27 = &v64;
        v28 = v68;
      }
    }

    v29 = &v28[24 * v69];
    v30 = *v27;
    *(v29 + 2) = *(v27 + 2);
    *v29 = v30;
    ++v69;
    if (v67[0])
    {
      v31 = &v64;
      mlir::DiagnosticArgument::DiagnosticArgument(&v64, v63);
      v32 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v64 && v68 + 24 * v69 > &v64)
        {
          v56 = &v64 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v32 = v68;
          v31 = (v68 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v31 = &v64;
          v32 = v68;
        }
      }

      v33 = &v32[24 * v69];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      ++v69;
    }
  }

  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
  if (v67[0])
  {
    mlir::InFlightDiagnostic::report(v67);
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v75;
      v38 = __p;
      if (v75 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v75 = v36;
      operator delete(v38);
    }

    v39 = v72;
    if (v72)
    {
      v40 = v73;
      v41 = v72;
      if (v73 != v72)
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
        v41 = v72;
      }

      v73 = v39;
      operator delete(v41);
    }

    if (v68 != v71)
    {
      free(v68);
    }
  }

  if (!v35)
  {
    return 0;
  }

  v23 = 0;
LABEL_62:
  v44 = a2[32];
  if (!v44)
  {
    v45 = operator new(0x30uLL);
    *v45 = 0u;
    v45[1] = 0u;
    v45[2] = 0u;
    a2[32] = v45;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v67;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v67;
    {
      mlir::memref::GlobalOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v44 = a2[32];
  }

  *(v44 + 40) = v23;
  v46 = v57;
  if (v57)
  {
    v47 = a2[32];
    if (!v47)
    {
      v48 = operator new(0x30uLL);
      *v48 = 0u;
      v48[1] = 0u;
      v48[2] = 0u;
      a2[32] = v48;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v67;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v67;
      {
        mlir::memref::GlobalOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v47 = a2[32];
      v46 = v57;
    }

    *(v47 + 16) = v46;
  }

  v60[0] = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v49 = a2[1];
    v67[0] = a1;
    v67[1] = v60;
    v67[2] = a2;
    if (mlir::memref::GlobalOp::verifyInherentAttrs(v49, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::GlobalOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v67))
    {
      return 1;
    }
  }

  return 0;
}

void mlir::memref::GlobalOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v41[4] = *MEMORY[0x1E69E9840];
  v4 = *this;
  v5 = (*(*this + 11) >> 23) & 1;
  if (*(*this + 2 * v5 + 12))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (v7 >= *(v6 + 3))
    {
      llvm::raw_ostream::write(v6, 32);
    }

    else
    {
      *(v6 + 4) = v7 + 1;
      *v7 = 32;
    }

    (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 12));
    v4 = *this;
    v5 = (*(*this + 11) >> 23) & 1;
  }

  if (*(v4 + 2 * v5 + 9))
  {
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
    if (v10[3] - v11 > 7uLL)
    {
      *v11 = 0x746E6174736E6F63;
      v10[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v10, "constant", 8uLL);
    }
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

  v39 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 11);
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  (*(*a2 + 88))(a2, AttrData, v15);
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
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ":", 1uLL);
  }

  else
  {
    *v19 = 58;
    ++v18[4];
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

  v22 = *this;
  v23 = *this + 64;
  v24 = v23 + 16 * ((*(*this + 11) >> 23) & 1);
  v25 = *(v24 + 16);
  (*(*a2 + 40))(a2, *(v24 + 40));
  if (*(v23 + 16 * ((*(v22 + 11) >> 23) & 1) + 16))
  {
    v26 = (*(*a2 + 16))(a2);
    v27 = v26[4];
    if ((v26[3] - v27) > 2)
    {
      *(v27 + 2) = 32;
      *v27 = 15648;
      v26[4] += 3;
      v28 = *(v23 + 16 * ((*(v22 + 11) >> 23) & 1) + 16);
      if (!v28)
      {
LABEL_31:
        (*(*a2 + 48))(a2, v25);
        goto LABEL_32;
      }
    }

    else
    {
      llvm::raw_ostream::write(v26, " = ", 3uLL);
      v28 = *(v23 + 16 * ((*(v22 + 11) >> 23) & 1) + 16);
      if (!v28)
      {
        goto LABEL_31;
      }
    }

    if (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      goto LABEL_31;
    }

    v36 = (*(*a2 + 16))(a2);
    v37 = v36[4];
    if (v36[3] - v37 > 0xCuLL)
    {
      qmemcpy(v37, "uninitialized", 13);
      v36[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v36, "uninitialized", 0xDuLL);
    }
  }

LABEL_32:
  v39 = v41;
  v41[0] = "sym_visibility";
  v41[1] = 14;
  v41[2] = "constant";
  v41[3] = 8;
  v40 = 0x200000002;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, 3uLL, 16);
  v29 = v39 + 16 * v40;
  *v29 = "sym_name";
  v29[1] = 8;
  v30 = (v40 + 1);
  LODWORD(v40) = v30;
  if (v30 >= HIDWORD(v40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v30 + 1, 16);
    LODWORD(v30) = v40;
  }

  v31 = v39 + 16 * v30;
  *v31 = "type";
  v31[1] = 4;
  v32 = (v40 + 1);
  LODWORD(v40) = v32;
  if (v32 >= HIDWORD(v40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v32 + 1, 16);
    LODWORD(v32) = v40;
  }

  v33 = v39 + 16 * v32;
  *v33 = "initial_value";
  v33[1] = 13;
  LODWORD(v40) = v40 + 1;
  mlir::Attribute::getContext((*this + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v35, v39, v40);
  if (v39 != v41)
  {
    free(v39);
  }
}

uint64_t mlir::memref::MemorySpaceCastOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v12[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, v12))
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, &v6))
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

uint64_t mlir::memref::detail::PrefetchOpGenericAdaptorBase::PrefetchOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 48), 0, 0);
  }

  return a1;
}

uint64_t mlir::memref::PrefetchOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v86 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v70 = v6;
  if (!v6)
  {
    a3(&v74, a4);
    if (v74)
    {
      v71 = 3;
      v72 = "expected DictionaryAttr to set properties";
      v73 = 41;
      v22 = &v71;
      v23 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v63 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v23 = v76;
          v22 = (v76 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v22 = &v71;
          v23 = v76;
        }
      }

      v24 = &v23[24 * v77];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      ++v77;
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }
    }

    if (v85 != 1)
    {
      return 0;
    }

    if (v84 != &v85)
    {
      free(v84);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v83;
      v28 = __p;
      if (v83 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v83 = v26;
      operator delete(v28);
    }

    v29 = v80;
    if (!v80)
    {
      goto LABEL_81;
    }

    v30 = v81;
    v31 = v80;
    if (v81 == v80)
    {
      goto LABEL_80;
    }

    do
    {
      v33 = *--v30;
      v32 = v33;
      *v30 = 0;
      if (v33)
      {
        operator delete[](v32);
      }
    }

    while (v30 != v29);
    goto LABEL_79;
  }

  v87.var0 = "isDataCache";
  v87.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v70, v87);
  if (v8)
  {
    v9 = v8;
    if (!mlir::BoolAttr::classof(v8))
    {
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 56;
        v34 = &v71;
        v35 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v64 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v35 = v76;
            v34 = (v76 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v34 = &v71;
            v35 = v76;
          }
        }

        v36 = &v35[24 * v77];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        ++v77;
        if (v74)
        {
          v38 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v9);
          v39 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v66 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v39 = v76;
              v38 = (v76 + v66);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v38 = &v71;
              v39 = v76;
            }
          }

          v40 = &v39[24 * v77];
          v41 = *v38;
          *(v40 + 2) = *(v38 + 2);
          *v40 = v41;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if ((v85 & 1) == 0)
      {
        return 0;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v42 = __p;
      if (__p)
      {
        v43 = v83;
        v44 = __p;
        if (v83 != __p)
        {
          do
          {
            v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
          }

          while (v43 != v42);
          v44 = __p;
        }

        v83 = v42;
        operator delete(v44);
      }

      v29 = v80;
      if (!v80)
      {
        goto LABEL_81;
      }

      v45 = v81;
      v31 = v80;
      if (v81 == v80)
      {
        goto LABEL_80;
      }

      do
      {
        v47 = *--v45;
        v46 = v47;
        *v45 = 0;
        if (v47)
        {
          operator delete[](v46);
        }
      }

      while (v45 != v29);
      goto LABEL_79;
    }

    *a1 = v9;
  }

  v88.var0 = "isWrite";
  v88.var1 = 7;
  v10 = mlir::DictionaryAttr::get(&v70, v88);
  if (v10)
  {
    v11 = v10;
    if (mlir::BoolAttr::classof(v10))
    {
      a1[1] = v11;
      goto LABEL_11;
    }

    a3(&v74, a4);
    if (v74)
    {
      v71 = 3;
      v73 = 52;
      v48 = &v71;
      v49 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v65 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v49 = v76;
          v48 = (v76 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v48 = &v71;
          v49 = v76;
        }
      }

      v50 = &v49[24 * v77];
      v51 = *v48;
      *(v50 + 2) = *(v48 + 2);
      *v50 = v51;
      ++v77;
      if (v74)
      {
        v52 = &v71;
        mlir::DiagnosticArgument::DiagnosticArgument(&v71, v11);
        v53 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v68 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v53 = v76;
            v52 = (v76 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v52 = &v71;
            v53 = v76;
          }
        }

        v54 = &v53[24 * v77];
        v55 = *v52;
        *(v54 + 2) = *(v52 + 2);
        *v54 = v55;
        ++v77;
        if (v74)
        {
          mlir::InFlightDiagnostic::report(&v74);
        }
      }
    }

    if ((v85 & 1) == 0)
    {
      return 0;
    }

    if (v84 != &v85)
    {
      free(v84);
    }

    v56 = __p;
    if (__p)
    {
      v57 = v83;
      v58 = __p;
      if (v83 != __p)
      {
        do
        {
          v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
        }

        while (v57 != v56);
        v58 = __p;
      }

      v83 = v56;
      operator delete(v58);
    }

    v29 = v80;
    if (!v80)
    {
LABEL_81:
      if (v76 != v79)
      {
        free(v76);
      }

      return 0;
    }

    v59 = v81;
    v31 = v80;
    if (v81 == v80)
    {
LABEL_80:
      v81 = v29;
      operator delete(v31);
      goto LABEL_81;
    }

    do
    {
      v61 = *--v59;
      v60 = v61;
      *v59 = 0;
      if (v61)
      {
        operator delete[](v60);
      }
    }

    while (v59 != v29);
LABEL_79:
    v31 = v80;
    goto LABEL_80;
  }

LABEL_11:
  v89.var0 = "localityHint";
  v89.var1 = 12;
  v12 = mlir::DictionaryAttr::get(&v70, v89);
  if (!v12)
  {
    return 1;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[2] = v12;
    return 1;
  }

  v13 = v12;
  a3(&v74, a4);
  if (v74)
  {
    v71 = 3;
    v73 = 57;
    v14 = &v71;
    v15 = v76;
    if (v77 >= v78)
    {
      if (v76 <= &v71 && v76 + 24 * v77 > &v71)
      {
        v67 = &v71 - v76;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v15 = v76;
        v14 = (v76 + v67);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v14 = &v71;
        v15 = v76;
      }
    }

    v16 = &v15[24 * v77];
    v17 = *v14;
    *(v16 + 2) = *(v14 + 2);
    *v16 = v17;
    ++v77;
    if (v74)
    {
      v18 = &v71;
      mlir::DiagnosticArgument::DiagnosticArgument(&v71, v13);
      v19 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v69 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v19 = v76;
          v18 = (v76 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v18 = &v71;
          v19 = v76;
        }
      }

      v20 = &v19[24 * v77];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      ++v77;
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }
    }
  }

  if (v85 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v75);
  }

  return 0;
}

uint64_t mlir::memref::PrefetchOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v27 = a1;
  v28 = v30;
  v29 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "isDataCache", 11, *a2);
  v5 = v29;
  if (v29 >= HIDWORD(v29))
  {
    v21 = NamedAttr;
    v22 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
    v4 = v22;
    NamedAttr = v21;
    v5 = v29;
  }

  v6 = (v28 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v29 + 1;
  LODWORD(v29) = v29 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v27, "isWrite", 7, v8);
    v11 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v23 = v9;
      v24 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v10 = v24;
      v9 = v23;
      v11 = v29;
    }

    v12 = (v28 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v27, "localityHint", 12, v13);
    v16 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v25 = v14;
      v26 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v15 = v26;
      v14 = v25;
      v16 = v29;
    }

    v17 = (v28 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

  v18 = v28;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v28 == v30)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v27, v28, v7);
  v18 = v28;
  if (v28 != v30)
  {
LABEL_16:
    free(v18);
  }

  return DictionaryAttr;
}

unint64_t mlir::memref::PrefetchOp::computePropertiesHash(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v12[0] = v3;
  v12[1] = v6;
  v11 = 0;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v12, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v12, v11, v9, v14);
}

uint64_t mlir::memref::PrefetchOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 7)
  {
    if (!memcmp(__s1, "isWrite", 7uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "localityHint", 0xCuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 11)
  {
    return 0;
  }

  if (*__s1 != 0x6143617461447369 || *(__s1 + 3) != 0x6568636143617461)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::memref::PrefetchOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 7)
  {
    result = memcmp(__s1, "isWrite", 7uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::BoolAttr::classof(a4);
        if (result)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[1] = v8;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "localityHint", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        v5[2] = v7;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else if (a3 == 11 && *__s1 == 0x6143617461447369 && *(__s1 + 3) == 0x6568636143617461)
  {
    if (a4)
    {
      result = mlir::BoolAttr::classof(a4);
      if (result)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *v5 = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::memref::PrefetchOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "isDataCache", 11, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "isWrite", 7, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "localityHint", 12, v6);
  }
}

BOOL mlir::memref::PrefetchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v8, "isDataCache", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v9, "isWrite", 7, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(v10, "localityHint", 0xC, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(void *a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v32 = a1;
    Value = mlir::AffineMapAttr::getValue(&v32);
    if (mlir::Type::isSignlessInteger(&Value, 32))
    {
      v31 = a1;
      if ((mlir::IntegerAttr::getInt(&v31) & 0x8000000000000000) == 0)
      {
        v30 = a1;
        if (mlir::IntegerAttr::getInt(&v30) <= 3)
        {
          return 1;
        }
      }
    }
  }

  a4(&Value, a5);
  if (Value)
  {
    LODWORD(v32) = 3;
    v33 = "attribute '";
    v34 = 11;
    v10 = &v32;
    v11 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v28 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v11 = v38;
        v10 = v38 + v28;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v10 = &v32;
        v11 = v38;
      }
    }

    v12 = &v11[24 * v39];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v39;
    if (Value)
    {
      v35 = 261;
      v32 = a2;
      v33 = a3;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (Value)
      {
        LODWORD(v32) = 3;
        v33 = "' failed to satisfy constraint: 32-bit signless integer attribute whose minimum value is 0 whose maximum value is 3";
        v34 = 115;
        v14 = &v32;
        v15 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v29 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v15 = v38;
            v14 = v38 + v29;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v14 = &v32;
            v15 = v38;
          }
        }

        v16 = &v15[24 * v39];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v39;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v45;
      v21 = __p;
      if (v45 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v45 = v19;
      operator delete(v21);
    }

    v22 = v42;
    if (v42)
    {
      v23 = v43;
      v24 = v42;
      if (v43 != v42)
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
        v24 = v42;
      }

      v43 = v22;
      operator delete(v24);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v18;
}

uint64_t mlir::memref::PrefetchOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(a1, a2[32]))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v8;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v7;
    {
      mlir::memref::PrefetchOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(a1, v3 + 1))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 2) & 1;
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::BoolAttr::classof(v36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BoolAttr]";
  v38 = 64;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
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
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

uint64_t mlir::memref::PrefetchOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::memref::PrefetchOp::verifyInvariantsImpl(mlir::memref::PrefetchOp *this)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = v1 + 64;
  v3 = v4;
  if (!v4)
  {
    v43[0] = "requires attribute 'isDataCache'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 != 1)
    {
      return v10;
    }

    if (v52 != &v53)
    {
      free(v52);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v51;
      v13 = __p;
      if (v51 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v51 = v11;
      operator delete(v13);
    }

    v14 = v48;
    if (v48)
    {
      v15 = v49;
      v16 = v48;
      if (v49 == v48)
      {
        goto LABEL_57;
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
LABEL_56:
      v16 = v48;
LABEL_57:
      v49 = v14;
      operator delete(v16);
    }

LABEL_58:
    if (v46 != &v47)
    {
      free(v46);
    }

    return v10;
  }

  v5 = *(v2 + 8);
  if (!v5)
  {
    v43[0] = "requires attribute 'isWrite'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 != 1)
    {
      return v10;
    }

    if (v52 != &v53)
    {
      free(v52);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v51;
      v21 = __p;
      if (v51 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v51 = v19;
      operator delete(v21);
    }

    v14 = v48;
    if (v48)
    {
      v22 = v49;
      v16 = v48;
      if (v49 == v48)
      {
        goto LABEL_57;
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

      while (v22 != v14);
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v6 = *(v2 + 16);
  if (!v6)
  {
    v43[0] = "requires attribute 'localityHint'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 != 1)
    {
      return v10;
    }

    if (v52 != &v53)
    {
      free(v52);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v51;
      v27 = __p;
      if (v51 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v51 = v25;
      operator delete(v27);
    }

    v14 = v48;
    if (v48)
    {
      v28 = v49;
      v16 = v48;
      if (v49 == v48)
      {
        goto LABEL_57;
      }

      do
      {
        v30 = *--v28;
        v29 = v30;
        *v28 = 0;
        if (v30)
        {
          operator delete[](v29);
        }
      }

      while (v28 != v14);
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v45[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v5, "isWrite", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45) & 1) == 0)
  {
    return 0;
  }

  v45[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(v6, "localityHint", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45) & 1) == 0)
  {
    return 0;
  }

  v45[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v3, "isDataCache", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45) & 1) == 0)
  {
    return 0;
  }

  ODSOperands = mlir::memref::PrefetchOp::getODSOperands(this, 0, v8, v9);
  if (v33)
  {
    v36 = v33;
    v37 = 0;
    v38 = ODSOperands + 24;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, *(*v38 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v37) & 1) != 0)
    {
      ++v37;
      v38 += 32;
      if (v36 == v37)
      {
        goto LABEL_67;
      }
    }

    return 0;
  }

  LODWORD(v37) = 0;
LABEL_67:
  v10 = 1;
  v39 = mlir::memref::PrefetchOp::getODSOperands(this, 1u, v34, v35);
  if (v40)
  {
    v41 = v40;
    for (i = v39 + 24; (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*i + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v37) & 1) != 0; i += 32)
    {
      LODWORD(v37) = v37 + 1;
      v10 = 1;
      if (!--v41)
      {
        return v10;
      }
    }

    return 0;
  }

  return v10;
}

uint64_t mlir::memref::RankOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v11[0] = &v12;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10 = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, &v10))
  {
    return 0;
  }

  v12 = v10;
  v5 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v8 + 1, 8);
    LODWORD(v8) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v8) = IndexType;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v11, v4, a2 + 16) & 1;
}

BOOL mlir::memref::ReallocOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::memref::ReallocOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256));
}

BOOL mlir::memref::ReallocOp::verifyInvariantsImpl(mlir::memref::ReallocOp *this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v41[0] = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v3, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0 || (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps13(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v6 = -1;
    goto LABEL_5;
  }

  v5 = *(v4 + 68);
  v6 = v5 - 1;
  if ((v5 - 1) <= 1)
  {
    if (v5 == 1)
    {
LABEL_31:
      if (*(v4 + 36))
      {
        v31 = v4 - 16;
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
      return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps13(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    if (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(v4, *(*(*(v4 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      v4 = *this;
      goto LABEL_31;
    }

    return 0;
  }

LABEL_5:
  v36 = "operand group starting at #";
  v37 = 259;
  mlir::OpState::emitOpError(this, &v36, v41);
  if (v41[0])
  {
    v38 = 5;
    v39 = 1;
    v7 = &v38;
    v8 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v38 && v42 + 24 * v43 > &v38)
      {
        v33 = &v38 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v8 = v42;
        v7 = (v42 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v7 = &v38;
        v8 = v42;
      }
    }

    v9 = &v8[24 * v43];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v43;
    if (v41[0])
    {
      v38 = 3;
      v39 = " requires 0 or 1 element, but found ";
      v40 = 36;
      v12 = &v38;
      v13 = v42;
      if (v11 >= v44)
      {
        if (v42 <= &v38 && v42 + 24 * v11 > &v38)
        {
          v34 = &v38 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v11 + 1, 24);
          v13 = v42;
          v12 = (v42 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v11 + 1, 24);
          v12 = &v38;
          v13 = v42;
        }
      }

      v14 = &v13[24 * v43];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v43;
      if (v41[0])
      {
        v38 = 5;
        v39 = v6;
        v17 = &v38;
        v18 = v42;
        if (v16 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v16 > &v38)
          {
            v35 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v16 + 1, 24);
            v18 = v42;
            v17 = (v42 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v16 + 1, 24);
            v17 = &v38;
            v18 = v42;
          }
        }

        v19 = &v18[24 * v43];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v43;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  v22 = result;
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
    result = v22;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v22;
    }

    v23 = __p;
    if (__p)
    {
      v24 = v49;
      v25 = __p;
      if (v49 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v49 = v23;
      operator delete(v25);
      result = v22;
    }

    v26 = v46;
    if (v46)
    {
      v27 = v47;
      v28 = v46;
      if (v47 != v46)
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
        v28 = v46;
      }

      v47 = v26;
      operator delete(v28);
      result = v22;
    }

    if (v42 != v45)
    {
      free(v42);
      return v22;
    }
  }

  return result;
}

uint64_t mlir::memref::__mlir_ods_local_type_constraint_MemRefOps13(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v100 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_2;
  }

  v37 = a1;
  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v9 + 8);
    v40 = *(v9 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v48 = v9;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v48 + 8);
    v40 = *(v48 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  v41 = v39;
  v42 = v40;
  do
  {
    v43 = v42 >> 1;
    v44 = &v41[2 * (v42 >> 1)];
    v46 = *v44;
    v45 = v44 + 2;
    v42 += ~(v42 >> 1);
    if (v46 < v38)
    {
      v41 = v45;
    }

    else
    {
      v42 = v43;
    }
  }

  while (v42);
  if (v41 == &v39[2 * v40] || *v41 != v38)
  {
LABEL_56:
    v88 = a2;
    v89 = 0;
    mlir::ElementsAttr::isSplat(&v88);
    v49 = *a2;
    {
      goto LABEL_57;
    }

LABEL_66:
    v81 = v49;
    mlir::arith::ExtUIOp::fold();
    v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v51 = *(v81 + 8);
    v52 = *(v81 + 16);
    if (!v52)
    {
      goto LABEL_69;
    }

    goto LABEL_58;
  }

  v59 = v41[1];
  v88 = a2;
  v89 = v59;
  mlir::ElementsAttr::isSplat(&v88);
  v49 = *a2;
  {
    goto LABEL_66;
  }

LABEL_57:
  v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v51 = *(v49 + 8);
  v52 = *(v49 + 16);
  if (!v52)
  {
    goto LABEL_69;
  }

LABEL_58:
  v53 = v51;
  v54 = v52;
  do
  {
    v55 = v54 >> 1;
    v56 = &v53[2 * (v54 >> 1)];
    v58 = *v56;
    v57 = v56 + 2;
    v54 += ~(v54 >> 1);
    if (v58 < v50)
    {
      v53 = v57;
    }

    else
    {
      v54 = v55;
    }
  }

  while (v54);
  if (v53 != &v51[2 * v52] && *v53 == v50)
  {
    v61 = v53[1];
    v82 = a2;
    v83 = v61;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v82);
    a1 = v37;
    if (!ArgOperands)
    {
      goto LABEL_2;
    }

    goto LABEL_72;
  }

LABEL_69:
  v82 = a2;
  v83 = 0;
  v60 = mlir::CallOpInterface::getArgOperands(&v82);
  a1 = v37;
  if (!v60)
  {
    goto LABEL_2;
  }

LABEL_72:
  v63 = *a2;
  {
    v64 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v65 = *(v63 + 8);
    v66 = *(v63 + 16);
    if (!v66)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v73 = v63;
    mlir::arith::ExtUIOp::fold();
    v64 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v65 = *(v73 + 8);
    v66 = *(v73 + 16);
    if (!v66)
    {
      goto LABEL_84;
    }
  }

  v67 = v65;
  v68 = v66;
  do
  {
    v69 = v68 >> 1;
    v70 = &v67[2 * (v68 >> 1)];
    v72 = *v70;
    v71 = v70 + 2;
    v68 += ~(v68 >> 1);
    if (v72 < v64)
    {
      v67 = v71;
    }

    else
    {
      v68 = v69;
    }
  }

  while (v68);
  if (v67 == &v65[2 * v66] || *v67 != v64)
  {
LABEL_84:
    v85 = a2;
    v86 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v85);
    a1 = v37;
    if (v74 == 1)
    {
      return 1;
    }

    goto LABEL_2;
  }

  v75 = v67[1];
  v85 = a2;
  v86 = v75;
  mlir::CallableOpInterface::getArgAttrsAttr(&v85);
  a1 = v37;
  if (v76 == 1)
  {
    return 1;
  }

LABEL_2:
  v84 = 261;
  v82 = a3;
  v83 = a4;
  mlir::Operation::emitOpError(a1, &v82, &v88);
  if (v88)
  {
    LODWORD(v85) = 3;
    v86 = " #";
    v87 = 2;
    v10 = &v85;
    v11 = v90;
    if (v91 >= v92)
    {
      if (v90 <= &v85 && v90 + 24 * v91 > &v85)
      {
        v77 = &v85 - v90;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
        v11 = v90;
        v10 = v90 + v77;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
        v10 = &v85;
        v11 = v90;
      }
    }

    v12 = &v11[24 * v91];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    v14 = ++v91;
    if (v88)
    {
      LODWORD(v85) = 5;
      v86 = a5;
      v15 = &v85;
      v16 = v90;
      if (v14 >= v92)
      {
        if (v90 <= &v85 && v90 + 24 * v14 > &v85)
        {
          v78 = &v85 - v90;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v14 + 1, 24);
          v16 = v90;
          v15 = v90 + v78;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v14 + 1, 24);
          v15 = &v85;
          v16 = v90;
        }
      }

      v17 = &v16[24 * v91];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
      v19 = ++v91;
      if (v88)
      {
        LODWORD(v85) = 3;
        v86 = " must be 1D memref of any type values, but got ";
        v87 = 47;
        v20 = &v85;
        v21 = v90;
        if (v19 >= v92)
        {
          if (v90 <= &v85 && v90 + 24 * v19 > &v85)
          {
            v79 = &v85 - v90;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v19 + 1, 24);
            v21 = v90;
            v20 = v90 + v79;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v19 + 1, 24);
            v20 = &v85;
            v21 = v90;
          }
        }

        v22 = &v21[24 * v91];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v91;
        if (v88)
        {
          v24 = &v85;
          mlir::DiagnosticArgument::DiagnosticArgument(&v85, a2);
          v25 = v90;
          if (v91 >= v92)
          {
            if (v90 <= &v85 && v90 + 24 * v91 > &v85)
            {
              v80 = &v85 - v90;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
              v25 = v90;
              v24 = v90 + v80;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
              v24 = &v85;
              v25 = v90;
            }
          }

          v26 = &v25[24 * v91];
          v27 = *v24;
          *(v26 + 2) = *(v24 + 2);
          *v26 = v27;
          ++v91;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v88);
  if (v88)
  {
    mlir::InFlightDiagnostic::report(&v88);
  }

  if (v99 == 1)
  {
    if (v98 != &v99)
    {
      free(v98);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v97;
      v31 = __p;
      if (v97 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v97 = v29;
      operator delete(v31);
    }

    v32 = v94;
    if (v94)
    {
      v33 = v95;
      v34 = v94;
      if (v95 != v94)
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
        v34 = v94;
      }

      v95 = v32;
      operator delete(v34);
    }

    if (v90 != v93)
    {
      free(v90);
    }
  }

  return v28;
}

uint64_t mlir::memref::ReallocOp::parse(uint64_t a1, uint64_t a2)
{
  v36[16] = *MEMORY[0x1E69E9840];
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24[0] = v25;
  v24[1] = 1;
  v34 = v36;
  v35 = 0x400000000;
  v22[1] = 1;
  v23 = 0;
  v22[0] = &v23;
  v31 = &v33;
  v32 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v25, 1) & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((*(*a1 + 288))(a1))
  {
    (*(*a1 + 40))(a1);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v5 = (*(*a1 + 712))(a1, &v27, 1);
    if ((v5 & 0x100) != 0)
    {
      if ((v5 & 1) == 0)
      {
        goto LABEL_21;
      }

      v6 = &v27;
      v7 = v34;
      if (v35 >= HIDWORD(v35))
      {
        if (v34 <= &v27 && v34 + 32 * v35 > &v27)
        {
          v20 = &v27 - v34;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v35 + 1, 32);
          v7 = v34;
          v6 = (v34 + v20);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v35 + 1, 32);
          v6 = &v27;
          v7 = v34;
        }
      }

      v8 = &v7[32 * v35];
      v9 = *(v6 + 1);
      *v8 = *v6;
      *(v8 + 1) = v9;
      LODWORD(v35) = v35 + 1;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v21 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_21;
  }

  v10 = *(a2 + 8);
  v27 = a1;
  v28 = &v21;
  v29 = a2;
  v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96));
  if (v11)
  {
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v11, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ReallocOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v27) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v27 = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, &v27))
  {
    goto LABEL_21;
  }

  v23 = v27;
  v30 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &v27) & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((mlir::AsmParser::parseTypeList(a1, &v31) & 1) == 0)
  {
    goto LABEL_21;
  }

  v12 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v12, v13);
  mlir::OperationState::addTypes(a2, v31, v32);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v24, v22, v4, a2 + 16) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v35)
  {
    v15 = v34;
    v16 = 32 * v35;
    while (((*(*a1 + 728))(a1, v15, IndexType, a2 + 16) & 1) != 0)
    {
      v15 += 32;
      v17 = 1;
      v16 -= 32;
      if (!v16)
      {
        goto LABEL_22;
      }
    }

LABEL_21:
    v17 = 0;
LABEL_22:
    v18 = v31;
    if (v31 != &v33)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v17 = 1;
  v18 = v31;
  if (v31 != &v33)
  {
LABEL_23:
    free(v18);
  }

LABEL_24:
  if (v34 != v36)
  {
    free(v34);
  }

  return v17;
}

void mlir::memref::ReallocOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v41[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  if (*(*this + 17) == 1 || !*(*(*this + 9) + 56))
  {
    goto LABEL_15;
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, "(", 1uLL);
    v8 = *this;
    if (*(*this + 17) == 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (*(*(v8 + 9) + 56))
    {
      (*(*a2 + 160))(a2);
    }

    goto LABEL_12;
  }

  *v7 = 40;
  ++v6[4];
  v8 = *this;
  if (*(*this + 17) != 1)
  {
    goto LABEL_10;
  }

LABEL_12:
  v9 = (*(*a2 + 16))(a2);
  v10 = v9[4];
  if (v9[3] == v10)
  {
    llvm::raw_ostream::write(v9, ")", 1uLL);
  }

  else
  {
    *v10 = 41;
    ++v9[4];
  }

LABEL_15:
  v39 = v41;
  v40 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v12, v39, v40);
  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = v15[4];
  if (v15[3] == v16)
  {
    llvm::raw_ostream::write(v15, ":", 1uLL);
  }

  else
  {
    *v16 = 58;
    ++v15[4];
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = v21[4];
  if (v21[3] - v22 > 1uLL)
  {
    *v22 = 28532;
    v21[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, "to", 2uLL);
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = *(*this + 9);
  v26 = *this - 16;
  if (!v25)
  {
    v26 = 0;
  }

  v38[0] = v26;
  v38[1] = v25;
  mlir::OperandRange::getTypes(v38, &AttrDictionary);
  v27 = v36;
  v28 = v37;
  if (v36 != v37)
  {
    v29 = AttrDictionary;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v36);
    (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    for (i = v27 + 1; v28 != i; ++i)
    {
      v33 = (*(*a2 + 16))(a2);
      v34 = v33[4];
      if (v33[3] - v34 > 1uLL)
      {
        *v34 = 8236;
        v33[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v33, ", ", 2uLL);
      }

      v32 = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, i);
      (*(*a2 + 32))(a2, *(v32 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v39 != v41)
  {
    free(v39);
  }
}

void mlir::memref::ReallocOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v12 = a2;
    v13 = a1;
    mlir::memref::DeallocOp::getEffects();
    a1 = v13;
    a2 = v12;
  }

  v24 = *(*a1 + 72);
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Free>(void)::instance;
  v23 = 0;
  v22 = 1;
  {
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
      goto LABEL_5;
    }

LABEL_10:
    v16 = a2;
    v17 = a1;
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v25, &v24, &v23, &v22, &v21);
    a1 = v17;
    a2 = v16;
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v14 = a2;
  v15 = a1;
  llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>();
  a1 = v15;
  a2 = v14;
  v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v2 = *(v14 + 8);
  if (v2 >= *(v14 + 12))
  {
    goto LABEL_10;
  }

LABEL_5:
  v3 = *a2 + 40 * v2;
  v4 = v24;
  v5 = v23;
  v6 = v22;
  *v3 = v25;
  *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v3 + 24) = 0;
  *(v3 + 32) = v5;
  *(v3 + 36) = v6;
  ++*(a2 + 8);
  {
    goto LABEL_6;
  }

LABEL_11:
  v18 = a2;
  v19 = a1;
  mlir::memref::ReallocOp::getEffects();
  a1 = v19;
  a2 = v18;
LABEL_6:
  v24 = *a1 - 16;
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>(void)::instance;
  v23 = 1;
  v22 = 1;
  {
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v7 = *(a2 + 8);
    if (v7 < *(a2 + 12))
    {
LABEL_8:
      v8 = *a2 + 40 * v7;
      v9 = v24;
      v10 = v23;
      v11 = v22;
      *v8 = v25;
      *(v8 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v8 + 16) = v9 & 0xFFFFFFFFFFFFFFF9 | 4;
      *(v8 + 24) = 0;
      *(v8 + 32) = v10;
      *(v8 + 36) = v11;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v20 = a2;
    mlir::memref::AtomicRMWOp::getEffects();
    a2 = v20;
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v7 = *(v20 + 8);
    if (v7 < *(v20 + 12))
    {
      goto LABEL_8;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v25, &v24, &v23, &v22, &v21);
}

uint64_t mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::ReinterpretCastOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 64), 0, 0);
  }

  return a1;
}

unint64_t mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(mlir::memref::ReinterpretCastOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 88);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 104);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 88);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

BOOL mlir::memref::ReinterpretCastOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v71 = v6;
  if (!v6)
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v73 = "expected DictionaryAttr to set properties";
      v74 = 41;
      v16 = &v72;
      v17 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v64 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v17 = v77;
          v16 = (v77 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v16 = &v72;
          v17 = v77;
        }
      }

      v18 = &v17[24 * v78];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v78;
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
      }
    }

    if (v86 != 1)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v84;
      v22 = __p;
      if (v84 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v84 = v20;
      operator delete(v22);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v24 = v82;
    v25 = v81;
    if (v82 == v81)
    {
LABEL_77:
      v82 = v23;
      operator delete(v25);
LABEL_78:
      if (v77 != v80)
      {
        free(v77);
      }

      return 0;
    }

    do
    {
      v27 = *--v24;
      v26 = v27;
      *v24 = 0;
      if (v27)
      {
        operator delete[](v26);
      }
    }

    while (v24 != v23);
LABEL_76:
    v25 = v81;
    goto LABEL_77;
  }

  v88.var0 = "static_offsets";
  v88.var1 = 14;
  v8 = mlir::DictionaryAttr::get(&v71, v88);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v8))
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v74 = 59;
      v28 = &v72;
      v29 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v65 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v29 = v77;
          v28 = (v77 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v28 = &v72;
          v29 = v77;
        }
      }

      v30 = &v29[24 * v78];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v78;
      if (v75)
      {
        v32 = &v72;
        mlir::DiagnosticArgument::DiagnosticArgument(&v72, v9);
        v33 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v67 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v33 = v77;
            v32 = (v77 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v32 = &v72;
            v33 = v77;
          }
        }

        v34 = &v33[24 * v78];
        v35 = *v32;
        *(v34 + 2) = *(v32 + 2);
        *v34 = v35;
        ++v78;
        if (v75)
        {
          mlir::InFlightDiagnostic::report(&v75);
        }
      }
    }

    if ((v86 & 1) == 0)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v84;
      v38 = __p;
      if (v84 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v84 = v36;
      operator delete(v38);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v39 = v82;
    v25 = v81;
    if (v82 == v81)
    {
      goto LABEL_77;
    }

    do
    {
      v41 = *--v39;
      v40 = v41;
      *v39 = 0;
      if (v41)
      {
        operator delete[](v40);
      }
    }

    while (v39 != v23);
    goto LABEL_76;
  }

  *a1 = v9;
LABEL_8:
  v89.var0 = "static_sizes";
  v89.var1 = 12;
  v10 = mlir::DictionaryAttr::get(&v71, v89);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v10))
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v74 = 57;
      v42 = &v72;
      v43 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v66 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v43 = v77;
          v42 = (v77 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v42 = &v72;
          v43 = v77;
        }
      }

      v44 = &v43[24 * v78];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v78;
      if (v75)
      {
        v46 = &v72;
        mlir::DiagnosticArgument::DiagnosticArgument(&v72, v11);
        v47 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v69 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v47 = v77;
            v46 = (v77 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v46 = &v72;
            v47 = v77;
          }
        }

        v48 = &v47[24 * v78];
        v49 = *v46;
        *(v48 + 2) = *(v46 + 2);
        *v48 = v49;
        ++v78;
        if (v75)
        {
          mlir::InFlightDiagnostic::report(&v75);
        }
      }
    }

    if ((v86 & 1) == 0)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v84;
      v52 = __p;
      if (v84 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v84 = v50;
      operator delete(v52);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v53 = v82;
    v25 = v81;
    if (v82 == v81)
    {
      goto LABEL_77;
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

    while (v53 != v23);
    goto LABEL_76;
  }

  a1[1] = v11;
LABEL_11:
  v90.var0 = "static_strides";
  v90.var1 = 14;
  v12 = mlir::DictionaryAttr::get(&v71, v90);
  if (v12)
  {
    v13 = v12;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v12))
    {
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 59;
        v56 = &v72;
        v57 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v68 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v57 = v77;
            v56 = (v77 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v56 = &v72;
            v57 = v77;
          }
        }

        v58 = &v57[24 * v78];
        v59 = *v56;
        *(v58 + 2) = *(v56 + 2);
        *v58 = v59;
        ++v78;
        if (v75)
        {
          v60 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v13);
          v61 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v70 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v61 = v77;
              v60 = (v77 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v60 = &v72;
              v61 = v77;
            }
          }

          v62 = &v61[24 * v78];
          v63 = *v60;
          *(v62 + 2) = *(v60 + 2);
          *v62 = v63;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if (v86 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v76);
      }

      return 0;
    }

    a1[2] = v13;
  }

  v91.var0 = "operandSegmentSizes";
  v91.var1 = 19;
  v14 = mlir::DictionaryAttr::get(&v71, v91);
  if (!v14)
  {
    v92.var0 = "operand_segment_sizes";
    v92.var1 = 21;
    v14 = mlir::DictionaryAttr::get(&v71, v92);
    if (!v14)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 3, 4, v14, a3, a4) & 1) != 0;
}

uint64_t mlir::memref::ReinterpretCastOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v36 = a1;
  v37 = v39;
  v38 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v36, "static_offsets", 14, *a2);
    v6 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v30 = NamedAttr;
      v31 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v5 = v31;
      NamedAttr = v30;
      v6 = v38;
    }

    v7 = (v37 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v38) = v38 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v36, "static_sizes", 12, v8);
    v11 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v32 = v9;
      v33 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v10 = v33;
      v9 = v32;
      v11 = v38;
    }

    v12 = (v37 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v38) = v38 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v36, "static_strides", 14, v13);
    v16 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v34 = v14;
      v35 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v15 = v35;
      v14 = v34;
      v16 = v38;
    }

    v17 = (v37 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v38) = v38 + 1;
  }

  v18 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 4);
  v19 = mlir::Builder::getNamedAttr(&v36, "operandSegmentSizes", 19, v18);
  v21 = v38;
  if (v38 >= HIDWORD(v38))
  {
    v28 = v19;
    v29 = v20;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
    v20 = v29;
    v19 = v28;
    v21 = v38;
  }

  v22 = (v37 + 16 * v21);
  *v22 = v19;
  v22[1] = v20;
  v23 = __CFADD__(v38, 1);
  v24 = (v38 + 1);
  LODWORD(v38) = v38 + 1;
  if (v23)
  {
    DictionaryAttr = 0;
    v26 = v37;
    if (v37 == v39)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v36, v37, v24);
  v26 = v37;
  if (v37 != v39)
  {
LABEL_20:
    free(v26);
  }

  return DictionaryAttr;
}

unint64_t mlir::memref::ReinterpretCastOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = a1[4];
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (a1[3] ^ 0xFF51AFD7ED558CCDLL ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12 ^ v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::memref::ReinterpretCastOp::getInherentAttr(uint64_t *a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 18)
  {
    if (__n == 19)
    {
      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 4);
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "static_sizes", 0xCuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x6F5F636974617473 || *(__s1 + 6) != 0x7374657366666F5FLL)
  {
    if (!memcmp(__s1, "static_strides", 0xEuLL))
    {
      return a2[2];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::memref::ReinterpretCastOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      v8 = result ? a4 : 0;
      v12 = v8;
      if (v8)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v12);
        if (result == 4)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v12);
          if (v9)
          {
            return memmove(v5 + 3, result, 4 * v9);
          }
        }
      }
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "static_sizes", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        if (result)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        v5[1] = v7;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 14)
  {
    if (*__s1 == 0x6F5F636974617473 && *(__s1 + 6) == 0x7374657366666F5FLL)
    {
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        if (result)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        *v5 = v10;
      }

      else
      {
        *result = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "static_strides", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
          if (result)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          v5[2] = v11;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }
  }

  return result;
}

void mlir::memref::ReinterpretCastOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "static_offsets", 14, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "static_sizes", 12, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "static_strides", 14, v7);
  }

  v8 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 4);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 19, v8);
}

BOOL mlir::memref::ReinterpretCastOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v8, "static_offsets", 0xE, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v9, "static_sizes", 0xC, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v10, "static_strides", 0xE, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::memref::ReinterpretCastOp::readProperties(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (!v3)
  {
    v5 = operator new(0x28uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 4) = 0;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v17;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v17;
    {
      mlir::memref::ReinterpretCastOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v19 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v19))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v19) >= 5)
    {
      v17[0] = "size mismatch for operand/result_segment_size";
      v18 = 259;
      (*(*a1 + 16))(v20, a1, v17);
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

        v6 = __p;
        if (__p)
        {
          v7 = v26;
          v8 = __p;
          if (v26 != __p)
          {
            do
            {
              v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
            }

            while (v7 != v6);
            v8 = __p;
          }

          v26 = v6;
          operator delete(v8);
        }

        v9 = v23;
        if (v23)
        {
          v10 = v24;
          v11 = v23;
          if (v24 != v23)
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
            v11 = v23;
          }

          v24 = v9;
          operator delete(v11);
        }

        if (v21 != &v22)
        {
          free(v21);
        }
      }

      return 0;
    }

    v14 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
    if (v15)
    {
      memmove(v3 + 3, v14, 4 * v15);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 4) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 4) = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::memref::ReinterpretCastOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::memref::ReinterpretCastOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v4 + 3, 4);
    (*(*a2 + 16))(a2, v6);
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 1));
  (*(*a2 + 16))(a2, *(v4 + 2));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v4 + 6, 4);
  }

  return result;
}

uint64_t mlir::memref::ReinterpretCastOp::verifyInvariantsImpl(mlir::memref::ReinterpretCastOp *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'static_offsets'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 == v38)
      {
        goto LABEL_57;
      }

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
LABEL_56:
      v14 = v38;
LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = *(v3 + 8);
  if (!v5)
  {
    v33[0] = "requires attribute 'static_sizes'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 == v38)
      {
        goto LABEL_57;
      }

      do
      {
        v22 = *--v20;
        v21 = v22;
        *v20 = 0;
        if (v22)
        {
          operator delete[](v21);
        }
      }

      while (v20 != v12);
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v2, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v5, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v6, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    mlir::memref::ReinterpretCastOp::verifyInvariantsImpl();
    return v35[0];
  }

  v33[0] = "requires attribute 'static_strides'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (*v35)
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
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
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::memref::ReinterpretCastOp::parse(uint64_t a1, void *a2)
{
  v46[16] = *MEMORY[0x1E69E9840];
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v33[0] = v34;
  v33[1] = 1;
  v44 = v46;
  v45 = 0x400000000;
  v31 = 0;
  v32 = 0;
  v41 = v43;
  v42 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  v29 = 0;
  v30 = 0;
  v28[0] = &v29;
  v28[1] = 1;
  v27 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v34, 1) & 1) == 0)
  {
    goto LABEL_38;
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v36) & 1) == 0)
  {
    goto LABEL_38;
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "offset", 6, v36) & 1) == 0)
  {
    goto LABEL_38;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_38;
  }

  (*(*a1 + 40))(a1);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v44, &v32, v36, 0))
  {
    goto LABEL_38;
  }

  v5 = a2[32];
  if (!v5)
  {
    v6 = operator new(0x28uLL);
    *v6 = 0u;
    v6[1] = 0u;
    *(v6 + 4) = 0;
    a2[32] = v6;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v36;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v36;
    {
      mlir::memref::ReinterpretCastOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = a2[32];
  }

  *v5 = v32;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_38;
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "sizes", 5, v36) & 1) == 0)
  {
    goto LABEL_38;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_38;
  }

  (*(*a1 + 40))(a1);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v41, &v31, v36, 0))
  {
    goto LABEL_38;
  }

  v7 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(a2);
  *(v7 + 8) = v31;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_38;
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "strides", 7, v36) & 1) == 0)
  {
    goto LABEL_38;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_38;
  }

  (*(*a1 + 40))(a1);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v38, &v30, v36, 0))
  {
    goto LABEL_38;
  }

  v8 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(a2);
  *(v8 + 16) = v30;
  v26 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_38;
  }

  v9 = a2[1];
  v36[0] = a1;
  v36[1] = &v26;
  v36[2] = a2;
  if (!mlir::memref::ReinterpretCastOp::verifyInherentAttrs(v9, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ReinterpretCastOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v36))
  {
    goto LABEL_38;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_38;
  }

  v36[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, v36))
  {
    goto LABEL_38;
  }

  v29 = v36[0];
  v37 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v36) & 1) == 0)
  {
    goto LABEL_38;
  }

  v36[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v36))
  {
    goto LABEL_38;
  }

  v27 = v36[0];
  v10 = v45;
  v11 = v42;
  v12 = v39;
  v13 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(a2);
  v13[6] = 1;
  v13[7] = v10;
  v13[8] = v11;
  v13[9] = v12;
  v14 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v14, v15);
  mlir::OperationState::addTypes(a2, &v27, 1);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v33, v28, v4, (a2 + 2)) & 1) == 0)
  {
    goto LABEL_38;
  }

  if (v45)
  {
    v17 = v44;
    v18 = 32 * v45;
    while (((*(*a1 + 728))(a1, v17, IndexType, a2 + 2) & 1) != 0)
    {
      v17 += 32;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_29;
      }
    }

LABEL_38:
    v23 = 0;
LABEL_39:
    v24 = v38;
    if (v38 != v40)
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

LABEL_29:
  if (v42)
  {
    v19 = v41;
    v20 = 32 * v42;
    while (((*(*a1 + 728))(a1, v19, IndexType, a2 + 2) & 1) != 0)
    {
      v19 += 32;
      v20 -= 32;
      if (!v20)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_38;
  }

LABEL_33:
  if (v39)
  {
    v21 = v38;
    v22 = 32 * v39;
    while (((*(*a1 + 728))(a1, v21, IndexType, a2 + 2) & 1) != 0)
    {
      v21 += 32;
      v23 = 1;
      v22 -= 32;
      if (!v22)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_38;
  }

  v23 = 1;
  v24 = v38;
  if (v38 != v40)
  {
LABEL_40:
    free(v24);
  }

LABEL_41:
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v23;
}

uint64_t mlir::memref::ReshapeOp::verifyInvariantsImpl(mlir::memref::ReshapeOp *this)
{
  v94 = *MEMORY[0x1E69E9840];
  if ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
LABEL_3:
    v78 = 261;
    v76 = "operand";
    v77 = 7;
    mlir::Operation::emitOpError(v2, &v76, v83);
    if (v83[0])
    {
      LODWORD(v80) = 3;
      v81 = " #";
      v82 = 2;
      v5 = &v80;
      v6 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v80 && v84 + 24 * v85 > &v80)
        {
          v67 = &v80 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v6 = v84;
          v5 = (v84 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v5 = &v80;
          v6 = v84;
        }
      }

      v7 = &v6[24 * v85];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      v9 = ++v85;
      if (v83[0])
      {
        LODWORD(v80) = 5;
        v81 = 1;
        v10 = &v80;
        v11 = v84;
        if (v9 >= v86)
        {
          if (v84 <= &v80 && v84 + 24 * v9 > &v80)
          {
            v72 = &v80 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v9 + 1, 24);
            v11 = v84;
            v10 = (v84 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v9 + 1, 24);
            v10 = &v80;
            v11 = v84;
          }
        }

        v12 = &v11[24 * v85];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        v14 = ++v85;
        if (v83[0])
        {
          LODWORD(v80) = 3;
          v81 = " must be 1D memref of signless integer or index values, but got ";
          v82 = 64;
          v15 = &v80;
          v16 = v84;
          if (v14 >= v86)
          {
            if (v84 <= &v80 && v84 + 24 * v14 > &v80)
            {
              v73 = &v80 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v14 + 1, 24);
              v16 = v84;
              v15 = (v84 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v14 + 1, 24);
              v15 = &v80;
              v16 = v84;
            }
          }

          v17 = &v16[24 * v85];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          ++v85;
          if (v83[0])
          {
            v19 = &v80;
            mlir::DiagnosticArgument::DiagnosticArgument(&v80, v3);
            v20 = v84;
            if (v85 >= v86)
            {
              if (v84 <= &v80 && v84 + 24 * v85 > &v80)
              {
                v74 = &v80 - v84;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
                v20 = v84;
                v19 = (v84 + v74);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
                v19 = &v80;
                v20 = v84;
              }
            }

            v21 = &v20[24 * v85];
            v22 = *v19;
            *(v21 + 2) = v19[2];
            *v21 = v22;
            ++v85;
          }
        }
      }
    }

    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v83);
    if (v83[0])
    {
      mlir::InFlightDiagnostic::report(v83);
    }

    if (v93 == 1)
    {
      if (v92 != &v93)
      {
        free(v92);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v91;
        v26 = __p;
        if (v91 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v91 = v24;
        operator delete(v26);
      }

      v27 = v88;
      if (v88)
      {
        v28 = v89;
        v29 = v88;
        if (v89 != v88)
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
          v29 = v88;
        }

        v89 = v27;
        operator delete(v29);
      }

      if (v84 != v87)
      {
        free(v84);
      }
    }

    if (v23)
    {
      goto LABEL_42;
    }

    return 0;
  }

  {
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v4 + 8);
    v34 = *(v4 + 16);
    if (!v34)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v44 = v4;
    mlir::arith::ExtUIOp::fold();
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v44 + 8);
    v34 = *(v44 + 16);
    if (!v34)
    {
      goto LABEL_62;
    }
  }

  v35 = v33;
  v36 = v34;
  do
  {
    v37 = v36 >> 1;
    v38 = &v35[2 * (v36 >> 1)];
    v40 = *v38;
    v39 = v38 + 2;
    v36 += ~(v36 >> 1);
    if (v40 < v32)
    {
      v35 = v39;
    }

    else
    {
      v36 = v37;
    }
  }

  while (v36);
  if (v35 != &v33[2 * v34] && *v35 == v32)
  {
    v45 = v35[1];
    goto LABEL_64;
  }

LABEL_62:
  v45 = 0;
LABEL_64:
  v83[0] = v3;
  v83[1] = v45;
  isSplat = mlir::ElementsAttr::isSplat(v83);
  if (!mlir::Type::isSignlessInteger(&isSplat) && *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_3;
  }

  v46 = *v3;
  {
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v46 + 8);
    v49 = *(v46 + 16);
    if (!v49)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v75 = v46;
    mlir::arith::ExtUIOp::fold();
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v75 + 8);
    v49 = *(v75 + 16);
    if (!v49)
    {
      goto LABEL_78;
    }
  }

  v50 = v48;
  v51 = v49;
  do
  {
    v52 = v51 >> 1;
    v53 = &v50[2 * (v51 >> 1)];
    v55 = *v53;
    v54 = v53 + 2;
    v51 += ~(v51 >> 1);
    if (v55 < v47)
    {
      v50 = v54;
    }

    else
    {
      v51 = v52;
    }
  }

  while (v51);
  if (v50 == &v48[2 * v49] || *v50 != v47)
  {
LABEL_78:
    v76 = v3;
    v77 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v76))
    {
      goto LABEL_3;
    }

    goto LABEL_81;
  }

  v56 = v50[1];
  v76 = v3;
  v77 = v56;
  if (!mlir::CallOpInterface::getArgOperands(&v76))
  {
    goto LABEL_3;
  }

LABEL_81:
  v57 = *v3;
  {
    v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v59 = *(v57 + 8);
    v60 = *(v57 + 16);
    if (!v60)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v68 = v57;
    mlir::arith::ExtUIOp::fold();
    v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v59 = *(v68 + 8);
    v60 = *(v68 + 16);
    if (!v60)
    {
      goto LABEL_94;
    }
  }

  v61 = v59;
  v62 = v60;
  do
  {
    v63 = v62 >> 1;
    v64 = &v61[2 * (v62 >> 1)];
    v66 = *v64;
    v65 = v64 + 2;
    v62 += ~(v62 >> 1);
    if (v66 < v58)
    {
      v61 = v65;
    }

    else
    {
      v62 = v63;
    }
  }

  while (v62);
  if (v61 == &v59[2 * v60] || *v61 != v58)
  {
LABEL_94:
    v80 = v3;
    v81 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v80);
    if (v69 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_42;
  }

  v70 = v61[1];
  v80 = v3;
  v81 = v70;
  mlir::CallableOpInterface::getArgAttrsAttr(&v80);
  if (v71 != 1)
  {
    goto LABEL_3;
  }

LABEL_42:
  if (*(*this + 36))
  {
    v41 = *this - 16;
  }

  else
  {
    v41 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::memref::ReshapeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10))
  {
    return 0;
  }

  v11[0] = mlir::FunctionType::getInputs(&v10);
  v11[1] = v4;
  Results = mlir::FunctionType::getResults(&v10);
  mlir::OperationState::addTypes(a2, Results, v6);
  v9[0] = v15;
  v9[1] = v12;
  v7 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v9, v11, v7, a2 + 16) & 1;
}

BOOL mlir::memref::StoreOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  a2[32] = v6;
  a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::StoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::StoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  a2[35] = &v8;
  a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::StoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::StoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  a2[37] = &v7;
  {
    mlir::memref::StoreOp::readProperties();
  }

  a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::StoreOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, a2[32]);
}

BOOL mlir::memref::StoreOp::verifyInvariantsImpl(mlir::memref::StoreOp *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v21[0] = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v3, "nontemporal", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v21) & 1) == 0 || (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v5 = 0;
    v6 = 64;
LABEL_6:
    v7 = v6 + 24;
    v8 = 2;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8) & 1) != 0)
    {
      ++v8;
      v7 += 32;
      if (v5 == v8)
      {
        v4 = *this;
        goto LABEL_10;
      }
    }

    return 0;
  }

  v5 = *(v4 + 68);
  if (v5 != 2)
  {
    v6 = *(v4 + 72) + 64;
    goto LABEL_6;
  }

LABEL_10:
  v21[0] = *(*(*(v4 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::AffineBinaryOpExpr::getRHS(v21) == (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v19 = "failed to verify that type of 'value' matches element type of 'memref'";
  v20 = 259;
  mlir::OpState::emitOpError(this, &v19, v21);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v10 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v10;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
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
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v10;
    }
  }

  return result;
}

BOOL mlir::memref::StoreOp::parse(uint64_t a1, uint64_t a2)
{
  v34[16] = *MEMORY[0x1E69E9840];
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24[0] = v25;
  v24[1] = 1;
  v32 = v34;
  v33 = 0x400000000;
  v22[1] = 1;
  v23 = 0;
  v22[0] = &v23;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v27, 1) & 1) != 0 && ((*(*a1 + 120))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v25, 1) & 1) != 0 && ((*(*a1 + 312))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 720))(a1, &v32, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 328))(a1))
      {
        v19[0] = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v5 = *(a2 + 8);
          v29 = a1;
          v30 = v19;
          v31 = a2;
          if (mlir::memref::LoadOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::StoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v29) && ((*(*a1 + 104))(a1) & 1) != 0)
          {
            v29 = 0;
            if (mlir::AsmParser::parseType<mlir::MemRefType>(a1, &v29))
            {
              v23 = v29;
              v21 = v29;
              if (*(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
              {
                v6 = (*(*a1 + 16))(a1);
                v20 = 257;
                (*(*a1 + 24))(&v29, a1, v6, v19);
                mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v29, "'memref' must be memref of any type values, but got ");
                mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v7, &v21);
                v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
                v10 = v32;
                if (v32 == v34)
                {
                  return v9;
                }

                goto LABEL_23;
              }

              v29 = llvm::cast<mlir::ShapedType,mlir::Type>(&v21);
              v30 = v11;
              mlir::ElementsAttr::isSplat(&v29);
              v12 = (*(*a1 + 32))(a1);
              IndexType = mlir::Builder::getIndexType(v12, v13);
              v29 = v23;
              RHS = mlir::AffineBinaryOpExpr::getRHS(&v29);
              if ((*(*a1 + 728))(a1, v27, RHS, a2 + 16) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v24, v22, v4, a2 + 16))
              {
                if (!v33)
                {
                  v9 = 1;
                  v10 = v32;
                  if (v32 == v34)
                  {
                    return v9;
                  }

                  goto LABEL_23;
                }

                v16 = v32;
                v17 = 32 * v33;
                while (((*(*a1 + 728))(a1, v16, IndexType, a2 + 16) & 1) != 0)
                {
                  v16 += 4;
                  v9 = 1;
                  v17 -= 32;
                  if (!v17)
                  {
                    goto LABEL_22;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v9 = 0;
LABEL_22:
  v10 = v32;
  if (v32 != v34)
  {
LABEL_23:
    free(v10);
  }

  return v9;
}

void mlir::memref::StoreOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v7 = a1;
    v8 = a2;
    mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::AssertOp>::getEffects();
    a1 = v7;
    a2 = v8;
  }

  v13 = *(*a1 + 72) + 32;
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v12 = 0;
  v11 = 0;
  {
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v13;
      v5 = v12;
      v6 = v11;
      *v3 = v14;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v3 + 24) = 0;
      *(v3 + 32) = v5;
      *(v3 + 36) = v6;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v9 = a2;
    llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>();
    a2 = v9;
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v9 + 8);
    if (v2 < *(v9 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v14, &v13, &v12, &v11, &v10);
}

uint64_t mlir::memref::TransposeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "permutation";
  v56.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 56;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
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
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::memref::TransposeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "permutation", 11, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t mlir::memref::TransposeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x746174756D726570 ? (v4 = *(a3 + 3) == 0x6E6F69746174756DLL) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::memref::TransposeOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x746174756D726570 && *(a2 + 3) == 0x6E6F69746174756DLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::memref::TransposeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "permutation", 11, *a2);
  }
}

uint64_t mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = v33 + v25;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: AffineMap attribute";
        v29 = 51;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = v33 + v26;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
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
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

uint64_t mlir::memref::TransposeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::memref::TransposeOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, *(a2 + 256)) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::AffineMapAttr]";
  v38 = 69;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
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
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

BOOL mlir::memref::TransposeOp::verifyInvariantsImpl(mlir::memref::TransposeOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v3, "permutation", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      if (*(*this + 36))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
      return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'permutation'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

void mlir::memref::ViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = a5;
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::memref::ViewOp::verifyInvariantsImpl(mlir::memref::ViewOp *this)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_47;
  }

  {
    v14 = v4;
    mlir::arith::ExtUIOp::fold();
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v14 + 8);
    v7 = *(v14 + 16);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:
    v15 = 0;
    goto LABEL_16;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 == &v6[2 * v7] || *v8 != v5)
  {
    goto LABEL_14;
  }

  v15 = v8[1];
LABEL_16:
  v86[0] = v3;
  v86[1] = v15;
  isSplat = mlir::ElementsAttr::isSplat(v86);
  if (!mlir::Type::isSignlessInteger(&isSplat, 8))
  {
    goto LABEL_47;
  }

  v16 = *v3;
  {
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v78 = v16;
    mlir::arith::ExtUIOp::fold();
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v78 + 8);
    v19 = *(v78 + 16);
    if (!v19)
    {
      goto LABEL_29;
    }
  }

  v20 = v18;
  v21 = v19;
  do
  {
    v22 = v21 >> 1;
    v23 = &v20[2 * (v21 >> 1)];
    v25 = *v23;
    v24 = v23 + 2;
    v21 += ~(v21 >> 1);
    if (v25 < v17)
    {
      v20 = v24;
    }

    else
    {
      v21 = v22;
    }
  }

  while (v21);
  if (v20 != &v18[2 * v19] && *v20 == v17)
  {
    v26 = v20[1];
    v79 = v3;
    v80 = v26;
    if (mlir::CallOpInterface::getArgOperands(&v79))
    {
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_29:
  v79 = v3;
  v80 = 0;
  if (mlir::CallOpInterface::getArgOperands(&v79))
  {
LABEL_32:
    v27 = *v3;
    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (v30)
      {
LABEL_34:
        v31 = v29;
        v32 = v30;
        do
        {
          v33 = v32 >> 1;
          v34 = &v31[2 * (v32 >> 1)];
          v36 = *v34;
          v35 = v34 + 2;
          v32 += ~(v32 >> 1);
          if (v36 < v28)
          {
            v31 = v35;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
        if (v31 != &v29[2 * v30] && *v31 == v28)
        {
          v39 = v31[1];
          v83 = v3;
          v84 = v39;
          mlir::CallableOpInterface::getArgAttrsAttr(&v83);
          if (v40 == 1)
          {
            goto LABEL_77;
          }

          goto LABEL_47;
        }
      }
    }

    else
    {
      v37 = v27;
      mlir::arith::ExtUIOp::fold();
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v37 + 8);
      v30 = *(v37 + 16);
      if (v30)
      {
        goto LABEL_34;
      }
    }

    v83 = v3;
    v84 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v83);
    if (v38 == 1)
    {
      goto LABEL_77;
    }
  }

LABEL_47:
  v81 = 261;
  v79 = "operand";
  v80 = 7;
  mlir::Operation::emitOpError(v2, &v79, v86);
  if (v86[0])
  {
    LODWORD(v83) = 3;
    v84 = " #";
    v85 = 2;
    v41 = &v83;
    v42 = v87;
    if (v88 >= v89)
    {
      if (v87 <= &v83 && v87 + 24 * v88 > &v83)
      {
        v74 = &v83 - v87;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
        v42 = v87;
        v41 = (v87 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
        v41 = &v83;
        v42 = v87;
      }
    }

    v43 = &v42[24 * v88];
    v44 = *v41;
    *(v43 + 2) = v41[2];
    *v43 = v44;
    v45 = ++v88;
    if (v86[0])
    {
      LODWORD(v83) = 5;
      v84 = 0;
      v46 = &v83;
      v47 = v87;
      if (v45 >= v89)
      {
        if (v87 <= &v83 && v87 + 24 * v45 > &v83)
        {
          v75 = &v83 - v87;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v45 + 1, 24);
          v47 = v87;
          v46 = (v87 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v45 + 1, 24);
          v46 = &v83;
          v47 = v87;
        }
      }

      v48 = &v47[24 * v88];
      v49 = *v46;
      *(v48 + 2) = v46[2];
      *v48 = v49;
      v50 = ++v88;
      if (v86[0])
      {
        LODWORD(v83) = 3;
        v84 = " must be 1D memref of 8-bit signless integer values, but got ";
        v85 = 61;
        v51 = &v83;
        v52 = v87;
        if (v50 >= v89)
        {
          if (v87 <= &v83 && v87 + 24 * v50 > &v83)
          {
            v76 = &v83 - v87;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v50 + 1, 24);
            v52 = v87;
            v51 = (v87 + v76);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v50 + 1, 24);
            v51 = &v83;
            v52 = v87;
          }
        }

        v53 = &v52[24 * v88];
        v54 = *v51;
        *(v53 + 2) = v51[2];
        *v53 = v54;
        ++v88;
        if (v86[0])
        {
          v55 = &v83;
          mlir::DiagnosticArgument::DiagnosticArgument(&v83, v3);
          v56 = v87;
          if (v88 >= v89)
          {
            if (v87 <= &v83 && v87 + 24 * v88 > &v83)
            {
              v77 = &v83 - v87;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
              v56 = v87;
              v55 = (v87 + v77);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
              v55 = &v83;
              v56 = v87;
            }
          }

          v57 = &v56[24 * v88];
          v58 = *v55;
          *(v57 + 2) = v55[2];
          *v57 = v58;
          ++v88;
        }
      }
    }
  }

  v59 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v86);
  if (v86[0])
  {
    mlir::InFlightDiagnostic::report(v86);
  }

  if (v96 == 1)
  {
    if (v95 != &v96)
    {
      free(v95);
    }

    v60 = __p;
    if (__p)
    {
      v61 = v94;
      v62 = __p;
      if (v94 != __p)
      {
        do
        {
          v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
        }

        while (v61 != v60);
        v62 = __p;
      }

      v94 = v60;
      operator delete(v62);
    }

    v63 = v91;
    if (v91)
    {
      v64 = v92;
      v65 = v91;
      if (v92 != v91)
      {
        do
        {
          v67 = *--v64;
          v66 = v67;
          *v64 = 0;
          if (v67)
          {
            operator delete[](v66);
          }
        }

        while (v64 != v63);
        v65 = v91;
      }

      v92 = v63;
      operator delete(v65);
    }

    if (v87 != v90)
    {
      free(v87);
    }
  }

  if (!v59)
  {
    return 0;
  }

LABEL_77:
  if ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v68 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    if (mlir::memref::AtomicRMWOp::verifyInvariantsImpl())
    {
      return 0;
    }

    goto LABEL_94;
  }

  if (*(v68 + 68) != 2)
  {
    if (mlir::memref::AtomicRMWOp::verifyInvariantsImpl())
    {
      return 0;
    }

LABEL_94:
    v68 = v86[0];
  }

  v69 = *(v68 + 36);
  v70 = v68 - 16;
  if (v69)
  {
    v71 = v70;
  }

  else
  {
    v71 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v71, 0);
  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::memref::ViewOp::parse(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v25 = v27;
  v26 = 0x400000000;
  v13[1] = 1;
  v14 = 0;
  v13[0] = &v14;
  v22 = &v24;
  v23 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v25, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  v20[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v20))
  {
    goto LABEL_20;
  }

  v14 = v20[0];
  v21 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v20) & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((mlir::AsmParser::parseTypeList(a1, &v22) & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  mlir::OperationState::addTypes(a2, v22, v23);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v17, v13, v4, a2 + 16) & 1) == 0 || ((*(*a1 + 728))(a1, v15, IndexType, a2 + 16) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v26)
  {
    v8 = v25;
    v9 = 32 * v26;
    while (((*(*a1 + 728))(a1, v8, IndexType, a2 + 16) & 1) != 0)
    {
      v8 += 32;
      v10 = 1;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_21;
      }
    }

LABEL_20:
    v10 = 0;
LABEL_21:
    v11 = v22;
    if (v22 != &v24)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v10 = 1;
  v11 = v22;
  if (v22 != &v24)
  {
LABEL_22:
    free(v11);
  }

LABEL_23:
  if (v25 != v27)
  {
    free(v25);
  }

  return v10;
}

BOOL mlir::memref::SubViewOp::readProperties(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (!v3)
  {
    v5 = operator new(0x28uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 4) = 0;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v17;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v17;
    {
      mlir::memref::SubViewOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v19 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v19))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v19) >= 5)
    {
      v17[0] = "size mismatch for operand/result_segment_size";
      v18 = 259;
      (*(*a1 + 16))(v20, a1, v17);
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

        v6 = __p;
        if (__p)
        {
          v7 = v26;
          v8 = __p;
          if (v26 != __p)
          {
            do
            {
              v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
            }

            while (v7 != v6);
            v8 = __p;
          }

          v26 = v6;
          operator delete(v8);
        }

        v9 = v23;
        if (v23)
        {
          v10 = v24;
          v11 = v23;
          if (v24 != v23)
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
            v11 = v23;
          }

          v24 = v9;
          operator delete(v11);
        }

        if (v21 != &v22)
        {
          free(v21);
        }
      }

      return 0;
    }

    v14 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
    if (v15)
    {
      memmove(v3 + 3, v14, 4 * v15);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 4) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 4) = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::memref::SubViewOp::build();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

void mlir::memref::SubViewOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16)
{
  v21 = a10;
  v38 = a4;
  mlir::OperationState::addOperands(a2, &v38, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v22 = a12;
  v23 = *(a2 + 256);
  if (!v23)
  {
    v24 = operator new(0x28uLL);
    *v24 = 0u;
    v24[1] = 0u;
    *(v24 + 4) = 0;
    *(a2 + 256) = v24;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v39;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v39;
    {
      mlir::memref::SubViewOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v23 = *(a2 + 256);
    v22 = a12;
    v21 = a10;
  }

  v23[6] = 1;
  v23[7] = a6;
  v23[8] = a8;
  v23[9] = v21;
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a11, v22);
  v26 = *(a2 + 256);
  if (!v26)
  {
    v27 = operator new(0x28uLL);
    *v27 = 0u;
    v27[1] = 0u;
    *(v27 + 4) = 0;
    *(a2 + 256) = v27;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v39;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v39;
    {
      mlir::memref::SubViewOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v26 = *(a2 + 256);
  }

  *v26 = DenseI64ArrayAttr;
  v28 = mlir::Builder::getDenseI64ArrayAttr(a1, a13, a14);
  v29 = *(a2 + 256);
  if (!v29)
  {
    v30 = operator new(0x28uLL);
    *v30 = 0u;
    v30[1] = 0u;
    *(v30 + 4) = 0;
    *(a2 + 256) = v30;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v39;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v39;
    {
      mlir::memref::SubViewOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v29 = *(a2 + 256);
  }

  *(v29 + 8) = v28;
  v31 = mlir::Builder::getDenseI64ArrayAttr(a1, a15, a16);
  v32 = v31;
  v33 = *(a2 + 256);
  if (v33)
  {
    *(v33 + 16) = v31;
    v34 = *(a2 + 72);
    if (v34 >= *(a2 + 76))
    {
LABEL_15:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v34 + 1, 8);
      LODWORD(v34) = *(a2 + 72);
    }
  }

  else
  {
    v35 = operator new(0x28uLL);
    *v35 = 0u;
    v35[1] = 0u;
    *(v35 + 4) = 0;
    *(a2 + 256) = v35;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v39;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v39;
    {
      mlir::memref::SubViewOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 16) = v32;
    v34 = *(a2 + 72);
    if (v34 >= *(a2 + 76))
    {
      goto LABEL_15;
    }
  }

  *(*(a2 + 64) + 8 * v34) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::memref::SubViewOp::verifyInvariantsImpl(mlir::memref::SubViewOp *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'static_offsets'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 == v38)
      {
        goto LABEL_57;
      }

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
LABEL_56:
      v14 = v38;
LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = *(v3 + 8);
  if (!v5)
  {
    v33[0] = "requires attribute 'static_sizes'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 == v38)
      {
        goto LABEL_57;
      }

      do
      {
        v22 = *--v20;
        v21 = v22;
        *v20 = 0;
        if (v22)
        {
          operator delete[](v21);
        }
      }

      while (v20 != v12);
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v2, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v5, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v6, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    mlir::memref::SubViewOp::verifyInvariantsImpl();
    return v35[0];
  }

  v33[0] = "requires attribute 'static_strides'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (*v35)
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
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
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::memref::SubViewOp::parse(uint64_t a1, void *a2)
{
  v48[16] = *MEMORY[0x1E69E9840];
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v35[0] = v36;
  v35[1] = 1;
  v46 = v48;
  v47 = 0x400000000;
  v33 = 0;
  v34 = 0;
  v43 = v45;
  v44 = 0x400000000;
  v40 = v42;
  v41 = 0x400000000;
  v31 = 0;
  v32 = 0;
  v30[0] = &v31;
  v30[1] = 1;
  v29 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v36, 1) & 1) == 0)
  {
    goto LABEL_37;
  }

  (*(*a1 + 40))(a1);
  v38[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v46, &v34, v38, 0))
  {
    goto LABEL_37;
  }

  v5 = a2[32];
  if (!v5)
  {
    v6 = operator new(0x28uLL);
    *v6 = 0u;
    v6[1] = 0u;
    *(v6 + 4) = 0;
    a2[32] = v6;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v38;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v38;
    {
      mlir::memref::SubViewOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = a2[32];
  }

  *v5 = v34;
  (*(*a1 + 40))(a1);
  v38[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v43, &v33, v38, 0))
  {
    goto LABEL_37;
  }

  v7 = a2[32];
  if (!v7)
  {
    v8 = operator new(0x28uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 4) = 0;
    a2[32] = v8;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v38;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v38;
    {
      mlir::memref::SubViewOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v7 = a2[32];
  }

  *(v7 + 8) = v33;
  (*(*a1 + 40))(a1);
  v38[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v40, &v32, v38, 0))
  {
    goto LABEL_37;
  }

  v9 = a2[32];
  if (!v9)
  {
    v10 = operator new(0x28uLL);
    *v10 = 0u;
    v10[1] = 0u;
    *(v10 + 4) = 0;
    a2[32] = v10;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v38;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v38;
    {
      mlir::memref::SubViewOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v9 = a2[32];
  }

  *(v9 + 16) = v32;
  v28 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_37;
  }

  v11 = a2[1];
  v38[0] = a1;
  v38[1] = &v28;
  v38[2] = a2;
  if (!mlir::memref::ReinterpretCastOp::verifyInherentAttrs(v11, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::SubViewOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v38))
  {
    goto LABEL_37;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_37;
  }

  v38[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v38))
  {
    goto LABEL_37;
  }

  v31 = v38[0];
  v39 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v38) & 1) == 0)
  {
    goto LABEL_37;
  }

  v38[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v38))
  {
    goto LABEL_37;
  }

  v29 = v38[0];
  v12 = v47;
  v13 = v44;
  v14 = v41;
  v15 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(a2);
  v15[6] = 1;
  v15[7] = v12;
  v15[8] = v13;
  v15[9] = v14;
  v16 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v16, v17);
  mlir::OperationState::addTypes(a2, &v29, 1);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v35, v30, v4, (a2 + 2)) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v47)
  {
    v19 = v46;
    v20 = 32 * v47;
    while (((*(*a1 + 728))(a1, v19, IndexType, a2 + 2) & 1) != 0)
    {
      v19 += 32;
      v20 -= 32;
      if (!v20)
      {
        goto LABEL_28;
      }
    }

LABEL_37:
    v25 = 0;
LABEL_38:
    v26 = v40;
    if (v40 != v42)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_28:
  if (v44)
  {
    v21 = v43;
    v22 = 32 * v44;
    while (((*(*a1 + 728))(a1, v21, IndexType, a2 + 2) & 1) != 0)
    {
      v21 += 32;
      v22 -= 32;
      if (!v22)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_37;
  }

LABEL_32:
  if (v41)
  {
    v23 = v40;
    v24 = 32 * v41;
    while (((*(*a1 + 728))(a1, v23, IndexType, a2 + 2) & 1) != 0)
    {
      v23 += 32;
      v25 = 1;
      v24 -= 32;
      if (!v24)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_37;
  }

  v25 = 1;
  v26 = v40;
  if (v40 != v42)
  {
LABEL_39:
    free(v26);
  }

LABEL_40:
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  return v25;
}

void *llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    mlir::memref::GlobalOp::getConstantInitValue();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    mlir::memref::GlobalOp::getConstantInitValue();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
    }
  }

  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  return result;
}