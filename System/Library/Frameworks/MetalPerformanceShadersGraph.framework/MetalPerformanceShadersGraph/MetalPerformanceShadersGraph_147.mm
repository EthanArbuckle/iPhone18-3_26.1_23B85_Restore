uint64_t mlir::mps::ColToImOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v44[6] = *MEMORY[0x1E69E9840];
  v41 = a1;
  v42 = v44;
  v43 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v41, "data_layout", 11, *a2);
  v5 = v43;
  if (v43 >= HIDWORD(v43))
  {
    v31 = NamedAttr;
    v32 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
    v4 = v32;
    NamedAttr = v31;
    v5 = v43;
  }

  v6 = (v42 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v43 + 1;
  LODWORD(v43) = v43 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v41, "dilation_rates", 14, v8);
    v11 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v33 = v9;
      v34 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v10 = v34;
      v9 = v33;
      v11 = v43;
    }

    v12 = (v42 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v41, "explicit_padding", 16, v13);
    v16 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v35 = v14;
      v36 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v15 = v36;
      v14 = v35;
      v16 = v43;
    }

    v17 = (v42 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v41, "kernel_sizes", 12, v18);
    v21 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v37 = v19;
      v38 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v20 = v38;
      v19 = v37;
      v21 = v43;
    }

    v22 = (v42 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v41, "strides", 7, v23);
    v26 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v39 = v24;
      v40 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v25 = v40;
      v24 = v39;
      v26 = v43;
    }

    v27 = (v42 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v28 = v42;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v42 == v44)
    {
      return DictionaryAttr;
    }

    goto LABEL_24;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v41, v42, v7);
  v28 = v42;
  if (v42 != v44)
  {
LABEL_24:
    free(v28);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::ColToImOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 11)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[4];
      }
    }

    else if (__n == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "kernel_sizes", 0xCuLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 14)
  {
    if (!memcmp(__s1, "dilation_rates", 0xEuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 16 || memcmp(__s1, "explicit_padding", 0x10uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::mps::ColToImOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 11)
  {
    if (a3 == 7)
    {
      result = memcmp(__s1, "strides", 7uLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          v5[4] = v10;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }

    else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *result = v7;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 12:
        result = memcmp(__s1, "kernel_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
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

        break;
      case 14:
        result = memcmp(__s1, "dilation_rates", 0xEuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[1] = v9;
          }

          else
          {
            v5[1] = 0;
          }
        }

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
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

        break;
    }
  }

  return result;
}

void mlir::mps::ColToImOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "data_layout", 11, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 14, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 16, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "kernel_sizes", 12, v7);
  }

  v8 = a2[4];
  if (v8)
  {

    mlir::NamedAttrList::append(a3, "strides", 7, v8);
  }
}

BOOL mlir::mps::ColToImOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(v8, "data_layout", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v10, "explicit_padding", 0x10, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v11, "kernel_sizes", 12, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v12, "strides", 7, a3, a4) & 1) != 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(_DWORD *a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id && a1[2] < 2u)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v8 = &v27;
    v9 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v9 = v33;
        v8 = v33 + v25;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = &v27;
        v9 = v33;
      }
    }

    v10 = &v9[24 * v34];
    v11 = *v8;
    *(v10 + 2) = *(v8 + 2);
    *v10 = v11;
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
        v28 = "' failed to satisfy constraint: valid TensorDataLayout is one of NCHW or NHWC";
        v29 = 77;
        v12 = &v27;
        v13 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v13 = v33;
            v12 = v33 + v26;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = &v27;
            v13 = v33;
          }
        }

        v14 = &v13[24 * v34];
        v15 = *v12;
        *(v14 + 2) = *(v12 + 2);
        *v14 = v15;
        ++v34;
      }
    }
  }

  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
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

  return v7;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(void *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v87 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = *a1;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

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
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v21 = v14[1];
      v66 = a1;
      v67 = v21;
      Type = mlir::ElementsAttr::getType(&v66);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v66 = a1;
    v67 = 0;
    Type = mlir::ElementsAttr::getType(&v66);
    if (!Type)
    {
      goto LABEL_30;
    }

LABEL_18:
    v22 = *Type;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v32 = Type;
      mlir::arith::ExtUIOp::fold();
      Type = v32;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
    if (v26 != &v24[2 * v25] && *v26 == v23)
    {
      v33 = v26[1];
LABEL_31:
      v68[0] = Type;
      v68[1] = v33;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v68);
      v86 = 2;
      if (v35 == 1 && *ArgAttrsAttr == v86)
      {
        v65 = a1;
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v72, a1, 0);
        NumElements = mlir::DenseElementsAttr::getNumElements(&v65);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v69, a1, NumElements);
        v75 = v72;
        v76 = v73;
        v54 = v69[2];
        v55 = v73;
        while (v55 != v54)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v75, &v70);
          v56 = v71;
          v71 = 0;
          if (v56 > 0x40)
          {
            v57 = *v70;
            if (v70)
            {
              operator delete[](v70);
              if (v71 >= 0x41)
              {
                if (v70)
                {
                  operator delete[](v70);
                }
              }
            }

            if (!v57)
            {
              goto LABEL_33;
            }
          }

          else if (!v70)
          {
            goto LABEL_33;
          }

          v55 = (v76 + 1);
          *&v76 = v76 + 1;
        }

        v62 = a1;
        v63[0] = mlir::ArrayAttr::getValue(&v62);
        v63[1] = v58;
        isSplat = mlir::ElementsAttr::isSplat(v63);
        if (mlir::Type::isUnsignedInteger(&isSplat, 64))
        {
          return 1;
        }
      }

      goto LABEL_33;
    }

LABEL_30:
    v33 = 0;
    goto LABEL_31;
  }

LABEL_33:
  a4(&v75, a5);
  if (v75)
  {
    LODWORD(v72) = 3;
    *(&v72 + 1) = "attribute '";
    *&v73 = 11;
    v36 = &v72;
    v37 = *(&v76 + 1);
    if (v77 >= v78)
    {
      if (*(&v76 + 1) <= &v72 && *(&v76 + 1) + 24 * v77 > &v72)
      {
        v60 = &v72 - *(&v76 + 1);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76 + 8, v79, v77 + 1, 24);
        v37 = *(&v76 + 1);
        v36 = &v60[*(&v76 + 1)];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76 + 8, v79, v77 + 1, 24);
        v36 = &v72;
        v37 = *(&v76 + 1);
      }
    }

    v38 = v37 + 24 * v77;
    v39 = *v36;
    *(v38 + 16) = *(v36 + 2);
    *v38 = v39;
    ++v77;
    if (v75)
    {
      v74 = 261;
      *&v72 = a2;
      *(&v72 + 1) = a3;
      mlir::Diagnostic::operator<<(&v75 + 8, &v72);
      if (v75)
      {
        LODWORD(v72) = 3;
        *(&v72 + 1) = "' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
        *&v73 = 77;
        v40 = &v72;
        v41 = *(&v76 + 1);
        if (v77 >= v78)
        {
          if (*(&v76 + 1) <= &v72 && *(&v76 + 1) + 24 * v77 > &v72)
          {
            v61 = &v72 - *(&v76 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76 + 8, v79, v77 + 1, 24);
            v41 = *(&v76 + 1);
            v40 = &v61[*(&v76 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76 + 8, v79, v77 + 1, 24);
            v40 = &v72;
            v41 = *(&v76 + 1);
          }
        }

        v42 = v41 + 24 * v77;
        v43 = *v40;
        *(v42 + 16) = *(v40 + 2);
        *v42 = v43;
        ++v77;
      }
    }
  }

  v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v75);
  if (v75)
  {
    mlir::InFlightDiagnostic::report(&v75);
  }

  if (v85 == 1)
  {
    if (v84 != &v85)
    {
      free(v84);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v83;
      v47 = __p;
      if (v83 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v83 = v45;
      operator delete(v47);
    }

    v48 = v80;
    if (v80)
    {
      v49 = v81;
      v50 = v80;
      if (v81 != v80)
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
        v50 = v80;
      }

      v81 = v48;
      operator delete(v50);
    }

    if (*(&v76 + 1) != v79)
    {
      free(*(&v76 + 1));
    }
  }

  return v44;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(void *a1, void *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v80 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = *a1;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v58 = v10;
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v58 + 8);
      v13 = *(v58 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

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
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v21 = v14[1];
      v63 = a1;
      v64 = v21;
      Type = mlir::ElementsAttr::getType(&v63);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v63 = a1;
    v64 = 0;
    Type = mlir::ElementsAttr::getType(&v63);
    if (!Type)
    {
      goto LABEL_30;
    }

LABEL_18:
    v22 = *Type;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v57 = v22;
      v59 = Type;
      mlir::arith::ExtUIOp::fold();
      Type = v59;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v57 + 8);
      v25 = *(v57 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
    if (v26 != &v24[2 * v25] && *v26 == v23)
    {
      v32 = v26[1];
      goto LABEL_31;
    }

LABEL_30:
    v32 = 0;
LABEL_31:
    v67 = Type;
    v68 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v67);
    v79 = xmmword_1E097BBD0;
    if (v34 == 2 && *ArgAttrsAttr == v79 && ArgAttrsAttr[1] == *(&v79 + 1))
    {
      v60 = a1;
      v61[0] = mlir::ArrayAttr::getValue(&v60);
      v61[1] = v36;
      isSplat = mlir::ElementsAttr::isSplat(v61);
      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
        return 1;
      }
    }
  }

  a4(&v67, a5);
  if (v67)
  {
    LODWORD(v63) = 3;
    v64 = "attribute '";
    v65 = 11;
    v38 = &v63;
    v39 = v69;
    if (v70 >= v71)
    {
      if (v69 <= &v63 && v69 + 24 * v70 > &v63)
      {
        v55 = &v63 - v69;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
        v39 = v69;
        v38 = v69 + v55;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
        v38 = &v63;
        v39 = v69;
      }
    }

    v40 = &v39[24 * v70];
    v41 = *v38;
    *(v40 + 2) = *(v38 + 2);
    *v40 = v41;
    ++v70;
    if (v67)
    {
      v66 = 261;
      v63 = a2;
      v64 = a3;
      mlir::Diagnostic::operator<<(&v68, &v63);
      if (v67)
      {
        LODWORD(v63) = 3;
        v64 = "' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        v65 = 71;
        v42 = &v63;
        v43 = v69;
        if (v70 >= v71)
        {
          if (v69 <= &v63 && v69 + 24 * v70 > &v63)
          {
            v56 = &v63 - v69;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
            v43 = v69;
            v42 = v69 + v56;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
            v42 = &v63;
            v43 = v69;
          }
        }

        v44 = &v43[24 * v70];
        v45 = *v42;
        *(v44 + 2) = *(v42 + 2);
        *v44 = v45;
        ++v70;
      }
    }
  }

  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
  if (v67)
  {
    mlir::InFlightDiagnostic::report(&v67);
  }

  if (v78 == 1)
  {
    if (v77 != &v78)
    {
      free(v77);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v76;
      v48 = __p;
      if (v76 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v76 = v46;
      operator delete(v48);
    }

    v49 = v73;
    if (v73)
    {
      v50 = v74;
      v51 = v73;
      if (v74 != v73)
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
        v51 = v73;
      }

      v74 = v49;
      operator delete(v51);
    }

    if (v69 != v72)
    {
      free(v69);
    }
  }

  return v37;
}

BOOL mlir::mps::ColToImOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x28uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 4) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::ColToImOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3) & 1) == 0)
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 3))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4);
  }

  return 0;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::TensorDataLayoutAttr]";
  v38 = 81;
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

void mlir::mps::ColToImOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, __int128 *a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t *a11, uint64_t a12, unsigned int a13)
{
  v16 = mlir::mps::get2DElementsForImToCol(a1, a5);
  v17 = mlir::mps::get2DElementsForImToCol(a1, a7);
  v18 = mlir::mps::get2DElementsForImToCol(a1, a9);
  FormattedPaddingImToCol = mlir::mps::getFormattedPaddingImToCol(a1, a11, a12, a13);

  mlir::mps::ColToImOp::build(a1, a2, a3, a4, v16, v17, v18, FormattedPaddingImToCol, a13);
}

void mlir::mps::ColToImOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v53 = *MEMORY[0x1E69E9840];
  v42 = a4;
  v43 = a3;
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  v15 = *(a2 + 256);
  if (v15)
  {
    *(v15 + 24) = a5;
    v16 = *(a2 + 256);
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = operator new(0x28uLL);
    *v20 = 0u;
    v20[1] = 0u;
    *(v20 + 4) = 0;
    *(a2 + 256) = v20;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::ColToImOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 24) = a5;
    v16 = *(a2 + 256);
    if (v16)
    {
LABEL_3:
      v17 = a9;
      *(v16 + 32) = a6;
      v18 = *(a2 + 256);
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v21 = operator new(0x28uLL);
  *v21 = 0u;
  v21[1] = 0u;
  *(v21 + 4) = 0;
  *(a2 + 256) = v21;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::ColToImOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v17 = a9;
  *(*(a2 + 256) + 32) = a6;
  v18 = *(a2 + 256);
  if (v18)
  {
LABEL_4:
    *(v18 + 8) = a7;
    v19 = *(a2 + 256);
    if (v19)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v22 = operator new(0x28uLL);
  *v22 = 0u;
  v22[1] = 0u;
  *(v22 + 4) = 0;
  *(a2 + 256) = v22;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::ColToImOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 8) = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
LABEL_15:
    v23 = operator new(0x28uLL);
    *v23 = 0u;
    v23[1] = 0u;
    *(v23 + 4) = 0;
    *(a2 + 256) = v23;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::ColToImOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v19 = *(a2 + 256);
  }

