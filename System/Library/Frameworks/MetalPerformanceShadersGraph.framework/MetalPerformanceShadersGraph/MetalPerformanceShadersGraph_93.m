BOOL mlir::tensor::SplatOp::parse(uint64_t a1, uint64_t a2)
{
  v37[16] = *MEMORY[0x1E69E9840];
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v35 = v37;
  v36 = 0x400000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v32, 1) & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((*(*a1 + 320))(a1))
  {
    (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v35, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 328))(a1) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_33;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_33;
  }

  v34[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v34))
  {
    goto LABEL_33;
  }

  v4 = v34[0];
  v31 = v34[0];
  v5 = *v34[0];
  if (*(*v34[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = (*(*a1 + 16))(a1);
    v30 = 257;
    (*(*a1 + 24))(v34, a1, v6, v29);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v34, "'aggregate' must be ranked tensor of any type values, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v7, &v31);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v34);
    v10 = v35;
    if (v35 == v37)
    {
      return v9;
    }

    goto LABEL_35;
  }

  {
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v5 + 8);
    v13 = *(v5 + 16);
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_20:
    v13 = 0;
    v14 = v12;
    goto LABEL_21;
  }

  mlir::arith::ExtUIOp::fold();
  v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_13:
  v14 = v12;
  v15 = v13;
  do
  {
    v16 = v15 >> 1;
    v17 = &v14[2 * (v15 >> 1)];
    v19 = *v17;
    v18 = v17 + 2;
    v15 += ~(v15 >> 1);
    if (v19 < v11)
    {
      v14 = v18;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
LABEL_21:
  if (v14 != &v12[2 * v13] && *v14 == v11)
  {
    v20 = v14[1];
  }

  else
  {
    v20 = 0;
  }

  v34[0] = v4;
  v34[1] = v20;
  mlir::ElementsAttr::isSplat(v34);
  v21 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v21, v22);
  v24 = *(a2 + 72);
  if (v24 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v24 + 1, 8);
    LODWORD(v24) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v24) = v4;
  ++*(a2 + 72);
  v34[0] = v4;
  ElementType = mlir::TensorType::getElementType(v34);
  if ((*(*a1 + 728))(a1, v32, ElementType, a2 + 16))
  {
    if (!v36)
    {
      v9 = 1;
      v10 = v35;
      if (v35 == v37)
      {
        return v9;
      }

      goto LABEL_35;
    }

    v26 = v35;
    v27 = 32 * v36;
    while (((*(*a1 + 728))(a1, v26, IndexType, a2 + 16) & 1) != 0)
    {
      v26 += 4;
      v9 = 1;
      v27 -= 32;
      if (!v27)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v9 = 0;
LABEL_34:
  v10 = v35;
  if (v35 != v37)
  {
LABEL_35:
    free(v10);
  }

  return v9;
}

void mlir::tensor::SplatOp::print(mlir::tensor::SplatOp *this, uint64_t a2)
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
  if ((*(*this + 46) & 0x80) == 0 || *(*this + 68) != 1)
  {
    mlir::tensor::SplatOp::print(a2, a2 & 0xFFFFFFFFFFFFLL | 0x5510000000000000, this);
  }

  v17 = v19;
  v18 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v17, v18);
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
    llvm::raw_ostream::write(v10, ":", 1uLL);
  }

  else
  {
    *v11 = 58;
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

  if (*(*this + 36))
  {
    v14 = *this - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17 != v19)
  {
    free(v17);
  }
}

uint64_t mlir::tensor::UnPackOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      v15 = &v71;
      v16 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v63 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v16 = v76;
          v15 = (v76 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v15 = &v71;
          v16 = v76;
        }
      }

      v17 = &v16[24 * v77];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
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

    v19 = __p;
    if (__p)
    {
      v20 = v83;
      v21 = __p;
      if (v83 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v83 = v19;
      operator delete(v21);
    }

    v22 = v80;
    if (!v80)
    {
      goto LABEL_74;
    }

    v23 = v81;
    v24 = v80;
    if (v81 == v80)
    {
      goto LABEL_73;
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
    goto LABEL_72;
  }

  v87.var0 = "inner_dims_pos";
  v87.var1 = 14;
  v8 = mlir::DictionaryAttr::get(&v70, v87);
  if (v8)
  {
    v9 = v8;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v8))
    {
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 59;
        v27 = &v71;
        v28 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v64 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v28 = v76;
            v27 = (v76 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v27 = &v71;
            v28 = v76;
          }
        }

        v29 = &v28[24 * v77];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v77;
        if (v74)
        {
          v31 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v9);
          v32 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v66 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v32 = v76;
              v31 = (v76 + v66);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v31 = &v71;
              v32 = v76;
            }
          }

          v33 = &v32[24 * v77];
          v34 = *v31;
          *(v33 + 2) = *(v31 + 2);
          *v33 = v34;
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

      v35 = __p;
      if (__p)
      {
        v36 = v83;
        v37 = __p;
        if (v83 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v83 = v35;
        operator delete(v37);
      }

      v22 = v80;
      if (!v80)
      {
        goto LABEL_74;
      }

      v38 = v81;
      v24 = v80;
      if (v81 == v80)
      {
        goto LABEL_73;
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

      while (v38 != v22);
      goto LABEL_72;
    }

    *a1 = v9;
  }

  v88.var0 = "outer_dims_perm";
  v88.var1 = 15;
  v10 = mlir::DictionaryAttr::get(&v70, v88);
  if (v10)
  {
    v11 = v10;
    if (mlir::detail::DenseArrayAttrImpl<long long>::classof(v10))
    {
      a1[1] = v11;
      goto LABEL_11;
    }

    a3(&v74, a4);
    if (v74)
    {
      v71 = 3;
      v73 = 60;
      v41 = &v71;
      v42 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v65 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v42 = v76;
          v41 = (v76 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v41 = &v71;
          v42 = v76;
        }
      }

      v43 = &v42[24 * v77];
      v44 = *v41;
      *(v43 + 2) = *(v41 + 2);
      *v43 = v44;
      ++v77;
      if (v74)
      {
        v45 = &v71;
        mlir::DiagnosticArgument::DiagnosticArgument(&v71, v11);
        v46 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v68 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v46 = v76;
            v45 = (v76 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v45 = &v71;
            v46 = v76;
          }
        }

        v47 = &v46[24 * v77];
        v48 = *v45;
        *(v47 + 2) = *(v45 + 2);
        *v47 = v48;
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

    v49 = __p;
    if (__p)
    {
      v50 = v83;
      v51 = __p;
      if (v83 != __p)
      {
        do
        {
          v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
        }

        while (v50 != v49);
        v51 = __p;
      }

      v83 = v49;
      operator delete(v51);
    }

    v22 = v80;
    if (!v80)
    {
LABEL_74:
      if (v76 != v79)
      {
        free(v76);
      }

      return 0;
    }

    v52 = v81;
    v24 = v80;
    if (v81 == v80)
    {
LABEL_73:
      v81 = v22;
      operator delete(v24);
      goto LABEL_74;
    }

    do
    {
      v54 = *--v52;
      v53 = v54;
      *v52 = 0;
      if (v54)
      {
        operator delete[](v53);
      }
    }

    while (v52 != v22);
LABEL_72:
    v24 = v80;
    goto LABEL_73;
  }

LABEL_11:
  v89.var0 = "static_inner_tiles";
  v89.var1 = 18;
  v12 = mlir::DictionaryAttr::get(&v70, v89);
  if (!v12)
  {
    return 1;
  }

  v13 = v12;
  if (mlir::detail::DenseArrayAttrImpl<long long>::classof(v12))
  {
    a1[2] = v13;
    return 1;
  }

  a3(&v74, a4);
  if (v74)
  {
    v71 = 3;
    v73 = 63;
    v55 = &v71;
    v56 = v76;
    if (v77 >= v78)
    {
      if (v76 <= &v71 && v76 + 24 * v77 > &v71)
      {
        v67 = &v71 - v76;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v56 = v76;
        v55 = (v76 + v67);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v55 = &v71;
        v56 = v76;
      }
    }

    v57 = &v56[24 * v77];
    v58 = *v55;
    *(v57 + 2) = *(v55 + 2);
    *v57 = v58;
    ++v77;
    if (v74)
    {
      v59 = &v71;
      mlir::DiagnosticArgument::DiagnosticArgument(&v71, v13);
      v60 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v69 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v60 = v76;
          v59 = (v76 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v59 = &v71;
          v60 = v76;
        }
      }

      v61 = &v60[24 * v77];
      v62 = *v59;
      *(v61 + 2) = *(v59 + 2);
      *v61 = v62;
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

uint64_t mlir::tensor::UnPackOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "inner_dims_pos", 14, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v27, "outer_dims_perm", 15, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v27, "static_inner_tiles", 18, v13);
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

uint64_t mlir::tensor::UnPackOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 18)
  {
    if (!memcmp(__s1, "static_inner_tiles", 0x12uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 15)
  {
    if (!memcmp(__s1, "outer_dims_perm", 0xFuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x69645F72656E6E69 || *(__s1 + 6) != 0x736F705F736D6964)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::tensor::UnPackOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 18)
  {
    result = memcmp(__s1, "static_inner_tiles", 0x12uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        if (result)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[2] = v8;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else if (a3 == 15)
  {
    result = memcmp(__s1, "outer_dims_perm", 0xFuLL);
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

  else if (a3 == 14 && *__s1 == 0x69645F72656E6E69 && *(__s1 + 6) == 0x736F705F736D6964)
  {
    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
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

void mlir::tensor::UnPackOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "inner_dims_pos", 14, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "outer_dims_perm", 15, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "static_inner_tiles", 18, v6);
  }
}

BOOL mlir::tensor::UnPackOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, a2[32]))
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
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v8;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v7;
    {
      mlir::tensor::UnPackOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2);
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x18uLL);
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::tensor::UnPackOp::build();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::tensor::UnPackOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::tensor::UnPackOp::verifyInvariantsImpl(mlir::tensor::UnPackOp *this)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = v3 + 64;
  v5 = v6;
  if (!v6)
  {
    v44[0] = "requires attribute 'inner_dims_pos'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, v46);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
    if (v46[0])
    {
      mlir::InFlightDiagnostic::report(v46);
    }

    if (v54 != 1)
    {
      return v11;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v52;
      v14 = __p;
      if (v52 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v52 = v12;
      operator delete(v14);
    }

    v15 = v49;
    if (v49)
    {
      v16 = v50;
      v17 = v49;
      if (v50 == v49)
      {
        goto LABEL_41;
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
LABEL_40:
      v17 = v49;
LABEL_41:
      v50 = v15;
      operator delete(v17);
    }

LABEL_42:
    if (v47 != &v48)
    {
      free(v47);
    }

    return v11;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
    v44[0] = "requires attribute 'static_inner_tiles'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, v46);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
    if (v46[0])
    {
      mlir::InFlightDiagnostic::report(v46);
    }

    if (v54 != 1)
    {
      return v11;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v52;
      v22 = __p;
      if (v52 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v52 = v20;
      operator delete(v22);
    }

    v15 = v49;
    if (v49)
    {
      v23 = v50;
      v17 = v49;
      if (v50 == v49)
      {
        goto LABEL_41;
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

      while (v23 != v15);
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  v8 = *(v4 + 8);
  v46[0] = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v8, "outer_dims_perm", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v46) & 1) == 0)
  {
    return 0;
  }

  v46[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v5, "inner_dims_pos", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v46) & 1) == 0)
  {
    return 0;
  }

  v46[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v7, "static_inner_tiles", 0x12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v46) & 1) == 0 || (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v27 = 1;
  ODSOperands = mlir::tensor::UnPackOp::getODSOperands(this, 1u, v9, v10);
  if (v29)
  {
    v32 = v29;
    v33 = ODSOperands + 24;
    while ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*v33 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v27) & 1) != 0)
    {
      ++v27;
      v33 += 32;
      if (!--v32)
      {
        goto LABEL_49;
      }
    }

    return 0;
  }

LABEL_49:
  v34 = mlir::tensor::UnPackOp::getODSOperands(this, 2u, v30, v31);
  if (v35)
  {
    v36 = v35;
    v37 = v34 + 24;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v37 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v27) & 1) != 0)
    {
      ++v27;
      v37 += 32;
      if (!--v36)
      {
        goto LABEL_53;
      }
    }

    return 0;
  }

LABEL_53:
  v38 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v38, 0);
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v11 = 1;
  v42 = *(*(mlir::tensor::UnPackOp::getODSOperands(this, 1u, v40, v41) + 24) + 8);
  if (*(*this + 36))
  {
    v43 = *this - 16;
  }

  else
  {
    v43 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 0) + 8) ^ v42) >= 8)
  {
    v44[0] = "failed to verify that result type matches type of dest";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, v46);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v46);
  }

  return v11;
}

uint64_t *mlir::RewritePatternSet::add<mlir::tensor::UnPackOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "tensor.unpack", 13, a3, v10, a4, a5);
  *v11 = &unk_1F5B0A758;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
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
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

BOOL mlir::tensor::UnPackOp::parse(uint64_t a1, void *a2)
{
  v49[16] = *MEMORY[0x1E69E9840];
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  v38 = 0;
  v39 = 0;
  v47 = v49;
  v48 = 0x400000000;
  v37 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  v32[1] = 1;
  v33 = 0;
  v31 = 0;
  v32[0] = &v33;
  v29 = &v31;
  v30 = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v41, 1) & 1) == 0)
  {
    goto LABEL_38;
  }

  if (((*(*a1 + 408))(a1, "outer_dims_perm", 15) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v39, 0))
  {
LABEL_38:
    v21 = 0;
    goto LABEL_39;
  }

  v5 = v39;
  if (v39)
  {
    v6 = a2[32];
    if (!v6)
    {
      v7 = operator new(0x18uLL);
      v7[1] = 0;
      v7[2] = 0;
      *v7 = 0;
      a2[32] = v7;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = &v43;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = &v43;
      {
        mlir::tensor::UnPackOp::build();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = a2[32];
      v5 = v39;
    }

    *(v6 + 8) = v5;
  }

LABEL_11:
  v46 = 257;
  if (((*(*a1 + 400))(a1, "inner_dims_pos", 14, &v43) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v38, 0))
  {
    goto LABEL_38;
  }

  if (v38)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2);
    *v8 = v38;
  }

  v46 = 257;
  if (((*(*a1 + 400))(a1, "inner_tiles", 11, &v43) & 1) == 0)
  {
    goto LABEL_38;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_38;
  }

  (*(*a1 + 40))(a1);
  v43 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v47, &v37, &v43, 0))
  {
    goto LABEL_38;
  }

  v9 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2);
  *(v9 + 16) = v37;
  v46 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v43) & 1) == 0)
  {
    goto LABEL_38;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v35, 1) & 1) == 0)
  {
    goto LABEL_38;
  }

  v26[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_38;
  }

  v11 = a2[1];
  v43 = a1;
  v44 = v26;
  v45 = a2;
  if (!mlir::tensor::PackOp::verifyInherentAttrs(v11, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::UnPackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v43))
  {
    goto LABEL_38;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_38;
  }

  v43 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v43))
  {
    goto LABEL_38;
  }

  v33 = v43;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_42;
  }

  v43 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v43))
  {
    goto LABEL_42;
  }

  v31 = v43;
  v12 = v29;
  if (!v30)
  {
LABEL_31:
    v16 = (*(*a1 + 32))(a1);
    IndexType = mlir::Builder::getIndexType(v16, v17);
    mlir::OperationState::addTypes(a2, v12, 1);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v32, v4, (a2 + 2)) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, &v29, v10, (a2 + 2)))
    {
      if (!v48)
      {
        v21 = 1;
        goto LABEL_39;
      }

      v19 = v47;
      v20 = 32 * v48;
      while (((*(*a1 + 728))(a1, v19, IndexType, a2 + 2) & 1) != 0)
      {
        v19 += 32;
        v21 = 1;
        v20 -= 32;
        if (!v20)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_42:
    v21 = 0;
    goto LABEL_39;
  }

  v13 = 8 * v30;
  v14 = v29;
  while (1)
  {
    v28 = *v14;
    if (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      break;
    }

    v43 = llvm::cast<mlir::ShapedType,mlir::Type>(&v28);
    v44 = v15;
    mlir::ElementsAttr::isSplat(&v43);
    ++v14;
    v13 -= 8;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  v23 = (*(*a1 + 16))(a1);
  v27 = 257;
  (*(*a1 + 24))(&v43, a1, v23, v26);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v43, "'dest' must be ranked tensor of any type values, but got ");
  mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v24, &v28);
  v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
