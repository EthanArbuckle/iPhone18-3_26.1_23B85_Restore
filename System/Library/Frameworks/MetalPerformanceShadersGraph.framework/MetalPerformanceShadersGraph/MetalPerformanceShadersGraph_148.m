uint64_t *mlir::RewritePatternSet::add<mlir::mps::Conv2DWeightsGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.conv_2d_weights_gradient", 28, a3, v10, a4, a5);
  *v11 = &unk_1F5B26700;
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

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(uint64_t *a1)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v9, v2, NumElements);
  v12 = v10;
  v13 = v11;
  v4 = v9[2];
  v5 = v11;
  while (v5 != v4)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v12, &v14);
    v6 = v15;
    result = v14;
    v15 = 0;
    if (v6 <= 0x40)
    {
      if (!v14)
      {
        return result;
      }
    }

    else
    {
      v8 = *v14;
      if (v14)
      {
        operator delete[](v14);
        if (v15 >= 0x41)
        {
          if (v14)
          {
            operator delete[](v14);
          }
        }
      }

      if (!v8)
      {
        return 0;
      }
    }

    v5 = v13 + 1;
    *&v13 = v13 + 1;
  }

  return 1;
}

BOOL mlir::mps::Conv3DDataGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps15(v8, "data_layout", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps14(v10, "explicit_padding", 0x10, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(v11, "groups", 6, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v12, "padding_style", 0xD, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(v13, "strides", 7, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps16(v14, "weights_layout", 0xE, a3, a4) & 1) != 0)
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps15(_DWORD *a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id && (a1[2] - 7) < 2)
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
        v28 = "' failed to satisfy constraint: valid TensorDataLayout is one of NDHWC or NCDHW";
        v29 = 79;
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(void *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
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
      v86 = 5;
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
        *(&v72 + 1) = "' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps14(void *a1, void *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
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
    v79 = xmmword_1E0982930;
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
        v64 = "' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps16(_DWORD *a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id && (a1[2] - 9) < 2)
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
        v28 = "' failed to satisfy constraint: valid TensorDataLayout is one of DHWIO or OIDHW";
        v29 = 79;
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

uint64_t mlir::mps::Conv3DDataGradientOp::readProperties(uint64_t a1, uint64_t a2)
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::Conv3DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

void mlir::mps::Conv3DDataGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, unsigned int a13, unsigned int a14, unsigned int a15)
{
  v17 = mlir::mps::get5DElementsAttrFrom3DSpatialValues(a1, a7, a8, a14);
  v18 = mlir::mps::get5DElementsAttrFrom3DSpatialValues(a1, a9, a10, a14);
  v24 = mlir::mps::get5DElementsAttrFrom3DPaddingValues(a1, a11, a12, a14);

  mlir::mps::Conv3DDataGradientOp::build(a1, a2, a3, a4, a5, a6, v17, v18, v24, a13, a14, a15);
}

void mlir::mps::Conv3DDataGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  v76 = *MEMORY[0x1E69E9840];
  v65 = a4;
  v66 = a3;
  v64 = a5;
  mlir::OperationState::addOperands(a2, &v66, 1uLL);
  mlir::OperationState::addOperands(a2, &v65, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v64, 1uLL);
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv3DDataGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv3DDataGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v27 = *(a2 + 256);
  }

LABEL_20:
  *(v27 + 16) = v26;
  v32 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v72 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v73 = v32;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v70 = &v72;
  v68 = v23;
  v34 = 0x9DDFEA08EB382D69 * (((8 * v23) | 4) ^ v23 ^ 0xFF51AFD7ED558CCDLL);
  v35 = 0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ (v34 >> 47) ^ v34);
  v67 = &v68;
  v74 = &v68;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v35 >> 47) ^ v35), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v67, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v74);
  v37 = *(a2 + 256);
  if (!v37)
  {
    v38 = operator new(0x38uLL);
    *v38 = 0u;
    v38[1] = 0u;
    v38[2] = 0u;
    *(v38 + 6) = 0;
    *(a2 + 256) = v38;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v37 = *(a2 + 256);
  }

  *(v37 + 32) = ParametricStorageTypeImpl;
  v39 = *a1;
  v40 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v72 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v73 = v39;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v70 = &v72;
  v68 = v25;
  v41 = 0x9DDFEA08EB382D69 * (((8 * v25) | 4) ^ v25 ^ 0xFF51AFD7ED558CCDLL);
  v42 = 0x9DDFEA08EB382D69 * (v25 ^ 0xFF51AFD7ED558CCDLL ^ (v41 >> 47) ^ v41);
  v67 = &v68;
  v74 = &v68;
  p_src = &__src;
  v43 = mlir::StorageUniquer::getParametricStorageTypeImpl(v40, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v42 >> 47) ^ v42), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v67, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v74);
  v44 = *(a2 + 256);
  if (!v44)
  {
    v45 = operator new(0x38uLL);
    *v45 = 0u;
    v45[1] = 0u;
    v45[2] = 0u;
    *(v45 + 6) = 0;
    *(a2 + 256) = v45;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v44 = *(a2 + 256);
  }

  *v44 = v43;
  v46 = *a1;
  v47 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v72 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v73 = v46;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v70 = &v72;
  v68 = a12;
  v48 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v49 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v48 >> 47) ^ v48);
  v67 = &v68;
  v74 = &v68;
  p_src = &__src;
  v50 = mlir::StorageUniquer::getParametricStorageTypeImpl(v47, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v49 >> 47) ^ v49), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v67, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v74);
  v51 = *(a2 + 256);
  if (!v51)
  {
    v52 = operator new(0x38uLL);
    *v52 = 0u;
    v52[1] = 0u;
    v52[2] = 0u;
    *(v52 + 6) = 0;
    *(a2 + 256) = v52;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v51 = *(a2 + 256);
  }

  *(v51 + 48) = v50;
  __src = v71;
  v70 = 0x200000000;
  v53 = *a1;
  mlir::ValueRange::ValueRange(&v74, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v56 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v72, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::Conv3DDataGradientOp::inferReturnTypes(v53, v57, v58, v74, p_src, Dictionary, v56, v59, v72, v73, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v60 = __src;
  v61 = v70;
  v62 = *(a2 + 72);
  v63 = v62 + v70;
  if (v63 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v63, 8);
    LODWORD(v62) = *(a2 + 72);
  }

  if (v61)
  {
    memcpy((*(a2 + 64) + 8 * v62), v60, 8 * v61);
    LODWORD(v62) = *(a2 + 72);
  }

  *(a2 + 72) = v62 + v61;
  if (__src != v71)
  {
    free(__src);
  }
}

BOOL mlir::mps::Conv3DDataGradientOp::verifyInvariantsImpl(mlir::mps::Conv3DDataGradientOp *this)
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
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(v9, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps14(v6, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v8, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps15(v3, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
  {
    return 0;
  }

  v74 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps16(v10, "weights_layout", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v74) & 1) == 0)
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
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps14(v52, (v53 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v49) & 1) == 0)
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
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps15(v60, (v61 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v49) & 1) == 0)
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

  if (v64 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps16(*this, (*(*(v63 + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v62) & 1) == 0)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps14(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps14(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v101 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_79;
    }

    goto LABEL_7;
  }

  {
    v31 = v10;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v31 + 8);
    v24 = *(v31 + 16);
    if (v24)
    {
      goto LABEL_18;
    }

LABEL_28:
    v32 = 0;
    goto LABEL_30;
  }

  v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v23 = *(v10 + 8);
  v24 = *(v10 + 16);
  if (!v24)
  {
    goto LABEL_28;
  }

LABEL_18:
  v25 = v23;
  v26 = v24;
  do
  {
    v27 = v26 >> 1;
    v28 = &v25[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v22)
    {
      v25 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v25 == &v23[2 * v24] || *v25 != v22)
  {
    goto LABEL_28;
  }

  v32 = v25[1];
LABEL_30:
  v90[0] = a2;
  v90[1] = v32;
  isSplat = mlir::ElementsAttr::isSplat(v90);
  if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v10 = *a2;
  v33 = *(*a2 + 136);
  if (v33 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v33 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_79;
  }

LABEL_7:
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v10 + 8);
    v15 = *(v10 + 16);
    if (!v15)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v35 = v10;
    mlir::arith::ExtUIOp::fold();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v35 + 8);
    v15 = *(v35 + 16);
    if (!v15)
    {
      goto LABEL_51;
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
    v36 = v16[1];
    goto LABEL_53;
  }