LABEL_18:
  *(v19 + 16) = a8;
  v24 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v49 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v50 = v24;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v47 = &v49;
  v45 = v17;
  v26 = 0x9DDFEA08EB382D69 * (((8 * v17) | 4) ^ v17 ^ 0xFF51AFD7ED558CCDLL);
  v27 = 0x9DDFEA08EB382D69 * (v17 ^ 0xFF51AFD7ED558CCDLL ^ (v26 >> 47) ^ v26);
  v44 = &v45;
  v51 = &v45;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v27 >> 47) ^ v27), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v44, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v51);
  v29 = *(a2 + 256);
  if (!v29)
  {
    v30 = operator new(0x28uLL);
    *v30 = 0u;
    v30[1] = 0u;
    *(v30 + 4) = 0;
    *(a2 + 256) = v30;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::ColToImOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::ColToImOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v29 = *(a2 + 256);
  }

  *v29 = ParametricStorageTypeImpl;
  __src = v48;
  v47 = 0x200000000;
  mlir::ValueRange::ValueRange(&v51, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v33 = *(a2 + 256);
  v34 = mlir::ValueRange::ValueRange(&v49, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ColToImOp::inferReturnTypes(v34, v35, v36, v51, p_src, Dictionary, v33, v37, v49, v50, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v38 = __src;
  v39 = v47;
  v40 = *(a2 + 72);
  v41 = v40 + v47;
  if (v41 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v41, 8);
    LODWORD(v40) = *(a2 + 72);
  }

  if (v39)
  {
    memcpy((*(a2 + 64) + 8 * v40), v38, 8 * v39);
    LODWORD(v40) = *(a2 + 72);
  }

  *(a2 + 72) = v40 + v39;
  if (__src != v48)
  {
    free(__src);
  }
}

BOOL mlir::mps::ColToImOp::verifyInvariantsImpl(mlir::mps::ColToImOp *this)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (v4)
  {
    v5 = v2[1];
    if (v5)
    {
      v6 = v2[2];
      if (v6)
      {
        v7 = v2[3];
        if (v7)
        {
          v8 = v2[4];
          if (v8)
          {
            v42 = *this;
            if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v7, "kernel_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42) & 1) != 0 && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v8, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(v3, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps10(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
            {
              if (*(*this + 36))
              {
                v10 = *this - 16;
              }

              else
              {
                v10 = 0;
              }

              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
              return mlir::mps::__mlir_ods_local_type_constraint_MPSOps11(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v40[0] = "requires attribute 'strides'";
            v41 = 259;
            mlir::OpState::emitOpError(this, v40, &v42);
            v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
            if (v42)
            {
              mlir::InFlightDiagnostic::report(&v42);
            }

            if (v51 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v43);
            }
          }

          return v12;
        }

        v40[0] = "requires attribute 'kernel_sizes'";
        v41 = 259;
        mlir::OpState::emitOpError(this, v40, &v42);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
        if (v42)
        {
          mlir::InFlightDiagnostic::report(&v42);
        }

        if (v51 == 1)
        {
          if (v50 != &v51)
          {
            free(v50);
          }

          v33 = __p;
          if (__p)
          {
            v34 = v49;
            v35 = __p;
            if (v49 != __p)
            {
              do
              {
                v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
              }

              while (v34 != v33);
              v35 = __p;
            }

            v49 = v33;
            operator delete(v35);
          }

          v16 = v46;
          if (!v46)
          {
            goto LABEL_84;
          }

          v36 = v47;
          v18 = v46;
          if (v47 == v46)
          {
LABEL_83:
            v47 = v16;
            operator delete(v18);
LABEL_84:
            if (v44 != &v45)
            {
              free(v44);
            }

            return v12;
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

          while (v36 != v16);
LABEL_82:
          v18 = v46;
          goto LABEL_83;
        }
      }

      else
      {
        v40[0] = "requires attribute 'explicit_padding'";
        v41 = 259;
        mlir::OpState::emitOpError(this, v40, &v42);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
        if (v42)
        {
          mlir::InFlightDiagnostic::report(&v42);
        }

        if (v51 == 1)
        {
          if (v50 != &v51)
          {
            free(v50);
          }

          v27 = __p;
          if (__p)
          {
            v28 = v49;
            v29 = __p;
            if (v49 != __p)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = __p;
            }

            v49 = v27;
            operator delete(v29);
          }

          v16 = v46;
          if (!v46)
          {
            goto LABEL_84;
          }

          v30 = v47;
          v18 = v46;
          if (v47 == v46)
          {
            goto LABEL_83;
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

          while (v30 != v16);
          goto LABEL_82;
        }
      }
    }

    else
    {
      v40[0] = "requires attribute 'dilation_rates'";
      v41 = 259;
      mlir::OpState::emitOpError(this, v40, &v42);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v51 == 1)
      {
        if (v50 != &v51)
        {
          free(v50);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v49;
          v23 = __p;
          if (v49 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v49 = v21;
          operator delete(v23);
        }

        v16 = v46;
        if (!v46)
        {
          goto LABEL_84;
        }

        v24 = v47;
        v18 = v46;
        if (v47 == v46)
        {
          goto LABEL_83;
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
        goto LABEL_82;
      }
    }
  }

  else
  {
    v40[0] = "requires attribute 'data_layout'";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, &v42);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v49;
        v15 = __p;
        if (v49 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v49 = v13;
        operator delete(v15);
      }

      v16 = v46;
      if (!v46)
      {
        goto LABEL_84;
      }

      v17 = v47;
      v18 = v46;
      if (v47 == v46)
      {
        goto LABEL_83;
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
      goto LABEL_82;
    }
  }

  return v12;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps10(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v111 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v10 + 8);
      v41 = *(v10 + 16);
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v48 = v10;
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v48 + 8);
      v41 = *(v48 + 16);
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    v42 = v40;
    v43 = v41;
    do
    {
      v44 = v43 >> 1;
      v45 = &v42[2 * (v43 >> 1)];
      v47 = *v45;
      v46 = v45 + 2;
      v43 += ~(v43 >> 1);
      if (v47 < v39)
      {
        v42 = v46;
      }

      else
      {
        v43 = v44;
      }
    }

    while (v43);
    if (v42 != &v40[2 * v41] && *v42 == v39)
    {
      v49 = v42[1];
      goto LABEL_58;
    }

LABEL_56:
    v49 = 0;
LABEL_58:
    v100[0] = a2;
    v100[1] = v49;
    isSplat = mlir::ElementsAttr::isSplat(v100);
    if (mlir::Type::isF32(&isSplat))
    {
      return 1;
    }

    v10 = *a2;
    if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_3;
    }

LABEL_62:
    {
      v51 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v52 = *(v10 + 8);
      v53 = *(v10 + 16);
      if (!v53)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v60 = v10;
      mlir::arith::ExtUIOp::fold();
      v51 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v52 = *(v60 + 8);
      v53 = *(v60 + 16);
      if (!v53)
      {
        goto LABEL_74;
      }
    }

    v54 = v52;
    v55 = v53;
    do
    {
      v56 = v55 >> 1;
      v57 = &v54[2 * (v55 >> 1)];
      v59 = *v57;
      v58 = v57 + 2;
      v55 += ~(v55 >> 1);
      if (v59 < v51)
      {
        v54 = v58;
      }

      else
      {
        v55 = v56;
      }
    }

    while (v55);
    if (v54 != &v52[2 * v53] && *v54 == v51)
    {
      v61 = v54[1];
      v92 = a2;
      v93 = v61;
      if (!mlir::CallOpInterface::getArgOperands(&v92))
      {
        goto LABEL_3;
      }

      goto LABEL_77;
    }

LABEL_74:
    v92 = a2;
    v93 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v92))
    {
      goto LABEL_3;
    }

LABEL_77:
    v62 = *a2;
    {
      v63 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v64 = *(v62 + 8);
      v65 = *(v62 + 16);
      if (!v65)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v91 = v62;
      mlir::arith::ExtUIOp::fold();
      v63 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v64 = *(v91 + 8);
      v65 = *(v91 + 16);
      if (!v65)
      {
        goto LABEL_89;
      }
    }

    v66 = v64;
    v67 = v65;
    do
    {
      v68 = v67 >> 1;
      v69 = &v66[2 * (v67 >> 1)];
      v71 = *v69;
      v70 = v69 + 2;
      v67 += ~(v67 >> 1);
      if (v71 < v63)
      {
        v66 = v70;
      }

      else
      {
        v67 = v68;
      }
    }

    while (v67);
    if (v66 != &v64[2 * v65] && *v66 == v63)
    {
      v73 = v66[1];
      v97 = a2;
      v98 = v73;
      mlir::CallableOpInterface::getArgAttrsAttr(&v97);
      if (v74 != 3)
      {
        goto LABEL_3;
      }

      goto LABEL_92;
    }

LABEL_89:
    v97 = a2;
    v98 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v97);
    if (v72 != 3)
    {
      goto LABEL_3;
    }

LABEL_92:
    v75 = *a2;
    {
      v76 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v77 = *(v75 + 8);
      v78 = *(v75 + 16);
      if (!v78)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v87 = v75;
      mlir::arith::ExtUIOp::fold();
      v76 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v77 = *(v87 + 8);
      v78 = *(v87 + 16);
      if (!v78)
      {
        goto LABEL_106;
      }
    }

    v79 = v77;
    v80 = v78;
    do
    {
      v81 = v80 >> 1;
      v82 = &v79[2 * (v80 >> 1)];
      v84 = *v82;
      v83 = v82 + 2;
      v80 += ~(v80 >> 1);
      if (v84 < v76)
      {
        v79 = v83;
      }

      else
      {
        v80 = v81;
      }
    }

    while (v80);
    if (v79 != &v77[2 * v78] && *v79 == v76)
    {
      v88 = v79[1];
LABEL_108:
      v95[0] = a2;
      v95[1] = v88;
      isSplat = mlir::ElementsAttr::isSplat(v95);
      if (!mlir::Type::isF32(&isSplat))
      {
        goto LABEL_3;
      }

      return 1;
    }

LABEL_106:
    v88 = 0;
    goto LABEL_108;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_62;
  }

LABEL_3:
  v94 = 261;
  v92 = a3;
  v93 = a4;
  mlir::Operation::emitOpError(a1, &v92, v100);
  if (v100[0])
  {
    LODWORD(v97) = 3;
    v98 = " #";
    v99 = 2;
    v12 = &v97;
    v13 = v101;
    if (v102 >= v103)
    {
      if (v101 <= &v97 && v101 + 24 * v102 > &v97)
      {
        v85 = &v97 - v101;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
        v13 = v101;
        v12 = v101 + v85;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
        v12 = &v97;
        v13 = v101;
      }
    }

    v14 = &v13[24 * v102];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    v16 = ++v102;
    if (v100[0])
    {
      LODWORD(v97) = 5;
      v98 = a5;
      v17 = &v97;
      v18 = v101;
      if (v16 >= v103)
      {
        if (v101 <= &v97 && v101 + 24 * v16 > &v97)
        {
          v86 = &v97 - v101;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v16 + 1, 24);
          v18 = v101;
          v17 = v101 + v86;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v16 + 1, 24);
          v17 = &v97;
          v18 = v101;
        }
      }

      v19 = &v18[24 * v102];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      v21 = ++v102;
      if (v100[0])
      {
        LODWORD(v97) = 3;
        v98 = " must be unranked tensor of 32-bit float values or 3D tensor of 32-bit float values, but got ";
        v99 = 93;
        v22 = &v97;
        v23 = v101;
        if (v21 >= v103)
        {
          if (v101 <= &v97 && v101 + 24 * v21 > &v97)
          {
            v89 = &v97 - v101;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v21 + 1, 24);
            v23 = v101;
            v22 = v101 + v89;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v21 + 1, 24);
            v22 = &v97;
            v23 = v101;
          }
        }

        v24 = &v23[24 * v102];
        v25 = *v22;
        *(v24 + 2) = *(v22 + 2);
        *v24 = v25;
        ++v102;
        if (v100[0])
        {
          v26 = &v97;
          mlir::DiagnosticArgument::DiagnosticArgument(&v97, a2);
          v27 = v101;
          if (v102 >= v103)
          {
            if (v101 <= &v97 && v101 + 24 * v102 > &v97)
            {
              v90 = &v97 - v101;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
              v27 = v101;
              v26 = v101 + v90;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
              v26 = &v97;
              v27 = v101;
            }
          }

          v28 = &v27[24 * v102];
          v29 = *v26;
          *(v28 + 2) = *(v26 + 2);
          *v28 = v29;
          ++v102;
        }
      }
    }
  }

  v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v100);
  if (v100[0])
  {
    mlir::InFlightDiagnostic::report(v100);
  }

  if (v110 == 1)
  {
    if (v109 != &v110)
    {
      free(v109);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v108;
      v33 = __p;
      if (v108 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v108 = v31;
      operator delete(v33);
    }

    v34 = v105;
    if (v105)
    {
      v35 = v106;
      v36 = v105;
      if (v106 != v105)
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
        v36 = v105;
      }

      v106 = v34;
      operator delete(v36);
    }

    if (v101 != v104)
    {
      free(v101);
    }
  }

  return v30;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps11(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v111 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v10 + 8);
      v41 = *(v10 + 16);
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v48 = v10;
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v48 + 8);
      v41 = *(v48 + 16);
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    v42 = v40;
    v43 = v41;
    do
    {
      v44 = v43 >> 1;
      v45 = &v42[2 * (v43 >> 1)];
      v47 = *v45;
      v46 = v45 + 2;
      v43 += ~(v43 >> 1);
      if (v47 < v39)
      {
        v42 = v46;
      }

      else
      {
        v43 = v44;
      }
    }

    while (v43);
    if (v42 != &v40[2 * v41] && *v42 == v39)
    {
      v49 = v42[1];
      goto LABEL_58;
    }

LABEL_56:
    v49 = 0;
LABEL_58:
    v100[0] = a2;
    v100[1] = v49;
    isSplat = mlir::ElementsAttr::isSplat(v100);
    if (mlir::Type::isF32(&isSplat))
    {
      return 1;
    }

    v10 = *a2;
    if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_3;
    }

LABEL_62:
    {
      v51 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v52 = *(v10 + 8);
      v53 = *(v10 + 16);
      if (!v53)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v60 = v10;
      mlir::arith::ExtUIOp::fold();
      v51 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v52 = *(v60 + 8);
      v53 = *(v60 + 16);
      if (!v53)
      {
        goto LABEL_74;
      }
    }

    v54 = v52;
    v55 = v53;
    do
    {
      v56 = v55 >> 1;
      v57 = &v54[2 * (v55 >> 1)];
      v59 = *v57;
      v58 = v57 + 2;
      v55 += ~(v55 >> 1);
      if (v59 < v51)
      {
        v54 = v58;
      }

      else
      {
        v55 = v56;
      }
    }

    while (v55);
    if (v54 != &v52[2 * v53] && *v54 == v51)
    {
      v61 = v54[1];
      v92 = a2;
      v93 = v61;
      if (!mlir::CallOpInterface::getArgOperands(&v92))
      {
        goto LABEL_3;
      }

      goto LABEL_77;
    }