LABEL_39:
  if (v47 != v49)
  {
    free(v47);
  }

  return v21;
}

uint64_t mlir::tensor::YieldOp::parse(uint64_t a1, uint64_t a2)
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

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

uint64_t *mlir::tensor::PadOp::getMixedPadImpl@<X0>(uint64_t a1@<X0>, void **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v9) = a3;
  v18[2] = *MEMORY[0x1E69E9840];
  v18[0] = a4;
  v18[1] = a5;
  result = mlir::Attribute::getContext((*a1 + 24));
  v17 = result;
  *a6 = a6 + 16;
  *(a6 + 8) = 0x600000000;
  v9 = v9;
  if (v9)
  {
    v10 = 0;
    do
    {
      v12 = *a2++;
      v11 = v12;
      if (v12 == 0x8000000000000000)
      {
        v13 = mlir::ValueRange::dereference_iterator(v18, v10);
        result = mlir::getAsOpFoldResult(v13);
        v14 = *(a6 + 8);
        v15 = *(a6 + 12);
        ++v10;
      }

      else
      {
        result = (mlir::Builder::getI64IntegerAttr(&v17, v11) & 0xFFFFFFFFFFFFFFFBLL);
        v14 = *(a6 + 8);
        v15 = *(a6 + 12);
      }

      if (v14 >= v15)
      {
        v16 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v14 + 1, 8);
        result = v16;
        v14 = *(a6 + 8);
      }

      *(*a6 + 8 * v14) = result;
      ++*(a6 + 8);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::ParallelCombiningOpInterface,mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::ParallelCombiningOpInterface,mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroResults<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroOperands<mlir::scf::InParallelOp>,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::scf::InParallelOp>,mlir::OpTrait::NoTerminator<mlir::scf::InParallelOp>,mlir::OpTrait::SingleBlock<mlir::scf::InParallelOp>,mlir::OpTrait::OpInvariants<mlir::scf::InParallelOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::InParallelOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::IsTerminator<mlir::scf::InParallelOp>,mlir::ParallelCombiningOpInterface::Trait<mlir::scf::InParallelOp>,mlir::RegionKindInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::scf::InParallelOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

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
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroResults<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroOperands<mlir::scf::InParallelOp>,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::scf::InParallelOp>,mlir::OpTrait::NoTerminator<mlir::scf::InParallelOp>,mlir::OpTrait::SingleBlock<mlir::scf::InParallelOp>,mlir::OpTrait::OpInvariants<mlir::scf::InParallelOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::InParallelOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::IsTerminator<mlir::scf::InParallelOp>,mlir::ParallelCombiningOpInterface::Trait<mlir::scf::InParallelOp>,mlir::RegionKindInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::scf::InParallelOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[221];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 8))
  {
    v7 = (a1 + 24);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = v8;
    if (v9)
    {
      v11 = *a2;
      v12 = 8 * v9;
      v10 = *(a1 + 24);
      while (*v10 != v11)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    if (v10 != &v8[v9])
    {
      return 0;
    }

    v11 = *a2;
LABEL_14:
    if (v9 >= *(a1 + 36))
    {
      v16 = (a1 + 24);
      v17 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v9 + 1, 8);
      v7 = v16;
      *(*(a1 + 24) + 8 * *(a1 + 32)) = v17;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 5)
      {
LABEL_16:
        v14 = *v7;
        v15 = 8 * v13;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v14++, v18);
          v15 -= 8;
        }

        while (v15);
      }
    }

    else
    {
      v8[v9] = v11;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 5)
      {
        goto LABEL_16;
      }
    }

    return 1;
  }

  llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v18);
  if (v18[16] != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a1 + 32);
  if (v5 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v5 + 1, 8);
    LODWORD(v5) = *(a1 + 32);
  }

  *(*(a1 + 24) + 8 * v5) = v4;
  ++*(a1 + 32);
  return 1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, mlir::MLIRContext **a5)
{
  v32[38] = *MEMORY[0x1E69E9840];
  v29 = a3;
  Context = mlir::Attribute::getContext(&v29);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(v32, v31, v30);
  }

  mlir::OperationState::OperationState(v32, a3, v11);
  v13 = *a4;
  v31[0] = *a5;
  v14 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, v32[0], v31);
  mlir::memref::DimOp::build(a1, v32, v13, v14 - 16);
  v16 = mlir::Operation::create(v32, v15);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(a1 + 24);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v17 + 32, v16);
    v20 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v19);
    v21 = *v18;
    *v20 = *v18;
    v20[1] = v18;
    *(v21 + 8) = v20;
    *v18 = v20;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v22);
  }

  if ((mlir::OpBuilder::tryFold(a1, v16, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v16);
    goto LABEL_19;
  }

  v23 = v16[9];
  if (v23)
  {
    v24 = (v16 - 4);
  }

  else
  {
    v24 = 0;
  }

  *(a2 + 8) = 0;
  if (v23 > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v23, 8);
    v25 = *(a2 + 8);
LABEL_14:
    v26 = 0;
    v27 = *a2 + 8 * v25;
    do
    {
      *(v27 + 8 * v26) = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, v26);
      ++v26;
    }

    while (v23 != v26);
    *(a2 + 8) += v23;
    if (!*(a1 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v23)
  {
    v25 = 0;
    goto LABEL_14;
  }

  *(a2 + 8) = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

LABEL_17:
  v28 = *(a1 + 8);
  if (v28)
  {
    (*(*v28 + 16))(v28, v16, 0, 0);
  }

LABEL_19:
  mlir::OperationState::~OperationState(v32);
}

uint64_t mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

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
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[222];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void anonymous namespace::ChainedTensorBitcast::~ChainedTensorBitcast(_anonymous_namespace_::ChainedTensorBitcast *this)
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

uint64_t anonymous namespace::ChainedTensorBitcast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v9);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id)
    {
      v6 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v8 = *(*(result + 72) + 24);
      v9 = v6;
      v7 = mlir::OpBuilder::create<mlir::tensor::BitcastOp,mlir::TensorType &,mlir::Value>((a3 + 8), *(a2 + 24), &v9, &v8);
      (*(*a3 + 8))(a3, a2, v7);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::BitcastOp,mlir::TensorType &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::BitcastOp,mlir::TensorType &,mlir::Value>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id)
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

void anonymous namespace::ChainedTensorCast::~ChainedTensorCast(_anonymous_namespace_::ChainedTensorCast *this)
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

uint64_t anonymous namespace::ChainedTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v13);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v6 = *(*(*(result + 72) + 24) + 8);
      v7 = result;
      v8 = *(result - 8);
      v13 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v9 = v13;
      v10 = joinShapes(v6 & 0xFFFFFFFFFFFFFFF8, v8 & 0xFFFFFFFFFFFFFFF8);
      result = joinShapes(v10, v9);
      if (result)
      {
        if (result == joinShapes(v6 & 0xFFFFFFFFFFFFFFF8, v9))
        {
          v12 = *(*(v7 + 72) + 24);
          v11 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), *(a2 + 24), &v13, &v12);
          (*(*a3 + 8))(a3, a2, v11);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t joinShapes(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v23[4] = *MEMORY[0x1E69E9840];
  v19 = a2;
  v20 = a1;
  if (!mlir::TensorType::hasRank(&v20))
  {
    return v2;
  }

  if (!mlir::TensorType::hasRank(&v19))
  {
    return v20;
  }

  mlir::ArrayAttr::getValue(&v20);
  v4 = v3;
  mlir::ArrayAttr::getValue(&v19);
  if (v4 != v5)
  {
    return 0;
  }

  v21 = v23;
  v22 = 0x400000000;
  if (v4 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v4, 8);
  }

  if (v4 < 1)
  {
    v13 = v22;
LABEL_21:
    v14 = v21;
    v15 = v13;
    ElementType = mlir::TensorType::getElementType(&v20);
    v2 = mlir::RankedTensorType::get(v14, v15, ElementType, 0);
    v17 = v21;
    if (v21 != v23)
    {
      goto LABEL_22;
    }

    return v2;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(mlir::ArrayAttr::getValue(&v20) + 8 * v6);
    v8 = *(mlir::ArrayAttr::getValue(&v19) + 8 * v6);
    if (v7 == 0x8000000000000000)
    {
      goto LABEL_13;
    }

    Value = mlir::ArrayAttr::getValue(&v20);
    if (v8 != 0x8000000000000000)
    {
      break;
    }

    v11 = v22;
    v12 = HIDWORD(v22);
    v8 = *(Value + 8 * v6);
LABEL_14:
    if (v11 >= v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v11 + 1, 8);
      v11 = v22;
    }

    *(v21 + v11) = v8;
    v13 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    if (v4 == ++v6)
    {
      goto LABEL_21;
    }
  }

  v10 = *(Value + 8 * v6);
  if (v10 == *(mlir::ArrayAttr::getValue(&v19) + 8 * v6))
  {
    v8 = *(mlir::ArrayAttr::getValue(&v20) + 8 * v6);
LABEL_13:
    v11 = v22;
    v12 = HIDWORD(v22);
    goto LABEL_14;
  }

  v2 = 0;
  v17 = v21;
  if (v21 == v23)
  {
    return v2;
  }

LABEL_22:
  free(v17);
  return v2;
}

void anonymous namespace::TensorCastExtractSlice::~TensorCastExtractSlice(_anonymous_namespace_::TensorCastExtractSlice *this)
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

uint64_t anonymous namespace::TensorCastExtractSlice::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v47[4] = *MEMORY[0x1E69E9840];
  v45 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v45);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
    {
      v6 = DefiningOp;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v36 = v6;
  v7 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = 0;
  }

  v35 = v8;
  if (!v8 || !a2 || !v6 || !mlir::tensor::preservesStaticInformation(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v7))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v35);
  v11 = v10;
  v45 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = mlir::ArrayAttr::getValue(&v45);
  if (v11 != v13 || (result = memcmp(Value, v12, 8 * v11), result))
  {
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(&v36, &v45);
    v39[0] = *(v36 + 16 * ((*(v36 + 44) >> 23) & 1) + 72);
    v15 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v39);
    v17 = v16;
    if (*(v36 + 36))
    {
      v18 = v36 - 16;
    }

    else
    {
      v18 = 0;
    }

    v39[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = mlir::ArrayAttr::getValue(v39);
    mlir::computeRankReductionMask(v15, v17, v19, v20, 0, v41);
    v21 = v46;
    if (!v46)
    {
LABEL_19:
      v34 = *(*(v36 + 72) + 24);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(&v36, v39);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(&v36, v37);
      v22 = mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(a3 + 1, *(a2 + 24), &v35, &v34, v39, &v45, v37);
      ((*a3)[1])(a3, a2, v22);
      if (v37[0] != &v38)
      {
        free(v37[0]);
      }

      if (v39[0] != &v40)
      {
        free(v39[0]);
      }

      if (v44 == 1 && (v41[0] & 1) == 0)
      {
        llvm::deallocate_buffer(v42, (4 * v43));
      }

      if (v45 != v47)
      {
        free(v45);
      }

      return 1;
    }

    v23 = 0;
    v24 = 0;
    while (1)
    {
      if (v44 != 1)
      {
        goto LABEL_43;
      }

      if (v41[0])
      {
        v25 = &v42;
        v26 = 3;
        v27 = (37 * v24) & 3;
        v28 = *(&v42 + v27);
        if (v28 != v24)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (!v43)
        {
          goto LABEL_43;
        }

        v25 = v42;
        v26 = v43 - 1;
        v27 = (v43 - 1) & (37 * v24);
        v28 = *(v42 + v27);
        if (v28 != v24)
        {
LABEL_39:
          v30 = 1;
          while (v28 != -1)
          {
            v31 = v27 + v30++;
            v27 = v31 & v26;
            v28 = v25[v27];
            if (v28 == v24)
            {
              goto LABEL_33;
            }
          }

LABEL_43:
          v29 = v23 + 1;
          v32 = *(mlir::ArrayAttr::getValue(&v35) + 8 * v23);
          if (v32 != 0x8000000000000000)
          {
            IndexAttr = mlir::Builder::getIndexAttr(a3 + 1, v32);
            v45[v24] = IndexAttr & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_34;
        }
      }

LABEL_33:
      v29 = v23;
LABEL_34:
      ++v24;
      v23 = v29;
      if (v24 == v21)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::tensor::ExtractSliceOp::build(a1, v23, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8), 0, 0);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

void anonymous namespace::SingleInputConcatOp::~SingleInputConcatOp(_anonymous_namespace_::SingleInputConcatOp *this)
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

void anonymous namespace::DimOfCastOp::~DimOfCastOp(_anonymous_namespace_::DimOfCastOp *this)
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

uint64_t anonymous namespace::DimOfCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v9 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v9);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v6 = *(*(result + 72) + 24);
      v8 = *(*(a2 + 72) + 56);
      v9 = v6;
      v7 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,mlir::detail::TypedValue<mlir::IndexType>>(a3 + 1, *(a2 + 24), &v9, &v8);
      (*(*a3 + 1))(a3, a2, v7);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void anonymous namespace::DimOfDestStyleOp::~DimOfDestStyleOp(_anonymous_namespace_::DimOfDestStyleOp *this)
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

uint64_t anonymous namespace::DimOfDestStyleOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v17 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  v6 = DefiningOp;
  if (DefiningOp)
  {
    if (!mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(DefiningOp))
    {
      v15 = 0;
      v16 = 0;
      return 0;
    }

    DefiningOp = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
  }

  v15 = v6;
  v16 = DefiningOp;
  if (!v6)
  {
    return 0;
  }

  if (v17 && (*(v17 + 8) & 7) == 6)
  {
    v7 = *(v17 + 16) + 6;
  }

  else
  {
    v7 = *(v17 + 8) & 7;
  }

  mlir::MapDynamicShapeOpInterface::mapDynamicShape(v18, &v15);
  v8 = mlir::MutableOperandRange::operator[](v18, v7);
  if (v19 != v20)
  {
    free(v19);
  }

  (*(*a3 + 40))(a3, a2);
  v9 = *(a2 + 72);
  v10 = *(v8 + 24);
  v11 = v9[1];
  if (v11)
  {
    v12 = *v9;
    *v11 = *v9;
    if (v12)
    {
      *(v12 + 8) = v11;
    }
  }

  v9[3] = v10;
  v13 = *v10;
  *v9 = *v10;
  v9[1] = v10;
  if (v13)
  {
    *(v13 + 8) = v9;
  }

  *v10 = v9;
  (*(*a3 + 48))(a3, a2);
  return 1;
}

void anonymous namespace::DimOfReshapeOp::~DimOfReshapeOp(_anonymous_namespace_::DimOfReshapeOp *this)
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

uint64_t anonymous namespace::DimOfReshapeOp::matchAndRewrite(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *(a2[9] + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id)
  {
    return 0;
  }

  v8 = a2[2];
  v9 = DefiningOp;
  v10 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v6) + 8);
  *(a3 + 24) = v8;
  *(a3 + 32) = v10;
  v11 = a2[3];
  v12 = *(*(v9 + 72) + 56);
  v15 = *(a2[9] + 56);
  v16 = v12;
  v13 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::detail::TypedValue<mlir::IndexType>>((a3 + 8), v11, &v16, &v15);
  v17 = v13 - 16;
  v14 = *(a2 - 1);
  if ((v14 ^ *(v13 - 8)) >= 8)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFF8;
    v17 = mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>((a3 + 8), v11, &v16, &v17) - 16;
  }

  (**a3)(a3, a2, &v17, 1);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::detail::TypedValue<mlir::IndexType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::tensor::ExtractOp::build(v11, v18, *a3, a4, 1uLL);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
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

void anonymous namespace::FoldEmptyTensorWithCastOp::~FoldEmptyTensorWithCastOp(_anonymous_namespace_::FoldEmptyTensorWithCastOp *this)
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

