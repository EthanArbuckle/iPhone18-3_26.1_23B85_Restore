uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps15(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseFPElementsAttr::classof(a2))
  {
    goto LABEL_15;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v45 = a2;
  v46 = v8;
  Type = mlir::ElementsAttr::getType(&v45);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v48[0] = v10;
  v48[1] = Type;
  mlir::CallableOpInterface::getArgAttrsAttr(v48);
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v43[0] = a2;
  v43[1] = v12;
  v13 = mlir::ElementsAttr::getType(v43);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v44[0] = v14;
  v44[1] = v13;
  mlir::CallableOpInterface::getArgAttrsAttr(v44);
  if (v15 == 1)
  {
    goto LABEL_40;
  }

  v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v41[0] = a2;
  v41[1] = v16;
  v17 = mlir::ElementsAttr::getType(v41);
  v18 = v17;
  if (v17)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  v42[0] = v18;
  v42[1] = v17;
  mlir::CallableOpInterface::getArgAttrsAttr(v42);
  if (v19 == 4)
  {
LABEL_40:
    v38 = a2;
    v39[0] = mlir::ArrayAttr::getValue(&v38);
    v39[1] = v20;
    isSplat = mlir::ElementsAttr::isSplat(v39);
    if (mlir::Type::isF16(&isSplat))
    {
      return 1;
    }

    v35 = a2;
    v36[0] = mlir::ArrayAttr::getValue(&v35);
    v36[1] = v21;
    v37 = mlir::ElementsAttr::isSplat(v36);
    if (mlir::Type::isF32(&v37))
    {
      return 1;
    }
  }

LABEL_15:
  v47 = 257;
  mlir::Operation::emitOpError(a1, &v45, v48);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v48, "attribute '");
  if (*v23)
  {
    v47 = 261;
    v45 = a3;
    v46 = a4;
    v24 = v23;
    mlir::Diagnostic::operator<<((v23 + 1), &v45);
    v23 = v24;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1/4");
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v54;
      v28 = __p;
      if (v54 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v54 = v26;
      operator delete(v28);
    }

    v29 = v51;
    if (v51)
    {
      v30 = v52;
      v31 = v51;
      if (v52 != v51)
      {
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
        v31 = v51;
      }

      v52 = v29;
      operator delete(v31);
    }

    if (v49 != &v50)
    {
      free(v49);
    }
  }

  return v22;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps16(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_15;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v45 = a2;
  v46 = v8;
  Type = mlir::ElementsAttr::getType(&v45);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v48[0] = v10;
  v48[1] = Type;
  mlir::CallableOpInterface::getArgAttrsAttr(v48);
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v43[0] = a2;
  v43[1] = v12;
  v13 = mlir::ElementsAttr::getType(v43);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v44[0] = v14;
  v44[1] = v13;
  mlir::CallableOpInterface::getArgAttrsAttr(v44);
  if (v15 == 1)
  {
    goto LABEL_40;
  }

  v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v41[0] = a2;
  v41[1] = v16;
  v17 = mlir::ElementsAttr::getType(v41);
  v18 = v17;
  if (v17)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  v42[0] = v18;
  v42[1] = v17;
  mlir::CallableOpInterface::getArgAttrsAttr(v42);
  if (v19 == 4)
  {
LABEL_40:
    v38 = a2;
    v39[0] = mlir::ArrayAttr::getValue(&v38);
    v39[1] = v20;
    isSplat = mlir::ElementsAttr::isSplat(v39);
    if (mlir::Type::isSignedInteger(&isSplat, 8))
    {
      return 1;
    }

    v35 = a2;
    v36[0] = mlir::ArrayAttr::getValue(&v35);
    v36[1] = v21;
    v37 = mlir::ElementsAttr::isSplat(v36);
    if (mlir::Type::isUnsignedInteger(&v37, 8))
    {
      return 1;
    }
  }

LABEL_15:
  v47 = 257;
  mlir::Operation::emitOpError(a1, &v45, v48);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v48, "attribute '");
  if (*v23)
  {
    v47 = 261;
    v45 = a3;
    v46 = a4;
    v24 = v23;
    mlir::Diagnostic::operator<<((v23 + 1), &v45);
    v23 = v24;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1/4");
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v54;
      v28 = __p;
      if (v54 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v54 = v26;
      operator delete(v28);
    }

    v29 = v51;
    if (v51)
    {
      v30 = v52;
      v31 = v51;
      if (v52 != v51)
      {
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
        v31 = v51;
      }

      v52 = v29;
      operator delete(v31);
    }

    if (v49 != &v50)
    {
      free(v49);
    }
  }

  return v22;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps17(uint64_t a1, void *a2, void *a3, const char *a4)
{
  v83 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseElementsAttr::classof(a2))
  {
    goto LABEL_26;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v70 = a2;
  v71 = v8;
  Type = mlir::ElementsAttr::getType(&v70);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v74[0] = v10;
  v74[1] = Type;
  mlir::CallableOpInterface::getArgAttrsAttr(v74);
  if (!v11)
  {
    goto LABEL_57;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v68[0] = a2;
  v68[1] = v12;
  v13 = mlir::ElementsAttr::getType(v68);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v69[0] = v14;
  v69[1] = v13;
  mlir::CallableOpInterface::getArgAttrsAttr(v69);
  if (v15 == 1)
  {
    goto LABEL_57;
  }

  v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v66[0] = a2;
  v66[1] = v16;
  v17 = mlir::ElementsAttr::getType(v66);
  v18 = v17;
  if (v17)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  v67[0] = v18;
  v67[1] = v17;
  mlir::CallableOpInterface::getArgAttrsAttr(v67);
  if (v19 == 2)
  {
    goto LABEL_57;
  }

  v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v64[0] = a2;
  v64[1] = v20;
  v21 = mlir::ElementsAttr::getType(v64);
  v22 = v21;
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  v65[0] = v22;
  v65[1] = v21;
  mlir::CallableOpInterface::getArgAttrsAttr(v65);
  if (v23 == 3)
  {
    goto LABEL_57;
  }

  v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v62[0] = a2;
  v62[1] = v24;
  v25 = mlir::ElementsAttr::getType(v62);
  v26 = v25;
  if (v25)
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  v63[0] = v26;
  v63[1] = v25;
  mlir::CallableOpInterface::getArgAttrsAttr(v63);
  if (v27 == 4)
  {
    goto LABEL_57;
  }

  v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v60[0] = a2;
  v60[1] = v28;
  v29 = mlir::ElementsAttr::getType(v60);
  v30 = v29;
  if (v29)
  {
    v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  v61[0] = v30;
  v61[1] = v29;
  mlir::CallableOpInterface::getArgAttrsAttr(v61);
  if (v31 == 5)
  {
    goto LABEL_57;
  }

  v32 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v58[0] = a2;
  v58[1] = v32;
  v33 = mlir::ElementsAttr::getType(v58);
  v34 = v33;
  if (v33)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
  }

  v59[0] = v34;
  v59[1] = v33;
  mlir::CallableOpInterface::getArgAttrsAttr(v59);
  if (v35 == 6)
  {
LABEL_57:
    v55 = a2;
    v56[0] = mlir::ArrayAttr::getValue(&v55);
    v56[1] = v36;
    isSplat = mlir::ElementsAttr::isSplat(v56);
    if (mlir::Type::isF16(&isSplat))
    {
      return 1;
    }
  }

LABEL_26:
  v73 = 257;
  mlir::Operation::emitOpError(a1, &v70, v74);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v74, "attribute '");
  if (*v38)
  {
    v73 = 261;
    v70 = a3;
    v71 = a4;
    v39 = v38;
    mlir::Diagnostic::operator<<(v38 + 8, &v70);
    v38 = v39;
    if (*v39)
    {
      v40 = *(v39 + 24);
      LODWORD(v70) = 3;
      v71 = "' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
      v72 = 97;
      v41 = *(v39 + 32);
      v42 = &v70;
      if (v41 >= *(v39 + 36))
      {
        if (v40 <= &v70 && v40 + 24 * v41 > &v70)
        {
          v54 = &v70 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, v39 + 40, v41 + 1, 24);
          v38 = v39;
          v40 = *(v39 + 24);
          v42 = &v54[v40];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, v39 + 40, v41 + 1, 24);
          v38 = v39;
          v40 = *(v39 + 24);
          v42 = &v70;
        }
      }

      v43 = v40 + 24 * *(v38 + 32);
      v44 = *v42;
      *(v43 + 16) = *(v42 + 2);
      *v43 = v44;
      ++*(v38 + 32);
    }
  }

  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
  if (v74[0])
  {
    mlir::InFlightDiagnostic::report(v74);
  }

  if (v82 == 1)
  {
    if (v81 != &v82)
    {
      free(v81);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v80;
      v47 = __p;
      if (v80 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v80 = v45;
      operator delete(v47);
    }

    v48 = v77;
    if (v77)
    {
      v49 = v78;
      v50 = v77;
      if (v78 != v77)
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
        v50 = v77;
      }

      v78 = v48;
      operator delete(v50);
    }

    if (v75 != &v76)
    {
      free(v75);
    }
  }

  return v37;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps18(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    return 1;
  }

  v20 = 257;
  mlir::Operation::emitOpError(a1, v19, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, "attribute '");
  if (*v6)
  {
    v20 = 261;
    v19[0] = a3;
    v19[1] = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), v19);
    v6 = v7;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: dictionary of named attribute values");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v9;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps6(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v59[0] = a2;
    v59[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v59);
    if (mlir::Type::isF32(&isSplat) || mlir::Type::isF16(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 6) || mlir::Type::isUnsignedInteger(&isSplat, 8))
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
      v57 = " must be 4D/5D memref of 32-bit float or 16-bit float or 8-bit signed integer or 8-bit unsigned integer or 2/4/6/8-bit unsigned integer values, but got ";
      v58 = 152;
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

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_0>(uint64_t *a1)
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
    v15 = 0;
    if (v6 > 0x40)
    {
      v7 = *v14;
      if (!v14)
      {
        goto LABEL_4;
      }

      operator delete[](v14);
      if (v15 >= 0x41 && v14)
      {
        operator delete[](v14);
LABEL_4:
        if (v7 >= 3)
        {
          return 0;
        }

        goto LABEL_5;
      }

      if (v7 > 2)
      {
        return 0;
      }
    }

    else if (v6 && ((v14 << -v6) >> -v6) >= 3)
    {
      return 0;
    }