LABEL_74:
    v92 = a2;
    v93 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v92))
    {
      goto LABEL_3;
    }

LABEL_77:
    v62 = *a2;
    {
      v63 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v64 = *(v62 + 8);
      v65 = *(v62 + 16);
      if (!v65)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v91 = v62;
      mlir::arith::ExtUIOp::fold();
      v63 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v64 = *(v91 + 8);
      v65 = *(v91 + 16);
      if (!v65)
      {
        goto LABEL_89;
      }
    }

    v66 = v64;
    v67 = v65;
    do
    {
      v68 = v67 >> 1;
      v69 = &v66[2 * (v67 >> 1)];
      v71 = *v69;
      v70 = v69 + 2;
      v67 += ~(v67 >> 1);
      if (v71 < v63)
      {
        v66 = v70;
      }

      else
      {
        v67 = v68;
      }
    }

    while (v67);
    if (v66 != &v64[2 * v65] && *v66 == v63)
    {
      v73 = v66[1];
      v97 = a2;
      v98 = v73;
      mlir::CallableOpInterface::getArgAttrsAttr(&v97);
      if (v74 != 4)
      {
        goto LABEL_3;
      }

      goto LABEL_92;
    }

LABEL_89:
    v97 = a2;
    v98 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v97);
    if (v72 != 4)
    {
      goto LABEL_3;
    }

LABEL_92:
    v75 = *a2;
    {
      v76 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v77 = *(v75 + 8);
      v78 = *(v75 + 16);
      if (!v78)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v87 = v75;
      mlir::arith::ExtUIOp::fold();
      v76 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v77 = *(v87 + 8);
      v78 = *(v87 + 16);
      if (!v78)
      {
        goto LABEL_106;
      }
    }

    v79 = v77;
    v80 = v78;
    do
    {
      v81 = v80 >> 1;
      v82 = &v79[2 * (v80 >> 1)];
      v84 = *v82;
      v83 = v82 + 2;
      v80 += ~(v80 >> 1);
      if (v84 < v76)
      {
        v79 = v83;
      }

      else
      {
        v80 = v81;
      }
    }

    while (v80);
    if (v79 != &v77[2 * v78] && *v79 == v76)
    {
      v88 = v79[1];
LABEL_108:
      v95[0] = a2;
      v95[1] = v88;
      isSplat = mlir::ElementsAttr::isSplat(v95);
      if (!mlir::Type::isF32(&isSplat))
      {
        goto LABEL_3;
      }

      return 1;
    }

LABEL_106:
    v88 = 0;
    goto LABEL_108;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_62;
  }

LABEL_3:
  v94 = 261;
  v92 = a3;
  v93 = a4;
  mlir::Operation::emitOpError(a1, &v92, v100);
  if (v100[0])
  {
    LODWORD(v97) = 3;
    v98 = " #";
    v99 = 2;
    v12 = &v97;
    v13 = v101;
    if (v102 >= v103)
    {
      if (v101 <= &v97 && v101 + 24 * v102 > &v97)
      {
        v85 = &v97 - v101;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
        v13 = v101;
        v12 = v101 + v85;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
        v12 = &v97;
        v13 = v101;
      }
    }

    v14 = &v13[24 * v102];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    v16 = ++v102;
    if (v100[0])
    {
      LODWORD(v97) = 5;
      v98 = a5;
      v17 = &v97;
      v18 = v101;
      if (v16 >= v103)
      {
        if (v101 <= &v97 && v101 + 24 * v16 > &v97)
        {
          v86 = &v97 - v101;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v16 + 1, 24);
          v18 = v101;
          v17 = v101 + v86;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v16 + 1, 24);
          v17 = &v97;
          v18 = v101;
        }
      }

      v19 = &v18[24 * v102];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      v21 = ++v102;
      if (v100[0])
      {
        LODWORD(v97) = 3;
        v98 = " must be unranked tensor of 32-bit float values or 4D tensor of 32-bit float values, but got ";
        v99 = 93;
        v22 = &v97;
        v23 = v101;
        if (v21 >= v103)
        {
          if (v101 <= &v97 && v101 + 24 * v21 > &v97)
          {
            v89 = &v97 - v101;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v21 + 1, 24);
            v23 = v101;
            v22 = v101 + v89;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v21 + 1, 24);
            v22 = &v97;
            v23 = v101;
          }
        }

        v24 = &v23[24 * v102];
        v25 = *v22;
        *(v24 + 2) = *(v22 + 2);
        *v24 = v25;
        ++v102;
        if (v100[0])
        {
          v26 = &v97;
          mlir::DiagnosticArgument::DiagnosticArgument(&v97, a2);
          v27 = v101;
          if (v102 >= v103)
          {
            if (v101 <= &v97 && v101 + 24 * v102 > &v97)
            {
              v90 = &v97 - v101;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
              v27 = v101;
              v26 = v101 + v90;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
              v26 = &v97;
              v27 = v101;
            }
          }

          v28 = &v27[24 * v102];
          v29 = *v26;
          *(v28 + 2) = *(v26 + 2);
          *v28 = v29;
          ++v102;
        }
      }
    }
  }

  v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v100);
  if (v100[0])
  {
    mlir::InFlightDiagnostic::report(v100);
  }

  if (v110 == 1)
  {
    if (v109 != &v110)
    {
      free(v109);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v108;
      v33 = __p;
      if (v108 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v108 = v31;
      operator delete(v33);
    }

    v34 = v105;
    if (v105)
    {
      v35 = v106;
      v36 = v105;
      if (v106 != v105)
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
        v36 = v105;
      }

      v106 = v34;
      operator delete(v36);
    }

    if (v101 != v104)
    {
      free(v101);
    }
  }

  return v30;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ColToImOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.col_to_im", 13, a3, v10, a4, a5);
  *v11 = &unk_1F5B26340;
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

uint64_t mlir::mps::ConcatOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "interleave";
  v56.var1 = 10;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 55;
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

uint64_t mlir::mps::ConcatOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "interleave", 10, *a2);
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

BOOL mlir::mps::ConcatOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::ConcatOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::ConcatOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256));
}

void mlir::mps::ConcatOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v23 = a5;
  mlir::OperationState::addOperands(a2, a3, a4);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  if (a6)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v9);
    v11 = *(a2 + 256);
    if (!v11)
    {
      v12 = operator new(8uLL);
      *v12 = 0;
      *(a2 + 256) = v12;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::ConcatOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::ConcatOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v11 = *(a2 + 256);
    }

    *v11 = UnitAttr;
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
  if ((mlir::mps::ConcatOp::inferReturnTypes(v13, v14, 1, v25[0], v25[1], Dictionary, v17, v18, v24[0], v24[1], &__src) & 1) == 0)
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

uint64_t mlir::mps::ConcatOp::verifyInvariantsImpl(mlir::mps::ConcatOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v20 = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "interleave", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v20) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v7 = 0;
    v6 = 0xFFFFFFFFLL;
LABEL_5:
    v8 = 0;
    v9 = v7 + 24;
    while ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps12(*this, (*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v8) & 1) != 0)
    {
      ++v8;
      v9 += 32;
      if (v6 == v8)
      {
        v4 = *this;
        if ((*(*this + 46) & 0x80) != 0)
        {
          goto LABEL_11;
        }

        v10 = 0;
        v11 = 0xFFFFFFFFLL;
        goto LABEL_12;
      }
    }

    return 0;
  }

  v5 = *(v4 + 68);
  v6 = (v5 - 1);
  if (v5 != 1)
  {
    v7 = *(v4 + 72);
    goto LABEL_5;
  }

  LODWORD(v8) = 0;
LABEL_11:
  v10 = *(v4 + 72);
  v11 = (*(v4 + 68) - 1);
LABEL_12:
  v12 = (v11 + 1);
  v13 = v12 - v11;
  if (v12 != v11)
  {
    v14 = v10 + 32 * v11 + 24;
    while ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v8) & 1) != 0)
    {
      LODWORD(v8) = v8 + 1;
      v14 += 32;
      if (!--v13)
      {
        v4 = *this;
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  v15 = *(v4 + 36);
  v16 = v4 - 16;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps12(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v94 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_34;
  }

  {
    v73 = a1;
    v21 = v9;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v73;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = *(v21 + 8);
    v14 = *(v21 + 16);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = a1;
    v23 = 0;
    goto LABEL_20;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = *(v9 + 8);
  v14 = *(v9 + 16);
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_8:
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
  if (v15 == &v13[2 * v14] || *v15 != v12)
  {
    goto LABEL_18;
  }

  v22 = a1;
  v23 = v15[1];
LABEL_20:
  v83[0] = a2;
  v83[1] = v23;
  isSplat = mlir::ElementsAttr::isSplat(v83);
  if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v9 = *a2;
  v10 = *(*a2 + 136);
  a1 = v22;
LABEL_34:
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_55;
  }

  {
    v34 = a1;
    v35 = v9;
    mlir::arith::ExtUIOp::fold();
    a1 = v34;
    v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v26 = *(v35 + 8);
    v27 = *(v35 + 16);
    if (v27)
    {
      goto LABEL_41;
    }

LABEL_51:
    v36 = a1;
    v37 = 0;
    goto LABEL_53;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v26 = *(v9 + 8);
  v27 = *(v9 + 16);
  if (!v27)
  {
    goto LABEL_51;
  }

LABEL_41:
  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_51;
  }

  v36 = a1;
  v37 = v28[1];
LABEL_53:
  v74 = a2;
  v75 = v37;
  v38 = mlir::ElementsAttr::isSplat(&v74);
  if (*(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v66 = v38;
    v79 = v38;
    isSplat = mlir::AffineMapAttr::getValue(&v79);
    if (!mlir::Type::isF16(&isSplat))
    {
      v77 = v66;
      Value = mlir::AffineMapAttr::getValue(&v77);
      isF32 = mlir::Type::isF32(&Value);
      a1 = v36;
      if (!isF32)
      {
        goto LABEL_55;
      }
    }

    return 1;
  }

  a1 = v36;
LABEL_55:
  v76 = 261;
  v74 = a3;
  v75 = a4;
  mlir::Operation::emitOpError(a1, &v74, v83);
  if (v83[0])
  {
    LODWORD(isSplat) = 3;
    v81 = " #";
    v82 = 2;
    p_isSplat = &isSplat;
    v40 = v84;
    if (v85 >= v86)
    {
      if (v84 <= &isSplat && v84 + 24 * v85 > &isSplat)
      {
        v69 = &isSplat - v84;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v40 = v84;
        p_isSplat = (v84 + v69);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        p_isSplat = &isSplat;
        v40 = v84;
      }
    }

    v41 = &v40[24 * v85];
    v42 = *p_isSplat;
    *(v41 + 2) = p_isSplat[2];
    *v41 = v42;
    v43 = ++v85;
    if (v83[0])
    {
      LODWORD(isSplat) = 5;
      v81 = a5;
      v44 = &isSplat;
      v45 = v84;
      if (v43 >= v86)
      {
        if (v84 <= &isSplat && v84 + 24 * v43 > &isSplat)
        {
          v70 = &isSplat - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v43 + 1, 24);
          v45 = v84;
          v44 = (v84 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v43 + 1, 24);
          v44 = &isSplat;
          v45 = v84;
        }
      }

      v46 = &v45[24 * v85];
      v47 = *v44;
      *(v46 + 2) = v44[2];
      *v46 = v47;
      v48 = ++v85;
      if (v83[0])
      {
        LODWORD(isSplat) = 3;
        v81 = " must be variadic of tensor of mps native type values or tensor of complex values, but got ";
        v82 = 91;
        v49 = &isSplat;
        v50 = v84;
        if (v48 >= v86)
        {
          if (v84 <= &isSplat && v84 + 24 * v48 > &isSplat)
          {
            v71 = &isSplat - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v48 + 1, 24);
            v50 = v84;
            v49 = (v84 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v48 + 1, 24);
            v49 = &isSplat;
            v50 = v84;
          }
        }

        v51 = &v50[24 * v85];
        v52 = *v49;
        *(v51 + 2) = v49[2];
        *v51 = v52;
        ++v85;
        if (v83[0])
        {
          v53 = &isSplat;
          mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, a2);
          v54 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &isSplat && v84 + 24 * v85 > &isSplat)
            {
              v72 = &isSplat - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v54 = v84;
              v53 = (v84 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v53 = &isSplat;
              v54 = v84;
            }
          }

          v55 = &v54[24 * v85];
          v56 = *v53;
          *(v55 + 2) = v53[2];
          *v55 = v56;
          ++v85;
        }
      }
    }
  }

  v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v83);
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

    v58 = __p;
    if (__p)
    {
      v59 = v91;
      v60 = __p;
      if (v91 != __p)
      {
        do
        {
          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
        }

        while (v59 != v58);
        v60 = __p;
      }

      v91 = v58;
      operator delete(v60);
    }

    v61 = v88;
    if (v88)
    {
      v62 = v89;
      v63 = v88;
      if (v89 != v88)
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
        v63 = v88;
      }

      v89 = v61;
      operator delete(v63);
    }

    if (v84 != v87)
    {
      free(v84);
    }
  }

  return v57;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ConcatOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.concat", 10, a3, v10, a4, a5);
  *v11 = &unk_1F5B263E0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ConjugateOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.conjugate", 13, a3, v10, a4, a5);
  *v11 = &unk_1F5B26480;
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

uint64_t mlir::mps::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64;
  v4 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = *(*v4 + 136);
    v6 = v5 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    v7 = v5 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id ? v4 : 0;
    v18 = v7;
    if (v6)
    {
      v11 = v4[2];
      v13 = a2;
      Context = mlir::Attribute::getContext(&v18);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v15);
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++*(v11 + 88);
      llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
      a2 = v13;
      v2 = a1;
      v8 = *(v13 + 44);
      v9 = v8 & 0x7FFFFF;
      if ((v8 & 0x7FFFFF) != 0)
      {
        goto LABEL_7;
      }