LABEL_51:
  v36 = 0;
LABEL_53:
  v83 = a2;
  v84 = v36;
  isSplat = mlir::ElementsAttr::isSplat(&v83);
  if (!mlir::Type::isSignlessInteger(&isSplat, 1) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 64) && !mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat) && *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_79;
  }

  v37 = *a2;
  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v37 + 8);
    v40 = *(v37 + 16);
    if (!v40)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v47 = v37;
    mlir::arith::ExtUIOp::fold();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v47 + 8);
    v40 = *(v47 + 16);
    if (!v40)
    {
      goto LABEL_78;
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
  if (v41 != &v39[2 * v40] && *v41 == v38)
  {
    v76 = v41[1];
    v87 = a2;
    v88 = v76;
    mlir::CallableOpInterface::getArgAttrsAttr(&v87);
    if (v77 < 5)
    {
      goto LABEL_79;
    }

    return 1;
  }

LABEL_78:
  v87 = a2;
  v88 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v87);
  if (v48 >= 5)
  {
    return 1;
  }

LABEL_79:
  v85 = 261;
  v83 = a3;
  v84 = a4;
  mlir::Operation::emitOpError(a1, &v83, v90);
  if (v90[0])
  {
    LODWORD(v87) = 3;
    v88 = " #";
    v89 = 2;
    v49 = &v87;
    v50 = v91;
    if (v92 >= v93)
    {
      if (v91 <= &v87 && v91 + 24 * v92 > &v87)
      {
        v79 = &v87 - v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v50 = v91;
        v49 = v91 + v79;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v49 = &v87;
        v50 = v91;
      }
    }

    v51 = &v50[24 * v92];
    v52 = *v49;
    *(v51 + 2) = *(v49 + 2);
    *v51 = v52;
    v53 = ++v92;
    if (v90[0])
    {
      LODWORD(v87) = 5;
      v88 = a5;
      v54 = &v87;
      v55 = v91;
      if (v53 >= v93)
      {
        if (v91 <= &v87 && v91 + 24 * v53 > &v87)
        {
          v80 = &v87 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v53 + 1, 24);
          v55 = v91;
          v54 = v91 + v80;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v53 + 1, 24);
          v54 = &v87;
          v55 = v91;
        }
      }

      v56 = &v55[24 * v92];
      v57 = *v54;
      *(v56 + 2) = *(v54 + 2);
      *v56 = v57;
      v58 = ++v92;
      if (v90[0])
      {
        LODWORD(v87) = 3;
        v88 = " must be unranked tensor of mps native type values or ranked tensor type with rank equal to or greater than 5, but got ";
        v89 = 119;
        v59 = &v87;
        v60 = v91;
        if (v58 >= v93)
        {
          if (v91 <= &v87 && v91 + 24 * v58 > &v87)
          {
            v81 = &v87 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v58 + 1, 24);
            v60 = v91;
            v59 = v91 + v81;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v58 + 1, 24);
            v59 = &v87;
            v60 = v91;
          }
        }

        v61 = &v60[24 * v92];
        v62 = *v59;
        *(v61 + 2) = *(v59 + 2);
        *v61 = v62;
        ++v92;
        if (v90[0])
        {
          v63 = &v87;
          mlir::DiagnosticArgument::DiagnosticArgument(&v87, a2);
          v64 = v91;
          if (v92 >= v93)
          {
            if (v91 <= &v87 && v91 + 24 * v92 > &v87)
            {
              v82 = &v87 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v64 = v91;
              v63 = v91 + v82;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v63 = &v87;
              v64 = v91;
            }
          }

          v65 = &v64[24 * v92];
          v66 = *v63;
          *(v65 + 2) = *(v63 + 2);
          *v65 = v66;
          ++v92;
        }
      }
    }
  }

  v67 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
  if (v90[0])
  {
    mlir::InFlightDiagnostic::report(v90);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v68 = __p;
    if (__p)
    {
      v69 = v98;
      v70 = __p;
      if (v98 != __p)
      {
        do
        {
          v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
        }

        while (v69 != v68);
        v70 = __p;
      }

      v98 = v68;
      operator delete(v70);
    }

    v71 = v95;
    if (v95)
    {
      v72 = v96;
      v73 = v95;
      if (v96 != v95)
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
        v73 = v95;
      }

      v96 = v71;
      operator delete(v73);
    }

    if (v91 != v94)
    {
      free(v91);
    }
  }

  return v67;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps15(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v120 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_89;
    }

    goto LABEL_3;
  }

  {
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v9 + 8);
    v22 = *(v9 + 16);
    if (!v22)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v29 = a1;
    v30 = v9;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v29;
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v30 + 8);
    v22 = *(v30 + 16);
    if (!v22)
    {
      goto LABEL_24;
    }
  }

  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = v26 + 2;
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 != &v21[2 * v22] && *v23 == v20)
  {
    v31 = a1;
    v32 = v23[1];
    goto LABEL_26;
  }

LABEL_24:
  v31 = a1;
  v32 = 0;
LABEL_26:
  v109[0] = a2;
  v109[1] = v32;
  isSplat = mlir::ElementsAttr::isSplat(v109);
  if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v9 = *a2;
  a1 = v31;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_89;
  }

LABEL_3:
  {
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v9 + 8);
    v13 = *(v9 + 16);
    if (!v13)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v33 = a1;
    v34 = v9;
    mlir::arith::ExtUIOp::fold();
    a1 = v33;
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v34 + 8);
    v13 = *(v34 + 16);
    if (!v13)
    {
      goto LABEL_44;
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
    v37 = a1;
    v38 = v14[1];
    v101 = a2;
    v102 = v38;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v101);
    a1 = v37;
    if (!ArgOperands)
    {
      goto LABEL_89;
    }

    goto LABEL_47;
  }

LABEL_44:
  v35 = a1;
  v101 = a2;
  v102 = 0;
  v36 = mlir::CallOpInterface::getArgOperands(&v101);
  a1 = v35;
  if (!v36)
  {
    goto LABEL_89;
  }

LABEL_47:
  v40 = *a2;
  {
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v100 = a1;
    mlir::arith::ExtUIOp::fold();
    a1 = v100;
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_59;
    }
  }

  v44 = v42;
  v45 = v43;
  do
  {
    v46 = v45 >> 1;
    v47 = &v44[2 * (v45 >> 1)];
    v49 = *v47;
    v48 = v47 + 2;
    v45 += ~(v45 >> 1);
    if (v49 < v41)
    {
      v44 = v48;
    }

    else
    {
      v45 = v46;
    }
  }

  while (v45);
  if (v44 == &v42[2 * v43] || *v44 != v41)
  {
LABEL_59:
    v50 = a1;
    v106 = a2;
    v107 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v106);
    a1 = v50;
    if (v51 != 5)
    {
      goto LABEL_89;
    }

LABEL_62:
    v55 = *a2;
    {
      v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v57 = *(v55 + 8);
      v58 = *(v55 + 16);
      if (!v58)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v65 = a1;
      mlir::arith::ExtUIOp::fold();
      a1 = v65;
      v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v57 = *(v55 + 8);
      v58 = *(v55 + 16);
      if (!v58)
      {
        goto LABEL_74;
      }
    }

    v59 = v57;
    v60 = v58;
    do
    {
      v61 = v60 >> 1;
      v62 = &v59[2 * (v60 >> 1)];
      v64 = *v62;
      v63 = v62 + 2;
      v60 += ~(v60 >> 1);
      if (v64 < v56)
      {
        v59 = v63;
      }

      else
      {
        v60 = v61;
      }
    }

    while (v60);
    if (v59 != &v57[2 * v58] && *v59 == v56)
    {
      v66 = a1;
      v67 = v59[1];
      goto LABEL_76;
    }

LABEL_74:
    v66 = a1;
    v67 = 0;
LABEL_76:
    v104[0] = a2;
    v104[1] = v67;
    isSplat = mlir::ElementsAttr::isSplat(v104);
    if (!mlir::Type::isSignlessInteger(&isSplat, 1) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 64) && !mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat))
    {
      a1 = v66;
      if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        goto LABEL_89;
      }
    }

    return 1;
  }

  v52 = a1;
  v53 = v44[1];
  v106 = a2;
  v107 = v53;
  mlir::CallableOpInterface::getArgAttrsAttr(&v106);
  a1 = v52;
  if (v54 == 5)
  {
    goto LABEL_62;
  }

