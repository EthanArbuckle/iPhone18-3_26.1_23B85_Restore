uint64_t mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v33 = a1;
    Value = mlir::ArrayAttr::getValue(&v33);
    v27 = mlir::ArrayAttr::getValue(&v33);
    v29 = v27 + 8 * v28;
    if (v29 != Value)
    {
      while (*Value)
      {
        if (*(**Value + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          break;
        }

        v34 = *Value;
        v38 = mlir::AffineMapAttr::getValue(&v34);
        if (!mlir::Type::isSignlessInteger(&v38, 64))
        {
          break;
        }

        Value += 8;
        if (Value == v29)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v38, a5);
  if (v38)
  {
    LODWORD(v34) = 3;
    v35 = "attribute '";
    v36 = 11;
    v9 = &v34;
    v10 = v40;
    if (v41 >= v42)
    {
      if (v40 <= &v34 && v40 + 24 * v41 > &v34)
      {
        v31 = &v34 - v40;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v10 = v40;
        v9 = v40 + v31;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v9 = &v34;
        v10 = v40;
      }
    }

    v11 = &v10[24 * v41];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    ++v41;
    if (v38)
    {
      v37 = 261;
      v34 = a2;
      v35 = a3;
      mlir::Diagnostic::operator<<(&v39, &v34);
      if (v38)
      {
        LODWORD(v34) = 3;
        v35 = "' failed to satisfy constraint: 64-bit integer array attribute";
        v36 = 62;
        v13 = &v34;
        v14 = v40;
        if (v41 >= v42)
        {
          if (v40 <= &v34 && v40 + 24 * v41 > &v34)
          {
            v32 = &v34 - v40;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
            v14 = v40;
            v13 = v40 + v32;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
            v13 = &v34;
            v14 = v40;
          }
        }

        v15 = &v14[24 * v41];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v41;
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    mlir::InFlightDiagnostic::report(&v38);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v47;
      v20 = __p;
      if (v47 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v47 = v18;
      operator delete(v20);
    }

    v21 = v44;
    if (v44)
    {
      v22 = v45;
      v23 = v44;
      if (v45 != v44)
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
        v23 = v44;
      }

      v45 = v21;
      operator delete(v23);
    }

    if (v40 != v43)
    {
      free(v40);
    }
  }

  return v17;
}

uint64_t mlir::affine::AffineParallelOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, *(a2 + 256)))
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::affine::AffineParallelOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3))
    {
      return 0;
    }
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 2) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 3) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 5) & 1;
  }

  return 0;
}

uint64_t mlir::affine::AffineParallelOp::verifyInvariantsImpl(mlir::affine::AffineParallelOp *this)
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (!v4)
  {
    v44[0] = "requires attribute 'lowerBoundsGroups'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &v46);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v55 != 1)
    {
      return v16;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v53;
      v19 = __p;
      if (v53 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v53 = v17;
      operator delete(v19);
    }

    v20 = v50;
    if (v50)
    {
      v21 = v51;
      v22 = v50;
      if (v51 == v50)
      {
        goto LABEL_84;
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
LABEL_83:
      v22 = v50;
LABEL_84:
      v51 = v20;
      operator delete(v22);
    }

LABEL_85:
    if (v48 != &v49)
    {
      free(v48);
    }

    return v16;
  }

  v5 = v2[1];
  if (!v5)
  {
    v44[0] = "requires attribute 'lowerBoundsMap'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &v46);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v55 != 1)
    {
      return v16;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v53;
      v27 = __p;
      if (v53 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v53 = v25;
      operator delete(v27);
    }

    v20 = v50;
    if (v50)
    {
      v28 = v51;
      v22 = v50;
      if (v51 == v50)
      {
        goto LABEL_84;
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

      while (v28 != v20);
      goto LABEL_83;
    }

    goto LABEL_85;
  }

  v6 = v2[2];
  if (!v6)
  {
    v44[0] = "requires attribute 'reductions'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &v46);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v55 != 1)
    {
      return v16;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v53;
      v33 = __p;
      if (v53 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v53 = v31;
      operator delete(v33);
    }

    v20 = v50;
    if (v50)
    {
      v34 = v51;
      v22 = v50;
      if (v51 == v50)
      {
        goto LABEL_84;
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

      while (v34 != v20);
      goto LABEL_83;
    }

    goto LABEL_85;
  }

  v7 = v2[3];
  if (!v7)
  {
    v44[0] = "requires attribute 'steps'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &v46);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v55 != 1)
    {
      return v16;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v53;
      v39 = __p;
      if (v53 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v53 = v37;
      operator delete(v39);
    }

    v20 = v50;
    if (v50)
    {
      v40 = v51;
      v22 = v50;
      if (v51 == v50)
      {
        goto LABEL_84;
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

      while (v40 != v20);
      goto LABEL_83;
    }

    goto LABEL_85;
  }

  v8 = v2[4];
  if (v8)
  {
    v9 = v2[5];
    if (!v9)
    {
      v44[0] = "requires attribute 'upperBoundsMap'";
      v45 = 259;
      mlir::OpState::emitOpError(this, v44, &v46);
      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
      return v16;
    }

    v46 = *this;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(v6, "reductions", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v46 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v5, "lowerBoundsMap", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v46 = *this;
    if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v3, "lowerBoundsGroups", 0x11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v46 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v9, "upperBoundsMap", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v46 = *this;
    if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v8, "upperBoundsGroups", 0x11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v46 = *this;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(v7, "steps", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v11 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v12 = *(v11 + 68);
      if (v12)
      {
        v13 = this;
        v14 = 0;
        v15 = *(v11 + 72) + 24;
        while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*v13, *(*v15 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v14) & 1) != 0)
        {
          ++v14;
          v15 += 32;
          v13 = this;
          if (v12 == v14)
          {
            goto LABEL_18;
          }
        }

        return 0;
      }
    }

LABEL_18:
    mlir::affine::AffineParallelOp::verifyInvariantsImpl();
    return v46;
  }

  else
  {
    v44[0] = "requires attribute 'upperBoundsGroups'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &v46);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v55 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v47);
    }
  }

  return v16;
}

uint64_t mlir::affine::AffinePrefetchOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v72 = v6;
  if (!v6)
  {
    a3(&v76, a4);
    if (v76)
    {
      LODWORD(v73) = 3;
      v74 = "expected DictionaryAttr to set properties";
      v75 = 41;
      v22 = &v73;
      v23 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v73 && v78 + 24 * v79 > &v73)
        {
          v65 = &v73 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v23 = v78;
          v22 = (v78 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v22 = &v73;
          v23 = v78;
        }
      }

      v24 = &v23[24 * v79];
      v25 = *v22;
      *(v24 + 2) = v22[2];
      *v24 = v25;
      ++v79;
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }
    }

    if (v87 != 1)
    {
      return 0;
    }

    if (v86 != &v87)
    {
      free(v86);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v85;
      v28 = __p;
      if (v85 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v85 = v26;
      operator delete(v28);
    }

    v29 = v82;
    if (!v82)
    {
      goto LABEL_81;
    }

    v30 = v83;
    v31 = v82;
    if (v83 == v82)
    {
LABEL_80:
      v83 = v29;
      operator delete(v31);
LABEL_81:
      if (v78 != v81)
      {
        free(v78);
      }

      return 0;
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
LABEL_79:
    v31 = v82;
    goto LABEL_80;
  }

  v89.var0 = "isDataCache";
  v89.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v72, v89);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::BoolAttr::classof(v8))
  {
    a3(&v76, a4);
    if (v76)
    {
      LODWORD(v73) = 3;
      v75 = 56;
      v34 = &v73;
      v35 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v73 && v78 + 24 * v79 > &v73)
        {
          v66 = &v73 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v35 = v78;
          v34 = (v78 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v34 = &v73;
          v35 = v78;
        }
      }

      v36 = &v35[24 * v79];
      v37 = *v34;
      *(v36 + 2) = v34[2];
      *v36 = v37;
      ++v79;
      if (v76)
      {
        v38 = &v73;
        mlir::DiagnosticArgument::DiagnosticArgument(&v73, v9);
        v39 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v68 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v39 = v78;
            v38 = (v78 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v38 = &v73;
            v39 = v78;
          }
        }

        v40 = &v39[24 * v79];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v79;
        if (v76)
        {
          mlir::InFlightDiagnostic::report(&v76);
        }
      }
    }

    if ((v87 & 1) == 0)
    {
      return 0;
    }

    if (v86 != &v87)
    {
      free(v86);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v85;
      v44 = __p;
      if (v85 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v85 = v42;
      operator delete(v44);
    }

    v29 = v82;
    if (!v82)
    {
      goto LABEL_81;
    }

    v45 = v83;
    v31 = v82;
    if (v83 == v82)
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
LABEL_8:
  v90.var0 = "isWrite";
  v90.var1 = 7;
  v10 = mlir::DictionaryAttr::get(&v72, v90);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  if (!mlir::BoolAttr::classof(v10))
  {
    a3(&v76, a4);
    if (v76)
    {
      LODWORD(v73) = 3;
      v75 = 52;
      v48 = &v73;
      v49 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v73 && v78 + 24 * v79 > &v73)
        {
          v67 = &v73 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v49 = v78;
          v48 = (v78 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v48 = &v73;
          v49 = v78;
        }
      }

      v50 = &v49[24 * v79];
      v51 = *v48;
      *(v50 + 2) = v48[2];
      *v50 = v51;
      ++v79;
      if (v76)
      {
        v52 = &v73;
        mlir::DiagnosticArgument::DiagnosticArgument(&v73, v11);
        v53 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v70 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v53 = v78;
            v52 = (v78 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v52 = &v73;
            v53 = v78;
          }
        }

        v54 = &v53[24 * v79];
        v55 = *v52;
        *(v54 + 2) = v52[2];
        *v54 = v55;
        ++v79;
        if (v76)
        {
          mlir::InFlightDiagnostic::report(&v76);
        }
      }
    }

    if ((v87 & 1) == 0)
    {
      return 0;
    }

    if (v86 != &v87)
    {
      free(v86);
    }

    v56 = __p;
    if (__p)
    {
      v57 = v85;
      v58 = __p;
      if (v85 != __p)
      {
        do
        {
          v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
        }

        while (v57 != v56);
        v58 = __p;
      }

      v85 = v56;
      operator delete(v58);
    }

    v29 = v82;
    if (!v82)
    {
      goto LABEL_81;
    }

    v59 = v83;
    v31 = v82;
    if (v83 == v82)
    {
      goto LABEL_80;
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
    goto LABEL_79;
  }

  a1[1] = v11;
LABEL_11:
  v91.var0 = "localityHint";
  v91.var1 = 12;
  v12 = mlir::DictionaryAttr::get(&v72, v91);
  if (v12)
  {
    if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v13 = v12;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 57;
        v14 = &v73;
        v15 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v69 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v15 = v78;
            v14 = (v78 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v14 = &v73;
            v15 = v78;
          }
        }

        v16 = &v15[24 * v79];
        v17 = *v14;
        *(v16 + 2) = v14[2];
        *v16 = v17;
        ++v79;
        if (v76)
        {
          v18 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v13);
          v19 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v71 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v19 = v78;
              v18 = (v78 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v18 = &v73;
              v19 = v78;
            }
          }

          v20 = &v19[24 * v79];
          v21 = *v18;
          *(v20 + 2) = v18[2];
          *v20 = v21;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if (v87 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v77);
      }

      return 0;
    }

    a1[2] = v12;
  }

  v92.var0 = "map";
  v92.var1 = 3;
  v62 = mlir::DictionaryAttr::get(&v72, v92);
  v73 = v62;
  if (!v62)
  {
    return 1;
  }

  if (*(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    a1[3] = v62;
    return 1;
  }

  a3(&v76, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v63, &v73);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
  return 0;
}

uint64_t mlir::affine::AffinePrefetchOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v37[6] = *MEMORY[0x1E69E9840];
  v34 = a1;
  v35 = v37;
  v36 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "isDataCache", 11, *a2);
  v5 = v36;
  if (v36 >= HIDWORD(v36))
  {
    v26 = NamedAttr;
    v27 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
    v4 = v27;
    NamedAttr = v26;
    v5 = v36;
  }

  v6 = (v35 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v34, "isWrite", 7, v8);
    v11 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v28 = v9;
      v29 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v10 = v29;
      v9 = v28;
      v11 = v36;
    }

    v12 = (v35 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v34, "localityHint", 12, v13);
    v16 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v30 = v14;
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v15 = v31;
      v14 = v30;
      v16 = v36;
    }

    v17 = (v35 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v34, "map", 3, v18);
    v21 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v32 = v19;
      v33 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v20 = v33;
      v19 = v32;
      v21 = v36;
    }

    v22 = (v35 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v23 = v35;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v35 == v37)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v34, v35, v7);
  v23 = v35;
  if (v35 != v37)
  {
LABEL_20:
    free(v23);
  }

  return DictionaryAttr;
}

