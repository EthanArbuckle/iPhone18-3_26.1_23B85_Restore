uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v41, "channelAxis", 11, *a2);
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
    v19 = mlir::Builder::getNamedAttr(&v41, "padding_style", 13, v18);
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

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 12)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[4];
      }
    }

    else if (__n == 11 && *__s1 == 0x416C656E6E616863 && *(__s1 + 3) == 0x736978416C656E6ELL)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
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

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 12)
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

    else if (a3 == 11 && *__s1 == 0x416C656E6E616863 && *(__s1 + 3) == 0x736978416C656E6ELL)
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
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

void mlir::mps::DepthwiseConv3DDataGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "channelAxis", 11, *a2);
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
    mlir::NamedAttrList::append(a3, "padding_style", 13, v7);
  }

  v8 = a2[4];
  if (v8)
  {

    mlir::NamedAttrList::append(a3, "strides", 7, v8);
  }
}

BOOL mlir::mps::DepthwiseConv3DDataGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v8, "channelAxis", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v9, "dilation_rates", 0xE, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(v10, "explicit_padding", 0x10, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 0xD, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v12, "strides", 7, a3, a4) & 1) != 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(void *a1, void *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
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
    isSignedInteger = mlir::Type::isSignedInteger(&Value, 32);
    a5 = v8;
    a4 = v7;
    if (isSignedInteger)
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
        v31 = "' failed to satisfy constraint: 32-bit signed integer attribute";
        v32 = 63;
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(void *a1, void *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
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
    v78 = 3;
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
        v63 = "' failed to satisfy constraint: ui64 elements attribute of shape {3}";
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(void *a1, void *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
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
    v78 = 6;
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
        v63 = "' failed to satisfy constraint: ui64 elements attribute of shape {6}";
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

BOOL mlir::mps::DepthwiseConv3DDataGradientOp::readProperties(uint64_t a1, uint64_t a2)
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
    v5 = operator new(0x28uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 4) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::DepthwiseConv3DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) & 1) != 0)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4);
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(mlir::mps::DepthwiseConv3DDataGradientOp *this)
{
  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v6, &__p);
  if (v5 > 0x40)
  {
    v3 = *__p;
    operator delete[](__p);
    return v3;
  }

  else if (v5)
  {
    return ((__p << -v5) >> -v5);
  }

  else
  {
    return 0;
  }
}

void mlir::mps::DepthwiseConv3DDataGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10)
{
  v56 = *MEMORY[0x1E69E9840];
  v45 = a4;
  v46 = a3;
  v44 = a5;
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  mlir::OperationState::addOperands(a2, &v45, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v44, 1uLL);
  }

  v16 = *(a2 + 256);
  if (v16)
  {
    v17 = a9;
    *(v16 + 32) = a6;
    v18 = *(a2 + 256);
    if (v18)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = operator new(0x28uLL);
    *v20 = 0u;
    v20[1] = 0u;
    *(v20 + 4) = 0;
    *(a2 + 256) = v20;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v17 = a9;
    *(*(a2 + 256) + 32) = a6;
    v18 = *(a2 + 256);
    if (v18)
    {
LABEL_5:
      *(v18 + 8) = a7;
      v19 = *(a2 + 256);
      if (v19)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  v21 = operator new(0x28uLL);
  *v21 = 0u;
  v21[1] = 0u;
  *(v21 + 4) = 0;
  *(a2 + 256) = v21;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::DepthwiseConv3DDataGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 8) = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
LABEL_13:
    v22 = operator new(0x28uLL);
    *v22 = 0u;
    v22[1] = 0u;
    *(v22 + 4) = 0;
    *(a2 + 256) = v22;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v19 = *(a2 + 256);
  }

LABEL_16:
  *(v19 + 16) = a8;
  v23 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v52 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v53 = v23;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v50 = &v52;
  v48 = v17;
  v25 = 0x9DDFEA08EB382D69 * (((8 * v17) | 4) ^ v17 ^ 0xFF51AFD7ED558CCDLL);
  v26 = 0x9DDFEA08EB382D69 * (v17 ^ 0xFF51AFD7ED558CCDLL ^ (v25 >> 47) ^ v25);
  v47 = &v48;
  v54 = &v48;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v26 >> 47) ^ v26), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v47, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v54);
  v28 = *(a2 + 256);
  if (!v28)
  {
    v29 = operator new(0x28uLL);
    *v29 = 0u;
    v29[1] = 0u;
    *(v29 + 4) = 0;
    *(a2 + 256) = v29;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v28 = *(a2 + 256);
  }

  *(v28 + 24) = ParametricStorageTypeImpl;
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 1);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a10);
  v32 = *(a2 + 256);
  if (!v32)
  {
    v33 = operator new(0x28uLL);
    *v33 = 0u;
    v33[1] = 0u;
    *(v33 + 4) = 0;
    *(a2 + 256) = v33;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v32 = *(a2 + 256);
  }

  *v32 = IntegerAttr;
  __src = v51;
  v50 = 0x200000000;
  v34 = *a1;
  v35 = *a2;
  mlir::ValueRange::ValueRange(&v54, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v38 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v52, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthwiseConv3DDataGradientOp::inferReturnTypes(v34, v35, 1, v54, p_src, Dictionary, v38, v39, v52, v53, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v40 = __src;
  v41 = v50;
  v42 = *(a2 + 72);
  v43 = v42 + v50;
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
  if (__src != v51)
  {
    free(__src);
  }
}

BOOL mlir::mps::DepthwiseConv3DDataGradientOp::verifyInvariantsImpl(mlir::mps::DepthwiseConv3DDataGradientOp *this)
{
  v79 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v2 = (v1 + 64);
  if (!v4)
  {
    v68[0] = "requires attribute 'dilation_rates'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v70);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v78 != 1)
    {
      return v11;
    }

    if (v77 != &v78)
    {
      free(v77);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v76;
      v14 = __p;
      if (v76 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v76 = v12;
      operator delete(v14);
    }

    v15 = v73;
    if (v73)
    {
      v16 = v74;
      v17 = v73;
      if (v74 == v73)
      {
        goto LABEL_76;
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
LABEL_75:
      v17 = v73;
LABEL_76:
      v74 = v15;
      operator delete(v17);
    }

LABEL_77:
    if (v71 != &v72)
    {
      free(v71);
    }

    return v11;
  }

  v5 = v2[2];
  if (!v5)
  {
    v68[0] = "requires attribute 'explicit_padding'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v70);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v78 != 1)
    {
      return v11;
    }

    if (v77 != &v78)
    {
      free(v77);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v76;
      v22 = __p;
      if (v76 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v76 = v20;
      operator delete(v22);
    }

    v15 = v73;
    if (v73)
    {
      v23 = v74;
      v17 = v73;
      if (v74 == v73)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    goto LABEL_77;
  }

  v6 = v2[3];
  if (!v6)
  {
    v68[0] = "requires attribute 'padding_style'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v70);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v78 != 1)
    {
      return v11;
    }

    if (v77 != &v78)
    {
      free(v77);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v76;
      v28 = __p;
      if (v76 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v76 = v26;
      operator delete(v28);
    }

    v15 = v73;
    if (v73)
    {
      v29 = v74;
      v17 = v73;
      if (v74 == v73)
      {
        goto LABEL_76;
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

      while (v29 != v15);
      goto LABEL_75;
    }

    goto LABEL_77;
  }

  v7 = v2[4];
  if (!v7)
  {
    v68[0] = "requires attribute 'strides'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v70);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v78 != 1)
    {
      return v11;
    }

    if (v77 != &v78)
    {
      free(v77);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v76;
      v34 = __p;
      if (v76 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v76 = v32;
      operator delete(v34);
    }

    v15 = v73;
    if (v73)
    {
      v35 = v74;
      v17 = v73;
      if (v74 == v73)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    goto LABEL_77;
  }

  v70[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v7, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70) & 1) == 0)
  {
    return 0;
  }

  v70[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v4, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70) & 1) == 0)
  {
    return 0;
  }

  v70[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(v5, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70) & 1) == 0)
  {
    return 0;
  }

  v70[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v6, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70) & 1) == 0)
  {
    return 0;
  }

  v70[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v3, "channelAxis", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70) & 1) == 0)
  {
    return 0;
  }

  v67 = 0;
  ODSOperands = mlir::mps::Conv2DDataGradientOp::getODSOperands(this, 0, v9, v10);
  if (v40)
  {
    v43 = v40;
    v44 = 0;
    v45 = ODSOperands + 24;
    while (1)
    {
      v46 = *this;
      v47 = *(*v45 + 8);
      v67 = v44 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v46, v47 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v44) & 1) == 0)
      {
        return 0;
      }

      ++v44;
      v45 += 32;
      if (v43 == v44)
      {
        goto LABEL_86;
      }
    }
  }

  LODWORD(v44) = 0;