LABEL_89:
  v103 = 261;
  v101 = a3;
  v102 = a4;
  mlir::Operation::emitOpError(a1, &v101, v109);
  if (v109[0])
  {
    LODWORD(v106) = 3;
    v107 = " #";
    v108 = 2;
    v68 = &v106;
    v69 = v110;
    if (v111 >= v112)
    {
      if (v110 <= &v106 && v110 + 24 * v111 > &v106)
      {
        v96 = &v106 - v110;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v111 + 1, 24);
        v69 = v110;
        v68 = v110 + v96;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v111 + 1, 24);
        v68 = &v106;
        v69 = v110;
      }
    }

    v70 = &v69[24 * v111];
    v71 = *v68;
    *(v70 + 2) = *(v68 + 2);
    *v70 = v71;
    v72 = ++v111;
    if (v109[0])
    {
      LODWORD(v106) = 5;
      v107 = a5;
      v73 = &v106;
      v74 = v110;
      if (v72 >= v112)
      {
        if (v110 <= &v106 && v110 + 24 * v72 > &v106)
        {
          v97 = &v106 - v110;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v72 + 1, 24);
          v74 = v110;
          v73 = v110 + v97;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v72 + 1, 24);
          v73 = &v106;
          v74 = v110;
        }
      }

      v75 = &v74[24 * v111];
      v76 = *v73;
      *(v75 + 2) = *(v73 + 2);
      *v75 = v76;
      v77 = ++v111;
      if (v109[0])
      {
        LODWORD(v106) = 3;
        v107 = " must be unranked tensor of mps native type values or 5D tensor of mps native type values, but got ";
        v108 = 99;
        v78 = &v106;
        v79 = v110;
        if (v77 >= v112)
        {
          if (v110 <= &v106 && v110 + 24 * v77 > &v106)
          {
            v98 = &v106 - v110;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v77 + 1, 24);
            v79 = v110;
            v78 = v110 + v98;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v77 + 1, 24);
            v78 = &v106;
            v79 = v110;
          }
        }

        v80 = &v79[24 * v111];
        v81 = *v78;
        *(v80 + 2) = *(v78 + 2);
        *v80 = v81;
        ++v111;
        if (v109[0])
        {
          v82 = &v106;
          mlir::DiagnosticArgument::DiagnosticArgument(&v106, a2);
          v83 = v110;
          if (v111 >= v112)
          {
            if (v110 <= &v106 && v110 + 24 * v111 > &v106)
            {
              v99 = &v106 - v110;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v111 + 1, 24);
              v83 = v110;
              v82 = v110 + v99;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v111 + 1, 24);
              v82 = &v106;
              v83 = v110;
            }
          }

          v84 = &v83[24 * v111];
          v85 = *v82;
          *(v84 + 2) = *(v82 + 2);
          *v84 = v85;
          ++v111;
        }
      }
    }
  }

  v86 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v109);
  if (v109[0])
  {
    mlir::InFlightDiagnostic::report(v109);
  }

  if (v119 == 1)
  {
    if (v118 != &v119)
    {
      free(v118);
    }

    v87 = __p;
    if (__p)
    {
      v88 = v117;
      v89 = __p;
      if (v117 != __p)
      {
        do
        {
          v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
        }

        while (v88 != v87);
        v89 = __p;
      }

      v117 = v87;
      operator delete(v89);
    }

    v90 = v114;
    if (v114)
    {
      v91 = v115;
      v92 = v114;
      if (v115 != v114)
      {
        do
        {
          v94 = *--v91;
          v93 = v94;
          *v91 = 0;
          if (v94)
          {
            operator delete[](v93);
          }
        }

        while (v91 != v90);
        v92 = v114;
      }

      v115 = v90;
      operator delete(v92);
    }

    if (v110 != v113)
    {
      free(v110);
    }
  }

  return v86;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps16(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
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
    if (mlir::Type::isSignedInteger(&isSplat, 32))
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
      if (v74 != 1)
      {
        goto LABEL_3;
      }

      goto LABEL_92;
    }

LABEL_89:
    v97 = a2;
    v98 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v97);
    if (v72 != 1)
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
      if (!mlir::Type::isSignedInteger(&isSplat, 32))
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
        v98 = " must be unranked tensor of 32-bit signed integer values or 1D tensor of 32-bit signed integer values, but got ";
        v99 = 111;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::Conv3DDataGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.conv_3d_data_gradient", 25, a3, v10, a4, a5);
  *v11 = &unk_1F5B267A0;
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

uint64_t mlir::mps::Conv3DOp::readProperties(uint64_t a1, uint64_t a2)
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::Conv3DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

void mlir::mps::Conv3DOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, unsigned int a13, unsigned int a14, unsigned int a15)
{
  v17 = mlir::mps::get5DElementsAttrFrom3DSpatialValues(a1, a6, a7, a14);
  v18 = mlir::mps::get5DElementsAttrFrom3DSpatialValues(a1, a9, a10, a14);
  v19 = mlir::mps::get5DElementsAttrFrom3DPaddingValues(a1, a11, a12, a14);

  mlir::mps::Conv3DOp::build(a1, a2, a3, a4, a5, v17, v18, v19, a13, a14, a15);
}

void mlir::mps::Conv3DOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v73 = *MEMORY[0x1E69E9840];
  v62 = a4;
  v63 = a3;
  mlir::OperationState::addOperands(a2, &v63, 1uLL);
  mlir::OperationState::addOperands(a2, &v62, 1uLL);
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv3DOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv3DOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v25 = *(a2 + 256);
  }