uint64_t mlir::affine::AffinePrefetchOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 12)
    {
      if (!memcmp(__s1, "localityHint", 0xCuLL))
      {
        return a2[2];
      }
    }

    else if (__n == 11 && *__s1 == 0x6143617461447369 && *(__s1 + 3) == 0x6568636143617461)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 3)
  {
    if (!memcmp(__s1, "map", 3uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n != 7 || memcmp(__s1, "isWrite", 7uLL))
  {
    return 0;
  }

  return a2[1];
}

uint64_t mlir::affine::AffinePrefetchOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 10)
  {
    if (a3 == 12)
    {
      result = memcmp(__s1, "localityHint", 0xCuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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
    }

    else if (a3 == 11 && *__s1 == 0x6143617461447369 && *(__s1 + 3) == 0x6568636143617461)
    {
      if (a4)
      {
        result = mlir::BoolAttr::classof(a4);
        if (result)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *v5 = v7;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else if (a3 == 3)
  {
    result = memcmp(__s1, "map", 3uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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
    result = memcmp(__s1, "isWrite", 7uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::BoolAttr::classof(a4);
        if (result)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        v5[1] = v10;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  return result;
}

BOOL mlir::affine::AffinePrefetchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v11, "map", 3, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::affine::AffinePrefetchOp::readProperties(uint64_t a1, void *a2)
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
    v5 = operator new(0x20uLL);
    *v5 = 0u;
    v5[1] = 0u;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v8;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v7;
    {
      mlir::affine::AffinePrefetchOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(a1, v3 + 1) && (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 2) & 1) != 0)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 3) & 1;
  }

  return 0;
}

uint64_t mlir::affine::AffinePrefetchOp::build(uint64_t **a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, mlir::MLIRContext *a7, unsigned int a8, unsigned __int8 a9)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21 = a3;
  I32IntegerAttr = mlir::Builder::getI32IntegerAttr(a1, a8);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a7);
  v17 = mlir::Builder::getBoolAttr(a1, a9);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::ValueRange::ValueRange(v22, a5, a6);
  mlir::OperationState::addOperands(a2, v22[0], v22[1]);
  v18 = a2[32];
  if (!v18)
  {
    v19 = operator new(0x20uLL);
    *v19 = 0u;
    v19[1] = 0u;
    a2[32] = v19;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v22;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v22;
    {
      mlir::affine::AffinePrefetchOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v18 = a2[32];
  }

  result = mlir::AffineMapAttr::get(a4);
  v18[2] = I32IntegerAttr;
  v18[3] = result;
  *v18 = v17;
  v18[1] = BoolAttr;
  return result;
}

BOOL mlir::affine::AffinePrefetchOp::verifyInvariantsImpl(mlir::affine::AffinePrefetchOp *this)
{
  v62 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (!v4)
  {
    v51[0] = "requires attribute 'isDataCache'";
    v52 = 259;
    mlir::OpState::emitOpError(this, v51, v53);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return v11;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v59;
      v14 = __p;
      if (v59 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v59 = v12;
      operator delete(v14);
    }

    v15 = v56;
    if (v56)
    {
      v16 = v57;
      v17 = v56;
      if (v57 == v56)
      {
        goto LABEL_75;
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
LABEL_74:
      v17 = v56;
LABEL_75:
      v57 = v15;
      operator delete(v17);
    }

LABEL_76:
    if (v54 != &v55)
    {
      free(v54);
    }

    return v11;
  }

  v5 = v2[1];
  if (!v5)
  {
    v51[0] = "requires attribute 'isWrite'";
    v52 = 259;
    mlir::OpState::emitOpError(this, v51, v53);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return v11;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v59;
      v22 = __p;
      if (v59 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v59 = v20;
      operator delete(v22);
    }

    v15 = v56;
    if (v56)
    {
      v23 = v57;
      v17 = v56;
      if (v57 == v56)
      {
        goto LABEL_75;
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
      goto LABEL_74;
    }

    goto LABEL_76;
  }

  v6 = v2[2];
  if (!v6)
  {
    v51[0] = "requires attribute 'localityHint'";
    v52 = 259;
    mlir::OpState::emitOpError(this, v51, v53);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return v11;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v59;
      v28 = __p;
      if (v59 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v59 = v26;
      operator delete(v28);
    }

    v15 = v56;
    if (v56)
    {
      v29 = v57;
      v17 = v56;
      if (v57 == v56)
      {
        goto LABEL_75;
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
      goto LABEL_74;
    }

    goto LABEL_76;
  }

  v7 = v2[3];
  if (!v7)
  {
    v51[0] = "requires attribute 'map'";
    v52 = 259;
    mlir::OpState::emitOpError(this, v51, v53);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return v11;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v59;
      v34 = __p;
      if (v59 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v59 = v32;
      operator delete(v34);
    }

    v15 = v56;
    if (v56)
    {
      v35 = v57;
      v17 = v56;
      if (v57 == v56)
      {
        goto LABEL_75;
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
      goto LABEL_74;
    }

    goto LABEL_76;
  }

  v53[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v5, "isWrite", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v53) & 1) == 0)
  {
    return 0;
  }

  v53[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(v6, "localityHint", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v53) & 1) == 0)
  {
    return 0;
  }

  v53[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v3, "isDataCache", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v53) & 1) == 0)
  {
    return 0;
  }

  v53[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v7, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v53) & 1) == 0)
  {
    return 0;
  }

  ODSOperands = mlir::affine::AffinePrefetchOp::getODSOperands(this, 0, v9, v10);
  if (v40)
  {
    v43 = v40;
    v44 = 0;
    v45 = ODSOperands + 24;
    while ((mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(*this, *(*v45 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v44) & 1) != 0)
    {
      ++v44;
      v45 += 32;
      if (v43 == v44)
      {
        goto LABEL_85;
      }
    }

    return 0;
  }

  LODWORD(v44) = 0;
LABEL_85:
  v11 = 1;
  v46 = mlir::affine::AffinePrefetchOp::getODSOperands(this, 1u, v41, v42);
  if (v47)
  {
    v48 = v47;
    v49 = v46 + 24;
    v50 = this;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*v50, *(*v49 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v44) & 1) != 0)
    {
      LODWORD(v44) = v44 + 1;
      v49 += 32;
      v11 = 1;
      --v48;
      v50 = this;
      if (!v48)
      {
        return v11;
      }
    }

    return 0;
  }

  return v11;
}

uint64_t mlir::affine::AffineStoreOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::affine::AffineStoreOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, *(a2 + 256)) & 1;
}

uint64_t mlir::affine::AffineStoreOp::verifyInvariantsImpl(mlir::affine::AffineStoreOp *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    *v16 = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16) & 1) != 0 && (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      if ((*(*this + 46) & 0x80) != 0 && *(*this + 68) == 2)
      {
        return 1;
      }

      else
      {
        mlir::affine::AffineStoreOp::verifyInvariantsImpl();
        return v16[0];
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = "requires attribute 'map'";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v16);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
    if (*v16)
    {
      mlir::InFlightDiagnostic::report(v16);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v22;
        v7 = __p;
        if (v22 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v22 = v5;
        operator delete(v7);
      }

      v8 = v19;
      if (v19)
      {
        v9 = v20;
        v10 = v19;
        if (v20 != v19)
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
          v10 = v19;
        }

        v20 = v8;
        operator delete(v10);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v4;
}

uint64_t mlir::affine::AffineVectorLoadOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::affine::AffineVectorLoadOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, *(a2 + 256)) & 1;
}

BOOL mlir::affine::AffineVectorLoadOp::verifyInvariantsImpl(mlir::affine::AffineVectorLoadOp *this)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v26[0] = v2;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26) & 1) == 0 || (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) == 0)
    {
      v6 = -1;
      v7 = 32;
LABEL_7:
      v8 = v7 + 24;
      v9 = 1;
      while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v9) & 1) != 0)
      {
        ++v9;
        v8 += 32;
        if (!--v6)
        {
          v4 = *this;
          goto LABEL_11;
        }
      }

      return 0;
    }

    v5 = *(v4 + 68);
    v6 = v5 - 1;
    if (v5 != 1)
    {
      v7 = *(v4 + 72) + 32;
      goto LABEL_7;
    }

LABEL_11:
    v10 = *(v4 + 36);
    v11 = v4 - 16;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
    return mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  else
  {
    v24 = "requires attribute 'map'";
    v25 = 259;
    mlir::OpState::emitOpError(this, &v24, v26);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
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

      v15 = __p;
      if (__p)
      {
        v16 = v32;
        v17 = __p;
        if (v32 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v32 = v15;
        operator delete(v17);
      }

      v18 = v29;
      if (v29)
      {
        v19 = v30;
        v20 = v29;
        if (v30 != v29)
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
          v20 = v29;
        }

        v30 = v18;
        operator delete(v20);
      }

      if (v27 != &v28)
      {
        free(v27);
      }
    }
  }

  return v14;
}

uint64_t mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v70 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v54[0] = a2;
    v36 = a1;
    mlir::ArrayAttr::getValue(v54);
    a1 = v36;
    if (v37 >= 1)
    {
      v38 = *a2;
      {
        v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v40 = *(v38 + 8);
        v41 = *(v38 + 16);
        if (!v41)
        {
          goto LABEL_56;
        }
      }

      else
      {
        mlir::cf::SwitchOp::build();
        v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v40 = *(v38 + 8);
        v41 = *(v38 + 16);
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
        v48 = v42[1];
        goto LABEL_58;
      }

LABEL_56:
      v48 = 0;
LABEL_58:
      v59[0] = a2;
      v59[1] = v48;
      mlir::ElementsAttr::isSplat(v59);
      return 1;
    }
  }

  v55 = 261;
  v54[0] = a3;
  v54[1] = a4;
  mlir::Operation::emitOpError(a1, v54, v59);
  if (v59[0])
  {
    v56 = 3;
    v57 = " #";
    v58 = 2;
    v9 = &v56;
    v10 = v60;
    if (v61 >= v62)
    {
      if (v60 <= &v56 && v60 + 24 * v61 > &v56)
      {
        v50 = &v56 - v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v10 = v60;
        v9 = (v60 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v9 = &v56;
        v10 = v60;
      }
    }

    v11 = &v10[24 * v61];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    v13 = ++v61;
    if (v59[0])
    {
      v56 = 5;
      v57 = a5;
      v14 = &v56;
      v15 = v60;
      if (v13 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v13 > &v56)
        {
          v51 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v13 + 1, 24);
          v15 = v60;
          v14 = (v60 + v51);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v13 + 1, 24);
          v14 = &v56;
          v15 = v60;
        }
      }

      v16 = &v15[24 * v61];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      v18 = ++v61;
      if (v59[0])
      {
        v56 = 3;
        v57 = " must be vector of any type values, but got ";
        v58 = 44;
        v19 = &v56;
        v20 = v60;
        if (v18 >= v62)
        {
          if (v60 <= &v56 && v60 + 24 * v18 > &v56)
          {
            v52 = &v56 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v18 + 1, 24);
            v20 = v60;
            v19 = (v60 + v52);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v18 + 1, 24);
            v19 = &v56;
            v20 = v60;
          }
        }

        v21 = &v20[24 * v61];
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        ++v61;
        if (v59[0])
        {
          v23 = &v56;
          mlir::DiagnosticArgument::DiagnosticArgument(&v56, a2);
          v24 = v60;
          if (v61 >= v62)
          {
            if (v60 <= &v56 && v60 + 24 * v61 > &v56)
            {
              v53 = &v56 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v24 = v60;
              v23 = (v60 + v53);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v23 = &v56;
              v24 = v60;
            }
          }

          v25 = &v24[24 * v61];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          ++v61;
        }
      }
    }
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v69 == 1)
  {
    if (v68 != &v69)
    {
      free(v68);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v67;
      v30 = __p;
      if (v67 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v67 = v28;
      operator delete(v30);
    }

    v31 = v64;
    if (v64)
    {
      v32 = v65;
      v33 = v64;
      if (v65 != v64)
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
        v33 = v64;
      }

      v65 = v31;
      operator delete(v33);
    }

    if (v60 != v63)
    {
      free(v60);
    }
  }

  return v27;
}