LABEL_86:
  v48 = mlir::mps::Conv2DDataGradientOp::getODSOperands(this, 1u, v41, v42);
  if (v49)
  {
    v52 = v49;
    v53 = v48 + 24;
    v54 = this;
    while (1)
    {
      v55 = *v54;
      v56 = *(*v53 + 8);
      v57 = v44 + 1;
      v67 = v44 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v55, v56 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v44) & 1) == 0)
      {
        return 0;
      }

      v53 += 32;
      LODWORD(v44) = v44 + 1;
      --v52;
      v54 = this;
      if (!v52)
      {
        goto LABEL_92;
      }
    }
  }

  v57 = v44;
  v54 = this;
LABEL_92:
  v58 = mlir::mps::Conv2DDataGradientOp::getODSOperands(v54, 2u, v50, v51);
  v60 = v59;
  if (v59 >= 2)
  {
    v68[0] = "operand group starting at #";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v70);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v70, &v67);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v61, " requires 0 or 1 element, but found ");
    v66 = v60;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v62, &v66);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v63);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v70);
    return v11;
  }

  if (v59 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(v58 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v57) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v64 = *this - 16;
  }

  else
  {
    v64 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v64, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::DepthwiseConv3DDataGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.depthwise_conv_3d_data_gradient", 35, a3, v10, a4, a5);
  *v11 = &unk_1F5B27380;
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

BOOL mlir::mps::DepthwiseConv3DOp::readProperties(uint64_t a1, uint64_t a2)
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
    v5 = operator new(0x28uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 4) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::DepthwiseConv3DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) & 1) != 0)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4);
  }

  return 0;
}

void mlir::mps::DepthwiseConv3DOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9)
{
  v54 = *MEMORY[0x1E69E9840];
  v43 = a4;
  v44 = a3;
  mlir::OperationState::addOperands(a2, &v44, 1uLL);
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  v15 = *(a2 + 256);
  if (v15)
  {
    *(v15 + 32) = a5;
    v16 = *(a2 + 256);
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = operator new(0x28uLL);
    *v18 = 0u;
    v18[1] = 0u;
    *(v18 + 4) = 0;
    *(a2 + 256) = v18;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 32) = a5;
    v16 = *(a2 + 256);
    if (v16)
    {
LABEL_3:
      *(v16 + 8) = a6;
      v17 = *(a2 + 256);
      if (v17)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v19 = operator new(0x28uLL);
  *v19 = 0u;
  v19[1] = 0u;
  *(v19 + 4) = 0;
  *(a2 + 256) = v19;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::DepthwiseConv3DOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 8) = a6;
  v17 = *(a2 + 256);
  if (!v17)
  {
LABEL_11:
    v20 = operator new(0x28uLL);
    *v20 = 0u;
    v20[1] = 0u;
    *(v20 + 4) = 0;
    *(a2 + 256) = v20;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v17 = *(a2 + 256);
  }

LABEL_14:
  *(v17 + 16) = a7;
  v21 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v50 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v51 = v21;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v48 = &v50;
  v46 = a8;
  v23 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v24 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v23);
  v45 = &v46;
  v52 = &v46;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 32) >> 15) ^ (-348639895 * (v23 ^ (v24 >> 47) ^ v24))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v45, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v52);
  v26 = *(a2 + 256);
  if (!v26)
  {
    v27 = operator new(0x28uLL);
    *v27 = 0u;
    v27[1] = 0u;
    *(v27 + 4) = 0;
    *(a2 + 256) = v27;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v26 = *(a2 + 256);
  }

  *(v26 + 24) = ParametricStorageTypeImpl;
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 1);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a9);
  v30 = *(a2 + 256);
  if (!v30)
  {
    v31 = operator new(0x28uLL);
    *v31 = 0u;
    v31[1] = 0u;
    *(v31 + 4) = 0;
    *(a2 + 256) = v31;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v30 = *(a2 + 256);
  }

  *v30 = IntegerAttr;
  __src = v49;
  v48 = 0x200000000;
  v32 = *a1;
  mlir::ValueRange::ValueRange(&v52, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v35 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v50, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthwiseConv3DOp::inferReturnTypes(v32, v36, v37, v52, p_src, Dictionary, v35, v38, v50, v51, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v39 = __src;
  v40 = v48;
  v41 = *(a2 + 72);
  v42 = v41 + v48;
  if (v42 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v42, 8);
    LODWORD(v41) = *(a2 + 72);
  }

  if (v40)
  {
    memcpy((*(a2 + 64) + 8 * v41), v39, 8 * v40);
    LODWORD(v41) = *(a2 + 72);
  }

  *(a2 + 72) = v41 + v40;
  if (__src != v49)
  {
    free(__src);
  }
}

BOOL mlir::mps::DepthwiseConv3DOp::verifyInvariantsImpl(mlir::mps::DepthwiseConv3DOp *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v2 = (v1 + 64);
  if (v4)
  {
    v5 = v2[2];
    if (v5)
    {
      v6 = v2[3];
      if (v6)
      {
        v7 = v2[4];
        if (v7)
        {
          v41[0] = *this;
          if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v7, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0)
          {
            return 0;
          }

          v41[0] = *this;
          if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v4, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0)
          {
            return 0;
          }

          v41[0] = *this;
          if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(v5, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0)
          {
            return 0;
          }

          v41[0] = *this;
          if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v6, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0)
          {
            return 0;
          }

          v41[0] = *this;
          if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v3, "channelAxis", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
          {
            return 0;
          }

          if (*(*this + 36))
          {
            v9 = *this - 16;
          }

          else
          {
            v9 = 0;
          }

          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
          return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
        }

        v39[0] = "requires attribute 'strides'";
        v40 = 259;
        mlir::OpState::emitOpError(this, v39, v41);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
        if (v41[0])
        {
          mlir::InFlightDiagnostic::report(v41);
        }

        if (v49 == 1)
        {
          if (v48 != &v49)
          {
            free(v48);
          }

          v32 = __p;
          if (__p)
          {
            v33 = v47;
            v34 = __p;
            if (v47 != __p)
            {
              do
              {
                v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
              }

              while (v33 != v32);
              v34 = __p;
            }

            v47 = v32;
            operator delete(v34);
          }

          v15 = v44;
          if (!v44)
          {
            goto LABEL_83;
          }

          v35 = v45;
          v17 = v44;
          if (v45 == v44)
          {
LABEL_82:
            v45 = v15;
            operator delete(v17);
LABEL_83:
            if (v42 != &v43)
            {
              free(v42);
            }

            return v11;
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
LABEL_81:
          v17 = v44;
          goto LABEL_82;
        }
      }

      else
      {
        v39[0] = "requires attribute 'padding_style'";
        v40 = 259;
        mlir::OpState::emitOpError(this, v39, v41);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
        if (v41[0])
        {
          mlir::InFlightDiagnostic::report(v41);
        }

        if (v49 == 1)
        {
          if (v48 != &v49)
          {
            free(v48);
          }

          v26 = __p;
          if (__p)
          {
            v27 = v47;
            v28 = __p;
            if (v47 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v47 = v26;
            operator delete(v28);
          }

          v15 = v44;
          if (!v44)
          {
            goto LABEL_83;
          }

          v29 = v45;
          v17 = v44;
          if (v45 == v44)
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

          while (v29 != v15);
          goto LABEL_81;
        }
      }
    }

    else
    {
      v39[0] = "requires attribute 'explicit_padding'";
      v40 = 259;
      mlir::OpState::emitOpError(this, v39, v41);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
      if (v41[0])
      {
        mlir::InFlightDiagnostic::report(v41);
      }

      if (v49 == 1)
      {
        if (v48 != &v49)
        {
          free(v48);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v47;
          v22 = __p;
          if (v47 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v47 = v20;
          operator delete(v22);
        }

        v15 = v44;
        if (!v44)
        {
          goto LABEL_83;
        }

        v23 = v45;
        v17 = v44;
        if (v45 == v44)
        {
          goto LABEL_82;
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
        goto LABEL_81;
      }
    }
  }

  else
  {
    v39[0] = "requires attribute 'dilation_rates'";
    v40 = 259;
    mlir::OpState::emitOpError(this, v39, v41);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v47;
        v14 = __p;
        if (v47 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v47 = v12;
        operator delete(v14);
      }

      v15 = v44;
      if (!v44)
      {
        goto LABEL_83;
      }

      v16 = v45;
      v17 = v44;
      if (v45 == v44)
      {
        goto LABEL_82;
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
      goto LABEL_81;
    }
  }

  return v11;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::DepthwiseConv3DOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.depthwise_conv_3d", 21, a3, v10, a4, a5);
  *v11 = &unk_1F5B27420;
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

BOOL mlir::mps::DepthwiseConv3DWeightsGradientOp::readProperties(uint64_t a1, uint64_t a2)
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
    v5 = operator new(0x28uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 4) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::DepthwiseConv3DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) & 1) != 0)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4);
  }

  return 0;
}