uint64_t anonymous namespace::FoldEmptyTensorWithCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v34[6] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  result = mlir::tensor::preservesStaticInformation(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v32 = *(*(a2 + 72) + 24);
    result = mlir::Value::getDefiningOp(&v32);
    if (result)
    {
      v6 = *(*(result + 48) + 16);
      if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
      {
        v7 = result;
      }

      else
      {
        v7 = 0;
      }

      v25 = v7;
      if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
      {
        return 0;
      }

      v24 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      Value = mlir::ArrayAttr::getValue(&v24);
      v10 = v9;
      mlir::tensor::EmptyOp::getMixedSizes(&v25, &v32);
      v29 = v31;
      v30 = 0x600000000;
      v11 = v33;
      if (v33 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v33, 8);
        v11 = v33;
      }

      if (!v10 || !v11)
      {
LABEL_31:
        v26[0] = mlir::AffineBinaryOpExpr::getRHS(&v24);
        v19 = mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>((a3 + 1), *(a2 + 24), &v29, v26);
        (*(*a3 + 1))(a3, a2, v19);
        result = 1;
        v20 = v29;
        if (v29 == v31)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v12 = v32;
      v13 = 8 * v11 - 8;
      v14 = 8 * v10 - 8;
      while (1)
      {
        v15 = *Value;
        if ((*v12 & 4) != 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = *v12 & 0xFFFFFFFFFFFFFFF8;
        }

        if (v16)
        {
          if (v15 == 0x8000000000000000 || (v26[0] = v16, v15 != mlir::IntegerAttr::getInt(v26)))
          {
            v26[0] = "mismatch in static value of shape of empty tensor result and cast result";
            v27 = 259;
            v28 = v26;
            v23 = a3[2];
            if (v23 && mlir::RewriterBase::Listener::classof(v23))
            {
              (*(*v23 + 88))(v23, *(v7 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::EmptyOp &>(mlir::tensor::EmptyOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v28);
            }

            result = 0;
            v20 = v29;
            if (v29 == v31)
            {
LABEL_33:
              if (v32 != v34)
              {
                v22 = result;
                free(v32);
                return v22;
              }

              return result;
            }

LABEL_32:
            v21 = result;
            free(v20);
            result = v21;
            goto LABEL_33;
          }

          v17 = v30;
          if (v30 < HIDWORD(v30))
          {
LABEL_22:
            *(v29 + v17) = v16;
            LODWORD(v30) = v30 + 1;
            if (!v14)
            {
              goto LABEL_31;
            }

            goto LABEL_23;
          }
        }

        else if (v15 == 0x8000000000000000)
        {
          v17 = v30;
          v16 = *v12;
          if (v30 < HIDWORD(v30))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v16 = mlir::Builder::getIndexAttr(a3 + 1, *Value) & 0xFFFFFFFFFFFFFFFBLL;
          v17 = v30;
          if (v30 < HIDWORD(v30))
          {
            goto LABEL_22;
          }
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v17 + 1, 8);
        *(v29 + v30) = v16;
        LODWORD(v30) = v30 + 1;
        if (!v14)
        {
          goto LABEL_31;
        }

LABEL_23:
        ++Value;
        ++v12;
        v18 = v13;
        v13 -= 8;
        v14 -= 8;
        if (!v18)
        {
          goto LABEL_31;
        }
      }
    }
  }

  return result;
}

void anonymous namespace::FoldEmptyTensorWithDimOp::~FoldEmptyTensorWithDimOp(_anonymous_namespace_::FoldEmptyTensorWithDimOp *this)
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

uint64_t anonymous namespace::FoldEmptyTensorWithDimOp::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, unint64_t *, uint64_t))
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 56) | 4);
  v7 = v6;
  v19 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v19);
  v9 = DefiningOp;
  if (DefiningOp)
  {
    v10 = *(*(DefiningOp + 48) + 16);
    if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
    {
      v11 = DefiningOp;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id && (v7 & 1) != 0 && (*(DefiningOp + 36) ? (v12 = DefiningOp - 16) : (v12 = 0), v19 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8, *(mlir::ArrayAttr::getValue(&v19) + 8 * ConstantIntValue) == 0x8000000000000000))
    {
      v13 = ConstantIntValue;
      if (ConstantIntValue)
      {
        v14 = 0;
        LODWORD(v15) = 0;
        v16 = 8 * v13;
        do
        {
          if (*(v9 + 36))
          {
            v17 = v9 - 16;
          }

          else
          {
            v17 = 0;
          }

          v19 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          if (*(mlir::ArrayAttr::getValue(&v19) + v14) == 0x8000000000000000)
          {
            v15 = (v15 + 1);
          }

          else
          {
            v15 = v15;
          }

          v14 += 8;
        }

        while (v16 != v14);
      }

      else
      {
        v15 = 0;
      }

      v19 = *(*(v11 + 72) + 32 * v15 + 24);
      v9 = 1;
      (**a3)(a3, a2, &v19, 1);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

void anonymous namespace::ReplaceEmptyTensorStaticShapeDims::~ReplaceEmptyTensorStaticShapeDims(_anonymous_namespace_::ReplaceEmptyTensorStaticShapeDims *this)
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

uint64_t foldDynamicToStaticDimSizes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v26 = a1;
  v30[0] = a2;
  v30[1] = a3;
  Value = mlir::ArrayAttr::getValue(&v26);
  v7 = v5;
  v27 = v29;
  v28 = 0x600000000;
  v8 = (8 * v5) >> 3;
  if (v8 < 7)
  {
    v9 = 0;
    v10 = 8 * v5;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v8, 8);
  v9 = v28;
  v10 = 8 * v7;
  if (v7)
  {
LABEL_5:
    memcpy(v27 + 8 * v9, Value, v10);
    v9 = v28;
  }

LABEL_6:
  LODWORD(v28) = v9 + (v10 >> 3);
  mlir::ArrayAttr::getValue(&v26);
  if (v11 >= 1)
  {
    v12 = v11;
    v13 = 0;
    for (i = 0; i != v12; ++i)
    {
      if (*(mlir::ArrayAttr::getValue(&v26) + 8 * i) == 0x8000000000000000)
      {
        v15 = (v13 + 1);
        v16 = mlir::ValueRange::dereference_iterator(v30, v13);
        ConstantIntValue = mlir::getConstantIntValue(v16 | 4);
        if ((v18 & 1) == 0 || (ConstantIntValue & 0x8000000000000000) != 0)
        {
          v19 = *(a4 + 8);
          if (v19 >= *(a4 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v19 + 1, 8);
            v19 = *(a4 + 8);
          }

          *(*a4 + 8 * v19) = v16;
          ++*(a4 + 8);
        }

        else
        {
          *(v27 + i) = ConstantIntValue;
        }
      }

      else
      {
        v15 = v13;
      }

      v13 = v15;
    }
  }

  v20 = v27;
  v21 = v28;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v26);
  Values = mlir::SparseElementsAttr::getValues(&v26);
  result = mlir::RankedTensorType::get(v20, v21, RHS, Values);
  if (v27 != v29)
  {
    v25 = result;
    free(v27);
    return v25;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::EmptyOp,mlir::RankedTensorType &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>(v18, v23, v17);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v23, *a4, *(a4 + 8));
  mlir::OperationState::addOperands(v18, v23[0], v23[1]);
  v12 = v20;
  if (v20 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, &v22, v20 + 1, 8);
    v12 = v20;
  }

  *(v19 + 8 * v12) = v11;
  ++v20;
  v13 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::tensor::EmptyOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4 - 16;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
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

void anonymous namespace::ExtractFromTensorCast::~ExtractFromTensorCast(_anonymous_namespace_::ExtractFromTensorCast *this)
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

uint64_t anonymous namespace::ExtractFromTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(v9);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      if (*(*(*(*(*(result + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v10 = *(*(result + 72) + 24);
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v6 = *(a2 + 72);
          v7 = *(a2 + 68) - 1;
        }

        else
        {
          v6 = 0;
          v7 = -1;
        }

        v9[0] = v6 + 32;
        v9[1] = v7;
        v8 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v10, v9);
        (*(*a3 + 8))(a3, a2, v8);
        return 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void anonymous namespace::ExtractElementFromIndexCast::~ExtractElementFromIndexCast(_anonymous_namespace_::ExtractElementFromIndexCast *this)
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

uint64_t anonymous namespace::ExtractElementFromIndexCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v11[0] = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(v11);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
    {
      v7 = result;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(result + 72) + 24));
      v12 = *(*(v7 + 72) + 24);
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v8 = *(a2 + 72);
        v9 = *(a2 + 68) - 1;
      }

      else
      {
        v8 = 0;
        v9 = -1;
      }

      v11[0] = v8 + 32;
      v11[1] = v9;
      v13 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type &,mlir::Value,mlir::OperandRange>((a3 + 8), v5, &ElementTypeOrSelf, &v12, v11);
      v11[0] = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v10 = mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::Type,mlir::tensor::ExtractOp &>((a3 + 8), *(a2 + 24), v11, &v13);
      (*(*a3 + 8))(a3, a2, v10);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type &,mlir::Value,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v28[5] = *MEMORY[0x1E69E9840];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange>(v23, v28, v22);
  }

  mlir::OperationState::OperationState(v23, a2, v11);
  v13 = *a3;
  v14 = *a4;
  mlir::ValueRange::ValueRange(v28, *a5, *(a5 + 8));
  v15 = v28[0];
  v16 = v28[1];
  v22[0] = v14;
  mlir::OperationState::addOperands(v23, v22, 1uLL);
  mlir::OperationState::addOperands(v23, v15, v16);
  v17 = v25;
  if (v25 >= v26)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, &v27, v25 + 1, 8);
    v17 = v25;
  }

  *(v24 + 8 * v17) = v13;
  ++v25;
  v18 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v19;
}

uint64_t mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::Type,mlir::tensor::ExtractOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::IndexCastOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
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

void anonymous namespace::ExtractFromTensorGenerate::~ExtractFromTensorGenerate(_anonymous_namespace_::ExtractFromTensorGenerate *this)
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

uint64_t anonymous namespace::ExtractFromTensorGenerate::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[0] = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v35);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id)
    {
      v7 = DefiningOp;
      if (mlir::wouldOpBeTriviallyDead(DefiningOp, v6))
      {
        v36 = 0;
        v35[0] = 0;
        v35[1] = 0;
        v39 = 0;
        v37 = 0;
        v38 = 0;
        v42 = 0;
        v40 = 0;
        v41 = 0;
        v9 = *(((v7 + 16 * ((*(v7 + 11) >> 23) & 1) + ((*(v7 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 10) + 8);
        if (v9)
        {
          v10 = (v9 - 8);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10[6];
        v12 = v10[7];
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v13 = *(a2 + 72);
          v14 = *(a2 + 68) - 1;
          if (v12 == v11 || *(a2 + 68) == 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v13 = 0;
          v14 = -1;
          if (v12 == v11)
          {
            goto LABEL_18;
          }
        }

        v16 = v14 - 1;
        v17 = (v13 + 56);
        v18 = v11 + 8;
        do
        {
          v19 = *v17;
          v17 += 4;
          v43 = *(v18 - 8);
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v35, &v43) = v19;
          v21 = v16-- != 0;
          if (v18 == v12)
          {
            break;
          }

          v18 += 8;
        }

        while (v21);
LABEL_18:
        v22 = v10[5];
        v23 = v10 + 4;
        if (v22 != v10 + 4)
        {
          for (i = *v23; v22 != i; v22 = v22[1])
          {
            v25 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v22, v8);
            mlir::OpBuilder::clone((a3 + 8), v25, v35);
          }
        }

        Terminator = mlir::Block::getTerminator(v10, v8);
        v27 = *(*(Terminator + 72) + 24);
        if (v36)
        {
          v28 = 0x9DDFEA08EB382D69 * ((8 * *(*(Terminator + 72) + 24) - 0xAE502812AA7333) ^ HIDWORD(*(*(Terminator + 72) + 24)));
          v29 = 0x9DDFEA08EB382D69 * (HIDWORD(v27) ^ (v28 >> 47) ^ v28);
          v30 = (-348639895 * ((v29 >> 47) ^ v29)) & (v36 - 1);
          v31 = *(v35[0] + 2 * v30);
          if (v31 == v27)
          {
LABEL_23:
            if (v30 != v36)
            {
              v27 = *(v35[0] + 2 * v30 + 1);
            }
          }

          else
          {
            v33 = 1;
            while (v31 != -4096)
            {
              v34 = v30 + v33++;
              v30 = v34 & (v36 - 1);
              v31 = *(v35[0] + 2 * v30);
              if (v31 == v27)
              {
                goto LABEL_23;
              }
            }
          }
        }

        v43 = v27;
        (**a3)(a3, a2, &v43, 1);
        llvm::deallocate_buffer(v40, (16 * v42));
      }
    }
  }

  return 0;
}

void anonymous namespace::StaticTensorGenerate::~StaticTensorGenerate(_anonymous_namespace_::StaticTensorGenerate *this)
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

uint64_t mlir::OpBuilder::create<mlir::tensor::GenerateOp,mlir::RankedTensorType &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::GenerateOp,mlir::RankedTensorType &,llvm::SmallVector<mlir::Value,6u> &>(v18, v23, v17);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v23, *a4, *(a4 + 8));
  mlir::OperationState::addOperands(v18, v23[0], v23[1]);
  mlir::OperationState::addRegion(v18);
  v12 = v20;
  if (v20 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, &v22, v20 + 1, 8);
    v12 = v20;
  }

  *(v19 + 8 * v12) = v11;
  ++v20;
  v13 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v14;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::ExpandShapeOp,mlir::RankedTensorType>(mlir::tensor::ExpandShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>(uint64_t **a1, void **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  mlir::Operation::emitOpError(**a1, a2, v12);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
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

    v3 = __p;
    if (__p)
    {
      v4 = v18;
      v5 = __p;
      if (v18 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v18 = v3;
      operator delete(v5);
    }

    v6 = v15;
    if (v15)
    {
      v7 = v16;
      v8 = v15;
      if (v16 != v15)
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
        v8 = v15;
      }

      v16 = v6;
      operator delete(v8);
    }

    if (v13 != &v14)
    {
      free(v13);
    }
  }

  return v2;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType>(mlir::tensor::CollapseShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>(uint64_t **a1, void **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  mlir::Operation::emitOpError(**a1, a2, v12);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
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

    v3 = __p;
    if (__p)
    {
      v4 = v18;
      v5 = __p;
      if (v18 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v18 = v3;
      operator delete(v5);
    }

    v6 = v15;
    if (v15)
    {
      v7 = v16;
      v8 = v15;
      if (v16 != v15)
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
        v8 = v15;
      }

      v16 = v6;
      operator delete(v8);
    }

    if (v13 != &v14)
    {
      free(v13);
    }
  }

  return v2;
}

void mlir::RewritePatternSet::addImpl<mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "tensor.expand_shape", 19, v31, v9, 0, 0);
  *v8 = &unk_1F5B09928;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp, mlir::ReshapeOpKind::kExpand>]";
    v32 = 145;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void mlir::RewritePatternSet::addImpl<mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "tensor.expand_shape", 19, v31, v9, 0, 0);
  *v8 = &unk_1F5B099C8;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp, mlir::tensor::CollapseShapeOp>]";
    v32 = 141;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void *mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(void *a1)
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

void mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(void *__p)
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

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v40 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v40);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    v35 = v8;
    if (!v7)
    {
      return 0;
    }

    v9 = *(a2 + 36) ? a2 - 16 : 0;
    v40 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v34[0] = mlir::TensorType::operator mlir::ShapedType(&v40);
    v34[1] = v10;
    if (mlir::hasNonIdentityLayout(*(*(*(v35 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(v36 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    v11 = *(v36 + 36) ? v36 - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
    if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    mlir::memref::CollapseShapeOp::getReassociationIndices(&v35, &v40);
    v13 = v40;
    v14 = v41;
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v36, &v37);
    mlir::composeReassociationIndices(v13, v14, v37, v38, &v43);
    v15 = v37;
    if (v38)
    {
      v16 = v37 + 32 * v38 - 16;
      v17 = -32 * v38;
      do
      {
        v18 = *(v16 - 2);
        if (v16 != v18)
        {
          free(v18);
        }

        v16 -= 32;
        v17 += 32;
      }

      while (v17);
      v15 = v37;
    }

    if (v15 != &v39)
    {
      free(v15);
    }

    v19 = v40;
    if (v41)
    {
      v20 = v40 + 32 * v41 - 16;
      v21 = -32 * v41;
      do
      {
        v22 = *(v20 - 2);
        if (v20 != v22)
        {
          free(v22);
        }

        v20 -= 32;
        v21 += 32;
      }

      while (v21);
      v19 = v40;
    }

    if (v19 != v42)
    {
      free(v19);
    }

    if (v46 != 1)
    {
      return 0;
    }

    else
    {
      v40 = *(v36 + 16 * ((*(v36 + 44) >> 23) & 1) + 72);
      v23 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v40);
      v25 = v24;
      if ((*(v36 + 46) & 0x80) != 0)
      {
        v26 = *(v36 + 72);
        v27 = *(v36 + 68) - 1;
      }

      else
      {
        v26 = 0;
        v27 = -1;
      }

      mlir::ValueRange::ValueRange(&v37, v26 + 32, v27);
      mlir::getMixedValues(v23, v25, v37, v38, a3 + 1, &v40);
      v28 = v36;
      v37 = *(*(v35 + 72) + 24);
      v29 = mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a3 + 1, *(v36 + 24), v34, &v37, &v43, &v40);
      ((*a3)[1])(a3, v28, v29);
      if (v40 != v42)
      {
        free(v40);
      }

      if (v46)
      {
        v30 = v43;
        if (v44)
        {
          v31 = &v43[4 * v44 - 2];
          v32 = -32 * v44;
          do
          {
            v33 = *(v31 - 16);
            if (v31 != v33)
            {
              free(v33);
            }

            v31 -= 32;
            v32 += 32;
          }

          while (v32);
          v30 = v43;
        }

        if (v30 != &v45)
        {
          free(v30);
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a1 + 1, *(a2 + 24), a3, a4, a5, a6);
  ((*a1)[1])(a1, a2, v8);
  return v8;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::tensor::ExpandShapeOp::build(a1, v21, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8));
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
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

void *mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::~ComposeExpandOfCollapseOp(void *a1)
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

void mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::~ComposeExpandOfCollapseOp(void *__p)
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

uint64_t mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v67[16] = *MEMORY[0x1E69E9840];
  v56 = a2;
  v65 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v65);
  if (!DefiningOp)
  {
    return 0;
  }

  v6 = *(*(DefiningOp + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
  v8 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id ? DefiningOp : 0;
  v55 = v8;
  if (!v7)
  {
    return 0;
  }

  v9 = DefiningOp;
  v65 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54[0] = mlir::TensorType::operator mlir::ShapedType(&v65);
  v54[1] = v10;
  v11 = *(a2 + 36) ? a2 - 16 : 0;
  v65 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v53[0] = mlir::TensorType::operator mlir::ShapedType(&v65);
  v53[1] = v12;
  if (mlir::hasNonIdentityLayout(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(v9 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  v13 = *(v9 + 36) ? v9 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v54);
  v16 = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(v53);
  if (v54[0] == v53[0])
  {
    return 0;
  }

  v18 = v17;
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v55, &v65);
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v56, &v62);
  if (v16 <= v18)
  {
    v31 = v62;
    v32 = v63;
    v33 = v65;
    v34 = v66;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v53);
    v37 = v36;
    v38 = mlir::CallableOpInterface::getArgAttrsAttr(v54);
    mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::findCollapsingReassociation(v31, v32, v33, v34, ArgAttrsAttr, v37, v60, v38, v39);
    if (v61 == 1)
    {
      v58[0] = *(v56 + 16 * ((*(v56 + 44) >> 23) & 1) + 72);
      v40 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v58);
      v42 = v41;
      if ((*(v56 + 46) & 0x80) != 0)
      {
        v43 = *(v56 + 72);
        v44 = *(v56 + 68) - 1;
      }

      else
      {
        v43 = 0;
        v44 = -1;
      }

      mlir::ValueRange::ValueRange(v57, v43 + 32, v44);
      mlir::getMixedValues(v40, v42, v57[0], v57[1], a3 + 1, v58);
      v57[0] = *(*(v55 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a3, v56, v53, v57, v60, v58);
      if (v58[0] != v59)
      {
        free(v58[0]);
      }

      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v29 = v60;
  }

  else
  {
    v19 = v65;
    v20 = v66;
    v21 = v62;
    v22 = v63;
    v23 = mlir::CallableOpInterface::getArgAttrsAttr(v54);
    v25 = v24;
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(v53);
    mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::findCollapsingReassociation(v19, v20, v21, v22, v23, v25, v58, v26, v27);
    if (v59[32] == 1)
    {
      v60[0] = *(*(v55 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, v56, v53, v60, v58);
      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v29 = v58;
  }

  std::optional<llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>>::~optional(v29);
  v45 = v62;
  if (v63)
  {
    v46 = v62 + 32 * v63 - 16;
    v47 = -32 * v63;
    do
    {
      v48 = *(v46 - 2);
      if (v46 != v48)
      {
        free(v48);
      }

      v46 -= 32;
      v47 += 32;
    }

    while (v47);
    v45 = v62;
  }

  if (v45 != &v64)
  {
    free(v45);
  }

  v49 = v65;
  if (v66)
  {
    v50 = &v65[4 * v66 - 2];
    v51 = -32 * v66;
    do
    {
      v52 = *(v50 - 2);
      if (v50 != v52)
      {
        free(v52);
      }

      v50 -= 4;
      v51 += 32;
    }

    while (v51);
    v49 = v65;
  }

  if (v49 != v67)
  {
    free(v49);
  }

  return v28;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a1 + 1, *(a2 + 24), a3, a4, a5);
  ((*a1)[1])(a1, a2, v7);
  return v7;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(v27, &v29, v24);
  }

  mlir::OperationState::OperationState(v27, a2, v11);
  v13 = *a3;
  v14 = *a5;
  v15 = *(a5 + 8);
  v25 = *a4;
  v26 = v13;
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, v14, v15);
  v17 = mlir::Attribute::getContext(v27);
  v31 = 261;
  v29 = "reassociation";
  v30 = 13;
  v18 = mlir::StringAttr::get(v17, &v29);
  mlir::NamedAttribute::NamedAttribute(v24, v18, ReassociationIndicesAttribute);
  mlir::NamedAttrList::push_back(&v28, v24[0], v24[1]);
  v19 = mlir::ValueRange::ValueRange(&v29, &v26, 1uLL);
  mlir::tensor::CollapseShapeOp::build(v19, v27, v29, v30, &v25, 1uLL, 0, 0);
  v20 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v21;
}

void *anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithConstant(void *a1)
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

void anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithConstant(void *__p)
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

uint64_t anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 + 72) + 24);
  v18 = &v19;
  v19 = 0;
  v20 = v5;
  result = mlir::Value::getDefiningOp(&v20);
  if (result)
  {
    v7 = mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v18, result);
    result = 0;
    if (v7)
    {
      if (v19)
      {
        result = mlir::DenseElementsAttr::isSplat(&v19);
        if (result)
        {
          if (*(a2 + 36))
          {
            v8 = a2 - 16;
          }

          else
          {
            v8 = 0;
          }

          v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          v9 = mlir::TensorType::operator mlir::ShapedType(&v18);
          v11 = v10;
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v19);
          v20 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v11, RawStringData, v13, v14, v15, v16);
          v17 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), *(a2 + 24), &v20);
          (*(*a3 + 8))(a3, a2, v17);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, void **a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  v10 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v10)
  {
    v11 = *(v9 + 24);
  }

  else
  {
    v11 = 0;
  }

  mlir::arith::ConstantOp::build(a1, v18, v10, v11);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
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

void *anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithSplat(void *a1)
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

void anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithSplat(void *__p)
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

uint64_t anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (!DefiningOp)
  {
    return 0;
  }

  v6 = *(*(DefiningOp + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id ? DefiningOp : 0;
  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    return 0;
  }

  v8 = *(DefiningOp + 36) ? DefiningOp - 16 : 0;
  v17 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v17))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v17);
  if (v10)
  {
    v11 = 8 * v10;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*(v7 + 72) + 24);
  v17 = v13;
  v14 = mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>((a3 + 8), *(a2 + 24), &v17, &v16);
  (*(*a3 + 8))(a3, a2, v14);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, a3, 1uLL);
  mlir::arith::ExtSIOp::build(v11, v17, v18[0], v18[1], a4, 1uLL, 0, 0);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithFromElements(void *a1)
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

void anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithFromElements(void *__p)
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

uint64_t anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v30);
  if (!result)
  {
    return result;
  }

  v6 = *(*(result + 48) + 16);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  v8 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v8;
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v26 = v9;
    v27 = v8;
    mlir::arith::ExtUIOp::fold();
    v8 = v27;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v26 + 8);
    v12 = *(v26 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 != &v11[2 * v12] && *v13 == v10)
  {
    v25 = v13[1];
    v30 = v8;
    v31 = v25;
    result = mlir::CallOpInterface::getArgOperands(&v30);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_20:
  v30 = v8;
  v31 = 0;
  result = mlir::CallOpInterface::getArgOperands(&v30);
  if (!result)
  {
    return result;
  }

LABEL_21:
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v30);
  if (v20)
  {
    v21 = 8 * v20;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  else
  {
LABEL_25:
    v29 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    if ((*(v7 + 46) & 0x80) != 0)
    {
      v22 = *(v7 + 68);
      v23 = *(v7 + 72);
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v28[0] = v23;
    v28[1] = v22;
    v24 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v29, v28);
    (*(*a3 + 8))(a3, a2, v24);
    return 1;
  }
}

uint64_t mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::Value &>(v18, v23, v17);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v23, *a4, *(a4 + 8));
  mlir::OperationState::addOperands(v18, v23[0], v23[1]);
  v12 = v20;
  if (v20 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, &v22, v20 + 1, 8);
    v12 = v20;
  }

  *(v19 + 8 * v12) = v11;
  ++v20;
  v13 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v14;
}

void anonymous namespace::FoldDimOfExpandShape::~FoldDimOfExpandShape(_anonymous_namespace_::FoldDimOfExpandShape *this)
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

uint64_t anonymous namespace::FoldDimOfExpandShape::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v36 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v36);
  if (!result)
  {
    return result;
  }

  v6 = *(*(result + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v35 = v8;
  if (!v7)
  {
    return 0;
  }

  v9 = result;
  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 56) | 4);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = ConstantIntValue;
  v13 = *(v9 + 36) ? v9 - 16 : 0;
  v34 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(mlir::ArrayAttr::getValue(&v34) + 8 * v12) != 0x8000000000000000)
  {
    return 0;
  }

  CorrespondingSourceDim = mlir::tensor::ExpandShapeOp::getCorrespondingSourceDim(&v35, v12);
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v35, &v36);
  v14 = v36;
  v15 = v36 + 32 * CorrespondingSourceDim;
  v39 = v41;
  v40 = 0x200000000;
  v16 = *(v15 + 2);
  if (&v39 != v15 && v16 != 0)
  {
    if (v16 < 3)
    {
      v19 = v41;
      v18 = *(v15 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, *(v15 + 2), 8);
      v18 = *(v15 + 2);
      if (!v18)
      {
LABEL_23:
        LODWORD(v40) = v16;
        v14 = v36;
        goto LABEL_24;
      }

      v19 = v39;
    }

    memcpy(v19, *v15, 8 * v18);
    goto LABEL_23;
  }

LABEL_24:
  if (v37)
  {
    v20 = &v14[4 * v37 - 2];
    v21 = -32 * v37;
    do
    {
      v22 = *(v20 - 16);
      if (v20 != v22)
      {
        free(v22);
      }

      v20 -= 32;
      v21 += 32;
    }

    while (v21);
    v14 = v36;
  }

  if (v14 != &v38)
  {
    free(v14);
  }

  if (v40)
  {
    v23 = v39;
    v24 = 8 * v40;
    v25 = 1;
    do
    {
      if (*v23 != v12)
      {
        v26 = *v23;
        v25 *= *(mlir::ArrayAttr::getValue(&v34) + 8 * v26);
      }

      ++v23;
      v24 -= 8;
    }

    while (v24);
  }

  else
  {
    v25 = 1;
  }

  v27 = *(a2 + 24);
  AffineSymbolExpr = *(*(v35 + 72) + 24);
  v36 = (mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::detail::TypedValue<mlir::TensorType>,long long &>(a3 + 1, v27, &AffineSymbolExpr, &CorrespondingSourceDim) - 16);
  Context = mlir::Attribute::getContext((a2 + 24));
  AffineSymbolExpr = mlir::getAffineSymbolExpr(0, Context, v29);
  v31 = mlir::AffineExpr::floorDiv(&AffineSymbolExpr, v25);
  v30 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(a3 + 1, *(a2 + 24), &v31, &v36);
  (*(*a3 + 1))(a3, a2, v30);
  if (v39 != v41)
  {
    free(v39);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::detail::TypedValue<mlir::TensorType>,long long &>(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, mlir::MLIRContext **a4)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  v12 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, v19[0], v18);
  mlir::memref::DimOp::build(a1, v19, v11, v12 - 16);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::affine::AffineApplyOp::build(a1, v17, a3, 1, a4, 1uLL);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
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

void anonymous namespace::FoldDimOfCollapseShape::~FoldDimOfCollapseShape(_anonymous_namespace_::FoldDimOfCollapseShape *this)
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

uint64_t anonymous namespace::FoldDimOfCollapseShape::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v47[2] = *MEMORY[0x1E69E9840];
  v42 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v42);
  if (!result)
  {
    return result;
  }

  v6 = *(*(result + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v38 = v8;
  if (!v7)
  {
    return 0;
  }

  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 56) | 4);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = ConstantIntValue;
  v12 = *(v38 + 36) ? v38 - 16 : 0;
  v37 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(mlir::ArrayAttr::getValue(&v37) + 8 * v11) != 0x8000000000000000)
  {
    return 0;
  }

  mlir::memref::CollapseShapeOp::getReassociationIndices(&v38, &v42);
  v13 = v42;
  v14 = v42 + 32 * v11;
  v45 = v47;
  v46 = 0x200000000;
  v15 = *(v14 + 2);
  if (&v45 != v14 && v15 != 0)
  {
    if (v15 < 3)
    {
      v18 = v47;
      v17 = *(v14 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, *(v14 + 2), 8);
      v17 = *(v14 + 2);
      if (!v17)
      {
LABEL_23:
        LODWORD(v46) = v15;
        v13 = v42;
        goto LABEL_24;
      }

      v18 = v45;
    }

    memcpy(v18, *v14, 8 * v17);
    goto LABEL_23;
  }

LABEL_24:
  if (v43)
  {
    v19 = &v13[32 * v43 - 16];
    v20 = -32 * v43;
    do
    {
      v21 = *(v19 - 16);
      if (v19 != v21)
      {
        free(v21);
      }

      v19 -= 32;
      v20 += 32;
    }

    while (v20);
    v13 = v42;
  }

  if (v13 != v44)
  {
    free(v13);
  }

  v42 = v44;
  v43 = 0x600000000;
  v39 = v41;
  v40 = 0x600000000;
  v36 = 0;
  if (v46)
  {
    v22 = 0;
    v23 = v45;
    v24 = 8 * v46;
    do
    {
      v25 = *(a2 + 24);
      v35 = *(*(v38 + 72) + 24);
      v26 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::detail::TypedValue<mlir::TensorType>,long long &>(a3 + 1, v25, &v35, v23);
      v28 = v43;
      if (v43 >= HIDWORD(v43))
      {
        v32 = v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 8);
        v26 = v32;
        v28 = v43;
      }

      *(v42 + v28) = v26 - 16;
      LODWORD(v43) = v43 + 1;
      AffineSymbolExpr = mlir::Builder::getAffineSymbolExpr(a3 + 1, v22, v27);
      v30 = v40;
      if (v40 >= HIDWORD(v40))
      {
        v33 = AffineSymbolExpr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v40 + 1, 8);
        AffineSymbolExpr = v33;
        v30 = v40;
      }

      *(v39 + v30) = AffineSymbolExpr;
      LODWORD(v40) = v40 + 1;
      v31 = *(v39 + v40 - 1);
      if (v36)
      {
        v31 = mlir::AffineExpr::operator*(&v36, v31);
      }

      v36 = v31;
      v22 = (v22 + 1);
      ++v23;
      v24 -= 8;
    }

    while (v24);
  }

  v34 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>(a3 + 1, *(a2 + 24), &v36, &v42);
  (*(*a3 + 1))(a3, a2, v34);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a4, *(a4 + 8));
  mlir::affine::AffineApplyOp::build(a1, v16, a3, 1, v17[0], v17[1]);
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