uint64_t mlir::affine::AffineVectorStoreOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::affine::AffineVectorStoreOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, *(a2 + 256)) & 1;
}

uint64_t mlir::affine::AffineVectorStoreOp::verifyInvariantsImpl(mlir::affine::AffineVectorStoreOp *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    *v16 = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16) & 1) != 0 && (mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      if ((*(*this + 46) & 0x80) != 0 && *(*this + 68) == 2)
      {
        return 1;
      }

      else
      {
        mlir::affine::AffineStoreOp::verifyInvariantsImpl();
        return v16[0];
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = "requires attribute 'map'";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v16);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
    if (*v16)
    {
      mlir::InFlightDiagnostic::report(v16);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v22;
        v7 = __p;
        if (v22 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v22 = v5;
        operator delete(v7);
      }

      v8 = v19;
      if (v19)
      {
        v9 = v20;
        v10 = v19;
        if (v20 != v19)
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
          v10 = v19;
        }

        v20 = v8;
        operator delete(v10);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v4;
}

uint64_t mlir::affine::AffineYieldOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v10, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || v11 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v8) & 1) == 0))
  {
    v5 = 0;
    v6 = v8[0];
    if (v8[0] == &v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v10, v8, v4, a2 + 16) & 1;
  v6 = v8[0];
  if (v8[0] != &v9)
  {
LABEL_9:
    free(v6);
  }

LABEL_10:
  if (v10 != v12)
  {
    free(v10);
  }

  return v5;
}

uint64_t mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::DimOp>,mlir::OpTrait::OneResult<mlir::memref::DimOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::memref::DimOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::DimOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::memref::DimOp>,mlir::OpTrait::OpInvariants<mlir::memref::DimOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::DimOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::DimOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::DimOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::DimOp>,mlir::ShapedDimOpInterface::Trait<mlir::memref::DimOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::DimOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::DimOp>,mlir::OpTrait::OneResult<mlir::memref::DimOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::memref::DimOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::DimOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::memref::DimOp>,mlir::OpTrait::OpInvariants<mlir::memref::DimOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::DimOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::DimOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::DimOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::DimOp>,mlir::ShapedDimOpInterface::Trait<mlir::memref::DimOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::DimOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[237];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::ViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *result, unsigned int **a2)
{
  if ((result[9] & 1) == 0)
  {
    v4 = *result;
    if (*result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
    {
      v34[7] = v2;
      v34[8] = v3;
      v6 = result;
      v7 = **a2;
      v8 = *a2[1];
      v34[0] = v4;
      v33 = *(v4 - 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::ArrayAttr::getValue(&v33);
      if (v9 <= v7)
      {
        isValidSymbol = 0;
      }

      else
      {
        if (*(mlir::ArrayAttr::getValue(&v33) + 8 * v7) == 0x8000000000000000)
        {
          Value = mlir::ArrayAttr::getValue(&v33);
          if (v11 >= v7)
          {
            v12 = v7;
          }

          else
          {
            v12 = v11;
          }

          if (!v12)
          {
            v17 = 0;
LABEL_26:
            ODSOperandIndexAndLength = mlir::memref::StoreOp::getODSOperandIndexAndLength(v34, 2u);
            if ((*(v34[0] + 46) & 0x80) != 0)
            {
              v32 = *(v34[0] + 72);
            }

            else
            {
              v32 = 0;
            }

            mlir::memref::StoreOp::getODSOperandIndexAndLength(v34, 2u);
            isValidSymbol = mlir::affine::isValidSymbol(*(v32 + 32 * ODSOperandIndexAndLength + 32 * v17 + 24), v8);
            goto LABEL_29;
          }

          v13 = (v12 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          if (v13 >= 7)
          {
            v18 = v13 + 1;
            v19 = (v13 + 1) & 0x3FFFFFFFFFFFFFF8;
            v15 = (Value + 8 * v19);
            v20 = (Value + 32);
            v21 = 0uLL;
            v22 = vnegq_f64(0);
            v23 = v19;
            v24 = 0uLL;
            do
            {
              v25 = v20[-2];
              v26 = v20[-1];
              v27 = *v20;
              v28 = v20[1];
              v20 += 4;
              v21 = vsubq_s32(v21, vuzp1q_s32(vceqq_s64(v25, v22), vceqq_s64(v26, v22)));
              v24 = vsubq_s32(v24, vuzp1q_s32(vceqq_s64(v27, v22), vceqq_s64(v28, v22)));
              v23 -= 8;
            }

            while (v23);
            v14 = vaddvq_s32(vaddq_s32(v24, v21));
            if (v18 == v19)
            {
LABEL_25:
              v17 = v14;
              goto LABEL_26;
            }
          }

          else
          {
            v14 = 0;
            v15 = Value;
          }

          v29 = (Value + 8 * v12);
          do
          {
            v30 = *v15++;
            if (v30 == 0x8000000000000000)
            {
              ++v14;
            }
          }

          while (v15 != v29);
          goto LABEL_25;
        }

        isValidSymbol = 1;
      }

LABEL_29:
      result = v6;
      v6[8] = isValidSymbol;
      v6[9] = 1;
    }
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::SubViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *result, unsigned int **a2)
{
  if ((result[9] & 1) == 0)
  {
    v4 = *result;
    if (*result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id)
    {
      v36[5] = v2;
      v36[6] = v3;
      v6 = result;
      v7 = **a2;
      v8 = *a2[1];
      v36[0] = v4;
      v9 = *(v4 + 36);
      v10 = v4 - 16;
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v35 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::ArrayAttr::getValue(&v35);
      if (v12 <= v7)
      {
        isValidSymbol = 0;
      }

      else
      {
        if (*(mlir::ArrayAttr::getValue(&v35) + 8 * v7) == 0x8000000000000000)
        {
          Value = mlir::ArrayAttr::getValue(&v35);
          if (v14 >= v7)
          {
            v15 = v7;
          }

          else
          {
            v15 = v14;
          }

          if (!v15)
          {
            v20 = 0;
LABEL_29:
            ODSOperandIndexAndLength = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(v36, 2u);
            isValidSymbol = mlir::affine::isValidSymbol(*(*(v36[0] + 72) + 32 * ODSOperandIndexAndLength + 32 * v20 + 24), v8);
            goto LABEL_30;
          }

          v16 = (v15 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          if (v16 >= 7)
          {
            v21 = v16 + 1;
            v22 = (v16 + 1) & 0x3FFFFFFFFFFFFFF8;
            v18 = (Value + 8 * v22);
            v23 = (Value + 32);
            v24 = 0uLL;
            v25 = vnegq_f64(0);
            v26 = v22;
            v27 = 0uLL;
            do
            {
              v28 = v23[-2];
              v29 = v23[-1];
              v30 = *v23;
              v31 = v23[1];
              v23 += 4;
              v24 = vsubq_s32(v24, vuzp1q_s32(vceqq_s64(v28, v25), vceqq_s64(v29, v25)));
              v27 = vsubq_s32(v27, vuzp1q_s32(vceqq_s64(v30, v25), vceqq_s64(v31, v25)));
              v26 -= 8;
            }

            while (v26);
            v17 = vaddvq_s32(vaddq_s32(v27, v24));
            if (v21 == v22)
            {
LABEL_28:
              v20 = v17;
              goto LABEL_29;
            }
          }

          else
          {
            v17 = 0;
            v18 = Value;
          }

          v32 = (Value + 8 * v15);
          do
          {
            v33 = *v18++;
            if (v33 == 0x8000000000000000)
            {
              ++v17;
            }
          }

          while (v18 != v32);
          goto LABEL_28;
        }

        isValidSymbol = 1;
      }

LABEL_30:
      result = v6;
      v6[8] = isValidSymbol;
      v6[9] = 1;
    }
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::AllocOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *result, unsigned int **a2)
{
  if ((result[9] & 1) == 0)
  {
    v4 = *result;
    if (*result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id)
    {
      v33[5] = v2;
      v33[6] = v3;
      v6 = result;
      v7 = **a2;
      v8 = *a2[1];
      v33[0] = v4;
      v32 = *(v4 - 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::ArrayAttr::getValue(&v32);
      if (v9 <= v7)
      {
        isValidSymbol = 0;
      }

      else
      {
        if (*(mlir::ArrayAttr::getValue(&v32) + 8 * v7) == 0x8000000000000000)
        {
          Value = mlir::ArrayAttr::getValue(&v32);
          if (v11 >= v7)
          {
            v12 = v7;
          }

          else
          {
            v12 = v11;
          }

          if (!v12)
          {
            v17 = 0;
LABEL_26:
            ODSOperandIndexAndLength = mlir::memref::AllocOp::getODSOperandIndexAndLength(v33, 0);
            isValidSymbol = mlir::affine::isValidSymbol(*(*(v33[0] + 72) + 32 * ODSOperandIndexAndLength + 32 * v17 + 24), v8);
            goto LABEL_27;
          }

          v13 = (v12 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          if (v13 >= 7)
          {
            v18 = v13 + 1;
            v19 = (v13 + 1) & 0x3FFFFFFFFFFFFFF8;
            v15 = (Value + 8 * v19);
            v20 = (Value + 32);
            v21 = 0uLL;
            v22 = vnegq_f64(0);
            v23 = v19;
            v24 = 0uLL;
            do
            {
              v25 = v20[-2];
              v26 = v20[-1];
              v27 = *v20;
              v28 = v20[1];
              v20 += 4;
              v21 = vsubq_s32(v21, vuzp1q_s32(vceqq_s64(v25, v22), vceqq_s64(v26, v22)));
              v24 = vsubq_s32(v24, vuzp1q_s32(vceqq_s64(v27, v22), vceqq_s64(v28, v22)));
              v23 -= 8;
            }

            while (v23);
            v14 = vaddvq_s32(vaddq_s32(v24, v21));
            if (v18 == v19)
            {
LABEL_25:
              v17 = v14;
              goto LABEL_26;
            }
          }

          else
          {
            v14 = 0;
            v15 = Value;
          }

          v29 = (Value + 8 * v12);
          do
          {
            v30 = *v15++;
            if (v30 == 0x8000000000000000)
            {
              ++v14;
            }
          }

          while (v15 != v29);
          goto LABEL_25;
        }

        isValidSymbol = 1;
      }

LABEL_27:
      result = v6;
      v6[8] = isValidSymbol;
      v6[9] = 1;
    }
  }

  return result;
}

void llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v5 = a3 - a2;
  v6 = *(a1 + 8);
  v7 = v6 + ((a3 - a2) >> 3);
  if (v7 > *(a1 + 12))
  {
    v8 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v7, 8);
    a2 = v8;
    LODWORD(v6) = *(a1 + 8);
  }

  if (a2 != a3)
  {
    memcpy((*a1 + 8 * v6), a2, v5);
    LODWORD(v6) = *(a1 + 8);
  }

  *(a1 + 8) = v6 + (v5 >> 3);
}

uint64_t mlir::AffineMap::shiftDims(mlir::AffineMap *this, int a2, unsigned int a3)
{
  v26[4] = *MEMORY[0x1E69E9840];
  NumDims = mlir::AffineMap::getNumDims(this);
  NumSymbols = mlir::AffineMap::getNumSymbols(this);
  Results = mlir::AffineMap::getResults(this);
  v10 = v8;
  v24 = v26;
  v25 = 0x400000000;
  if (v8 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v8, 8);
    v11 = v25;
    v12 = v24;
    goto LABEL_5;
  }

  if (v8)
  {
    v11 = 0;
    v12 = v26;
LABEL_5:
    v13 = 8 * v10;
    v14 = &v12[v11];
    do
    {
      v15 = *Results++;
      v23 = v15;
      v16 = mlir::AffineMap::getNumDims(this);
      *v14++ = mlir::AffineExpr::shiftDims(&v23, v16, a2, a3);
      v13 -= 8;
    }

    while (v13);
    v17 = v25;
    v18 = v24;
    goto LABEL_8;
  }

  v17 = 0;
  v18 = v26;
LABEL_8:
  v19 = (v17 + v10);
  LODWORD(v25) = v19;
  LHS = mlir::AffineBinaryOpExpr::getLHS(this);
  result = mlir::AffineMap::get(NumDims + a2, NumSymbols, v18, v19, LHS);
  if (v24 != v26)
  {
    v22 = result;
    free(v24);
    return v22;
  }

  return result;
}

uint64_t mlir::AffineMap::shiftSymbols(mlir::AffineMap *this, int a2, unsigned int a3)
{
  v26[4] = *MEMORY[0x1E69E9840];
  NumDims = mlir::AffineMap::getNumDims(this);
  NumSymbols = mlir::AffineMap::getNumSymbols(this);
  Results = mlir::AffineMap::getResults(this);
  v10 = v8;
  v24 = v26;
  v25 = 0x400000000;
  if (v8 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v8, 8);
    v11 = v25;
    v12 = v24;
    goto LABEL_5;
  }

  if (v8)
  {
    v11 = 0;
    v12 = v26;
LABEL_5:
    v13 = 8 * v10;
    v14 = &v12[v11];
    do
    {
      v15 = *Results++;
      v23 = v15;
      v16 = mlir::AffineMap::getNumSymbols(this);
      *v14++ = mlir::AffineExpr::shiftSymbols(&v23, v16, a2, a3);
      v13 -= 8;
    }

    while (v13);
    v17 = v25;
    v18 = v24;
    goto LABEL_8;
  }

  v17 = 0;
  v18 = v26;
LABEL_8:
  v19 = (v17 + v10);
  LODWORD(v25) = v19;
  LHS = mlir::AffineBinaryOpExpr::getLHS(this);
  result = mlir::AffineMap::get(NumDims, NumSymbols + a2, v18, v19, LHS);
  if (v24 != v26)
  {
    v22 = result;
    free(v24);
    return v22;
  }

  return result;
}

BOOL mlir::AsmParser::parseAttribute<mlir::Attribute>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = (*(*a1 + 40))(a1);
  v26 = 0;
  if (((*(*a1 + 440))(a1, &v26, a3) & 1) == 0)
  {
    return 0;
  }

  v13 = v26;
  *a2 = v26;
  if (v13)
  {
    mlir::NamedAttrList::append(a6, a4, a5, v13);
    return 1;
  }

  else
  {
    v24 = "invalid kind of attribute specified";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v12, &v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v15 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v15;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v15;
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
        result = v15;
      }

      v19 = v30;
      if (v30)
      {
        v20 = v31;
        v21 = v30;
        if (v31 != v30)
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
          v21 = v30;
        }

        v31 = v19;
        operator delete(v21);
        result = v15;
      }

      if (v28 != &v29)
      {
        free(v28);
        return v15;
      }
    }
  }

  return result;
}