void mlir::mps::DepthwiseConv3DWeightsGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10)
{
  v57 = *MEMORY[0x1E69E9840];
  v47 = a4;
  v48 = a3;
  v46 = a5;
  mlir::OperationState::addOperands(a2, &v48, 1uLL);
  mlir::OperationState::addOperands(a2, &v47, 1uLL);
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  v15 = *(a2 + 256);
  if (v15)
  {
    v16 = a9;
    *(v15 + 32) = a6;
    v17 = *(a2 + 256);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = operator new(0x28uLL);
    *v19 = 0u;
    v19[1] = 0u;
    *(v19 + 4) = 0;
    *(a2 + 256) = v19;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v16 = a9;
    *(*(a2 + 256) + 32) = a6;
    v17 = *(a2 + 256);
    if (v17)
    {
LABEL_3:
      *(v17 + 8) = a7;
      v18 = *(a2 + 256);
      if (v18)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v20 = operator new(0x28uLL);
  *v20 = 0u;
  v20[1] = 0u;
  *(v20 + 4) = 0;
  *(a2 + 256) = v20;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::DepthwiseConv3DWeightsGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 8) = a7;
  v18 = *(a2 + 256);
  if (!v18)
  {
LABEL_11:
    v21 = operator new(0x28uLL);
    *v21 = 0u;
    v21[1] = 0u;
    *(v21 + 4) = 0;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v18 = *(a2 + 256);
  }

LABEL_14:
  *(v18 + 16) = a8;
  v22 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v54[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v54[1] = v22;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v52 = v54;
  v50 = v16;
  v24 = 0x9DDFEA08EB382D69 * (((8 * v16) | 4) ^ v16 ^ 0xFF51AFD7ED558CCDLL);
  v25 = 0x9DDFEA08EB382D69 * (v16 ^ 0xFF51AFD7ED558CCDLL ^ (v24 >> 47) ^ v24);
  v49 = &v50;
  v55 = &v50;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v25 >> 47) ^ v25), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v49, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v55);
  v27 = *(a2 + 256);
  if (!v27)
  {
    v28 = operator new(0x28uLL);
    *v28 = 0u;
    v28[1] = 0u;
    *(v28 + 4) = 0;
    *(a2 + 256) = v28;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v27 = *(a2 + 256);
  }

  *(v27 + 24) = ParametricStorageTypeImpl;
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 1);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a10);
  v31 = *(a2 + 256);
  if (!v31)
  {
    v32 = operator new(0x28uLL);
    *v32 = 0u;
    v32[1] = 0u;
    *(v32 + 4) = 0;
    *(a2 + 256) = v32;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DepthwiseConv3DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DepthwiseConv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v31 = *(a2 + 256);
  }

  *v31 = IntegerAttr;
  __src = v53;
  v52 = 0x200000000;
  v33 = *a2;
  mlir::ValueRange::ValueRange(&v55, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v35 = mlir::ValueRange::ValueRange(v54, *(a2 + 224), *(a2 + 232));
  v36.var0.var0 = 1;
  if (!mlir::mps::DepthwiseConv3DWeightsGradientOp::inferReturnTypes(v35, v33, v36, v55, p_src, v37, v38, v39, v44, v45, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v40 = __src;
  v41 = v52;
  v42 = *(a2 + 72);
  v43 = v42 + v52;
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
  if (__src != v53)
  {
    free(__src);
  }
}

BOOL mlir::mps::DepthwiseConv3DWeightsGradientOp::verifyInvariantsImpl(mlir::mps::DepthwiseConv3DWeightsGradientOp *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v2 = (v1 + 64);
  if (v4)
  {
    v5 = v2[2];
    if (v5)
    {
      v6 = v2[3];
      if (v6)
      {
        v7 = v2[4];
        if (v7)
        {
          v41[0] = *this;
          if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v7, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0)
          {
            return 0;
          }

          v41[0] = *this;
          if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v4, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0)
          {
            return 0;
          }

          v41[0] = *this;
          if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(v5, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0)
          {
            return 0;
          }

          v41[0] = *this;
          if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v6, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0)
          {
            return 0;
          }

          v41[0] = *this;
          if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v3, "channelAxis", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
          {
            return 0;
          }

          if (*(*this + 36))
          {
            v9 = *this - 16;
          }

          else
          {
            v9 = 0;
          }

          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
          return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
        }

        v39[0] = "requires attribute 'strides'";
        v40 = 259;
        mlir::OpState::emitOpError(this, v39, v41);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
        if (v41[0])
        {
          mlir::InFlightDiagnostic::report(v41);
        }

        if (v49 == 1)
        {
          if (v48 != &v49)
          {
            free(v48);
          }

          v32 = __p;
          if (__p)
          {
            v33 = v47;
            v34 = __p;
            if (v47 != __p)
            {
              do
              {
                v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
              }

              while (v33 != v32);
              v34 = __p;
            }

            v47 = v32;
            operator delete(v34);
          }

          v15 = v44;
          if (!v44)
          {
            goto LABEL_84;
          }

          v35 = v45;
          v17 = v44;
          if (v45 == v44)
          {
LABEL_83:
            v45 = v15;
            operator delete(v17);
LABEL_84:
            if (v42 != &v43)
            {
              free(v42);
            }

            return v11;
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
LABEL_82:
          v17 = v44;
          goto LABEL_83;
        }
      }

      else
      {
        v39[0] = "requires attribute 'padding_style'";
        v40 = 259;
        mlir::OpState::emitOpError(this, v39, v41);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
        if (v41[0])
        {
          mlir::InFlightDiagnostic::report(v41);
        }

        if (v49 == 1)
        {
          if (v48 != &v49)
          {
            free(v48);
          }

          v26 = __p;
          if (__p)
          {
            v27 = v47;
            v28 = __p;
            if (v47 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v47 = v26;
            operator delete(v28);
          }

          v15 = v44;
          if (!v44)
          {
            goto LABEL_84;
          }

          v29 = v45;
          v17 = v44;
          if (v45 == v44)
          {
            goto LABEL_83;
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

          while (v29 != v15);
          goto LABEL_82;
        }
      }
    }

    else
    {
      v39[0] = "requires attribute 'explicit_padding'";
      v40 = 259;
      mlir::OpState::emitOpError(this, v39, v41);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
      if (v41[0])
      {
        mlir::InFlightDiagnostic::report(v41);
      }

      if (v49 == 1)
      {
        if (v48 != &v49)
        {
          free(v48);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v47;
          v22 = __p;
          if (v47 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v47 = v20;
          operator delete(v22);
        }

        v15 = v44;
        if (!v44)
        {
          goto LABEL_84;
        }

        v23 = v45;
        v17 = v44;
        if (v45 == v44)
        {
          goto LABEL_83;
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
        goto LABEL_82;
      }
    }
  }

  else
  {
    v39[0] = "requires attribute 'dilation_rates'";
    v40 = 259;
    mlir::OpState::emitOpError(this, v39, v41);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v47;
        v14 = __p;
        if (v47 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v47 = v12;
        operator delete(v14);
      }

      v15 = v44;
      if (!v44)
      {
        goto LABEL_84;
      }

      v16 = v45;
      v17 = v44;
      if (v45 == v44)
      {
        goto LABEL_83;
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
      goto LABEL_82;
    }
  }

  return v11;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::DepthwiseConv3DWeightsGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.depthwise_conv_3d_weights_gradient", 38, a3, v10, a4, a5);
  *v11 = &unk_1F5B274C0;
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

uint64_t mlir::mps::DequantizeLUTOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "axis";
  v56.var1 = 4;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 49;
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

uint64_t mlir::mps::DequantizeLUTOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "axis", 4, *a2);
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

BOOL mlir::mps::DequantizeLUTOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::DequantizeLUTOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256));
}

void mlir::mps::DequantizeLUTOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v20 = a4;
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  if (a5)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      v9 = operator new(8uLL);
      *v9 = 0;
      *(a2 + 256) = v9;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::DequantizeLUTOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = *(a2 + 256);
    }

    *v8 = a5;
  }

  __src = v26;
  v25 = 0x200000000;
  v10 = *a1;
  v11 = *a2;
  mlir::ValueRange::ValueRange(v23, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DequantizeLUTOp::inferReturnTypes(v10, v11, 1, v23[0], v23[1], Dictionary, v14, v15, v22[0], v22[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v16 = __src;
  v17 = v25;
  v18 = *(a2 + 72);
  v19 = v18 + v25;
  if (v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v19, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v17);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v26)
  {
    free(__src);
  }
}

uint64_t mlir::mps::DequantizeLUTOp::verifyInvariantsImpl(mlir::mps::DequantizeLUTOp *this)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v58[0] = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v3, "axis", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v58) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  v5 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(*v5 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    v12 = v10;
    v13 = v11;
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 2;
      v13 += ~(v13 >> 1);
      if (v17 < v9)
      {
        v12 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
    if (v12 != &v10[2 * v11] && *v12 == v9)
    {
      v18 = v12[1];
      goto LABEL_21;
    }

LABEL_19:
    v18 = 0;
LABEL_21:
    v58[0] = v5;
    v58[1] = v18;
    v53[0] = mlir::ElementsAttr::isSplat(v58);
    if (mlir::Type::isUnsignedInteger(v53, 2) || mlir::Type::isUnsignedInteger(v53, 3) || mlir::Type::isUnsignedInteger(v53, 4) || mlir::Type::isUnsignedInteger(v53, 6) || mlir::Type::isUnsignedInteger(v53, 8))
    {
      goto LABEL_56;
    }
  }

  v54 = 261;
  v53[0] = "operand";
  v53[1] = 7;
  mlir::Operation::emitOpError(v4, v53, v58);
  if (v58[0])
  {
    v55 = 3;
    v56 = " #";
    v57 = 2;
    v19 = &v55;
    v20 = v59;
    if (v60 >= v61)
    {
      if (v59 <= &v55 && v59 + 24 * v60 > &v55)
      {
        v49 = &v55 - v59;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
        v20 = v59;
        v19 = (v59 + v49);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
        v19 = &v55;
        v20 = v59;
      }
    }

    v21 = &v20[24 * v60];
    v22 = *v19;
    *(v21 + 2) = *(v19 + 2);
    *v21 = v22;
    v23 = ++v60;
    if (v58[0])
    {
      v55 = 5;
      v56 = 0;
      v24 = &v55;
      v25 = v59;
      if (v23 >= v61)
      {
        if (v59 <= &v55 && v59 + 24 * v23 > &v55)
        {
          v50 = &v55 - v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v23 + 1, 24);
          v25 = v59;
          v24 = (v59 + v50);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v23 + 1, 24);
          v24 = &v55;
          v25 = v59;
        }
      }

      v26 = &v25[24 * v60];
      v27 = *v24;
      *(v26 + 2) = *(v24 + 2);
      *v26 = v27;
      v28 = ++v60;
      if (v58[0])
      {
        v55 = 3;
        v56 = " must be tensor of palette LUT index values, but got ";
        v57 = 53;
        v29 = &v55;
        v30 = v59;
        if (v28 >= v61)
        {
          if (v59 <= &v55 && v59 + 24 * v28 > &v55)
          {
            v51 = &v55 - v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v28 + 1, 24);
            v30 = v59;
            v29 = (v59 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v28 + 1, 24);
            v29 = &v55;
            v30 = v59;
          }
        }

        v31 = &v30[24 * v60];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        ++v60;
        if (v58[0])
        {
          v33 = &v55;
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v5);
          v34 = v59;
          if (v60 >= v61)
          {
            if (v59 <= &v55 && v59 + 24 * v60 > &v55)
            {
              v52 = &v55 - v59;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
              v34 = v59;
              v33 = (v59 + v52);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
              v33 = &v55;
              v34 = v59;
            }
          }

          v35 = &v34[24 * v60];
          v36 = *v33;
          *(v35 + 2) = *(v33 + 2);
          *v35 = v36;
          ++v60;
        }
      }
    }
  }

  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
  if (v58[0])
  {
    mlir::InFlightDiagnostic::report(v58);
  }

  if (v68 == 1)
  {
    if (v67 != &v68)
    {
      free(v67);
    }

    v38 = __p;
    if (__p)
    {
      v39 = v66;
      v40 = __p;
      if (v66 != __p)
      {
        do
        {
          v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v66 = v38;
      operator delete(v40);
    }

    v41 = v63;
    if (v63)
    {
      v42 = v64;
      v43 = v63;
      if (v64 != v63)
      {
        do
        {
          v45 = *--v42;
          v44 = v45;
          *v42 = 0;
          if (v45)
          {
            operator delete[](v44);
          }
        }

        while (v42 != v41);
        v43 = v63;
      }

      v64 = v41;
      operator delete(v43);
    }

    if (v59 != v62)
    {
      free(v59);
    }
  }

  if (!v37)
  {
    return 0;
  }

LABEL_56:
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v46 = *this - 16;
  }

  else
  {
    v46 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v46, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::DequantizeLUTOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.dequantize_lut", 18, a3, v10, a4, a5);
  *v11 = &unk_1F5B27560;
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

uint64_t mlir::mps::DequantizeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v58 = v6;
  if (!v6)
  {
    a3(v62, a4);
    if (v62[0])
    {
      v59 = 3;
      v60 = "expected DictionaryAttr to set properties";
      v61 = 41;
      v26 = &v59;
      v27 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v27 = v63;
          v26 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v26 = &v59;
          v27 = v63;
        }
      }

      v28 = &v27[24 * v64];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }

    if (v72 != 1)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v70;
      v32 = __p;
      if (v70 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v70 = v30;
      operator delete(v32);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
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
    goto LABEL_68;
  }

  v74.var0 = "axis";
  v74.var1 = 4;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 49;
        v10 = &v59;
        v11 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v11 = v63;
            v10 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v10 = &v59;
            v11 = v63;
          }
        }

        v12 = &v11[24 * v64];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v64;
        if (v62[0])
        {
          v14 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v15 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v15 = v63;
              v14 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v14 = &v59;
              v15 = v63;
            }
          }

          v16 = &v15[24 * v64];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v64;
          if (v62[0])
          {
            mlir::InFlightDiagnostic::report(v62);
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return 0;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v70;
        v20 = __p;
        if (v70 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v70 = v18;
        operator delete(v20);
      }

      v21 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v22 = v68;
      v23 = v67;
      if (v68 == v67)
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

  v75.var0 = "dtype";
  v75.var1 = 5;
  v36 = mlir::DictionaryAttr::get(&v58, v75);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 50;
    v38 = &v59;
    v39 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v56 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v39 = v63;
        v38 = (v63 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v38 = &v59;
        v39 = v63;
      }
    }

    v40 = &v39[24 * v64];
    v41 = *v38;
    *(v40 + 2) = *(v38 + 2);
    *v40 = v41;
    ++v64;
    if (v62[0])
    {
      v42 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
      v43 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v43 = v63;
          v42 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v42 = &v59;
          v43 = v63;
        }
      }

      v44 = &v43[24 * v64];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }
  }

  if (v72)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v70;
      v48 = __p;
      if (v70 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v70 = v46;
      operator delete(v48);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v49 = v68;
    v23 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v21;
      operator delete(v23);
LABEL_70:
      if (v63 != v66)
      {
        free(v63);
      }

      return 0;
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
LABEL_68:
    v23 = v67;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::mps::DequantizeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "axis", 4, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "dtype", 5, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::DequantizeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1) & 1;
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::DequantizeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1) & 1;
    }
  }

  return 0;
}