void mlir::RewritePatternSet::addImpl<mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "tensor.collapse_shape", 21, v31, v9, 0, 0);
  *v8 = &unk_1F5B09C68;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp, mlir::ReshapeOpKind::kCollapse>]";
    v32 = 149;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void mlir::RewritePatternSet::addImpl<mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "tensor.collapse_shape", 21, v31, v9, 0, 0);
  *v8 = &unk_1F5B09D08;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp, mlir::tensor::ExpandShapeOp, mlir::tensor::CastOp, mlir::tensor::DimOp, mlir::RankedTensorType>]";
    v32 = 208;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void *mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(void *a1)
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

void mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(void *__p)
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

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v36 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v36);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    v31 = v8;
    if (!v7)
    {
      return 0;
    }

    v9 = *(a2 + 36) ? a2 - 16 : 0;
    v10 = result;
    v36 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v30[0] = mlir::TensorType::operator mlir::ShapedType(&v36);
    v30[1] = v11;
    if (mlir::hasNonIdentityLayout(*(*(*(v10 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    v12 = *(a2 + 36) ? a2 - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
    if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    mlir::memref::CollapseShapeOp::getReassociationIndices(&v31, &v36);
    v14 = v36;
    v15 = v37;
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v32, &v33);
    mlir::composeReassociationIndices(v14, v15, v33, v34, &v39);
    v16 = v33;
    if (v34)
    {
      v17 = v33 + 32 * v34 - 16;
      v18 = -32 * v34;
      do
      {
        v19 = *(v17 - 2);
        if (v17 != v19)
        {
          free(v19);
        }

        v17 -= 32;
        v18 += 32;
      }

      while (v18);
      v16 = v33;
    }

    if (v16 != &v35)
    {
      free(v16);
    }

    v20 = v36;
    if (v37)
    {
      v21 = v36 + 32 * v37 - 16;
      v22 = -32 * v37;
      do
      {
        v23 = *(v21 - 2);
        if (v21 != v23)
        {
          free(v23);
        }

        v21 -= 32;
        v22 += 32;
      }

      while (v22);
      v20 = v36;
    }

    if (v20 != &v38)
    {
      free(v20);
    }

    if (v42 != 1)
    {
      return 0;
    }

    else
    {
      v24 = v32;
      v36 = *(*(v31 + 72) + 24);
      v25 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3 + 1, *(v32 + 24), v30, &v36, &v39);
      ((*a3)[1])(a3, v24, v25);
      if (v42)
      {
        v26 = v39;
        if (v40)
        {
          v27 = &v39[4 * v40 - 2];
          v28 = -32 * v40;
          do
          {
            v29 = *(v27 - 16);
            if (v27 != v29)
            {
              free(v29);
            }

            v27 -= 32;
            v28 += 32;
          }

          while (v28);
          v26 = v39;
        }

        if (v26 != &v41)
        {
          free(v26);
        }
      }

      return 1;
    }
  }

  return result;
}

void *mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::~ComposeCollapseOfExpandOp(void *a1)
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

void mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::~ComposeCollapseOfExpandOp(void *__p)
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

uint64_t mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v54[16] = *MEMORY[0x1E69E9840];
  v42 = a2;
  v52 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v52);
  if (!DefiningOp)
  {
    return 0;
  }

  v5 = *(*(DefiningOp + 48) + 16);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
  v7 = v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id ? DefiningOp : 0;
  v41 = v7;
  if (!v6)
  {
    return 0;
  }

  v52 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v40[0] = mlir::TensorType::operator mlir::ShapedType(&v52);
  v40[1] = v8;
  v9 = *(v42 + 36) ? v42 - 16 : 0;
  v52 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v39[0] = mlir::TensorType::operator mlir::ShapedType(&v52);
  v39[1] = v10;
  if (mlir::hasNonIdentityLayout(*(*(*(v42 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(v41 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  v11 = *(v41 + 36) ? v41 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v40);
  v14 = v13;
  mlir::CallableOpInterface::getArgAttrsAttr(v39);
  if (v40[0] == v39[0])
  {
    return 0;
  }

  v16 = v15;
  v52 = v54;
  v53 = 0x400000000;
  v49 = v51;
  v50 = 0x400000000;
  if (v14 <= v15)
  {
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v42, &v46);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v52, &v46);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v41, &v46);
  }

  else
  {
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v41, &v46);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v52, &v46);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v42, &v46);
  }

  llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v49, &v46);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
  v46 = v48;
  v47 = 0x400000000;
  if (v50)
  {
    v19 = 0;
    v20 = v49;
    v21 = v49 + 32 * v50;
    while (1)
    {
      v22 = 0;
      v43 = v45;
      v44 = 0x200000000;
      v23 = 4 * v19;
      while (1)
      {
        if (v19 >= v53)
        {
LABEL_30:
          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(&v46, &v43);
          v25 = 1;
          v26 = v43;
          if (v43 == v45)
          {
            goto LABEL_32;
          }

LABEL_31:
          free(v26);
          goto LABEL_32;
        }

        v24 = *(v52[v23] + 8 * LODWORD(v52[v23 + 1]) - 8);
        if (v24 > *(*v20 + 8 * *(v20 + 2) - 8))
        {
          break;
        }

        if (v22 >= HIDWORD(v44))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v22 + 1, 8);
          v22 = v44;
        }

        *(v43 + v22) = v19;
        v22 = v44 + 1;
        LODWORD(v44) = v44 + 1;
        v23 += 4;
        ++v19;
        if (v24 == *(*v20 + 8 * *(v20 + 2) - 8))
        {
          goto LABEL_30;
        }
      }

      v25 = 0;
      v26 = v43;
      if (v43 != v45)
      {
        goto LABEL_31;
      }

LABEL_32:
      if ((v25 & 1) == 0)
      {
        break;
      }

      v20 += 32;
      if (v20 == v21)
      {
        goto LABEL_37;
      }
    }

    v17 = 0;
  }

  else
  {
LABEL_37:
    if (v14 <= v16)
    {
      v43 = *(*(v41 + 72) + 24);
      if (v14 < v16)
      {
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a3, v42, v39, &v43, &v46);
      }

      else
      {
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>>(a3, v42, v39, &v43);
      }
    }

    else
    {
      v43 = *(*(v41 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, v42, v39, &v43, &v46);
    }

    v17 = 1;
  }

  v27 = v46;
  if (v47)
  {
    v28 = v46 + 32 * v47 - 16;
    v29 = -32 * v47;
    do
    {
      v30 = *(v28 - 2);
      if (v28 != v30)
      {
        free(v30);
      }

      v28 -= 32;
      v29 += 32;
    }

    while (v29);
    v27 = v46;
  }

  if (v27 != v48)
  {
    free(v27);
  }

  v31 = v49;
  if (v50)
  {
    v32 = v49 + 32 * v50 - 16;
    v33 = -32 * v50;
    do
    {
      v34 = *(v32 - 2);
      if (v32 != v34)
      {
        free(v34);
      }

      v32 -= 32;
      v33 += 32;
    }

    while (v33);
    v31 = v49;
  }

  if (v31 != v51)
  {
    free(v31);
  }

  v35 = v52;
  if (v53)
  {
    v36 = &v52[4 * v53 - 2];
    v37 = -32 * v53;
    do
    {
      v38 = *(v36 - 2);
      if (v36 != v38)
      {
        free(v38);
      }

      v36 -= 4;
      v37 += 32;
    }

    while (v37);
    v35 = v52;
  }

  if (v35 != v54)
  {
    free(v35);
  }

  return v17;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(mlir::IndexType **a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5)
{
  v7 = mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a1 + 1, *(a2 + 24), a3, a4, a5);
  (*(*a1 + 1))(a1, a2, v7);
  return v7;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a1 + 8), *(a2 + 24), a3, a4);
  (*(*a1 + 8))(a1, a2, v6);
  return v6;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(mlir::IndexType **a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::tensor::ExpandShapeOp::build(a1, v19, *a3, *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
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

void *anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithConstant(void *a1)
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

void anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithConstant(void *__p)
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

uint64_t anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 + 72) + 24);
  v18 = &v19;
  v19 = 0;
  v20 = v5;
  result = mlir::Value::getDefiningOp(&v20);
  if (result)
  {
    v7 = mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v18, result);
    result = 0;
    if (v7)
    {
      if (v19)
      {
        result = mlir::DenseElementsAttr::isSplat(&v19);
        if (result)
        {
          if (*(a2 + 36))
          {
            v8 = a2 - 16;
          }

          else
          {
            v8 = 0;
          }

          v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          v9 = mlir::TensorType::operator mlir::ShapedType(&v18);
          v11 = v10;
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v19);
          v20 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v11, RawStringData, v13, v14, v15, v16);
          v17 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), *(a2 + 24), &v20);
          (*(*a3 + 8))(a3, a2, v17);
          return 1;
        }
      }
    }
  }

  return result;
}

void *anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithSplat(void *a1)
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

void anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithSplat(void *__p)
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

uint64_t anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (!DefiningOp)
  {
    return 0;
  }

  v6 = *(*(DefiningOp + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id ? DefiningOp : 0;
  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    return 0;
  }

  v8 = *(DefiningOp + 36) ? DefiningOp - 16 : 0;
  v17 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v17))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v17);
  if (v10)
  {
    v11 = 8 * v10;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*(v7 + 72) + 24);
  v17 = v13;
  v14 = mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>((a3 + 8), *(a2 + 24), &v17, &v16);
  (*(*a3 + 8))(a3, a2, v14);
  return 1;
}

void *anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithFromElements(void *a1)
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

void anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithFromElements(void *__p)
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

uint64_t anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v30);
  if (!result)
  {
    return result;
  }

  v6 = *(*(result + 48) + 16);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  v8 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v8;
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v26 = v9;
    v27 = v8;
    mlir::arith::ExtUIOp::fold();
    v8 = v27;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v26 + 8);
    v12 = *(v26 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 != &v11[2 * v12] && *v13 == v10)
  {
    v25 = v13[1];
    v30 = v8;
    v31 = v25;
    result = mlir::CallOpInterface::getArgOperands(&v30);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_20:
  v30 = v8;
  v31 = 0;
  result = mlir::CallOpInterface::getArgOperands(&v30);
  if (!result)
  {
    return result;
  }

LABEL_21:
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v30);
  if (v20)
  {
    v21 = 8 * v20;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  else
  {
LABEL_25:
    v29 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    if ((*(v7 + 46) & 0x80) != 0)
    {
      v22 = *(v7 + 68);
      v23 = *(v7 + 72);
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v28[0] = v23;
    v28[1] = v22;
    v24 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v29, v28);
    (*(*a3 + 8))(a3, a2, v24);
    return 1;
  }
}

void anonymous namespace::FoldCollapseOfCastOp::~FoldCollapseOfCastOp(_anonymous_namespace_::FoldCollapseOfCastOp *this)
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

uint64_t anonymous namespace::FoldCollapseOfCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[16] = *MEMORY[0x1E69E9840];
  v26 = a2;
  v30 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v30);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v6 = DefiningOp;
  result = mlir::tensor::preservesStaticInformation(*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v7 = *(*(*(v6 + 72) + 24) + 8);
    mlir::tensor::CollapseShapeOp::getReassociationExprs(&v26, &v30);
    mlir::getSymbolLessAffineMaps(v30, v31, &v27);
    v8 = v30;
    if (v31)
    {
      v9 = v30 + 32 * v31 - 16;
      v10 = -32 * v31;
      do
      {
        v11 = *(v9 - 2);
        if (v9 != v11)
        {
          free(v11);
        }

        v9 -= 32;
        v10 += 32;
      }

      while (v10);
      v8 = v30;
    }

    if (v8 != v32)
    {
      free(v8);
    }

    v12 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v7 & 0xFFFFFFFFFFFFFFF8, v27, v28);
    v30 = v12;
    if (v27 != &v29)
    {
      free(v27);
    }

    if (*(v26 + 36))
    {
      v13 = v26 - 16;
    }

    else
    {
      v13 = 0;
    }

    if (v12 == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v14 = v26;
      (*(*a3 + 40))(a3, v26);
      v15 = *(v26 + 72);
      v16 = *(*(v6 + 72) + 24);
      v17 = v15[1];
      if (v17)
      {
        v18 = *v15;
        *v17 = *v15;
        if (v18)
        {
          *(v18 + 8) = v17;
        }
      }

      v15[3] = v16;
      v15[1] = v16;
      v19 = *v16;
      *v15 = *v16;
      if (v19)
      {
        *(v19 + 8) = v15;
      }

      *v16 = v15;
      (*(*a3 + 48))(a3, v14);
    }

    else
    {
      v20 = *(v26 + 24);
      v25 = *(*(v6 + 72) + 24);
      v24 = *(v26 + 16 * ((*(v26 + 44) >> 23) & 1) + 64);
      v27 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::TensorType>,mlir::ArrayAttr>((a3 + 8), v20, &v30, &v25, &v24);
      v21 = v26;
      if (*(v26 + 36))
      {
        v22 = v26 - 16;
      }

      else
      {
        v22 = 0;
      }

      v25 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v23 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::tensor::EmptyOp &>((a3 + 8), *(v21 + 24), &v25, &v27);
      (*(*a3 + 8))(a3, v21, v23);
    }

    return 1;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::TensorType>,mlir::ArrayAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v11);
  mlir::tensor::CollapseShapeOp::build(v13, v20, *a3, *a4, *a5);
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

void llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(unsigned int *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  v5 = *a1;
  if (v4 >= a1[3])
  {
    if (v5 <= a2 && v5 + 32 * v4 > a2)
    {
      v10 = a2 - v5;
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v4 + 1);
      v5 = *a1;
      v2 = *a1 + v10;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v4 + 1);
      v5 = *a1;
    }
  }

  v6 = v5 + 32 * a1[2];
  v8 = *(v2 + 8);
  v7 = (v2 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v8)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((v6 + 8), v7);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v6 + 8, v7);
  }

  ++a1[2];
}

void mlir::RewritePatternSet::addImpl<mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "tensor.extract_slice", 20, v31, v9, 0, 0);
  *v8 = &unk_1F5B09F68;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp, SliceReturnTypeCanonicalizer, SliceCanonicalizer>]";
    v32 = 185;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void *mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(void *a1)
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

void mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(void *__p)
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

uint64_t SliceCanonicalizer::operator()(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (*(a4 + 36))
  {
    v6 = a4 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  if (*(a3 + 36))
  {
    v8 = a3 - 16;
  }

  else
  {
    v8 = 0;
  }

  v7 = *(NextResultAtOffset + 8);
  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) ^ v7) >= 8)
  {
    v9 = *(a3 + 24);
    if (*(a3 + 36))
    {
      v10 = a3 - 16;
    }

    else
    {
      v10 = 0;
    }

    v12 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    NextResultAtOffset = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a2 + 1), v9, &v12, &NextResultAtOffset) - 16;
  }

  return (**a2)(a2, a3, &NextResultAtOffset, 1);
}

void anonymous namespace::ExtractSliceOpCastFolder::~ExtractSliceOpCastFolder(_anonymous_namespace_::ExtractSliceOpCastFolder *this)
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