LABEL_9:
      v10 = 0;
      v9 = 0;
      goto LABEL_10;
    }
  }

  v8 = *(a2 + 44);
  v9 = v8 & 0x7FFFFF;
  if ((v8 & 0x7FFFFF) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = ((v3 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
LABEL_10:
  mlir::ValueRange::ValueRange((v2 + 32), v10, v9);
  return v2;
}

uint64_t mlir::mps::ConstantOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v29 = v4;
  if (v4)
  {
    v45.var0 = "value";
    v45.var1 = 5;
    v6 = mlir::DictionaryAttr::get(&v29, v45);
    if (v6)
    {
      v7 = *(*v6 + 136);
      v8 = v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
      if (v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0;
      }

      v33[0] = v9;
      if (v8)
      {
        v10 = v6[2];
        v11 = v6;
        Context = mlir::Attribute::getContext(v33);
        Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v13);
        llvm::sys::RWMutexImpl::lock((Manager + 48));
        ++*(v10 + 88);
        llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
        v6 = v11;
      }

      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(v33, a4);
    if (v33[0])
    {
      v30 = 3;
      v31 = "expected DictionaryAttr to set properties";
      v32 = 41;
      v16 = &v30;
      v17 = v34;
      if (v35 >= v36)
      {
        if (v34 <= &v30 && v34 + 24 * v35 > &v30)
        {
          v28 = &v30 - v34;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v17 = v34;
          v16 = (v34 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v16 = &v30;
          v17 = v34;
        }
      }

      v18 = &v17[24 * v35];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v35;
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v41;
        v22 = __p;
        if (v41 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v41 = v20;
        operator delete(v22);
      }

      v23 = v38;
      if (v38)
      {
        v24 = v39;
        v25 = v38;
        if (v39 != v38)
        {
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
          v25 = v38;
        }

        v39 = v23;
        operator delete(v25);
      }

      if (v34 != v37)
      {
        free(v34);
      }
    }

    return 0;
  }
}

uint64_t mlir::mps::ConstantOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, mlir::MLIRContext *a2)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  v2 = *a2;
  if (!*a2)
  {
    v2 = mlir::UnitAttr::get(a1, a2);
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v14, "value", 5, v2);
  v5 = v16;
  if (v16 >= HIDWORD(v16))
  {
    v12 = NamedAttr;
    v13 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v16 + 1, 16);
    v4 = v13;
    NamedAttr = v12;
    v5 = v16;
  }

  v6 = (v15 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = __CFADD__(v16, 1);
  v8 = (v16 + 1);
  LODWORD(v16) = v16 + 1;
  if (v7)
  {
    DictionaryAttr = 0;
    v10 = v15;
    if (v15 == v17)
    {
      return DictionaryAttr;
    }

    goto LABEL_10;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v15, v8);
  v10 = v15;
  if (v15 != v17)
  {
LABEL_10:
    free(v10);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::ConstantOp::computePropertiesHash(unint64_t *a1)
{
  v1 = *a1;
  if (*(**a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v4 = llvm::hash_value(**(v1 + 16), *(*(v1 + 16) + 8));
    v5 = HIDWORD(*(v1 + 40));
    v6 = 0x9DDFEA08EB382D69 * ((8 * *(v1 + 40) - 0xAE502812AA7333) ^ v5);
    v7 = (0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47);
    v8 = HIDWORD(*(v1 + 8));
    v9 = 0x9DDFEA08EB382D69 * ((8 * *(v1 + 8) - 0xAE502812AA7333) ^ v8);
    v10 = 0x86D804B173C04367 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
    v11 = __ROR8__(0xB492B66FBE98F273 * v4 - 0x9DDFEA08EB382D69 * v7, 43) + 0x6C105E72878303FFLL * v7 + __ROR8__(v10 ^ 0xFF51AFD7ED558CCDLL, 30);
    v2 = 0xFF51AFD7ED558CCDLL - 0x4B6D499041670D8DLL * v4 + __ROR8__((0x9DDFEA08EB382D69 * v7) ^ 0xC949D7C7509E6557, 20) - v10 + 24;
    v3 = v11 ^ v2;
  }

  else
  {
    v2 = HIDWORD(v1);
    v3 = (8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1);
  }

  v12 = 0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * v3) >> 47) ^ (0x9DDFEA08EB382D69 * v3));
  v13 = v12 ^ (v12 >> 47);
  v14 = ((0x9DDFEA08EB382D69 * v13) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (((0x759C16B48 * v13) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
}

uint64_t mlir::mps::ConstantOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    v4 = a1;
    v5 = operator new(8uLL);
    *v5 = 0;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v16;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v16;
    {
      mlir::mps::ConstantOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::mps::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v2 = a2[32];
    a1 = v4;
  }

  v15 = 0;
  if (((*(*a1 + 48))(a1, &v15) & 1) == 0)
  {
    return 0;
  }

  v6 = v15;
  if (v15)
  {
    v7 = *(*v15 + 136);
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    if (v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v9 = v15;
    }

    else
    {
      v9 = 0;
    }

    v16 = v9;
    if (v8)
    {
      v10 = v15[2];
      Context = mlir::Attribute::getContext(&v16);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v12);
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++*(v10 + 88);
      llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
    }
  }

  *v2 = v6;
  return 1;
}

void mlir::mps::ConstantOp::build(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17[0] = a3;
  v17[1] = a4;
  if (a3 && ((v6 = *(*a3 + 136), v7 = v6 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, v6 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id) ? (v8 = 0) : (v8 = a3), v18 = v8, v7))
  {
    v11 = a3[2];
    Context = mlir::Attribute::getContext(&v18);
    Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v13);
    llvm::sys::RWMutexImpl::lock((Manager + 48));
    ++*(v11 + 88);
    llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
    v9 = *(a2 + 256);
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = *(a2 + 256);
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v10 = operator new(8uLL);
  *v10 = 0;
  *(a2 + 256) = v10;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::ConstantProperty & mlir::OperationState::getOrAddProperties<mlir::mps::ConstantProperty>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v18;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::ConstantProperty & mlir::OperationState::getOrAddProperties<mlir::mps::ConstantProperty>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v18;
  {
    mlir::mps::ConstantOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::ConstantProperty,void>::resolveTypeID(void)::id;
  v9 = *(a2 + 256);
LABEL_11:
  *v9 = a3;
  Type = mlir::ElementsAttr::getType(v17);
  {
    mlir::arith::ExtUIOp::fold();
    v16 = *(a2 + 72);
    if (v16 < *(a2 + 76))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v16 = *(a2 + 72);
  if (v16 >= *(a2 + 76))
  {
LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16 + 1, 8);
    LODWORD(v16) = *(a2 + 72);
  }

LABEL_15:
  *(*(a2 + 64) + 8 * v16) = Type;
  ++*(a2 + 72);
}

void mlir::mps::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4 || ((v7 = *(*a4 + 136), v8 = v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, v7 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id) ? (v9 = 0) : (v9 = a4), v17 = v9, !v8))
  {
    v10 = *(a2 + 256);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    v16 = operator new(8uLL);
    *v16 = 0;
    *(a2 + 256) = v16;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::ConstantProperty & mlir::OperationState::getOrAddProperties<mlir::mps::ConstantProperty>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v19;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::ConstantProperty & mlir::OperationState::getOrAddProperties<mlir::mps::ConstantProperty>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v18;
    {
      mlir::mps::ConstantOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::ConstantProperty,void>::resolveTypeID(void)::id;
    **(a2 + 256) = a4;
    v11 = *(a2 + 72);
    if (v11 >= *(a2 + 76))
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v12 = a4[2];
  Context = mlir::Attribute::getContext(&v17);
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v14);
  llvm::sys::RWMutexImpl::lock((Manager + 48));
  ++*(v12 + 88);
  llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
  v10 = *(a2 + 256);
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  *v10 = a4;
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
LABEL_8:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

LABEL_9:
  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
}

void mlir::mps::ConstantOp::build(uint64_t **this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  v11 = a3;
  IntegerType = mlir::Builder::getIntegerType(this, 32, 1);
  v9 = mlir::RankedTensorType::get(0, 0, IntegerType, 0);
  v5 = mlir::TensorType::operator mlir::ShapedType(&v9);
  v10 = mlir::DenseElementsAttr::getFromRawBuffer(v5, v6, &v11, 4, 4, 1, 1);
  v7 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v10);
  mlir::mps::ConstantOp::build(v7, a2, v7, v8);
}

void mlir::mps::ConstantOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 1);
  v12 = mlir::RankedTensorType::get(v14, 1, IntegerType, 0);
  v8 = mlir::TensorType::operator mlir::ShapedType(&v12);
  v13 = mlir::DenseElementsAttr::getFromRawBuffer(v8, v9, a3, 4 * a4, 4, 1, 1);
  v10 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v13);
  mlir::mps::ConstantOp::build(v10, a2, v10, v11);
}

{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 1);
  v12 = mlir::RankedTensorType::get(v14, 1, IntegerType, 0);
  v8 = mlir::TensorType::operator mlir::ShapedType(&v12);
  v13 = mlir::DenseElementsAttr::getFromRawBuffer(v8, v9, a3, 8 * a4, 8, 1, 1);
  v10 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v13);
  mlir::mps::ConstantOp::build(v10, a2, v10, v11);
}

void mlir::mps::ConstantOp::build(mlir::Float32Type **this, mlir::OpBuilder *a2, mlir::OperationState *a3, float a4)
{
  v12 = a4;
  F32Type = mlir::Builder::getF32Type(this, a2);
  v10 = mlir::RankedTensorType::get(0, 0, F32Type, 0);
  v6 = mlir::TensorType::operator mlir::ShapedType(&v10);
  v11 = mlir::DenseElementsAttr::getFromRawBuffer(v6, v7, &v12, 4, 4, 0, 1);
  v8 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v11);
  mlir::mps::ConstantOp::build(v8, a2, v8, v9);
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps13(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v98 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_52;
  }

  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v7 + 8);
    v12 = *(v7 + 16);
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v75 = a1;
    v19 = a4;
    v20 = a3;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a3 = v20;
    a4 = v19;
    a1 = v75;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v7 + 8);
    v12 = *(v7 + 16);
    if (!v12)
    {
      goto LABEL_18;
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
    v21 = a3;
    v22 = a4;
    v23 = a1;
    v24 = v13[1];
    goto LABEL_20;
  }

LABEL_18:
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = 0;
LABEL_20:
  v87[0] = a2;
  v87[1] = v24;
  isSplat = mlir::ElementsAttr::isSplat(v87);
  if (mlir::Type::isSignlessInteger(&isSplat, 1))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&isSplat, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&isSplat, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&isSplat, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&isSplat, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    return 1;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    return 1;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    return 1;
  }

  if (mlir::Type::isBF16(&isSplat))
  {
    return 1;
  }

  v25 = *(*isSplat + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  if (v25 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v82 = isSplat;
    Value = mlir::AffineMapAttr::getValue(&v82);
    if (mlir::Type::isF16(&Value))
    {
      return 1;
    }

    v80 = isSplat;
    v81 = mlir::AffineMapAttr::getValue(&v80);
    if (mlir::Type::isF32(&v81))
    {
      return 1;
    }
  }

  if (mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 3) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 6) || mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    return 1;
  }

  v8 = *(*a2 + 136);
  a1 = v23;
  a4 = v22;
  v7 = *a2;
  a3 = v21;
LABEL_52:
  if (v8 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    {
      v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v54 = *(v7 + 8);
      v55 = *(v7 + 16);
      if (!v55)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v76 = a1;
      v62 = a4;
      v63 = a3;
      mlir::arith::ExtUIOp::fold();
      a3 = v63;
      a4 = v62;
      a1 = v76;
      v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v54 = *(v7 + 8);
      v55 = *(v7 + 16);
      if (!v55)
      {
        goto LABEL_109;
      }
    }

    v56 = v54;
    v57 = v55;
    do
    {
      v58 = v57 >> 1;
      v59 = &v56[2 * (v57 >> 1)];
      v61 = *v59;
      v60 = v59 + 2;
      v57 += ~(v57 >> 1);
      if (v61 < v53)
      {
        v56 = v60;
      }

      else
      {
        v57 = v58;
      }
    }

    while (v57);
    if (v56 != &v54[2 * v55] && *v56 == v53)
    {
      v64 = a3;
      v65 = a4;
      v66 = a1;
      v67 = v56[1];
LABEL_111:
      v77 = a2;
      v78 = v67;
      isSplat = mlir::ElementsAttr::isSplat(&v77);
      if (!mlir::Type::isSignlessInteger(&isSplat, 1) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 64) && !mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat))
      {
        v68 = *(*isSplat + 136);
        if (v68 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          if (v68 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || (v82 = isSplat, Value = mlir::AffineMapAttr::getValue(&v82), !mlir::Type::isF16(&Value)) && (v80 = isSplat, v81 = mlir::AffineMapAttr::getValue(&v80), !mlir::Type::isF32(&v81)))
          {
            if (!mlir::Type::isSignedInteger(&isSplat, 2) && !mlir::Type::isSignedInteger(&isSplat, 4) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 1) && !mlir::Type::isUnsignedInteger(&isSplat, 2) && !mlir::Type::isUnsignedInteger(&isSplat, 4) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id && !mlir::Type::isUnsignedInteger(&isSplat, 2) && !mlir::Type::isUnsignedInteger(&isSplat, 3) && !mlir::Type::isUnsignedInteger(&isSplat, 4) && !mlir::Type::isUnsignedInteger(&isSplat, 6))
            {
              isUnsignedInteger = mlir::Type::isUnsignedInteger(&isSplat, 8);
              a1 = v66;
              a4 = v65;
              a3 = v64;
              if (!isUnsignedInteger)
              {
                goto LABEL_53;
              }
            }
          }
        }
      }

      return 1;
    }

LABEL_109:
    v64 = a3;
    v65 = a4;
    v66 = a1;
    v67 = 0;
    goto LABEL_111;
  }