void mlir::mps::DequantizeOp::build(mlir::Float32Type **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a2;
  v16 = 0;
  v15 = mlir::OpBuilder::create<mlir::mps::ConstantOp,float>(a1, v14, &v16);
  mlir::mps::DequantizeOp::build(a1, a2, a3, a4, a5, v15 - 16, a6, a7);
}

{
  v14 = *a2;
  v16 = 0;
  v15 = mlir::OpBuilder::create<mlir::mps::ConstantOp,float>(a1, v14, &v16);
  mlir::mps::DequantizeOp::build(a1, a2, a3, a4, a5, v15 - 16, a6, a7);
}

void mlir::mps::DequantizeOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v30 = a4;
  v31 = a3;
  v28 = a6;
  v29 = a5;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  v12 = mlir::TypeAttr::get(a7);
  v13 = *(a2 + 256);
  if (!v13)
  {
    v14 = operator new(0x10uLL);
    *v14 = 0;
    v14[1] = 0;
    *(a2 + 256) = v14;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DequantizeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v13 = *(a2 + 256);
  }

  *(v13 + 8) = v12;
  if (a8)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      v16 = operator new(0x10uLL);
      *v16 = 0;
      v16[1] = 0;
      *(a2 + 256) = v16;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::DequantizeOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v15 = *(a2 + 256);
    }

    *v15 = a8;
  }

  __src = v36;
  v35 = 0x200000000;
  v17 = *a1;
  mlir::ValueRange::ValueRange(v33, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v20 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v32, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DequantizeOp::inferReturnTypes(v17, v21, v22, v33[0], v33[1], Dictionary, v20, v23, v32[0], v32[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = __src;
  v25 = v35;
  v26 = *(a2 + 72);
  v27 = v26 + v35;
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
  if (__src != v36)
  {
    free(__src);
  }
}

{
  v35[2] = *MEMORY[0x1E69E9840];
  v29 = a4;
  v30 = a3;
  v27 = a6;
  v28 = a5;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    v13 = operator new(0x10uLL);
    *v13 = 0;
    v13[1] = 0;
    *(a2 + 256) = v13;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::DequantizeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v12 = *(a2 + 256);
  }

  *(v12 + 8) = a7;
  if (a8)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      v15 = operator new(0x10uLL);
      *v15 = 0;
      v15[1] = 0;
      *(a2 + 256) = v15;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::DequantizeOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v14 = *(a2 + 256);
    }

    *v14 = a8;
  }

  __src = v35;
  v34 = 0x200000000;
  v16 = *a1;
  mlir::ValueRange::ValueRange(v32, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v19 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v31, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DequantizeOp::inferReturnTypes(v16, v20, v21, v32[0], v32[1], Dictionary, v19, v22, v31[0], v31[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v23 = __src;
  v24 = v34;
  v25 = *(a2 + 72);
  v26 = v25 + v34;
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
  if (__src != v35)
  {
    free(__src);
  }
}

void mlir::mps::DequantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
      v18 = operator new(0x10uLL);
      *v18 = 0;
      v18[1] = 0;
      *(a2 + 256) = v18;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v24;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v23;
      {
        mlir::mps::DequantizeOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DequantizeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

BOOL mlir::mps::DequantizeOp::verifyInvariantsImpl(const char **this)
{
  v139 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[16 * ((*(*this + 11) >> 23) & 1)];
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    v127 = v2;
    if ((mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v4, "dtype", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v127) & 1) == 0)
    {
      return 0;
    }

    v127 = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v5, "axis", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v127) & 1) == 0)
    {
      return 0;
    }

    v6 = *this;
    v7 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = *v7;
    v9 = *(*v7 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_57;
    }

    {
      v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v12 = *(v8 + 8);
      v13 = *(v8 + 16);
      if (!v13)
      {
        goto LABEL_41;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v12 = *(v8 + 8);
      v13 = *(v8 + 16);
      if (!v13)
      {
        goto LABEL_41;
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
      v29 = v14[1];
LABEL_43:
      v127 = v7;
      v128 = v29;
      isSplat = mlir::ElementsAttr::isSplat(&v127);
      if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        goto LABEL_118;
      }

      v8 = *v7;
      v9 = *(*v7 + 136);
LABEL_57:
      if (v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
LABEL_88:
        v123 = 261;
        v121 = "operand";
        v122 = 7;
        mlir::Operation::emitOpError(v6, &v121, &v127);
        if (v127)
        {
          LODWORD(isSplat) = 3;
          v125 = " #";
          v126 = 2;
          p_isSplat = &isSplat;
          v42 = v129;
          if (v130 >= v131)
          {
            if (v129 <= &isSplat && v129 + 24 * v130 > &isSplat)
            {
              v113 = &isSplat - v129;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
              v42 = v129;
              p_isSplat = (v129 + v113);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
              p_isSplat = &isSplat;
              v42 = v129;
            }
          }

          v43 = &v42[24 * v130];
          v44 = *p_isSplat;
          *(v43 + 2) = p_isSplat[2];
          *v43 = v44;
          v45 = ++v130;
          if (v127)
          {
            LODWORD(isSplat) = 5;
            v125 = 0;
            v46 = &isSplat;
            v47 = v129;
            if (v45 >= v131)
            {
              if (v129 <= &isSplat && v129 + 24 * v45 > &isSplat)
              {
                v115 = &isSplat - v129;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v45 + 1, 24);
                v47 = v129;
                v46 = (v129 + v115);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v45 + 1, 24);
                v46 = &isSplat;
                v47 = v129;
              }
            }

            v48 = &v47[24 * v130];
            v49 = *v46;
            *(v48 + 2) = v46[2];
            *v48 = v49;
            v50 = ++v130;
            if (v127)
            {
              LODWORD(isSplat) = 3;
              v125 = " must be tensor of mps native type values or tensor of quantized values, but got ";
              v126 = 81;
              v51 = &isSplat;
              v52 = v129;
              if (v50 >= v131)
              {
                if (v129 <= &isSplat && v129 + 24 * v50 > &isSplat)
                {
                  v117 = &isSplat - v129;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v50 + 1, 24);
                  v52 = v129;
                  v51 = (v129 + v117);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v50 + 1, 24);
                  v51 = &isSplat;
                  v52 = v129;
                }
              }

              v53 = &v52[24 * v130];
              v54 = *v51;
              *(v53 + 2) = v51[2];
              *v53 = v54;
              ++v130;
              if (v127)
              {
                v55 = &isSplat;
                mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v7);
                v56 = v129;
                if (v130 >= v131)
                {
                  if (v129 <= &isSplat && v129 + 24 * v130 > &isSplat)
                  {
                    v119 = &isSplat - v129;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                    v56 = v129;
                    v55 = (v129 + v119);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                    v55 = &isSplat;
                    v56 = v129;
                  }
                }

                v57 = &v56[24 * v130];
                v58 = *v55;
                *(v57 + 2) = v55[2];
                *v57 = v58;
                ++v130;
              }
            }
          }
        }

        v59 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v127);
        if (v127)
        {
          mlir::InFlightDiagnostic::report(&v127);
        }

        if (v138 == 1)
        {
          if (v137 != &v138)
          {
            free(v137);
          }

          v60 = __p;
          if (__p)
          {
            v61 = v136;
            v62 = __p;
            if (v136 != __p)
            {
              do
              {
                v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
              }

              while (v61 != v60);
              v62 = __p;
            }

            v136 = v60;
            operator delete(v62);
          }

          v63 = v133;
          if (v133)
          {
            v64 = v134;
            v65 = v133;
            if (v134 != v133)
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
              v65 = v133;
            }

            v134 = v63;
            operator delete(v65);
          }

          if (v129 != v132)
          {
            free(v129);
          }
        }

        if (!v59)
        {
          return 0;
        }