LABEL_18:
  *(v25 + 16) = a8;
  v30 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v69 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v70 = v30;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v67 = &v69;
  v65 = v22;
  v32 = 0x9DDFEA08EB382D69 * (((8 * v22) | 4) ^ v22 ^ 0xFF51AFD7ED558CCDLL);
  v33 = 0x9DDFEA08EB382D69 * (v22 ^ 0xFF51AFD7ED558CCDLL ^ (v32 >> 47) ^ v32);
  v64 = &v65;
  v71 = &v65;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v33 >> 47) ^ v33), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v64, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v71);
  v35 = *(a2 + 256);
  if (!v35)
  {
    v36 = operator new(0x38uLL);
    *v36 = 0u;
    v36[1] = 0u;
    v36[2] = 0u;
    *(v36 + 6) = 0;
    *(a2 + 256) = v36;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v35 = *(a2 + 256);
  }

  *(v35 + 32) = ParametricStorageTypeImpl;
  v37 = *a1;
  v38 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v69 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v70 = v37;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v67 = &v69;
  v65 = v24;
  v39 = 0x9DDFEA08EB382D69 * (((8 * v24) | 4) ^ v24 ^ 0xFF51AFD7ED558CCDLL);
  v40 = 0x9DDFEA08EB382D69 * (v24 ^ 0xFF51AFD7ED558CCDLL ^ (v39 >> 47) ^ v39);
  v64 = &v65;
  v71 = &v65;
  p_src = &__src;
  v41 = mlir::StorageUniquer::getParametricStorageTypeImpl(v38, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v40 >> 47) ^ v40), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v64, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v71);
  v42 = *(a2 + 256);
  if (!v42)
  {
    v43 = operator new(0x38uLL);
    *v43 = 0u;
    v43[1] = 0u;
    v43[2] = 0u;
    *(v43 + 6) = 0;
    *(a2 + 256) = v43;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v42 = *(a2 + 256);
  }

  *v42 = v41;
  v44 = *a1;
  v45 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v69 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v70 = v44;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v67 = &v69;
  v65 = a11;
  v46 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v47 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v46 >> 47) ^ v46);
  v64 = &v65;
  v71 = &v65;
  p_src = &__src;
  v48 = mlir::StorageUniquer::getParametricStorageTypeImpl(v45, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v47 >> 47) ^ v47), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v64, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v71);
  v49 = *(a2 + 256);
  if (!v49)
  {
    v50 = operator new(0x38uLL);
    *v50 = 0u;
    v50[1] = 0u;
    v50[2] = 0u;
    *(v50 + 6) = 0;
    *(a2 + 256) = v50;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v49 = *(a2 + 256);
  }

  *(v49 + 48) = v48;
  __src = v68;
  v67 = 0x200000000;
  v51 = *a1;
  mlir::ValueRange::ValueRange(&v71, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v54 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v69, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::Conv3DOp::inferReturnTypes(v51, v55, v56, v71, p_src, Dictionary, v54, v57, v69, v70, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v58 = __src;
  v59 = v67;
  v60 = *(a2 + 72);
  v61 = v60 + v67;
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
  if (__src != v68)
  {
    free(__src);
  }
}

BOOL mlir::mps::Conv3DOp::verifyInvariantsImpl(mlir::mps::Conv3DOp *this)
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
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(v9, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps14(v6, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v8, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps15(v3, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps16(v10, "weights_layout", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps14(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps15(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps14(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::Conv3DOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.conv_3d", 11, a3, v10, a4, a5);
  *v11 = &unk_1F5B26840;
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

uint64_t mlir::mps::Conv3DWeightsGradientOp::readProperties(uint64_t a1, uint64_t a2)
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::Conv3DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

void mlir::mps::Conv3DWeightsGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, unsigned int a13, unsigned int a14, unsigned int a15)
{
  v17 = mlir::mps::get5DElementsAttrFrom3DSpatialValues(a1, a7, a8, a14);
  v18 = mlir::mps::get5DElementsAttrFrom3DSpatialValues(a1, a9, a10, a14);
  v24 = mlir::mps::get5DElementsAttrFrom3DPaddingValues(a1, a11, a12, a14);

  mlir::mps::Conv3DWeightsGradientOp::build(a1, a2, a3, a4, a5, a6, v17, v18, v24, a13, a14, a15);
}

void mlir::mps::Conv3DWeightsGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  v75 = *MEMORY[0x1E69E9840];
  v64 = a4;
  v65 = a3;
  v63 = a5;
  mlir::OperationState::addOperands(a2, &v65, 1uLL);
  mlir::OperationState::addOperands(a2, &v64, 1uLL);
  mlir::OperationState::addOperands(a2, &v63, 1uLL);
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv3DWeightsGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::Conv3DWeightsGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v26 = *(a2 + 256);
  }

LABEL_18:
  *(v26 + 16) = v25;
  v31 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v71 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v72 = v31;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v69 = &v71;
  v67 = v22;
  v33 = 0x9DDFEA08EB382D69 * (((8 * v22) | 4) ^ v22 ^ 0xFF51AFD7ED558CCDLL);
  v34 = 0x9DDFEA08EB382D69 * (v22 ^ 0xFF51AFD7ED558CCDLL ^ (v33 >> 47) ^ v33);
  v66 = &v67;
  v73 = &v67;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v34 >> 47) ^ v34), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v66, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v73);
  v36 = *(a2 + 256);
  if (!v36)
  {
    v37 = operator new(0x38uLL);
    *v37 = 0u;
    v37[1] = 0u;
    v37[2] = 0u;
    *(v37 + 6) = 0;
    *(a2 + 256) = v37;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v36 = *(a2 + 256);
  }

  *(v36 + 32) = ParametricStorageTypeImpl;
  v38 = *a1;
  v39 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v71 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v72 = v38;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v69 = &v71;
  v67 = v24;
  v40 = 0x9DDFEA08EB382D69 * (((8 * v24) | 4) ^ v24 ^ 0xFF51AFD7ED558CCDLL);
  v41 = 0x9DDFEA08EB382D69 * (v24 ^ 0xFF51AFD7ED558CCDLL ^ (v40 >> 47) ^ v40);
  v66 = &v67;
  v73 = &v67;
  p_src = &__src;
  v42 = mlir::StorageUniquer::getParametricStorageTypeImpl(v39, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v41 >> 47) ^ v41), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v66, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v73);
  v43 = *(a2 + 256);
  if (!v43)
  {
    v44 = operator new(0x38uLL);
    *v44 = 0u;
    v44[1] = 0u;
    v44[2] = 0u;
    *(v44 + 6) = 0;
    *(a2 + 256) = v44;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v43 = *(a2 + 256);
  }

  *v43 = v42;
  v45 = *a1;
  v46 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v71 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v72 = v45;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v69 = &v71;
  v67 = a12;
  v47 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v48 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v47 >> 47) ^ v47);
  v66 = &v67;
  v73 = &v67;
  p_src = &__src;
  v49 = mlir::StorageUniquer::getParametricStorageTypeImpl(v46, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v48 >> 47) ^ v48), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v66, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v73);
  v50 = *(a2 + 256);
  if (!v50)
  {
    v51 = operator new(0x38uLL);
    *v51 = 0u;
    v51[1] = 0u;
    v51[2] = 0u;
    *(v51 + 6) = 0;
    *(a2 + 256) = v51;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::Conv3DWeightsGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::Conv3DWeightsGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v50 = *(a2 + 256);
  }

  *(v50 + 48) = v49;
  __src = v70;
  v69 = 0x200000000;
  v52 = *a1;
  mlir::ValueRange::ValueRange(&v73, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v55 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v71, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::Conv3DWeightsGradientOp::inferReturnTypes(v52, v56, v57, v73, p_src, Dictionary, v55, v58, v71, v72, &__src) & 1) == 0)
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

BOOL mlir::mps::Conv3DWeightsGradientOp::verifyInvariantsImpl(mlir::mps::Conv3DWeightsGradientOp *this)
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
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(v9, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps14(v6, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v8, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps15(v3, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0)
        {
          return 0;
        }

        v45 = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps16(v10, "weights_layout", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps14(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps14(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps17(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
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
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps15(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
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

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps17(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v102 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_59;
    }

    goto LABEL_7;
  }

  {
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v10 + 8);
    v24 = *(v10 + 16);
    if (!v24)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v43 = v10;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v43 + 8);
    v24 = *(v43 + 16);
    if (!v24)
    {
      goto LABEL_43;
    }
  }

  v25 = v23;
  v26 = v24;
  do
  {
    v27 = v26 >> 1;
    v28 = &v25[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v22)
    {
      v25 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v25 != &v23[2 * v24] && *v25 == v22)
  {
    v44 = v25[1];
    goto LABEL_45;
  }

LABEL_43:
  v44 = 0;
LABEL_45:
  v90[0] = a2;
  v90[1] = v44;
  isSplat = mlir::ElementsAttr::isSplat(v90);
  if (mlir::Type::isSignedInteger(&isSplat, 32))
  {
    return 1;
  }

  v10 = *a2;
  v46 = *(*a2 + 136);
  if (v46 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v46 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_59;
  }

LABEL_7:
  {
    v31 = v10;
    mlir::arith::ExtUIOp::fold();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v31 + 8);
    v15 = *(v31 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_28:
    v32 = 0;
    goto LABEL_30;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v10 + 8);
  v15 = *(v10 + 16);
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_9:
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
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_28;
  }

  v32 = v16[1];
LABEL_30:
  v83 = a2;
  v84 = v32;
  isSplat = mlir::ElementsAttr::isSplat(&v83);
  if (mlir::Type::isSignedInteger(&isSplat, 32))
  {
    v33 = *a2;
    {
      v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);
      if (!v36)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v48 = v33;
      mlir::arith::ExtUIOp::fold();
      v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v35 = *(v48 + 8);
      v36 = *(v48 + 16);
      if (!v36)
      {
        goto LABEL_55;
      }
    }

    v37 = v35;
    v38 = v36;
    do
    {
      v39 = v38 >> 1;
      v40 = &v37[2 * (v38 >> 1)];
      v42 = *v40;
      v41 = v40 + 2;
      v38 += ~(v38 >> 1);
      if (v42 < v34)
      {
        v37 = v41;
      }

      else
      {
        v38 = v39;
      }
    }

    while (v38);
    if (v37 != &v35[2 * v36] && *v37 == v34)
    {
      v49 = v37[1];
      goto LABEL_57;
    }

LABEL_55:
    v49 = 0;
LABEL_57:
    v87 = a2;
    v88 = v49;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v87);
    v101 = 5;
    if (v51 != 1 || *ArgAttrsAttr != v101)
    {
      goto LABEL_59;
    }

    return 1;
  }

LABEL_59:
  v85 = 261;
  v83 = a3;
  v84 = a4;
  mlir::Operation::emitOpError(a1, &v83, v90);
  if (v90[0])
  {
    LODWORD(v87) = 3;
    v88 = " #";
    v89 = 2;
    v52 = &v87;
    v53 = v91;
    if (v92 >= v93)
    {
      if (v91 <= &v87 && v91 + 24 * v92 > &v87)
      {
        v79 = &v87 - v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v53 = v91;
        v52 = v91 + v79;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v52 = &v87;
        v53 = v91;
      }
    }

    v54 = &v53[24 * v92];
    v55 = *v52;
    *(v54 + 2) = *(v52 + 2);
    *v54 = v55;
    v56 = ++v92;
    if (v90[0])
    {
      LODWORD(v87) = 5;
      v88 = a5;
      v57 = &v87;
      v58 = v91;
      if (v56 >= v93)
      {
        if (v91 <= &v87 && v91 + 24 * v56 > &v87)
        {
          v80 = &v87 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v56 + 1, 24);
          v58 = v91;
          v57 = v91 + v80;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v56 + 1, 24);
          v57 = &v87;
          v58 = v91;
        }
      }

      v59 = &v58[24 * v92];
      v60 = *v57;
      *(v59 + 2) = *(v57 + 2);
      *v59 = v60;
      v61 = ++v92;
      if (v90[0])
      {
        LODWORD(v87) = 3;
        v88 = " must be unranked tensor of 32-bit signed integer values or static-shape defined tensor with shape equal to [5], but got ";
        v89 = 121;
        v62 = &v87;
        v63 = v91;
        if (v61 >= v93)
        {
          if (v91 <= &v87 && v91 + 24 * v61 > &v87)
          {
            v81 = &v87 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v61 + 1, 24);
            v63 = v91;
            v62 = v91 + v81;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v61 + 1, 24);
            v62 = &v87;
            v63 = v91;
          }
        }

        v64 = &v63[24 * v92];
        v65 = *v62;
        *(v64 + 2) = *(v62 + 2);
        *v64 = v65;
        ++v92;
        if (v90[0])
        {
          v66 = &v87;
          mlir::DiagnosticArgument::DiagnosticArgument(&v87, a2);
          v67 = v91;
          if (v92 >= v93)
          {
            if (v91 <= &v87 && v91 + 24 * v92 > &v87)
            {
              v82 = &v87 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v67 = v91;
              v66 = v91 + v82;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v66 = &v87;
              v67 = v91;
            }
          }

          v68 = &v67[24 * v92];
          v69 = *v66;
          *(v68 + 2) = *(v66 + 2);
          *v68 = v69;
          ++v92;
        }
      }
    }
  }

  v45 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
  if (v90[0])
  {
    mlir::InFlightDiagnostic::report(v90);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v70 = __p;
    if (__p)
    {
      v71 = v98;
      v72 = __p;
      if (v98 != __p)
      {
        do
        {
          v71 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v71 - 1);
        }

        while (v71 != v70);
        v72 = __p;
      }

      v98 = v70;
      operator delete(v72);
    }

    v73 = v95;
    if (v95)
    {
      v74 = v96;
      v75 = v95;
      if (v96 != v95)
      {
        do
        {
          v77 = *--v74;
          v76 = v77;
          *v74 = 0;
          if (v77)
          {
            operator delete[](v76);
          }
        }

        while (v74 != v73);
        v75 = v95;
      }

      v96 = v73;
      operator delete(v75);
    }

    if (v91 != v94)
    {
      free(v91);
    }
  }

  return v45;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::Conv3DWeightsGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.conv_3d_weights_gradient", 28, a3, v10, a4, a5);
  *v11 = &unk_1F5B268E0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::CosOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.cos", 7, a3, v10, a4, a5);
  *v11 = &unk_1F5B26980;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::CoshOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.cosh", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B26A20;
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