LABEL_53:
  v79 = 261;
  v77 = a3;
  v78 = a4;
  mlir::Operation::emitOpError(a1, &v77, v87);
  if (v87[0])
  {
    LODWORD(isSplat) = 3;
    v85 = " #";
    v86 = 2;
    p_isSplat = &isSplat;
    v27 = v88;
    if (v89 >= v90)
    {
      if (v88 <= &isSplat && v88 + 24 * v89 > &isSplat)
      {
        v71 = &isSplat - v88;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
        v27 = v88;
        p_isSplat = (v88 + v71);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
        p_isSplat = &isSplat;
        v27 = v88;
      }
    }

    v28 = &v27[24 * v89];
    v29 = *p_isSplat;
    *(v28 + 2) = p_isSplat[2];
    *v28 = v29;
    v30 = ++v89;
    if (v87[0])
    {
      LODWORD(isSplat) = 5;
      v85 = a5;
      v31 = &isSplat;
      v32 = v88;
      if (v30 >= v90)
      {
        if (v88 <= &isSplat && v88 + 24 * v30 > &isSplat)
        {
          v72 = &isSplat - v88;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v30 + 1, 24);
          v32 = v88;
          v31 = (v88 + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v30 + 1, 24);
          v31 = &isSplat;
          v32 = v88;
        }
      }

      v33 = &v32[24 * v89];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      v35 = ++v89;
      if (v87[0])
      {
        LODWORD(isSplat) = 3;
        v85 = " must be tensor of mps native type or complex or quantized or palette LUT index values or memref of mps native type or complex or quantized or palette LUT index values, but got ";
        v86 = 177;
        v36 = &isSplat;
        v37 = v88;
        if (v35 >= v90)
        {
          if (v88 <= &isSplat && v88 + 24 * v35 > &isSplat)
          {
            v73 = &isSplat - v88;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v35 + 1, 24);
            v37 = v88;
            v36 = (v88 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v35 + 1, 24);
            v36 = &isSplat;
            v37 = v88;
          }
        }

        v38 = &v37[24 * v89];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v89;
        if (v87[0])
        {
          v40 = &isSplat;
          mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, a2);
          v41 = v88;
          if (v89 >= v90)
          {
            if (v88 <= &isSplat && v88 + 24 * v89 > &isSplat)
            {
              v74 = &isSplat - v88;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
              v41 = v88;
              v40 = (v88 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
              v40 = &isSplat;
              v41 = v88;
            }
          }

          v42 = &v41[24 * v89];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v89;
        }
      }
    }
  }

  v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
  if (v87[0])
  {
    mlir::InFlightDiagnostic::report(v87);
  }

  if (v97 == 1)
  {
    if (v96 != &v97)
    {
      free(v96);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v95;
      v47 = __p;
      if (v95 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v95 = v45;
      operator delete(v47);
    }

    v48 = v92;
    if (v92)
    {
      v49 = v93;
      v50 = v92;
      if (v93 != v92)
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
        v50 = v92;
      }

      v93 = v48;
      operator delete(v50);
    }

    if (v88 != v91)
    {
      free(v88);
    }
  }

  return v44;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ConstantOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.constant", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B26520;
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

uint64_t mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  *(a1 + 72) = *(v3 + 48);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 80), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 80), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::Conv2DDataGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v92 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v76 = v6;
  if (!v6)
  {
    a3(&v80, a4);
    if (v80)
    {
      LODWORD(v77) = 3;
      v78 = "expected DictionaryAttr to set properties";
      v79 = 41;
      v26 = &v77;
      v27 = v82;
      if (v83 >= v84)
      {
        if (v82 <= &v77 && v82 + 24 * v83 > &v77)
        {
          v69 = &v77 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
          v27 = v82;
          v26 = (v82 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
          v26 = &v77;
          v27 = v82;
        }
      }

      v28 = &v27[24 * v83];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v83;
      if (v80)
      {
        mlir::InFlightDiagnostic::report(&v80);
      }
    }

    if (v91 != 1)
    {
      return 0;
    }

    if (v90 != &v91)
    {
      free(v90);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v89;
      v32 = __p;
      if (v89 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v89 = v30;
      operator delete(v32);
    }

    v21 = v86;
    if (!v86)
    {
      goto LABEL_77;
    }

    v33 = v87;
    v23 = v86;
    if (v87 == v86)
    {
LABEL_76:
      v87 = v21;
      operator delete(v23);
LABEL_77:
      if (v82 != v85)
      {
        free(v82);
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
    goto LABEL_75;
  }

  v93.var0 = "data_layout";
  v93.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v76, v93);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v80, a4);
      if (v80)
      {
        LODWORD(v77) = 3;
        v79 = 56;
        v10 = &v77;
        v11 = v82;
        if (v83 >= v84)
        {
          if (v82 <= &v77 && v82 + 24 * v83 > &v77)
          {
            v70 = &v77 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v11 = v82;
            v10 = (v82 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v10 = &v77;
            v11 = v82;
          }
        }

        v12 = &v11[24 * v83];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v83;
        if (v80)
        {
          v14 = &v77;
          mlir::DiagnosticArgument::DiagnosticArgument(&v77, v9);
          v15 = v82;
          if (v83 >= v84)
          {
            if (v82 <= &v77 && v82 + 24 * v83 > &v77)
            {
              v71 = &v77 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v15 = v82;
              v14 = (v82 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v14 = &v77;
              v15 = v82;
            }
          }

          v16 = &v15[24 * v83];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v83;
          if (v80)
          {
            mlir::InFlightDiagnostic::report(&v80);
          }
        }
      }

      if ((v91 & 1) == 0)
      {
        return 0;
      }

      if (v90 != &v91)
      {
        free(v90);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v89;
        v20 = __p;
        if (v89 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v89 = v18;
        operator delete(v20);
      }

      v21 = v86;
      if (!v86)
      {
        goto LABEL_77;
      }

      v22 = v87;
      v23 = v86;
      if (v87 == v86)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v94.var0 = "dilation_rates";
  v94.var1 = 14;
  v36 = mlir::DictionaryAttr::get(&v76, v94);
  if (v36)
  {
    v37 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v80, a4);
    if (v80)
    {
      LODWORD(v77) = 3;
      v79 = 59;
      v42 = &v77;
      v43 = v82;
      if (v83 >= v84)
      {
        if (v82 <= &v77 && v82 + 24 * v83 > &v77)
        {
          v72 = &v77 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
          v43 = v82;
          v42 = (v82 + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
          v42 = &v77;
          v43 = v82;
        }
      }

      v44 = &v43[24 * v83];
      v45 = *v42;
      *(v44 + 2) = v42[2];
      *v44 = v45;
      ++v83;
      if (v80)
      {
        v46 = &v77;
        mlir::DiagnosticArgument::DiagnosticArgument(&v77, v37);
        v47 = v82;
        if (v83 >= v84)
        {
          if (v82 <= &v77 && v82 + 24 * v83 > &v77)
          {
            v74 = &v77 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v47 = v82;
            v46 = (v82 + v74);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v46 = &v77;
            v47 = v82;
          }
        }

        v48 = &v47[24 * v83];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
        ++v83;
        if (v80)
        {
          mlir::InFlightDiagnostic::report(&v80);
        }
      }
    }

    if ((v91 & 1) == 0)
    {
      return 0;
    }

    if (v90 != &v91)
    {
      free(v90);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v89;
      v52 = __p;
      if (v89 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v89 = v50;
      operator delete(v52);
    }

    v21 = v86;
    if (!v86)
    {
      goto LABEL_77;
    }

    v53 = v87;
    v23 = v86;
    if (v87 == v86)
    {
      goto LABEL_76;
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

    while (v53 != v21);
LABEL_75:
    v23 = v86;
    goto LABEL_76;
  }

LABEL_49:
  v95.var0 = "explicit_padding";
  v95.var1 = 16;
  v38 = mlir::DictionaryAttr::get(&v76, v95);
  if (v38)
  {
    v39 = v38;
    if (!mlir::DenseIntElementsAttr::classof(v38))
    {
      a3(&v80, a4);
      if (v80)
      {
        LODWORD(v77) = 3;
        v79 = 61;
        v56 = &v77;
        v57 = v82;
        if (v83 >= v84)
        {
          if (v82 <= &v77 && v82 + 24 * v83 > &v77)
          {
            v73 = &v77 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v57 = v82;
            v56 = (v82 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v56 = &v77;
            v57 = v82;
          }
        }

        v58 = &v57[24 * v83];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v83;
        if (v80)
        {
          v60 = &v77;
          mlir::DiagnosticArgument::DiagnosticArgument(&v77, v39);
          v61 = v82;
          if (v83 >= v84)
          {
            if (v82 <= &v77 && v82 + 24 * v83 > &v77)
            {
              v75 = &v77 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v61 = v82;
              v60 = (v82 + v75);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v60 = &v77;
              v61 = v82;
            }
          }

          v62 = &v61[24 * v83];
          v63 = *v60;
          *(v62 + 2) = v60[2];
          *v62 = v63;
          ++v83;
          if (v80)
          {
            mlir::InFlightDiagnostic::report(&v80);
          }
        }
      }

      if (v91 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v81);
      }

      return 0;
    }

    a1[2] = v39;
  }

  v96.var0 = "groups";
  v96.var1 = 6;
  v40 = mlir::DictionaryAttr::get(&v76, v96);
  v77 = v40;
  if (!v40)
  {
LABEL_88:
    v97.var0 = "padding_style";
    v97.var1 = 13;
    v64 = mlir::DictionaryAttr::get(&v76, v97);
    v77 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v80, a4);
        goto LABEL_99;
      }

      a1[4] = v64;
    }

    v98.var0 = "strides";
    v98.var1 = 7;
    v65 = mlir::DictionaryAttr::get(&v76, v98);
    v77 = v65;
    if (v65)
    {
      v66 = v65;
      if (!mlir::DenseIntElementsAttr::classof(v65))
      {
        a3(&v80, a4);
        goto LABEL_99;
      }

      a1[5] = v66;
    }

    v99.var0 = "weights_layout";
    v99.var1 = 14;
    v67 = mlir::DictionaryAttr::get(&v76, v99);
    v77 = v67;
    if (v67)
    {
      if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        a3(&v80, a4);
        goto LABEL_99;
      }

      a1[6] = v67;
    }

    return 1;
  }

  if (*(*v40 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[3] = v40;
    goto LABEL_88;
  }

  a3(&v80, a4);
LABEL_99:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v41, &v77);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v80);
  return 0;
}

uint64_t mlir::mps::Conv2DDataGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v58[6] = *MEMORY[0x1E69E9840];
  v55 = a1;
  v56 = v58;
  v57 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v55, "data_layout", 11, *a2);
  v5 = v57;
  if (v57 >= HIDWORD(v57))
  {
    v41 = NamedAttr;
    v42 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
    v4 = v42;
    NamedAttr = v41;
    v5 = v57;
  }

  v6 = (v56 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v57 + 1;
  LODWORD(v57) = v57 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v55, "dilation_rates", 14, v8);
    v11 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v43 = v9;
      v44 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v10 = v44;
      v9 = v43;
      v11 = v57;
    }

    v12 = (v56 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v55, "explicit_padding", 16, v13);
    v16 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v45 = v14;
      v46 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v15 = v46;
      v14 = v45;
      v16 = v57;
    }

    v17 = (v56 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v55, "groups", 6, v18);
    v21 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v47 = v19;
      v48 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v20 = v48;
      v19 = v47;
      v21 = v57;
    }

    v22 = (v56 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v55, "padding_style", 13, v23);
    v26 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v49 = v24;
      v50 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v25 = v50;
      v24 = v49;
      v26 = v57;
    }

    v27 = (v56 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v55, "strides", 7, v28);
    v31 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v51 = v29;
      v52 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v30 = v52;
      v29 = v51;
      v31 = v57;
    }

    v32 = (v56 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v55, "weights_layout", 14, v33);
    v36 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v53 = v34;
      v54 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v35 = v54;
      v34 = v53;
      v36 = v57;
    }

    v37 = (v56 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v38 = v56;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v56 == v58)
    {
      return DictionaryAttr;
    }

    goto LABEL_32;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v55, v56, v7);
  v38 = v56;
  if (v56 != v58)
  {
LABEL_32:
    free(v38);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::Conv2DDataGradientOp::computePropertiesHash(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v11 = a1[5];
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v14 = HIDWORD(v11);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v16 = HIDWORD(a1[6]);
  v17 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v16);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  memset(v26, 0, sizeof(v26));
  v27 = 0xFF51AFD7ED558CCDLL;
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v25, 0, v26, &v26[3] + 8, &v24, &v23, &v22, &v21, &v20, &v19);
}