uint64_t foldLoopBounds(mlir::affine::AffineForOp)::$_0::operator()(uint64_t **a1, int a2)
{
  v2 = a2;
  v49 = *MEMORY[0x1E69E9840];
  v44 = v46;
  v45 = 0x800000000;
  v4 = **a1;
  v5 = *(v4 + 44);
  v6 = v4 + 16 * ((v5 >> 23) & 1);
  v7 = *(v6 + 88);
  if (a2)
  {
    if ((v5 & 0x800000) != 0)
    {
      v8 = *(v4 + 72);
      if (!*(v6 + 88))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
      if (!*(v6 + 88))
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v9 = *(v6 + 92);
    if ((v5 & 0x800000) != 0)
    {
      v8 = *(v4 + 72) + 32 * v7;
      v7 = (v9 + v7) - v7;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 32 * v7;
      v7 = (v9 + v7) - v7;
      if (!v7)
      {
        goto LABEL_17;
      }
    }
  }

  v10 = (v8 + 24);
  do
  {
    v11 = *v10;
    v47 = 0;
    __p = &v47;
    v41 = v11;
    DefiningOp = mlir::Value::getDefiningOp(&v41);
    if (DefiningOp)
    {
      mlir::detail::constant_op_binder<mlir::Attribute>::match(&__p, DefiningOp);
    }

    v13 = v47;
    v14 = v45;
    if (v45 >= HIDWORD(v45))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 8);
      v14 = v45;
    }

    *(v44 + v14) = v13;
    LODWORD(v45) = v45 + 1;
    v10 += 4;
    --v7;
  }

  while (v7);
LABEL_17:
  v15 = *a1;
  if (v2)
  {
    v16 = *(*v15 + 16 * ((*(*v15 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v16 = *(*v15 + 16 * ((*(*v15 + 44) >> 23) & 1) + 80);
  }

  v41 = v16;
  Value = mlir::AffineMapAttr::getValue(&v41);
  v41 = v43;
  v42 = 0x400000000;
  if (mlir::AffineMap::constantFold(&Value, v44, v45, &v41, 0))
  {
    v47 = *v41;
    mlir::IntegerAttr::getValue(&v47, &__p);
    if (v42 >= 2)
    {
      v17 = 8 * v42;
      v18 = 8;
      if ((v2 & 1) == 0)
      {
        while (1)
        {
          v37 = *(v41 + v18);
          mlir::IntegerAttr::getValue(&v37, &v47);
          v22 = llvm::APInt::compareSigned(&__p, &v47);
          if (v22 >= 0)
          {
            p_p = &v47;
          }

          else
          {
            p_p = &__p;
          }

          v24 = v39;
          if (v39 > 0x40)
          {
            goto LABEL_47;
          }

          if (v22 >= 0)
          {
            v24 = v48;
          }

          if (v24 > 0x40)
          {
LABEL_47:
            llvm::APInt::assignSlowCase(&__p, p_p);
            if (v48 >= 0x41)
            {
LABEL_48:
              if (v47)
              {
                operator delete[](v47);
              }
            }
          }

          else
          {
            __p = *p_p;
            v39 = v24;
            if (v48 >= 0x41)
            {
              goto LABEL_48;
            }
          }

          v18 += 8;
          if (v17 == v18)
          {
            goto LABEL_52;
          }
        }
      }

      do
      {
        v37 = *(v41 + v18);
        mlir::IntegerAttr::getValue(&v37, &v47);
        v19 = llvm::APInt::compareSigned(&__p, &v47);
        if (v19 <= 0)
        {
          v20 = &v47;
        }

        else
        {
          v20 = &__p;
        }

        v21 = v39;
        if (v39 > 0x40)
        {
          goto LABEL_34;
        }

        if (v19 <= 0)
        {
          v21 = v48;
        }

        if (v21 >= 0x41)
        {
LABEL_34:
          llvm::APInt::assignSlowCase(&__p, v20);
          if (v48 >= 0x41)
          {
LABEL_35:
            if (v47)
            {
              operator delete[](v47);
            }
          }
        }

        else
        {
          __p = *v20;
          v39 = v21;
          if (v48 >= 0x41)
          {
            goto LABEL_35;
          }
        }

        v18 += 8;
      }

      while (v17 != v18);
    }

LABEL_52:
    v27 = *a1;
    if (v2)
    {
      if (v39 > 0x40)
      {
        v28 = *__p;
      }

      else if (v39)
      {
        v28 = (__p << -v39) >> -v39;
      }

      else
      {
        v28 = 0;
      }

      mlir::ValueRange::ValueRange(&v47, 0, 0);
      Context = mlir::Attribute::getContext((*v27 + 24));
      ConstantMap = mlir::AffineMap::getConstantMap(v28, Context, v31);
      mlir::affine::AffineForOp::setLowerBound(v27, v47, v48, ConstantMap);
      if (v39 < 0x41)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v39 > 0x40)
      {
        v29 = *__p;
      }

      else if (v39)
      {
        v29 = (__p << -v39) >> -v39;
      }

      else
      {
        v29 = 0;
      }

      mlir::ValueRange::ValueRange(&v47, 0, 0);
      v33 = mlir::Attribute::getContext((*v27 + 24));
      v35 = mlir::AffineMap::getConstantMap(v29, v33, v34);
      mlir::affine::AffineForOp::setUpperBound(v27, v47, v48, v35);
      if (v39 < 0x41)
      {
        goto LABEL_68;
      }
    }

    if (__p)
    {
      operator delete[](__p);
    }

LABEL_68:
    v25 = 1;
    v26 = v41;
    if (v41 == v43)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v25 = 0;
  v26 = v41;
  if (v41 != v43)
  {
LABEL_69:
    free(v26);
  }

LABEL_70:
  if (v44 != v46)
  {
    free(v44);
  }

  return v25;
}

void simplifyMinOrMaxExprWithOperands(mlir::arith::FastMathFlagsAttr *a1, unint64_t a2, unint64_t a3, char a4)
{
  v108[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v106 = v108;
    v107 = 0x300000000;
    v103 = v105;
    v104 = 0x300000000;
    if (a3 >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v108, a3, 16);
      if (a3 > HIDWORD(v104))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v105, a3, 16);
      }
    }

    v9 = 8 * a3;
    do
    {
      v10 = *a2;
      LowerBound = getLowerBound(*a2);
      v13 = v107;
      if (v107 >= HIDWORD(v107))
      {
        v4 = LowerBound;
        v5 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v108, v107 + 1, 16);
        LOBYTE(v12) = v5;
        LowerBound = v4;
        v13 = v107;
      }

      v14 = &v106[16 * v13];
      *v14 = LowerBound;
      v14[1] = v12;
      LODWORD(v107) = v107 + 1;
      UpperBound = getUpperBound(v10);
      v17 = v104;
      if (v104 >= HIDWORD(v104))
      {
        v4 = UpperBound;
        v19 = v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v105, v104 + 1, 16);
        v16 = v19;
        UpperBound = v4;
        v17 = v104;
      }

      v18 = &v103[16 * v17];
      *v18 = UpperBound;
      v18[1] = v16;
      LODWORD(v104) = v104 + 1;
      a2 += 8;
      v9 -= 8;
    }

    while (v9);
    v20 = v102;
    v100 = v102;
    v101 = 0x400000000;
    v97 = v99;
    v98 = 0x400000000;
    Value = mlir::arith::FastMathFlagsAttr::getValue(a1);
    if (HIDWORD(v101) < Value)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, Value, 16);
    }

    v22 = mlir::arith::FastMathFlagsAttr::getValue(a1);
    if (HIDWORD(v98) < v22)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v99, v22, 16);
    }

    Results = mlir::AffineMap::getResults(a1);
    if (v24)
    {
      v25 = Results;
      for (i = 8 * v24; i; i -= 8)
      {
        v29 = *v25;
        v94 = *v25;
        if (mlir::arith::FastMathFlagsAttr::getValue(&v94) == 5)
        {
          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v94, v29);
          if (!v94)
          {
            goto LABEL_26;
          }
        }

        else
        {
          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v94, 0);
          if (!v94)
          {
LABEL_26:
            NumDims = mlir::AffineMap::getNumDims(a1);
            NumSymbols = mlir::AffineMap::getNumSymbols(a1);
            BoundForAffineExpr = mlir::getBoundForAffineExpr(v29, NumDims, NumSymbols, v106, v107, v103, v104, 0);
            v39 = v101;
            if (v101 >= HIDWORD(v101))
            {
              v91 = BoundForAffineExpr;
              v48 = v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v101 + 1, 16);
              v38 = v48;
              BoundForAffineExpr = v91;
              v39 = v101;
            }

            v4 = v4 & 0xFFFFFFFFFFFFFF00 | v38;
            v40 = (v100 + 16 * v39);
            *v40 = BoundForAffineExpr;
            v40[1] = v4;
            LODWORD(v101) = v101 + 1;
            v41 = mlir::AffineMap::getNumDims(a1);
            v42 = mlir::AffineMap::getNumSymbols(a1);
            v33 = mlir::getBoundForAffineExpr(v29, v41, v42, v106, v107, v103, v104, 1);
            v34 = v98;
            if (v98 >= HIDWORD(v98))
            {
              v44 = v33;
              v45 = v43;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v99, v98 + 1, 16);
              v43 = v45;
              v33 = v44;
              v34 = v98;
            }

            v20 = v20 & 0xFFFFFFFFFFFFFF00 | v43;
            v27 = v20;
            goto LABEL_18;
          }
        }

        LHS = mlir::AffineBinaryOpExpr::getLHS(&v94);
        v31 = v101;
        if (v101 >= HIDWORD(v101))
        {
          v46 = LHS;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v101 + 1, 16);
          LHS = v46;
          v31 = v101;
        }

        v5 = v5 & 0xFFFFFFFFFFFFFF00 | 1;
        v32 = (v100 + 16 * v31);
        *v32 = LHS;
        v32[1] = v5;
        LODWORD(v101) = v101 + 1;
        v33 = mlir::AffineBinaryOpExpr::getLHS(&v94);
        v27 = a2 & 0xFFFFFFFFFFFFFF00 | 1;
        v34 = v98;
        if (v98 >= HIDWORD(v98))
        {
          v47 = v33;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v99, v98 + 1, 16);
          v33 = v47;
          v34 = v98;
          a2 = v27;
        }

        else
        {
          a2 = a2 & 0xFFFFFFFFFFFFFF00 | 1;
        }