LABEL_118:
        if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
        {
          return 0;
        }

        v68 = *this;
        v69 = *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
        v70 = *v69;
        v71 = *(*v69 + 136);
        if (v71 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v71 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          goto LABEL_162;
        }

        {
          v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v74 = *(v70 + 8);
          v75 = *(v70 + 16);
          if (v75)
          {
            goto LABEL_126;
          }
        }

        else
        {
          mlir::arith::ExtUIOp::fold();
          v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v74 = *(v70 + 8);
          v75 = *(v70 + 16);
          if (v75)
          {
LABEL_126:
            v76 = v74;
            v77 = v75;
            do
            {
              v78 = v77 >> 1;
              v79 = &v76[2 * (v77 >> 1)];
              v81 = *v79;
              v80 = v79 + 2;
              v77 += ~(v77 >> 1);
              if (v81 < v73)
              {
                v76 = v80;
              }

              else
              {
                v77 = v78;
              }
            }

            while (v77);
LABEL_146:
            if (v76 != &v74[2 * v75] && *v76 == v73)
            {
              v82 = v76[1];
            }

            else
            {
              v82 = 0;
            }

            v127 = v69;
            v128 = v82;
            v121 = mlir::ElementsAttr::isSplat(&v127);
            if (mlir::Type::isSignedInteger(&v121, 2) || mlir::Type::isSignedInteger(&v121, 4) || mlir::Type::isSignedInteger(&v121, 8) || mlir::Type::isSignedInteger(&v121, 16) || mlir::Type::isSignedInteger(&v121, 32) || mlir::Type::isUnsignedInteger(&v121, 1) || mlir::Type::isUnsignedInteger(&v121, 2) || mlir::Type::isUnsignedInteger(&v121, 4) || mlir::Type::isUnsignedInteger(&v121, 8) || mlir::Type::isUnsignedInteger(&v121, 16) || mlir::Type::isUnsignedInteger(&v121, 32) || *(*v121 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
            {
LABEL_192:
              if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 3u))
              {
                if (*(*this + 9))
                {
                  v110 = (*this - 16);
                }

                else
                {
                  v110 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v110, 0);
                return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
              }

              return 0;
            }

LABEL_162:
            v123 = 261;
            v121 = "operand";
            v122 = 7;
            mlir::Operation::emitOpError(v68, &v121, &v127);
            if (v127)
            {
              LODWORD(isSplat) = 3;
              v125 = " #";
              v126 = 2;
              v83 = &isSplat;
              v84 = v129;
              if (v130 >= v131)
              {
                if (v129 <= &isSplat && v129 + 24 * v130 > &isSplat)
                {
                  v114 = &isSplat - v129;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                  v84 = v129;
                  v83 = (v129 + v114);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                  v83 = &isSplat;
                  v84 = v129;
                }
              }

              v85 = &v84[24 * v130];
              v86 = *v83;
              *(v85 + 2) = v83[2];
              *v85 = v86;
              v87 = ++v130;
              if (v127)
              {
                LODWORD(isSplat) = 5;
                v125 = 2;
                v88 = &isSplat;
                v89 = v129;
                if (v87 >= v131)
                {
                  if (v129 <= &isSplat && v129 + 24 * v87 > &isSplat)
                  {
                    v116 = &isSplat - v129;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v87 + 1, 24);
                    v89 = v129;
                    v88 = (v129 + v116);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v87 + 1, 24);
                    v88 = &isSplat;
                    v89 = v129;
                  }
                }

                v90 = &v89[24 * v130];
                v91 = *v88;
                *(v90 + 2) = v88[2];
                *v90 = v91;
                v92 = ++v130;
                if (v127)
                {
                  LODWORD(isSplat) = 3;
                  v125 = " must be tensor of quantized values, but got ";
                  v126 = 45;
                  v93 = &isSplat;
                  v94 = v129;
                  if (v92 >= v131)
                  {
                    if (v129 <= &isSplat && v129 + 24 * v92 > &isSplat)
                    {
                      v118 = &isSplat - v129;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v92 + 1, 24);
                      v94 = v129;
                      v93 = (v129 + v118);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v92 + 1, 24);
                      v93 = &isSplat;
                      v94 = v129;
                    }
                  }

                  v95 = &v94[24 * v130];
                  v96 = *v93;
                  *(v95 + 2) = v93[2];
                  *v95 = v96;
                  ++v130;
                  if (v127)
                  {
                    v97 = &isSplat;
                    mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v69);
                    v98 = v129;
                    if (v130 >= v131)
                    {
                      if (v129 <= &isSplat && v129 + 24 * v130 > &isSplat)
                      {
                        v120 = &isSplat - v129;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                        v98 = v129;
                        v97 = (v129 + v120);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                        v97 = &isSplat;
                        v98 = v129;
                      }
                    }

                    v99 = &v98[24 * v130];
                    v100 = *v97;
                    *(v99 + 2) = v97[2];
                    *v99 = v100;
                    ++v130;
                  }
                }
              }
            }

            v101 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v127);
            if (v127)
            {
              mlir::InFlightDiagnostic::report(&v127);
            }

            if (v138 == 1)
            {
              if (v137 != &v138)
              {
                free(v137);
              }

              v102 = __p;
              if (__p)
              {
                v103 = v136;
                v104 = __p;
                if (v136 != __p)
                {
                  do
                  {
                    v103 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v103 - 1);
                  }

                  while (v103 != v102);
                  v104 = __p;
                }

                v136 = v102;
                operator delete(v104);
              }

              v105 = v133;
              if (v133)
              {
                v106 = v134;
                v107 = v133;
                if (v134 != v133)
                {
                  do
                  {
                    v109 = *--v106;
                    v108 = v109;
                    *v106 = 0;
                    if (v109)
                    {
                      operator delete[](v108);
                    }
                  }

                  while (v106 != v105);
                  v107 = v133;
                }

                v134 = v105;
                operator delete(v107);
              }

              if (v129 != v132)
              {
                free(v129);
              }
            }

            if (!v101)
            {
              return 0;
            }

            goto LABEL_192;
          }
        }

        v75 = 0;
        v76 = v74;
        goto LABEL_146;
      }

      {
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = *(v8 + 8);
        v33 = *(v8 + 16);
        if (!v33)
        {
          goto LABEL_74;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = *(v8 + 8);
        v33 = *(v8 + 16);
        if (!v33)
        {
          goto LABEL_74;
        }
      }

      v34 = v32;
      v35 = v33;
      do
      {
        v36 = v35 >> 1;
        v37 = &v34[2 * (v35 >> 1)];
        v39 = *v37;
        v38 = v37 + 2;
        v35 += ~(v35 >> 1);
        if (v39 < v31)
        {
          v34 = v38;
        }

        else
        {
          v35 = v36;
        }
      }

      while (v35);
      if (v34 != &v32[2 * v33] && *v34 == v31)
      {
        v40 = v34[1];
        goto LABEL_76;
      }

LABEL_74:
      v40 = 0;
LABEL_76:
      v121 = v7;
      v122 = v40;
      isSplat = mlir::ElementsAttr::isSplat(&v121);
      if (mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
      {
        goto LABEL_118;
      }

      goto LABEL_88;
    }

LABEL_41:
    v29 = 0;
    goto LABEL_43;
  }

  v121 = "requires attribute 'dtype'";
  v123 = 259;
  mlir::OpState::emitOpError(this, &v121, &v127);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v127);
  if (v127)
  {
    mlir::InFlightDiagnostic::report(&v127);
  }

  if (v138 == 1)
  {
    if (v137 != &v138)
    {
      free(v137);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v136;
      v23 = __p;
      if (v136 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v136 = v21;
      operator delete(v23);
    }

    v24 = v133;
    if (v133)
    {
      v25 = v134;
      v26 = v133;
      if (v134 != v133)
      {
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
        v26 = v133;
      }

      v134 = v24;
      operator delete(v26);
    }

    if (v129 != v132)
    {
      free(v129);
    }
  }

  return v20;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::DequantizeOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.dequantize", 14, a3, v10, a4, a5);
  *v11 = &unk_1F5B27600;
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

void mlir::mps::DimensionSizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  __src = v24;
  v23 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v7 = mlir::ValueRange::ValueRange(&v20, *(a2 + 224), *(a2 + 232));
  v8.var0.var0 = 1;
  if (!mlir::mps::DimensionSizeOp::inferReturnTypes(v7, v5, v8, v21[0], v21[1], v9, v10, v11, v16, v17, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = __src;
  v13 = v23;
  v14 = *(a2 + 72);
  v15 = v14 + v23;
  if (v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v15, 8);
    LODWORD(v14) = *(a2 + 72);
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v14), v12, 8 * v13);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_23;
  }

  v12 = a1;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v9 + 8);
    v15 = *(v9 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v56 = v9;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  if (mlir::Type::isSignedInteger(v57, 32))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v57, 64);
  a1 = v12;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_23:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v25 = &v59;
        v26 = v63;
      }
    }

    v27 = &v26[24 * v64];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of mps index type values, but got ";
        v61 = 50;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v40 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = v63;
              v39 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v39 = &v59;
              v40 = v63;
            }
          }

          v41 = &v40[24 * v64];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v64;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
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
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::DimensionSizeOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.dimension_size", 18, a3, v10, a4, a5);
  *v11 = &unk_1F5B276A0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::DiracOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.dirac", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B27740;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::DivideOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.divide", 10, a3, v10, a4, a5);
  *v11 = &unk_1F5B277E0;
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