uint64_t mlir::mps::Conv2DDataGradientOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 12)
  {
    if (__n == 13)
    {
      if (!memcmp(__s1, "padding_style", 0xDuLL))
      {
        return a2[4];
      }
    }

    else if (__n == 14)
    {
      if (!memcmp(__s1, "dilation_rates", 0xEuLL))
      {
        return a2[1];
      }

      if (!memcmp(__s1, "weights_layout", 0xEuLL))
      {
        return a2[6];
      }
    }

    else if (__n == 16 && !memcmp(__s1, "explicit_padding", 0x10uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 6)
  {
    if (!memcmp(__s1, "groups", 6uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 7)
  {
    if (!memcmp(__s1, "strides", 7uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 11)
  {
    return 0;
  }

  if (*__s1 != 0x79616C5F61746164 || *(__s1 + 3) != 0x74756F79616C5F61)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::Conv2DDataGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 12)
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

        break;
      case 14:
        result = memcmp(__s1, "dilation_rates", 0xEuLL);
        if (result)
        {
          result = memcmp(__s1, "weights_layout", 0xEuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
              {
                v12 = a4;
              }

              else
              {
                v12 = 0;
              }

              v5[6] = v12;
            }

            else
            {
              v5[6] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }

          v5[1] = v14;
        }

        else
        {
          v5[1] = 0;
        }

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
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

        break;
    }
  }

  else if (a3 == 6)
  {
    result = memcmp(__s1, "groups", 6uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  else if (a3 == 7)
  {
    result = memcmp(__s1, "strides", 7uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
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

  else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      *result = v13;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::Conv2DDataGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "data_layout", 11, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 14, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 16, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "groups", 6, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 13, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "strides", 7, v9);
  }

  v10 = a2[6];
  if (v10)
  {

    mlir::NamedAttrList::append(a3, "weights_layout", 14, v10);
  }
}

BOOL mlir::mps::Conv2DDataGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v8, "data_layout", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 0xE, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v10, "explicit_padding", 0x10, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(v11, "groups", 6, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v12, "padding_style", 0xD, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v13, "strides", 7, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v14, "weights_layout", 0xE, a3, a4) & 1) != 0)
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid TensorDataLayout";
        v29 = 54;
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(void *a1, void *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = *a1;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v57 = v10;
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v57 + 8);
      v13 = *(v57 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

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
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v21 = v14[1];
      v62 = a1;
      v63 = v21;
      Type = mlir::ElementsAttr::getType(&v62);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v62 = a1;
    v63 = 0;
    Type = mlir::ElementsAttr::getType(&v62);
    if (!Type)
    {
      goto LABEL_30;
    }

LABEL_18:
    v22 = *Type;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v56 = v22;
      v58 = Type;
      mlir::arith::ExtUIOp::fold();
      Type = v58;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v56 + 8);
      v25 = *(v56 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
    if (v26 != &v24[2 * v25] && *v26 == v23)
    {
      v32 = v26[1];
      goto LABEL_31;
    }

LABEL_30:
    v32 = 0;
LABEL_31:
    v66 = Type;
    v67 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v66);
    v78 = 4;
    if (v34 == 1 && *ArgAttrsAttr == v78)
    {
      v59 = a1;
      v60[0] = mlir::ArrayAttr::getValue(&v59);
      v60[1] = v35;
      isSplat = mlir::ElementsAttr::isSplat(v60);
      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
        return 1;
      }
    }
  }

  a4(&v66, a5);
  if (v66)
  {
    LODWORD(v62) = 3;
    v63 = "attribute '";
    v64 = 11;
    v37 = &v62;
    v38 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v62 && v68 + 24 * v69 > &v62)
      {
        v54 = &v62 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v38 = v68;
        v37 = v68 + v54;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v37 = &v62;
        v38 = v68;
      }
    }

    v39 = &v38[24 * v69];
    v40 = *v37;
    *(v39 + 2) = *(v37 + 2);
    *v39 = v40;
    ++v69;
    if (v66)
    {
      v65 = 261;
      v62 = a2;
      v63 = a3;
      mlir::Diagnostic::operator<<(&v67, &v62);
      if (v66)
      {
        LODWORD(v62) = 3;
        v63 = "' failed to satisfy constraint: ui64 elements attribute of shape {4}";
        v64 = 68;
        v41 = &v62;
        v42 = v68;
        if (v69 >= v70)
        {
          if (v68 <= &v62 && v68 + 24 * v69 > &v62)
          {
            v55 = &v62 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v42 = v68;
            v41 = v68 + v55;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v41 = &v62;
            v42 = v68;
          }
        }

        v43 = &v42[24 * v69];
        v44 = *v41;
        *(v43 + 2) = *(v41 + 2);
        *v43 = v44;
        ++v69;
      }
    }
  }

  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v75;
      v47 = __p;
      if (v75 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v75 = v45;
      operator delete(v47);
    }

    v48 = v72;
    if (v72)
    {
      v49 = v73;
      v50 = v72;
      if (v73 != v72)
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
        v50 = v72;
      }

      v73 = v48;
      operator delete(v50);
    }

    if (v68 != v71)
    {
      free(v68);
    }
  }

  return v36;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(void *a1, void *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
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
    isUnsignedInteger = mlir::Type::isUnsignedInteger(&Value, 64);
    a5 = v8;
    a4 = v7;
    if (isUnsignedInteger)
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
        v31 = "' failed to satisfy constraint: 64-bit unsigned integer attribute";
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid padding_style";
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

uint64_t mlir::mps::Conv2DDataGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x38uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *(v5 + 6) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::Conv2DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3) & 1) == 0)
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 3) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 6) & 1;
  }

  return 0;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PaddingStyleAttr]";
  v38 = 77;
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

void mlir::mps::Conv2DDataGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unsigned int a15, unsigned int a16, unsigned int a17)
{
  v57 = *MEMORY[0x1E69E9840];
  v54 = v56;
  v56[0] = xmmword_1E098C990;
  v56[1] = unk_1E098C9A0;
  v55 = 0x400000004;
  v51 = v53;
  v53[0] = xmmword_1E098C990;
  v53[1] = unk_1E098C9A0;
  v52 = 0x400000004;
  v48 = v50;
  memset(v50, 0, sizeof(v50));
  v49 = 0x800000008;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  mlir::mps::buildConv2DDescriptor(a3, a4, a6, a7, a8, a9, a10, a11, v35, a12, a13, a14, a15, a16, a17, v56, v53, v50, 0);
  v45 = &v47;
  v47 = xmmword_1E097BBD0;
  v46 = 0x200000002;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v34 = mlir::RankedTensorType::get(&v47, 2, IntegerType, 0);
  v44[0] = 4;
  v42 = v44;
  v43 = 0x200000001;
  v19 = mlir::Builder::getIntegerType(a1, 64, 0);
  v33 = mlir::RankedTensorType::get(v44, 1, v19, 0);
  v20 = mlir::TensorType::operator mlir::ShapedType(&v33);
  v22 = mlir::DenseElementsAttr::getFromRawBuffer(v20, v21, v54, 8 * v55, 8, 1, 0);
  v23 = mlir::TensorType::operator mlir::ShapedType(&v33);
  v25 = mlir::DenseElementsAttr::getFromRawBuffer(v23, v24, v51, 8 * v52, 8, 1, 0);
  v26 = mlir::TensorType::operator mlir::ShapedType(&v34);
  v28 = mlir::DenseElementsAttr::getFromRawBuffer(v26, v27, v48, 8 * v49, 8, 1, 0);
  mlir::mps::Conv2DDataGradientOp::build(a1, a2, a3, a4, a5, v36, v22, v25, v28, a15, a16, a17);
  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != &v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  if (v54 != v56)
  {
    free(v54);
  }
}

void mlir::mps::Conv2DDataGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  v75 = *MEMORY[0x1E69E9840];
  v64 = a4;
  v65 = a3;
  v63 = a5;
  mlir::OperationState::addOperands(a2, &v65, 1uLL);
  mlir::OperationState::addOperands(a2, &v64, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v63, 1uLL);
  }

  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a6);
  v20 = IntegerAttr;
  v21 = *(a2 + 256);
  if (v21)
  {
    *(v21 + 24) = IntegerAttr;
    v22 = *(a2 + 256);
    if (v22)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v28 = operator new(0x38uLL);
    *v28 = 0u;
    v28[1] = 0u;
    v28[2] = 0u;
    *(v28 + 6) = 0;
    *(a2 + 256) = v28;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 24) = v20;
    v22 = *(a2 + 256);
    if (v22)
    {
LABEL_5:
      v23 = a10;
      *(v22 + 40) = a7;
      v24 = *(a2 + 256);
      if (v24)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  v29 = operator new(0x38uLL);
  *v29 = 0u;
  v29[1] = 0u;
  v29[2] = 0u;
  *(v29 + 6) = 0;
  *(a2 + 256) = v29;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv2DDataGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v23 = a10;
  *(*(a2 + 256) + 40) = a7;
  v24 = *(a2 + 256);
  if (v24)
  {
LABEL_6:
    v25 = a11;
    v26 = a9;
    *(v24 + 8) = a8;
    v27 = *(a2 + 256);
    if (v27)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_14:
  v30 = operator new(0x38uLL);
  *v30 = 0u;
  v30[1] = 0u;
  v30[2] = 0u;
  *(v30 + 6) = 0;
  *(a2 + 256) = v30;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv2DDataGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v25 = a11;
  v26 = a9;
  *(*(a2 + 256) + 8) = a8;
  v27 = *(a2 + 256);
  if (!v27)
  {
LABEL_17:
    v31 = operator new(0x38uLL);
    *v31 = 0u;
    v31[1] = 0u;
    v31[2] = 0u;
    *(v31 + 6) = 0;
    *(a2 + 256) = v31;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v27 = *(a2 + 256);
  }

LABEL_20:
  *(v27 + 16) = v26;
  v32 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v71 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v72 = v32;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v69 = &v71;
  v67 = v23;
  v34 = 0x9DDFEA08EB382D69 * (((8 * v23) | 4) ^ v23 ^ 0xFF51AFD7ED558CCDLL);
  v35 = 0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ (v34 >> 47) ^ v34);
  v66 = &v67;
  v73 = &v67;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v35 >> 47) ^ v35), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v66, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v73);
  v37 = *(a2 + 256);
  if (!v37)
  {
    v38 = operator new(0x38uLL);
    *v38 = 0u;
    v38[1] = 0u;
    v38[2] = 0u;
    *(v38 + 6) = 0;
    *(a2 + 256) = v38;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v37 = *(a2 + 256);
  }

  *(v37 + 32) = ParametricStorageTypeImpl;
  v39 = *a1;
  v40 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v71 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v72 = v39;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v69 = &v71;
  v67 = v25;
  v41 = 0x9DDFEA08EB382D69 * (((8 * v25) | 4) ^ v25 ^ 0xFF51AFD7ED558CCDLL);
  v42 = 0x9DDFEA08EB382D69 * (v25 ^ 0xFF51AFD7ED558CCDLL ^ (v41 >> 47) ^ v41);
  v66 = &v67;
  v73 = &v67;
  p_src = &__src;
  v43 = mlir::StorageUniquer::getParametricStorageTypeImpl(v40, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v42 >> 47) ^ v42), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v66, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v73);
  v44 = *(a2 + 256);
  if (!v44)
  {
    v45 = operator new(0x38uLL);
    *v45 = 0u;
    v45[1] = 0u;
    v45[2] = 0u;
    *(v45 + 6) = 0;
    *(a2 + 256) = v45;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v44 = *(a2 + 256);
  }

  *v44 = v43;
  v46 = *a1;
  v47 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v71 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v72 = v46;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v69 = &v71;
  v67 = a12;
  v48 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v49 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v48 >> 47) ^ v48);
  v66 = &v67;
  v73 = &v67;
  p_src = &__src;
  v50 = mlir::StorageUniquer::getParametricStorageTypeImpl(v47, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v49 >> 47) ^ v49), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v66, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v73);
  v51 = *(a2 + 256);
  if (!v51)
  {
    v52 = operator new(0x38uLL);
    *v52 = 0u;
    v52[1] = 0u;
    v52[2] = 0u;
    *(v52 + 6) = 0;
    *(a2 + 256) = v52;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v51 = *(a2 + 256);
  }

  *(v51 + 48) = v50;
  __src = v70;
  v69 = 0x200000000;
  v53 = *a1;
  v54 = *a2;
  mlir::ValueRange::ValueRange(&v73, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v57 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v71, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::Conv2DDataGradientOp::inferReturnTypes(v53, v54, 1, v73, p_src, Dictionary, v57, v58, v71, v72, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v59 = __src;
  v60 = v69;
  v61 = *(a2 + 72);
  v62 = v61 + v69;
  if (v62 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v62, 8);
    LODWORD(v61) = *(a2 + 72);
  }

  if (v60)
  {
    memcpy((*(a2 + 64) + 8 * v61), v59, 8 * v60);
    LODWORD(v61) = *(a2 + 72);
  }

  *(a2 + 72) = v61 + v60;
  if (__src != v70)
  {
    free(__src);
  }
}

BOOL mlir::mps::Conv2DDataGradientOp::verifyInvariantsImpl(mlir::mps::Conv2DDataGradientOp *this)
{
  v84 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (!v4)
  {
    v72[0] = "requires attribute 'data_layout'";
    v73 = 259;
    mlir::OpState::emitOpError(this, v72, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 != 1)
    {
      return v14;
    }

    if (v82 != &v83)
    {
      free(v82);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v81;
      v17 = __p;
      if (v81 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v81 = v15;
      operator delete(v17);
    }

    v18 = v78;
    if (v78)
    {
      v19 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_81;
      }

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
LABEL_80:
      v20 = v78;
LABEL_81:
      v79 = v18;
      operator delete(v20);
    }

LABEL_82:
    if (v76 != &v77)
    {
      free(v76);
    }

    return v14;
  }

  v5 = v2[1];
  if (!v5)
  {
    v72[0] = "requires attribute 'dilation_rates'";
    v73 = 259;
    mlir::OpState::emitOpError(this, v72, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 != 1)
    {
      return v14;
    }

    if (v82 != &v83)
    {
      free(v82);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v81;
      v25 = __p;
      if (v81 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v81 = v23;
      operator delete(v25);
    }

    v18 = v78;
    if (v78)
    {
      v26 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_81;
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

      while (v26 != v18);
      goto LABEL_80;
    }

    goto LABEL_82;
  }

  v6 = v2[2];
  if (!v6)
  {
    v72[0] = "requires attribute 'explicit_padding'";
    v73 = 259;
    mlir::OpState::emitOpError(this, v72, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 != 1)
    {
      return v14;
    }

    if (v82 != &v83)
    {
      free(v82);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v81;
      v31 = __p;
      if (v81 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v81 = v29;
      operator delete(v31);
    }

    v18 = v78;
    if (v78)
    {
      v32 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_81;
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

      while (v32 != v18);
      goto LABEL_80;
    }

    goto LABEL_82;
  }

  v7 = v2[3];
  if (!v7)
  {
    v72[0] = "requires attribute 'groups'";
    v73 = 259;
    mlir::OpState::emitOpError(this, v72, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 != 1)
    {
      return v14;
    }

    if (v82 != &v83)
    {
      free(v82);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v81;
      v37 = __p;
      if (v81 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v81 = v35;
      operator delete(v37);
    }

    v18 = v78;
    if (v78)
    {
      v38 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_81;
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

      while (v38 != v18);
      goto LABEL_80;
    }

    goto LABEL_82;
  }

  v8 = v2[4];
  if (!v8)
  {
    v72[0] = "requires attribute 'padding_style'";
    v73 = 259;
    mlir::OpState::emitOpError(this, v72, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v75);
    }

    return v14;
  }

  v9 = v2[5];
  if (!v9)
  {
    v42 = "requires attribute 'strides'";
LABEL_91:
    v72[0] = v42;
    v73 = 259;
    mlir::OpState::emitOpError(this, v72, &v74);
    v43 = &v74;
LABEL_92:
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
    return v14;
  }

  v10 = v2[6];
  if (!v10)
  {
    v42 = "requires attribute 'weights_layout'";
    goto LABEL_91;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(v7, "groups", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v5, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v8, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v3, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v10, "weights_layout", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v71 = 0;
  ODSOperands = mlir::mps::Conv2DDataGradientOp::getODSOperands(this, 0, v12, v13);
  if (v45)
  {
    v48 = v45;
    v49 = 0;
    v50 = ODSOperands + 24;
    v51 = this;
    while (1)
    {
      v52 = *v51;
      v53 = *(*v50 + 8);
      v71 = v49 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v52, v53 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v49) & 1) == 0)
      {
        return 0;
      }

      ++v49;
      v50 += 32;
      v51 = this;
      if (v48 == v49)
      {
        goto LABEL_99;
      }
    }
  }

  LODWORD(v49) = 0;
LABEL_99:
  v54 = mlir::mps::Conv2DDataGradientOp::getODSOperands(this, 1u, v46, v47);
  if (v55)
  {
    v58 = v55;
    v59 = v54 + 24;
    while (1)
    {
      v60 = *this;
      v61 = *(*v59 + 8);
      v62 = v49 + 1;
      v71 = v49 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v60, v61 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v49) & 1) == 0)
      {
        return 0;
      }

      v59 += 32;
      LODWORD(v49) = v49 + 1;
      if (!--v58)
      {
        goto LABEL_105;
      }
    }
  }

  v62 = v49;