LABEL_18:
        v28 = (v97 + 16 * v34);
        *v28 = v33;
        v28[1] = v27;
        LODWORD(v98) = v98 + 1;
        ++v25;
      }
    }

    v94 = v96;
    v95 = 0x400000000;
    v49 = mlir::AffineMap::getResults(a1);
    if (v50)
    {
      v51 = v49;
      v52 = (v49 + 8 * v50);
      if (a4)
      {
        v53 = 0;
        do
        {
          AffineConstantExpr = *v51;
          v93 = *v51;
          v55 = v97;
          if (*(v100 + 16 * v53 + 8) == 1)
          {
            v56 = (v97 + 16 * v53);
            if (*(v56 + 8) == 1)
            {
              v57 = *(v100 + 2 * v53);
              if (v57 == *v56)
              {
                DesiredBytecodeVersion = mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(&v93);
                AffineConstantExpr = mlir::getAffineConstantExpr(v57, DesiredBytecodeVersion, v59);
                v93 = AffineConstantExpr;
                v55 = v97;
              }
            }
          }

          v60 = &v55[16 * v53];
          v61 = v60[8];
          if ((v61 & 1) != 0 && v101)
          {
            v62 = 0;
            v63 = v100 + 16 * v53;
            v64 = 16 * v101;
            v65 = v100 + 8;
            v66 = v55 + 8;
            while (1)
            {
              if (v53 != v62 && (*v65 & 1) != 0)
              {
                v67 = *(v65 - 1);
                if (v67 > *v60 || v67 >= *v60 && (*v66 != 1 || v63[8] != v61 || !v63[8] || *v63 != *v60 || v62 <= v53 || v67 != *(v66 - 1)))
                {
                  break;
                }
              }

              ++v62;
              v65 += 16;
              v66 += 16;
              v64 -= 16;
              if (!v64)
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
LABEL_34:
            v54 = v95;
            if (v95 >= HIDWORD(v95))
            {
              v68 = AffineConstantExpr;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v96, v95 + 1, 8);
              AffineConstantExpr = v68;
              v54 = v95;
            }

            *(v94 + v54) = AffineConstantExpr;
            LODWORD(v95) = v95 + 1;
          }

          ++v53;
          ++v51;
        }

        while (v51 != v52);
      }

      else
      {
        v70 = 0;
        do
        {
          v85 = *v51;
          v93 = *v51;
          v72 = v100;
          if (*(v100 + 16 * v70 + 8) == 1)
          {
            v73 = (v97 + 16 * v70);
            if (*(v73 + 8) == 1)
            {
              v74 = *(v100 + 2 * v70);
              if (v74 == *v73)
              {
                v75 = mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(&v93);
                v85 = mlir::getAffineConstantExpr(v74, v75, v76);
                v93 = v85;
                v72 = v100;
              }
            }
          }

          v77 = &v72[16 * v70];
          v78 = v77[8];
          if ((v78 & 1) != 0 && v98)
          {
            v79 = 0;
            v80 = v97;
            v81 = v97 + 16 * v70;
            v82 = v72 + 8;
            while (1)
            {
              if (v70 != v79)
              {
                v83 = *(v80 + 8);
                if ((v83 & 1) != 0 && (*v77 > *v80 || *v77 >= *v80 && (*v82 != 1 || v78 != v81[8] || !v81[8] || *v77 != *v81 || v83 != 1 || v79 <= v70 || *(v82 - 1) != *v80)))
                {
                  break;
                }
              }

              ++v79;
              v80 += 2;
              v82 += 16;
              if (v80 == (v97 + 16 * v98))
              {
                goto LABEL_58;
              }
            }
          }

          else
          {
LABEL_58:
            v71 = v95;
            if (v95 >= HIDWORD(v95))
            {
              v84 = v85;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v96, v95 + 1, 8);
              v85 = v84;
              v71 = v95;
            }

            *(v94 + v71) = v85;
            LODWORD(v95) = v95 + 1;
          }

          ++v70;
          ++v51;
        }

        while (v51 != v52);
      }
    }

    v86 = mlir::AffineMap::getNumDims(a1);
    v87 = mlir::AffineMap::getNumSymbols(a1);
    v88 = v94;
    v89 = v95;
    v90 = mlir::AffineBinaryOpExpr::getLHS(a1);
    *a1 = mlir::AffineMap::get(v86, v87, v88, v89, v90);
    if (v94 != v96)
    {
      free(v94);
    }

    if (v97 != v99)
    {
      free(v97);
    }

    if (v100 != v102)
    {
      free(v100);
    }

    if (v103 != v105)
    {
      free(v103);
    }

    if (v106 != v108)
    {
      free(v106);
    }
  }
}