uint64_t anonymous namespace::ExtractSliceOpCastFolder::matchAndRewrite(uint64_t DefiningOp, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 68);
  if (v5)
  {
    v6 = (*(a2 + 72) + 24);
    do
    {
      v7 = *v6;
      MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, a2);
      v39 = v7;
      DefiningOp = mlir::Value::getDefiningOp(&v39);
      if (DefiningOp)
      {
        DefiningOp = mlir::arith::ConstantIndexOp::classof(DefiningOp, a2);
        if (DefiningOp)
        {
          return 0;
        }
      }

      v6 += 4;
    }

    while (--v5);
  }

  v39 = *(*(a2 + 72) + 24);
  v8 = mlir::Value::getDefiningOp(&v39);
  if (!v8)
  {
    return 0;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v9 = v8;
  if (!mlir::tensor::preservesStaticInformation(*(v8 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v8 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  v10 = *(a2 + 24);
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v41 = *(*(v9 + 72) + 24);
  v42 = v12;
  v13 = a2 + 64;
  v14 = *(a2 + 44);
  v15 = a2 + 64 + 16 * ((v14 >> 23) & 1);
  v16 = *(v15 + 24);
  v17 = *(v15 + 28);
  if ((v14 & 0x800000) != 0)
  {
    v18 = (v17 + v16);
    v39 = *(a2 + 72) + 32 * v16;
    v40 = v18 - v16;
    v19 = (*(v15 + 32) + v18);
    v37 = *(a2 + 72) + 32 * v18;
    v38 = v19 - v18;
    v20 = *(a2 + 72);
  }

  else
  {
    v20 = 0;
    v32 = (v17 + v16);
    v39 = 32 * v16;
    v40 = v32 - v16;
    v19 = (*(v15 + 32) + v32);
    v37 = 32 * v32;
    v38 = v19 - v32;
  }

  v21 = v20 + 32 * v19;
  v22 = (*(v15 + 36) + v19) - v19;
  v36[0] = v21;
  v36[1] = v22;
  v35[0] = *v15;
  v35[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v35);
  v35[1] = v23;
  v34[0] = *(v13 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  v34[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v34);
  v34[1] = v24;
  v33[0] = *(v13 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
  v33[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v33);
  v33[1] = v25;
  v26 = mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>((a3 + 8), v10, &v42, &v41, &v39, &v37, v36, v35, v34, v33);
  v43 = v26 - 16;
  v27 = *(v26 - 8);
  if (*(a2 + 36))
  {
    v28 = a2 - 16;
  }

  else
  {
    v28 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) ^ v27) >= 8)
  {
    if (*(a2 + 36))
    {
      v29 = a2 - 16;
    }

    else
    {
      v29 = 0;
    }

    v39 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v43 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), v10, &v39, &v43) - 16;
  }

  v30 = 1;
  (**a3)(a3, a2, &v43, 1);
  return v30;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30[5] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(v28, v30, v29);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  v21 = *a3;
  v22 = *a4;
  mlir::ValueRange::ValueRange(v30, *a5, *(a5 + 8));
  mlir::ValueRange::ValueRange(v29, *a6, *(a6 + 8));
  mlir::ValueRange::ValueRange(v27, *a7, *(a7 + 8));
  mlir::tensor::ExtractSliceOp::build(a1, v28, v21, v22, v30[0], v30[1], v29[0], v29[1], v27[0], v27[1], *a8, *(a8 + 8), *a9, *(a9 + 8), *a10, *(a10 + 8));
  v23 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v24;
}

void *anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *a1)
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

void anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *__p)
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

uint64_t mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Type,mlir::Value &,mlir::Value &,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::tensor::InsertSliceOp::build(a1, v23, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8), 0, 0);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

void *anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpCastFolder(void *a1)
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

void anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpCastFolder(void *__p)
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

uint64_t anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t DefiningOp, uint64_t a2, uint64_t a3)
{
  v98[6] = *MEMORY[0x1E69E9840];
  v83 = a2;
  v4 = *(a2 + 68);
  if (v4)
  {
    v5 = (*(a2 + 72) + 24);
    do
    {
      v6 = *v5;
      MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, a2);
      v96 = v6;
      DefiningOp = mlir::Value::getDefiningOp(&v96);
      if (DefiningOp)
      {
        DefiningOp = mlir::arith::ConstantIndexOp::classof(DefiningOp, a2);
        if (DefiningOp)
        {
          return 0;
        }
      }

      v5 += 4;
      --v4;
    }

    while (v4);
    a2 = v83;
  }

  v96 = *(*(a2 + 72) + 24);
  v7 = mlir::Value::getDefiningOp(&v96);
  if (v7 && *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v8 = v7, mlir::tensor::preservesStaticInformation(*(v7 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v7 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v9 = *(*(v8 + 72) + 24) & 0xFFFFFFFFFFFFFF00;
    v10 = *(*(v8 + 72) + 24);
    v11 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
  }

  v12 = v9 | v10;
  v96 = *(*(v83 + 72) + 32 * *(v83 + 104) + 24);
  v13 = mlir::Value::getDefiningOp(&v96);
  if (v13 && *(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v14 = v13, (mlir::tensor::preservesStaticInformation(*(v13 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v13 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0))
  {
    v15 = *(*(v14 + 72) + 24);
    if (!v11)
    {
      v12 = *(*(v83 + 72) + 24);
    }

    v82 = v12;
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      return 0;
    }

    v82 = v12;
    v15 = *(*(v83 + 72) + 32 * *(v83 + 104) + 24);
  }

  result = 0;
  v81 = v15;
  v17 = *(v12 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v17 = 0;
  }

  v80 = v17;
  v18 = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v17 && v19)
  {
    v96 = *(v83 + 16 * ((*(v83 + 44) >> 23) & 1) + 72);
    v21 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v96);
    v22 = v20;
    v96 = v98;
    v97 = 0x600000000;
    v23 = (8 * v20) >> 3;
    if (v23 < 7)
    {
      v24 = 0;
      v25 = v98;
      v26 = 8 * v20;
      if (!v20)
      {
        goto LABEL_35;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v98, v23, 8);
      v24 = v97;
      v25 = v96;
      v26 = 8 * v22;
      if (!v22)
      {
LABEL_35:
        v27 = v24 + (v26 >> 3);
        LODWORD(v97) = v24 + (v26 >> 3);
        Value = mlir::ArrayAttr::getValue(&v80);
        mlir::computeRankReductionMask(v25, v27, Value, v29, 1, &v92);
        if (v95 != 1)
        {
          result = 0;
LABEL_37:
          if (v96 != v98)
          {
            v30 = result;
            free(v96);
            return v30;
          }

          return result;
        }

        mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v83, &__src);
        __dst = v91;
        v90 = 0x600000000;
        v31 = v87;
        v32 = __src;
        v79 = a3;
        if (v87)
        {
          if (__src == v88)
          {
            v33 = v87;
            if (v87 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v91, v87, 8), v33 = v87, v32 = __src, v87))
            {
              memcpy(__dst, v32, 8 * v33);
              v32 = __src;
            }

            LODWORD(v90) = v31;
          }

          else
          {
            __dst = __src;
            v90 = v87;
            __src = v88;
            HIDWORD(v87) = 0;
            v32 = v88;
          }

          LODWORD(v87) = 0;
        }

        if (v32 != v88)
        {
          free(v32);
        }

        if (v97)
        {
          v34 = 0;
          v35 = 0;
          v36 = &v95;
          v37 = v96;
          v38 = &v96[2 * v97];
          v39 = &v93;
          while (1)
          {
            if ((v95 & 1) == 0)
            {
              v78 = std::__throw_bad_optional_access[abi:nn200100]();
            }

            if (v92)
            {
              v41 = 4;
              v40 = v39;
            }

            else
            {
              v40 = v93;
              v41 = v94;
              if (!v94)
              {
                goto LABEL_61;
              }
            }

            v42 = v41 - 1;
            v43 = (v41 - 1) & (37 * v35);
            v44 = *(v40 + v43);
            if (v44 != v35)
            {
              break;
            }

LABEL_59:
            v45 = (v40 + 4 * v43);
            if (v92)
            {
              if (v45 == v36)
              {
                goto LABEL_61;
              }
            }

            else if (v45 == (v93 + 4 * v94))
            {
              goto LABEL_61;
            }

LABEL_52:
            ++v35;
            v37 += 2;
            if (v37 == v38)
            {
              goto LABEL_68;
            }
          }

          v56 = 1;
          while (v44 != -1)
          {
            v57 = v43 + v56++;
            v43 = v57 & v42;
            v44 = *(v40 + v43);
            if (v44 == v35)
            {
              goto LABEL_59;
            }
          }

LABEL_61:
          if (*(mlir::ArrayAttr::getValue(&v80) + 8 * v34) != 0x8000000000000000)
          {
            v46 = v38;
            v47 = v34;
            v48 = v34;
            v49 = v39;
            v50 = v36;
            v51 = *(v79 + 8);
            v52 = *(mlir::ArrayAttr::getValue(&v80) + 8 * v47);
            v53 = v51;
            v36 = v50;
            v39 = v49;
            AsIndexOpFoldResult = mlir::getAsIndexOpFoldResult(v53, v52);
            *(__dst + v35) = AsIndexOpFoldResult;
            v34 = v48 + 1;
            v55 = *(mlir::ArrayAttr::getValue(&v80) + 8 * v47);
            v38 = v46;
            *v37 = v55;
          }

          goto LABEL_52;
        }

LABEL_68:
        v58 = v80;
        __src = *(v83 + 16 * ((*(v83 + 44) >> 23) & 1) + 64);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        v59 = v96;
        v60 = v97;
        __src = *(v83 + 16 * ((*(v83 + 44) >> 23) & 1) + 80);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        v84[0] = v58;
        __src = v19;
        RHS = mlir::AffineBinaryOpExpr::getRHS(&__src);
        Values = mlir::SparseElementsAttr::getValues(&__src);
        __src = mlir::RankedTensorType::get(v59, v60, RHS, Values);
        v63 = mlir::TensorType::operator mlir::ShapedType(&__src);
        v65 = v64;
        v66 = mlir::TensorType::operator mlir::ShapedType(v84);
        if (mlir::isRankReducedType(v63, v65, v66))
        {
          result = 0;
          v67 = __dst;
          if (__dst == v91)
          {
LABEL_71:
            if ((v95 & 1) != 0 && (v92 & 1) == 0)
            {
              llvm::deallocate_buffer(v93, (4 * v94));
            }

            goto LABEL_37;
          }
        }

        else
        {
          v69 = *(v83 + 24);
          mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v83, &__src);
          mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v83, v84);
          v70 = mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>((v79 + 8), v69, &v82, &v81, &__src, &__dst, v84);
          if (v84[0] != &v85)
          {
            free(v84[0]);
          }

          if (__src != v88)
          {
            free(__src);
          }

          if (*(v83 + 36))
          {
            v72 = v83 - 16;
          }

          else
          {
            v72 = 0;
          }

          v71 = *(v81 + 8);
          if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v72, 0) + 8) ^ v71) >= 8)
          {
            v73 = *(v83 + 24);
            if (*(v83 + 36))
            {
              v74 = v83 - 16;
            }

            else
            {
              v74 = 0;
            }

            __src = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v74, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
            v84[0] = (v70 - 16);
            v70 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((v79 + 8), v73, &__src, v84);
          }

          v75 = v83;
          v76 = *(v70 + 36);
          if (v76)
          {
            v77 = v70 - 16;
          }

          else
          {
            v77 = 0;
          }

          mlir::ValueRange::ValueRange(&__src, v77, v76);
          (**v79)(v79, v75, __src, v87);
          result = 1;
          v67 = __dst;
          if (__dst == v91)
          {
            goto LABEL_71;
          }
        }

        v68 = result;
        free(v67);
        result = v68;
        goto LABEL_71;
      }
    }

    memcpy(&v25[2 * v24], v21, v26);
    v24 = v97;
    v25 = v96;
    goto LABEL_35;
  }

  return result;
}

void *anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::~InsertSliceOpSourceCastInserter(void *a1)
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

void anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::~InsertSliceOpSourceCastInserter(void *__p)
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

uint64_t anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57[6] = *MEMORY[0x1E69E9840];
  v43 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v44 = a2;
  mlir::ArrayAttr::getValue(&v43);
  v6 = v5;
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v55 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v55);
  if (v6 != v8)
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v43);
  v11 = v9;
  v55 = v57;
  v56 = 0x600000000;
  v12 = (8 * v9) >> 3;
  if (v12 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, v12, 8);
    v13 = v56;
    v14 = 8 * v11;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = 0;
  v14 = 8 * v9;
  if (v9)
  {
LABEL_10:
    memcpy(&v55[8 * v13], Value, v14);
    v13 = v56;
  }

LABEL_11:
  LODWORD(v56) = v13 + (v14 >> 3);
  mlir::ArrayAttr::getValue(&v43);
  if (v21 >= 1)
  {
    if (v34)
    {
LABEL_34:
      result = 0;
      goto LABEL_35;
    }
  }

  v52 = v54;
  v53 = 0x600000000;
  v22 = v56;
  if (v56)
  {
    if (v56 < 7)
    {
      v24 = v54;
      v23 = v56;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v56, 8);
      v23 = v56;
      if (!v56)
      {
LABEL_18:
        LODWORD(v53) = v22;
        goto LABEL_19;
      }

      v24 = v52;
    }

    memcpy(v24, v55, 8 * v23);
    goto LABEL_18;
  }

LABEL_19:
  hasValidSizesOffsets = mlir::hasValidSizesOffsets(&v52);
  if (v52 != v54)
  {
    free(v52);
  }

  if (!hasValidSizesOffsets)
  {
    goto LABEL_34;
  }

  v26 = v55;
  v27 = v56;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v43);
  Values = mlir::SparseElementsAttr::getValues(&v43);
  v30 = mlir::RankedTensorType::get(v26, v27, RHS, Values);
  v42 = v30;
  if (v43 == v30)
  {
    goto LABEL_34;
  }

  result = mlir::tensor::preservesStaticInformation(v43, v30);
  if (!result || (mlir::ValueRange::ValueRange(v50, &v43, 1uLL), mlir::ValueRange::ValueRange(&v47, &v42, 1uLL), result = mlir::tensor::CastOp::areCastCompatible(v50[0], v50[1], v47, v48), !result))
  {
LABEL_35:
    v35 = v55;
    if (v55 == v57)
    {
      return result;
    }

    goto LABEL_36;
  }

  v31 = (a3 + 24);
  v38 = *(a3 + 24);
  v32 = *(v44 + 24);
  v50[0] = *(*(v44 + 72) + 24);
  v41 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), v32, &v42, v50) - 16;
  v33 = v44;
  v40 = *(*(v44 + 72) + 32 * *(v44 + 104) + 24);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v44, v50);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v44, &v47);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v44, v45);
  mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>>(a3, v33, &v41, &v40, v50, &v47, v45);
  if (v45[0] != v46)
  {
    free(v45[0]);
  }

  if (v47 != v49)
  {
    free(v47);
  }

  if (v50[0] != &v51)
  {
    free(v50[0]);
  }

  if (v38)
  {
    *v31 = v38;
  }

  else
  {
    *v31 = 0;
    *(a3 + 32) = 0;
  }

  result = 1;
  v35 = v55;
  if (v55 != v57)
  {
LABEL_36:
    v36 = result;
    free(v35);
    return v36;
  }

  return result;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7);
  ((*a1)[1])(a1, a2, v9);
  return v9;
}

void anonymous namespace::FoldStaticZeroPadding::~FoldStaticZeroPadding(_anonymous_namespace_::FoldStaticZeroPadding *this)
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

uint64_t anonymous namespace::FoldStaticZeroPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  result = mlir::tensor::PadOp::hasZeroLowPad(&v11);
  if (result)
  {
    result = mlir::tensor::PadOp::hasZeroHighPad(&v11);
    if (result)
    {
      v5 = v11;
      if (*(v11 + 16 * ((*(v11 + 44) >> 23) & 1) + 64))
      {
        return 0;
      }

      else
      {
        if (*(v11 + 36))
        {
          v6 = v11 - 16;
        }

        else
        {
          v6 = 0;
        }

        v7 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v9 = *(*(v11 + 72) + 24);
        v10 = v7;
        v8 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), *(v5 + 24), &v10, &v9);
        (*(*a3 + 8))(a3, v5, v8);
        return 1;
      }
    }
  }

  return result;
}

void anonymous namespace::FoldSourceTensorCast::~FoldSourceTensorCast(_anonymous_namespace_::FoldSourceTensorCast *this)
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