uint64_t mlir::mps::CostVolumeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v91 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v75 = v6;
  if (!v6)
  {
    a3(&v79, a4);
    if (v79)
    {
      LODWORD(v76) = 3;
      v77 = "expected DictionaryAttr to set properties";
      v78 = 41;
      v28 = &v76;
      v29 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v82 > &v76)
        {
          v68 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v29 = v81;
          v28 = (v81 + v68);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v28 = &v76;
          v29 = v81;
        }
      }

      v30 = &v29[24 * v82];
      v31 = *v28;
      *(v30 + 2) = v28[2];
      *v30 = v31;
      ++v82;
      if (v79)
      {
        mlir::InFlightDiagnostic::report(&v79);
      }
    }

    if (v90 != 1)
    {
      return 0;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v88;
      v34 = __p;
      if (v88 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v88 = v32;
      operator delete(v34);
    }

    v23 = v85;
    if (!v85)
    {
      goto LABEL_70;
    }

    v35 = v86;
    v25 = v85;
    if (v86 == v85)
    {
LABEL_69:
      v86 = v23;
      operator delete(v25);
LABEL_70:
      if (v81 != v84)
      {
        free(v81);
      }

      return 0;
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

    while (v35 != v23);
LABEL_68:
    v25 = v85;
    goto LABEL_69;
  }

  v92.var0 = "coord_is_x_only";
  v92.var1 = 15;
  v8 = mlir::DictionaryAttr::get(&v75, v92);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::BoolAttr::classof(v8))
  {
    a3(&v79, a4);
    if (v79)
    {
      LODWORD(v76) = 3;
      v78 = 60;
      v38 = &v76;
      v39 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v82 > &v76)
        {
          v69 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v39 = v81;
          v38 = (v81 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v38 = &v76;
          v39 = v81;
        }
      }

      v40 = &v39[24 * v82];
      v41 = *v38;
      *(v40 + 2) = v38[2];
      *v40 = v41;
      ++v82;
      if (v79)
      {
        v42 = &v76;
        mlir::DiagnosticArgument::DiagnosticArgument(&v76, v9);
        v43 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v71 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v43 = v81;
            v42 = (v81 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v42 = &v76;
            v43 = v81;
          }
        }

        v44 = &v43[24 * v82];
        v45 = *v42;
        *(v44 + 2) = v42[2];
        *v44 = v45;
        ++v82;
        if (v79)
        {
          mlir::InFlightDiagnostic::report(&v79);
        }
      }
    }

    if ((v90 & 1) == 0)
    {
      return 0;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v88;
      v48 = __p;
      if (v88 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v88 = v46;
      operator delete(v48);
    }

    v23 = v85;
    if (!v85)
    {
      goto LABEL_70;
    }

    v49 = v86;
    v25 = v85;
    if (v86 == v85)
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

    while (v49 != v23);
    goto LABEL_68;
  }

  *a1 = v9;
LABEL_8:
  v93.var0 = "data_layout";
  v93.var1 = 11;
  v10 = mlir::DictionaryAttr::get(&v75, v93);
  if (v10)
  {
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v11 = v10;
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 56;
        v12 = &v76;
        v13 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v70 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v13 = v81;
            v12 = (v81 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v12 = &v76;
            v13 = v81;
          }
        }

        v14 = &v13[24 * v82];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v82;
        if (v79)
        {
          v16 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v11);
          v17 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v72 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v17 = v81;
              v16 = (v81 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v16 = &v76;
              v17 = v81;
            }
          }

          v18 = &v17[24 * v82];
          v19 = *v16;
          *(v18 + 2) = v16[2];
          *v18 = v19;
          ++v82;
          if (v79)
          {
            mlir::InFlightDiagnostic::report(&v79);
          }
        }
      }

      if ((v90 & 1) == 0)
      {
        return 0;
      }

      if (v89 != &v90)
      {
        free(v89);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v88;
        v22 = __p;
        if (v88 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v88 = v20;
        operator delete(v22);
      }

      v23 = v85;
      if (!v85)
      {
        goto LABEL_70;
      }

      v24 = v86;
      v25 = v85;
      if (v86 == v85)
      {
        goto LABEL_69;
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
      goto LABEL_68;
    }

    a1[1] = v10;
  }

  v94.var0 = "normalize_coordinates";
  v94.var1 = 21;
  v52 = mlir::DictionaryAttr::get(&v75, v94);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v53 = v52;
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 66;
        v54 = &v76;
        v55 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v73 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v55 = v81;
            v54 = (v81 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v54 = &v76;
            v55 = v81;
          }
        }

        v56 = &v55[24 * v82];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v82;
        if (v79)
        {
          v58 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v53);
          v59 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v74 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v59 = v81;
              v58 = (v81 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v58 = &v76;
              v59 = v81;
            }
          }

          v60 = &v59[24 * v82];
          v61 = *v58;
          *(v60 + 2) = v58[2];
          *v60 = v61;
          ++v82;
          if (v79)
          {
            mlir::InFlightDiagnostic::report(&v79);
          }
        }
      }

      if (v90 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v80);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v95.var0 = "relative_coordinates";
  v95.var1 = 20;
  v62 = mlir::DictionaryAttr::get(&v75, v95);
  v76 = v62;
  if (!v62)
  {
LABEL_88:
    v96.var0 = "similarity_type";
    v96.var1 = 15;
    v64 = mlir::DictionaryAttr::get(&v75, v96);
    v76 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id)
      {
        a3(&v79, a4);
        goto LABEL_99;
      }

      a1[4] = v64;
    }

    v97.var0 = "window_height";
    v97.var1 = 13;
    v65 = mlir::DictionaryAttr::get(&v75, v97);
    v76 = v65;
    if (v65)
    {
      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a3(&v79, a4);
        goto LABEL_99;
      }

      a1[5] = v65;
    }

    v98.var0 = "window_width";
    v98.var1 = 12;
    v66 = mlir::DictionaryAttr::get(&v75, v98);
    v76 = v66;
    if (v66)
    {
      if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a3(&v79, a4);
        goto LABEL_99;
      }

      a1[6] = v66;
    }

    return 1;
  }

  if (*(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v62;
    goto LABEL_88;
  }

  a3(&v79, a4);
LABEL_99:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v63, &v76);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
  return 0;
}