uint64_t mlir::mps::DynamicShapeCastOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "unranked";
  v56.var1 = 8;
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
    v43 = 53;
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

uint64_t mlir::mps::DynamicShapeCastOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "unranked", 8, *a2);
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

BOOL mlir::mps::DynamicShapeCastOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::DynamicShapeCastOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256));
}

void mlir::mps::DynamicShapeCastOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v24 = a4;
  v25 = a3;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  if (a4)
  {
    mlir::OperationState::addOperands(a2, &v24, 1uLL);
  }

  if (a5)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v9);
    v11 = *(a2 + 256);
    if (!v11)
    {
      v12 = operator new(8uLL);
      *v12 = 0;
      *(a2 + 256) = v12;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::DynamicShapeCastOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v11 = *(a2 + 256);
    }

    *v11 = UnitAttr;
  }

  __src = v30;
  v29 = 0x200000000;
  v13 = *a1;
  mlir::ValueRange::ValueRange(v27, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DynamicShapeCastOp::inferReturnTypes(v13, v17, v18, v27[0], v27[1], Dictionary, v16, v19, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = __src;
  v21 = v29;
  v22 = *(a2 + 72);
  v23 = v22 + v29;
  if (v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v23, 8);
    LODWORD(v22) = *(a2 + 72);
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v21);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::DynamicShapeCastOp::verifyInvariantsImpl(mlir::mps::DynamicShapeCastOp *this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v41[0] = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "unranked", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
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
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v4, (*(*(*(v4 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::DynamicShapeCastOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.dynamic_shape_cast", 22, a3, v10, a4, a5);
  *v11 = &unk_1F5B27880;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::EluOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.elu", 7, a3, v10, a4, a5);
  *v11 = &unk_1F5B27920;
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

void mlir::mps::EqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a3;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  __src = v18;
  v17 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(v15, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v14, *(a2 + 224), *(a2 + 232));
  v7.var0.var0 = 1;
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v8 = __src;
  v9 = v17;
  v10 = *(a2 + 72);
  v11 = v10 + v17;
  if (v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11, 8);
    LODWORD(v10) = *(a2 + 72);
  }

  if (v9)
  {
    memcpy((*(a2 + 64) + 8 * v10), v8, 8 * v9);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + v9;
  if (__src != v18)
  {
    free(__src);
  }
}

void mlir::mps::EqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v22[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v11, 16);
    LODWORD(v11) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v22;
  v21 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v19, *(a2 + 224), *(a2 + 232));
  v14.var0.var0 = 1;
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = __src;
  v16 = v21;
  v17 = *(a2 + 72);
  v18 = v17 + v21;
  if (v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18, 8);
    LODWORD(v17) = *(a2 + 72);
  }

  if (v16)
  {
    memcpy((*(a2 + 64) + 8 * v17), v15, 8 * v16);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v22)
  {
    free(__src);
  }
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = a1;
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v9 + 8);
      v15 = *(v9 + 16);
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v9 + 8);
      v15 = *(v9 + 16);
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    v16 = v14;
    v17 = v15;
    do
    {
      v18 = v17 >> 1;
      v19 = &v16[2 * (v17 >> 1)];
      v21 = *v19;
      v20 = v19 + 2;
      v17 += ~(v17 >> 1);
      if (v21 < v13)
      {
        v16 = v20;
      }

      else
      {
        v17 = v18;
      }
    }

    while (v17);
    if (v16 != &v14[2 * v15] && *v16 == v13)
    {
      v22 = v16[1];
LABEL_20:
      v61[0] = a2;
      v61[1] = v22;
      v56[0] = mlir::ElementsAttr::isSplat(v61);
      v23 = 1;
      isSignlessInteger = mlir::Type::isSignlessInteger(v56, 1);
      a1 = v12;
      if (isSignlessInteger)
      {
        return v23;
      }

      goto LABEL_21;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

LABEL_21:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(a1, v56, v61);
  if (v61[0])
  {
    v58 = 3;
    v59 = " #";
    v60 = 2;
    v25 = &v58;
    v26 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v52 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v26 = v62;
        v25 = (v62 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v25 = &v58;
        v26 = v62;
      }
    }

    v27 = &v26[24 * v63];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v63;
    if (v61[0])
    {
      v58 = 5;
      v59 = a5;
      v30 = &v58;
      v31 = v62;
      if (v29 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v29 > &v58)
        {
          v53 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v29 + 1, 24);
          v31 = v62;
          v30 = (v62 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v29 + 1, 24);
          v30 = &v58;
          v31 = v62;
        }
      }

      v32 = &v31[24 * v63];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v63;
      if (v61[0])
      {
        v58 = 3;
        v59 = " must be tensor of 1-bit signless integer values, but got ";
        v60 = 58;
        v35 = &v58;
        v36 = v62;
        if (v34 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v34 > &v58)
          {
            v54 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v34 + 1, 24);
            v36 = v62;
            v35 = (v62 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v34 + 1, 24);
            v35 = &v58;
            v36 = v62;
          }
        }

        v37 = &v36[24 * v63];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v63;
        if (v61[0])
        {
          v39 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v40 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v55 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v40 = v62;
              v39 = (v62 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v39 = &v58;
              v40 = v62;
            }
          }

          v41 = &v40[24 * v63];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v63;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v69;
      v45 = __p;
      if (v69 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v69 = v43;
      operator delete(v45);
    }

    v46 = v66;
    if (v66)
    {
      v47 = v67;
      v48 = v66;
      if (v67 != v66)
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
        v48 = v66;
      }

      v67 = v46;
      operator delete(v48);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v23;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::EqualToOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.equal", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B279C0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ErfOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.erf", 7, a3, v10, a4, a5);
  *v11 = &unk_1F5B27A60;
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