LABEL_5:
    v5 = v13 + 1;
    *&v13 = v13 + 1;
  }

  return 1;
}

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(uint64_t *a1)
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
    v15 = 0;
    if (v6 > 0x40)
    {
      v7 = *v14;
      if (!v14)
      {
        goto LABEL_4;
      }

      operator delete[](v14);
      if (v15 >= 0x41 && v14)
      {
        operator delete[](v14);
LABEL_4:
        if (v7 >= 2)
        {
          return 0;
        }

        goto LABEL_5;
      }

      if (v7 > 1)
      {
        return 0;
      }
    }

    else if (v6 && ((v14 << -v6) >> -v6) >= 2)
    {
      return 0;
    }

LABEL_5:
    v5 = v13 + 1;
    *&v13 = v13 + 1;
  }

  return 1;
}

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_2>(uint64_t *a1)
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
    v15 = 0;
    if (v6 > 0x40)
    {
      v7 = *v14;
      if (!v14)
      {
        goto LABEL_4;
      }

      operator delete[](v14);
      if (v15 >= 0x41 && v14)
      {
        operator delete[](v14);
LABEL_4:
        if (v7 >= 6)
        {
          return 0;
        }

        goto LABEL_5;
      }

      if (v7 > 5)
      {
        return 0;
      }
    }

    else if (v6 && ((v14 << -v6) >> -v6) >= 6)
    {
      return 0;
    }

LABEL_5:
    v5 = v13 + 1;
    *&v13 = v13 + 1;
  }

  return 1;
}

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_4>(uint64_t *a1)
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
    v15 = 0;
    if (v6 > 0x40)
    {
      v7 = *v14;
      if (!v14)
      {
        goto LABEL_4;
      }

      operator delete[](v14);
      if (v15 >= 0x41 && v14)
      {
        operator delete[](v14);
LABEL_4:
        if (v7 >= 9)
        {
          return 0;
        }

        goto LABEL_5;
      }

      if (v7 > 8)
      {
        return 0;
      }
    }

    else if (v6 && ((v14 << -v6) >> -v6) >= 9)
    {
      return 0;
    }

LABEL_5:
    v5 = v13 + 1;
    *&v13 = v13 + 1;
  }

  return 1;
}

uint64_t mlir::anec::CropResize::getCropDimsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 24));
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

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::CropResize>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::CropResize::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::CropResize::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::CropResize>::inferReturnTypes(v13, v14, 1, a3, a4, Dictionary, v17, v18, v23[0], v23[1], &__src) & 1) == 0)
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

uint64_t mlir::anec::CropResize::populateDefaultAttrs(mlir::anec::CropResize *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  result = mlir::NamedAttrList::get(a2, v4[3]);
  if (!result)
  {
    v6 = v4[3];
    v15[0] = 2;
    IntegerType = mlir::Builder::getIntegerType(&Context, 64, 0);
    v8 = mlir::RankedTensorType::get(v15, 1, IntegerType, 0);
    if (v8)
    {
      v9 = v8;
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
      v8 = v9;
    }

    else
    {
      v10 = 0;
    }

    v14[0] = 0;
    v14[1] = 0;
    v11 = mlir::DenseElementsAttr::getFromRawBuffer(v8, v10, v14, 16, 8, 1, 0);
    mlir::NamedAttribute::NamedAttribute(v13, v6, v11);
    return mlir::NamedAttrList::push_back(a2, v13[0], v13[1]);
  }

  return result;
}