uint64_t getLowerBound(uint64_t a1)
{
  v1 = mlir::affine::getForInductionVarOwner(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = v1 + 64;
  Value = *(v1 + 2 * ((*(v1 + 11) >> 23) & 1) + 8);
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (!mlir::AffineMap::isSingleConstant(&Value))
  {
    return 0;
  }

  Value = *&v3[16 * ((*(v2 + 11) >> 23) & 1)];
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::AffineMap::getSingleConstantResult(&Value);
}

unint64_t getUpperBound(uint64_t a1)
{
  v1 = mlir::affine::getForInductionVarOwner(a1);
  if (v1 && (v2 = v1, v3 = v1 + 64, __p = *(v1 + 2 * ((*(v1 + 11) >> 23) & 1) + 10), __p = mlir::AffineMapAttr::getValue(&__p), mlir::AffineMap::isSingleConstant(&__p)))
  {
    __p = *&v3[16 * ((*(v2 + 11) >> 23) & 1)];
    __p = mlir::AffineMapAttr::getValue(&__p);
    if (mlir::AffineMap::isSingleConstant(&__p))
    {
      __p = *&v3[16 * ((*(v2 + 11) >> 23) & 1) + 16];
      __p = mlir::AffineMapAttr::getValue(&__p);
      SingleConstantResult = mlir::AffineMap::getSingleConstantResult(&__p);
      __p = *&v3[16 * ((*(v2 + 11) >> 23) & 1) + 16];
      __p = mlir::AffineMapAttr::getValue(&__p);
      v5 = mlir::AffineMap::getSingleConstantResult(&__p);
      __p = *&v3[16 * ((*(v2 + 11) >> 23) & 1)];
      __p = mlir::AffineMapAttr::getValue(&__p);
      v6 = v5 + ~mlir::AffineMap::getSingleConstantResult(&__p);
      v13 = *&v3[16 * ((*(v2 + 11) >> 23) & 1) + 8];
      mlir::IntegerAttr::getValue(&v13, &__p);
      if (v12 > 0x40)
      {
        v7 = *__p;
        operator delete[](__p);
      }

      else if (v12)
      {
        v7 = (__p << -v12) >> -v12;
      }

      else
      {
        v7 = 0;
      }

      v8 = SingleConstantResult + ~(v6 % v7);
    }

    else
    {
      __p = *&v3[16 * ((*(v2 + 11) >> 23) & 1) + 16];
      __p = mlir::AffineMapAttr::getValue(&__p);
      v8 = mlir::AffineMap::getSingleConstantResult(&__p) - 1;
    }

    v9 = v8 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    LOBYTE(v8) = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t deduplicateAndResolveOperands(mlir::AsmParser *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v12 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v12, v13);
  if (!a3)
  {
    return 1;
  }

  v15 = IndexType;
  v16 = &a2[6 * a3];
  v36 = v16;
  while (2)
  {
    v37 = v39;
    v38 = 0x600000000;
    v17 = *(a2 + 2);
    if (!v17)
    {
LABEL_23:
      v33 = 0;
      v34 = v37;
      if (v37 == v39)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v18 = *a2;
    v19 = 32 * v17;
    do
    {
      if (((*(*a1 + 728))(a1, v18, v15, &v37) & 1) == 0)
      {
        v33 = 1;
        v34 = v37;
        if (v37 == v39)
        {
          goto LABEL_25;
        }

LABEL_24:
        free(v34);
        goto LABEL_25;
      }

      v18 += 32;
      v19 -= 32;
    }

    while (v19);
    if (!v38)
    {
      goto LABEL_23;
    }

    v20 = v37;
    v21 = v37 + 8 * v38;
    while (2)
    {
      v24 = *v20;
      v25 = *a4;
      v26 = *(a4 + 8);
      v27 = *a4;
      if (v26)
      {
        v28 = 8 * v26;
        v27 = *a4;
        while (*v27 != v24)
        {
          v27 += 8;
          v28 -= 8;
          if (!v28)
          {
            v27 = &v25[8 * v26];
            break;
          }
        }
      }

      v29 = ((v27 - v25) >> 3);
      if (v26 == v29)
      {
        if (v26 >= *(a4 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v26 + 1, 8);
          v26 = *(a4 + 8);
          v25 = *a4;
        }

        *&v25[8 * v26] = v24;
        ++*(a4 + 8);
      }

      Context = mlir::AsmParser::getContext(a1);
      if (a6 == 6)
      {
        AffineDimExpr = mlir::getAffineDimExpr(v29, Context, v31);
        v23 = *(a5 + 8);
        if (v23 >= *(a5 + 12))
        {
LABEL_22:
          v32 = AffineDimExpr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v23 + 1, 8);
          AffineDimExpr = v32;
          v23 = *(a5 + 8);
        }
      }

      else
      {
        AffineDimExpr = mlir::getAffineSymbolExpr(v29, Context, v31);
        v23 = *(a5 + 8);
        if (v23 >= *(a5 + 12))
        {
          goto LABEL_22;
        }
      }

      *(*a5 + 8 * v23) = AffineDimExpr;
      ++*(a5 + 8);
      if (++v20 != v21)
      {
        continue;
      }

      break;
    }

    v33 = 0;
    v16 = v36;
    v34 = v37;
    if (v37 != v39)
    {
      goto LABEL_24;
    }

LABEL_25:
    if (!v33)
    {
      a2 += 6;
      if (a2 == v16)
      {
        return 1;
      }

      continue;
    }

    return 0;
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseAffineMapWithMinMax(mlir::OpAsmParser &,mlir::OperationState &,anonymous namespace::MinMaxKind)::$_0>(uint64_t *a1)
{
  v59[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (*a1[1])
  {
    v3 = "max";
  }

  else
  {
    v3 = "min";
  }

  if ((*(*v2 + 408))(v2, v3, 3))
  {
    *(a1[2] + 8) = 0;
    v53 = 0;
    if ((*(**a1 + 736))())
    {
      mlir::NamedAttrList::erase((a1[4] + 112), *a1[3]);
      v4 = a1[5];
      Value = mlir::AffineMapAttr::getValue(&v53);
      Results = mlir::AffineMap::getResults(&Value);
      llvm::SmallVectorImpl<long long>::insert<long long const*,void>(v4, *v4 + 8 * *(v4 + 8), Results, &Results[8 * v6]);
      v7 = a1[2];
      v8 = *v7;
      v9 = *(v7 + 2);
      Value = mlir::AffineMapAttr::getValue(&v53);
      NumDims = mlir::AffineMap::getNumDims(&Value);
      if (v9 >= NumDims)
      {
        v11 = NumDims;
      }

      else
      {
        v11 = v9;
      }

      Value = v59;
      v58 = 0x100000000;
      if (v11 < 2)
      {
        if (!v11)
        {
          v30 = 0;
LABEL_21:
          LODWORD(v58) = v30 + v11;
          v54 = mlir::AffineMapAttr::getValue(&v53);
          v31 = mlir::AffineMap::getNumDims(&v54);
          v32 = v31;
          v33 = v31;
          v54 = v56;
          v55 = 0x100000000;
          v34 = v9 - v31;
          if (v34 < 2)
          {
            v35 = 0;
            if (v9 == v31)
            {
LABEL_26:
              LODWORD(v55) = v35 + v34;
              v36 = a1[6];
              v52 = mlir::AffineMapAttr::getValue(&v53);
              v37 = mlir::arith::FastMathFlagsAttr::getValue(&v52);
              llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(v36, v37, &Value);
              v38 = a1[7];
              v52 = mlir::AffineMapAttr::getValue(&v53);
              v39 = mlir::arith::FastMathFlagsAttr::getValue(&v52);
              llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(v38, v39, &v54);
              v40 = a1[8];
              v52 = mlir::AffineMapAttr::getValue(&v53);
              v41 = mlir::arith::FastMathFlagsAttr::getValue(&v52);
              v42 = *(v40 + 8);
              if (v42 >= *(v40 + 12))
              {
                v51 = v41;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v40, v40 + 16, v42 + 1, 4);
                v41 = v51;
                LODWORD(v42) = *(v40 + 8);
              }

              *(*v40 + 4 * v42) = v41;
              ++*(v40 + 8);
              if (v54 != v56)
              {
                free(v54);
              }

              if (Value != v59)
              {
                free(Value);
              }

              return 1;
            }
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v56, v34, 32);
            v35 = v55;
            if (v9 == v32)
            {
              goto LABEL_26;
            }
          }

          memcpy(v54 + 32 * v35, &v8[32 * v33], 32 * v34);
          v35 = v55;
          goto LABEL_26;
        }

        v12 = 0;
        v13 = v59;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&Value, v59, v11, 32);
        v12 = v58;
        v13 = Value;
      }

      memcpy(&v13[4 * v12], v8, 32 * v11);
      v30 = v58;
      goto LABEL_21;
    }

    return 0;
  }

  v14 = *a1;
  v15 = a1[6];
  v16 = *(v15 + 8);
  if (v16 >= *(v15 + 12))
  {
    v43 = *a1;
    v18 = llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<>(a1[6]);
    v14 = v43;
    v19 = a1[7];
    v20 = *(v19 + 8);
    if (v20 < *(v19 + 12))
    {
LABEL_13:
      v21 = (*v19 + 48 * v20);
      *v21 = v21 + 2;
      v21[1] = 0x100000000;
      LODWORD(v21) = *(v19 + 8) + 1;
      *(v19 + 8) = v21;
      v22 = *v19 + 48 * v21 - 48;
      v23 = a1[5];
      v24 = *(v23 + 8);
      if (v24 < *(v23 + 12))
      {
        goto LABEL_14;
      }

LABEL_36:
      v47 = v14;
      v48 = v18;
      v49 = v22;
      v50 = llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(v23);
      if (((*(*v47 + 744))(v47, v48, v49, v50) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v17 = (*v15 + 48 * v16);
    *v17 = v17 + 2;
    v17[1] = 0x100000000;
    LODWORD(v17) = *(v15 + 8) + 1;
    *(v15 + 8) = v17;
    v18 = *v15 + 48 * v17 - 48;
    v19 = a1[7];
    v20 = *(v19 + 8);
    if (v20 < *(v19 + 12))
    {
      goto LABEL_13;
    }
  }

  v44 = v14;
  v45 = v18;
  v46 = llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<>(v19);
  v18 = v45;
  v22 = v46;
  v14 = v44;
  v23 = a1[5];
  v24 = *(v23 + 8);
  if (v24 >= *(v23 + 12))
  {
    goto LABEL_36;
  }

LABEL_14:
  v25 = *v23;
  *(*v23 + 8 * v24) = 0;
  v26 = v24 + 1;
  *(v23 + 8) = v26;
  if (((*(*v14 + 744))(v14, v18, v22, v25 + 8 * v26 - 8) & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v27 = a1[8];
  v28 = *(v27 + 8);
  if (v28 >= *(v27 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v27, v27 + 16, v28 + 1, 4);
    LODWORD(v28) = *(v27 + 8);
  }

  result = 1;
  *(*v27 + 4 * v28) = 1;
  ++*(v27 + 8);
  return result;
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  v7 = v6 + a2;
  if (v7 > *(a1 + 12))
  {
    v15 = *a1 + 48 * v6;
    if (*a1 <= a3 && v15 > a3)
    {
      v17 = a3 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::grow(a1, v7);
      v3 = *a1 + v17;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::grow(a1, v7);
    }
  }

  v8 = *(a1 + 8);
  if (a2)
  {
    v9 = (*a1 + 48 * v8);
    v10 = a2;
    while (1)
    {
      v12 = v9 + 2;
      *v9 = v9 + 2;
      v9[1] = 0x100000000;
      if (v9 == v3)
      {
        goto LABEL_7;
      }

      v13 = *(v3 + 8);
      if (!v13)
      {
        goto LABEL_7;
      }

      if (v13 < 2)
      {
        v11 = 32;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 2), *(v3 + 8), 32);
        v14 = *(v3 + 8);
        if (!v14)
        {
          goto LABEL_6;
        }

        v12 = *v9;
        v11 = 32 * v14;
      }

      memcpy(v12, *v3, v11);
LABEL_6:
      *(v9 + 2) = v13;
LABEL_7:
      v9 += 6;
      if (!--v10)
      {
        v8 = *(a1 + 8);
        break;
      }
    }
  }

  *(a1 + 8) = v8 + a2;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 48 * v7;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x100000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(v9, v6);
      }

      v9 += 6;
      v6 += 48;
      v8 -= 48;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = (v6 + 48 * v10 - 48);
      v12 = -48 * v10;
      do
      {
        if (v11 + 2 != *v11)
        {
          free(*v11);
        }

        v11 -= 6;
        v12 += 48;
      }

      while (v12);
      v6 = *a1;
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

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<>(uint64_t a1)
{
  v16 = 0;
  v2 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 48, &v16);
  v4 = v3;
  v5 = &v3[6 * *(a1 + 8)];
  *v5 = v5 + 2;
  v5[1] = 0x100000000;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 48 * v7;
    v9 = v3;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x100000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(v9, v6);
      }

      v9 += 6;
      v6 += 48;
      v8 -= 48;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = (v6 + 48 * v10 - 48);
      v12 = -48 * v10;
      do
      {
        if (v11 + 2 != *v11)
        {
          free(*v11);
        }

        v11 -= 6;
        v12 += 48;
      }

      while (v12);
      v6 = *a1;
    }
  }

  v13 = v16;
  if (v6 != v2)
  {
    free(v6);
  }

  *a1 = v4;
  v14 = *(a1 + 8) + 1;
  *(a1 + 8) = v14;
  *(a1 + 12) = v13;
  return &v4[6 * v14 - 6];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

mlir::ub::UBDialect *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ub::UBDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ub::UBDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, mlir::ub::UBDialect **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::ub::UBDialect::UBDialect(v4, v3);
  *a2 = result;
  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineApplyOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.apply", 12, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, &v9);
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

  *v2 = &unk_1F5B14230;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::affine::AffineApplyOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineDelinearizeIndexOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDelinearizeIndexOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineDelinearizeIndexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.delinearize_index", 24, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id, &v9);
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

  *v2 = &unk_1F5B14310;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineForOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineForOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineForOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineForOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineForOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineForOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineForOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.for", 10, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id, &v9);
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

  *v2 = &unk_1F5B143F0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::affine::AffineForOp::getAttributeNames(void)::attrNames, 4);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineIfOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::NRegions<2u>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineIfOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::NoRegionArguments<mlir::affine::AffineIfOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineIfOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineIfOp>,mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::affine::AffineIfOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineIfOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineIfOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.if", 9, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id, &v9);
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

  *v2 = &unk_1F5B144D0;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineLoadOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineLoadOp>,mlir::OpTrait::OneResult<mlir::affine::AffineLoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::affine::AffineLoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineLoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineLoadOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineLoadOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineLoadOp>,mlir::affine::AffineReadOpInterface::Trait<mlir::affine::AffineLoadOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineLoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineLoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineLoadOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.load", 11, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineLoadOp,void>::id, &v9);
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

  *v2 = &unk_1F5B145B0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::affine::AffineLoadOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineMaxOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineMaxOp>,mlir::OpTrait::OneResult<mlir::affine::AffineMaxOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineMaxOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineMaxOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineMaxOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineMaxOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineMaxOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineMaxOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineMaxOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineMaxOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineMaxOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.max", 10, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, &v9);
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

  *v2 = &unk_1F5B14690;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::affine::AffineMaxOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineMinOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineMinOp>,mlir::OpTrait::OneResult<mlir::affine::AffineMinOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineMinOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineMinOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineMinOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineMinOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineMinOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineMinOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineMinOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineMinOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineMinOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.min", 10, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, &v9);
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

  *v2 = &unk_1F5B14770;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::affine::AffineMinOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineParallelOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineParallelOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineParallelOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineParallelOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineParallelOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineParallelOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineParallelOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineParallelOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::affine::AffineParallelOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineParallelOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineParallelOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.parallel", 15, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id, &v9);
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

  *v2 = &unk_1F5B14850;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::affine::AffineParallelOp::getAttributeNames(void)::attrNames, 6);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffinePrefetchOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffinePrefetchOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffinePrefetchOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffinePrefetchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffinePrefetchOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffinePrefetchOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffinePrefetchOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffinePrefetchOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffinePrefetchOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.prefetch", 15, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id, &v9);
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

  *v2 = &unk_1F5B14930;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::affine::AffinePrefetchOp::getAttributeNames(void)::attrNames, 4);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineStoreOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineStoreOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineStoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineStoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::affine::AffineStoreOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineStoreOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineStoreOp>,mlir::affine::AffineWriteOpInterface::Trait<mlir::affine::AffineStoreOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineStoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineStoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineStoreOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.store", 12, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineStoreOp,void>::id, &v9);
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

  *v2 = &unk_1F5B14A10;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::affine::AffineStoreOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineVectorLoadOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneResult<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorLoadOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineReadOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorLoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorLoadOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.vector_load", 18, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id, &v9);
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

  *v2 = &unk_1F5B14AF0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::affine::AffineVectorLoadOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineVectorStoreOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorStoreOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineWriteOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorStoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorStoreOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.vector_store", 19, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id, &v9);
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

  *v2 = &unk_1F5B14BD0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::affine::AffineVectorStoreOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::affine::AffineYieldOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineYieldOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineYieldOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::IsTerminator<mlir::affine::AffineYieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::ReturnLike<mlir::affine::AffineYieldOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineYieldOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "affine.yield", 12, a1, &mlir::detail::TypeIDResolver<mlir::affine::AffineYieldOp,void>::id, &v9);
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

  *v2 = &unk_1F5B14CB0;
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

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::Model(void *a1, uint64_t a2)
{
  v12[6] = *MEMORY[0x1E69E9840];
  {
    mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::Model();
  }

  v4 = mlir::detail::TypeIDResolver<mlir::affine::AffineDmaStartOp,void>::resolveTypeID(void)::id;
  mlir::detail::InterfaceMap::get<mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDmaStartOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineDmaStartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDmaStartOp>>(&v10);
  mlir::OperationName::Impl::Impl(a1, "affine.dma_start", 16, a2, v4, &v10);
  v5 = v10;
  if (v11)
  {
    v6 = 16 * v11;
    v7 = (v10 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v10;
  }

  if (v5 != v12)
  {
    free(v5);
  }

  *a1 = &unk_1F5B14070;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::~Model(void *__p)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::foldHook()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  if (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = v5[0];
      if ((v6 & 2) != 0)
      {
        v4 = v5;
      }

      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v4, v0, v1, v2, v3);
    }

    if (((llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2) & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

const char *llvm::getTypeName<mlir::affine::AffineDmaStartOp>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::AffineDmaStartOp]";
  v6 = 80;
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDmaStartOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineDmaStartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDmaStartOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getAffineMapAttrForMemRef;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDmaStartOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineDmaStartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDmaStartOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::affine::AffineDmaStartOp::getAffineMapAttrForMemRef(mlir::Operation **a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*(v3 + 9) + 24) == a2)
  {
    Context = mlir::Attribute::getContext((v3 + 24));
    v12 = 261;
    v7 = "src_map";
  }

  else
  {
    v14.var0 = "src_map";
    v14.var1 = 7;
    v11[0] = mlir::Operation::getInherentAttr(v3, v14);
    v11[0] = mlir::AffineMapAttr::getValue(v11);
    v5 = *(*(*a1 + 9) + 32 * (mlir::AffineMap::getNumInputs(v11) + 1) + 24);
    Context = mlir::Attribute::getContext((*a1 + 24));
    v12 = 261;
    if (v5 == a2)
    {
      v7 = "dst_map";
    }

    else
    {
      v7 = "tag_map";
    }
  }

  v11[0] = v7;
  v11[1] = 7;
  v8 = mlir::StringAttr::get(Context, v11);
  v15.var0 = v7;
  v15.var1 = 7;
  InherentAttr = mlir::Operation::getInherentAttr(*a1, v15);
  mlir::NamedAttribute::NamedAttribute(&v13, v8, InherentAttr);
  return v13;
}