void mlir::mps::ExpandDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  __src = v23;
  v22 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v7 = mlir::ValueRange::ValueRange(&v19, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::ExpandDimsOp::inferReturnTypes(v7, v5, 1, v20[0], v20[1], v8, v9, v10, v15, v16, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v11 = __src;
  v12 = v22;
  v13 = *(a2 + 72);
  v14 = v13 + v22;
  if (v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v14, 8);
    LODWORD(v13) = *(a2 + 72);
  }

  if (v12)
  {
    memcpy((*(a2 + 64) + 8 * v13), v11, 8 * v12);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (__src != v23)
  {
    free(__src);
  }
}

void mlir::mps::ExpandDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v11, 16);
    LODWORD(v11) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v27;
  v26 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = mlir::ValueRange::ValueRange(&v24, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::ExpandDimsOp::inferReturnTypes(v14, v12, 1, a3, a4, v15, v16, v17, v22, v23, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = __src;
  v19 = v26;
  v20 = *(a2 + 72);
  v21 = v20 + v26;
  if (v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v21, 8);
    LODWORD(v20) = *(a2 + 72);
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v20), v18, 8 * v19);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v27)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ExpandDimsOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.expand_dims", 15, a3, v10, a4, a5);
  *v11 = &unk_1F5B27B00;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ExponentBase10Op>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.exponent_base_10", 20, a3, v10, a4, a5);
  *v11 = &unk_1F5B27BA0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ExponentBase2Op>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.exponent_base_2", 19, a3, v10, a4, a5);
  *v11 = &unk_1F5B27C40;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ExponentOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.exponent", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B27CE0;
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

uint64_t mlir::mps::FastFourierTransformOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v58 = v6;
  if (!v6)
  {
    a3(v62, a4);
    if (v62[0])
    {
      v59 = 3;
      v60 = "expected DictionaryAttr to set properties";
      v61 = 41;
      v26 = &v59;
      v27 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v27 = v63;
          v26 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v26 = &v59;
          v27 = v63;
        }
      }

      v28 = &v27[24 * v64];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }

    if (v72 != 1)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v70;
      v32 = __p;
      if (v70 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v70 = v30;
      operator delete(v32);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
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
    goto LABEL_68;
  }

  v74.var0 = "inverse";
  v74.var1 = 7;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 52;
        v10 = &v59;
        v11 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v11 = v63;
            v10 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v10 = &v59;
            v11 = v63;
          }
        }

        v12 = &v11[24 * v64];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v64;
        if (v62[0])
        {
          v14 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v15 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v15 = v63;
              v14 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v14 = &v59;
              v15 = v63;
            }
          }

          v16 = &v15[24 * v64];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v64;
          if (v62[0])
          {
            mlir::InFlightDiagnostic::report(v62);
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return 0;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v70;
        v20 = __p;
        if (v70 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v70 = v18;
        operator delete(v20);
      }

      v21 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v22 = v68;
      v23 = v67;
      if (v68 == v67)
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

  v75.var0 = "scaling_mode";
  v75.var1 = 12;
  v36 = mlir::DictionaryAttr::get(&v58, v75);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 57;
    v38 = &v59;
    v39 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v56 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v39 = v63;
        v38 = (v63 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v38 = &v59;
        v39 = v63;
      }
    }

    v40 = &v39[24 * v64];
    v41 = *v38;
    *(v40 + 2) = *(v38 + 2);
    *v40 = v41;
    ++v64;
    if (v62[0])
    {
      v42 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
      v43 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v43 = v63;
          v42 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v42 = &v59;
          v43 = v63;
        }
      }

      v44 = &v43[24 * v64];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }
  }

  if (v72)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v70;
      v48 = __p;
      if (v70 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v70 = v46;
      operator delete(v48);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v49 = v68;
    v23 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v21;
      operator delete(v23);
LABEL_70:
      if (v63 != v66)
      {
        free(v63);
      }

      return 0;
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
LABEL_68:
    v23 = v67;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::mps::FastFourierTransformOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "inverse", 7, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "scaling_mode", 12, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid FFT scaling mode";
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

uint64_t mlir::mps::FastFourierTransformOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::mps::FFTScalingModeAttr>(a1, v3 + 1) & 1;
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::FastFourierTransformOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::mps::FFTScalingModeAttr>(a1, v3 + 1) & 1;
    }
  }

  return 0;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::FFTScalingModeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::FFTScalingModeAttr]";
  v38 = 79;
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