uint64_t mlir::mps::CostVolumeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v55, "coord_is_x_only", 15, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v55, "data_layout", 11, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v55, "normalize_coordinates", 21, v13);
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
    v19 = mlir::Builder::getNamedAttr(&v55, "relative_coordinates", 20, v18);
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
    v24 = mlir::Builder::getNamedAttr(&v55, "similarity_type", 15, v23);
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
    v29 = mlir::Builder::getNamedAttr(&v55, "window_height", 13, v28);
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
    v34 = mlir::Builder::getNamedAttr(&v55, "window_width", 12, v33);
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

uint64_t mlir::mps::CostVolumeOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 14)
  {
    switch(__n)
    {
      case 21:
        if (!memcmp(__s1, "normalize_coordinates", 0x15uLL))
        {
          return a2[2];
        }

        break;
      case 20:
        if (!memcmp(__s1, "relative_coordinates", 0x14uLL))
        {
          return a2[3];
        }

        break;
      case 15:
        if (*__s1 == 0x73695F64726F6F63 && *(__s1 + 7) == 0x796C6E6F5F785F73)
        {
          return *a2;
        }

        if (!memcmp(__s1, "similarity_type", 0xFuLL))
        {
          return a2[4];
        }

        break;
    }

    return 0;
  }

  if (__n == 11)
  {
    if (!memcmp(__s1, "data_layout", 0xBuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "window_width", 0xCuLL))
    {
      return a2[6];
    }

    return 0;
  }

  if (__n != 13 || memcmp(__s1, "window_height", 0xDuLL))
  {
    return 0;
  }

  return a2[5];
}

uint64_t mlir::mps::CostVolumeOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 14)
  {
    switch(a3)
    {
      case 21:
        result = memcmp(__s1, "normalize_coordinates", 0x15uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[2] = v9;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
      case 20:
        result = memcmp(__s1, "relative_coordinates", 0x14uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v11 = a4;
            }

            else
            {
              v11 = 0;
            }

            v5[3] = v11;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
      case 15:
        if (*__s1 == 0x73695F64726F6F63 && *(__s1 + 7) == 0x796C6E6F5F785F73)
        {
          if (a4)
          {
            result = mlir::BoolAttr::classof(a4);
            if (result)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            *v5 = v13;
          }

          else
          {
            *result = 0;
          }
        }

        else
        {
          result = memcmp(__s1, "similarity_type", 0xFuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id)
              {
                v7 = a4;
              }

              else
              {
                v7 = 0;
              }

              v5[4] = v7;
            }

            else
            {
              v5[4] = 0;
            }
          }
        }

        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 11:
        result = memcmp(__s1, "data_layout", 0xBuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
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

        break;
      case 12:
        result = memcmp(__s1, "window_width", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              v10 = a4;
            }

            else
            {
              v10 = 0;
            }

            v5[6] = v10;
          }

          else
          {
            v5[6] = 0;
          }
        }

        break;
      case 13:
        result = memcmp(__s1, "window_height", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              v12 = a4;
            }

            else
            {
              v12 = 0;
            }

            v5[5] = v12;
          }

          else
          {
            v5[5] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::CostVolumeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "coord_is_x_only", 15, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "data_layout", 11, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "normalize_coordinates", 21, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "relative_coordinates", 20, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "similarity_type", 15, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "window_height", 13, v9);
  }

  v10 = a2[6];
  if (v10)
  {

    mlir::NamedAttrList::append(a3, "window_width", 12, v10);
  }
}

BOOL mlir::mps::CostVolumeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v8, "coord_is_x_only", 0xF, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(v9, "data_layout", 0xB, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v10, "normalize_coordinates", 0x15, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v11, "relative_coordinates", 0x14, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps17(v12, "similarity_type", 0xF, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(v13, "window_height", 0xD, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(v14, "window_width", 0xC, a3, a4) & 1) != 0)
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps17(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid SimilarityType";
        v29 = 52;
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

BOOL mlir::mps::CostVolumeOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, a2[32]))
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
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v8;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v7;
    {
      mlir::mps::CostVolumeOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::SimilarityTypeAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3 + 5))
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3 + 6);
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::SimilarityTypeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::SimilarityTypeAttr]";
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