BOOL mlir::anec::CropResize::verifyInvariantsImpl(mlir::Operation **this)
{
  v72 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_5:
    v60[0] = "requires attribute 'background_value'";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 != 1)
    {
      return v7;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v69;
      v10 = __p;
      if (v69 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v69 = v8;
      operator delete(v10);
    }

    v11 = v66;
    if (v66)
    {
      v12 = v67;
      v13 = v66;
      if (v67 == v66)
      {
        goto LABEL_84;
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
LABEL_83:
      v13 = v66;
LABEL_84:
      v67 = v11;
      operator delete(v13);
    }

LABEL_85:
    if (v64 != &v65)
    {
      free(v64);
    }

    return v7;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::CallGraphNode::getCallableRegion((v4 + v5)) != **(*(*this + 6) + 96))
  {
    v5 += 16;
    if (v6 == v5)
    {
      goto LABEL_5;
    }
  }

  v16 = v6 - v5;
  if (v6 == v5)
  {
LABEL_25:
    v60[0] = "requires attribute 'box_coordinate_mode'";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 != 1)
    {
      return v7;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v69;
      v20 = __p;
      if (v69 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v69 = v18;
      operator delete(v20);
    }

    v11 = v66;
    if (v66)
    {
      v21 = v67;
      v13 = v66;
      if (v67 == v66)
      {
        goto LABEL_84;
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
      goto LABEL_83;
    }

    goto LABEL_85;
  }

  v17 = *(v4 + v5 + 8);
  while (mlir::CallGraphNode::getCallableRegion((v4 + v5)) != *(*(*(*this + 6) + 96) + 8))
  {
    v16 -= 16;
    v5 += 16;
    if (v6 == v5)
    {
      goto LABEL_25;
    }
  }

  if (v6 == v5)
  {
LABEL_45:
    v60[0] = "requires attribute 'coordinate_mode'";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 != 1)
    {
      return v7;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v69;
      v28 = __p;
      if (v69 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v69 = v26;
      operator delete(v28);
    }

    v11 = v66;
    if (v66)
    {
      v29 = v67;
      v13 = v66;
      if (v67 == v66)
      {
        goto LABEL_84;
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

      while (v29 != v11);
      goto LABEL_83;
    }

    goto LABEL_85;
  }

  v24 = 0;
  v25 = *(v4 + v5 + 8);
  while (mlir::CallGraphNode::getCallableRegion((v4 + v5 + v24)) != *(*(*(*this + 6) + 96) + 16))
  {
    v24 += 16;
    if (v16 == v24)
    {
      goto LABEL_45;
    }
  }

  v32 = v16 - v24;
  if (v16 == v24)
  {
LABEL_67:
    v60[0] = "requires attribute 'normalized_range'";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 != 1)
    {
      return v7;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v69;
      v38 = __p;
      if (v69 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v69 = v36;
      operator delete(v38);
    }

    v11 = v66;
    if (v66)
    {
      v39 = v67;
      v13 = v66;
      if (v67 == v66)
      {
        goto LABEL_84;
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

      while (v39 != v11);
      goto LABEL_83;
    }

    goto LABEL_85;
  }

  v33 = 0;
  v34 = *(v4 + v24 + v5 + 8);
  v35 = (v4 + v5 + v24 + 8);
  while (mlir::CallGraphNode::getCallableRegion((v35 - 1)) != *(*(*(*this + 6) + 96) + 32))
  {
    if (mlir::CallGraphNode::getCallableRegion((v35 - 1)) == *(*(*(*this + 6) + 96) + 24))
    {
      v33 = *v35;
    }

    v35 += 2;
    v32 -= 16;
    if (!v32)
    {
      goto LABEL_67;
    }
  }

  if (!v32)
  {
LABEL_92:
    v60[0] = "requires attribute 'output_dims'";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v63);
    }

    return v7;
  }

  v43 = 0;
  v44 = *v35;
  while (1)
  {
    v45 = &v35[v43 / 8];
    if (mlir::CallGraphNode::getCallableRegion(&v35[v43 / 8 - 1]) == *(*(*(*this + 6) + 96) + 40))
    {
      break;
    }

    v43 += 16;
    if (v32 == v43)
    {
      goto LABEL_92;
    }
  }

  v46 = v32 - v43;
  if (v32 == v43)
  {
LABEL_100:
    v48 = "requires attribute 'padding_modes'";
LABEL_111:
    v60[0] = v48;
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
    return v7;
  }

  v47 = *v45;
  while (mlir::CallGraphNode::getCallableRegion((v45 - 1)) != *(*(*(*this + 6) + 96) + 48))
  {
    v45 += 2;
    v46 -= 16;
    if (!v46)
    {
      goto LABEL_100;
    }
  }

  v59 = v47;
  if (!v46)
  {
LABEL_105:
    v48 = "requires attribute 'sampling_method'";
    goto LABEL_111;
  }

  v49 = 0;
  v58 = *v45;
  while (1)
  {
    v50 = &v45[v49 / 8];
    if (mlir::CallGraphNode::getCallableRegion(&v45[v49 / 8 - 1]) == *(*(*(*this + 6) + 96) + 56))
    {
      break;
    }

    v49 += 16;
    if (v46 == v49)
    {
      goto LABEL_105;
    }
  }

  v51 = v46 - v49;
  if (!v51)
  {
LABEL_110:
    v48 = "requires attribute 'sampling_mode'";
    goto LABEL_111;
  }

  v54 = *v50;
  v53 = (v50 - 1);
  v52 = v54;
  while (mlir::CallGraphNode::getCallableRegion(v53) != *(*(*(*this + 6) + 96) + 64))
  {
    v53 = (v53 + 16);
    v51 -= 16;
    if (!v51)
    {
      goto LABEL_110;
    }
  }

  v55 = *(v53 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(*this, v59, "output_dims", 11) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(*this, v33, "crop_dims", 9) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps19(*this, v25, "box_coordinate_mode", 0x13) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps20(*this, v34, "coordinate_mode", 15) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps21(*this, v44, "normalized_range", 16) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps22(*this, v55, "sampling_mode", 13) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps23(*this, v52, "sampling_method", 15) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps24(*this, v58, "padding_modes", 13) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v17, "background_value", 0x10) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps7(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps8(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v56 = *this - 16;
  }

  else
  {
    v56 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v56, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps19(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2 || (mlir::anec::BoxCoordinateModeAttr::classof(a2) & 1) != 0)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: valid BoxCoordinateMode");
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

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 5;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 3)
          {
            break;
          }

          continue;
        }

        if (v29 > 2)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 3)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: CoordinateMode elements attribute of shape {5}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps21(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 5;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 2)
          {
            break;
          }

          continue;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: NormalizedCoordinateRange elements attribute of shape {5}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps22(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 5;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 6)
          {
            break;
          }

          continue;
        }

        if (v29 > 5)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 6)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: SamplingGridMode elements attribute of shape {5}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps23(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 5;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 2)
          {
            break;
          }

          continue;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {5}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 5;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 9)
          {
            break;
          }

          continue;
        }

        if (v29 > 8)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 9)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: PaddingMode elements attribute of shape {5}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps7(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v56[0] = a2;
    v56[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v56);
    if (mlir::Type::isF16(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 4))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v49 = a2;
      v50 = v11;
      if (mlir::CallOpInterface::getArgOperands(&v49))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v53 = a2;
        v54 = v12;
        mlir::CallableOpInterface::getArgAttrsAttr(&v53);
        if (v13 == 5)
        {
          return 1;
        }
      }
    }
  }

  v51 = 261;
  v49 = a3;
  v50 = a4;
  mlir::Operation::emitOpError(a1, &v49, v56);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v56, " #");
  if (*v15)
  {
    v17 = v15 + 24;
    v16 = *(v15 + 24);
    LODWORD(v53) = 5;
    v54 = a5;
    v18 = *(v15 + 32);
    v19 = &v53;
    if (v18 >= *(v15 + 36))
    {
      if (v16 <= &v53 && v16 + 24 * v18 > &v53)
      {
        v44 = &v53 - v16;
        v45 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, v15 + 40, v18 + 1, 24);
        v15 = v45;
        v16 = *(v45 + 24);
        v19 = &v44[v16];
      }

      else
      {
        v42 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, v15 + 40, v18 + 1, 24);
        v15 = v42;
        v16 = *(v42 + 24);
        v19 = &v53;
      }
    }

    v20 = v16 + 24 * *(v15 + 32);
    v21 = *v19;
    *(v20 + 16) = *(v19 + 2);
    *v20 = v21;
    v22 = (*(v15 + 32) + 1);
    *(v15 + 32) = v22;
    if (*v15)
    {
      LODWORD(v53) = 3;
      v54 = " must be 5D memref of 16-bit float or 8-bit signed integer or 8-bit unsigned integer or 4-bit signed integer values, but got ";
      v55 = 125;
      v23 = *(v15 + 24);
      v24 = &v53;
      if (v22 >= *(v15 + 36))
      {
        if (v23 <= &v53 && v23 + 24 * v22 > &v53)
        {
          v46 = &v53 - v23;
          v47 = v15;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v15 + 40, v22 + 1, 24);
          v15 = v47;
          v23 = *(v47 + 24);
          v24 = &v46[v23];
        }

        else
        {
          v43 = v15;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v15 + 40, v22 + 1, 24);
          v15 = v43;
          v23 = *(v43 + 24);
          v24 = &v53;
        }
      }

      v25 = v23 + 24 * *(v15 + 32);
      v26 = *v24;
      *(v25 + 16) = *(v24 + 2);
      *v25 = v26;
      ++*(v15 + 32);
      if (*v15)
      {
        v27 = &v53;
        v28 = v15;
        mlir::DiagnosticArgument::DiagnosticArgument(&v53, a2);
        v15 = v28;
        v29 = *(v28 + 32);
        v30 = *(v28 + 24);
        if (v29 >= *(v28 + 36))
        {
          if (v30 <= &v53 && v30 + 24 * v29 > &v53)
          {
            v48 = &v53 - v30;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v28 + 40, v29 + 1, 24);
            v15 = v28;
            v30 = *(v28 + 24);
            v27 = &v48[v30];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v28 + 40, v29 + 1, 24);
            v15 = v28;
            v30 = *(v28 + 24);
            v27 = &v53;
          }
        }

        v31 = v30 + 24 * *(v15 + 32);
        v32 = *v27;
        *(v31 + 16) = *(v27 + 2);
        *v31 = v32;
        ++*(v15 + 32);
      }
    }
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v56[0])
  {
    mlir::InFlightDiagnostic::report(v56);
  }

  if (v64 == 1)
  {
    if (v63 != &v64)
    {
      free(v63);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v62;
      v35 = __p;
      if (v62 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v62 = v33;
      operator delete(v35);
    }

    v36 = v59;
    if (v59)
    {
      v37 = v60;
      v38 = v59;
      if (v60 != v59)
      {
        do
        {
          v40 = *--v37;
          v39 = v40;
          *v37 = 0;
          if (v40)
          {
            operator delete[](v39);
          }
        }

        while (v37 != v36);
        v38 = v59;
      }

      v60 = v36;
      operator delete(v38);
    }

    if (v57 != &v58)
    {
      free(v57);
    }
  }

  return v14;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps8(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v10 = a1;
    v49[0] = a2;
    v49[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v9 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v49);
    isF16 = mlir::Type::isF16(&isSplat);
    a1 = v10;
    if (isF16)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v43 = a2;
      v44 = v12;
      ArgOperands = mlir::CallOpInterface::getArgOperands(&v43);
      a1 = v10;
      if (ArgOperands)
      {
        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v47 = a2;
        v48 = v14;
        mlir::CallableOpInterface::getArgAttrsAttr(&v47);
        a1 = v10;
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v45 = 261;
  v43 = a3;
  v44 = a4;
  mlir::Operation::emitOpError(a1, &v43, v49);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v49, " #");
  if (*v17)
  {
    v18 = *(v17 + 24);
    LODWORD(v47) = 5;
    v48 = a5;
    v19 = *(v17 + 32);
    v20 = &v47;
    if (v19 >= *(v17 + 36))
    {
      if (v18 <= &v47 && v18 + 24 * v19 > &v47)
      {
        v40 = &v47 - v18;
        v41 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, v17 + 40, v19 + 1, 24);
        v17 = v41;
        v18 = *(v41 + 24);
        v20 = &v40[v18];
      }

      else
      {
        v39 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, v17 + 40, v19 + 1, 24);
        v17 = v39;
        v18 = *(v39 + 24);
        v20 = &v47;
      }
    }

    v21 = v18 + 24 * *(v17 + 32);
    v22 = *v20;
    *(v21 + 16) = *(v20 + 2);
    *v21 = v22;
    ++*(v17 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v17, " must be 5D memref of 16-bit float values, but got ");
  if (*v23)
  {
    v24 = &v47;
    v25 = v23;
    mlir::DiagnosticArgument::DiagnosticArgument(&v47, a2);
    v23 = v25;
    v26 = *(v25 + 24);
    v27 = *(v25 + 32);
    if (v27 >= *(v25 + 36))
    {
      if (v26 <= &v47 && v26 + 24 * v27 > &v47)
      {
        v42 = &v47 - v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, v25 + 40, v27 + 1, 24);
        v23 = v25;
        v26 = *(v25 + 24);
        v24 = &v42[v26];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, v25 + 40, v27 + 1, 24);
        v23 = v25;
        v26 = *(v25 + 24);
        v24 = &v47;
      }
    }

    v28 = v26 + 24 * *(v23 + 32);
    v29 = *v24;
    *(v28 + 16) = *(v24 + 2);
    *v28 = v29;
    ++*(v23 + 32);
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v49[0])
  {
    mlir::InFlightDiagnostic::report(v49);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v55;
      v32 = __p;
      if (v55 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v55 = v30;
      operator delete(v32);
    }

    v33 = v52;
    if (v52)
    {
      v34 = v53;
      v35 = v52;
      if (v53 != v52)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            operator delete[](v36);
          }
        }

        while (v34 != v33);
        v35 = v52;
      }

      v53 = v33;
      operator delete(v35);
    }

    if (v50 != &v51)
    {
      free(v50);
    }
  }

  return v16;
}

void mlir::anec::DeQuant::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v19 = a4;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v11 = **(*(a2 + 8) + 96);
  F32Type = mlir::Builder::getF32Type(a1, v12);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a5);
  mlir::NamedAttribute::NamedAttribute(&v20, v11, FloatAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v20, v21);
  v15 = *(*(*(a2 + 8) + 96) + 8);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 1);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a6);
  mlir::NamedAttribute::NamedAttribute(&v20, v15, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v20, v21);
  v18 = *(a2 + 72);
  if (v18 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18 + 1, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v18) = a3;
  ++*(a2 + 72);
}