void mlir::mps::FastFourierTransformOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = a4;
  v34 = a3;
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  v10 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v40 = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v41 = v10;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v38 = &v40;
  v36 = a5;
  v12 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v12);
  v35 = &v36;
  v42 = &v36;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 32) >> 15) ^ (-348639895 * (v12 ^ (v13 >> 47) ^ v13))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v35, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v42);
  v16 = ParametricStorageTypeImpl;
  v17 = *(a2 + 256);
  if (v17)
  {
    *(v17 + 8) = ParametricStorageTypeImpl;
    if (!a6)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v18 = operator new(0x10uLL);
  *v18 = 0;
  v18[1] = 0;
  *(a2 + 256) = v18;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::FastFourierTransformOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 8) = v16;
  if (a6)
  {
LABEL_7:
    UnitAttr = mlir::Builder::getUnitAttr(a1, v15);
    v20 = *(a2 + 256);
    if (!v20)
    {
      v21 = operator new(0x10uLL);
      *v21 = 0;
      v21[1] = 0;
      *(a2 + 256) = v21;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::FastFourierTransformOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v20 = *(a2 + 256);
    }

    *v20 = UnitAttr;
  }

LABEL_12:
  __src = v39;
  v38 = 0x200000000;
  v22 = *a1;
  mlir::ValueRange::ValueRange(&v42, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v25 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v40, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::FastFourierTransformOp::inferReturnTypes(v22, v26, v27, v42, p_src, Dictionary, v25, v28, v40, v41, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v29 = __src;
  v30 = v38;
  v31 = *(a2 + 72);
  v32 = v31 + v38;
  if (v32 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v32, 8);
    LODWORD(v31) = *(a2 + 72);
  }

  if (v30)
  {
    memcpy((*(a2 + 64) + 8 * v31), v29, 8 * v30);
    LODWORD(v31) = *(a2 + 72);
  }

  *(a2 + 72) = v31 + v30;
  if (__src != v39)
  {
    free(__src);
  }
}

BOOL mlir::mps::FastFourierTransformOp::verifyInvariantsImpl(mlir::mps::FastFourierTransformOp *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    v20[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(v4, "scaling_mode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) != 0 && (v20[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "inverse", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps27(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 36))
      {
        v6 = *this - 16;
      }

      else
      {
        v6 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps20(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18 = "requires attribute 'scaling_mode'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
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
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps27(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v94 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_24;
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
  if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
  {
    return 1;
  }

  v9 = *a2;
  v10 = *(*a2 + 136);
  a1 = v22;
LABEL_24:
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_45;
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
      goto LABEL_31;
    }

LABEL_41:
    v36 = a1;
    v37 = 0;
    goto LABEL_43;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v26 = *(v9 + 8);
  v27 = *(v9 + 16);
  if (!v27)
  {
    goto LABEL_41;
  }

LABEL_31:
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
    goto LABEL_41;
  }

  v36 = a1;
  v37 = v28[1];
LABEL_43:
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
        goto LABEL_45;
      }
    }

    return 1;
  }

  a1 = v36;
LABEL_45:
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
        v81 = " must be tensor of floating point values or tensor of complex values, but got ";
        v82 = 78;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::FastFourierTransformOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.fast_fourier_transform", 26, a3, v10, a4, a5);
  *v11 = &unk_1F5B27D80;
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

void mlir::mps::Flatten2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  __src = v23;
  v22 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v7 = mlir::ValueRange::ValueRange(&v19, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::Flatten2DOp::inferReturnTypes(v7, v5, 1, v20[0], v20[1], v8, v9, v10, v15, v16, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v11 = __src;
  v12 = v22;
  v13 = *(a2 + 72);
  v14 = v13 + v22;
  if (v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v14, 8);
    LODWORD(v13) = *(a2 + 72);
  }

  if (v12)
  {
    memcpy((*(a2 + 64) + 8 * v13), v11, 8 * v12);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (__src != v23)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::Flatten2DOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.flatten_2d", 14, a3, v10, a4, a5);
  *v11 = &unk_1F5B27E20;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::FloorDivideOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.floor_divide", 16, a3, v10, a4, a5);
  *v11 = &unk_1F5B27EC0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::FloorOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.floor", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B27F60;
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

uint64_t mlir::mps::GRUGradientOp::getAsmResultNames(uint64_t *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  a2(a3, NextResultAtOffset, "gradient_output_sequence", 24);
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 1);
  v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  a2(a3, v9, "gradient_recurrent_weight", 25);
  if (*(*a1 + 36))
  {
    v10 = *a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 2);
  v12 = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  a2(a3, v12, "gradient_input_state", 20);
  v13 = *a1;
  v14 = *(*a1 + 36);
  v15 = v13 - 16;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 3);
  if (v14 != 3)
  {
    v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(result, 0);

    return (a2)(a3, v18, "gradient_bias", 13);
  }

  return result;
}

uint64_t mlir::mps::GRUGradientOp::getODSResults(mlir::mps::GRUGradientOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (a2)
  {
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
LABEL_14:
      v26 = a2 - v4;
      v27 = &dword_1E097EB2C + v4;
      do
      {
        v28 = *v27++;
        v5 += v28;
        --v26;
      }

      while (v26);
      goto LABEL_16;
    }

    if (a2 >= 0x20)
    {
      v6 = 0uLL;
      v7 = "hared_ptr_emplaceIN4mlir16ThreadLocalCacheIPNS1_14StorageUniquer16StorageAllocatorEE16PerInstanceStateENS_9allocatorIS7_EEEE";
      v8 = 0uLL;
      v4 = a2 & 0xFFFFFFE0;
      v9 = v4;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      do
      {
        v16 = *v7[-2].i8;
        v17 = vmovl_u8(*v16.i8);
        v18 = vmovl_high_u8(v16);
        v19 = vmovl_u8(*v7);
        v20 = vmovl_high_u8(*v7->i8);
        v11 = vaddw_high_u16(v11, v18);
        v10 = vaddw_u16(v10, *v18.i8);
        v8 = vaddw_high_u16(v8, v17);
        v6 = vaddw_u16(v6, *v17.i8);
        v15 = vaddw_high_u16(v15, v20);
        v14 = vaddw_u16(v14, *v20.i8);
        v13 = vaddw_high_u16(v13, v19);
        v12 = vaddw_u16(v12, *v19.i8);
        v7 += 4;
        v9 -= 32;
      }

      while (v9);
      a4 = vaddq_s32(vaddq_s32(v13, v8), vaddq_s32(v15, v11));
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v12, v6), vaddq_s32(v14, v10)), a4));
      if (v4 == a2)
      {
        goto LABEL_16;
      }

      if ((a2 & 0x1C) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v21 = v4;
    v4 = a2 & 0xFFFFFFFC;
    v22 = v5;
    v23 = (&dword_1E097EB2C + v21);
    v24 = v21 - v4;
    do
    {
      v25 = *v23++;
      a4.i32[0] = v25;
      a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
      v22 = vaddw_u16(v22, *a4.i8);
      v24 += 4;
    }

    while (v24);
    v5 = vaddvq_s32(v22);
    if (v4 == a2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = 0;
LABEL_16:
  v29 = *(*this + 36);
  if (v29)
  {
    result = *this - 16;
  }

  else
  {
    result = 0;
  }

  if (a2 + (v29 - 4) * v5)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(result, a2 + (v29 - 4) * v5);
  }

  return result;
}