LABEL_105:
  v63 = mlir::mps::Conv2DDataGradientOp::getODSOperands(this, 2u, v56, v57);
  v65 = v64;
  if (v64 >= 2)
  {
    v72[0] = "operand group starting at #";
    v73 = 259;
    mlir::OpState::emitOpError(this, v72, &v74);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(&v74, &v71);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v66, " requires 0 or 1 element, but found ");
    v70 = v65;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v67, &v70);
    goto LABEL_92;
  }

  if (v64 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(v63 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v62) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v68 = *this - 16;
  }

  else
  {
    v68 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v68, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::Conv2DDataGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.conv_2d_data_gradient", 25, a3, v10, a4, a5);
  *v11 = &unk_1F5B265C0;
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

uint64_t mlir::mps::Conv2DOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x38uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *(v5 + 6) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::Conv2DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3) & 1) == 0)
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 3) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 6) & 1;
  }

  return 0;
}

void mlir::mps::Conv2DOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unsigned int a14, unsigned int a15, unsigned int a16)
{
  v50[4] = *MEMORY[0x1E69E9840];
  v48 = v50;
  memset_pattern16(v50, &unk_1E096FAE0, 0x20uLL);
  v49 = 0x400000004;
  v45 = v47;
  memset_pattern16(v47, &unk_1E096FAE0, 0x20uLL);
  v46 = 0x400000004;
  v42 = v44;
  memset(v44, 0, sizeof(v44));
  v43 = 0x800000008;
  mlir::mps::buildConv2DDescriptor(a3, a4, a5, a6, a7, a8, a9, a10, v40, a11, a12, a13, a14, a15, a16, v50, v47, v44, 0);
  v40[0] = v41;
  v41[0] = xmmword_1E097BBD0;
  v40[1] = 0x400000002;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v39[0] = 4;
  v36 = mlir::RankedTensorType::get(v41, 2, IntegerType, 0);
  v37 = v39;
  v38 = 0x400000001;
  v18 = mlir::Builder::getIntegerType(a1, 64, 0);
  v35 = mlir::RankedTensorType::get(v39, 1, v18, 0);
  v19 = mlir::TensorType::operator mlir::ShapedType(&v35);
  v21 = mlir::DenseElementsAttr::getFromRawBuffer(v19, v20, v48, 8 * v49, 8, 1, 0);
  v22 = mlir::TensorType::operator mlir::ShapedType(&v35);
  v24 = mlir::DenseElementsAttr::getFromRawBuffer(v22, v23, v45, 8 * v46, 8, 1, 0);
  v25 = mlir::TensorType::operator mlir::ShapedType(&v36);
  v27 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v26, v42, 8 * v43, 8, 1, 0);
  mlir::mps::Conv2DOp::build(a1, a2, a3, a4, a5, v21, v24, v27, a14, a15, a16);
  if (v37 != v39)
  {
    free(v37);
  }

  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }
}

void mlir::mps::Conv2DOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50[2] = *MEMORY[0x1E69E9840];
  v44 = a4;
  v45 = a3;
  mlir::OperationState::addOperands(a2, &v45, 1uLL);
  mlir::OperationState::addOperands(a2, &v44, 1uLL);
  v17 = *(a2 + 256);
  if (v17)
  {
    *(v17 + 24) = a5;
    v18 = *(a2 + 256);
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = operator new(0x38uLL);
    *v27 = 0u;
    v27[1] = 0u;
    v27[2] = 0u;
    *(v27 + 6) = 0;
    *(a2 + 256) = v27;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 24) = a5;
    v18 = *(a2 + 256);
    if (v18)
    {
LABEL_3:
      *(v18 + 40) = a6;
      v19 = *(a2 + 256);
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v28 = operator new(0x38uLL);
  *v28 = 0u;
  v28[1] = 0u;
  v28[2] = 0u;
  *(v28 + 6) = 0;
  *(a2 + 256) = v28;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv2DOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 40) = a6;
  v19 = *(a2 + 256);
  if (v19)
  {
LABEL_4:
    *(v19 + 8) = a7;
    v20 = *(a2 + 256);
    if (v20)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  v29 = operator new(0x38uLL);
  *v29 = 0u;
  v29[1] = 0u;
  v29[2] = 0u;
  *(v29 + 6) = 0;
  *(a2 + 256) = v29;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv2DOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 8) = a7;
  v20 = *(a2 + 256);
  if (v20)
  {
LABEL_5:
    v21 = a9;
    *(v20 + 16) = a8;
    v22 = *(a2 + 256);
    if (v22)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  v30 = operator new(0x38uLL);
  *v30 = 0u;
  v30[1] = 0u;
  v30[2] = 0u;
  *(v30 + 6) = 0;
  *(a2 + 256) = v30;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv2DOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v21 = a9;
  *(*(a2 + 256) + 16) = a8;
  v22 = *(a2 + 256);
  if (v22)
  {
LABEL_6:
    v23 = a10;
    *(v22 + 32) = v21;
    v24 = *(a2 + 256);
    if (v24)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  v31 = operator new(0x38uLL);
  *v31 = 0u;
  v31[1] = 0u;
  v31[2] = 0u;
  *(v31 + 6) = 0;
  *(a2 + 256) = v31;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv2DOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v23 = a10;
  *(*(a2 + 256) + 32) = v21;
  v24 = *(a2 + 256);
  if (v24)
  {
LABEL_7:
    v25 = a11;
    *v24 = v23;
    v26 = *(a2 + 256);
    if (v26)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

LABEL_24:
  v32 = operator new(0x38uLL);
  *v32 = 0u;
  v32[1] = 0u;
  v32[2] = 0u;
  *(v32 + 6) = 0;
  *(a2 + 256) = v32;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv2DOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v25 = a11;
  **(a2 + 256) = v23;
  v26 = *(a2 + 256);
  if (!v26)
  {
LABEL_27:
    v33 = operator new(0x38uLL);
    *v33 = 0u;
    v33[1] = 0u;
    v33[2] = 0u;
    *(v33 + 6) = 0;
    *(a2 + 256) = v33;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v26 = *(a2 + 256);
  }

LABEL_30:
  *(v26 + 48) = v25;
  __src = v50;
  v49 = 0x200000000;
  v34 = *a1;
  v35 = *a2;
  mlir::ValueRange::ValueRange(v47, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v38 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v46, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::Conv2DOp::inferReturnTypes(v34, v35, 1, v47[0], v47[1], Dictionary, v38, v39, v46[0], v46[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v40 = __src;
  v41 = v49;
  v42 = *(a2 + 72);
  v43 = v42 + v49;
  if (v43 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v43, 8);
    LODWORD(v42) = *(a2 + 72);
  }

  if (v41)
  {
    memcpy((*(a2 + 64) + 8 * v42), v40, 8 * v41);
    LODWORD(v42) = *(a2 + 72);
  }

  *(a2 + 72) = v42 + v41;
  if (__src != v50)
  {
    free(__src);
  }
}

void mlir::mps::Conv2DOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v72 = *MEMORY[0x1E69E9840];
  v61 = a4;
  v62 = a3;
  mlir::OperationState::addOperands(a2, &v62, 1uLL);
  mlir::OperationState::addOperands(a2, &v61, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a5);
  v19 = IntegerAttr;
  v20 = *(a2 + 256);
  if (v20)
  {
    *(v20 + 24) = IntegerAttr;
    v21 = *(a2 + 256);
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = operator new(0x38uLL);
    *v26 = 0u;
    v26[1] = 0u;
    v26[2] = 0u;
    *(v26 + 6) = 0;
    *(a2 + 256) = v26;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 24) = v19;
    v21 = *(a2 + 256);
    if (v21)
    {
LABEL_3:
      v22 = a9;
      *(v21 + 40) = a6;
      v23 = *(a2 + 256);
      if (v23)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v27 = operator new(0x38uLL);
  *v27 = 0u;
  v27[1] = 0u;
  v27[2] = 0u;
  *(v27 + 6) = 0;
  *(a2 + 256) = v27;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv2DOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v22 = a9;
  *(*(a2 + 256) + 40) = a6;
  v23 = *(a2 + 256);
  if (v23)
  {
LABEL_4:
    v24 = a10;
    *(v23 + 8) = a7;
    v25 = *(a2 + 256);
    if (v25)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v28 = operator new(0x38uLL);
  *v28 = 0u;
  v28[1] = 0u;
  v28[2] = 0u;
  *(v28 + 6) = 0;
  *(a2 + 256) = v28;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv2DOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v24 = a10;
  *(*(a2 + 256) + 8) = a7;
  v25 = *(a2 + 256);
  if (!v25)
  {
LABEL_15:
    v29 = operator new(0x38uLL);
    *v29 = 0u;
    v29[1] = 0u;
    v29[2] = 0u;
    *(v29 + 6) = 0;
    *(a2 + 256) = v29;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v25 = *(a2 + 256);
  }

LABEL_18:
  *(v25 + 16) = a8;
  v30 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v68 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v69 = v30;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v66 = &v68;
  v64 = v22;
  v32 = 0x9DDFEA08EB382D69 * (((8 * v22) | 4) ^ v22 ^ 0xFF51AFD7ED558CCDLL);
  v33 = 0x9DDFEA08EB382D69 * (v22 ^ 0xFF51AFD7ED558CCDLL ^ (v32 >> 47) ^ v32);
  v63 = &v64;
  v70 = &v64;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v33 >> 47) ^ v33), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v63, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v70);
  v35 = *(a2 + 256);
  if (!v35)
  {
    v36 = operator new(0x38uLL);
    *v36 = 0u;
    v36[1] = 0u;
    v36[2] = 0u;
    *(v36 + 6) = 0;
    *(a2 + 256) = v36;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v35 = *(a2 + 256);
  }

  *(v35 + 32) = ParametricStorageTypeImpl;
  v37 = *a1;
  v38 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v68 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v69 = v37;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v66 = &v68;
  v64 = v24;
  v39 = 0x9DDFEA08EB382D69 * (((8 * v24) | 4) ^ v24 ^ 0xFF51AFD7ED558CCDLL);
  v40 = 0x9DDFEA08EB382D69 * (v24 ^ 0xFF51AFD7ED558CCDLL ^ (v39 >> 47) ^ v39);
  v63 = &v64;
  v70 = &v64;
  p_src = &__src;
  v41 = mlir::StorageUniquer::getParametricStorageTypeImpl(v38, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v40 >> 47) ^ v40), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v63, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v70);
  v42 = *(a2 + 256);
  if (!v42)
  {
    v43 = operator new(0x38uLL);
    *v43 = 0u;
    v43[1] = 0u;
    v43[2] = 0u;
    *(v43 + 6) = 0;
    *(a2 + 256) = v43;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v42 = *(a2 + 256);
  }

  *v42 = v41;
  v44 = *a1;
  v45 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v68 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v69 = v44;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v66 = &v68;
  v64 = a11;
  v46 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v47 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v46 >> 47) ^ v46);
  v63 = &v64;
  v70 = &v64;
  p_src = &__src;
  v48 = mlir::StorageUniquer::getParametricStorageTypeImpl(v45, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v47 >> 47) ^ v47), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v63, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v70);
  v49 = *(a2 + 256);
  if (!v49)
  {
    v50 = operator new(0x38uLL);
    *v50 = 0u;
    v50[1] = 0u;
    v50[2] = 0u;
    *(v50 + 6) = 0;
    *(a2 + 256) = v50;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v49 = *(a2 + 256);
  }

  *(v49 + 48) = v48;
  __src = v67;
  v66 = 0x200000000;
  v51 = *a1;
  v52 = *a2;
  mlir::ValueRange::ValueRange(&v70, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v55 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v68, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::Conv2DOp::inferReturnTypes(v51, v52, 1, v70, p_src, Dictionary, v55, v56, v68, v69, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v57 = __src;
  v58 = v66;
  v59 = *(a2 + 72);
  v60 = v59 + v66;
  if (v60 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v60, 8);
    LODWORD(v59) = *(a2 + 72);
  }

  if (v58)
  {
    memcpy((*(a2 + 64) + 8 * v59), v57, 8 * v58);
    LODWORD(v59) = *(a2 + 72);
  }

  *(a2 + 72) = v59 + v58;
  if (__src != v67)
  {
    free(__src);
  }
}

void mlir::mps::Conv2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v13 = *(a2 + 120);
  if (a8 + v13 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a8 + v13, 16);
    LODWORD(v13) = *(a2 + 120);
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v13), a7, 16 * a8);
    LODWORD(v13) = *(a2 + 120);
  }

  *(a2 + 120) = v13 + a8;
  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, a4 + v14, 8);
    v14 = *(a2 + 72);
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      *(v16 + 8 * v15) = mlir::TypeRange::dereference_iterator(a3, v15);
      ++v15;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  if (a8)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      v18 = operator new(0x38uLL);
      *v18 = 0u;
      v18[1] = 0u;
      v18[2] = 0u;
      *(v18 + 6) = 0;
      *(a2 + 256) = v18;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v24;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v23;
      {
        mlir::mps::Conv2DOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v17 = *(a2 + 256);
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v20 + 144))(v20, v19, v17, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }
}