BOOL mlir::anec::DeQuant::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x1E69E9840];
  v28[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v28);
  if (!v3)
  {
LABEL_5:
    v26[0] = "requires attribute 'scale'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v34;
      v9 = __p;
      if (v34 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v34 = v7;
      operator delete(v9);
    }

    v10 = v31;
    if (v31)
    {
      v11 = v32;
      v12 = v31;
      if (v32 == v31)
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
      v12 = v31;
LABEL_42:
      v32 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v29 != &v30)
    {
      free(v29);
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
    v26[0] = "requires attribute 'zero_point'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v34;
      v18 = __p;
      if (v34 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v34 = v16;
      operator delete(v18);
    }

    v10 = v31;
    if (v31)
    {
      v19 = v32;
      v12 = v31;
      if (v32 == v31)
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

  v22 = *(v4 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v15, "scale", 5) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(*this, v22, "zero_point", 0xA) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v23 = *this - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

void mlir::anec::Deconvolution::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Deconvolution>::inferReturnTypes(v20, v21, 1, v33[0], v33[1], Dictionary, v24, v25, v32[0], v32[1], &__src))
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

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Deconvolution>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::Deconvolution::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::Deconvolution::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Deconvolution>::inferReturnTypes(v29, v30, 1, v42[0], v42[1], Dictionary, v33, v34, v41[0], v41[1], &__src))
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

void mlir::anec::ElementwiseAdd::build(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v16 = a4;
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  __src = v22;
  v21 = 0x200000000;
  v6 = *a1;
  v7 = *a2;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v10 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v18, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(v6, v7, 1, v19[0], v19[1], Dictionary, v10, v11, v18[0], v18[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = __src;
  v13 = v21;
  v14 = *(a2 + 72);
  v15 = v14 + v21;
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
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::anec::ElementwiseAdd::verifyInvariantsImpl(mlir::anec::ElementwiseAdd *this)
{
  if ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::ElementwiseAdd::getCanonicalizationPatterns(uint64_t *a1)
{
  mlir::PatternBenefit::PatternBenefit(&v6, 1);
  v2 = v6;
  v3 = *a1;
  v4 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v4 + 1), "anec.add", 8, v2, v3, 0, 0);
  *v4 = &unk_1F5B34078;
  v4[12] = mlir::anec::ElementwiseAdd::canonicalize;
  v7 = v4;
  mlir::RewritePatternSet::add(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(uint64_t *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36[6] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = v36;
  v35 = 0x600000000;
  v32 = a4;
  if (a5)
  {
    v16 = 0;
    while (1)
    {
      v17 = (*(mlir::ValueRange::dereference_iterator(&v32, v16) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      v20 = v35;
      if (v35 >= HIDWORD(v35))
      {
        v22 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v35 + 1, 8);
        RankPromotionTypeForANE = v22;
        v20 = v35;
      }

      *(v34 + v20) = RankPromotionTypeForANE;
      v21 = (v35 + 1);
      LODWORD(v35) = v35 + 1;
      v16 = v33 + 1;
      v33 = v16;
      if (v16 == a5)
      {
        v25 = v34;
        goto LABEL_13;
      }
    }

    v23.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v23, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v25 = v36;
LABEL_13:
    mlir::ValueRange::ValueRange(&v32, v25, v21);
    result = mlir::anec::inferElementwiseCompareReturnTypes(a1, v26, v27, a4, a5, v28, v29, v30, v32, v33, a11);
  }

  if (v34 != v36)
  {
    v31 = result;
    free(v34);
    return v31;
  }

  return result;
}

void mlir::anec::ElementwiseEqual::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(v13, v14, 1, a3, a4, Dictionary, v17, v18, v23[0], v23[1], &__src) & 1) == 0)
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

void mlir::anec::ElementwiseEqualZero::build(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  __src = v20;
  v19 = 0x200000000;
  v5 = *a1;
  v6 = *a2;
  mlir::ValueRange::ValueRange(v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v9 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v16, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(v5, v6, 1, v17[0], v17[1], Dictionary, v9, v10, v16[0], v16[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v11 = __src;
  v12 = v19;
  v13 = *(a2 + 72);
  v14 = v13 + v19;
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
  if (__src != v20)
  {
    free(__src);
  }
}

void mlir::anec::ElementwiseGreaterThanEqualZero::build(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  __src = v20;
  v19 = 0x200000000;
  v5 = *a1;
  v6 = *a2;
  mlir::ValueRange::ValueRange(v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v9 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v16, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(v5, v6, 1, v17[0], v17[1], Dictionary, v9, v10, v16[0], v16[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v11 = __src;
  v12 = v19;
  v13 = *(a2 + 72);
  v14 = v13 + v19;
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
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::anec::ElementwiseMax::getCanonicalizationPatterns(uint64_t *a1)
{
  mlir::PatternBenefit::PatternBenefit(&v6, 1);
  v2 = v6;
  v3 = *a1;
  v4 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v4 + 1), "anec.max", 8, v2, v3, 0, 0);
  *v4 = &unk_1F5B340D0;
  v4[12] = mlir::anec::ElementwiseMax::canonicalize;
  v7 = v4;
  mlir::RewritePatternSet::add(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::anec::ElementwiseMin::getCanonicalizationPatterns(uint64_t *a1)
{
  mlir::PatternBenefit::PatternBenefit(&v6, 1);
  v2 = v6;
  v3 = *a1;
  v4 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v4 + 1), "anec.min", 8, v2, v3, 0, 0);
  *v4 = &unk_1F5B34128;
  v4[12] = mlir::anec::ElementwiseMin::canonicalize;
  v7 = v4;
  mlir::RewritePatternSet::add(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::anec::ElementwiseMult::getCanonicalizationPatterns(uint64_t *a1)
{
  mlir::PatternBenefit::PatternBenefit(&v6, 1);
  v2 = v6;
  v3 = *a1;
  v4 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v4 + 1), "anec.mult", 9, v2, v3, 0, 0);
  *v4 = &unk_1F5B34180;
  v4[12] = mlir::anec::ElementwiseMult::canonicalize;
  v7 = v4;
  mlir::RewritePatternSet::add(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::anec::ElementwiseSub::getCanonicalizationPatterns(uint64_t *a1)
{
  mlir::PatternBenefit::PatternBenefit(&v6, 1);
  v2 = v6;
  v3 = *a1;
  v4 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v4 + 1), "anec.sub", 8, v2, v3, 0, 0);
  *v4 = &unk_1F5B341D8;
  v4[12] = mlir::anec::ElementwiseSub::canonicalize;
  v7 = v4;
  mlir::RewritePatternSet::add(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

BOOL mlir::anec::Elu::verifyInvariantsImpl(mlir::Operation **this)
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

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, *(v4 + 1), "alpha", 5) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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
    v18 = "requires attribute 'alpha'";
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

void mlir::anec::Flatten::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Flatten>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
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

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Flatten>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::Flatten::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

BOOL mlir::anec::Flatten::verifyInvariantsImpl(mlir::Operation **this)
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

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps26(*this, *(v4 + 1), "flatten_mode", 0xC) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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
    v18 = "requires attribute 'flatten_mode'";
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

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps26(uint64_t a1, void *a2, void *a3, void *a4)
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
      if (mlir::IntegerAttr::getInt(&v24) == 1)
      {
        return 1;
      }

      v23 = a2;
      v9 = mlir::IntegerAttr::getInt(&v23) == 2;
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v11, "' failed to satisfy constraint: valid FlattenMode");
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

void mlir::anec::GOC::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a5;
  v11 = a4;
  v9 = a6;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v8 + 1, 8);
    LODWORD(v8) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
}

void mlir::anec::GOC::build(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  __src = v24;
  v23 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v20, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(v7, v8, 1, v21[0], v21[1], Dictionary, v11, v12, v20[0], v20[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = __src;
  v14 = v23;
  v15 = *(a2 + 72);
  v16 = v15 + v23;
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
  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::anec::GOC::verifyInvariantsImpl(mlir::anec::GOC *this)
{
  if ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

void mlir::anec::GatherND::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a5);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v23);
  __src = v24;
  v23 = 0x200000000;
  v8 = *a1;
  v9 = *a2;
  mlir::ValueRange::ValueRange(v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v12 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v20, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::GatherND>::inferReturnTypes(v8, v9, 1, v21[0], v21[1], Dictionary, v12, v13, v20[0], v20[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v14 = __src;
  v15 = v23;
  v16 = *(a2 + 72);
  v17 = v16 + v23;
  if (v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v17, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v15);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::GatherND>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::GatherND::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

BOOL mlir::anec::GatherND::verifyInvariantsImpl(mlir::Operation **this)
{
  v60 = *MEMORY[0x1E69E9840];
  v51[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v51);
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
    if (v17)
    {
      if (!mlir::DenseIntElementsAttr::classof(v17))
      {
        goto LABEL_29;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8);
      v47 = v17;
      v48 = v18;
      Type = mlir::ElementsAttr::getType(&v47);
      v20 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v51[0] = v20;
      v51[1] = Type;
      mlir::CallableOpInterface::getArgAttrsAttr(v51);
      if (v21 != 1 || !mlir::hasUniqueValues(v17) || (v46 = v17, !mlir::DenseElementsAttr::getNumElements(&v46)) || (v43 = v17, v44[0] = mlir::ArrayAttr::getValue(&v43), v44[1] = v22, isSplat = mlir::ElementsAttr::isSplat(v44), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_29:
        v50 = 257;
        mlir::Operation::emitOpError(v7, &v47, v51);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v51, "attribute '");
        if (*v23)
        {
          v50 = 261;
          v47 = "axes";
          v48 = 4;
          v24 = v23;
          mlir::Diagnostic::operator<<(v23 + 8, &v47);
          v23 = v24;
          if (*v24)
          {
            v25 = *(v24 + 24);
            LODWORD(v47) = 3;
            v48 = "' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 1";
            v49 = 83;
            v26 = *(v24 + 32);
            v27 = &v47;
            if (v26 >= *(v24 + 36))
            {
              if (v25 <= &v47 && v25 + 24 * v26 > &v47)
              {
                v42 = &v47 - v25;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v24 + 24, v24 + 40, v26 + 1, 24);
                v23 = v24;
                v25 = *(v24 + 24);
                v27 = &v42[v25];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v24 + 24, v24 + 40, v26 + 1, 24);
                v23 = v24;
                v25 = *(v24 + 24);
                v27 = &v47;
              }
            }

            v28 = v25 + 24 * *(v23 + 32);
            v29 = *v27;
            *(v28 + 16) = v27[2];
            *v28 = v29;
            ++*(v23 + 32);
          }
        }

        v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
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

          v31 = __p;
          if (__p)
          {
            v32 = v57;
            v33 = __p;
            if (v57 != __p)
            {
              do
              {
                v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
              }

              while (v32 != v31);
              v33 = __p;
            }

            v57 = v31;
            operator delete(v33);
          }

          v34 = v54;
          if (v54)
          {
            v35 = v55;
            v36 = v54;
            if (v55 != v54)
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
              v36 = v54;
            }

            v55 = v34;
            operator delete(v36);
          }

          if (v52 != v53)
          {
            free(v52);
          }
        }

        if (!v30)
        {
          return 0;
        }
      }
    }

    if (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v39 = *this - 16;
      }

      else
      {
        v39 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v39, 0);
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
    v47 = "requires attribute 'axes'";
    v50 = 259;
    mlir::OpState::emitOpError(this, &v47, v51);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
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

      v9 = __p;
      if (__p)
      {
        v10 = v57;
        v11 = __p;
        if (v57 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v57 = v9;
        operator delete(v11);
      }

      v12 = v54;
      if (v54)
      {
        v13 = v55;
        v14 = v54;
        if (v55 != v54)
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
          v14 = v54;
        }

        v55 = v12;
        operator delete(v14);
      }

      if (v52 != v53)
      {
        free(v52);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::GlobalArgMinMax>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::GlobalArgMinMax::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::GlobalArgMinMax::build(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v25 = a3;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  v9 = **(*(a2 + 8) + 96);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  mlir::NamedAttribute::NamedAttribute(&__src, v9, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v29);
  v12 = *(*(*(a2 + 8) + 96) + 8);
  v13 = mlir::IntegerType::get(*a1, 64, 0);
  v14 = mlir::IntegerAttr::get(v13, a5);
  mlir::NamedAttribute::NamedAttribute(&__src, v12, v14);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v29);
  __src = v30;
  v29 = 0x200000000;
  v15 = *a1;
  v16 = *a2;
  mlir::ValueRange::ValueRange(v27, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v19 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v26, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::GlobalArgMinMax>::inferReturnTypes(v15, v16, 1, v27[0], v27[1], Dictionary, v19, v20, v26[0], v26[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v21 = __src;
  v22 = v29;
  v23 = *(a2 + 72);
  v24 = v23 + v29;
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
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::anec::GlobalArgMinMax::verifyInvariantsImpl(mlir::Operation **this)
{
  v51 = *MEMORY[0x1E69E9840];
  v42[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v42);
  if (!v3)
  {
LABEL_5:
    v40[0] = "requires attribute 'axis'";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, v42);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 != 1)
    {
      return v6;
    }

    if (v49 != &v50)
    {
      free(v49);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v48;
      v9 = __p;
      if (v48 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v48 = v7;
      operator delete(v9);
    }

    v10 = v45;
    if (v45)
    {
      v11 = v46;
      v12 = v45;
      if (v46 == v45)
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
      v12 = v45;
LABEL_42:
      v46 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v43 != v44)
    {
      free(v43);
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
    v40[0] = "requires attribute 'mode'";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, v42);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 != 1)
    {
      return v6;
    }

    if (v49 != &v50)
    {
      free(v49);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v48;
      v20 = __p;
      if (v48 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v48 = v18;
      operator delete(v20);
    }

    v10 = v45;
    if (v45)
    {
      v21 = v46;
      v12 = v45;
      if (v46 == v45)
      {
        goto LABEL_42;
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
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v15 = *(v4 + 1);
  while (1)
  {
    CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
    v17 = *this;
    if (CallableRegion == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  v24 = *(v4 + 1);
  if (v15)
  {
    if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v40[0] = v15, v42[0] = mlir::AffineMapAttr::getValue(v40), !mlir::Type::isUnsignedInteger(v42, 32)))
    {
      v41 = 257;
      mlir::Operation::emitOpError(v17, v40, v42);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v42, "attribute '");
      if (*v25)
      {
        v41 = 261;
        v40[0] = "axis";
        v40[1] = 4;
        v26 = v25;
        mlir::Diagnostic::operator<<((v25 + 1), v40);
        v25 = v26;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v25, "' failed to satisfy constraint: 32-bit unsigned integer attribute");
      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
      if (v42[0])
      {
        mlir::InFlightDiagnostic::report(v42);
      }

      if (v50 == 1)
      {
        if (v49 != &v50)
        {
          free(v49);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v48;
          v31 = __p;
          if (v48 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v48 = v29;
          operator delete(v31);
        }

        v32 = v45;
        if (v45)
        {
          v33 = v46;
          v34 = v45;
          if (v46 != v45)
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
            v34 = v45;
          }

          v46 = v32;
          operator delete(v34);
        }

        if (v43 != v44)
        {
          free(v43);
        }
      }

      if (!v28)
      {
        return 0;
      }
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps5(*this, v24, "mode", 4) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v37 = *this - 16;
  }

  else
  {
    v37 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

void mlir::anec::InputView::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v35 = a3;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  v13 = **(*(a2 + 8) + 96);
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  mlir::NamedAttribute::NamedAttribute(&__src, v13, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v39);
  v16 = *(*(*(a2 + 8) + 96) + 8);
  v17 = mlir::Builder::getIntegerType(a1, 64, 0);
  v18 = mlir::Builder::getIntegerAttr(a1, v17, a5);
  mlir::NamedAttribute::NamedAttribute(&__src, v16, v18);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v39);
  v19 = *(*(*(a2 + 8) + 96) + 16);
  v20 = mlir::Builder::getIntegerType(a1, 64, 0);
  v21 = mlir::Builder::getIntegerAttr(a1, v20, a6);
  mlir::NamedAttribute::NamedAttribute(&__src, v19, v21);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v39);
  v22 = *(*(*(a2 + 8) + 96) + 24);
  v23 = mlir::Builder::getIntegerType(a1, 64, 1);
  v24 = mlir::Builder::getIntegerAttr(a1, v23, a7);
  mlir::NamedAttribute::NamedAttribute(&__src, v22, v24);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v39);
  __src = v40;
  v39 = 0x200000000;
  v25 = *a1;
  v26 = *a2;
  mlir::ValueRange::ValueRange(v37, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v29 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v36, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::InputView>::inferReturnTypes(v25, v26, 1, v37[0], v37[1], Dictionary, v29, v30, v36[0], v36[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v31 = __src;
  v32 = v39;
  v33 = *(a2 + 72);
  v34 = v33 + v39;
  if (v34 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v34, 8);
    LODWORD(v33) = *(a2 + 72);
  }

  if (v32)
  {
    memcpy((*(a2 + 64) + 8 * v33), v31, 8 * v32);
    LODWORD(v33) = *(a2 + 72);
  }

  *(a2 + 72) = v33 + v32;
  if (__src != v40)
  {
    free(__src);
  }
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::InputView>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::InputView::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

BOOL mlir::anec::InputView::verifyInvariantsImpl(mlir::Operation **this)
{
  v54 = *MEMORY[0x1E69E9840];
  v45[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v45);
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

    if (v5)
    {
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

      v22 = 0;
      v23 = *(v4 + 1);
      while (1)
      {
        v24 = (v4 + v22);
        if (mlir::CallGraphNode::getCallableRegion((v4 + v22)) == *(*(*(*this + 6) + 96) + 16))
        {
          break;
        }

        v22 += 16;
        if (v5 == v22)
        {
          v43[0] = "requires attribute 'size'";
          v44 = 259;
          mlir::OpState::emitOpError(this, v43, v45);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
          if (v45[0])
          {
            mlir::InFlightDiagnostic::report(v45);
          }

          if (v53 != 1)
          {
            return v6;
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

          v10 = v48;
          if (!v48)
          {
            goto LABEL_82;
          }

          v28 = v49;
          v12 = v48;
          if (v49 == v48)
          {
            goto LABEL_81;
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

          while (v28 != v10);
          goto LABEL_80;
        }
      }

      v31 = v5 - v22;
      if (v31)
      {
        v32 = *(v24 + 1);
        while (mlir::CallGraphNode::getCallableRegion(v24) != *(*(*(*this + 6) + 96) + 24))
        {
          v24 = (v24 + 16);
          v31 -= 16;
          if (!v31)
          {
            goto LABEL_64;
          }
        }

        v40 = *(v24 + 1);
        if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v15, "dimension", 9) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v23, "offset", 6) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v32, "size", 4) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps29(*this, v40, "step", 4) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
        {
          return 0;
        }

        if (*(*this + 9))
        {
          v41 = *this - 16;
        }

        else
        {
          v41 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
        return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
      }

LABEL_64:
      v43[0] = "requires attribute 'step'";
      v44 = 259;
      mlir::OpState::emitOpError(this, v43, v45);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
      if (v45[0])
      {
        mlir::InFlightDiagnostic::report(v45);
      }

      if (v53 != 1)
      {
        return v6;
      }

      if (v52 != &v53)
      {
        free(v52);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v51;
        v35 = __p;
        if (v51 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v51 = v33;
        operator delete(v35);
      }

      v10 = v48;
      if (!v48)
      {
        goto LABEL_82;
      }

      v36 = v49;
      v12 = v48;
      if (v49 == v48)
      {
        goto LABEL_81;
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

      while (v36 != v10);
      goto LABEL_80;
    }

LABEL_25:
    v43[0] = "requires attribute 'offset'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v51;
        v18 = __p;
        if (v51 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v51 = v16;
        operator delete(v18);
      }

      v10 = v48;
      if (!v48)
      {
        goto LABEL_82;
      }

      v19 = v49;
      v12 = v48;
      if (v49 == v48)
      {
        goto LABEL_81;
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
      goto LABEL_80;
    }
  }

  else
  {
LABEL_5:
    v43[0] = "requires attribute 'dimension'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v51;
        v9 = __p;
        if (v51 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v51 = v7;
        operator delete(v9);
      }

      v10 = v48;
      if (!v48)
      {
        goto LABEL_82;
      }

      v11 = v49;
      v12 = v48;
      if (v49 == v48)
      {
LABEL_81:
        v49 = v10;
        operator delete(v12);
LABEL_82:
        if (v46 != &v47)
        {
          free(v46);
        }

        return v6;
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
LABEL_80:
      v12 = v48;
      goto LABEL_81;
    }
  }

  return v6;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps29(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::AffineMapAttr::getValue(v21);
    isSignedInteger = mlir::Type::isSignedInteger(v23, 64);
    a1 = v6;
    if (isSignedInteger)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: 64-bit signed integer attribute");
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

void mlir::anec::InstanceNorm::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v23 = a3;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v27);
  v9 = *(*(*(a2 + 8) + 96) + 8);
  F32Type = mlir::Builder::getF32Type(a1, v10);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a5);
  mlir::NamedAttribute::NamedAttribute(&__src, v9, FloatAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v27);
  __src = v28;
  v27 = 0x200000000;
  v13 = *a1;
  v14 = *a2;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v17 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchNorm>::inferReturnTypes(v13, v14, 1, v25[0], v25[1], Dictionary, v17, v18, v24[0], v24[1], &__src) & 1) == 0)
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

BOOL mlir::anec::InstanceNorm::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x1E69E9840];
  v28[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v28);
  if (!v3)
  {
LABEL_5:
    v26[0] = "requires attribute 'axes'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v34;
      v9 = __p;
      if (v34 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v34 = v7;
      operator delete(v9);
    }

    v10 = v31;
    if (v31)
    {
      v11 = v32;
      v12 = v31;
      if (v32 == v31)
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
      v12 = v31;
LABEL_42:
      v32 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v29 != &v30)
    {
      free(v29);
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
    v26[0] = "requires attribute 'epsilon'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v34;
      v18 = __p;
      if (v34 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v34 = v16;
      operator delete(v18);
    }

    v10 = v31;
    if (v31)
    {
      v19 = v32;
      v12 = v31;
      if (v32 == v31)
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

  v22 = *(v4 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps30(*this, v15, "axes", 4) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v22, "epsilon", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v23 = *this - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps30(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v29 = a2;
  v30 = v8;
  Type = mlir::ElementsAttr::getType(&v29);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  mlir::CallableOpInterface::getArgAttrsAttr(v32);
  if (v11 == 1 && mlir::hasUniqueValues(a2))
  {
    v26 = a2;
    v27[0] = mlir::ArrayAttr::getValue(&v26);
    v27[1] = v12;
    isSplat = mlir::ElementsAttr::isSplat(v27);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v31 = 257;
  mlir::Operation::emitOpError(a1, &v29, v32);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v32, "attribute '");
  if (*v14)
  {
    v31 = 261;
    v29 = a3;
    v30 = a4;
    v15 = v14;
    mlir::Diagnostic::operator<<((v14 + 1), &v29);
    v14 = v15;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v14, "' failed to satisfy constraint: ui64 unique elements attribute of ranks 1");
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v38;
      v19 = __p;
      if (v38 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v38 = v17;
      operator delete(v19);
    }

    v20 = v35;
    if (v35)
    {
      v21 = v36;
      v22 = v35;
      if (v36 != v35)
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
        v22 = v35;
      }

      v36 = v20;
      operator delete(v22);
    }

    if (v33 != &v34)
    {
      free(v33);
    }
  }

  return v13;
}

void mlir::anec::Invert::build(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src) & 1) == 0)
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

BOOL mlir::anec::Invert::verifyInvariantsImpl(mlir::Operation **this)
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

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, *(v4 + 1), "epsilon", 7) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::L2NormPool>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::L2NormPool::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::L2NormPool::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::L2NormPool>::inferReturnTypes(v13, v14, 1, a3, a4, Dictionary, v17, v18, v23[0], v23[1], &__src))
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

BOOL mlir::anec::L2NormPool::verifyInvariantsImpl(mlir::Operation **this)
{
  v46 = *MEMORY[0x1E69E9840];
  v37[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v37);
  if (!v3)
  {
LABEL_5:
    v35[0] = "requires attribute 'ksize'";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 != 1)
    {
      return v6;
    }

    if (v44 != &v45)
    {
      free(v44);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v43;
      v9 = __p;
      if (v43 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v43 = v7;
      operator delete(v9);
    }

    v10 = v40;
    if (v40)
    {
      v11 = v41;
      v12 = v40;
      if (v41 == v40)
      {
        goto LABEL_62;
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
LABEL_61:
      v12 = v40;
LABEL_62:
      v41 = v10;
      operator delete(v12);
    }

LABEL_63:
    if (v38 != &v39)
    {
      free(v38);
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
    v35[0] = "requires attribute 'padding'";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 != 1)
    {
      return v6;
    }

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

    v10 = v40;
    if (v40)
    {
      v21 = v41;
      v12 = v40;
      if (v41 == v40)
      {
        goto LABEL_62;
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
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  v15 = 0;
  v16 = *(v4 + 1);
  while (1)
  {
    v17 = (v4 + v15);
    if (mlir::CallGraphNode::getCallableRegion((v4 + v15)) == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v15 += 16;
    if (v5 == v15)
    {
      goto LABEL_25;
    }
  }

  v24 = v5 - v15;
  if (!v24)
  {
LABEL_45:
    v35[0] = "requires attribute 'stride'";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 != 1)
    {
      return v6;
    }

    if (v44 != &v45)
    {
      free(v44);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v43;
      v28 = __p;
      if (v43 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v43 = v26;
      operator delete(v28);
    }

    v10 = v40;
    if (v40)
    {
      v29 = v41;
      v12 = v40;
      if (v41 == v40)
      {
        goto LABEL_62;
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
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  v25 = *(v17 + 1);
  while (mlir::CallGraphNode::getCallableRegion(v17) != *(*(*(*this + 6) + 96) + 16))
  {
    v17 = (v17 + 16);
    v24 -= 16;
    if (!v24)
    {
      goto LABEL_45;
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, *(v17 + 1), "stride", 6) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps9(*this, v25, "padding", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v16, "ksize", 5) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v33 = *this - 16;
  }

  else
  {
    v33 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

BOOL mlir::anec::LeakyRelu::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x1E69E9840];
  v28[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v28);
  if (!v3)
  {
LABEL_5:
    v26[0] = "requires attribute 'offset'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v34;
      v9 = __p;
      if (v34 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v34 = v7;
      operator delete(v9);
    }

    v10 = v31;
    if (v31)
    {
      v11 = v32;
      v12 = v31;
      if (v32 == v31)
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
      v12 = v31;
LABEL_42:
      v32 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v29 != &v30)
    {
      free(v29);
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
    v26[0] = "requires attribute 'slope'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v34;
      v18 = __p;
      if (v34 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v34 = v16;
      operator delete(v18);
    }

    v10 = v31;
    if (v31)
    {
      v19 = v32;
      v12 = v31;
      if (v32 == v31)
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

  v22 = *(v4 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v15, "offset", 6) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v22, "slope", 5) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v23 = *this - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::Linear::getKernelScaleAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
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

uint64_t mlir::anec::Linear::getKernelLutAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
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

void mlir::anec::Linear::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v22 = a4;
  v23 = a3;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  if (a5)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 8), a5);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v27);
  }

  if (a6)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 16), a6);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v27);
  }

  if (a7)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a7);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v27);
  }

  __src = v28;
  v27 = 0x200000000;
  v12 = *a1;
  v13 = *a2;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Linear>::inferReturnTypes(v12, v13, 1, v25[0], v25[1], Dictionary, v16, v17, v24[0], v24[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = __src;
  v19 = v27;
  v20 = *(a2 + 72);
  v21 = v20 + v27;
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
  if (__src != v28)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Linear>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::Linear::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

uint64_t mlir::anec::Linear::verifyInvariantsImpl(mlir::Operation **this)
{
  v86 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 16 * v3;
    do
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v10 = *this;
      if (CallableRegion == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v11 = mlir::CallGraphNode::getCallableRegion(v4);
        v10 = *this;
        if (v11 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v12 = mlir::CallGraphNode::getCallableRegion(v4);
          v10 = *this;
          if (v12 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }
        }
      }

      v4 = (v4 + 16);
      v8 -= 16;
    }

    while (v8);
    if (v6)
    {
      if (!mlir::DenseFPElementsAttr::classof(v6))
      {
        goto LABEL_20;
      }

      v13 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
      v73 = v6;
      v74 = v13;
      Type = mlir::ElementsAttr::getType(&v73);
      v15 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      AttrDictionary = v15;
      v77 = Type;
      mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary);
      if (v16)
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
        v69 = v6;
        v70 = v17;
        v18 = mlir::ElementsAttr::getType(&v69);
        v19 = v18;
        if (v18)
        {
          v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        }

        v71 = v19;
        v72 = v18;
        mlir::CallableOpInterface::getArgAttrsAttr(&v71);
        if (v20 != 1)
        {
          goto LABEL_20;
        }
      }

      v65 = v6;
      v66 = mlir::ArrayAttr::getValue(&v65);
      v67 = v21;
      isSplat = mlir::ElementsAttr::isSplat(&v66);
      if (!mlir::Type::isF16(&isSplat))
      {
        v61 = v6;
        v62 = mlir::ArrayAttr::getValue(&v61);
        v63 = v22;
        v64 = mlir::ElementsAttr::isSplat(&v62);
        if (!mlir::Type::isF32(&v64))
        {
LABEL_20:
          v75 = 257;
          mlir::Operation::emitOpError(v10, &v73, &AttrDictionary);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "attribute '");
          if (*v23)
          {
            v75 = 261;
            v73 = "kernel_scale";
            v74 = 12;
            v24 = v23;
            mlir::Diagnostic::operator<<((v23 + 1), &v73);
            v23 = v24;
          }

          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1");
          v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
          if (AttrDictionary)
          {
            mlir::InFlightDiagnostic::report(&AttrDictionary);
          }

          if (v85 == 1)
          {
            if (v84 != &v85)
            {
              free(v84);
            }

            v27 = __p;
            if (__p)
            {
              v28 = v83;
              v29 = __p;
              if (v83 != __p)
              {
                do
                {
                  v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
                }

                while (v28 != v27);
                v29 = __p;
              }

              v83 = v27;
              operator delete(v29);
            }

            v30 = v80;
            if (v80)
            {
              v31 = v81;
              v32 = v80;
              if (v81 != v80)
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
                v32 = v80;
              }

              v81 = v30;
              operator delete(v32);
            }

            if (v78 != v79)
            {
              free(v78);
            }
          }

          if (!v26)
          {
            return 0;
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  if (v7)
  {
    v35 = *this;
    if (!mlir::DenseIntElementsAttr::classof(v7))
    {
      goto LABEL_54;
    }

    v36 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    v73 = v7;
    v74 = v36;
    v37 = mlir::ElementsAttr::getType(&v73);
    v38 = v37;
    if (v37)
    {
      v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
    }

    AttrDictionary = v38;
    v77 = v37;
    mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary);
    if (v39)
    {
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      v69 = v7;
      v70 = v40;
      v41 = mlir::ElementsAttr::getType(&v69);
      v42 = v41;
      if (v41)
      {
        v41 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
      }

      v71 = v42;
      v72 = v41;
      mlir::CallableOpInterface::getArgAttrsAttr(&v71);
      if (v43 != 1)
      {
        goto LABEL_54;
      }
    }

    v65 = v7;
    v66 = mlir::ArrayAttr::getValue(&v65);
    v67 = v44;
    isSplat = mlir::ElementsAttr::isSplat(&v66);
    if (!mlir::Type::isSignedInteger(&isSplat, 8))
    {
      v61 = v7;
      v62 = mlir::ArrayAttr::getValue(&v61);
      v63 = v45;
      v64 = mlir::ElementsAttr::isSplat(&v62);
      if (!mlir::Type::isUnsignedInteger(&v64, 8))
      {
LABEL_54:
        v75 = 257;
        mlir::Operation::emitOpError(v35, &v73, &AttrDictionary);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "attribute '");
        if (*v46)
        {
          v75 = 261;
          v73 = "kernel_zero_point";
          v74 = 17;
          v47 = v46;
          mlir::Diagnostic::operator<<((v46 + 1), &v73);
          v46 = v47;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v46, "' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1");
        v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
        if (AttrDictionary)
        {
          mlir::InFlightDiagnostic::report(&AttrDictionary);
        }

        if (v85 == 1)
        {
          if (v84 != &v85)
          {
            free(v84);
          }

          v50 = __p;
          if (__p)
          {
            v51 = v83;
            v52 = __p;
            if (v83 != __p)
            {
              do
              {
                v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
              }

              while (v51 != v50);
              v52 = __p;
            }

            v83 = v50;
            operator delete(v52);
          }

          v53 = v80;
          if (v80)
          {
            v54 = v81;
            v55 = v80;
            if (v81 != v80)
            {
              do
              {
                v57 = *--v54;
                v56 = v57;
                *v54 = 0;
                if (v57)
                {
                  operator delete[](v56);
                }
              }

              while (v54 != v53);
              v55 = v80;
            }

            v81 = v53;
            operator delete(v55);
          }

          if (v78 != v79)
          {
            free(v78);
          }
        }

        if (!v49)
        {
          return 0;
        }
      }
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps17(*this, v5, "kernel_lut", 0xA) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps6(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v58 = *this - 16;
  }

  else
  {
    v58 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v58, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::MatMul::getBiasAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::anec::MatMul::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  if (a5)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a5);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v23);
  }

  __src = v24;
  v23 = 0x200000000;
  v8 = *a1;
  v9 = *a2;
  mlir::ValueRange::ValueRange(v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v12 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v20, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::MatMul>::inferReturnTypes(v8, v9, 1, v21[0], v21[1], Dictionary, v12, v13, v20[0], v20[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v14 = __src;
  v15 = v23;
  v16 = *(a2 + 72);
  v17 = v16 + v23;
  if (v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v17, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v15);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::MatMul>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::MatMul::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

uint64_t mlir::anec::MatMul::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 16 * v3;
    do
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v8 = *this;
      if (CallableRegion == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      v4 = (v4 + 16);
      v6 -= 16;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
    v8 = *this;
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(v8, v5, "bias", 4) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v9 = *this - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::MaxPool>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::MaxPool::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::MaxPool::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::MaxPool>::inferReturnTypes(v13, v14, 1, a3, a4, Dictionary, v17, v18, v23[0], v23[1], &__src))
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

BOOL mlir::anec::NRelu::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x1E69E9840];
  v28[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v28);
  if (!v3)
  {
LABEL_5:
    v26[0] = "requires attribute 'max_value'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v34;
      v9 = __p;
      if (v34 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v34 = v7;
      operator delete(v9);
    }

    v10 = v31;
    if (v31)
    {
      v11 = v32;
      v12 = v31;
      if (v32 == v31)
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
      v12 = v31;
LABEL_42:
      v32 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v29 != &v30)
    {
      free(v29);
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
    v26[0] = "requires attribute 'slope'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v34;
      v18 = __p;
      if (v34 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v34 = v16;
      operator delete(v18);
    }

    v10 = v31;
    if (v31)
    {
      v19 = v32;
      v12 = v31;
      if (v32 == v31)
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

  v22 = *(v4 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v15, "max_value", 9) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v22, "slope", 5) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v23 = *this - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

void mlir::anec::Padding::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 8), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v25);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 16), a5);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v25);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a6);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v25);
  __src = v26;
  v25 = 0x200000000;
  v11 = *a1;
  v12 = *a2;
  mlir::ValueRange::ValueRange(v23, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v15 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v22, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Padding>::inferReturnTypes(v11, v12, 1, v23[0], v23[1], Dictionary, v15, v16, v22[0], v22[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v17 = __src;
  v18 = v25;
  v19 = *(a2 + 72);
  v20 = v19 + v25;
  if (v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v20, 8);
    LODWORD(v19) = *(a2 + 72);
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v19), v17, 8 * v18);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v26)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Padding>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::Padding::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

BOOL mlir::anec::Padding::verifyInvariantsImpl(mlir::Operation **this)
{
  v72 = *MEMORY[0x1E69E9840];
  v62[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v62);
  if (!v3)
  {
LABEL_5:
    v59 = "requires attribute 'background_value'";
    v61 = 259;
    mlir::OpState::emitOpError(this, &v59, v62);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if (v70 != 1)
    {
      return v6;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v68;
      v9 = __p;
      if (v68 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v68 = v7;
      operator delete(v9);
    }

    v10 = v65;
    if (v65)
    {
      v11 = v66;
      v12 = v65;
      if (v66 == v65)
      {
        goto LABEL_62;
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
LABEL_61:
      v12 = v65;
LABEL_62:
      v66 = v10;
      operator delete(v12);
    }

LABEL_63:
    if (v63 != v64)
    {
      free(v63);
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
    v59 = "requires attribute 'padding_modes'";
    v61 = 259;
    mlir::OpState::emitOpError(this, &v59, v62);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if (v70 != 1)
    {
      return v6;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v68;
      v20 = __p;
      if (v68 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v68 = v18;
      operator delete(v20);
    }

    v10 = v65;
    if (v65)
    {
      v21 = v66;
      v12 = v65;
      if (v66 == v65)
      {
        goto LABEL_62;
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
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  v15 = 0;
  v16 = *(v4 + 1);
  while (1)
  {
    v17 = (v4 + v15);
    if (mlir::CallGraphNode::getCallableRegion((v4 + v15)) == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v15 += 16;
    if (v5 == v15)
    {
      goto LABEL_25;
    }
  }

  v24 = v5 - v15;
  if (!v24)
  {
LABEL_45:
    v59 = "requires attribute 'padding_sizes'";
    v61 = 259;
    mlir::OpState::emitOpError(this, &v59, v62);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if (v70 != 1)
    {
      return v6;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v68;
      v28 = __p;
      if (v68 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v68 = v26;
      operator delete(v28);
    }

    v10 = v65;
    if (v65)
    {
      v29 = v66;
      v12 = v65;
      if (v66 == v65)
      {
        goto LABEL_62;
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
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  v25 = *(v17 + 1);
  while (mlir::CallGraphNode::getCallableRegion(v17) != *(*(*(*this + 6) + 96) + 16))
  {
    v17 = (v17 + 16);
    v24 -= 16;
    if (!v24)
    {
      goto LABEL_45;
    }
  }

  v33 = *(v17 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps24(*this, v25, "padding_modes", 13) & 1) == 0)
  {
    return 0;
  }

  if (v33)
  {
    v34 = *this;
    if (!mlir::DenseIntElementsAttr::classof(v33))
    {
      goto LABEL_78;
    }

    v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v33 + 8);
    v59 = v33;
    v60 = v35;
    Type = mlir::ElementsAttr::getType(&v59);
    v37 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v62[0] = v37;
    v62[1] = Type;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v62);
    v71 = xmmword_1E0982930;
    if (v39 != 2 || (*ArgAttrsAttr == v71 ? (v40 = ArgAttrsAttr[1] == *(&v71 + 1)) : (v40 = 0), !v40 || (v56 = v33, v57[0] = mlir::ArrayAttr::getValue(&v56), v57[1] = v41, isSplat = mlir::ElementsAttr::isSplat(v57), !mlir::Type::isUnsignedInteger(&isSplat, 64))))
    {
LABEL_78:
      v61 = 257;
      mlir::Operation::emitOpError(v34, &v59, v62);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v62, "attribute '");
      if (*v42)
      {
        v61 = 261;
        v59 = "padding_sizes";
        v60 = 13;
        v43 = v42;
        mlir::Diagnostic::operator<<((v42 + 1), &v59);
        v42 = v43;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v42, "' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}");
      v45 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }

      if (v70 == 1)
      {
        if (v69 != &v70)
        {
          free(v69);
        }

        v46 = __p;
        if (__p)
        {
          v47 = v68;
          v48 = __p;
          if (v68 != __p)
          {
            do
            {
              v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
            }

            while (v47 != v46);
            v48 = __p;
          }

          v68 = v46;
          operator delete(v48);
        }

        v49 = v65;
        if (v65)
        {
          v50 = v66;
          v51 = v65;
          if (v66 != v65)
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
            v51 = v65;
          }

          v66 = v49;
          operator delete(v51);
        }

        if (v63 != v64)
        {
          free(v63);
        }
      }

      if (!v45)
      {
        return 0;
      }
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v16, "background_value", 0x10) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v54 = *this - 16;
  }

  else
  {
    v54 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v54, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

void mlir::anec::PixelShuffle::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::PixelShuffle>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
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

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::PixelShuffle>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::PixelShuffle::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::PixelUnshuffle::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::PixelUnshuffle>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
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

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::PixelUnshuffle>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::PixelUnshuffle::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::ReduceAvg::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceAvg>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
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

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceAvg>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::ReduceAvg::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

BOOL mlir::anec::ReduceAvg::verifyInvariantsImpl(mlir::Operation **this)
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

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps34(*this, *(v4 + 1), "axes", 4) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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
    v18 = "requires attribute 'axes'";
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

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps34(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_12;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v35 = a2;
  v36 = v8;
  Type = mlir::ElementsAttr::getType(&v35);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v38[0] = v10;
  v38[1] = Type;
  mlir::CallableOpInterface::getArgAttrsAttr(v38);
  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v33[0] = a2;
  v33[1] = v12;
  v13 = mlir::ElementsAttr::getType(v33);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v34[0] = v14;
  v34[1] = v13;
  mlir::CallableOpInterface::getArgAttrsAttr(v34);
  if (v15 == 1)
  {
LABEL_37:
    if (mlir::hasUniqueValues(a2))
    {
      v30 = a2;
      v31[0] = mlir::ArrayAttr::getValue(&v30);
      v31[1] = v16;
      isSplat = mlir::ElementsAttr::isSplat(v31);
      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
        return 1;
      }
    }
  }

LABEL_12:
  v37 = 257;
  mlir::Operation::emitOpError(a1, &v35, v38);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, "attribute '");
  if (*v18)
  {
    v37 = 261;
    v35 = a3;
    v36 = a4;
    v19 = v18;
    mlir::Diagnostic::operator<<((v18 + 1), &v35);
    v18 = v19;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v18, "' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1");
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

    v21 = __p;
    if (__p)
    {
      v22 = v44;
      v23 = __p;
      if (v44 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v44 = v21;
      operator delete(v23);
    }

    v24 = v41;
    if (v41)
    {
      v25 = v42;
      v26 = v41;
      if (v42 != v41)
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
        v26 = v41;
      }

      v42 = v24;
      operator delete(v26);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v17;
}

void mlir::anec::ReduceMax::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceMax>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
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

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceMax>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::ReduceMax::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::ReduceMin::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceMin>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
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

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceMin>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::ReduceMin::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::ReduceSum::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceSum>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
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

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceSum>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    result = mlir::anec::ReduceSum::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Resample>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v16 = 0;
    while (1)
    {
      v17 = (*(mlir::ValueRange::dereference_iterator(&v27, v16) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      v20 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v22 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v22;
        v20 = v30;
      }

      *(v29 + v20) = RankPromotionTypeForANE;
      v21 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v16 = v28 + 1;
      v28 = v16;
      if (v16 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    v23.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v23, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v21);
    result = mlir::anec::Resample::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

void mlir::anec::Resample::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Resample>::inferReturnTypes(v13, v14, 1, a3, a4, Dictionary, v17, v18, v23[0], v23[1]))
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

BOOL mlir::anec::Resample::verifyInvariantsImpl(mlir::Operation **this)
{
  v70 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_5:
    v58[0] = "requires attribute 'background_value'";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v69 != 1)
    {
      return v10;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v67;
      v13 = __p;
      if (v67 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v67 = v11;
      operator delete(v13);
    }

    v14 = v64;
    if (v64)
    {
      v15 = v65;
      v16 = v64;
      if (v65 == v64)
      {
        goto LABEL_82;
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
LABEL_81:
      v16 = v64;
LABEL_82:
      v65 = v14;
      operator delete(v16);
    }

LABEL_83:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v10;
  }

  v4 = Value;
  v5 = v3;
  v6 = 0;
  v7 = 16 * v3;
  v8 = -16 * v3;
  v9 = Value;
  while (mlir::CallGraphNode::getCallableRegion(v9) != **(*(*this + 6) + 96))
  {
    v9 = (v9 + 16);
    v6 -= 16;
    if (v8 == v6)
    {
      goto LABEL_5;
    }
  }

  if (!(v6 + 16 * v5))
  {
LABEL_25:
    v58[0] = "requires attribute 'coordinate_mode'";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v69 != 1)
    {
      return v10;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v67;
      v23 = __p;
      if (v67 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v67 = v21;
      operator delete(v23);
    }

    v14 = v64;
    if (v64)
    {
      v24 = v65;
      v16 = v64;
      if (v65 == v64)
      {
        goto LABEL_82;
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

      while (v24 != v14);
      goto LABEL_81;
    }

    goto LABEL_83;
  }

  v19 = *(v9 + 1);
  v20 = -v6;
  while (mlir::CallGraphNode::getCallableRegion((v4 + v20)) != *(*(*(*this + 6) + 96) + 8))
  {
    v20 += 16;
    if (v7 == v20)
    {
      goto LABEL_25;
    }
  }

  v27 = v7 - v20;
  if (v7 == v20)
  {
LABEL_45:
    v58[0] = "requires attribute 'coordinate_type'";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v69 != 1)
    {
      return v10;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v67;
      v31 = __p;
      if (v67 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v14 = v64;
    if (v64)
    {
      v32 = v65;
      v16 = v64;
      if (v65 == v64)
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

      while (v32 != v14);
      goto LABEL_81;
    }

    goto LABEL_83;
  }

  v28 = *(v4 + v20 + 8);
  while (mlir::CallGraphNode::getCallableRegion((v4 + v20)) != *(*(*(*this + 6) + 96) + 16))
  {
    v27 -= 16;
    v20 += 16;
    if (v7 == v20)
    {
      goto LABEL_45;
    }
  }

  if (v7 == v20)
  {
LABEL_65:
    v58[0] = "requires attribute 'normalized_range'";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v69 != 1)
    {
      return v10;
    }

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

    v14 = v64;
    if (v64)
    {
      v40 = v65;
      v16 = v64;
      if (v65 == v64)
      {
        goto LABEL_82;
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

      while (v40 != v14);
      goto LABEL_81;
    }

    goto LABEL_83;
  }

  v35 = 0;
  v36 = *(v4 + v20 + 8);
  while (mlir::CallGraphNode::getCallableRegion((v4 + v20 + v35)) != *(*(*(*this + 6) + 96) + 24))
  {
    v35 += 16;
    if (v27 == v35)
    {
      goto LABEL_65;
    }
  }

  v44 = v27 - v35;
  if (v27 == v35)
  {
LABEL_90:
    v58[0] = "requires attribute 'padding_modes'";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v69 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v61);
    }

    return v10;
  }

  v45 = *(v4 + v35 + v20 + 8);
  v46 = (v4 + v20 + v35 + 8);
  while (mlir::CallGraphNode::getCallableRegion((v46 - 1)) != *(*(*(*this + 6) + 96) + 32))
  {
    v46 += 2;
    v44 -= 16;
    if (!v44)
    {
      goto LABEL_90;
    }
  }

  if (!v44)
  {
LABEL_98:
    v50 = "requires attribute 'sampling_method'";
LABEL_104:
    v58[0] = v50;
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
    return v10;
  }

  v47 = 0;
  v48 = *v46;
  while (1)
  {
    v49 = &v46[v47 / 8];
    if (mlir::CallGraphNode::getCallableRegion(&v46[v47 / 8 - 1]) == *(*(*(*this + 6) + 96) + 40))
    {
      break;
    }

    v47 += 16;
    if (v44 == v47)
    {
      goto LABEL_98;
    }
  }

  v51 = v44 - v47;
  if (!v51)
  {
LABEL_103:
    v50 = "requires attribute 'warp_coordinate_mode'";
    goto LABEL_104;
  }

  v54 = *v49;
  v53 = (v49 - 1);
  v52 = v54;
  while (mlir::CallGraphNode::getCallableRegion(v53) != *(*(*(*this + 6) + 96) + 48))
  {
    v53 = (v53 + 16);
    v51 -= 16;
    if (!v51)
    {
      goto LABEL_103;
    }
  }

  v55 = *(v53 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps35(*this, v28, "coordinate_mode", 15) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps36(*this, v45, "normalized_range", 16) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps37(*this, v36, "coordinate_type", 15) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps38(*this, v55, "warp_coordinate_mode", 20) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps39(*this, v52, "sampling_method", 15) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps40(*this, v48, "padding_modes", 13) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v19, "background_value", 0x10) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps10(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v56 = *this - 16;
  }

  else
  {
    v56 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v56, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}