void mlir::mps::CostVolumeOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, uint64_t a12)
{
  v73 = *MEMORY[0x1E69E9840];
  v62 = a4;
  v63 = a3;
  v61 = a5;
  mlir::OperationState::addOperands(a2, &v63, 1uLL);
  mlir::OperationState::addOperands(a2, &v62, 1uLL);
  mlir::OperationState::addOperands(a2, &v61, 1uLL);
  if (a6)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v17);
    v19 = *(a2 + 256);
    if (!v19)
    {
      v20 = operator new(0x38uLL);
      *v20 = 0u;
      v20[1] = 0u;
      v20[2] = 0u;
      *(v20 + 6) = 0;
      *(a2 + 256) = v20;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::CostVolumeOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v19 = *(a2 + 256);
    }

    *(v19 + 16) = UnitAttr;
  }

  if (a7)
  {
    v21 = mlir::Builder::getUnitAttr(a1, v17);
    v22 = *(a2 + 256);
    if (!v22)
    {
      v23 = operator new(0x38uLL);
      *v23 = 0u;
      v23[1] = 0u;
      v23[2] = 0u;
      *(v23 + 6) = 0;
      *(a2 + 256) = v23;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::CostVolumeOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v22 = *(a2 + 256);
    }

    *(v22 + 24) = v21;
  }

  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a8);
  v26 = *(a2 + 256);
  if (!v26)
  {
    v27 = operator new(0x38uLL);
    *v27 = 0u;
    v27[1] = 0u;
    v27[2] = 0u;
    *(v27 + 6) = 0;
    *(a2 + 256) = v27;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::CostVolumeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v26 = *(a2 + 256);
  }

  *(v26 + 40) = IntegerAttr;
  v28 = mlir::Builder::getIntegerType(a1, 64, 0);
  v29 = mlir::Builder::getIntegerAttr(a1, v28, a9);
  v30 = *(a2 + 256);
  if (!v30)
  {
    v31 = operator new(0x38uLL);
    *v31 = 0u;
    v31[1] = 0u;
    v31[2] = 0u;
    *(v31 + 6) = 0;
    *(a2 + 256) = v31;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::CostVolumeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v30 = *(a2 + 256);
  }

  *(v30 + 48) = v29;
  v32 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v69 = &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id;
  v70 = v32;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail25SimilarityTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18SimilarityTypeAttrEJNS2_14SimilarityTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v67 = &v69;
  v65 = a10;
  v34 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v35 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v34 >> 47) ^ v34);
  v64 = &v65;
  v71 = &v65;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id, -348639895 * ((v35 >> 47) ^ v35), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v64, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v71);
  v37 = *(a2 + 256);
  v38 = a1;
  if (!v37)
  {
    v39 = operator new(0x38uLL);
    *v39 = 0u;
    v39[1] = 0u;
    v39[2] = 0u;
    *(v39 + 6) = 0;
    *(a2 + 256) = v39;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::CostVolumeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v37 = *(a2 + 256);
    v38 = a1;
  }

  *(v37 + 32) = ParametricStorageTypeImpl;
  v60 = v38;
  v40 = *v38;
  v41 = mlir::MLIRContext::getAttributeUniquer(*v38);
  v69 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v70 = v40;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v67 = &v69;
  v65 = a11;
  v42 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v43 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v42 >> 47) ^ v42);
  v64 = &v65;
  v71 = &v65;
  p_src = &__src;
  v44 = mlir::StorageUniquer::getParametricStorageTypeImpl(v41, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v43 >> 47) ^ v43), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v64, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v71);
  v45 = *(a2 + 256);
  if (!v45)
  {
    v46 = operator new(0x38uLL);
    *v46 = 0u;
    v46[1] = 0u;
    v46[2] = 0u;
    *(v46 + 6) = 0;
    *(a2 + 256) = v46;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::CostVolumeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v45 = *(a2 + 256);
  }

  *(v45 + 8) = v44;
  if (a12)
  {
    v47 = *(a2 + 256);
    if (!v47)
    {
      v48 = operator new(0x38uLL);
      *v48 = 0u;
      v48[1] = 0u;
      v48[2] = 0u;
      *(v48 + 6) = 0;
      *(a2 + 256) = v48;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::CostVolumeOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CostVolumeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v47 = *(a2 + 256);
    }

    *v47 = a12;
  }

  __src = v68;
  v67 = 0x200000000;
  v49 = *v60;
  mlir::ValueRange::ValueRange(&v71, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v52 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v69, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::CostVolumeOp::inferReturnTypes(v49, v53, v54, v71, p_src, Dictionary, v52, v55, v69, v70, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v56 = __src;
  v57 = v67;
  v58 = *(a2 + 72);
  v59 = v58 + v67;
  if (v59 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v59, 8);
    LODWORD(v58) = *(a2 + 72);
  }

  if (v57)
  {
    memcpy((*(a2 + 64) + 8 * v58), v56, 8 * v57);
    LODWORD(v58) = *(a2 + 72);
  }

  *(a2 + 72) = v58 + v57;
  if (__src != v68)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::mps::CostVolumeOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v17 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v17);
  v10 = result;
  if (a2[5])
  {
    if (a2[6])
    {
      goto LABEL_3;
    }
  }

  else
  {
    IntegerType = mlir::Builder::getIntegerType(&v10, 64, 0);
    result = mlir::Builder::getIntegerAttr(&v10, IntegerType, 1);
    a2[5] = result;
    if (a2[6])
    {
LABEL_3:
      if (a2[4])
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v5 = mlir::Builder::getIntegerType(&v10, 64, 0);
  result = mlir::Builder::getIntegerAttr(&v10, v5, 1);
  a2[6] = result;
  if (a2[4])
  {
LABEL_4:
    if (a2[1])
    {
      return result;
    }

LABEL_9:
    v8 = v10;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v10);
    v11 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
    v12 = v8;
    v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v18 = &v11;
    v16 = 0;
    v13 = &v16;
    v14 = &v17;
    v15 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    a2[1] = result;
    return result;
  }

LABEL_8:
  v6 = v10;
  v7 = mlir::MLIRContext::getAttributeUniquer(v10);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id;
  v12 = v6;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25SimilarityTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18SimilarityTypeAttrEJNS2_14SimilarityTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 0;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v7, &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[4] = result;
  if (!a2[1])
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t mlir::mps::CostVolumeOp::verifyInvariantsImpl(mlir::mps::CostVolumeOp *this)
{
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  v7 = v3[11];
  v8 = v3[12];
  v9 = v3[13];
  v10 = v3[14];
  v14 = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v6, "normalize_coordinates", 0x15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14) & 1) == 0)
  {
    return 0;
  }

  v14 = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "relative_coordinates", 0x14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14) & 1) == 0)
  {
    return 0;
  }

  v14 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(v9, "window_height", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14) & 1) == 0)
  {
    return 0;
  }

  v14 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(v10, "window_width", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14) & 1) == 0)
  {
    return 0;
  }

  v14 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps17(v8, "similarity_type", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14) & 1) == 0)
  {
    return 0;
  }

  v14 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(v5, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14) & 1) == 0)
  {
    return 0;
  }

  v14 = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v4, "coord_is_x_only", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps18(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps18(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps18(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v11 = *this - 16;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps18(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
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
LABEL_58:
      v100[0] = a2;
      v100[1] = v49;
      isSplat = mlir::ElementsAttr::isSplat(v100);
      if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
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
        v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v51 = *(v10 + 8);
        v52 = *(v10 + 16);
        if (!v52)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v59 = v10;
        mlir::arith::ExtUIOp::fold();
        v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v51 = *(v59 + 8);
        v52 = *(v59 + 16);
        if (!v52)
        {
          goto LABEL_74;
        }
      }

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
        v60 = v53[1];
        v92 = a2;
        v93 = v60;
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
      v61 = *a2;
      {
        v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v63 = *(v61 + 8);
        v64 = *(v61 + 16);
        if (!v64)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v91 = v61;
        mlir::arith::ExtUIOp::fold();
        v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v63 = *(v91 + 8);
        v64 = *(v91 + 16);
        if (!v64)
        {
          goto LABEL_89;
        }
      }

      v65 = v63;
      v66 = v64;
      do
      {
        v67 = v66 >> 1;
        v68 = &v65[2 * (v66 >> 1)];
        v70 = *v68;
        v69 = v68 + 2;
        v66 += ~(v66 >> 1);
        if (v70 < v62)
        {
          v65 = v69;
        }

        else
        {
          v66 = v67;
        }
      }

      while (v66);
      if (v65 != &v63[2 * v64] && *v65 == v62)
      {
        v72 = v65[1];
        v97 = a2;
        v98 = v72;
        mlir::CallableOpInterface::getArgAttrsAttr(&v97);
        if (v73 != 4)
        {
          goto LABEL_3;
        }

        goto LABEL_92;
      }

LABEL_89:
      v97 = a2;
      v98 = 0;
      mlir::CallableOpInterface::getArgAttrsAttr(&v97);
      if (v71 != 4)
      {
        goto LABEL_3;
      }

LABEL_92:
      v74 = *a2;
      {
        v75 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v76 = *(v74 + 8);
        v77 = *(v74 + 16);
        if (!v77)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v86 = v74;
        mlir::arith::ExtUIOp::fold();
        v75 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v76 = *(v86 + 8);
        v77 = *(v86 + 16);
        if (!v77)
        {
          goto LABEL_106;
        }
      }

      v78 = v76;
      v79 = v77;
      do
      {
        v80 = v79 >> 1;
        v81 = &v78[2 * (v79 >> 1)];
        v83 = *v81;
        v82 = v81 + 2;
        v79 += ~(v79 >> 1);
        if (v83 < v75)
        {
          v78 = v82;
        }

        else
        {
          v79 = v80;
        }
      }

      while (v79);
      if (v78 != &v76[2 * v77] && *v78 == v75)
      {
        v87 = v78[1];
        goto LABEL_108;
      }

LABEL_106:
      v87 = 0;
LABEL_108:
      v95[0] = a2;
      v95[1] = v87;
      isSplat = mlir::ElementsAttr::isSplat(v95);
      if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat))
      {
        goto LABEL_3;
      }

      return 1;
    }

LABEL_56:
    v49 = 0;
    goto LABEL_58;
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
        v84 = &v97 - v101;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
        v13 = v101;
        v12 = v101 + v84;
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
          v85 = &v97 - v101;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v16 + 1, 24);
          v18 = v101;
          v17 = v101 + v85;
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
        v98 = " must be unranked tensor of floating point values or 4D tensor of floating point values, but got ";
        v99 = 97;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::CostVolumeOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.cost_volume", 15, a3, v10, a4, a5);
  *v11 = &unk_1F5B26AC0;
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

void mlir::mps::CreateComplexOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v19 = a4;
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  __src = v25;
  v24 = 0x200000000;
  v6 = *a1;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v21, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::CreateComplexOp::inferReturnTypes(v6, v8, v9, v22[0], v22[1], v10, v11, v12, v17, v18, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = __src;
  v14 = v24;
  v15 = *(a2 + 72);
  v16 = v15 + v24;
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
  if (__src != v25)
  {
    free(__src);
  }
}

void mlir::mps::CreateComplexOp::build(mlir::Float32Type **a1, uint64_t a2, mlir::MLIRContext *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x1E69E9840];
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
  __src = v29;
  v28 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::CreateComplexOp::inferReturnTypes(v13, v15, v16, a3, a4, v17, v18, v19, v24, v25, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = __src;
  v21 = v28;
  v22 = *(a2 + 72);
  v23 = v22 + v28;
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
  if (__src != v29)
  {
    free(__src);
  }
}