BOOL mlir::mps::Conv2DOp::verifyInvariantsImpl(mlir::mps::Conv2DOp *this)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (!v4)
  {
    v43[0] = "requires attribute 'data_layout'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, &v45);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
    if (v45)
    {
      mlir::InFlightDiagnostic::report(&v45);
    }

    if (v54 != 1)
    {
      return v14;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v52;
      v17 = __p;
      if (v52 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v52 = v15;
      operator delete(v17);
    }

    v18 = v49;
    if (v49)
    {
      v19 = v50;
      v20 = v49;
      if (v50 == v49)
      {
        goto LABEL_86;
      }

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
LABEL_85:
      v20 = v49;
LABEL_86:
      v50 = v18;
      operator delete(v20);
    }

LABEL_87:
    if (v47 != &v48)
    {
      free(v47);
    }

    return v14;
  }

  v5 = v2[1];
  if (!v5)
  {
    v43[0] = "requires attribute 'dilation_rates'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, &v45);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
    if (v45)
    {
      mlir::InFlightDiagnostic::report(&v45);
    }

    if (v54 != 1)
    {
      return v14;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v52;
      v25 = __p;
      if (v52 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v52 = v23;
      operator delete(v25);
    }

    v18 = v49;
    if (v49)
    {
      v26 = v50;
      v20 = v49;
      if (v50 == v49)
      {
        goto LABEL_86;
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

      while (v26 != v18);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v6 = v2[2];
  if (!v6)
  {
    v43[0] = "requires attribute 'explicit_padding'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, &v45);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
    if (v45)
    {
      mlir::InFlightDiagnostic::report(&v45);
    }

    if (v54 != 1)
    {
      return v14;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v52;
      v31 = __p;
      if (v52 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v52 = v29;
      operator delete(v31);
    }

    v18 = v49;
    if (v49)
    {
      v32 = v50;
      v20 = v49;
      if (v50 == v49)
      {
        goto LABEL_86;
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

      while (v32 != v18);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v7 = v2[3];
  if (!v7)
  {
    v43[0] = "requires attribute 'groups'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, &v45);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
    if (v45)
    {
      mlir::InFlightDiagnostic::report(&v45);
    }

    if (v54 != 1)
    {
      return v14;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v52;
      v37 = __p;
      if (v52 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v52 = v35;
      operator delete(v37);
    }

    v18 = v49;
    if (v49)
    {
      v38 = v50;
      v20 = v49;
      if (v50 == v49)
      {
        goto LABEL_86;
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

      while (v38 != v18);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v8 = v2[4];
  if (v8)
  {
    v9 = v2[5];
    if (v9)
    {
      v10 = v2[6];
      if (v10)
      {
        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(v7, "groups", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v5, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v8, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v3, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v10, "weights_layout", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
        {
          return 0;
        }

        if (*(*this + 36))
        {
          v12 = *this - 16;
        }

        else
        {
          v12 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
      }

      v42 = "requires attribute 'weights_layout'";
    }

    else
    {
      v42 = "requires attribute 'strides'";
    }

    v43[0] = v42;
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, &v45);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    return v14;
  }

  v43[0] = "requires attribute 'padding_style'";
  v44 = 259;
  mlir::OpState::emitOpError(this, v43, &v45);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
  if (v45)
  {
    mlir::InFlightDiagnostic::report(&v45);
  }

  if (v54 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v46);
  }

  return v14;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::Conv2DOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.conv_2d", 11, a3, v10, a4, a5);
  *v11 = &unk_1F5B26660;
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

uint64_t mlir::mps::Conv2DWeightsGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x38uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *(v5 + 6) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::Conv2DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3) & 1) == 0)
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 3) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 6) & 1;
  }

  return 0;
}

void mlir::mps::Conv2DWeightsGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unsigned int a15, unsigned int a16, unsigned int a17)
{
  v57 = *MEMORY[0x1E69E9840];
  v54 = v56;
  v56[0] = xmmword_1E098C990;
  v56[1] = unk_1E098C9A0;
  v55 = 0x400000004;
  v51 = v53;
  v53[0] = xmmword_1E098C990;
  v53[1] = unk_1E098C9A0;
  v52 = 0x400000004;
  v48 = v50;
  memset(v50, 0, sizeof(v50));
  v49 = 0x800000008;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  mlir::mps::buildConv2DDescriptor(a3, a4, a6, a7, a8, a9, a10, a11, v35, a12, a13, a14, a15, a16, a17, v56, v53, v50, 0);
  v45 = &v47;
  v47 = xmmword_1E097BBD0;
  v46 = 0x200000002;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v34 = mlir::RankedTensorType::get(&v47, 2, IntegerType, 0);
  v44[0] = 4;
  v42 = v44;
  v43 = 0x200000001;
  v19 = mlir::Builder::getIntegerType(a1, 64, 0);
  v33 = mlir::RankedTensorType::get(v44, 1, v19, 0);
  v20 = mlir::TensorType::operator mlir::ShapedType(&v33);
  v22 = mlir::DenseElementsAttr::getFromRawBuffer(v20, v21, v54, 8 * v55, 8, 1, 0);
  v23 = mlir::TensorType::operator mlir::ShapedType(&v33);
  v25 = mlir::DenseElementsAttr::getFromRawBuffer(v23, v24, v51, 8 * v52, 8, 1, 0);
  v26 = mlir::TensorType::operator mlir::ShapedType(&v34);
  v28 = mlir::DenseElementsAttr::getFromRawBuffer(v26, v27, v48, 8 * v49, 8, 1, 0);
  mlir::mps::Conv2DWeightsGradientOp::build(a1, a2, a3, a4, a5, v36, v22, v25, v28, a15, a16, a17);
  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != &v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  if (v54 != v56)
  {
    free(v54);
  }
}

void mlir::mps::Conv2DWeightsGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  v74 = *MEMORY[0x1E69E9840];
  v63 = a4;
  v64 = a3;
  v62 = a5;
  mlir::OperationState::addOperands(a2, &v64, 1uLL);
  mlir::OperationState::addOperands(a2, &v63, 1uLL);
  mlir::OperationState::addOperands(a2, &v62, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a6);
  v19 = IntegerAttr;
  v20 = *(a2 + 256);
  if (v20)
  {
    *(v20 + 24) = IntegerAttr;
    v21 = *(a2 + 256);
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = operator new(0x38uLL);
    *v27 = 0u;
    v27[1] = 0u;
    v27[2] = 0u;
    *(v27 + 6) = 0;
    *(a2 + 256) = v27;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 24) = v19;
    v21 = *(a2 + 256);
    if (v21)
    {
LABEL_3:
      v22 = a10;
      *(v21 + 40) = a7;
      v23 = *(a2 + 256);
      if (v23)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v28 = operator new(0x38uLL);
  *v28 = 0u;
  v28[1] = 0u;
  v28[2] = 0u;
  *(v28 + 6) = 0;
  *(a2 + 256) = v28;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv2DWeightsGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v22 = a10;
  *(*(a2 + 256) + 40) = a7;
  v23 = *(a2 + 256);
  if (v23)
  {
LABEL_4:
    v24 = a11;
    v25 = a9;
    *(v23 + 8) = a8;
    v26 = *(a2 + 256);
    if (v26)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v29 = operator new(0x38uLL);
  *v29 = 0u;
  v29[1] = 0u;
  v29[2] = 0u;
  *(v29 + 6) = 0;
  *(a2 + 256) = v29;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv2DWeightsGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v24 = a11;
  v25 = a9;
  *(*(a2 + 256) + 8) = a8;
  v26 = *(a2 + 256);
  if (!v26)
  {
LABEL_15:
    v30 = operator new(0x38uLL);
    *v30 = 0u;
    v30[1] = 0u;
    v30[2] = 0u;
    *(v30 + 6) = 0;
    *(a2 + 256) = v30;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v26 = *(a2 + 256);
  }

LABEL_18:
  *(v26 + 16) = v25;
  v31 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v70 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v71 = v31;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v68 = &v70;
  v66 = v22;
  v33 = 0x9DDFEA08EB382D69 * (((8 * v22) | 4) ^ v22 ^ 0xFF51AFD7ED558CCDLL);
  v34 = 0x9DDFEA08EB382D69 * (v22 ^ 0xFF51AFD7ED558CCDLL ^ (v33 >> 47) ^ v33);
  v65 = &v66;
  v72 = &v66;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v34 >> 47) ^ v34), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v65, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v72);
  v36 = *(a2 + 256);
  if (!v36)
  {
    v37 = operator new(0x38uLL);
    *v37 = 0u;
    v37[1] = 0u;
    v37[2] = 0u;
    *(v37 + 6) = 0;
    *(a2 + 256) = v37;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v36 = *(a2 + 256);
  }

  *(v36 + 32) = ParametricStorageTypeImpl;
  v38 = *a1;
  v39 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v70 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v71 = v38;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v68 = &v70;
  v66 = v24;
  v40 = 0x9DDFEA08EB382D69 * (((8 * v24) | 4) ^ v24 ^ 0xFF51AFD7ED558CCDLL);
  v41 = 0x9DDFEA08EB382D69 * (v24 ^ 0xFF51AFD7ED558CCDLL ^ (v40 >> 47) ^ v40);
  v65 = &v66;
  v72 = &v66;
  p_src = &__src;
  v42 = mlir::StorageUniquer::getParametricStorageTypeImpl(v39, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v41 >> 47) ^ v41), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v65, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v72);
  v43 = *(a2 + 256);
  if (!v43)
  {
    v44 = operator new(0x38uLL);
    *v44 = 0u;
    v44[1] = 0u;
    v44[2] = 0u;
    *(v44 + 6) = 0;
    *(a2 + 256) = v44;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v43 = *(a2 + 256);
  }

  *v43 = v42;
  v45 = *a1;
  v46 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v70 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v71 = v45;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v68 = &v70;
  v66 = a12;
  v47 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v48 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v47 >> 47) ^ v47);
  v65 = &v66;
  v72 = &v66;
  p_src = &__src;
  v49 = mlir::StorageUniquer::getParametricStorageTypeImpl(v46, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v48 >> 47) ^ v48), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v65, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v72);
  v50 = *(a2 + 256);
  if (!v50)
  {
    v51 = operator new(0x38uLL);
    *v51 = 0u;
    v51[1] = 0u;
    v51[2] = 0u;
    *(v51 + 6) = 0;
    *(a2 + 256) = v51;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv2DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv2DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v50 = *(a2 + 256);
  }

  *(v50 + 48) = v49;
  __src = v69;
  v68 = 0x200000000;
  v52 = *a1;
  v53 = *a2;
  mlir::ValueRange::ValueRange(&v72, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v56 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v70, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::Conv2DWeightsGradientOp::inferReturnTypes(v52, v53, 1, v72, p_src, Dictionary, v56, v57, v70, v71, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v58 = __src;
  v59 = v68;
  v60 = *(a2 + 72);
  v61 = v60 + v68;
  if (v61 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v61, 8);
    LODWORD(v60) = *(a2 + 72);
  }

  if (v59)
  {
    memcpy((*(a2 + 64) + 8 * v60), v58, 8 * v59);
    LODWORD(v60) = *(a2 + 72);
  }

  *(a2 + 72) = v60 + v59;
  if (__src != v69)
  {
    free(__src);
  }
}

BOOL mlir::mps::Conv2DWeightsGradientOp::verifyInvariantsImpl(mlir::mps::Conv2DWeightsGradientOp *this)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (!v4)
  {
    v43[0] = "requires attribute 'data_layout'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, &v45);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
    if (v45)
    {
      mlir::InFlightDiagnostic::report(&v45);
    }

    if (v54 != 1)
    {
      return v14;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v52;
      v17 = __p;
      if (v52 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v52 = v15;
      operator delete(v17);
    }

    v18 = v49;
    if (v49)
    {
      v19 = v50;
      v20 = v49;
      if (v50 == v49)
      {
        goto LABEL_87;
      }

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
LABEL_86:
      v20 = v49;
LABEL_87:
      v50 = v18;
      operator delete(v20);
    }

LABEL_88:
    if (v47 != &v48)
    {
      free(v47);
    }

    return v14;
  }

  v5 = v2[1];
  if (!v5)
  {
    v43[0] = "requires attribute 'dilation_rates'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, &v45);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
    if (v45)
    {
      mlir::InFlightDiagnostic::report(&v45);
    }

    if (v54 != 1)
    {
      return v14;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v52;
      v25 = __p;
      if (v52 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v52 = v23;
      operator delete(v25);
    }

    v18 = v49;
    if (v49)
    {
      v26 = v50;
      v20 = v49;
      if (v50 == v49)
      {
        goto LABEL_87;
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

      while (v26 != v18);
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  v6 = v2[2];
  if (!v6)
  {
    v43[0] = "requires attribute 'explicit_padding'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, &v45);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
    if (v45)
    {
      mlir::InFlightDiagnostic::report(&v45);
    }

    if (v54 != 1)
    {
      return v14;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v52;
      v31 = __p;
      if (v52 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v52 = v29;
      operator delete(v31);
    }

    v18 = v49;
    if (v49)
    {
      v32 = v50;
      v20 = v49;
      if (v50 == v49)
      {
        goto LABEL_87;
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

      while (v32 != v18);
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  v7 = v2[3];
  if (!v7)
  {
    v43[0] = "requires attribute 'groups'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, &v45);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
    if (v45)
    {
      mlir::InFlightDiagnostic::report(&v45);
    }

    if (v54 != 1)
    {
      return v14;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v52;
      v37 = __p;
      if (v52 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v52 = v35;
      operator delete(v37);
    }

    v18 = v49;
    if (v49)
    {
      v38 = v50;
      v20 = v49;
      if (v50 == v49)
      {
        goto LABEL_87;
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

      while (v38 != v18);
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  v8 = v2[4];
  if (v8)
  {
    v9 = v2[5];
    if (v9)
    {
      v10 = v2[6];
      if (v10)
      {
        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(v7, "groups", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v5, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v8, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v3, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v10, "weights_layout", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
        {
          return 0;
        }

        if (*(*this + 36))
        {
          v12 = *this - 16;
        }

        else
        {
          v12 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
      }

      v42 = "requires attribute 'weights_layout'";
    }

    else
    {
      v42 = "requires attribute 'strides'";
    }

    v43[0] = v42;
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, &v45);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    return v14;
  }

  v43[0] = "requires attribute 'padding_style'";
  v44 = 259;
  mlir::OpState::emitOpError(this, v43, &v45);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
  if (v45)
  {
    mlir::InFlightDiagnostic::report(&v45);
  }

  if (v54 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v46);
  }

  return v14;
}