const char *llvm::getTypeName<mlir::affine::AffineMapAccessInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::AffineMapAccessInterface]";
  v6 = 88;
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    a1 = v27;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  v22 = v1;
  v28 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v22;
  a1 = v28;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v23 = v1;
  v29 = a1;
  v18 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v2 = v18;
  v1 = v23;
  a1 = v29;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

LABEL_30:
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
    v5 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_31;
  }

LABEL_29:
  v24 = v1;
  v30 = a1;
  v15 = v3;
  v19 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v15;
  v2 = v19;
  v1 = v24;
  a1 = v30;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_30;
  }

LABEL_6:
  v5 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_31:
  v26 = v1;
  v32 = a1;
  v17 = v3;
  v21 = v2;
  v12 = v5;
  v14 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v12;
  v4 = v14;
  v3 = v17;
  v2 = v21;
  v1 = v26;
  a1 = v32;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::AffineMapAccessInterface::Trait<Empty>]";
  v6 = 102;
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

BOOL mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroResults(a1, a2))
  {
    return 0;
  }

  v4 = a1;
  return mlir::affine::AffineDmaStartOp::verifyInvariantsImpl(&v4);
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::Model(void *a1, uint64_t a2)
{
  v15[6] = *MEMORY[0x1E69E9840];
  {
    mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::Model();
  }

  v4 = mlir::detail::TypeIDResolver<mlir::affine::AffineDmaWaitOp,void>::resolveTypeID(void)::id;
  v13 = v15;
  v14 = 0x300000000;
  v5 = malloc(8uLL);
  v6 = v5;
  *v5 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaWaitOp>::getAffineMapAttrForMemRef;
  {
    v12 = v5;
    mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::Model();
    v6 = v12;
  }

  mlir::detail::InterfaceMap::insert(&v13, mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID(void)::id, v6);
  mlir::OperationName::Impl::Impl(a1, "affine.dma_wait", 15, a2, v4, &v13);
  v7 = v13;
  if (v14)
  {
    v8 = 16 * v14;
    v9 = (v13 + 8);
    do
    {
      v10 = *v9;
      v9 += 2;
      free(v10);
      v8 -= 16;
    }

    while (v8);
    v7 = v13;
  }

  if (v7 != v15)
  {
    free(v7);
  }

  *a1 = &unk_1F5B14150;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::~Model(void *__p)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::foldHook()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  if (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = v5[0];
      if ((v6 & 2) != 0)
      {
        v4 = v5;
      }

      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v4, v0, v1, v2, v3);
    }

    if (((llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2) & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

const char *llvm::getTypeName<mlir::affine::AffineDmaWaitOp>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::AffineDmaWaitOp]";
  v6 = 79;
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

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaWaitOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "tag_map";
  v7[1] = 7;
  v4 = mlir::StringAttr::get(Context, v7);
  v10.var0 = "tag_map";
  v10.var1 = 7;
  InherentAttr = mlir::Operation::getInherentAttr(a2, v10);
  mlir::NamedAttribute::NamedAttribute(&v9, v4, InherentAttr);
  return v9;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    a1 = v20;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  v16 = v1;
  v21 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v16;
  a1 = v21;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

LABEL_25:
    v18 = v1;
    v23 = a1;
    v11 = v3;
    v14 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v11;
    v2 = v14;
    v1 = v18;
    a1 = v23;
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_26;
  }

LABEL_24:
  v17 = v1;
  v22 = a1;
  v13 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v2 = v13;
  v1 = v17;
  a1 = v22;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_25;
  }

LABEL_5:
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_26:
  v19 = v1;
  v24 = a1;
  v12 = v3;
  v15 = v2;
  v10 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v10;
  v3 = v12;
  v2 = v15;
  v1 = v19;
  a1 = v24;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroResults(a1, a2))
  {
    return 0;
  }

  v5 = a1;
  return mlir::affine::AffineDmaWaitOp::verifyInvariantsImpl(&v5, v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 3 && (*a3 == 24941 ? (v7 = *(a3 + 2) == 112) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 3 && *result == 24941 && *(result + 2) == 112)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      *(v10 + 64) = v11;
    }

    else
    {
      *(v10 + 64) = 0;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "map", 3, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::affine::AffineApplyOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::writeProperties;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineApplyOp>::getSpeculatability;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::getEffects;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(0x18uLL);
  v9 = v8;
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::isCompatibleReturnTypes;
  {
    v14 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::inferReturnTypes(mlir::IndexType *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 8);
  if (v12 != 1)
  {
    if (!v12)
    {
      if (*(a11 + 12))
      {
        v13 = 0;
LABEL_6:
        bzero((*a11 + 8 * v13), 8 - 8 * v13);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, 1uLL, 8);
      v13 = *(a11 + 8);
      if (v13 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  v15 = a1;
  **a11 = mlir::Builder::getIndexType(&v15, a2);
  return 1;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::affine::AffineApplyOp>::refineReturnTypes(mlir::IndexType *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v27 = v29;
  v28 = 0x400000001;
  v29[0] = 0;
  v25 = a1;
  IndexType = mlir::Builder::getIndexType(&v25, a2);
  v14 = v27;
  *v27 = IndexType;
  mlir::ValueRange::ValueRange(&v25, v14, v28);
  mlir::ValueRange::ValueRange(v24, *a11, *(a11 + 8));
  v15 = v26;
  if (v26 == v24[1])
  {
    if (!v26)
    {
LABEL_6:
      v20 = 1;
      v21 = v27;
      if (v27 == v29)
      {
        return v20;
      }

      goto LABEL_9;
    }

    v16 = 0;
    v17 = v25;
    v18 = v24[0];
    while (1)
    {
      v19 = mlir::TypeRange::dereference_iterator(v17, v16);
      if (v19 != mlir::TypeRange::dereference_iterator(v18, v16))
      {
        break;
      }

      if (v15 == ++v16)
      {
        goto LABEL_6;
      }
    }
  }

  v25 = "affine.apply";
  v26 = 12;
  v22.var0.var0 = a3;
  v20 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v22, "'", &v25, "' op inferred type(s) ", &v27, " are incompatible with return type(s) of operation ", a11);
  v21 = v27;
  if (v27 != v29)
  {
LABEL_9:
    free(v21);
  }

  return v20;
}

BOOL mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::affine::AffineApplyOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v20 = a1;
  v21[0] = v8;
  v21[1] = v9;
  v22 = 1;
  v10 = *(a1 + 44);
  v11 = a1 + 16 * ((v10 >> 23) & 1);
  v13 = *(v11 + 64);
  v12 = v11 + 64;
  v23 = v13;
  v14 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v15 = ((v12 + ((v10 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  mlir::ValueRange::ValueRange(v24, v15, v14);
  v24[2] = a2;
  v24[3] = a3;
  v16 = mlir::affine::AffineApplyOp::fold(&v20, v21);
  if (v16 < 8 || a1 - 16 == (v16 & ((v16 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v16 > 7;
  }

  v17 = *(a4 + 8);
  if (v17 >= *(a4 + 12))
  {
    v19 = v16;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v17 + 1, 8);
    v16 = v19;
    LODWORD(v17) = *(a4 + 8);
  }

  *(*a4 + 8 * v17) = v16;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  v6 = a1;
  if ((mlir::affine::AffineApplyOp::verifyInvariantsImpl(&v6) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::affine::AffineApplyOp::verify(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDelinearizeIndexOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineDelinearizeIndexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::getSpeculatability;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::getEffects;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x18uLL);
  v7 = v6;
  *v6 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::inferReturnTypes;
  v6[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::refineReturnTypes;
  v6[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::isCompatibleReturnTypes;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::affine::AffineDelinearizeIndexOp>::refineReturnTypes(mlir::IndexType *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::affine::AffineDelinearizeIndexOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
  {
    mlir::ValueRange::ValueRange(&v23, v25, v26);
    mlir::ValueRange::ValueRange(v22, *a11, *(a11 + 8));
    v13 = v24;
    if (v24 == v22[1])
    {
      if (!v24)
      {
LABEL_7:
        v18 = 1;
        v19 = v25;
        if (v25 == v27)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v23;
      v16 = v22[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v23 = "affine.delinearize_index";
    v24 = 24;
    v21.var0.var0 = a3;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v21, "'", &v23, "' op inferred type(s) ", &v25, " are incompatible with return type(s) of operation ", a11);
    v19 = v25;
    if (v25 == v27)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v25;
  if (v25 != v27)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v46 = v1;
  v55 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v46;
  a1 = v55;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v47 = v1;
  v56 = a1;
  v39 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v39;
  v1 = v47;
  a1 = v56;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v48 = v1;
  v57 = a1;
  v33 = v3;
  v40 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v33;
  v2 = v40;
  v1 = v48;
  a1 = v57;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v49 = v1;
  v58 = a1;
  v34 = v3;
  v41 = v2;
  v28 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v28;
  v3 = v34;
  v2 = v41;
  v1 = v49;
  a1 = v58;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v50 = v1;
  v59 = a1;
  v35 = v3;
  v42 = v2;
  v24 = v5;
  v29 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v5 = v24;
  v4 = v29;
  v3 = v35;
  v2 = v42;
  v1 = v50;
  a1 = v59;
  v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

LABEL_45:
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_46;
  }

LABEL_44:
  v51 = v1;
  v60 = a1;
  v36 = v3;
  v43 = v2;
  v25 = v5;
  v30 = v4;
  v21 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v21;
  v5 = v25;
  v4 = v30;
  v3 = v36;
  v2 = v43;
  v1 = v51;
  a1 = v60;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_45;
  }

LABEL_9:
  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_46:
  v53 = v1;
  v62 = a1;
  v38 = v3;
  v45 = v2;
  v27 = v5;
  v32 = v4;
  v20 = v7;
  v23 = v6;
  v18 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v8 = v18;
  v7 = v20;
  v6 = v23;
  v5 = v27;
  v4 = v32;
  v3 = v38;
  v2 = v45;
  v1 = v53;
  a1 = v62;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    return 0;
  }

  v5 = a1;
  if ((mlir::affine::AffineDelinearizeIndexOp::verifyInvariantsImpl(&v5) & 1) == 0)
  {
    return 0;
  }

  v5 = a1;
  return mlir::affine::AffineDelinearizeIndexOp::verify(&v5) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v9, a2);
  v6 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v7 = v9[0];
      if ((v10 & 2) != 0)
      {
        v7 = v9;
      }

      v8 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v3, v4, v5);
      result = v8;
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::affine::AffineForOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v9 = *(v6 + 64);
  v8 = (v6 + 64);
  v7 = v9;
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "lowerBoundMap", 13, v7);
  }

  v10 = v8[1];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "step", 4, v10);
  }

  v11 = v8[2];
  if (v11)
  {
    mlir::NamedAttrList::append(a3, "upperBoundMap", 13, v11);
  }

  v12 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v8 + 3, 3);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 19, v12);
}

double mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::affine::AffineForOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2)
  {
    return 0;
  }

  if (*(a3 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a3 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a3 + 24) == *(a2 + 24) && *(a3 + 32) == *(a2 + 32);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineForOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineForOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineForOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineForOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineForOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineForOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::writeProperties;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineForOp>::getSpeculatability;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(a1);
  v6 = malloc(0x28uLL);
  v7 = v6;
  *v6 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getEntrySuccessorOperands;
  v6[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getEntrySuccessorRegions;
  v6[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getSuccessorRegions;
  v6[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getRegionInvocationBounds;
  v6[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::areTypesCompatible;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineForOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineForOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineForOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineForOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineForOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineForOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineForOp>::getSpeculatability(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  mlir::IntegerAttr::getValue(&v6, &__p);
  if (v5 > 0x40)
  {
    v2 = *__p;
    operator delete[](__p);
  }

  else if (v5)
  {
    v2 = (__p << -v5) >> -v5;
  }

  else
  {
    v2 = 0;
  }

  return 2 * (v2 == 1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(uint64_t a1)
{
  v2 = malloc(0x68uLL);
  v3 = v2;
  *v2 = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::isDefinedOutsideOfLoop;
  v2[1] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopRegions;
  v2[2] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::moveOutOfLoop;
  v2[3] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::promoteIfSingleIteration;
  v2[4] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopInductionVars;
  v2[5] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopLowerBounds;
  v2[6] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopSteps;
  v2[7] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopUpperBounds;
  v2[8] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getInitsMutable;
  v2[9] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getRegionIterArgs;
  v2[10] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getYieldedValuesMutable;
  v2[11] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopResults;
  v2[12] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::replaceWithAdditionalYields;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::isDefinedOutsideOfLoop(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v6 = a3;
  v4 = *(mlir::Value::getParentRegion(&v6) + 2);
  if (v4 == a2)
  {
    return 0;
  }

  else
  {
    return mlir::Operation::isProperAncestor(a2, v4) ^ 1;
  }
}

double mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopRegions@<D0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[2] = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  *a2 = a2 + 2;
  *&result = 0x600000001;
  a2[1] = 0x600000001;
  return result;
}

double mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopInductionVars@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 16) = **(v3 + 48);
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getInitsMutable(uint64_t a1, uint64_t a2)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = a2 + 64;
  v4 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v5 = v4[6];
  v6 = v4[7];
  v7 = v4[8];
  v8 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
  Context = mlir::Attribute::getContext((a2 + 24));
  v10 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v3 + 16 * ((*(a2 + 44) >> 23) & 1) + 24), 3);
  mlir::NamedAttribute::NamedAttribute(&v13, v8, v10);
  v14 = 2;
  v15 = v13;
  mlir::MutableOperandRange::MutableOperandRange(v16, a2, v6 + v5, v7, &v14, 1);
  result = mlir::MutableOperandRange::operator mlir::OperandRange(v16);
  if (v17 != v18)
  {
    v12 = result;
    free(v17);
    return v12;
  }

  return result;
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getRegionIterArgs(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return *(v3 + 48) + 8;
}

void mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getRegionInvocationBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 44) & 0x7FFFFF;
  v6 = *(a5 + 8);
  if (v6 + v5 > *(a5 + 12))
  {
    v9 = a5;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v6 + v5, 12);
    a5 = v9;
    LODWORD(v6) = *(v9 + 8);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

  v7 = *a5 + 12 * v6;
  v8 = v5;
  do
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    v7 += 12;
    --v8;
  }

  while (v8);
  LODWORD(v6) = *(a5 + 8);
LABEL_6:
  *(a5 + 8) = v6 + v5;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v119 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    a1 = v119;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }
  }

  v106 = v1;
  v120 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v106;
  a1 = v120;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_61;
  }

LABEL_60:
  v107 = v1;
  v121 = a1;
  v94 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v94;
  v1 = v107;
  a1 = v121;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_61:
  v108 = v1;
  v122 = a1;
  v83 = v3;
  v95 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v83;
  v2 = v95;
  v1 = v108;
  a1 = v122;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_62:
  v109 = v1;
  v123 = a1;
  v84 = v3;
  v96 = v2;
  v73 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v4 = v73;
  v3 = v84;
  v2 = v96;
  v1 = v109;
  a1 = v123;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

LABEL_63:
  v110 = v1;
  v124 = a1;
  v85 = v3;
  v97 = v2;
  v64 = v5;
  v74 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
  v5 = v64;
  v4 = v74;
  v3 = v85;
  v2 = v97;
  v1 = v110;
  a1 = v124;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_64:
  v111 = v1;
  v125 = a1;
  v86 = v3;
  v98 = v2;
  v65 = v5;
  v75 = v4;
  v56 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>();
  v6 = v56;
  v5 = v65;
  v4 = v75;
  v3 = v86;
  v2 = v98;
  v1 = v111;
  a1 = v125;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_65:
  v112 = v1;
  v126 = a1;
  v87 = v3;
  v99 = v2;
  v66 = v5;
  v76 = v4;
  v49 = v7;
  v57 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v49;
  v6 = v57;
  v5 = v66;
  v4 = v76;
  v3 = v87;
  v2 = v99;
  v1 = v112;
  a1 = v126;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

LABEL_66:
  v113 = v1;
  v127 = a1;
  v88 = v3;
  v100 = v2;
  v67 = v5;
  v77 = v4;
  v50 = v7;
  v58 = v6;
  v43 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v43;
  v7 = v50;
  v6 = v58;
  v5 = v67;
  v4 = v77;
  v3 = v88;
  v2 = v100;
  v1 = v113;
  a1 = v127;
  v9 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_68;
  }

LABEL_67:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_69;
  }

LABEL_68:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

LABEL_70:
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>();
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
    v13 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_71;
  }

LABEL_69:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
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
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_70;
  }

LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_71:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<Empty>]";
  v6 = 136;
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

uint64_t mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) || (mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13uLL) & 1) == 0 || (mlir::OpTrait::SingleBlock<mlir::memref::GenericAtomicRMWOp>::verifyTrait(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = a1;
  return mlir::affine::AffineForOp::verifyInvariantsImpl(&v5) & 1;
}

BOOL mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, uint64_t a2)
{
  if ((mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>::verifyRegionTrait(a1, a2) & 1) == 0 || !mlir::detail::verifyLoopLikeOpInterface(a1, v3) || (mlir::detail::verifyTypesAlongControlFlowEdges(a1, v4) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::affine::AffineForOp::verifyRegions(&v6);
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>::verifyRegionTrait(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 44) & 0x7FFFFF;
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 24 * v2;
  while (1)
  {
    v7 = (((v5 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + v4);
    if (v7 != *v7)
    {
      v8 = v7[1];
      v9 = v8 ? v8 - 8 : 0;
      v10 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v9 + 32), a2) + 48);
      if (*(v10 + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineYieldOp,void>::id)
      {
        break;
      }
    }

    v4 += 24;
    if (v6 == v4)
    {
      return 1;
    }
  }

  v42 = 1283;
  v41[0] = "expects regions to end with '";
  v41[2] = "affine.yield";
  v41[3] = 12;
  v43[0] = v41;
  v43[2] = "', found '";
  v44 = 770;
  v53 = *(v10 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v53);
  v13 = v44;
  if (v44 == 1)
  {
    v45 = AttrData;
    v46 = v12;
    v49 = 261;
    v14 = 5;
LABEL_18:
    v50[0] = AttrData;
    v50[1] = v12;
    v50[2] = "'";
    v15 = 3;
    goto LABEL_19;
  }

  if (v44)
  {
    v17 = v43[0];
    v14 = 2;
    if (HIBYTE(v44) != 1)
    {
      v13 = 2;
      v17 = v43;
    }

    v45 = v17;
    v46 = v43[1];
    v47 = AttrData;
    v48 = v12;
    LOBYTE(v49) = v13;
    HIBYTE(v49) = 5;
    AttrData = &v45;
    goto LABEL_18;
  }

  v14 = 0;
  v49 = 256;
  v15 = 1;
LABEL_19:
  v51 = v14;
  v52 = v15;
  mlir::Operation::emitOpError(a1, v50, &v53);
  v18 = mlir::Diagnostic::attachNote(&v54, 0, 0);
  v19 = *(v18 + 16);
  LODWORD(v37) = 3;
  v38 = "in custom textual format, the absence of terminator implies '";
  v39 = 61;
  v20 = *(v18 + 24);
  v21 = &v37;
  if (v20 >= *(v18 + 28))
  {
    if (v19 <= &v37 && v19 + 24 * v20 > &v37)
    {
      v35 = &v37 - v19;
      v36 = v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 16, v18 + 32, v20 + 1, 24);
      v18 = v36;
      v19 = *(v36 + 16);
      v21 = &v35[v19];
    }

    else
    {
      v34 = v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 16, v18 + 32, v20 + 1, 24);
      v18 = v34;
      v19 = *(v34 + 16);
      v21 = &v37;
    }
  }

  v22 = v19 + 24 * *(v18 + 24);
  v23 = *v21;
  *(v22 + 16) = v21[2];
  *v22 = v23;
  ++*(v18 + 24);
  v40 = 262;
  v37 = "affine.yield";
  v38 = 12;
  v24 = mlir::Diagnostic::operator<<(v18, &v37);
  mlir::Diagnostic::operator<<(v24, 39);
  result = getEnumTag for MPSGraphDelegateKernelError();
  v25 = result;
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v53);
    result = v25;
  }

  if (v62 == 1)
  {
    if (v61 != &v62)
    {
      free(v61);
      result = v25;
    }

    v26 = __p;
    if (__p)
    {
      v27 = v60;
      v28 = __p;
      if (v60 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v60 = v26;
      operator delete(v28);
      result = v25;
    }

    v29 = v57;
    if (v57)
    {
      v30 = v58;
      v31 = v57;
      if (v58 != v57)
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
        v31 = v57;
      }

      v58 = v29;
      operator delete(v31);
      result = v25;
    }

    if (v55 != &v56)
    {
      free(v55);
      return v25;
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v12, a2, a3, a4);
  v9 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      v10 = v12[0];
      if ((v13 & 2) != 0)
      {
        v10 = v12;
      }

      v11 = result;
      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v10, v5, v6, v7, v8);
      result = v11;
    }

    if ((v9 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::NRegions<2u>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineIfOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::NoRegionArguments<mlir::affine::AffineIfOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineIfOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineIfOp>,mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::affine::AffineIfOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineIfOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineIfOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineIfOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(0x28uLL);
  v5 = v4;
  *v4 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getEntrySuccessorOperands;
  v4[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getEntrySuccessorRegions;
  v4[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getSuccessorRegions;
  v4[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getRegionInvocationBounds;
  v4[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::areTypesCompatible;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineForOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineForOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineForOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineForOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineForOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineForOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getEntrySuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  *&result = mlir::affine::AffineIfOp::getSuccessorRegions(&v6, 0, a5).n128_u64[0];
  return result;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  *&result = mlir::affine::AffineIfOp::getSuccessorRegions(&v5, a3, a4).n128_u64[0];
  return result;
}

void mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getRegionInvocationBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 44) & 0x7FFFFF;
  v6 = *(a5 + 8);
  if (v6 + v5 > *(a5 + 12))
  {
    v9 = a5;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v6 + v5, 12);
    a5 = v9;
    LODWORD(v6) = *(v9 + 8);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

  v7 = *a5 + 12 * v6;
  v8 = v5;
  do
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    v7 += 12;
    --v8;
  }

  while (v8);
  LODWORD(v6) = *(a5 + 8);
LABEL_6:
  *(a5 + 8) = v6 + v5;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  v12[0] = a2;
  v12[1] = v6;
  v12[2] = v7;
  v13 = 1;
  v8 = *(a2 + 44);
  v9 = v8 & 0x7FFFFF;
  if ((v8 & 0x7FFFFF) != 0)
  {
    v10 = ((a2 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  mlir::ValueRange::ValueRange(v14, v10, v9);
  v14[2] = a3;
  v14[3] = a4;
  return mlir::affine::AffineIfOp::fold(v12);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v81 = v1;
  v93 = a1;
  v60 = v3;
  v70 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v82 = v1;
  v94 = a1;
  v61 = v3;
  v71 = v2;
  v52 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v83 = v1;
  v95 = a1;
  v62 = v3;
  v72 = v2;
  v53 = v4;
  v45 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v84 = v1;
  v96 = a1;
  v63 = v3;
  v73 = v2;
  v54 = v4;
  v39 = v6;
  v46 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v85 = v1;
  v97 = a1;
  v64 = v3;
  v74 = v2;
  v55 = v4;
  v40 = v6;
  v47 = v5;
  v34 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v86 = v1;
  v98 = a1;
  v65 = v3;
  v75 = v2;
  v56 = v4;
  v41 = v6;
  v48 = v5;
  v30 = v8;
  v35 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v87 = v1;
  v99 = a1;
  v66 = v3;
  v76 = v2;
  v57 = v4;
  v42 = v6;
  v49 = v5;
  v31 = v8;
  v36 = v7;
  v27 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>();
  v9 = v27;
  v8 = v31;
  v7 = v36;
  v6 = v42;
  v5 = v49;
  v4 = v57;
  v3 = v66;
  v2 = v76;
  v1 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v89 = v1;
  v101 = a1;
  v68 = v3;
  v78 = v2;
  v59 = v4;
  v44 = v6;
  v51 = v5;
  v33 = v8;
  v38 = v7;
  v26 = v10;
  v29 = v9;
  v24 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v11 = v24;
  v10 = v26;
  v9 = v29;
  v8 = v33;
  v7 = v38;
  v6 = v44;
  v5 = v51;
  v4 = v59;
  v3 = v68;
  v2 = v78;
  v1 = v89;
  a1 = v101;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}