BOOL mlir::mps::CreateComplexOp::verifyInvariantsImpl(mlir::mps::CreateComplexOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps19(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps19(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps20(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 72) + 24));
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 56)))
  {
    v5 = mlir::getElementTypeOrSelf(*(*(*this + 72) + 56));
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
    {
      return 1;
    }
  }

  v16 = "failed to verify that all of {real, imag} have same element type";
  v17 = 259;
  mlir::OpState::emitOpError(this, &v16, v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  v7 = result;
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
    result = v7;
  }

  if (v26 == 1)
  {
    if (v25 != &v26)
    {
      free(v25);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v24;
      v10 = __p;
      if (v24 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v24 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v21;
    if (v21)
    {
      v12 = v22;
      v13 = v21;
      if (v22 != v21)
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
        v13 = v21;
      }

      v22 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v19 != &v20)
    {
      free(v19);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps19(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
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
  if (mlir::Type::isF16(v57))
  {
    return 1;
  }

  isF32 = mlir::Type::isF32(v57);
  a1 = v12;
  if (isF32)
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
        v60 = " must be tensor of 16-bit float or 32-bit float values, but got ";
        v61 = 64;
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

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps20(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v12 = a1;
  {
    v22 = v9;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v22 + 8);
    v15 = *(v22 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v23 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v9 + 8);
  v15 = *(v9 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
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
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v23 = v16[1];
LABEL_20:
  v66[0] = a2;
  v66[1] = v23;
  isSplat = mlir::ElementsAttr::isSplat(v66);
  if (*(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v52 = isSplat;
    v63 = isSplat;
    v59[0] = mlir::AffineMapAttr::getValue(&v63);
    if (mlir::Type::isF16(v59))
    {
      return 1;
    }

    v61 = v52;
    Value = mlir::AffineMapAttr::getValue(&v61);
    isF32 = mlir::Type::isF32(&Value);
    a1 = v12;
    if (isF32)
    {
      return 1;
    }
  }

  else
  {
    a1 = v12;
  }

LABEL_22:
  v60 = 261;
  v59[0] = a3;
  v59[1] = a4;
  mlir::Operation::emitOpError(a1, v59, v66);
  if (v66[0])
  {
    LODWORD(v63) = 3;
    v64 = " #";
    v65 = 2;
    v25 = &v63;
    v26 = v67;
    if (v68 >= v69)
    {
      if (v67 <= &v63 && v67 + 24 * v68 > &v63)
      {
        v55 = &v63 - v67;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
        v26 = v67;
        v25 = (v67 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
        v25 = &v63;
        v26 = v67;
      }
    }

    v27 = &v26[24 * v68];
    v28 = *v25;
    *(v27 + 2) = v25[2];
    *v27 = v28;
    v29 = ++v68;
    if (v66[0])
    {
      LODWORD(v63) = 5;
      v64 = a5;
      v30 = &v63;
      v31 = v67;
      if (v29 >= v69)
      {
        if (v67 <= &v63 && v67 + 24 * v29 > &v63)
        {
          v56 = &v63 - v67;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v29 + 1, 24);
          v31 = v67;
          v30 = (v67 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v29 + 1, 24);
          v30 = &v63;
          v31 = v67;
        }
      }

      v32 = &v31[24 * v68];
      v33 = *v30;
      *(v32 + 2) = v30[2];
      *v32 = v33;
      v34 = ++v68;
      if (v66[0])
      {
        LODWORD(v63) = 3;
        v64 = " must be tensor of complex values, but got ";
        v65 = 43;
        v35 = &v63;
        v36 = v67;
        if (v34 >= v69)
        {
          if (v67 <= &v63 && v67 + 24 * v34 > &v63)
          {
            v57 = &v63 - v67;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v34 + 1, 24);
            v36 = v67;
            v35 = (v67 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v34 + 1, 24);
            v35 = &v63;
            v36 = v67;
          }
        }

        v37 = &v36[24 * v68];
        v38 = *v35;
        *(v37 + 2) = v35[2];
        *v37 = v38;
        ++v68;
        if (v66[0])
        {
          v39 = &v63;
          mlir::DiagnosticArgument::DiagnosticArgument(&v63, a2);
          v40 = v67;
          if (v68 >= v69)
          {
            if (v67 <= &v63 && v67 + 24 * v68 > &v63)
            {
              v58 = &v63 - v67;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
              v40 = v67;
              v39 = (v67 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
              v39 = &v63;
              v40 = v67;
            }
          }

          v41 = &v40[24 * v68];
          v42 = *v39;
          *(v41 + 2) = v39[2];
          *v41 = v42;
          ++v68;
        }
      }
    }
  }

  v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
  if (v66[0])
  {
    mlir::InFlightDiagnostic::report(v66);
  }

  if (v76 == 1)
  {
    if (v75 != &v76)
    {
      free(v75);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v74;
      v46 = __p;
      if (v74 != __p)
      {
        do
        {
          v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v74 = v44;
      operator delete(v46);
    }

    v47 = v71;
    if (v71)
    {
      v48 = v72;
      v49 = v71;
      if (v72 != v71)
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
        v49 = v71;
      }

      v72 = v47;
      operator delete(v49);
    }

    if (v67 != v70)
    {
      free(v67);
    }
  }

  return v43;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::CreateComplexOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.create_complex", 18, a3, v10, a4, a5);
  *v11 = &unk_1F5B26B60;
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

uint64_t mlir::mps::CreateTextureTensorOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v74.var0 = "compressed";
  v74.var1 = 10;
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
        v61 = 55;
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

  v75.var0 = "pixel_format";
  v75.var1 = 12;
  v36 = mlir::DictionaryAttr::get(&v58, v75);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id)
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

uint64_t mlir::mps::CreateTextureTensorOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "compressed", 10, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "pixel_format", 12, v8);
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps19(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid MetalPixelFormat";
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

uint64_t mlir::mps::CreateTextureTensorOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::mps::MetalPixelFormatAttr>(a1, v3 + 1) & 1;
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::CreateTextureTensorOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::mps::MetalPixelFormatAttr>(a1, v3 + 1) & 1;
    }
  }

  return 0;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::MetalPixelFormatAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::MetalPixelFormatAttr]";
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

void mlir::mps::CreateTextureTensorOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v28 = a3;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  v9 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v34 = &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id;
  *(&v34 + 1) = v9;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27MetalPixelFormatAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20MetalPixelFormatAttrEJNS2_16MetalPixelFormatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v32 = &v34;
  v29 = a4;
  v11 = a4 ^ 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * (((8 * a4) | 4) ^ v11);
  v30[0] = &v29;
  *&v35 = &v29;
  *(&v35 + 1) = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MetalPixelFormatAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MetalPixelFormatAttrStorage,mlir::mps::MetalPixelFormat>(llvm::function_ref<void ()(mlir::mps::detail::MetalPixelFormatAttrStorage *)>,mlir::TypeID,mlir::mps::MetalPixelFormat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MetalPixelFormatAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MetalPixelFormatAttrStorage,mlir::mps::MetalPixelFormat>(llvm::function_ref<void ()(mlir::mps::detail::MetalPixelFormatAttrStorage *)>,mlir::TypeID,mlir::mps::MetalPixelFormat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v35);
  v15 = ParametricStorageTypeImpl;
  v16 = *(a2 + 256);
  if (v16)
  {
    *(v16 + 8) = ParametricStorageTypeImpl;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v17 = operator new(0x10uLL);
  *v17 = 0;
  v17[1] = 0;
  *(a2 + 256) = v17;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::CreateTextureTensorOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 8) = v15;
  if (a5)
  {
LABEL_7:
    UnitAttr = mlir::Builder::getUnitAttr(a1, v14);
    v19 = *(a2 + 256);
    if (!v19)
    {
      v20 = operator new(0x10uLL);
      *v20 = 0;
      v20[1] = 0;
      *(a2 + 256) = v20;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::CreateTextureTensorOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CreateTextureTensorOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v19 = *(a2 + 256);
    }

    *v19 = UnitAttr;
  }

LABEL_12:
  __src = v33;
  v32 = 0x200000000;
  mlir::ValueRange::ValueRange(&v34, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v30, *(a2 + 224), *(a2 + 232));
  v35 = v34;
  if (v32 == 1)
  {
    goto LABEL_19;
  }

  if (!v32)
  {
    if (HIDWORD(v32))
    {
      v22 = 0;
LABEL_17:
      bzero(__src + 8 * v22, 8 - 8 * v22);
      goto LABEL_18;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v33, 1uLL, 8);
    v22 = v32;
    if (v32 != 1)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  LODWORD(v32) = 1;
LABEL_19:
  v23 = mlir::ValueRange::dereference_iterator(&v35, 0);
  v24 = __src;
  *__src = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
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