uint64_t anonymous namespace::FoldSourceTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v52[0] = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v52);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v7 = DefiningOp;
  result = mlir::tensor::preservesStaticInformation(*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v8 = *(*(*(v7 + 72) + 24) + 8);
    v9 = a2 + 64;
    v52[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
    v10 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v52);
    v12 = v11;
    v52[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
    v13 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v52);
    v15 = v14;
    if (*(a2 + 36))
    {
      v16 = a2 - 16;
    }

    else
    {
      v16 = 0;
    }

    v52[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    Value = mlir::ArrayAttr::getValue(v52);
    v19 = mlir::tensor::PadOp::inferResultType(v8 & 0xFFFFFFFFFFFFFFF8, v10, v12, v13, v15, Value, v18);
    v51 = v19;
    if (*(a2 + 36))
    {
      v20 = a2 - 16;
    }

    else
    {
      v20 = 0;
    }

    if (v19 != (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v26 = *(a2 + 24);
      v49 = *(*(a2 + 72) + 24);
      v52[0] = *(a2 + 96);
      v48[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v52);
      v48[1] = v27;
      v52[0] = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      v47[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v52);
      v47[1] = v28;
      v29 = *(a2 + 44);
      v30 = v9 + 16 * ((v29 >> 23) & 1);
      v32 = *(v30 + 24);
      v31 = *(v30 + 28);
      if ((v29 & 0x800000) != 0)
      {
        v33 = (v31 + v32);
        v45 = *(a2 + 72) + 32 * v32;
        v46 = v33 - v32;
        v34 = *(a2 + 72);
      }

      else
      {
        v34 = 0;
        v33 = (v31 + v32);
        v45 = 32 * v32;
        v46 = v33 - v32;
      }

      v35 = v34 + 32 * v33;
      v36 = (*(v30 + 32) + v33) - v33;
      v44[0] = v35;
      v44[1] = v36;
      v43 = *v30 != 0;
      mlir::getPrunedAttributeList(a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v52);
      v37 = mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(a3 + 1, v26, &v51, &v49, v48, v47, &v45, v44, &v43, v52);
      v50 = v37;
      if (v52[0] != &v53)
      {
        free(v52[0]);
      }

      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v38 = (((v9 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
      v40 = *(v37 + 40);
      v39 = *(v37 + 44);
      v52[0] = 0;
      v52[1] = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      mlir::Region::cloneInto(v38, (((v37 + 16 * ((v39 >> 23) & 1) + ((v39 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v40), v52);
      if (*(a2 + 36))
      {
        v41 = a2 - 16;
      }

      else
      {
        v41 = 0;
      }

      v48[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v42 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::tensor::EmptyOp &>((a3 + 1), *(a2 + 24), v48, &v50);
      ((*a3)[1])(a3, a2, v42);
      llvm::deallocate_buffer(v57, (16 * v59));
    }

    ((*a3)[5])(a3, a2);
    v21 = *(a2 + 72);
    v22 = *(*(v7 + 72) + 24);
    v23 = v21[1];
    if (v23)
    {
      v24 = *v21;
      *v23 = *v21;
      if (v24)
      {
        *(v24 + 8) = v23;
      }
    }

    v21[3] = v22;
    v21[1] = v22;
    v25 = *v22;
    *v21 = *v22;
    if (v25)
    {
      *(v25 + 8) = v21;
    }

    *v22 = v21;
    ((*a3)[6])(a3, a2);
    return 1;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10)
{
  v34[5] = *MEMORY[0x1E69E9840];
  v31 = a2;
  Context = mlir::Attribute::getContext(&v31);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(v32, v34, v33);
  }

  mlir::OperationState::OperationState(v32, a2, v19);
  v21 = *a3;
  v22 = *a4;
  v24 = *a5;
  v23 = *(a5 + 8);
  v25 = *a6;
  v26 = a6[1];
  v30 = v25;
  mlir::ValueRange::ValueRange(v34, *a7, *(a7 + 8));
  mlir::ValueRange::ValueRange(v33, *a8, *(a8 + 8));
  mlir::tensor::PadOp::build(a1, v32, v21, v22, v24, v23, v30, v26, v34[0], v34[1], v33[0], v33[1], *a9, *a10, *(a10 + 8));
  v27 = mlir::OpBuilder::create(a1, v32);
  if (*(*(v27 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  mlir::OperationState::~OperationState(v32);
  return v28;
}

void anonymous namespace::FoldTargetTensorCast::~FoldTargetTensorCast(_anonymous_namespace_::FoldTargetTensorCast *this)
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

uint64_t anonymous namespace::FoldTargetTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = (a2 - 16);
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  if (!*NextResultAtOffset || **NextResultAtOffset)
  {
    return 0;
  }

  v10 = *(a2 + 36);
  if (v10)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  v44[0] = v11;
  v44[1] = v10;
  mlir::ResultRange::use_begin(v44, v41);
  v12 = *(a2 + 36);
  if (v12)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v43.n128_u64[0] = v13;
  v43.n128_u64[1] = v12;
  mlir::ResultRange::use_end(&v43, v47);
  v8 = 0;
  v46 = v42;
  *v44 = v41[0];
  v45 = v41[1];
  v14 = *(v42 + 16);
  if (v14 && *(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v15 = v5;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0) + 8);
    if (*(v14 + 36))
    {
      v17 = v14 - 16;
    }

    else
    {
      v17 = 0;
    }

    v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
    if (!mlir::tensor::preservesStaticInformation(v16 & 0xFFFFFFFFFFFFFFF8, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    v19 = *(a2 + 24);
    if (*(v14 + 36))
    {
      v20 = v14 - 16;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(*(a2 + 72) + 24);
    v40 = v21;
    v44[0] = *(a2 + 96);
    *&v41[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v44);
    *(&v41[0] + 1) = v22;
    v44[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
    v43.n128_u64[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v44);
    v43.n128_u64[1] = v23;
    v24 = *(a2 + 44);
    v25 = a2 + 64 + 16 * ((v24 >> 23) & 1);
    v27 = *(v25 + 24);
    v26 = *(v25 + 28);
    if ((v24 & 0x800000) != 0)
    {
      v28 = (v26 + v27);
      v37 = *(a2 + 72) + 32 * v27;
      v38 = v28 - v27;
      v29 = *(a2 + 72);
    }

    else
    {
      v29 = 0;
      v28 = (v26 + v27);
      v37 = 32 * v27;
      v38 = v28 - v27;
    }

    v30 = v29 + 32 * v28;
    v31 = (*(v25 + 32) + v28) - v28;
    v36[0] = v30;
    v36[1] = v31;
    v35 = *v25 != 0;
    mlir::getPrunedAttributeList(a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v44);
    v32 = mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v19, &v40, &v39, v41, &v43, &v37, v36, &v35, v44);
    if (v44[0] != &v45)
    {
      free(v44[0]);
    }

    mlir::Region::takeBody((((&v32[4 * ((v32[11] >> 23) & 1) + 17] + ((v32[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v32[10]), (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)));
    if (v32[9])
    {
      v33 = (v32 - 4);
    }

    else
    {
      v33 = 0;
    }

    v44[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
    v8 = 1;
    (**a3)(a3, a2, v44, 1);
    if (v32[9])
    {
      v34 = (v32 - 4);
    }

    else
    {
      v34 = 0;
    }

    v44[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v34, 0);
    (**a3)(a3, v14, v44, 1);
  }

  return v8;
}

void anonymous namespace::FoldOrthogonalPaddings::~FoldOrthogonalPaddings(_anonymous_namespace_::FoldOrthogonalPaddings *this)
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

uint64_t anonymous namespace::FoldOrthogonalPaddings::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v70 = a2;
  v81 = *(*(a2 + 9) + 24);
  result = mlir::Value::getDefiningOp(&v81);
  if (result)
  {
    v5 = *(*(result + 48) + 16);
    v6 = v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    v69 = v7;
    if (!v6)
    {
      return 0;
    }

    v81 = *(*(result + 72) + 24);
    result = mlir::Value::getDefiningOp(&v81);
    if (result)
    {
      v8 = *(*(result + 48) + 16);
      v9 = v8 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id;
      if (v8 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id)
      {
        v10 = result;
      }

      else
      {
        v10 = 0;
      }

      v68 = v10;
      if (!v9 || *(result + 16 * ((*(result + 44) >> 23) & 1) + 64))
      {
        return 0;
      }

      v81 = *(*(result + 72) + 24);
      result = mlir::Value::getDefiningOp(&v81);
      if (result)
      {
        v11 = *(*(result + 48) + 16);
        v12 = v11 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
        if (v11 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
        {
          v13 = result;
        }

        else
        {
          v13 = 0;
        }

        v67 = v13;
        if (!v12)
        {
          return 0;
        }

        v81 = (*(*(*(v70 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        mlir::ArrayAttr::getValue(&v81);
        v15 = v14;
        v81 = (*(*(*(v67 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        mlir::ArrayAttr::getValue(&v81);
        if (v16 != v15)
        {
          v81 = "cannot fold rank-reducing chain";
          v84 = 259;
          v17 = v70;
          v78 = &v81;
          v18 = *(a3 + 16);
          if (v18)
          {
            goto LABEL_23;
          }

          return 0;
        }

        mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(&v69, &v81);
        v19 = v81;
        if (v82)
        {
          v20 = 8 * v82 - 8;
          do
          {
            v21 = *v19++;
            v22 = mlir::getConstantIntValue(v21) == 1;
            v24 = v23 & v22;
            v25 = (v23 & v22) != 1 || v20 == 0;
            v20 -= 8;
          }

          while (!v25);
          v19 = v81;
        }

        else
        {
          v24 = 1;
        }

        if (v19 != v83)
        {
          free(v19);
        }

        if (!v24 || (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::hasUnitStride(&v67) & 1) == 0)
        {
          v81 = "cannot fold non-unit stride ExtractSliceOps";
          v84 = 259;
          v17 = v70;
          v78 = &v81;
          v18 = *(a3 + 16);
          if (v18)
          {
LABEL_23:
            if (mlir::RewriterBase::Listener::classof(v18))
            {
              (*(*v18 + 88))(v18, *(v17 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v78);
            }
          }

          return 0;
        }

        if (mlir::tensor::PadOp::hasZeroLowPad(&v70) && (mlir::tensor::PadOp::hasZeroLowPad(&v68) & 1) != 0)
        {
          v65 = 0;
          v66 = 0;
          ConstantPaddingValue = mlir::tensor::PadOp::getConstantPaddingValue(&v70, v26);
          v29 = mlir::tensor::PadOp::getConstantPaddingValue(&v68, v28);
          if (!ConstantPaddingValue)
          {
            return mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v70, "cannot fold PadOps with different padding values");
          }

          v30 = v29;
          if (!v29)
          {
            return mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v70, "cannot fold PadOps with different padding values");
          }

          v81 = &v66;
          if (!mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(ConstantPaddingValue, &v81))
          {
            return mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v70, "cannot fold PadOps with different padding values");
          }

          v78 = &v65;
          if (!mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(v30, &v78) || v66 != v65)
          {
            return mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v70, "cannot fold PadOps with different padding values");
          }

          mlir::tensor::PadOp::getPaddedDims(&v64, &v70);
          mlir::tensor::PadOp::getPaddedDims(&v63, &v68);
          if (llvm::SmallBitVector::anyCommon(&v64, &v63))
          {
            v31 = mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v70, "cannot fold PadOps with common padding dimensions");
          }

          else
          {
            v78 = (mlir::Builder::getIndexAttr((a3 + 8), 0) & 0xFFFFFFFFFFFFFFFBLL);
            llvm::SmallVector<mlir::OpFoldResult,6u>::SmallVector(&v81, v15, &v78);
            if (v82)
            {
              v32 = 0;
              v33 = v81;
              v34 = 8 * v82;
              do
              {
                while (1)
                {
                  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(&v69, &v78);
                  v35 = v78[v32];
                  if (v78 != v80)
                  {
                    free(v78);
                  }

                  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(&v67, &v78);
                  v36 = v78[v32];
                  if (v78 != v80)
                  {
                    free(v78);
                  }

                  if (llvm::SmallBitVector::test(&v64, v32))
                  {
                    break;
                  }

                  ConstantIntValue = mlir::getConstantIntValue(v35);
                  if ((v38 & 1) == 0 || ConstantIntValue)
                  {
                    break;
                  }

                  v33[v32++] = v36;
                  v34 -= 8;
                  if (!v34)
                  {
                    goto LABEL_67;
                  }
                }

                if (llvm::SmallBitVector::test(&v63, v32) || (v39 = mlir::getConstantIntValue(v36), (v40 & 1) == 0) || v39)
                {
                  v31 = mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v70, "cannot find zero-offset and zero-padding pair");
                  goto LABEL_82;
                }

                v33[v32++] = v35;
                v34 -= 8;
              }

              while (v34);
            }

LABEL_67:
            mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(&v69, &v75);
            v78 = v80;
            v79 = 0x600000000;
            if (v76)
            {
              llvm::SmallVectorImpl<unsigned long long>::operator=(&v78, &v75);
            }

            if (v75 != v77)
            {
              free(v75);
            }

            if (v79)
            {
              v41 = 0;
              v42 = v78;
              for (i = 8 * v79; i; i -= 8)
              {
                if (llvm::SmallBitVector::test(&v63, v41))
                {
                  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(&v69, &v75);
                  v44 = v75->i64[v41];
                  if (v75 != v77)
                  {
                    free(v75);
                  }

                  v75 = (*(*(*(v69 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
                  v45 = *(mlir::ArrayAttr::getValue(&v75) + 8 * v41);
                  v46 = mlir::getConstantIntValue(v44);
                  if ((v47 & 1) == 0 || v46 != v45)
                  {
                    v31 = mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v70, "cannot fold since the inner ExtractSliceOp size does not match the size of the outer padding");
                    v48 = v78;
                    if (v78 != v80)
                    {
                      goto LABEL_86;
                    }

                    goto LABEL_82;
                  }

                  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(&v67, &v75);
                  v42[v41] = v75->u64[v41];
                  if (v75 != v77)
                  {
                    free(v75);
                  }
                }

                ++v41;
              }
            }

            v73[0] = (mlir::Builder::getIndexAttr((a3 + 8), 0) & 0xFFFFFFFFFFFFFFFBLL);
            llvm::SmallVector<mlir::OpFoldResult,6u>::SmallVector(&v75, v15, v73);
            if (v76)
            {
              v58 = 0;
              v59 = 8 * v76;
              do
              {
                if (llvm::SmallBitVector::test(&v64, v58))
                {
                  mlir::tensor::PadOp::getMixedHighPad(&v70, v73);
                  v75->i64[v58] = *(v73[0] + v58);
                  if (v73[0] != v74)
                  {
                    free(v73[0]);
                  }
                }

                if (llvm::SmallBitVector::test(&v63, v58))
                {
                  mlir::tensor::PadOp::getMixedHighPad(&v68, v73);
                  v75->i64[v58] = *(v73[0] + v58);
                  if (v73[0] != v74)
                  {
                    free(v73[0]);
                  }
                }

                ++v58;
                v59 -= 8;
              }

              while (v59);
            }

            v49 = *(v70 + 3);
            v71[0] = *(*(v67 + 72) + 24);
            mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(&v69, v73);
            v50 = mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,4u>>((a3 + 8), v49, v71, &v81, &v78, v73);
            if (v73[0] != v74)
            {
              free(v73[0]);
            }

            v51 = *(v70 + 3);
            if (*(v70 + 9))
            {
              v52 = v70 - 16;
            }

            else
            {
              v52 = 0;
            }

            v62 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
            if (*(v50 + 36))
            {
              v53 = v50 - 16;
            }

            else
            {
              v53 = 0;
            }

            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v53, 0);
            mlir::tensor::PadOp::getMixedLowPad(&v70, v73);
            v60 = *(v70 + 2 * ((*(v70 + 11) >> 23) & 1) + 8) != 0;
            mlir::getPrunedAttributeList(v70, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v71);
            v54 = mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::SmallVector<mlir::OpFoldResult,6u>&,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v51, &v62, &NextResultAtOffset, v73, &v75, &v60, v71);
            if (v71[0] != &v72)
            {
              free(v71[0]);
            }

            if (v73[0] != v74)
            {
              free(v73[0]);
            }

            v55 = ((&v54[4 * ((v54[11] >> 23) & 1) + 17] + ((v54[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v54[10];
            mlir::RewriterBase::inlineRegionBefore(a3, (((v70 + 16 * ((*(v70 + 11) >> 23) & 1) + ((*(v70 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v70 + 10)), v55, *(v55 + 8));
            v56 = v70;
            if (v54[9])
            {
              v57 = (v54 - 4);
            }

            else
            {
              v57 = 0;
            }

            v73[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v57, 0);
            (**a3)(a3, v56, v73, 1);
            if (v75 != v77)
            {
              free(v75);
            }

            v31 = 1;
            v48 = v78;
            if (v78 != v80)
            {
LABEL_86:
              free(v48);
            }

LABEL_82:
            if (v81 != v83)
            {
              free(v81);
            }
          }

          llvm::SmallBitVector::~SmallBitVector(&v63);
          llvm::SmallBitVector::~SmallBitVector(&v64);
          return v31;
        }

        else
        {
          return mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v70, "cannot fold PadOps with low padding");
        }
      }
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

uint64_t mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(uint64_t a1, unint64_t **a2)
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    return mlir::detail::constant_op_binder<mlir::Attribute>::match(a2, result);
  }

  return result;
}

BOOL llvm::SmallBitVector::anyCommon(llvm::SmallBitVector *this, const llvm::SmallBitVector *a2)
{
  v2 = *this;
  v3 = *a2;
  if (*this)
  {
    v15 = v2 >> 58;
    if (v3)
    {
      return (~((-1 << v15) | (-1 << (v3 >> 58))) & ((v2 & v3) >> 1)) != 0;
    }
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      v4 = *(v2 + 8);
      LODWORD(v5) = *(v3 + 8);
      if (v5 >= v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v5;
      }

      if (v5)
      {
        v6 = *v2;
        v7 = *v3;
        v8 = v5 - 1;
        do
        {
          v10 = *v6++;
          v9 = v10;
          v11 = *v7++;
          v12 = v11 & v9;
          result = v12 != 0;
          if (v12)
          {
            v14 = 1;
          }

          else
          {
            v14 = v8 == 0;
          }

          --v8;
        }

        while (!v14);
        return result;
      }

      return 0;
    }

    v15 = *(v2 + 64);
  }

  if (v3)
  {
    if (v3 >> 58 < v15)
    {
      v15 = v3 >> 58;
    }

    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*(v3 + 64) < v15)
    {
      v15 = *(v3 + 64);
    }

    if (!v15)
    {
      return 0;
    }
  }

  v16 = (v3 >> 1) & ~(-1 << (v3 >> 58));
  if (v2)
  {
    v19 = (v2 >> 1) & ~(-1 << (v2 >> 58));
    if (v3)
    {
      v22 = 0;
      do
      {
        v23 = (v19 & (1 << v22)) == 0 || (v16 & (1 << v22)) == 0;
        result = !v23;
        if (!v23)
        {
          break;
        }

        v14 = v15 - 1 == v22++;
      }

      while (!v14);
    }

    else
    {
      v20 = 0;
      while (((v19 >> v20) & 1) == 0 || ((*(*v3 + 8 * (v20 >> 6)) >> v20) & 1) == 0)
      {
        if (v15 == ++v20)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    v17 = *v2;
    if (v3)
    {
      v21 = 0;
      while (((v17[v21 >> 6] >> v21) & 1) == 0 || ((v16 >> v21) & 1) == 0)
      {
        if (v15 == ++v21)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      v18 = 0;
      while ((v17[v18 >> 6] & (1 << v18)) == 0 || (*(*v3 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        if (v15 == ++v18)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,4u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::tensor::ExtractSliceOp::build(a1, v21, 0, *a3, *a4, *(a4 + 8), *a5, *(a5 + 8), *a6, *(a6 + 8), 0, 0);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::SmallVector<mlir::OpFoldResult,6u>&,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::tensor::PadOp::build(a1, v25, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *a8, *(a8 + 8));
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id)
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

void anonymous namespace::FoldStaticPadding::~FoldStaticPadding(_anonymous_namespace_::FoldStaticPadding *this)
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

uint64_t anonymous namespace::FoldStaticPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v145[6] = *MEMORY[0x1E69E9840];
  v115 = *(*(a2 + 72) + 24);
  if (*(*(*(v115 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 0;
  }

  v4 = a2;
  __p = (*(v115 + 8) & 0xFFFFFFFFFFFFFFF8);
  Value = mlir::ArrayAttr::getValue(&__p);
  v108 = v6;
  v7 = *(v4 + 36) ? v4 - 16 : 0;
  v114 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v114)
  {
    return 0;
  }

  __src = mlir::ArrayAttr::getValue(&v114);
  v104 = v8;
  v143 = v145;
  v144 = 0x600000000;
  v140 = v142;
  v141 = 0x600000000;
  v9 = v4 + 64;
  v10 = *(v4 + 44);
  v11 = (v10 >> 23) & 1;
  v12 = v4 + 64 + 16 * v11;
  v13 = *(v12 + 28);
  if ((v10 & 0x800000) != 0)
  {
    v14 = *(v4 + 72);
    v106 = v4;
    v107 = v4 + 64;
    if (v13)
    {
LABEL_9:
      v15 = *(v12 + 24);
      v16 = (v13 + v15) - v15;
      v17 = (v14 + 32 * v15 + 24);
      while (1)
      {
        v18 = *v17;
        LODWORD(v117) = 1;
        __p = 0;
        BYTE4(v117) = 0;
        p_p = &__p;
        v131 = v18;
        DefiningOp = mlir::Value::getDefiningOp(&v131);
        if (DefiningOp)
        {
          v20 = DefiningOp;
          v137 = 0;
          v134 = &v137;
          if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v134, DefiningOp))
          {
            v21 = *(*(*(v20 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
            v22 = v21 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
            v23 = v22 || v21 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
            v24 = v23 || v21 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
            if (v24 && (mlir::detail::constant_int_value_binder::match(&p_p, v137) & 1) != 0)
            {
              break;
            }
          }
        }

        v26 = v144;
        if (v144 >= HIDWORD(v144))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v145, v144 + 1, 8);
          v26 = v144;
        }

        v143[v26] = 0x8000000000000000;
        LODWORD(v144) = v144 + 1;
        v27 = v141;
        if (v141 >= HIDWORD(v141))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v142, v141 + 1, 8);
          v27 = v141;
        }

        v140[v27] = v18;
        LODWORD(v141) = v141 + 1;
        if (v117 < 0x41)
        {
          goto LABEL_10;
        }

LABEL_34:
        if (__p)
        {
          operator delete[](__p);
        }

LABEL_10:
        v17 += 4;
        if (!--v16)
        {
          v4 = v106;
          v9 = v107;
          v30 = *(v106 + 44);
          v11 = (v30 >> 23) & 1;
          v31 = v30 & 0x800000;
          goto LABEL_49;
        }
      }

      if ((v117 & 0x100000000) != 0)
      {
        if (v117 >= 0x41)
        {
          v25 = __p;
        }

        else
        {
          v25 = &__p;
        }
      }

      else
      {
        if (v117 <= 0x40)
        {
          if (v117)
          {
            v28 = (__p << -v117) >> -v117;
          }

          else
          {
            v28 = 0;
          }

LABEL_42:
          v29 = v144;
          if (v144 >= HIDWORD(v144))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v145, v144 + 1, 8);
            v29 = v144;
          }

          v143[v29] = v28;
          LODWORD(v144) = v144 + 1;
          if (v117 < 0x41)
          {
            goto LABEL_10;
          }

          goto LABEL_34;
        }

        v25 = __p;
      }

      v28 = *v25;
      goto LABEL_42;
    }
  }

  else
  {
    v14 = 0;
    v106 = v4;
    v107 = v4 + 64;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  v31 = v10 & 0x800000;
LABEL_49:
  v137 = v139;
  v138 = 0x600000000;
  v134 = v136;
  v135 = 0x600000000;
  v32 = (v9 + 16 * v11);
  v33 = v32[8];
  if (v31)
  {
    v34 = *(v4 + 72);
    if (!v33)
    {
      goto LABEL_89;
    }

    goto LABEL_51;
  }

  v34 = 0;
  if (v33)
  {
LABEL_51:
    v35 = (v32[7] + v32[6]);
    v36 = (v33 + v35) - v35;
    v37 = (v34 + 32 * v35 + 24);
    while (1)
    {
      v38 = *v37;
      LODWORD(v117) = 1;
      __p = 0;
      BYTE4(v117) = 0;
      v113[0] = &__p;
      v125 = v38;
      v39 = mlir::Value::getDefiningOp(&v125);
      if (v39)
      {
        v40 = v39;
        v131 = 0;
        p_p = &v131;
        if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_p, v39))
        {
          v41 = *(*(*(v40 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v42 = v41 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v41 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
          v43 = v42 || v41 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
          v44 = v43 || v41 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v44 && (mlir::detail::constant_int_value_binder::match(v113, v131) & 1) != 0)
          {
            break;
          }
        }
      }

      v46 = v138;
      if (v138 >= HIDWORD(v138))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v139, v138 + 1, 8);
        v46 = v138;
      }

      v137[v46] = 0x8000000000000000;
      LODWORD(v138) = v138 + 1;
      v47 = v135;
      if (v135 >= HIDWORD(v135))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v136, v135 + 1, 8);
        v47 = v135;
      }

      v134[v47] = v38;
      LODWORD(v135) = v135 + 1;
      if (v117 < 0x41)
      {
        goto LABEL_52;
      }

LABEL_76:
      if (__p)
      {
        operator delete[](__p);
      }

LABEL_52:
      v37 += 4;
      if (!--v36)
      {
        v4 = v106;
        v9 = v107;
        v11 = (*(v106 + 44) >> 23) & 1;
        goto LABEL_89;
      }
    }

    if ((v117 & 0x100000000) != 0)
    {
      if (v117 >= 0x41)
      {
        v45 = __p;
      }

      else
      {
        v45 = &__p;
      }
    }

    else
    {
      if (v117 <= 0x40)
      {
        if (v117)
        {
          v48 = (__p << -v117) >> -v117;
        }

        else
        {
          v48 = 0;
        }

LABEL_84:
        v49 = v138;
        if (v138 >= HIDWORD(v138))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v139, v138 + 1, 8);
          v49 = v138;
        }

        v137[v49] = v48;
        LODWORD(v138) = v138 + 1;
        if (v117 < 0x41)
        {
          goto LABEL_52;
        }

        goto LABEL_76;
      }

      v45 = __p;
    }

    v48 = *v45;
    goto LABEL_84;
  }

LABEL_89:
  __p = *(v9 + 16 * v11 + 16);
  v51 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__p);
  v52 = v50;
  v131 = v133;
  v132 = 0x600000000;
  v53 = (8 * v50) >> 3;
  if (v53 < 7)
  {
    v54 = 0;
    v55 = 8 * v50;
    if (!v50)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v131, v133, v53, 8);
  v54 = v132;
  v55 = 8 * v52;
  if (v52)
  {
LABEL_93:
    memcpy(&v131[8 * v54], v51, v55);
    v54 = v132;
  }

LABEL_94:
  LODWORD(v132) = v54 + (v55 >> 3);
  __p = *(v9 + 16 * ((*(v4 + 44) >> 23) & 1) + 8);
  v57 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__p);
  v58 = v56;
  p_p = v130;
  v129 = 0x600000000;
  v59 = (8 * v56) >> 3;
  if (v59 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&p_p, v130, v59, 8);
    v60 = v129;
    v61 = v104;
    v62 = 8 * v58;
    if (!v58)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  v60 = 0;
  v61 = v104;
  v62 = 8 * v56;
  if (v56)
  {
LABEL_98:
    memcpy(&p_p[v60], v57, v62);
    v60 = v129;
  }

LABEL_99:
  v63 = v60 + (v62 >> 3);
  LODWORD(v129) = v63;
  v64 = v108;
  if (v108 == v61 && v108 == v132 && v108 == v63)
  {
    v65 = v131;
    v66 = p_p;
    if (v108)
    {
      v67 = 0;
      v68 = 0;
      v69 = v143;
      v70 = v137;
      v71 = p_p;
      v72 = v131;
      for (i = v108; i; --i)
      {
        if (*v72 == 0x8000000000000000)
        {
          v74 = v69[v67++];
          *v72 = v74;
          if (*v71 == 0x8000000000000000)
          {
            goto LABEL_109;
          }
        }

        else if (*v71 == 0x8000000000000000)
        {
LABEL_109:
          v75 = v70[v68++];
          *v71 = v75;
        }

        ++v72;
        ++v71;
      }
    }

    v113[0] = v65;
    v113[1] = v108;
    v112[0] = v66;
    v112[1] = v108;
    v125 = v127;
    v126 = 0x600000000;
    if (v108)
    {
      v76 = 0;
      v77 = __src;
      v78 = v108;
      do
      {
        v80 = *v77++;
        v79 = v80;
        if (v80 == 0x8000000000000000)
        {
          v79 = 0x8000000000000000;
          if (*v65 != 0x8000000000000000 && *v66 != 0x8000000000000000)
          {
            if (*Value == 0x8000000000000000)
            {
              v79 = 0x8000000000000000;
            }

            else
            {
              v79 = *v66 + *v65 + *Value;
            }
          }
        }

        if (v76 >= HIDWORD(v126))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v127, v76 + 1, 8);
          v64 = v108;
          v76 = v126;
        }

        v125[v76] = v79;
        v76 = v126 + 1;
        LODWORD(v126) = v126 + 1;
        ++v65;
        ++v66;
        ++Value;
        --v78;
      }

      while (v78);
    }

    __p = &v118;
    v117 = 0x600000000;
    v81 = (8 * v64) >> 3;
    if (v81 < 7)
    {
      v83 = 0;
      v82 = v107;
      v84 = 8 * v64;
      if (!v64)
      {
LABEL_126:
        v85 = v83 + (v84 >> 3);
        LODWORD(v117) = v85;
        v86 = v126;
        v87 = v125;
        if (v85 == v126)
        {
          v88 = __p;
          if (!memcmp(__p, v125, 8 * v85))
          {
            if (v88 != &v118)
            {
              free(v88);
            }

            goto LABEL_145;
          }
        }

        if (v86)
        {
          v89 = 8 * v86 - 8;
          do
          {
            v90 = *v87++;
            v91 = v90 == 0x8000000000000000;
            v92 = v90 != 0x8000000000000000 || v89 == 0;
            v89 -= 8;
          }

          while (!v92);
          v93 = __p;
          v94 = v106;
          if (__p != &v118)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v91 = 1;
          v93 = __p;
          v94 = v106;
          if (__p != &v118)
          {
LABEL_136:
            free(v93);
          }
        }

        if (!v91)
        {
          v95 = v125;
          v96 = v126;
          __p = (*(v94 - 8) & 0xFFFFFFFFFFFFFFF8);
          RHS = mlir::AffineBinaryOpExpr::getRHS(&__p);
          v111 = mlir::RankedTensorType::get(v95, v96, RHS, 0);
          v98 = *(v94 + 24);
          v109 = *(v82 + 16 * ((*(v94 + 44) >> 23) & 1)) != 0;
          mlir::getPrunedAttributeList(v94, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, &__p);
          v99 = mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::Value &,llvm::ArrayRef<long long> &,llvm::ArrayRef<long long> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v98, &v111, &v115, v113, v112, &v140, &v134, &v109, &__p);
          v110 = v99;
          if (__p != &v118)
          {
            free(__p);
          }

          v121 = 0;
          v122 = 0;
          v123 = 0;
          v124 = 0;
          v100 = (((v82 + 16 * ((*(v94 + 44) >> 23) & 1) + ((*(v94 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v94 + 40));
          v102 = *(v99 + 40);
          v101 = *(v99 + 44);
          __p = 0;
          v117 = 0;
          v118 = 0;
          v119 = 0;
          v120 = 0;
          mlir::Region::cloneInto(v100, (((v99 + 16 * ((v101 >> 23) & 1) + ((v101 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v102), &__p);
          mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::tensor::PadOp &>(a3, v94, &v114, &v110);
          mlir::IRMapping::~IRMapping(&__p);
        }

LABEL_145:
        if (v125 != v127)
        {
          free(v125);
        }

        goto LABEL_147;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, &v118, v81, 8);
      v82 = v107;
      v83 = v117;
      v84 = 8 * v108;
      if (!v108)
      {
        goto LABEL_126;
      }
    }

    memcpy(__p + 8 * v83, __src, v84);
    v83 = v117;
    goto LABEL_126;
  }

LABEL_147:
  if (p_p != v130)
  {
    free(p_p);
  }

  if (v131 != v133)
  {
    free(v131);
  }

  if (v134 != v136)
  {
    free(v134);
  }

  if (v137 != v139)
  {
    free(v137);
  }

  if (v140 != v142)
  {
    free(v140);
  }

  if (v143 != v145)
  {
    free(v143);
  }

  return 0;
}